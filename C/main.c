//  cl /Ox main.c /link /fixed /filealign:16
#pragma comment(linker, "/merge:.rdata=.")
#pragma comment(linker, "/merge:.pdata=.")
#pragma comment(linker, "/merge:.text=.")
#pragma comment(linker, "/merge:.data=.")
#pragma comment(linker, "/section:.,erw")
#pragma comment(linker, "/align:16")
#pragma comment(linker, "/subsystem:console")
#pragma comment(lib, "kernel32.lib")
#pragma comment(lib, "ucrt.lib")
#pragma comment(lib, "vcruntime.lib")
#define _AMD64_
#include <profileapi.h>
#include <processthreadsapi.h>
#include <time.h>
#include <intrin.h>
#include <emmintrin.h>
#include <setjmp.h>
#include <stdio.h>
const double kB     = 1024.0, mB = 1024.0 * 1024.0, gB = 1024.0 * 1024.0 * 1024.0;
unsigned long long  rdtscpf()
{
    unsigned int                input;
    _mm_lfence();
    unsigned long long output   = __rdtscp(&input);
    _mm_lfence();
    return                      output;
}
int                 mainCRTStartup()
{
    LARGE_INTEGER       frequency, counter;
    if                  (!(QueryPerformanceFrequency(&frequency) && QueryPerformanceCounter(&counter))) ExitProcess(1);
    struct              timespec time = {.tv_sec = (counter.QuadPart / frequency.QuadPart), .tv_nsec = (int)((counter.QuadPart % frequency.QuadPart) * 1000000000 / frequency.QuadPart)};
    unsigned long long  st, et, Size, Cycles = 0;
    unsigned int i      = 100000;
    do
    {
        st      = rdtscpf();
        et      = rdtscpf() - st;
        Cycles  += et, i--;
    }                   while (i > 0);
    if                  (!QueryPerformanceCounter(&counter)) ExitProcess(1);
    double elapsedTime  = (double)((counter.QuadPart / frequency.QuadPart) - time.tv_sec) + (double)((int)((counter.QuadPart % frequency.QuadPart) * 1000000000 / frequency.QuadPart) - time.tv_nsec) / 1000000000.0;
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