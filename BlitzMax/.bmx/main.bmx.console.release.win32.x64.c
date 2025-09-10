#include "main.bmx.console.release.win32.x64.h"
struct BBString_3{BBClass_String* clas;BBULONG hash;int length;BBChar buf[3];};
struct BBString_4{BBClass_String* clas;BBULONG hash;int length;BBChar buf[4];};
struct BBString_6{BBClass_String* clas;BBULONG hash;int length;BBChar buf[6];};
struct BBString_7{BBClass_String* clas;BBULONG hash;int length;BBChar buf[7];};
struct BBString_9{BBClass_String* clas;BBULONG hash;int length;BBChar buf[9];};
struct BBString_8{BBClass_String* clas;BBULONG hash;int length;BBChar buf[8];};
struct BBString_2{BBClass_String* clas;BBULONG hash;int length;BBChar buf[2];};
struct BBString_22{BBClass_String* clas;BBULONG hash;int length;BBChar buf[22];};
struct BBString_11{BBClass_String* clas;BBULONG hash;int length;BBChar buf[11];};
struct BBString_12{BBClass_String* clas;BBULONG hash;int length;BBChar buf[12];};
struct BBString_13{BBClass_String* clas;BBULONG hash;int length;BBChar buf[13];};
static struct BBString_3 _s22={
	&bbStringClass,
	0xc0b5769ea420ff48,
	3,
	{32,71,66}
};
static struct BBString_4 _s19={
	&bbStringClass,
	0x55520e394f1d757b,
	4,
	{32,71,72,122}
};
static struct BBString_3 _s24={
	&bbStringClass,
	0x18d925df8d69bf97,
	3,
	{32,75,66}
};
static struct BBString_3 _s23={
	&bbStringClass,
	0xa77cd5efd71a36eb,
	3,
	{32,77,66}
};
static struct BBString_6 _s25={
	&bbStringClass,
	0xad37eb0b1c775f3,
	6,
	{32,98,121,116,101,115}
};
static struct BBString_7 _s14={
	&bbStringClass,
	0x1fb3892e80c43a8c,
	7,
	{32,104,111,117,114,115,32}
};
static struct BBString_9 _s15={
	&bbStringClass,
	0x49d6b82b14237a54,
	9,
	{32,109,105,110,117,116,101,115,32}
};
static struct BBString_8 _s17={
	&bbStringClass,
	0xa5f1d5ff9bac958d,
	8,
	{32,115,101,99,111,110,100,115}
};
static struct BBString_4 _s21={
	&bbStringClass,
	0x15ba84bf17160b82,
	4,
	{37,46,51,102}
};
static struct BBString_2 _s16={
	&bbStringClass,
	0x3f374461ab3e02ae,
	2,
	{37,102}
};
static struct BBString_22 _s18={
	&bbStringClass,
	0x75321f9915d919d1,
	22,
	{65,112,112,114,111,120,32,67,80,85,32,102,114,101,113,117,101
	,110,99,121,58,32}
};
static struct BBString_11 _s20={
	&bbStringClass,
	0xee5fe131ef68d8fd,
	11,
	{70,105,108,101,32,115,105,122,101,58,32}
};
static struct BBString_12 _s13={
	&bbStringClass,
	0x84a99739d09ca0b1,
	12,
	{84,105,109,101,32,116,97,107,101,110,58,32}
};
static struct BBString_13 _s12={
	&bbStringClass,
	0x72591d07ea57e8b9,
	13,
	{84,111,116,97,108,32,67,121,99,108,101,115,32}
};
static struct BBString_8 _s11={
	&bbStringClass,
	0xf9247512247571b5,
	8,
	{109,97,105,110,46,101,120,101}
};
struct BBDebugScope_4{int kind; const char *name; BBDebugDecl decls[5]; };
BBLONG _m_main_frequency=0LL;
BBLONG _m_main_counter=0LL;
void __m_main_timespec_New_li(struct _m_main_timespec_obj* o,BBLONG bbt_tv_sec,BBINT bbt_tv_nsec) {
	bbObjectCtor((BBOBJECT)o);
	o->clas = &_m_main_timespec;
	o->__m_main_timespec_tv_sec = 0LL;
	o->__m_main_timespec_tv_nsec = 0;
	o->__m_main_timespec_tv_sec =bbt_tv_sec;
	o->__m_main_timespec_tv_nsec =bbt_tv_nsec;
}
struct _m_main_timespec_obj* __m_main_timespec_New_li_ObjectNew(BBClass * clas,BBLONG bbt_tv_sec,BBINT bbt_tv_nsec) {
	struct _m_main_timespec_obj* o = (struct _m_main_timespec_obj*)bbObjectAtomicNewNC(clas);
	__m_main_timespec_New_li(o, bbt_tv_sec, bbt_tv_nsec);
	return o;
}
void __m_main_timespec_New(struct _m_main_timespec_obj* o) {
	bbObjectCtor((BBOBJECT)o);
	o->clas = &_m_main_timespec;
	o->__m_main_timespec_tv_sec = 0LL;
	o->__m_main_timespec_tv_nsec = 0;
}
struct BBDebugScope_4 _m_main_timespec_scope ={
	BBDEBUGSCOPE_USERTYPE,
	"timespec",
	{
		{
			BBDEBUGDECL_FIELD,
			"tv_sec",
			"l",
			.field_offset=offsetof(struct _m_main_timespec_obj,__m_main_timespec_tv_sec)
		},
		{
			BBDEBUGDECL_FIELD,
			"tv_nsec",
			"i",
			.field_offset=offsetof(struct _m_main_timespec_obj,__m_main_timespec_tv_nsec)
		},
		{
			BBDEBUGDECL_TYPEMETHOD,
			"New",
			"()",
			.func_ptr=(BBFuncPtr)&__m_main_timespec_New
		},
		{
			BBDEBUGDECL_TYPEFUNCTION,
			"New",
			"(l,i):timespec",
			.func_ptr=(BBFuncPtr)&__m_main_timespec_New_li
		},
		{
			BBDEBUGDECL_END
		}
	}
};
struct BBClass__m_main_timespec _m_main_timespec={
	&bbObjectClass,
	bbObjectFree,
	(BBDebugScope*)&_m_main_timespec_scope,
	sizeof(struct _m_main_timespec_obj),
	(void (*)(BBOBJECT))__m_main_timespec_New,
	bbObjectDtor,
	bbObjectToString,
	bbObjectCompare,
	bbObjectSendMessage,
	0,
	0,
	offsetof(struct _m_main_timespec_obj,__m_main_timespec_tv_nsec) - offsetof(struct _m_main_timespec_obj,__m_main_timespec_tv_sec) + sizeof(BBINT)
	,0
	,offsetof(struct _m_main_timespec_obj,__m_main_timespec_tv_sec)
};

