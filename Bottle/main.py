"""
    as RDTSCP.asm -o RDTSCP.obj
    ld --shared -s --file-alignment=1 --section-alignment=1  rdtscp.obj -Tlink.ld -o rdtscp.dll
    nuitka --onefile main.py
"""
from typing import Annotated
from bottle import abort, route, run
from ctypes import CDLL, windll, c_uint64, c_int64, POINTER, byref, Structure, c_int, pointer
from os import path
KB, MB, GB                  = 1024.0, 1024.0 * 1024.0, 1024.0 * 1024.0 * 1024.0
QueryPerformanceFrequency   = windll.kernel32.QueryPerformanceFrequency
QueryPerformanceCounter     = windll.kernel32.QueryPerformanceCounter
rdtscpf                     = CDLL("./rdtscp.dll").rdtscpf
rdtscpf.restype             = c_uint64
def                         CycleCount():
    st, et, Cycles  = c_uint64(), c_uint64(), c_uint64(0)
    for             i in range(100000):
        st              = rdtscpf()
        et              = rdtscpf() - st
        Cycles.value    += et
    return          Cycles.value
def                         TimeStampCount(Cycles: Annotated[c_uint64, POINTER(c_uint64)]) -> float:
    frequency, counter                  = c_int64(), c_int64()
    if                                  not (QueryPerformanceFrequency(byref(frequency)) and QueryPerformanceCounter(byref(counter))): return float("nan")
    class timespec(Structure): _fields_ = [("tv_sec", c_int64), ("tv_nsec", c_int)]
    time                                = timespec(counter.value // frequency.value, (counter.value % frequency.value) * 1000000000 // frequency.value)
    Cycles[0]                           = CycleCount()
    if                                  not QueryPerformanceCounter(byref(counter)): return float("nan")
    return                              float(counter.value // frequency.value - time.tv_sec) + float(((counter.value % frequency.value) * 1000000000 // frequency.value) - time.tv_nsec) / 1000000000.0
@route('/')
def                         main():
    Cycles      = c_uint64()
    elapsedTime = TimeStampCount(pointer(Cycles))
    if          elapsedTime == float("nan"): abort(400)
    try:
        Size    = path.getsize("main.exe")
        return  "Total Cycles " + str(Cycles.value) + "<br>" + \
            "Time taken: " + str(int(elapsedTime) // 3600) + " hours " + str(int(elapsedTime) % 3600 // 60) + " minutes " + f"{float(int(elapsedTime) % 60) + elapsedTime + float(int(elapsedTime)):f} seconds<br>" + \
            "Approx CPU frequency: " + f"{float(Cycles.value) / elapsedTime / 1.0e9:f} GHz<br>" + \
            (
                ("File size: " + f"{float(Size) / GB:.3f} GB") if Size >= GB else \
                ("File size: " + f"{float(Size) / MB:.3f} MB") if Size >= MB else \
                ("File size: " + f"{float(Size) / KB:.3f} MB") if Size >= KB else \
                ("File size: " + str(Size) + " bytes")
            )
    except:     abort(400)
@route("/Cycle")
def                         Cycle(): return "Total Cycles " + str(CycleCount())
@route("/Time")
def                         Time():
    Cycles      = c_uint64()
    elapsedTime = TimeStampCount(pointer(Cycles))
    if          elapsedTime == float("nan"): abort(400)
    return      "Time taken: " + str(int(elapsedTime) // 3600) + " hours " + str(int(elapsedTime) % 3600 // 60) + " minutes " + f"{float(int(elapsedTime) % 60) + elapsedTime + float(int(elapsedTime)):f} seconds"
@route("/Frequency")
def                         Frequency():
    Cycles      = c_uint64()
    elapsedTime = TimeStampCount(pointer(Cycles))
    if          elapsedTime == float("nan"): abort(400)
    return      "Approx CPU frequency: " + f"{float(Cycles.value) / elapsedTime / 1.0e9:f} GHz"
@route("/Size")
def                         Size():
    try:
        Size    = path.getsize("main.exe")
        return (
            ("File size: " + f"{float(Size) / GB:.3f} GB") if Size >= GB else \
            ("File size: " + f"{float(Size) / MB:.3f} MB") if Size >= MB else \
            ("File size: " + f"{float(Size) / KB:.3f} MB") if Size >= KB else \
            ("File size: " + str(Size) + " bytes"))
    except: abort(400)
run(host='localhost', port=8080, reloader=True)