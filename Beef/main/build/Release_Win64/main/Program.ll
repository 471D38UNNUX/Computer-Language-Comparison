; ModuleID = 'Program'
source_filename = "Program"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"main.timespec@bf" = type <{ %"corlib.ValueType@System@bf", i64, i64 }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf" = type <{ %"corlib.Enum@System@bf", %"corlib.?$__TUPLE_err@W4FileOpenError@IO@System@bf@@@bf", i8 }>
%"corlib.Enum@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.?$__TUPLE_err@W4FileOpenError@IO@System@bf@@@bf" = type <{ %"corlib.Tuple@System@bf", i8 }>
%"corlib.Tuple@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.?$Result@X@System@bf" = type <{ %"corlib.Enum@System@bf", [0 x i8], i8 }>
%"corlib.?$Box@VUInt64@System@bf" = type <{ %"corlib.Object@System@bf", i64 }>
%"corlib.?$Box@VDouble@System@bf" = type <{ %"corlib.Object@System@bf", double }>
%"corlib.?$Box@VInt@System@bf" = type <{ %"corlib.Object@System@bf", i64 }>
%"corlib.?$Array1@PEAVObject@System@bf@@@System@bf" = type <{ %"corlib.Array@System@bf", [4 x i8], ptr }>
%"corlib.Array@System@bf" = type <{ %"corlib.Object@System@bf", i32 }>

@didStaticInit = internal global i1 false
@"bf_hs_preserve@rdtscpf__imp" = global ptr null
@"?sBfClassVData@FileStream@IO@System@bf@@2UClassVData@34@A" = external constant [24 x ptr]
@"?sBfClassVData@String@System@bf@@2UClassVData@23@A" = external constant [8 x ptr]
@__bfStrObj51 = external constant %"corlib.String@System@bf"
@__bfStrData51 = external constant [9 x i8]
@__bfStrObj52 = external constant %"corlib.String@System@bf"
@__bfStrData52 = external constant [16 x i8]
@"?sBfClassVData@?$Array1@PEAVObject@System@bf@@@System@bf@@2UClassVData@23@A" = external constant [4 x ptr]
@"?sBfClassVData@?$Box@VUInt64@System@bf@@@@2UClassVData@System@bf@@A" = external constant [9 x ptr]
@__bfStrObj53 = external constant %"corlib.String@System@bf"
@__bfStrData53 = external constant [46 x i8]
@"?sBfClassVData@?$Box@VDouble@System@bf@@@@2UClassVData@System@bf@@A" = external constant [9 x ptr]
@__bfStrObj54 = external constant %"corlib.String@System@bf"
@__bfStrData54 = external constant [32 x i8]
@__bfStrObj55 = external constant %"corlib.String@System@bf"
@__bfStrData55 = external constant [20 x i8]
@__bfStrObj56 = external constant %"corlib.String@System@bf"
@__bfStrData56 = external constant [20 x i8]
@__bfStrObj57 = external constant %"corlib.String@System@bf"
@__bfStrData57 = external constant [20 x i8]
@__bfStrObj58 = external constant %"corlib.String@System@bf"
@__bfStrData58 = external constant [20 x i8]
@"?sBfClassVData@?$Box@VInt@System@bf@@@@2UClassVData@System@bf@@A" = external constant [9 x ptr]

