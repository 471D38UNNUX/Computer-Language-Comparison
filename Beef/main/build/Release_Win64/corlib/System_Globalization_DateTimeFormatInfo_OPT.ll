; ModuleID = 'System_Globalization_DateTimeFormatInfo'
source_filename = "System_Globalization_DateTimeFormatInfo"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.Type@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, i32, i32, i32, i8, i8, i8 }>
%"corlib.DateTimeFormatInfo@Globalization@System@bf" = type <{ %"corlib.Object@System@bf", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i1, i8 }>
%"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64, ptr }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$Result@PEAVObject@System@bf@@@System@bf" = type <{ %"corlib.Enum@System@bf", %"corlib.?$__TUPLE_val@PEAVObject@System@bf@@@bf", i8 }>
%"corlib.Enum@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.?$__TUPLE_val@PEAVObject@System@bf@@@bf" = type <{ %"corlib.Tuple@System@bf", ptr }>
%"corlib.Tuple@System@bf" = type <{ %"corlib.ValueType@System@bf" }>

@"?invariantInfo@DateTimeFormatInfo@Globalization@System@bf@@2PEAV1234@C" = local_unnamed_addr global ptr null, align 8
@__bfStrObj409 = external constant %"corlib.String@System@bf"
@__bfStrObj410 = external constant %"corlib.String@System@bf"
@__bfStrObj411 = external constant %"corlib.String@System@bf"
@__bfStrObj412 = external constant %"corlib.String@System@bf"
@__bfStrObj413 = external constant %"corlib.String@System@bf"
@__bfStrObj414 = external constant %"corlib.String@System@bf"
@__bfStrObj415 = external constant %"corlib.String@System@bf"
@"?sBfClassVData@?$List@PEAVObject@System@bf@@@Collections@System@bf@@2UClassVData@34@A" = external constant [21 x ptr]
@"?sBfTypeData@DateTimeFormatInfo@Globalization@System@bf@@2HA" = external constant %"corlib.Type@System@bf"

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@DateTimeFormatInfo@Globalization@System@bf@@QEAAXPEAVCultureData@234@PEAVCalendar@234@@Z"(ptr nocapture writeonly %this, ptr %cultureData, ptr %calendar) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 2
  %1 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  store ptr @__bfStrObj409, ptr %1, align 8
  %2 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 6
  store ptr @__bfStrObj410, ptr %2, align 8
  %3 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 7
  store ptr @__bfStrObj411, ptr %3, align 8
  %4 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 8
  %5 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  store ptr @__bfStrObj412, ptr %5, align 8
  %6 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 11
  %7 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 13
  %8 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %9 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 -1, i64 16, i1 false)
  %10 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %9, i8 0, i64 72, i1 false)
  store ptr @__bfStrObj413, ptr %10, align 8
  %11 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 26
  store ptr @__bfStrObj414, ptr %11, align 8
  %12 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 27
  store ptr @__bfStrObj415, ptr %12, align 8
  %13 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 28
  %14 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 42
  store i1 false, ptr %14, align 1
  %15 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 43
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %13, i8 0, i64 88, i1 false)
  store i8 -1, ptr %15, align 1
  %16 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 39
  %17 = tail call ptr @tc_malloc(i64 24) #4
  store ptr @"?sBfClassVData@?$List@PEAVObject@System@bf@@@Collections@System@bf@@2UClassVData@34@A", ptr %17, align 8
  tail call void @"?__BfCtorClear@?$List@PEAVObject@System@bf@@@Collections@System@bf@@AEAAXXZ"(ptr nonnull %17)
  tail call void @"?__BfCtor@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXXZ"(ptr nonnull %17)
  store ptr %17, ptr %16, align 8
  %18 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 1
  store ptr %cultureData, ptr %18, align 8
  store ptr %calendar, ptr %7, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @"?GetFormat@DateTimeFormatInfo@Globalization@System@bf@@QEAAPEAVObject@34@PEAVType@34@@Z"(ptr readnone %this, ptr readnone %formatType) local_unnamed_addr #1 {
entry:
  %0 = icmp eq ptr %formatType, @"?sBfTypeData@DateTimeFormatInfo@Globalization@System@bf@@2HA"
  %. = select i1 %0, ptr %this, ptr null
  ret ptr %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @"?__BfCtorClear@DateTimeFormatInfo@Globalization@System@bf@@AEAAXXZ"(ptr nocapture writeonly %this) local_unnamed_addr #2 {
