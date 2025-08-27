#ifndef BLITZMAX_MAIN_BMX_CONSOLE_RELEASE_WIN32_X64_H
#define BLITZMAX_MAIN_BMX_CONSOLE_RELEASE_WIN32_X64_H

#include <brl.mod/blitz.mod/.bmx/blitz.bmx.release.win32.x64.h>
#include <brl.mod/appstub.mod/.bmx/appstub.bmx.release.win32.x64.h>
#include <brl.mod/audio.mod/.bmx/audio.bmx.release.win32.x64.h>
#include <brl.mod/bank.mod/.bmx/bank.bmx.release.win32.x64.h>
#include <brl.mod/bankstream.mod/.bmx/bankstream.bmx.release.win32.x64.h>
#include <brl.mod/base64.mod/.bmx/base64.bmx.release.win32.x64.h>
#include <brl.mod/basic.mod/.bmx/basic.bmx.release.win32.x64.h>
#include <brl.mod/bmploader.mod/.bmx/bmploader.bmx.release.win32.x64.h>
#include <brl.mod/bytebuffer.mod/.bmx/bytebuffer.bmx.release.win32.x64.h>
#include <brl.mod/clipboard.mod/.bmx/clipboard.bmx.release.win32.x64.h>
#include <brl.mod/collections.mod/.bmx/collections.bmx.release.win32.x64.h>
#include <brl.mod/d3d7max2d.mod/.bmx/d3d7max2d.bmx.release.win32.x64.h>
#include <brl.mod/d3d9max2d.mod/.bmx/d3d9max2d.bmx.release.win32.x64.h>
#include <brl.mod/directsoundaudio.mod/.bmx/directsoundaudio.bmx.release.win32.x64.h>
#include <brl.mod/eventqueue.mod/.bmx/eventqueue.bmx.release.win32.x64.h>
#include <brl.mod/freeaudioaudio.mod/.bmx/freeaudioaudio.bmx.release.win32.x64.h>
#include <brl.mod/freetypefont.mod/.bmx/freetypefont.bmx.release.win32.x64.h>
#include <brl.mod/glgraphics.mod/.bmx/glgraphics.bmx.release.win32.x64.h>
#include <brl.mod/glmax2d.mod/.bmx/glmax2d.bmx.release.win32.x64.h>
#include <brl.mod/gnet.mod/.bmx/gnet.bmx.release.win32.x64.h>
#include <brl.mod/jpgloader.mod/.bmx/jpgloader.bmx.release.win32.x64.h>
#include <brl.mod/map.mod/.bmx/map.bmx.release.win32.x64.h>
#include <brl.mod/matrix.mod/.bmx/matrix.bmx.release.win32.x64.h>
#include <brl.mod/maxlua.mod/.bmx/maxlua.bmx.release.win32.x64.h>
#include <brl.mod/maxunit.mod/.bmx/maxunit.bmx.release.win32.x64.h>
#include <brl.mod/maxutil.mod/.bmx/maxutil.bmx.release.win32.x64.h>
#include <brl.mod/objectlist.mod/.bmx/objectlist.bmx.release.win32.x64.h>
#include <brl.mod/oggloader.mod/.bmx/oggloader.bmx.release.win32.x64.h>
#include <brl.mod/openalaudio.mod/.bmx/openalaudio.bmx.release.win32.x64.h>
#include <brl.mod/platform.mod/.bmx/platform.bmx.release.win32.x64.h>
#include <brl.mod/pngloader.mod/.bmx/pngloader.bmx.release.win32.x64.h>
#include <brl.mod/polygon.mod/.bmx/polygon.bmx.release.win32.x64.h>
#include <brl.mod/quaternion.mod/.bmx/quaternion.bmx.release.win32.x64.h>
#include <brl.mod/retro.mod/.bmx/retro.bmx.release.win32.x64.h>
#include <brl.mod/tgaloader.mod/.bmx/tgaloader.bmx.release.win32.x64.h>
#include <brl.mod/threadpool.mod/.bmx/threadpool.bmx.release.win32.x64.h>
#include <brl.mod/timer.mod/.bmx/timer.bmx.release.win32.x64.h>
#include <brl.mod/timerdefault.mod/.bmx/timerdefault.bmx.release.win32.x64.h>
#include <brl.mod/utf8stream.mod/.bmx/utf8stream.bmx.release.win32.x64.h>
#include <brl.mod/uuid.mod/.bmx/uuid.bmx.release.win32.x64.h>
#include <brl.mod/volumes.mod/.bmx/volumes.bmx.release.win32.x64.h>
#include <brl.mod/wavloader.mod/.bmx/wavloader.bmx.release.win32.x64.h>
#include <pub.mod/freejoy.mod/.bmx/freejoy.bmx.release.win32.x64.h>
#include <pub.mod/freeprocess.mod/.bmx/freeprocess.bmx.release.win32.x64.h>
#include <pub.mod/glad.mod/.bmx/glad.bmx.release.win32.x64.h>
#include <pub.mod/nfd.mod/.bmx/nfd.bmx.release.win32.x64.h>
#include <pub.mod/nx.mod/.bmx/nx.bmx.release.win32.x64.h>
#include <pub.mod/opengles.mod/.bmx/opengles.bmx.release.win32.x64.h>
#include <pub.mod/opengles3.mod/.bmx/opengles3.bmx.release.win32.x64.h>
#include <pub.mod/vulkan.mod/.bmx/vulkan.bmx.release.win32.x64.h>
#include <pub.mod/xmmintrin.mod/.bmx/xmmintrin.bmx.release.win32.x64.h>
int _bb_main();
struct _m_main_timespec_obj;
extern BBLONG _m_main_frequency;
extern BBLONG _m_main_counter;
extern WINBOOL QueryPerformanceFrequency(LARGE_INTEGER* bbt_lpFrequency);
extern WINBOOL QueryPerformanceCounter(LARGE_INTEGER* bbt_lpPerformanceCount);
extern void ExitProcess(BBUINT bbt_uExitCode);
void __m_main_timespec_New_li(struct _m_main_timespec_obj* o,BBLONG bbt_tv_sec,BBINT bbt_tv_nsec);
struct _m_main_timespec_obj* __m_main_timespec_New_li_ObjectNew(BBClass * clas,BBLONG bbt_tv_sec,BBINT bbt_tv_nsec);
void __m_main_timespec_New(struct _m_main_timespec_obj* o);
struct BBClass__m_main_timespec {
	BBClass*  super;
	void      (*free)( BBObject *o );
	BBDebugScope* debug_scope;
	unsigned int instance_size;
	void      (*ctor)( BBOBJECT o );
	void      (*dtor)( BBOBJECT o );
	BBSTRING  (*ToString)( BBOBJECT x );
	int       (*Compare)( BBOBJECT x,BBOBJECT y );
	BBOBJECT  (*SendMessage)( BBOBJECT o,BBOBJECT m,BBOBJECT s );
	BBINTERFACETABLE itable;
	void*     extra;
	unsigned int obj_size;
	unsigned int instance_count;
	unsigned int fields_offset;
};

struct _m_main_timespec_obj {
	struct BBClass__m_main_timespec* clas;
	BBLONG __m_main_timespec_tv_sec;
	BBINT __m_main_timespec_tv_nsec;
};
extern struct BBClass__m_main_timespec _m_main_timespec;
extern struct _m_main_timespec_obj* _m_main_time;
extern BBULONG _m_main_st;
extern BBULONG _m_main_et;
extern BBULONG _m_main_Cycles;
extern BBUINT _m_main_i;
extern BBULONG rdtscpf();
extern BBDOUBLE _m_main_elapsedTime;

#endif
