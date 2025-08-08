#include <processthreadsapi.h>
#include <profileapi.h>
#include <quickjs.h>
static JSValue  _QueryPerformanceFrequency(JSContext *ctx, JSValueConst this_val, int argc, JSValueConst *argv)
{
    if          (argc != 1) 
    {
        JS_ThrowTypeError(ctx, "Arguments didn't match in function call");
        ExitProcess(1);
    }
    size_t      size;
    void        *ptr = JS_GetArrayBuffer(ctx, &size, argv[0]);
    if          (size < sizeof(LARGE_INTEGER))
    {
        JS_ThrowTypeError(ctx, "Must be at least 8 bytes");
        ExitProcess(1);
    }
    return      JS_NewBool(ctx, QueryPerformanceFrequency((LARGE_INTEGER *)ptr));
}
static JSValue  _QueryPerformanceCounter(JSContext *ctx, JSValueConst this_val, int argc, JSValueConst *argv)
{
    if          (argc != 1) 
    {
        JS_ThrowTypeError(ctx, "Arguments didn't match in function call");
        ExitProcess(1);
    }
    size_t      size;
    void        *ptr = JS_GetArrayBuffer(ctx, &size, argv[0]);
    if          (size < sizeof(LARGE_INTEGER))
    {
        JS_ThrowTypeError(ctx, "Must be at least 8 bytes");
        ExitProcess(1);
    }
    return      JS_NewBool(ctx, QueryPerformanceCounter((LARGE_INTEGER *)ptr));
}
static JSValue  _ExitProcess(JSContext *ctx, JSValueConst this_val, int argc, JSValueConst *argv)
{
    if          (argc != 1) 
    {
        JS_ThrowTypeError(ctx, "Arguments didn't match in function call");
        ExitProcess(1);
    }
    uint32_t    a;
    if          (JS_ToInt32(ctx, (int32_t*)&a, argv[0]))
    {
        JS_ThrowTypeError(ctx, "Invalid argument: expected an integer");
        ExitProcess(1);
    }
    ExitProcess(a);
}
static JSValue  rdtscpf(JSContext *ctx, JSValueConst this_val, int argc, JSValueConst *argv)
{
    if              (argc) 
    {
        JS_ThrowTypeError(ctx, "Arguments didn't match in function call");
        ExitProcess(1);
    }
    uint32_t        input;
    __builtin_ia32_lfence();
    uint64_t output = __builtin_ia32_rdtscp(&input);
    __builtin_ia32_lfence();
    return          JS_NewBigUint64(ctx, output);
}
static int js_module_init(JSContext *ctx, JSModuleDef *m)
{
    JS_SetModuleExport(ctx, m, "QueryPerformanceFrequency", JS_NewCFunction2(ctx, _QueryPerformanceFrequency, "QueryPerformanceFrequency", 1, JS_CFUNC_generic, 0));
    JS_SetModuleExport(ctx, m, "QueryPerformanceCounter", JS_NewCFunction2(ctx, _QueryPerformanceCounter, "QueryPerformanceCounter", 1, JS_CFUNC_generic, 0));
    return  0;
}

JSModuleDef *js_init_module(JSContext *ctx, char *name)
{
    JSModuleDef *m = JS_NewCModule(ctx, name, js_module_init);
    JS_AddModuleExport(ctx, m, "QueryPerformanceFrequency");
    JS_AddModuleExport(ctx, m, "QueryPerformanceCounter");
    return m;
}
