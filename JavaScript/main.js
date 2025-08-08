/*
as FFI.asm -o FFI.obj
ld -shared FFI.obj --file-alignment=4 --section-alignment=4 --disable-reloc-section -Tlink.ld -L"Path\lib" -lkernel32 -lqjs -o FFI.dll
qjs -c main.js -o main.exe
*/
import {QueryPerformanceFrequency, QueryPerformanceCounter, ExitProcess, rdtscpf} from "FFI.dll"
import {open, SEEK_END} from "qjs:std"
const kB                = 1024.0, mB = 1024.0 * 1024.0, gB = 1024.0 * 1024.0 * 1024.0
let lpFrequency         = new ArrayBuffer(8)
let lpPerformanceCount  = new ArrayBuffer(8)
if                      (!(QueryPerformanceFrequency(lpFrequency) && QueryPerformanceCounter(lpPerformanceCount))) ExitProcess(1)
let frequency           = new DataView(lpFrequency).getBigInt64(0, true)
let counter             = new DataView(lpPerformanceCount).getBigInt64(0, true)
class                   timespec
{
    constructor(tv_sec, tv_nsec)
    {
        this.tv_sec     = BigInt(tv_sec)
        this.tv_nsec    = Number(tv_nsec)
    }
}
let time                = new timespec(counter / frequency, (counter % frequency) * 1000000000n / frequency)
let st, et, Cycles      = 0n, i = 100000
do
{
    st      = rdtscpf()
    et      = rdtscpf() - st
    Cycles  += et, i--
}                       while (i > 0)
if                      (!QueryPerformanceCounter(lpPerformanceCount)) ExitProcess(1)
counter                 = new DataView(lpPerformanceCount).getBigInt64(0, true)
let elapsedTime         = Number((counter / frequency) - time.tv_sec) + (Number((counter % frequency) * 1000000000n / frequency) - time.tv_nsec) / 1000000000.0
try
{
    let fp      = open("main.exe", "rb")
    fp.seek(0, SEEK_END)
    let Size    = fp.tell(true)
    fp.close()
    console.log("Total Cycles " + Cycles)
    console.log("Time taken: " + (BigInt(Math.trunc(elapsedTime)) / 3600n) + " hours " + (BigInt(Math.trunc(elapsedTime)) % 3600n / 60n) + " minutes " + (Number(BigInt(Math.trunc(elapsedTime)) % 60n) + elapsedTime - Math.trunc(elapsedTime)).toFixed(6) + " seconds")
    console.log("Approx CPU frequency: " + (Number(Cycles) / elapsedTime / 1.0e9).toFixed(6) + " GHz")
    if        (Size > gB) console.log("File size: " + (Size / gB).toFixed(3) + " GB")
    else      if (Size > mB) console.log("File size: " + (Size / mB).toFixed(3) + " MB")
    else      if (Size > kB) console.log("File size: " + (Size / kB).toFixed(3) + " KB")
    else      console.log("File size: " + Size + " bytes")
    ExitProcess(0)
}                       catch (error) {ExitProcess(1)}