entry:
  %0 = getelementptr inbounds i8, ptr %this, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(330) %0, i8 0, i64 330, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfStaticDtor@DateTimeFormatInfo@Globalization@System@bf@@SAXXZ"() local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @"?invariantInfo@DateTimeFormatInfo@Globalization@System@bf@@2PEAV1234@C", align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %exit, label %delete.body

delete.body:                                      ; preds = %entry
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr inbounds ptr, ptr %1, i64 3
  %3 = load ptr, ptr %2, align 8
  tail call void %3(ptr nonnull %0) #4
  tail call void @tc_free(ptr nonnull %0) #4
  br label %exit

exit:                                             ; preds = %entry, %delete.body
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?~this@DateTimeFormatInfo@Globalization@System@bf@@QEAAXXZ"(ptr %this) local_unnamed_addr #0 {
entry:
  %0 = alloca %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", align 8
  %1 = alloca %"corlib.?$Result@PEAVObject@System@bf@@@System@bf", align 8
  %2 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 41
  %3 = load ptr, ptr %2, align 8
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %delete.end, label %delete.body

delete.body:                                      ; preds = %entry
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr nonnull %3) #4
  tail call void @tc_free(ptr nonnull %3) #4
  br label %delete.end

delete.end:                                       ; preds = %delete.body, %entry
  %7 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 40
  %8 = load ptr, ptr %7, align 8
  %.not16 = icmp eq ptr %8, null
  br i1 %.not16, label %delete.end4, label %delete.body3

delete.body3:                                     ; preds = %delete.end
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr nonnull %8) #4
  tail call void @tc_free(ptr nonnull %8) #4
  br label %delete.end4

delete.end4:                                      ; preds = %delete.body3, %delete.end
  %12 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 39
  %13 = load ptr, ptr %12, align 8
  %.not17 = icmp eq ptr %13, null
  br i1 %.not17, label %if.end, label %if.then

if.then:                                          ; preds = %delete.end4
  call void @"?GetEnumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAA?AUEnumerator@1234@XZ"(ptr nonnull %13, ptr nonnull sret(%"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf") %0)
  %14 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %0, i64 0, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %"corlib.?$Result@PEAVObject@System@bf@@@System@bf", ptr %1, i64 0, i32 2
  br label %foreach.cond

foreach.cond:                                     ; preds = %foreach.inc, %if.then
  call void @"?GetNext@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAA?AU?$Result@PEAVObject@System@bf@@@45@XZ"(ptr nonnull %0, ptr nonnull sret(%"corlib.?$Result@PEAVObject@System@bf@@@System@bf") %1)
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %foreach.body, label %foreach.end

foreach.body:                                     ; preds = %foreach.cond
  %23 = load ptr, ptr %1, align 8
  %.not19 = icmp eq ptr %23, null
  br i1 %.not19, label %foreach.inc, label %delete.body8

delete.body8:                                     ; preds = %foreach.body
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr nonnull %23) #4
  call void @tc_free(ptr nonnull %23) #4
  br label %foreach.inc

foreach.inc:                                      ; preds = %foreach.body, %delete.body8
  br label %foreach.cond

foreach.end:                                      ; preds = %foreach.cond
  call void @"?Dispose__im@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXXZ"(ptr %15, i64 %17, ptr %19)
  %27 = load ptr, ptr %12, align 8
  %.not18 = icmp eq ptr %27, null
  br i1 %.not18, label %if.end, label %delete.body10

delete.body10:                                    ; preds = %foreach.end
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  call void %30(ptr nonnull %27) #4
  call void @tc_free(ptr nonnull %27) #4
  br label %if.end

if.end:                                           ; preds = %foreach.end, %delete.body10, %delete.end4
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr nonnull %this)
  ret void
}

declare void @tc_free(ptr) local_unnamed_addr

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXXZ"(ptr) local_unnamed_addr #0

declare ptr @tc_malloc(i64) local_unnamed_addr

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@?$List@PEAVObject@System@bf@@@Collections@System@bf@@AEAAXXZ"(ptr) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
declare void @"?GetEnumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAA?AUEnumerator@1234@XZ"(ptr, ptr noalias sret(%"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf")) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?Dispose__im@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXXZ"(ptr, i64, ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?GetNext@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAA?AU?$Result@PEAVObject@System@bf@@@45@XZ"(ptr, ptr noalias sret(%"corlib.?$Result@PEAVObject@System@bf@@@System@bf")) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?~this@Object@System@bf@@UEAAXXZ"(ptr) local_unnamed_addr #0

attributes #0 = { nounwind uwtable }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }
