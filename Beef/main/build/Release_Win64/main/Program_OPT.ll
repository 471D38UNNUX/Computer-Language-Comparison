; ModuleID = 'Program'
source_filename = "Program"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf" = type <{ %"corlib.Enum@System@bf", %"corlib.?$__TUPLE_err@W4FileOpenError@IO@System@bf@@@bf", i8 }>
%"corlib.Enum@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$__TUPLE_err@W4FileOpenError@IO@System@bf@@@bf" = type <{ %"corlib.Tuple@System@bf", i8 }>
%"corlib.Tuple@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.?$Result@X@System@bf" = type <{ %"corlib.Enum@System@bf", [0 x i8], i8 }>
%"corlib.?$Box@VUInt64@System@bf" = type <{ %"corlib.Object@System@bf", i64 }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.?$Box@VDouble@System@bf" = type <{ %"corlib.Object@System@bf", double }>
%"corlib.?$Box@VInt@System@bf" = type <{ %"corlib.Object@System@bf", i64 }>
%"corlib.Array@System@bf" = type <{ %"corlib.Object@System@bf", i32 }>
%"corlib.?$Array1@PEAVObject@System@bf@@@System@bf" = type <{ %"corlib.Array@System@bf", [4 x i8], ptr }>

@didStaticInit = internal unnamed_addr global i1 false
@"bf_hs_preserve@rdtscpf__imp" = local_unnamed_addr global ptr null
@"?sBfClassVData@FileStream@IO@System@bf@@2UClassVData@34@A" = external constant [24 x ptr]
@__bfStrData51 = external constant [9 x i8]
@__bfStrData52 = external constant [16 x i8]
@"?sBfClassVData@?$Array1@PEAVObject@System@bf@@@System@bf@@2UClassVData@23@A" = external constant [4 x ptr]
@"?sBfClassVData@?$Box@VUInt64@System@bf@@@@2UClassVData@System@bf@@A" = external constant [9 x ptr]
@__bfStrData53 = external constant [46 x i8]
@"?sBfClassVData@?$Box@VDouble@System@bf@@@@2UClassVData@System@bf@@A" = external constant [9 x ptr]
@__bfStrData54 = external constant [32 x i8]
@__bfStrData55 = external constant [20 x i8]
@__bfStrData56 = external constant [20 x i8]
@__bfStrData57 = external constant [20 x i8]
@__bfStrData58 = external constant [20 x i8]
@"?sBfClassVData@?$Box@VInt@System@bf@@@@2UClassVData@System@bf@@A" = external constant [9 x ptr]

