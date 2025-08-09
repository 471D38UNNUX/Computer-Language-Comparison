/*
dotnet new console -o main --aot
cd main
as RDTSCP.asm -o RDTSCP.obj
ld -s -shared RDTSCP.obj --file-alignment=1 --section-alignment=1 --disable-reloc-section -Tlink.ld -o rdtscp.dll
dotnet publish
*/
using System;
using System.Runtime.InteropServices;
using System.Runtime.Intrinsics.X86;
using System.IO;
static ulong    rdtscpf()
{
    [DllImport("../../../../../../rdtscp.dll")]
    static extern ulong _rdtscp();
    Sse2.LoadFence();
    ulong output        = _rdtscp();
    Sse2.LoadFence();
    return          output;
}
const double kB = 1024.0, mB = 1024.0 * 1024.0, gB = 1024.0 * 1024.0 * 1024.0;
unsafe
{
    [DllImport("kernel32.dll")]
    static extern bool QueryPerformanceFrequency(long *lpFrequency);
    [DllImport("kernel32.dll")]
    static extern bool QueryPerformanceCounter(long *lpPerformanceCount);
    [DllImport("kernel32.dll")]
    static extern void ExitProcess(uint uExitCode);
    long                frequency, counter;
    if                  (!(QueryPerformanceFrequency(&frequency) && QueryPerformanceCounter(&counter))) ExitProcess(1);
    Timespec time = new()
    {
        tv_sec  = counter / frequency,
        tv_nsec = (int)(counter % frequency * 1000000000 / frequency)
    };
    ulong               st, et, Size, Cycles = 0;
    uint i              = 100000;
    do
    {
        st      = rdtscpf();
        et      = rdtscpf() - st;
        Cycles  += et;
        i--;
    }                   while (i > 0);
    if                  (!QueryPerformanceCounter(&counter)) ExitProcess(1);
    double elapsedTime  = (double)(counter / frequency - time.tv_sec) + (double)((int)(counter % frequency * 1000000000 / frequency) - time.tv_nsec) / 1000000000.0;
    try
    {
        FileInfo fp = new FileInfo("main.exe");
        Size        = (ulong)fp.Length;
        Console.WriteLine($"Total Cycles {Cycles}");
        Console.WriteLine($"Time taken: {(ulong)elapsedTime / 3600} hours {(ulong)elapsedTime % 3600 / 60} minutes {(double)((ulong)elapsedTime % 60) + elapsedTime - (double)(ulong)elapsedTime:F6} seconds");
        Console.WriteLine($"Approx CPU frequency: {(double)Cycles / elapsedTime / 1.0e9:F6} GHz");
        if          ((double)Size > gB) Console.WriteLine($"File size: {(double)Size / gB:F3} GB");
        else        if ((double)Size > mB) Console.WriteLine($"File size: {(double)Size / mB:F3} MB");
        else        if ((double)Size > kB) Console.WriteLine($"File size: {(double)Size / kB:F3} KB");
        else        Console.WriteLine($"File size: {Size} bytes");
        ExitProcess(0);
    }
    catch               (Exception) {ExitProcess(1);}
}
public struct   Timespec
{
    public long tv_sec;
    public int tv_nsec;
}