; Function Attrs: nounwind uwtable
declare i1 @QueryPerformanceFrequency(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @QueryPerformanceCounter(ptr) #0

; Function Attrs: nounwind uwtable
declare void @ExitProcess(i64) #0

; Function Attrs: nounwind uwtable
define void @"?Main@Program@bf@@SAXXZ"() #0 {
entry:
  %frequency = alloca i64, align 8
  %counter = alloca i64, align 8
  %Size = alloca i64, align 8
  %0 = alloca %"main.timespec@bf", align 8
  %time = alloca %"main.timespec@bf", align 8
  %st = alloca i64, align 8
  %et = alloca i64, align 8
  %Cycles = alloca i64, align 8
  %i = alloca i64, align 8
  %elapsedTime = alloca double, align 8
  %fp = alloca ptr, align 8
  %1 = alloca %"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf", align 1
  %2 = alloca %"corlib.?$Result@X@System@bf", align 1
  %3 = alloca i8, i64 24, align 8
  %boxed.UInt64 = alloca %"corlib.?$Box@VUInt64@System@bf", align 8
  %4 = alloca i8, i64 40, align 8
  %boxed.UInt648 = alloca %"corlib.?$Box@VUInt64@System@bf", align 8
  %boxed.UInt649 = alloca %"corlib.?$Box@VUInt64@System@bf", align 8
  %boxed.Double = alloca %"corlib.?$Box@VDouble@System@bf", align 8
  %5 = alloca i8, i64 24, align 8
  %boxed.Double10 = alloca %"corlib.?$Box@VDouble@System@bf", align 8
  %blockExpr = alloca double, align 8
  %6 = alloca i8, i64 24, align 8
  %boxed.Double13 = alloca %"corlib.?$Box@VDouble@System@bf", align 8
  %blockExpr15 = alloca double, align 8
  %7 = alloca i8, i64 24, align 8
  %boxed.Double16 = alloca %"corlib.?$Box@VDouble@System@bf", align 8
  %blockExpr19 = alloca double, align 8
  %8 = alloca i8, i64 24, align 8
  %boxed.Double20 = alloca %"corlib.?$Box@VDouble@System@bf", align 8
  %9 = alloca i8, i64 24, align 8
  %boxed.Int = alloca %"corlib.?$Box@VInt@System@bf", align 8
  store i64 0, ptr %frequency, align 8
  store i64 0, ptr %counter, align 8
  store i64 0, ptr %Size, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %QueryPerformanceFrequency = call i1 @QueryPerformanceFrequency(ptr %frequency)
  br i1 %QueryPerformanceFrequency, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %newScope
  %QueryPerformanceCounter = call i1 @QueryPerformanceCounter(ptr %counter)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %newScope
  %10 = phi i1 [ false, %newScope ], [ %QueryPerformanceCounter, %land.rhs ]
  %11 = xor i1 %10, true
  br i1 %11, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  call void @ExitProcess(i64 1)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.end
  br label %initStart

initStart:                                        ; preds = %if.end
  %12 = getelementptr inbounds %"main.timespec@bf", ptr %0, i32 0, i32 1
  %13 = load i64, ptr %counter, align 8
  %14 = load i64, ptr %frequency, align 8
  %15 = sdiv i64 %13, %14
  store i64 %15, ptr %12, align 8
  %16 = getelementptr inbounds %"main.timespec@bf", ptr %0, i32 0, i32 2
  %17 = load i64, ptr %counter, align 8
  %18 = load i64, ptr %frequency, align 8
  %19 = srem i64 %17, %18
  %20 = mul i64 %19, 1000000000
  %21 = load i64, ptr %frequency, align 8
  %22 = sdiv i64 %20, %21
  store i64 %22, ptr %16, align 8
  %23 = load %"main.timespec@bf", ptr %0, align 8
  store %"main.timespec@bf" %23, ptr %time, align 8
  store i64 0, ptr %st, align 8
  store i64 0, ptr %et, align 8
  store i64 0, ptr %Cycles, align 8
  br label %for.start

for.start:                                        ; preds = %initStart
  store i64 100000, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %for.start
  %24 = load i64, ptr %i, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = load ptr, ptr @"bf_hs_preserve@rdtscpf__imp", align 8
  %rdtscpf = call i64 %26()
  store i64 %rdtscpf, ptr %st, align 8
  %27 = load ptr, ptr @"bf_hs_preserve@rdtscpf__imp", align 8
  %rdtscpf1 = call i64 %27()
  %28 = load i64, ptr %st, align 8
  %29 = sub i64 %rdtscpf1, %28
  store i64 %29, ptr %et, align 8
  %30 = load i64, ptr %et, align 8
  %31 = load i64, ptr %Cycles, align 8
  %32 = add i64 %31, %30
  store i64 %32, ptr %Cycles, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %33 = load i64, ptr %i, align 8
  %34 = sub i64 %33, 1
  store i64 %34, ptr %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %QueryPerformanceCounter2 = call i1 @QueryPerformanceCounter(ptr %counter)
  %35 = xor i1 %QueryPerformanceCounter2, true
  br i1 %35, label %if.then3, label %if.end4

if.then3:                                         ; preds = %for.end
  call void @ExitProcess(i64 1)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %for.end
  %36 = load i64, ptr %counter, align 8
  %37 = load i64, ptr %frequency, align 8
  %38 = sdiv i64 %36, %37
  %39 = getelementptr inbounds %"main.timespec@bf", ptr %time, i32 0, i32 1
  %40 = load i64, ptr %39, align 8
  %41 = sitofp i64 %38 to double
  %42 = sitofp i64 %40 to double
  %43 = fsub double %41, %42
  %44 = load i64, ptr %counter, align 8
  %45 = load i64, ptr %frequency, align 8
  %46 = srem i64 %44, %45
  %47 = mul i64 %46, 1000000000
  %48 = load i64, ptr %frequency, align 8
  %49 = sdiv i64 %47, %48
  %50 = getelementptr inbounds %"main.timespec@bf", ptr %time, i32 0, i32 2
  %51 = load i64, ptr %50, align 8
  %52 = sub i64 %49, %51
  %53 = sitofp i64 %52 to double
  %54 = fdiv double %53, 1.000000e+09
  %55 = fadd double %43, %54
  store double %55, ptr %elapsedTime, align 8
  %56 = call ptr @tc_malloc(i64 97)
  %57 = getelementptr inbounds %"corlib.Object@System@bf", ptr %56, i32 0, i32 0
  store ptr @"?sBfClassVData@FileStream@IO@System@bf@@2UClassVData@34@A", ptr %57, align 8
  call void @"?__BfCtorClear@FileStream@IO@System@bf@@AEAAXXZ"(ptr %56)
  call void @"?__BfCtor@FileStream@IO@System@bf@@QEAAXXZ"(ptr %56)
  store ptr %56, ptr %fp, align 8
  br label %newScope5

newScope5:                                        ; preds = %if.end4
  %58 = load ptr, ptr %fp, align 8
  call void @"?Open@BufferedFileStream@IO@System@bf@@QEAA?AU?$Result@X?AW4FileOpenError@IO@System@bf@@@34@UStringView@34@W4FileAccess@234@W4FileShare@234@Tint@@W4FileOptions@234@PEAUSecurityAttributes@234@@Z"(ptr %58, ptr sret(%"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf") %1, ptr @__bfStrData51, i64 8, i8 1, i32 0, i64 4096, i32 0, ptr null)
  %59 = getelementptr inbounds %"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf", ptr %1, i32 0, i32 2
  %60 = load i8, ptr %59, align 1
  %61 = getelementptr inbounds %"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf", ptr %1, i32 0, i32 2
  %62 = load i8, ptr %61, align 1
  %63 = icmp eq i8 %62, 1
  br i1 %63, label %if.then6, label %if.end7

if.then6:                                         ; preds = %newScope5
  call void @ExitProcess(i64 1)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %newScope5
  %64 = load ptr, ptr %fp, align 8
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds ptr, ptr %65, i32 8
  %67 = load ptr, ptr %66, align 8
  %get__Length = call i64 %67(ptr %64)
  store i64 %get__Length, ptr %Size, align 8
  %68 = load ptr, ptr %fp, align 8
  %69 = load ptr, ptr %68, align 8
  %70 = getelementptr inbounds ptr, ptr %69, i32 15
  %71 = load ptr, ptr %70, align 8
  call void %71(ptr %68, ptr sret(%"corlib.?$Result@X@System@bf") %2)
  call void @"?ReturnValueDiscarded__im@?$Result@X@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(1) %2)
  %72 = getelementptr inbounds %"corlib.?$Array1@PEAVObject@System@bf@@@System@bf", ptr %3, i32 0, i32 0
  store ptr @"?sBfClassVData@?$Array1@PEAVObject@System@bf@@@System@bf@@2UClassVData@23@A", ptr %72, align 8
  call void @"?__BfCtor@?$Array1@PEAVObject@System@bf@@@System@bf@@QEAAXXZ"(ptr %3)
  %73 = getelementptr inbounds %"corlib.Array@System@bf", ptr %3, i32 0, i32 1
  store i32 1, ptr %73, align 4
  %74 = getelementptr inbounds %"corlib.?$Box@VUInt64@System@bf", ptr %boxed.UInt64, i32 0, i32 0
  store ptr @"?sBfClassVData@?$Box@VUInt64@System@bf@@@@2UClassVData@System@bf@@A", ptr %74, align 8
  %75 = load i64, ptr %Cycles, align 8
  %76 = getelementptr inbounds %"corlib.?$Box@VUInt64@System@bf", ptr %boxed.UInt64, i32 0, i32 1
  store volatile i64 %75, ptr %76, align 8
  %77 = getelementptr inbounds %"corlib.?$Array1@PEAVObject@System@bf@@@System@bf", ptr %3, i32 0, i32 2
  %78 = getelementptr inbounds ptr, ptr %77, i32 0
  store ptr %boxed.UInt64, ptr %78, align 8
  call void @"?WriteLine@Console@System@bf@@SAXUStringView@23@Tparams@@PEAV?$Array1@PEAVObject@System@bf@@@23@@Z"(ptr @__bfStrData52, i64 15, ptr %3)
  %79 = load double, ptr %elapsedTime, align 8
  %80 = fptoui double %79 to i64
  %81 = udiv i64 %80, 3600
  %82 = load double, ptr %elapsedTime, align 8
  %83 = fptoui double %82 to i64
  %84 = urem i64 %83, 3600
  %85 = udiv i64 %84, 60
  %86 = load double, ptr %elapsedTime, align 8
  %87 = fptoui double %86 to i64
  %88 = urem i64 %87, 60
  %89 = uitofp i64 %88 to double
  %90 = load double, ptr %elapsedTime, align 8
  %91 = fadd double %89, %90
  %92 = load double, ptr %elapsedTime, align 8
  %93 = fptoui double %92 to i64
  %94 = uitofp i64 %93 to double
  %95 = fsub double %91, %94
  %96 = getelementptr inbounds %"corlib.?$Array1@PEAVObject@System@bf@@@System@bf", ptr %4, i32 0, i32 0
  store ptr @"?sBfClassVData@?$Array1@PEAVObject@System@bf@@@System@bf@@2UClassVData@23@A", ptr %96, align 8
  call void @"?__BfCtor@?$Array1@PEAVObject@System@bf@@@System@bf@@QEAAXXZ"(ptr %4)
  %97 = getelementptr inbounds %"corlib.Array@System@bf", ptr %4, i32 0, i32 1
  store i32 3, ptr %97, align 4
  %98 = getelementptr inbounds %"corlib.?$Box@VUInt64@System@bf", ptr %boxed.UInt648, i32 0, i32 0
  store ptr @"?sBfClassVData@?$Box@VUInt64@System@bf@@@@2UClassVData@System@bf@@A", ptr %98, align 8
  %99 = getelementptr inbounds %"corlib.?$Box@VUInt64@System@bf", ptr %boxed.UInt648, i32 0, i32 1
  store volatile i64 %81, ptr %99, align 8
  %100 = getelementptr inbounds %"corlib.?$Array1@PEAVObject@System@bf@@@System@bf", ptr %4, i32 0, i32 2
  %101 = getelementptr inbounds ptr, ptr %100, i32 0
  store ptr %boxed.UInt648, ptr %101, align 8
  %102 = getelementptr inbounds %"corlib.?$Box@VUInt64@System@bf", ptr %boxed.UInt649, i32 0, i32 0
  store ptr @"?sBfClassVData@?$Box@VUInt64@System@bf@@@@2UClassVData@System@bf@@A", ptr %102, align 8
  %103 = getelementptr inbounds %"corlib.?$Box@VUInt64@System@bf", ptr %boxed.UInt649, i32 0, i32 1
  store volatile i64 %85, ptr %103, align 8
  %104 = getelementptr inbounds %"corlib.?$Array1@PEAVObject@System@bf@@@System@bf", ptr %4, i32 0, i32 2
  %105 = getelementptr inbounds ptr, ptr %104, i32 1
  store ptr %boxed.UInt649, ptr %105, align 8
  %106 = getelementptr inbounds %"corlib.?$Box@VDouble@System@bf", ptr %boxed.Double, i32 0, i32 0
  store ptr @"?sBfClassVData@?$Box@VDouble@System@bf@@@@2UClassVData@System@bf@@A", ptr %106, align 8
  %107 = getelementptr inbounds %"corlib.?$Box@VDouble@System@bf", ptr %boxed.Double, i32 0, i32 1
  store volatile double %95, ptr %107, align 8
  %108 = getelementptr inbounds %"corlib.?$Array1@PEAVObject@System@bf@@@System@bf", ptr %4, i32 0, i32 2
  %109 = getelementptr inbounds ptr, ptr %108, i32 2
  store ptr %boxed.Double, ptr %109, align 8
  call void @"?WriteLine@Console@System@bf@@SAXUStringView@23@Tparams@@PEAV?$Array1@PEAVObject@System@bf@@@23@@Z"(ptr @__bfStrData53, i64 45, ptr %4)
  %110 = load i64, ptr %Cycles, align 8
  %111 = uitofp i64 %110 to double
  %112 = load double, ptr %elapsedTime, align 8
  %113 = fdiv double %111, %112
  %114 = fdiv double %113, 1.000000e+09
  %115 = getelementptr inbounds %"corlib.?$Array1@PEAVObject@System@bf@@@System@bf", ptr %5, i32 0, i32 0
  store ptr @"?sBfClassVData@?$Array1@PEAVObject@System@bf@@@System@bf@@2UClassVData@23@A", ptr %115, align 8
  call void @"?__BfCtor@?$Array1@PEAVObject@System@bf@@@System@bf@@QEAAXXZ"(ptr %5)
  %116 = getelementptr inbounds %"corlib.Array@System@bf", ptr %5, i32 0, i32 1
  store i32 1, ptr %116, align 4
  %117 = getelementptr inbounds %"corlib.?$Box@VDouble@System@bf", ptr %boxed.Double10, i32 0, i32 0
  store ptr @"?sBfClassVData@?$Box@VDouble@System@bf@@@@2UClassVData@System@bf@@A", ptr %117, align 8
  %118 = getelementptr inbounds %"corlib.?$Box@VDouble@System@bf", ptr %boxed.Double10, i32 0, i32 1
  store volatile double %114, ptr %118, align 8
  %119 = getelementptr inbounds %"corlib.?$Array1@PEAVObject@System@bf@@@System@bf", ptr %5, i32 0, i32 2
  %120 = getelementptr inbounds ptr, ptr %119, i32 0
  store ptr %boxed.Double10, ptr %120, align 8
  call void @"?WriteLine@Console@System@bf@@SAXUStringView@23@Tparams@@PEAV?$Array1@PEAVObject@System@bf@@@23@@Z"(ptr @__bfStrData54, i64 31, ptr %5)
  br label %newScope11

newScope11:                                       ; preds = %if.end7
  %121 = load i64, ptr %Size, align 8
  %122 = sitofp i64 %121 to double
  %123 = fcmp oge double %122, 0x41D0000000000000
  br i1 %123, label %if.then12, label %if.else

if.then12:                                        ; preds = %newScope11
  call void @llvm.lifetime.start.p0(i64 -1, ptr %blockExpr)
  %124 = load i64, ptr %Size, align 8
  %125 = sitofp i64 %124 to double
  %126 = fdiv double %125, 0x41D0000000000000
  store double %126, ptr %blockExpr, align 8
  %127 = getelementptr inbounds %"corlib.?$Array1@PEAVObject@System@bf@@@System@bf", ptr %6, i32 0, i32 0
  store ptr @"?sBfClassVData@?$Array1@PEAVObject@System@bf@@@System@bf@@2UClassVData@23@A", ptr %127, align 8
  call void @"?__BfCtor@?$Array1@PEAVObject@System@bf@@@System@bf@@QEAAXXZ"(ptr %6)
  %128 = getelementptr inbounds %"corlib.Array@System@bf", ptr %6, i32 0, i32 1
  store i32 1, ptr %128, align 4
  %129 = getelementptr inbounds %"corlib.?$Box@VDouble@System@bf", ptr %boxed.Double13, i32 0, i32 0
  store ptr @"?sBfClassVData@?$Box@VDouble@System@bf@@@@2UClassVData@System@bf@@A", ptr %129, align 8
  %130 = load double, ptr %blockExpr, align 8
  %131 = getelementptr inbounds %"corlib.?$Box@VDouble@System@bf", ptr %boxed.Double13, i32 0, i32 1
  store volatile double %130, ptr %131, align 8
  %132 = getelementptr inbounds %"corlib.?$Array1@PEAVObject@System@bf@@@System@bf", ptr %6, i32 0, i32 2
  %133 = getelementptr inbounds ptr, ptr %132, i32 0
  store ptr %boxed.Double13, ptr %133, align 8
  call void @"?WriteLine@Console@System@bf@@SAXUStringView@23@Tparams@@PEAV?$Array1@PEAVObject@System@bf@@@23@@Z"(ptr @__bfStrData55, i64 19, ptr %6)
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr %boxed.Double13)
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr %6)
  br label %if.end24

