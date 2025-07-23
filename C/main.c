//  gcc main.c -O3 -s -Wl,--file-alignment=1 -Wl,--section-alignment=1 -nostdlib -Tlink.ld -L"Path\lib" -lkernel32 -lucrt -e __main -o main.exe
#include <profileapi.h>
#include <processthreadsapi.h>
#include <sys/types.h>
#include <intrin.h>
#include <setjmp.h>
#include <sec_api/stdio_s.h>
#include <math.h>
const   double      kB = 1024.0, mB = 1024.0 * 1024.0, gB = 1024.0 * 1024.0 * 1024.0;
unsigned long long  rdtscpf()
{
    unsigned int        input;
    __builtin_ia32_lfence();
    unsigned long long  output = __builtin_ia32_rdtscp(&input);
    __builtin_ia32_lfence();
    return              output;
}
int                 __main()
{
    LARGE_INTEGER       frequency, counter;
    if                  (!(QueryPerformanceFrequency(&frequency) && QueryPerformanceCounter(&counter))) ExitProcess(1);
    struct              timespec time = {.tv_sec = (counter.QuadPart / frequency.QuadPart), .tv_nsec = (int)((counter.QuadPart % frequency.QuadPart) * 1000000000 / frequency.QuadPart)};
    unsigned long long  st, et, Size, Cycles = 0;
    for                 (unsigned int i = 0; i < 100000; i++)
    {
        st      = rdtscpf();
        et      = rdtscpf() - st;
        Cycles  += et;
    };
    if                  (!QueryPerformanceCounter(&counter)) ExitProcess(1);
    double              elapsedTime = (double)((counter.QuadPart / frequency.QuadPart) - time.tv_sec) + (double)((int)((counter.QuadPart % frequency.QuadPart) * 1000000000 / frequency.QuadPart) - time.tv_nsec) / 1000000000.0;
    jmp_buf             buf;
    if                  (setjmp(buf)) ExitProcess(1);
    FILE                *fp;
    if                  (fopen_s(&fp, "main.exe", "rb")) longjmp(buf, 1);
    fseek(fp, 0, SEEK_END);
    Size                = _ftelli64(fp);
    fclose(fp);
    printf_s("Total Cycles %llu\n", Cycles);
    printf_s("Time taken: %llu hours %llu minutes %f seconds\n", (unsigned long long)elapsedTime / 3600, (unsigned long long)elapsedTime % 3600 / 60, (double)((unsigned long long)elapsedTime % 60) + elapsedTime - (double)(unsigned long long)elapsedTime);
    printf_s("Approx CPU frequency: %f GHz\n", (double)Cycles / elapsedTime / 1.0e9);
    if                  ((double)Size > gB) printf_s("File size: %.3f GB\n", (double)Size / gB);
    else                if ((double)Size > mB) printf_s("File size: %.3f MB\n", (double)Size / mB);
    else                if ((double)Size > kB) printf_s("File size: %.3f KB\n", (double)Size / kB);
    else                printf_s("File size: %u bytes\n", (unsigned int)Size);
    ExitProcess(0);
}