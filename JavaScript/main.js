//  deno compile -o main.exe --allow-ffi="./build/Release/main.node" --allow-read="./main.exe" main.js
import module from "node:module"
import {dlopen} from "node:process"
import {statSync} from "node:fs"
dlopen(module, "./build/Release/main.node", 0)
const FFI                   = module.exports
const kB                    = 1024.0, mB = 1024.0 * 1024.0, gB = 1024.0 * 1024.0 * 1024.0
let lpFrequency             = Buffer.alloc(8)
let lpPerformanceCount      = Buffer.alloc(8)
if                          (!(FFI.QueryPerformanceFrequency(lpFrequency) && FFI.QueryPerformanceCounter(lpPerformanceCount))) FFI.ExitProcess(1)
let frequency               = lpFrequency.readBigInt64LE(0)
let counter                 = lpPerformanceCount.readBigInt64LE(0)
class                       Timespec
{
    constructor(tv_sec, tv_nsec)
    {
        this.tv_sec     = BigInt(tv_sec)
        this.tv_nsec    = Number(tv_nsec)
    }
}
let time                    = new Timespec(counter / frequency, (counter % frequency) * 1000000000n / frequency)
let st, et, Size, Cycles    = 0n, i = 100000
do
{
    st      = FFI.rdtscpf()
    et      = FFI.rdtscpf() - st
    Cycles  += et, i--
}                           while (i > 0)
if                          (!FFI.QueryPerformanceCounter(lpPerformanceCount)) FFI.ExitProcess(1)
counter                     = lpPerformanceCount.readBigInt64LE(0)
let elapsedTime             = Number((counter / frequency) - time.tv_sec) + (Number((counter % frequency) * 1000000000n / frequency) - time.tv_nsec) / 1000000000.0
try
{
  let Size  = statSync("main.exe").size
  console.log("Total Cycles " + Cycles.toString())
  console.log("Time taken: " + (BigInt(Math.trunc(elapsedTime)) / 3600n).toString() + " hours " + (BigInt(Math.trunc(elapsedTime)) % 3600n / 60n).toString() + " minutes " + (Number(BigInt(Math.trunc(elapsedTime)) % 60n) + elapsedTime - Math.trunc(elapsedTime)).toFixed(6) + " seconds")
  console.log("Approx CPU frequency: " + (Number(Cycles) / elapsedTime / 1.0e9).toFixed(6) + " GHz")
  if        (Size > gB) console.log("File size: " + (Size / gB).toFixed(3) + " GB")
  else      if (Size > mB) console.log("File size: " + (Size / mB).toFixed(3) + " MB")
  else      if (Size > kB) console.log("File size: " + (Size / kB).toFixed(3) + " KB")
  else      console.log("File size: " + Size.toString + " bytes")
  FFI.ExitProcess(0)
}                           catch (error) {FFI.ExitProcess(1)}