if.else:                                          ; preds = %newScope11
  %134 = load i64, ptr %Size, align 8
  %135 = sitofp i64 %134 to double
  %136 = fcmp oge double %135, 0x4130000000000000
  br i1 %136, label %if.then14, label %if.else17

if.then14:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 -1, ptr %blockExpr15)
  %137 = load i64, ptr %Size, align 8
  %138 = sitofp i64 %137 to double
  %139 = fdiv double %138, 0x4130000000000000
  store double %139, ptr %blockExpr15, align 8
  %140 = getelementptr inbounds %"corlib.?$Array1@PEAVObject@System@bf@@@System@bf", ptr %7, i32 0, i32 0
  store ptr @"?sBfClassVData@?$Array1@PEAVObject@System@bf@@@System@bf@@2UClassVData@23@A", ptr %140, align 8
  call void @"?__BfCtor@?$Array1@PEAVObject@System@bf@@@System@bf@@QEAAXXZ"(ptr %7)
  %141 = getelementptr inbounds %"corlib.Array@System@bf", ptr %7, i32 0, i32 1
  store i32 1, ptr %141, align 4
  %142 = getelementptr inbounds %"corlib.?$Box@VDouble@System@bf", ptr %boxed.Double16, i32 0, i32 0
  store ptr @"?sBfClassVData@?$Box@VDouble@System@bf@@@@2UClassVData@System@bf@@A", ptr %142, align 8
  %143 = load double, ptr %blockExpr15, align 8
  %144 = getelementptr inbounds %"corlib.?$Box@VDouble@System@bf", ptr %boxed.Double16, i32 0, i32 1
  store volatile double %143, ptr %144, align 8
  %145 = getelementptr inbounds %"corlib.?$Array1@PEAVObject@System@bf@@@System@bf", ptr %7, i32 0, i32 2
  %146 = getelementptr inbounds ptr, ptr %145, i32 0
  store ptr %boxed.Double16, ptr %146, align 8
  call void @"?WriteLine@Console@System@bf@@SAXUStringView@23@Tparams@@PEAV?$Array1@PEAVObject@System@bf@@@23@@Z"(ptr @__bfStrData56, i64 19, ptr %7)
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr %boxed.Double16)
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr %7)
  br label %if.end23

