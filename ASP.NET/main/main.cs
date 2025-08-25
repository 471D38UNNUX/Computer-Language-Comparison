/*
dotnet new webapiaot -o main
cd main
as RDTSCP.asm -o RDTSCP.obj
ld -s -shared RDTSCP.obj --file-alignment=1 --section-alignment=1 --disable-reloc-section -Tlink.ld -o rdtscp.dll
dotnet publish
*/
using System;
using System.Runtime.InteropServices;
using System.Runtime.Intrinsics.X86;
using System.IO;
var builder             = WebApplication.CreateSlimBuilder(args);
var app                 = builder.Build();
const double kB         = 1024.0, mB = 1024.0 * 1024.0, gB = 1024.0 * 1024.0 * 1024.0;
static ulong            rdtscpf()
{
    [DllImport("../../../../../rdtscp.dll")]
    static extern   ulong _rdtscp();
    Sse2.LoadFence();
    ulong output    = _rdtscp();
    Sse2.LoadFence();
    return          output;
}
static ulong            CycleCount()
{
    ulong   st, et, Cycles = 0;
    uint i  = 100000;
    do
    {
        st      = rdtscpf();
        et      = rdtscpf() - st;
        Cycles  += et;
        i--;
    }       while (i > 0);
    return  Cycles;
}
static unsafe double    TimeStampCount(ulong *Cycles)
{
    [DllImport("kernel32.dll")]
    static extern bool  QueryPerformanceFrequency(long *lpFrequency);
    [DllImport("kernel32.dll")]
    static extern bool  QueryPerformanceCounter(long *lpPerformanceCount);
    long                frequency, counter;
    if                  (!(QueryPerformanceFrequency(&frequency) && QueryPerformanceCounter(&counter))) return double.NaN;
    Timespec time       = new()
    {
        tv_sec  = counter / frequency,
        tv_nsec = (int)(counter % frequency * 1000000000 / frequency)
    };
    *Cycles             = CycleCount();
    if                  (!QueryPerformanceCounter(&counter)) return double.NaN;
    return              (double)(counter / frequency - time.tv_sec) + (double)((int)(counter % frequency * 1000000000 / frequency) - time.tv_nsec) / 1000000000.0;
}
app.MapGet("/", () =>
{
    unsafe
    {
        ulong           Cycles;
        var elapsedTime = TimeStampCount(&Cycles);
        if              (double.IsNaN(elapsedTime)) return Results.BadRequest(1);
        try
        {
            long Size   = new FileInfo("main.exe").Length;
            return      Results.Text($"Total Cycles {Cycles}\n" +
                $"Time taken: {(ulong)elapsedTime / 3600} hours {(ulong)elapsedTime % 3600 / 60} minutes {(double)((ulong)elapsedTime % 60) + elapsedTime - (double)(ulong)elapsedTime:F6} seconds\n" +
                $"Approx CPU frequency: {(double)Cycles / elapsedTime / 1.0e9:F6} GHz\n" +
                (
                    (double)Size > gB ? $"File size: {(double)Size / gB:F3} GB" :
                    (double)Size > mB ? $"File size: {(double)Size / mB:F3} MB" :
                    (double)Size > kB ? $"File size: {(double)Size / kB:F3} KB" :
                    $"File size: {Size} bytes"
                ));
        }               catch(System.Exception) { return Results.BadRequest(1); }
    }
});
app.MapGet("/Cycle", () => $"Total Cycles {CycleCount()}");
app.MapGet("/Time", () =>
{
    unsafe
    {
        ulong           Cycles;
        var elapsedTime = TimeStampCount(&Cycles);
        if              (double.IsNaN(elapsedTime)) return Results.BadRequest(1);
        return          Results.Text($"Time taken: {(ulong)elapsedTime / 3600} hours {(ulong)elapsedTime % 3600 / 60} minutes {(double)((ulong)elapsedTime % 60) + elapsedTime - (double)(ulong)elapsedTime:F6} seconds\n");
    }
});
app.MapGet("/Frequency", () =>
{
    unsafe
    {
        ulong           Cycles;
        var elapsedTime = TimeStampCount(&Cycles);
        if              (double.IsNaN(elapsedTime)) return Results.BadRequest(1);
        return          Results.Text($"Approx CPU frequency: {(double)Cycles / elapsedTime / 1.0e9:F6} GHz\n");
    }
});
app.MapGet("/Size", () =>
{
    try
    {
        long Size   = new FileInfo("main.exe").Length;
        return      Results.Text((double)Size >= gB ? $"File size: {(double)Size / gB:F3} GB" :
            (double)Size >= mB ? $"File size: {(double)Size / mB:F3} MB" :
            (double)Size >= kB ? $"File size: {(double)Size / kB:F3} KB" :
            $"File size: {Size} bytes");
    }
    catch   (System.Exception) {return Results.BadRequest(1);}
});
app.Run();
public struct           Timespec
{
    public long tv_sec;
    public int tv_nsec;
}
