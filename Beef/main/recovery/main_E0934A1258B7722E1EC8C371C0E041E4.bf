using System;
using System.IO;
struct timespec
{
    public int64	tv_sec;
    public int		tv_nsec;
}
static struct Program
{
	const let kB			= 1024.0, mB = 1024.0 * 1024.0, gB = 1024.0 * 1024.0 * 1024.0;
	[Import("kernel32.lib"), CLink]
	static extern bool		QueryPerformanceFrequency(int64 *lpFrequency); 
	[Import("kernel32.lib"), CLink]
	static extern bool		QueryPerformanceCounter(int64 *lpPerformanceCount); 
	[Import("kernel32.lib"), CLink]
	static extern void		ExitProcess(uint uExitCode);
	[Import("../../../lib/rdtscp.dll"), CLink]
	static extern uint64	rdtscpf();
    public static void		Main()
    {
		var frequency	= 0, counter = 0, Size = 0;
		if				(!(QueryPerformanceFrequency(&frequency) && QueryPerformanceCounter(&counter))) ExitProcess(1);
		var time		= timespec {tv_sec = counter / frequency, tv_nsec = (int)(counter % frequency * 1000000000 / frequency)};
		uint64 st		= 0, et = 0, Cycles = 0;
		for				(var i = 100000; i > 0; i--)
		{
			st		= rdtscpf();
			et		= rdtscpf() - st;
			Cycles	+= et;
		}
		if				(!QueryPerformanceCounter(&counter)) ExitProcess(1);
		var elapsedTime	= (double)(counter / frequency - time.tv_sec) + (double)((int)(counter % frequency * 1000000000 / frequency) - time.tv_nsec) / 1000000000.0;
		var	fp			= new FileStream();
		if				(fp.Open("main.exe", .Read) case .Err) ExitProcess(1);
		Size			= fp.Length;
		fp.Close();
		Console.WriteLine($"Total Cycles {Cycles}");
		Console.WriteLine($"Time taken: {(uint64)elapsedTime / 3600} hours {(uint64)elapsedTime % 3600 / 60} minutes {(double)((uint64)elapsedTime % 60) + elapsedTime - (double)(uint64)elapsedTime:F6} seconds");
		Console.WriteLine($"Approx CPU frequency: {(double)Cycles / elapsedTime / 1.0e9:F6} GHz");
		if				(Size >= gB) Console.WriteLine($"File size: {Size / gB:F3} GB");
		else			if (Size >= mB) Console.WriteLine($"File size: {Size / mB:F3} MB");
		else			if (Size >= kB) Console.WriteLine($"File size: {Size / kB:F3} KB");
		else			Console.WriteLine($"File size: {Size} bytes");
        ExitProcess(0);
    }
}