if.else17:                                        ; preds = %if.else
  %147 = load i64, ptr %Size, align 8
  %148 = sitofp i64 %147 to double
  %149 = fcmp oge double %148, 1.024000e+03
  br i1 %149, label %if.then18, label %if.else21

if.then18:                                        ; preds = %if.else17
  call void @llvm.lifetime.start.p0(i64 -1, ptr %blockExpr19)
  %150 = load i64, ptr %Size, align 8
  %151 = sitofp i64 %150 to double
  %152 = fdiv double %151, 1.024000e+03
  store double %152, ptr %blockExpr19, align 8
  %153 = getelementptr inbounds %"corlib.?$Array1@PEAVObject@System@bf@@@System@bf", ptr %8, i32 0, i32 0
  store ptr @"?sBfClassVData@?$Array1@PEAVObject@System@bf@@@System@bf@@2UClassVData@23@A", ptr %153, align 8
  call void @"?__BfCtor@?$Array1@PEAVObject@System@bf@@@System@bf@@QEAAXXZ"(ptr %8)
  %154 = getelementptr inbounds %"corlib.Array@System@bf", ptr %8, i32 0, i32 1
  store i32 1, ptr %154, align 4
  %155 = getelementptr inbounds %"corlib.?$Box@VDouble@System@bf", ptr %boxed.Double20, i32 0, i32 0
  store ptr @"?sBfClassVData@?$Box@VDouble@System@bf@@@@2UClassVData@System@bf@@A", ptr %155, align 8
  %156 = load double, ptr %blockExpr19, align 8
  %157 = getelementptr inbounds %"corlib.?$Box@VDouble@System@bf", ptr %boxed.Double20, i32 0, i32 1
  store volatile double %156, ptr %157, align 8
  %158 = getelementptr inbounds %"corlib.?$Array1@PEAVObject@System@bf@@@System@bf", ptr %8, i32 0, i32 2
  %159 = getelementptr inbounds ptr, ptr %158, i32 0
  store ptr %boxed.Double20, ptr %159, align 8
  call void @"?WriteLine@Console@System@bf@@SAXUStringView@23@Tparams@@PEAV?$Array1@PEAVObject@System@bf@@@23@@Z"(ptr @__bfStrData57, i64 19, ptr %8)
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr %boxed.Double20)
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr %8)
  br label %if.end22