struct _m_main_timespec_obj* _m_main_time=(struct _m_main_timespec_obj*)((struct _m_main_timespec_obj*)&bbNullObject);
BBULONG _m_main_st=0ULL;
BBULONG _m_main_et=0ULL;
BBULONG _m_main_Cycles=0ULL;
BBUINT _m_main_i=100000U;
BBDOUBLE _m_main_elapsedTime=0;
static int _bb_main_inited = 0;
int _bb_main(){
	if (!_bb_main_inited) {
		_bb_main_inited = 1;
		GC_add_roots(&_m_main_frequency, &_m_main_elapsedTime + 1);
		__bb_brl_blitz_blitz();
		__bb_brl_appstub_appstub();
		__bb_brl_audio_audio();
		__bb_brl_bank_bank();
		__bb_brl_bankstream_bankstream();
		__bb_brl_base64_base64();
		__bb_brl_basic_basic();
		__bb_brl_bmploader_bmploader();
		__bb_brl_bytebuffer_bytebuffer();
		__bb_brl_clipboard_clipboard();
		__bb_brl_collections_collections();
		__bb_brl_d3d7max2d_d3d7max2d();
		__bb_brl_d3d9max2d_d3d9max2d();
		__bb_brl_directsoundaudio_directsoundaudio();
		__bb_brl_eventqueue_eventqueue();
		__bb_brl_freeaudioaudio_freeaudioaudio();
		__bb_brl_freetypefont_freetypefont();
		__bb_brl_glgraphics_glgraphics();
		__bb_brl_glmax2d_glmax2d();
		__bb_brl_gnet_gnet();
		__bb_brl_jpgloader_jpgloader();
		__bb_brl_map_map();
		__bb_brl_matrix_matrix();
		__bb_brl_maxlua_maxlua();
		__bb_brl_maxunit_maxunit();
		__bb_brl_maxutil_maxutil();
		__bb_brl_objectlist_objectlist();
		__bb_brl_oggloader_oggloader();
		__bb_brl_openalaudio_openalaudio();
		__bb_brl_platform_platform();
		__bb_brl_pngloader_pngloader();
		__bb_brl_polygon_polygon();
		__bb_brl_quaternion_quaternion();
		__bb_brl_retro_retro();
		__bb_brl_tgaloader_tgaloader();
		__bb_brl_threadpool_threadpool();
		__bb_brl_timer_timer();
		__bb_brl_timerdefault_timerdefault();
		__bb_brl_utf8stream_utf8stream();
		__bb_brl_uuid_uuid();
		__bb_brl_volumes_volumes();
		__bb_brl_wavloader_wavloader();
		__bb_pub_freejoy_freejoy();
		__bb_pub_freeprocess_freeprocess();
		__bb_pub_glad_glad();
		__bb_pub_nfd_nfd();
		__bb_pub_nx_nx();
		__bb_pub_opengles_opengles();
		__bb_pub_opengles3_opengles3();
		__bb_pub_vulkan_vulkan();
		__bb_pub_xmmintrin_xmmintrin();
		bbObjectRegisterType((BBCLASS)&_m_main_timespec);
		if(!((QueryPerformanceFrequency((LARGE_INTEGER*)(&_m_main_frequency))!=0) && (QueryPerformanceCounter((LARGE_INTEGER*)(&_m_main_counter))!=0))){
			ExitProcess(1U);
		}
		_m_main_time=(struct _m_main_timespec_obj*)__m_main_timespec_New_li_ObjectNew((struct _m_main_timespec_obj*)&_m_main_timespec,(_m_main_counter/_m_main_frequency),((BBINT)(((_m_main_counter % _m_main_frequency)*1000000000LL)/_m_main_frequency)));
		do{
			_m_main_st=rdtscpf();
			_m_main_et=(rdtscpf()-_m_main_st);
			_m_main_Cycles+=_m_main_et;
			_m_main_i=(_m_main_i-1U);
		}while(!(_m_main_i==0U));
		if(!(QueryPerformanceCounter((LARGE_INTEGER*)(&_m_main_counter))!=0)){
			ExitProcess(1U);
		}
		_m_main_elapsedTime=(((BBDOUBLE)((_m_main_counter/_m_main_frequency)-_m_main_time->__m_main_timespec_tv_sec ))+(((BBDOUBLE)(((BBINT)(((_m_main_counter % _m_main_frequency)*1000000000LL)/_m_main_frequency))-_m_main_time->__m_main_timespec_tv_nsec ))/1000000000.0));
		{
			BBOBJECT ex;
			bbExTry {
				case 0: {
					if(!(brl_filesystem_FileType((BBString*)&_s11)!=0)){
						bbExThrow((BBObject *)(struct brl_blitz_TBlitzException_obj*)bbObjectAtomicNew((BBClass *)&brl_blitz_TBlitzException));
					}
					BBLONG bbt_Size=brl_filesystem_FileSize((BBString*)&_s11);
					struct brl_stringbuilder_TStringBuilder_obj* bbt_sb=(struct brl_stringbuilder_TStringBuilder_obj*)(struct brl_stringbuilder_TStringBuilder_obj*)bbObjectNew((BBClass *)&brl_stringbuilder_TStringBuilder);
					brl_standardio_Print(bbStringConcat(((BBString*)&_s12),bbStringFromULong(_m_main_Cycles)));
					struct brl_stringbuilder_TStringBuilder_obj* bbt_;
					brl_standardio_Print(bbStringConcat(bbStringConcat(bbStringConcat(bbStringConcat(bbStringConcat(bbStringConcat(((BBString*)&_s13),bbStringFromULong(((BBULONG)_m_main_elapsedTime)/3600ULL)),((BBString*)&_s14)),bbStringFromULong((((BBULONG)_m_main_elapsedTime) % 3600ULL)/60ULL)),((BBString*)&_s15)),(bbt_ = (bbt_sb)->clas->m_Format_Sd((struct brl_stringbuilder_TStringBuilder_obj*)bbt_sb,((BBString*)&_s16),((((BBDOUBLE)(((BBULONG)_m_main_elapsedTime) % 60ULL))+_m_main_elapsedTime)+((BBDOUBLE)((BBULONG)_m_main_elapsedTime)))))->clas->ToString((struct brl_stringbuilder_TStringBuilder_obj*)bbt_)),((BBString*)&_s17)));
					bbt_sb=(struct brl_stringbuilder_TStringBuilder_obj*)(struct brl_stringbuilder_TStringBuilder_obj*)bbObjectNew((BBClass *)&brl_stringbuilder_TStringBuilder);
					struct brl_stringbuilder_TStringBuilder_obj* bbt_2;
					brl_standardio_Print(bbStringConcat(bbStringConcat(((BBString*)&_s18),(bbt_2 = (bbt_sb)->clas->m_Format_Sd((struct brl_stringbuilder_TStringBuilder_obj*)bbt_sb,((BBString*)&_s16),((((BBDOUBLE)_m_main_Cycles)/_m_main_elapsedTime)/1.0e9)))->clas->ToString((struct brl_stringbuilder_TStringBuilder_obj*)bbt_2)),((BBString*)&_s19)));
					if(((BBDOUBLE)bbt_Size)>=1.07374182e+09){
						bbt_sb=(struct brl_stringbuilder_TStringBuilder_obj*)(struct brl_stringbuilder_TStringBuilder_obj*)bbObjectNew((BBClass *)&brl_stringbuilder_TStringBuilder);
						struct brl_stringbuilder_TStringBuilder_obj* bbt_3;
						brl_standardio_Print(bbStringConcat(bbStringConcat(((BBString*)&_s20),(bbt_3 = (bbt_sb)->clas->m_Format_Sd((struct brl_stringbuilder_TStringBuilder_obj*)bbt_sb,((BBString*)&_s21),(((BBDOUBLE)bbt_Size)/1.07374182e+09)))->clas->ToString((struct brl_stringbuilder_TStringBuilder_obj*)bbt_3)),((BBString*)&_s22)));
					}else{
						if(((BBDOUBLE)bbt_Size)>=1048576.00){
							bbt_sb=(struct brl_stringbuilder_TStringBuilder_obj*)(struct brl_stringbuilder_TStringBuilder_obj*)bbObjectNew((BBClass *)&brl_stringbuilder_TStringBuilder);
							struct brl_stringbuilder_TStringBuilder_obj* bbt_4;
							brl_standardio_Print(bbStringConcat(bbStringConcat(((BBString*)&_s20),(bbt_4 = (bbt_sb)->clas->m_Format_Sd((struct brl_stringbuilder_TStringBuilder_obj*)bbt_sb,((BBString*)&_s21),(((BBDOUBLE)bbt_Size)/1048576.00)))->clas->ToString((struct brl_stringbuilder_TStringBuilder_obj*)bbt_4)),((BBString*)&_s23)));
						}else{
							if(((BBDOUBLE)bbt_Size)>=1024.0){
								bbt_sb=(struct brl_stringbuilder_TStringBuilder_obj*)(struct brl_stringbuilder_TStringBuilder_obj*)bbObjectNew((BBClass *)&brl_stringbuilder_TStringBuilder);
								struct brl_stringbuilder_TStringBuilder_obj* bbt_5;
								brl_standardio_Print(bbStringConcat(bbStringConcat(((BBString*)&_s20),(bbt_5 = (bbt_sb)->clas->m_Format_Sd((struct brl_stringbuilder_TStringBuilder_obj*)bbt_sb,((BBString*)&_s21),(((BBDOUBLE)bbt_Size)/1024.0)))->clas->ToString((struct brl_stringbuilder_TStringBuilder_obj*)bbt_5)),((BBString*)&_s24)));
							}else{
								brl_standardio_Print(bbStringConcat(bbStringConcat(((BBString*)&_s20),bbStringFromLong(bbt_Size)),((BBString*)&_s25)));
							}
						}
					}
					ExitProcess(0U);
					bbExLeave();
				}
				break;
				case 1: {
					ex = bbExCatch();
					if (bbObjectDowncast((BBOBJECT)ex,(BBClass*)&brl_blitz_TBlitzException) != &bbNullObject) {
						struct brl_blitz_TBlitzException_obj* bbt_e=(struct brl_blitz_TBlitzException_obj*)ex;
						ExitProcess(1U);
					} else {
						goto _rethrow;
					}
					goto _endtry;
				}
				break;
				_rethrow:;
				bbExThrow(ex);
			}
		}
		_endtry:;
		return 0;
	}
	return 0;
}