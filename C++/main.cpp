//  g++ main.cpp -O3 -s -Wl,--disable-reloc-section -Tlink.ld -o main.exe
#include <profileapi.h>
#include <processthreadsapi.h>
#include <sys/types.h>
#include <iostream>
#include <filesystem>
using namespace std;
using namespace std::filesystem;
const double        kB = 1024.0, mB = 1024.0 * 1024.0, gB = 1024.0 * 1024.0 * 1024.0;
unsigned long long  rdtscpf()
{
    unsigned int    input;
    __builtin_ia32_lfence();
    auto output     = __builtin_ia32_rdtscp(&input);
    __builtin_ia32_lfence();
    return          output;
}
int                 main()
{
    LARGE_INTEGER               frequency, counter;
    if                          (!(QueryPerformanceFrequency(&frequency) && QueryPerformanceCounter(&counter))) ExitProcess(1);
    timespec                    time = {(counter.QuadPart / frequency.QuadPart), static_cast<int>((counter.QuadPart % frequency.QuadPart) * 1000000000 / frequency.QuadPart)};
    unsigned long long          st, et, Size, Cycles = 0;
    auto i                      = 100000;
    do
    {
        st      = rdtscpf();
        et      = rdtscpf() - st;
        Cycles  += et, i--;
    }                           while (i > 0);
    if                          (!QueryPerformanceCounter(&counter)) ExitProcess(1);
    auto elapsedTime            = static_cast<double>((counter.QuadPart / frequency.QuadPart) - time.tv_sec) + static_cast<double>(static_cast<int>((counter.QuadPart % frequency.QuadPart) * 1000000000 / frequency.QuadPart) - time.tv_nsec) / 1000000000.0;
    try
    {
        auto Size   = file_size("main.exe");
        cout        << "Total Cycles " << Cycles << endl;
        cout        << "Time taken: " << static_cast<long long>(elapsedTime) / 3600 << " hours " << static_cast<long long>(elapsedTime) % 3600 / 60 << " minutes " << fixed << setprecision(6) << static_cast<double>(static_cast<long long>(elapsedTime) % 60) + elapsedTime - static_cast<double>(static_cast<long long>(elapsedTime)) << " seconds" << endl;
        cout        << "Approx CPU frequency: " << static_cast<double>(Cycles) / elapsedTime / 1.0e9 << " GHz" << endl;
        if          (static_cast<double>(Size) > gB)  cout << "File size: " << fixed << setprecision(3) << static_cast<double>(Size) / gB << " GB" << endl;
        else        if (static_cast<double>(Size) > mB)  cout << "File size: " << fixed << setprecision(3) << static_cast<double>(Size) / mB << " MB" << endl;
        else        if (static_cast<double>(Size) > kB)  cout << "File size: " << fixed << setprecision(3) << static_cast<double>(Size) / kB << " KB" << endl;
        else        cout << "File size: " << Size << " bytes" << endl;
        ExitProcess(0);
    }
    catch(filesystem_error &e)  {ExitProcess(1);}
}