if.else21:                                        ; preds = %if.else17
  %160 = getelementptr inbounds %"corlib.?$Array1@PEAVObject@System@bf@@@System@bf", ptr %9, i32 0, i32 0
  store ptr @"?sBfClassVData@?$Array1@PEAVObject@System@bf@@@System@bf@@2UClassVData@23@A", ptr %160, align 8
  call void @"?__BfCtor@?$Array1@PEAVObject@System@bf@@@System@bf@@QEAAXXZ"(ptr %9)
  %161 = getelementptr inbounds %"corlib.Array@System@bf", ptr %9, i32 0, i32 1
  store i32 1, ptr %161, align 4
  %162 = getelementptr inbounds %"corlib.?$Box@VInt@System@bf", ptr %boxed.Int, i32 0, i32 0
  store ptr @"?sBfClassVData@?$Box@VInt@System@bf@@@@2UClassVData@System@bf@@A", ptr %162, align 8
  %163 = load i64, ptr %Size, align 8
  %164 = getelementptr inbounds %"corlib.?$Box@VInt@System@bf", ptr %boxed.Int, i32 0, i32 1
  store volatile i64 %163, ptr %164, align 8
  %165 = getelementptr inbounds %"corlib.?$Array1@PEAVObject@System@bf@@@System@bf", ptr %9, i32 0, i32 2
  %166 = getelementptr inbounds ptr, ptr %165, i32 0
  store ptr %boxed.Int, ptr %166, align 8
  call void @"?WriteLine@Console@System@bf@@SAXUStringView@23@Tparams@@PEAV?$Array1@PEAVObject@System@bf@@@23@@Z"(ptr @__bfStrData58, i64 19, ptr %9)
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr %boxed.Int)
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr %9)
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %if.then18
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then14
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then12
  call void @ExitProcess(i64 0)
  br label %deferredCalls

