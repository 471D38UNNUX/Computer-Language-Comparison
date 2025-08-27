'   fbc64 main.bas -O 3 -Wl -Tlink.ld
#include "crt/stdarg.bi"
#include "win/winbase.bi"
#include "file.bi"
#include "crt/stdio.bi"
const as double             kB = 1024.0, mB = 1024.0 * 1024.0, gB = 1024.0 * 1024.0 * 1024.0
function rdtscpf()          as ulongint
    asm
        lfence
        rdtscp
        lfence
        shl rdx, 32
        or  rax, rdx
        mov [function], rax
    end asm
end                         function
dim as LARGE_INTEGER        frequency, counter
if                          not(QueryPerformanceFrequency(@frequency) andalso QueryPerformanceCounter(@counter)) then ExitProcess(1) end if
type                        timespec
    tv_sec                  as longint
    tv_nsec                 as long
end                         type
dim timev as timespec       = type(counter.QuadPart \ frequency.QuadPart, clng((counter.QuadPart mod frequency.QuadPart) * 1000000000 \ frequency.QuadPart))
dim as ulongint             st, et, Cycles = 0
dim as ulong i              = 100000
do
    st      = rdtscpf()
    et      = rdtscpf() - st
    Cycles  += et
    i       -= 1
    if      i = 0 then exit do
loop
if                          QueryPerformanceCounter(@counter) = 0 then ExitProcess(1) end if
dim elapsedTime as double   = cdbl(counter.QuadPart \ frequency.QuadPart - timev.tv_sec) + cdbl(clng((counter.QuadPart mod frequency.QuadPart) * 1000000000 \ frequency.QuadPart) - timev.tv_nsec) / 1000000000.0
on                          error goto e0
dim Size as                 longint
if                          not fileexists("main.exe") then error 1
Size                        = filelen("main.exe")
print                       "Total Cycles "; Cycles
printf(!"Time taken: %llu hours %llu minutes %f seconds\n", culngint(elapsedTime) \ 3600, culngint(elapsedTime) mod 3600 \ 60, cdbl(culngint(elapsedTime) mod 60) + elapsedTime - cdbl(culngint(elapsedTime)))
printf(!"Approx CPU frequency: %f GHz\n", cdbl(Cycles) / elapsedTime / 1.0e9)
if                          cdbl(Size) >= gB then
    printf(!"File size: %.3f GB\n", cdbl(Size) / gB)
elseif                      cdbl(Size) >= mB then
    printf(!"File size: %.3f MB\n", cdbl(Size) / mB)
elseif                      cdbl(Size) >= kB then
    printf(!"File size: %.3f KB\n", cdbl(Size) / kB)
else                        
    print "File size: "; culngint(Size); " bytes"
end                         if
ExitProcess(0)
e0:
ExitProcess(1)