/*
as FFI.asm -o FFI.obj
ld -shared FFI.obj -s --file-alignment=4 --section-alignment=4 --disable-reloc-section -Tlink.ld -L"Path\lib" -lkernel32 -o FFI.dll
javac -g:none Main.java
native-image Main --enable-native-access=ALL-UNNAMED -O3 -march=native -o main
*/
import java.io.File;
class Main
{
    public native static boolean    QueryPerformanceFrequency(long[] lpFrequency);
    public native static boolean    QueryPerformanceCounter(long[] lpPerformanceCount);
    public native static void       ExitProcess(int uExitCode);
    public native static long       rdtscpf();
    static {System.loadLibrary("FFI");}
    public record                   timespec(long tv_sec, int tv_nsec) {}
    public static final double      kB = 1024.0, mB = 1024.0 * 1024.0, gB = 1024.0 * 1024.0 * 1024.0;
    public static void              main(String[] args)
    {
        long[] frequency    = new long[1];
        long[] counter      = new long[1];
        if                  (!(QueryPerformanceFrequency(frequency) && QueryPerformanceCounter(counter))) ExitProcess(1);
        timespec time       = new timespec(counter[0] / frequency[0], (int)((counter[0] % frequency[0]) * 1000000000 / frequency[0]));
        long                st, et, Size, Cycles = 0;
        int i               = 100000;
        do
        {
            st      = rdtscpf();
            et      = rdtscpf() - st;
            Cycles  += et;
            i--;
        }                   while (i > 0);
        if                  (!QueryPerformanceCounter(counter)) ExitProcess(1);
        double elapsedTime  = (double)(counter[0] / frequency[0] - time.tv_sec) + (double)((int)((counter[0] % frequency[0]) * 1000000000 / frequency[0]) - time.tv_nsec) / 1000000000.0;
        try
        {
            File fp     = new File("main.exe");
            if          (!fp.exists()) throw new java.io.FileNotFoundException();
            Size        = fp.length();
            System.out.println("Total Cycles " + Cycles);
            System.out.println("Time taken: " + Long.toUnsignedString((long)elapsedTime / 3600) + " hours " + Long.toUnsignedString((long)elapsedTime % 3600 / 60) + " minutes " + String.format("%.6f", (double)((long)elapsedTime % 60) + elapsedTime - (double)((long)elapsedTime)) + " seconds");
            System.out.println("Approx CPU frequency: " + String.format("%.6f", (double)Cycles / elapsedTime / 1.0e9) + " GHz");
            if          ((double)Size >= gB) System.out.println("File size: " + String.format("%.3f", (double)Size / gB) + " GB");
            else        if ((double)Size >= mB) System.out.println("File size: " + String.format("%.3f", (double)Size / mB) + " MB");
            else        if ((double)Size >= kB) System.out.println("File size: " + String.format("%.3f", (double)Size / kB) + " KB");
            else        System.out.println("File size: " + Size + " bytes");
            ExitProcess(0);
        }                   catch (Exception e) {ExitProcess(1);}
    }
}
