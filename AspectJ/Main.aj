/*
as FFI.asm -o FFI.obj
ld -shared FFI.obj -s --file-alignment=4 --section-alignment=4 --disable-reloc-section -Tlink.ld -L"Path\lib" -lkernel32 -o FFI.dll
ajc -24 -O -g:none -classpath aspectjrt.jar Main.aj
jar cfe main.jar Main *.class
native-image -cp main.jar;aspectjrt.jar Main --enable-native-access=ALL-UNNAMED -O3 -march=native -o main
*/
import java.io.File;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Around;
class Main
{
    public native static boolean    QueryPerformanceFrequency(long[] lpFrequency);
    public native static boolean    QueryPerformanceCounter(long[] lpPerformanceCount);
    public native static void       ExitProcess(int uExitCode);
    public native static long       rdtscpf();
    static {System.loadLibrary("FFI");}
    public record                   timespec(long tv_sec, int tv_nsec) {}
    public static final double      kB = 1024.0, mB = 1024.0 * 1024.0, gB = 1024.0 * 1024.0 * 1024.0;
    public static long Size, Cycles = 0;
    public static double            elapsedTime;
    public static void              Loop(int iterations)
    {
        do
        {
            rdtscpf();
            iterations--;
        }   while (iterations > 0);
    }
    public static void              main(String[] args) throws Exception
    {
        long[] frequency    = new long[1];
        long[] counter      = new long[1];
        QueryPerformanceFrequency(frequency);
        QueryPerformanceCounter(counter);
        timespec time       = new timespec(counter[0] / frequency[0], (int)((counter[0] % frequency[0]) * 1000000000 / frequency[0]));
        Loop(100000);
        QueryPerformanceCounter(counter);
        elapsedTime         = (double)(counter[0] / frequency[0] - time.tv_sec) + (double)((int)((counter[0] % frequency[0]) * 1000000000 / frequency[0]) - time.tv_nsec) / 1000000000.0;
        File fp             = new File("main.exe");
        if                  (!fp.exists()) throw new java.io.FileNotFoundException();
        Size                = fp.length();
    }
    @Aspect
    public static class             MainAspect
    {
        @AfterThrowing(pointcut = "execution(* Main.main(..))", throwing = "ex")
        public void     _ExitProcess(Exception ex) {ExitProcess(1);}
        @Around("call(* Main.QueryPerformance*(..))")
        public Object   checkResult(ProceedingJoinPoint pjp) throws Throwable
        {
            Object result   = pjp.proceed();
            if              (result instanceof Boolean && !((Boolean) result)) throw new java.io.FileNotFoundException();
            return          result;
        }
        @Around("execution(* Main.Loop(..)) && args(iterations)")
        public Object TimeStampCounter(ProceedingJoinPoint pjp, int iterations) throws Throwable
        {
            long    st, et;
            do
            {
                st          = rdtscpf();
                et          = rdtscpf() - st;
                Main.Cycles += et;
                iterations--;
            }       while (iterations > 0);
            return  null;
        }
        @AfterReturning("execution(* Main.main(..))")
        public void printResults()
        {
            System.out.println("Total Cycles " + Cycles);
            System.out.println("Time taken: " + Long.toUnsignedString((long)elapsedTime / 3600) + " hours " + Long.toUnsignedString((long)elapsedTime % 3600 / 60) + " minutes " + String.format("%.6f", (double)((long)elapsedTime % 60) + elapsedTime - (double)((long)elapsedTime)) + " seconds");
            System.out.println("Approx CPU frequency: " + String.format("%.6f", (double)Cycles / elapsedTime / 1.0e9) + " GHz");
            if          ((double)Size >= gB) System.out.println("File size: " + String.format("%.3f", (double)Size / gB) + " GB");
            else        if ((double)Size >= mB) System.out.println("File size: " + String.format("%.3f", (double)Size / mB) + " MB");
            else        if ((double)Size >= kB) System.out.println("File size: " + String.format("%.3f", (double)Size / kB) + " KB");
            else        System.out.println("File size: " + Size + " bytes");
            ExitProcess(0);
        }
    }
}