; Function Attrs: nounwind uwtable
declare i1 @QueryPerformanceFrequency(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare i1 @QueryPerformanceCounter(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @ExitProcess(i64) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define void @"?Main@Program@bf@@SAXXZ"() local_unnamed_addr #0 {
entry:
  %frequency = alloca i64, align 8
  %counter = alloca i64, align 8
  %0 = alloca %"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf", align 1
  %1 = alloca %"corlib.?$Result@X@System@bf", align 1
  %2 = alloca [24 x i8], align 8
  %boxed.UInt64 = alloca %"corlib.?$Box@VUInt64@System@bf", align 8
  %3 = alloca [40 x i8], align 8
  %boxed.UInt648 = alloca %"corlib.?$Box@VUInt64@System@bf", align 8
  %boxed.UInt649 = alloca %"corlib.?$Box@VUInt64@System@bf", align 8
  %boxed.Double = alloca %"corlib.?$Box@VDouble@System@bf", align 8
  %4 = alloca [24 x i8], align 8
  %boxed.Double10 = alloca %"corlib.?$Box@VDouble@System@bf", align 8
  %5 = alloca [24 x i8], align 8
  %boxed.Double13 = alloca %"corlib.?$Box@VDouble@System@bf", align 8
  %6 = alloca [24 x i8], align 8
  %boxed.Double16 = alloca %"corlib.?$Box@VDouble@System@bf", align 8
  %7 = alloca [24 x i8], align 8
  %boxed.Double20 = alloca %"corlib.?$Box@VDouble@System@bf", align 8
  %8 = alloca [24 x i8], align 8
  %boxed.Int = alloca %"corlib.?$Box@VInt@System@bf", align 8
  store i64 0, ptr %frequency, align 8
  store i64 0, ptr %counter, align 8
  %QueryPerformanceFrequency = call i1 @QueryPerformanceFrequency(ptr nonnull %frequency)
  br i1 %QueryPerformanceFrequency, label %land.rhs, label %if.then

land.rhs:                                         ; preds = %entry
  %QueryPerformanceCounter = call i1 @QueryPerformanceCounter(ptr nonnull %counter)
  br i1 %QueryPerformanceCounter, label %initStart, label %if.then

if.then:                                          ; preds = %entry, %land.rhs
  call void @ExitProcess(i64 1)
  br label %initStart

initStart:                                        ; preds = %land.rhs, %if.then
  %9 = load i64, ptr %counter, align 8
  %10 = load i64, ptr %frequency, align 8
  %11 = srem i64 %9, %10
  %12 = mul i64 %11, 1000000000
  br label %for.body

for.body:                                         ; preds = %initStart, %for.body
  %Cycles.042 = phi i64 [ 0, %initStart ], [ %16, %for.body ]
  %i.041 = phi i64 [ 100000, %initStart ], [ %17, %for.body ]
  %13 = load ptr, ptr @"bf_hs_preserve@rdtscpf__imp", align 8
  %rdtscpf = call i64 %13() #2
  %14 = load ptr, ptr @"bf_hs_preserve@rdtscpf__imp", align 8
  %rdtscpf1 = call i64 %14() #2
  %15 = sub i64 %Cycles.042, %rdtscpf
  %16 = add i64 %15, %rdtscpf1
  %17 = add nsw i64 %i.041, -1
  %18 = icmp ugt i64 %i.041, 1
  br i1 %18, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %19 = sdiv i64 %9, %10
  %20 = sdiv i64 %12, %10
  %QueryPerformanceCounter2 = call i1 @QueryPerformanceCounter(ptr nonnull %counter)
  br i1 %QueryPerformanceCounter2, label %if.end4, label %if.then3

if.then3:                                         ; preds = %for.end
  call void @ExitProcess(i64 1)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %for.end
  %21 = load i64, ptr %counter, align 8
  %22 = load i64, ptr %frequency, align 8
  %23 = sdiv i64 %21, %22
  %24 = sitofp i64 %23 to double
  %25 = sitofp i64 %19 to double
  %26 = fsub double %24, %25
  %27 = srem i64 %21, %22
  %28 = mul i64 %27, 1000000000
  %29 = sdiv i64 %28, %22
  %30 = sub i64 %29, %20
  %31 = sitofp i64 %30 to double
  %32 = fdiv double %31, 1.000000e+09
  %33 = fadd double %26, %32
  %34 = call ptr @tc_malloc(i64 97) #2
  store ptr @"?sBfClassVData@FileStream@IO@System@bf@@2UClassVData@34@A", ptr %34, align 8
  call void @"?__BfCtorClear@FileStream@IO@System@bf@@AEAAXXZ"(ptr nonnull %34)
  call void @"?__BfCtor@FileStream@IO@System@bf@@QEAAXXZ"(ptr nonnull %34)
  call void @"?Open@BufferedFileStream@IO@System@bf@@QEAA?AU?$Result@X?AW4FileOpenError@IO@System@bf@@@34@UStringView@34@W4FileAccess@234@W4FileShare@234@Tint@@W4FileOptions@234@PEAUSecurityAttributes@234@@Z"(ptr nonnull %34, ptr nonnull sret(%"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf") %0, ptr nonnull @__bfStrData51, i64 8, i8 1, i32 0, i64 4096, i32 0, ptr null)
  %35 = getelementptr inbounds %"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf", ptr %0, i64 0, i32 2
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, 1
  br i1 %37, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @ExitProcess(i64 1)
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4
  %38 = load ptr, ptr %34, align 8
  %39 = getelementptr inbounds ptr, ptr %38, i64 8
  %40 = load ptr, ptr %39, align 8
  %get__Length = call i64 %40(ptr nonnull %34) #2
  %41 = load ptr, ptr %34, align 8
  %42 = getelementptr inbounds ptr, ptr %41, i64 15
  %43 = load ptr, ptr %42, align 8
  call void %43(ptr nonnull %34, ptr nonnull sret(%"corlib.?$Result@X@System@bf") %1) #2
  call void @"?ReturnValueDiscarded__im@?$Result@X@System@bf@@QEAAXXZ"(ptr nocapture nonnull dereferenceable(1) %1)
  store ptr @"?sBfClassVData@?$Array1@PEAVObject@System@bf@@@System@bf@@2UClassVData@23@A", ptr %2, align 8
  call void @"?__BfCtor@?$Array1@PEAVObject@System@bf@@@System@bf@@QEAAXXZ"(ptr nonnull %2)
  %44 = getelementptr inbounds %"corlib.Array@System@bf", ptr %2, i64 0, i32 1
  store i32 1, ptr %44, align 4
  store ptr @"?sBfClassVData@?$Box@VUInt64@System@bf@@@@2UClassVData@System@bf@@A", ptr %boxed.UInt64, align 8
  %45 = getelementptr inbounds %"corlib.?$Box@VUInt64@System@bf", ptr %boxed.UInt64, i64 0, i32 1
  store volatile i64 %16, ptr %45, align 8
  %46 = getelementptr inbounds %"corlib.?$Array1@PEAVObject@System@bf@@@System@bf", ptr %2, i64 0, i32 2
  store ptr %boxed.UInt64, ptr %46, align 8
  call void @"?WriteLine@Console@System@bf@@SAXUStringView@23@Tparams@@PEAV?$Array1@PEAVObject@System@bf@@@23@@Z"(ptr nonnull @__bfStrData52, i64 15, ptr nonnull %2)
  %47 = fptoui double %33 to i64
  %48 = udiv i64 %47, 3600
  %49 = urem i64 %47, 3600
  %.lhs.trunc = trunc i64 %49 to i16
  %50 = udiv i16 %.lhs.trunc, 60
  %.zext = zext nneg i16 %50 to i64
  %51 = urem i64 %47, 60
  %52 = uitofp i64 %51 to double
  %53 = fadd double %33, %52
  %54 = uitofp i64 %47 to double
  %55 = fsub double %53, %54
  store ptr @"?sBfClassVData@?$Array1@PEAVObject@System@bf@@@System@bf@@2UClassVData@23@A", ptr %3, align 8
  call void @"?__BfCtor@?$Array1@PEAVObject@System@bf@@@System@bf@@QEAAXXZ"(ptr nonnull %3)
  %56 = getelementptr inbounds %"corlib.Array@System@bf", ptr %3, i64 0, i32 1
  store i32 3, ptr %56, align 4
  store ptr @"?sBfClassVData@?$Box@VUInt64@System@bf@@@@2UClassVData@System@bf@@A", ptr %boxed.UInt648, align 8
  %57 = getelementptr inbounds %"corlib.?$Box@VUInt64@System@bf", ptr %boxed.UInt648, i64 0, i32 1
  store volatile i64 %48, ptr %57, align 8
  %58 = getelementptr inbounds %"corlib.?$Array1@PEAVObject@System@bf@@@System@bf", ptr %3, i64 0, i32 2
  store ptr %boxed.UInt648, ptr %58, align 8
  store ptr @"?sBfClassVData@?$Box@VUInt64@System@bf@@@@2UClassVData@System@bf@@A", ptr %boxed.UInt649, align 8
  %59 = getelementptr inbounds %"corlib.?$Box@VUInt64@System@bf", ptr %boxed.UInt649, i64 0, i32 1
  store volatile i64 %.zext, ptr %59, align 8
  %60 = getelementptr inbounds %"corlib.?$Array1@PEAVObject@System@bf@@@System@bf", ptr %3, i64 1
  store ptr %boxed.UInt649, ptr %60, align 8
  store ptr @"?sBfClassVData@?$Box@VDouble@System@bf@@@@2UClassVData@System@bf@@A", ptr %boxed.Double, align 8
  %61 = getelementptr inbounds %"corlib.?$Box@VDouble@System@bf", ptr %boxed.Double, i64 0, i32 1
  store volatile double %55, ptr %61, align 8
  %62 = getelementptr inbounds %"corlib.?$Array1@PEAVObject@System@bf@@@System@bf", ptr %3, i64 1, i32 0, i32 1
  store ptr %boxed.Double, ptr %62, align 8
  call void @"?WriteLine@Console@System@bf@@SAXUStringView@23@Tparams@@PEAV?$Array1@PEAVObject@System@bf@@@23@@Z"(ptr nonnull @__bfStrData53, i64 45, ptr nonnull %3)
  %63 = uitofp i64 %16 to double
  %64 = fdiv double %63, %33
  %65 = fdiv double %64, 1.000000e+09
  store ptr @"?sBfClassVData@?$Array1@PEAVObject@System@bf@@@System@bf@@2UClassVData@23@A", ptr %4, align 8
  call void @"?__BfCtor@?$Array1@PEAVObject@System@bf@@@System@bf@@QEAAXXZ"(ptr nonnull %4)
  %66 = getelementptr inbounds %"corlib.Array@System@bf", ptr %4, i64 0, i32 1
  store i32 1, ptr %66, align 4
  store ptr @"?sBfClassVData@?$Box@VDouble@System@bf@@@@2UClassVData@System@bf@@A", ptr %boxed.Double10, align 8
  %67 = getelementptr inbounds %"corlib.?$Box@VDouble@System@bf", ptr %boxed.Double10, i64 0, i32 1
  store volatile double %65, ptr %67, align 8
  %68 = getelementptr inbounds %"corlib.?$Array1@PEAVObject@System@bf@@@System@bf", ptr %4, i64 0, i32 2
  store ptr %boxed.Double10, ptr %68, align 8
  call void @"?WriteLine@Console@System@bf@@SAXUStringView@23@Tparams@@PEAV?$Array1@PEAVObject@System@bf@@@23@@Z"(ptr nonnull @__bfStrData54, i64 31, ptr nonnull %4)
  %69 = sitofp i64 %get__Length to double
  %70 = icmp sgt i64 %get__Length, 1073741823
  br i1 %70, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end7
  %71 = fmul double %69, 0x3E10000000000000
  store ptr @"?sBfClassVData@?$Array1@PEAVObject@System@bf@@@System@bf@@2UClassVData@23@A", ptr %5, align 8
  call void @"?__BfCtor@?$Array1@PEAVObject@System@bf@@@System@bf@@QEAAXXZ"(ptr nonnull %5)
  %72 = getelementptr inbounds %"corlib.Array@System@bf", ptr %5, i64 0, i32 1
  store i32 1, ptr %72, align 4
  store ptr @"?sBfClassVData@?$Box@VDouble@System@bf@@@@2UClassVData@System@bf@@A", ptr %boxed.Double13, align 8
  %73 = getelementptr inbounds %"corlib.?$Box@VDouble@System@bf", ptr %boxed.Double13, i64 0, i32 1
  store volatile double %71, ptr %73, align 8
  %74 = getelementptr inbounds %"corlib.?$Array1@PEAVObject@System@bf@@@System@bf", ptr %5, i64 0, i32 2
  store ptr %boxed.Double13, ptr %74, align 8
  call void @"?WriteLine@Console@System@bf@@SAXUStringView@23@Tparams@@PEAV?$Array1@PEAVObject@System@bf@@@23@@Z"(ptr nonnull @__bfStrData55, i64 19, ptr nonnull %5)
  br label %if.end24

if.else:                                          ; preds = %if.end7
  %75 = icmp sgt i64 %get__Length, 1048575
  br i1 %75, label %if.then14, label %if.else17

if.then14:                                        ; preds = %if.else
  %76 = fmul double %69, 0x3EB0000000000000
  store ptr @"?sBfClassVData@?$Array1@PEAVObject@System@bf@@@System@bf@@2UClassVData@23@A", ptr %6, align 8
  call void @"?__BfCtor@?$Array1@PEAVObject@System@bf@@@System@bf@@QEAAXXZ"(ptr nonnull %6)
  %77 = getelementptr inbounds %"corlib.Array@System@bf", ptr %6, i64 0, i32 1
  store i32 1, ptr %77, align 4
  store ptr @"?sBfClassVData@?$Box@VDouble@System@bf@@@@2UClassVData@System@bf@@A", ptr %boxed.Double16, align 8
  %78 = getelementptr inbounds %"corlib.?$Box@VDouble@System@bf", ptr %boxed.Double16, i64 0, i32 1
  store volatile double %76, ptr %78, align 8
  %79 = getelementptr inbounds %"corlib.?$Array1@PEAVObject@System@bf@@@System@bf", ptr %6, i64 0, i32 2
  store ptr %boxed.Double16, ptr %79, align 8
  call void @"?WriteLine@Console@System@bf@@SAXUStringView@23@Tparams@@PEAV?$Array1@PEAVObject@System@bf@@@23@@Z"(ptr nonnull @__bfStrData56, i64 19, ptr nonnull %6)
  br label %if.end24

if.else17:                                        ; preds = %if.else
  %80 = icmp sgt i64 %get__Length, 1023
  br i1 %80, label %if.then18, label %if.else21

if.then18:                                        ; preds = %if.else17
  %81 = fmul double %69, 0x3F50000000000000
  store ptr @"?sBfClassVData@?$Array1@PEAVObject@System@bf@@@System@bf@@2UClassVData@23@A", ptr %7, align 8
  call void @"?__BfCtor@?$Array1@PEAVObject@System@bf@@@System@bf@@QEAAXXZ"(ptr nonnull %7)
  %82 = getelementptr inbounds %"corlib.Array@System@bf", ptr %7, i64 0, i32 1
  store i32 1, ptr %82, align 4
  store ptr @"?sBfClassVData@?$Box@VDouble@System@bf@@@@2UClassVData@System@bf@@A", ptr %boxed.Double20, align 8
  %83 = getelementptr inbounds %"corlib.?$Box@VDouble@System@bf", ptr %boxed.Double20, i64 0, i32 1
  store volatile double %81, ptr %83, align 8
  %84 = getelementptr inbounds %"corlib.?$Array1@PEAVObject@System@bf@@@System@bf", ptr %7, i64 0, i32 2
  store ptr %boxed.Double20, ptr %84, align 8
  call void @"?WriteLine@Console@System@bf@@SAXUStringView@23@Tparams@@PEAV?$Array1@PEAVObject@System@bf@@@23@@Z"(ptr nonnull @__bfStrData57, i64 19, ptr nonnull %7)
  br label %if.end24

if.else21:                                        ; preds = %if.else17
  store ptr @"?sBfClassVData@?$Array1@PEAVObject@System@bf@@@System@bf@@2UClassVData@23@A", ptr %8, align 8
  call void @"?__BfCtor@?$Array1@PEAVObject@System@bf@@@System@bf@@QEAAXXZ"(ptr nonnull %8)
  %85 = getelementptr inbounds %"corlib.Array@System@bf", ptr %8, i64 0, i32 1
  store i32 1, ptr %85, align 4
  store ptr @"?sBfClassVData@?$Box@VInt@System@bf@@@@2UClassVData@System@bf@@A", ptr %boxed.Int, align 8
  %86 = getelementptr inbounds %"corlib.?$Box@VInt@System@bf", ptr %boxed.Int, i64 0, i32 1
  store volatile i64 %get__Length, ptr %86, align 8
  %87 = getelementptr inbounds %"corlib.?$Array1@PEAVObject@System@bf@@@System@bf", ptr %8, i64 0, i32 2
  store ptr %boxed.Int, ptr %87, align 8
  call void @"?WriteLine@Console@System@bf@@SAXUStringView@23@Tparams@@PEAV?$Array1@PEAVObject@System@bf@@@23@@Z"(ptr nonnull @__bfStrData58, i64 19, ptr nonnull %8)
  br label %if.end24

if.end24:                                         ; preds = %if.then14, %if.else21, %if.then18, %if.then12
  %boxed.Double16.sink = phi ptr [ %boxed.Double16, %if.then14 ], [ %boxed.Int, %if.else21 ], [ %boxed.Double20, %if.then18 ], [ %boxed.Double13, %if.then12 ]
  %.sink = phi ptr [ %6, %if.then14 ], [ %8, %if.else21 ], [ %7, %if.then18 ], [ %5, %if.then12 ]
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr nonnull %boxed.Double16.sink)
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr nonnull %.sink)
  call void @ExitProcess(i64 0)
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr nonnull %boxed.Double10)
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr nonnull %4)
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr nonnull %boxed.Double)
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr nonnull %boxed.UInt649)
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr nonnull %boxed.UInt648)
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr nonnull %3)
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr nonnull %boxed.UInt64)
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define void @"?__BfStaticCtor@Program@bf@@SAXXZ"() local_unnamed_addr #1 {
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
declare void @"?__BfCtor@FileStream@IO@System@bf@@QEAAXXZ"(ptr) local_unnamed_addr #0

declare ptr @tc_malloc(i64) local_unnamed_addr

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@FileStream@IO@System@bf@@AEAAXXZ"(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?Open@BufferedFileStream@IO@System@bf@@QEAA?AU?$Result@X?AW4FileOpenError@IO@System@bf@@@34@UStringView@34@W4FileAccess@234@W4FileShare@234@Tint@@W4FileOptions@234@PEAUSecurityAttributes@234@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf"), ptr, i64, i8, i32, i64, i32, ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?ReturnValueDiscarded__im@?$Result@X@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(1)) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?WriteLine@Console@System@bf@@SAXUStringView@23@Tparams@@PEAV?$Array1@PEAVObject@System@bf@@@23@@Z"(ptr, i64, ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?~this@Object@System@bf@@UEAAXXZ"(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@?$Array1@PEAVObject@System@bf@@@System@bf@@QEAAXXZ"(ptr) local_unnamed_addr #0

attributes #0 = { nounwind uwtable }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable }
attributes #2 = { nounwind }
