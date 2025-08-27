superstrict
import brl.blitz
import brl.appstub
import brl.audio
import brl.bank
import brl.bankstream
import brl.base64
import brl.basic
import brl.bmploader
import brl.bytebuffer
import brl.clipboard
import brl.collections
import brl.d3d7max2d
import brl.d3d9max2d
import brl.directsoundaudio
import brl.eventqueue
import brl.freeaudioaudio
import brl.freetypefont
import brl.glgraphics
import brl.glmax2d
import brl.gnet
import brl.jpgloader
import brl.map
import brl.matrix
import brl.maxlua
import brl.maxunit
import brl.maxutil
import brl.objectlist
import brl.oggloader
import brl.openalaudio
import brl.platform
import brl.pngloader
import brl.polygon
import brl.quaternion
import brl.retro
import brl.tgaloader
import brl.threadpool
import brl.timer
import brl.timerdefault
import brl.utf8stream
import brl.uuid
import brl.volumes
import brl.wavloader
import pub.freejoy
import pub.freeprocess
import pub.glad
import pub.nfd
import pub.nx
import pub.opengles
import pub.opengles3
import pub.vulkan
import pub.xmmintrin
gB!=1.07374182e+09!
mB!=1048576.00!
kB!=1024.0!
timespec^Object{
.tv_sec%%&
.tv_nsec%&
-New()="__m_main_timespec_New"
-New(tv_sec%%,tv_nsec%)="_m_main_timespec_New_li"
}="_m_main_timespec"
QueryPerformanceFrequency%(lpFrequency%%*)="QueryPerformanceFrequency":WINBOOL QueryPerformanceFrequency(LARGE_INTEGER*)
QueryPerformanceCounter%(lpPerformanceCount%%*)="QueryPerformanceCounter":WINBOOL QueryPerformanceCounter(LARGE_INTEGER*)
ExitProcess(uExitCode|)="ExitProcess"
rdtscpf||()="rdtscpf"
frequency%%&=mem:p("_m_main_frequency")
counter%%&=mem:p("_m_main_counter")
time:timespec&=mem:p("_m_main_time")
st||&=mem:p("_m_main_st")
et||&=mem:p("_m_main_et")
Cycles||&=mem:p("_m_main_Cycles")
i|&=mem:p("_m_main_i")
elapsedTime!&=mem:p("_m_main_elapsedTime")