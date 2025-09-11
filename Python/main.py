"""
    as RDTSCP.asm -o RDTSCP.obj
    ld --shared -s --file-alignment=1 --section-alignment=1  rdtscp.obj -Tlink.ld -o rdtscp.dll
    nuitka --onefile main.py
"""
import ctypes
from ctypes import CDLL, windll, c_uint64, Structure, c_int64, c_int
from os import path
KB, MB, GB                  = 1024.0, 1024.0 * 1024.0, 1024.0 * 1024.0 * 1024.0
QueryPerformanceFrequency   = windll.kernel32.QueryPerformanceFrequency
QueryPerformanceCounter     = windll.kernel32.QueryPerformanceCounter
ExitProcess                 = windll.kernel32.ExitProcess
rdtscpf                     = CDLL("./rdtscp.dll").rdtscpf
rdtscpf.restype             = c_uint64
frequency, counter          = ctypes.c_int64(), ctypes.c_int64()
if                          not (QueryPerformanceFrequency(ctypes.byref(frequency)) and QueryPerformanceCounter(ctypes.byref(counter))): ExitProcess(1)
class                       timespec(Structure): _fields_ = [("tv_sec", c_int64), ("tv_nsec", c_int)]
time                        = timespec(counter.value // frequency.value, (counter.value % frequency.value) * 1000000000 // frequency.value)
st, et, Cycles              = ctypes.c_uint64(), ctypes.c_uint64(), ctypes.c_uint64(0)
for                         i in range(100000):
    st              = rdtscpf()
    et              = rdtscpf() - st
    Cycles.value    += et
if                          not QueryPerformanceCounter(ctypes.byref(counter)): ExitProcess(1)
elapsedTime                 = float(counter.value // frequency.value - time.tv_sec) + float(((counter.value % frequency.value) * 1000000000 // frequency.value) - time.tv_nsec) / 1000000000.0
try:
    Size    = path.getsize("main.exe")
    print("Total Cycles", Cycles.value)
    print("Time taken:", int(elapsedTime) // 3600, "hours", int(elapsedTime) % 3600 // 60, "minutes", f"{float(int(elapsedTime) % 60) + elapsedTime + float(int(elapsedTime)):f} seconds")
    print("Approx CPU frequency:", f"{float(Cycles.value) / elapsedTime / 1.0e9:f} GHz")
    if      Size >= GB: print("File size:", f"{float(Size) / GB:.3f} GB")
    elif    Size >= MB: print("File size:", f"{float(Size) / MB:.3f} MB")
    elif    Size >= KB: print("File size:", f"{float(Size) / KB:.3f} KB")
    else:   print("File size:", Size, "bytes")
    ExitProcess(0)
except:                     ExitProcess(1)