deferredCalls:                                    ; preds = %if.end24
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr %boxed.Double10)
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr %5)
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr %boxed.Double)
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr %boxed.UInt649)
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr %boxed.UInt648)
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr %4)
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr %boxed.UInt64)
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr %3)
  br label %exit

exit:                                             ; preds = %deferredCalls
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfStaticCtor@Program@bf@@SAXXZ"() #0 {
entry:
  %0 = load i1, ptr @didStaticInit, align 1
  br i1 %0, label %exit, label %init1

init1:                                            ; preds = %entry
  store i1 true, ptr @didStaticInit, align 1
  br label %exit

exit:                                             ; preds = %init1, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@FileStream@IO@System@bf@@QEAAXXZ"(ptr) #0

declare ptr @tc_malloc(i64)

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@FileStream@IO@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Open@BufferedFileStream@IO@System@bf@@QEAA?AU?$Result@X?AW4FileOpenError@IO@System@bf@@@34@UStringView@34@W4FileAccess@234@W4FileShare@234@Tint@@W4FileOptions@234@PEAUSecurityAttributes@234@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf"), ptr, i64, i8, i32, i64, i32, ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?get__Length@Stream@IO@System@bf@@UEAA_JXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Close@BufferedFileStream@IO@System@bf@@QEAA?AU?$Result@X@34@XZ"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?Close@Stream@IO@System@bf@@UEAA?AU?$Result@X@34@XZ"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?ReturnValueDiscarded__im@?$Result@X@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(1)) #0

; Function Attrs: nounwind uwtable
declare void @"?WriteLine@Console@System@bf@@SAXUStringView@23@Tparams@@PEAV?$Array1@PEAVObject@System@bf@@@23@@Z"(ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?~this@Object@System@bf@@UEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@?$Array1@PEAVObject@System@bf@@@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nounwind uwtable }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
