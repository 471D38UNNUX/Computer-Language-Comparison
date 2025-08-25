; ModuleID = 'System_Globalization_CultureData'
source_filename = "System_Globalization_CultureData"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.CultureData@Globalization@System@bf" = type <{ %"corlib.Object@System@bf", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i1, i1 }>
%"corlib.StringView@System@bf" = type <{ %"corlib.?$Span@D@System@bf" }>
%"corlib.?$Span@D@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64, ptr }>
%"corlib.?$Result@PEAVObject@System@bf@@@System@bf" = type <{ %"corlib.Enum@System@bf", %"corlib.?$__TUPLE_val@PEAVObject@System@bf@@@bf", i8 }>
%"corlib.Enum@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.?$__TUPLE_val@PEAVObject@System@bf@@@bf" = type <{ %"corlib.Tuple@System@bf", ptr }>
%"corlib.Tuple@System@bf" = type <{ %"corlib.ValueType@System@bf" }>

@"?sBfClassVData@?$List@PEAVObject@System@bf@@@Collections@System@bf@@2UClassVData@34@A" = external constant [21 x ptr]
@"?sBfClassVData@String@System@bf@@2UClassVData@23@A" = external constant [8 x ptr]
@__bfStrObj402 = external constant %"corlib.String@System@bf"
@__bfStrObj403 = external constant %"corlib.String@System@bf"
@"?sBfClassVData@CultureData@Globalization@System@bf@@2UClassVData@34@A" = external constant [4 x ptr]
@__bfStrObj404 = external constant %"corlib.String@System@bf"

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@CultureData@Globalization@System@bf@@QEAAXXZ"(ptr nocapture writeonly %this) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %this, i64 0, i32 14
  store i64 -1, ptr %0, align 8
  %1 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %this, i64 0, i32 28
  %2 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %this, i64 0, i32 62
  store i32 -1, ptr %2, align 4
  %3 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %this, i64 0, i32 49
  %4 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %this, i64 0, i32 53
  store i64 -1, ptr %4, align 8
  %5 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %this, i64 0, i32 57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 -1, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 -1, i64 16, i1 false)
  %6 = tail call ptr @tc_malloc(i64 24) #4
  store ptr @"?sBfClassVData@?$List@PEAVObject@System@bf@@@Collections@System@bf@@2UClassVData@34@A", ptr %6, align 8
  tail call void @"?__BfCtorClear@?$List@PEAVObject@System@bf@@@Collections@System@bf@@AEAAXXZ"(ptr nonnull %6)
  tail call void @"?__BfCtor@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXXZ"(ptr nonnull %6)
  store ptr %6, ptr %5, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @"?GetNFIValues@CultureData@Globalization@System@bf@@AEAAXPEAVNumberFormatInfo@234@@Z"(ptr nocapture readnone %this, ptr nocapture readnone %nfi) local_unnamed_addr #1 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i1 @"?get__IsInvariantCulture@CultureData@Globalization@System@bf@@QEAA_NXZ"(ptr nocapture readnone %this) local_unnamed_addr #1 {
entry:
  ret i1 true
}

; Function Attrs: nounwind uwtable
define ptr @"?get__DefaultCalendar@CultureData@Globalization@System@bf@@AEAAPEAVCalendar@234@XZ"(ptr nocapture readnone %this) local_unnamed_addr #0 {
entry:
  %GetCalendarInstance = tail call ptr @"?GetCalendarInstance@CultureInfo@Globalization@System@bf@@CAPEAVCalendar@234@Tint@@@Z"(i64 1)
  ret ptr %GetCalendarInstance
}

; Function Attrs: nounwind uwtable
define void @"?get__CultureName@CultureData@Globalization@System@bf@@AEAA?AUStringView@34@XZ"(ptr nocapture readonly %this, ptr noalias nocapture writeonly sret(%"corlib.StringView@System@bf") %0) local_unnamed_addr #0 {
entry:
  %1 = alloca %"corlib.StringView@System@bf", align 8
  %2 = alloca %"corlib.StringView@System@bf", align 8
  %3 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %this, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %5 = tail call i1 @"??8String@System@bf@@SA_NPEAV012@0@Z"(ptr %4, ptr nonnull @__bfStrObj402)
  br i1 %5, label %switch.end, label %switch.notEq.0

switch.notEq.0:                                   ; preds = %entry
  %6 = tail call i1 @"??8String@System@bf@@SA_NPEAV012@0@Z"(ptr %4, ptr nonnull @__bfStrObj403)
  br i1 %6, label %exit, label %switch.end

switch.end:                                       ; preds = %switch.notEq.0, %entry
  %7 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %this, i64 0, i32 1
  br label %exit

exit:                                             ; preds = %switch.notEq.0, %switch.end
  %.sink20 = phi ptr [ %7, %switch.end ], [ %3, %switch.notEq.0 ]
  %.sink18 = phi ptr [ %2, %switch.end ], [ %1, %switch.notEq.0 ]
  %8 = load ptr, ptr %.sink20, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr nonnull sret(%"corlib.StringView@System@bf") %.sink18, ptr %8)
  %.fca.0.1.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %.sink18, i64 0, i32 0, i32 1
  %.fca.0.1.load = load ptr, ptr %.fca.0.1.gep, align 8
  %.fca.0.2.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %.sink18, i64 0, i32 0, i32 2
  %.fca.0.2.load = load i64, ptr %.fca.0.2.gep, align 8
  %.repack13 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 1
  store ptr %.fca.0.1.load, ptr %.repack13, align 8
  %.repack15 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 2
  store i64 %.fca.0.2.load, ptr %.repack15, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @"?GetCultureData@CultureData@Globalization@System@bf@@CAPEAV1234@UStringView@34@_N@Z"(ptr nocapture readnone %cultureName_mPtr, i64 %cultureName_mLength, i1 zeroext %useUserOverride) local_unnamed_addr #0 {
entry:
  %0 = tail call ptr @tc_malloc(i64 486) #4
  store ptr @"?sBfClassVData@CultureData@Globalization@System@bf@@2UClassVData@34@A", ptr %0, align 8
  %1 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(478) %1, i8 0, i64 478, i1 false)
  %2 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %0, i64 0, i32 14
  store i64 -1, ptr %2, align 8
  %3 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %0, i64 0, i32 28
  %4 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %0, i64 0, i32 62
  store i32 -1, ptr %4, align 4
  %5 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %0, i64 0, i32 49
  %6 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %0, i64 0, i32 53
  store i64 -1, ptr %6, align 8
  %7 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %0, i64 0, i32 57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 -1, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 -1, i64 16, i1 false)
  %8 = tail call ptr @tc_malloc(i64 24) #4
  store ptr @"?sBfClassVData@?$List@PEAVObject@System@bf@@@Collections@System@bf@@2UClassVData@34@A", ptr %8, align 8
  tail call void @"?__BfCtorClear@?$List@PEAVObject@System@bf@@@Collections@System@bf@@AEAAXXZ"(ptr nonnull %8)
  tail call void @"?__BfCtor@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXXZ"(ptr nonnull %8)
  store ptr %8, ptr %7, align 8
  %InitCultureData.i = tail call i1 @"?InitCultureData@CultureData@Globalization@System@bf@@AEAA_NXZ"(ptr nonnull %0)
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define noundef ptr @"?CreateCultureData@CultureData@Globalization@System@bf@@CAPEAV1234@UStringView@34@_N@Z"(ptr nocapture readnone %cultureName_mPtr, i64 %cultureName_mLength, i1 zeroext %useUserOverride) local_unnamed_addr #0 {
entry:
  %0 = tail call ptr @tc_malloc(i64 486) #4
  store ptr @"?sBfClassVData@CultureData@Globalization@System@bf@@2UClassVData@34@A", ptr %0, align 8
  %1 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(478) %1, i8 0, i64 478, i1 false)
  %2 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %0, i64 0, i32 14
  store i64 -1, ptr %2, align 8
  %3 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %0, i64 0, i32 28
  %4 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %0, i64 0, i32 62
  store i32 -1, ptr %4, align 4
  %5 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %0, i64 0, i32 49
  %6 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %0, i64 0, i32 53
  store i64 -1, ptr %6, align 8
  %7 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %0, i64 0, i32 57
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 -1, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 -1, i64 16, i1 false)
  %8 = tail call ptr @tc_malloc(i64 24) #4
  store ptr @"?sBfClassVData@?$List@PEAVObject@System@bf@@@Collections@System@bf@@2UClassVData@34@A", ptr %8, align 8
  tail call void @"?__BfCtorClear@?$List@PEAVObject@System@bf@@@Collections@System@bf@@AEAAXXZ"(ptr nonnull %8)
  tail call void @"?__BfCtor@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXXZ"(ptr nonnull %8)
  store ptr %8, ptr %7, align 8
  %InitCultureData = tail call i1 @"?InitCultureData@CultureData@Globalization@System@bf@@AEAA_NXZ"(ptr nonnull %0)
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define noundef i1 @"?InitCultureData@CultureData@Globalization@System@bf@@AEAA_NXZ"(ptr nocapture writeonly %this) local_unnamed_addr #0 {
entry:
  %0 = alloca i64, align 8
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %this, i64 0, i32 2
  %"this$calcAppend" = tail call i64 @"?this$calcAppend@i9$String@System@bf@@SATint@@PEAV123@@Z"(ptr nonnull @__bfStrObj404)
  %5 = add i64 %"this$calcAppend", 24
  %6 = tail call ptr @tc_malloc(i64 %5) #4
  store ptr @"?sBfClassVData@String@System@bf@@2UClassVData@23@A", ptr %6, align 8
  tail call void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr nonnull %6)
  %7 = ptrtoint ptr %6 to i64
  %8 = add i64 %7, 24
  store i64 %8, ptr %0, align 8
  call void @"?__BfCtor@i8$String@System@bf@@QEAAXAEATint@@PEAV123@@Z"(ptr nonnull %6, ptr nonnull dereferenceable(8) %0, ptr nonnull @__bfStrObj404)
  store ptr %6, ptr %4, align 8
  %9 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %this, i64 0, i32 1
  %"this$calcAppend1" = call i64 @"?this$calcAppend@i9$String@System@bf@@SATint@@PEAV123@@Z"(ptr nonnull @__bfStrObj404)
  %10 = add i64 %"this$calcAppend1", 24
  %11 = call ptr @tc_malloc(i64 %10) #4
  store ptr @"?sBfClassVData@String@System@bf@@2UClassVData@23@A", ptr %11, align 8
  call void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr nonnull %11)
  %12 = ptrtoint ptr %11 to i64
  %13 = add i64 %12, 24
  store i64 %13, ptr %1, align 8
  call void @"?__BfCtor@i8$String@System@bf@@QEAAXAEATint@@PEAV123@@Z"(ptr nonnull %11, ptr nonnull dereferenceable(8) %1, ptr nonnull @__bfStrObj404)
  store ptr %11, ptr %9, align 8
  %14 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %this, i64 0, i32 8
  %"this$calcAppend2" = call i64 @"?this$calcAppend@i9$String@System@bf@@SATint@@PEAV123@@Z"(ptr nonnull @__bfStrObj404)
  %15 = add i64 %"this$calcAppend2", 24
  %16 = call ptr @tc_malloc(i64 %15) #4
  store ptr @"?sBfClassVData@String@System@bf@@2UClassVData@23@A", ptr %16, align 8
  call void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr nonnull %16)
  %17 = ptrtoint ptr %16 to i64
  %18 = add i64 %17, 24
  store i64 %18, ptr %2, align 8
  call void @"?__BfCtor@i8$String@System@bf@@QEAAXAEATint@@PEAV123@@Z"(ptr nonnull %16, ptr nonnull dereferenceable(8) %2, ptr nonnull @__bfStrObj404)
  store ptr %16, ptr %14, align 8
  %19 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %this, i64 0, i32 3
  %"this$calcAppend3" = call i64 @"?this$calcAppend@i9$String@System@bf@@SATint@@PEAV123@@Z"(ptr nonnull @__bfStrObj404)
  %20 = add i64 %"this$calcAppend3", 24
  %21 = call ptr @tc_malloc(i64 %20) #4
  store ptr @"?sBfClassVData@String@System@bf@@2UClassVData@23@A", ptr %21, align 8
  call void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr nonnull %21)
  %22 = ptrtoint ptr %21 to i64
  %23 = add i64 %22, 24
  store i64 %23, ptr %3, align 8
  call void @"?__BfCtor@i8$String@System@bf@@QEAAXAEATint@@PEAV123@@Z"(ptr nonnull %21, ptr nonnull dereferenceable(8) %3, ptr nonnull @__bfStrObj404)
  store ptr %21, ptr %19, align 8
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @"?__BfCtorClear@CultureData@Globalization@System@bf@@AEAAXXZ"(ptr nocapture writeonly %this) local_unnamed_addr #2 {
entry:
  %0 = getelementptr inbounds i8, ptr %this, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(478) %0, i8 0, i64 478, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?~this@CultureData@Globalization@System@bf@@QEAAXXZ"(ptr %this) local_unnamed_addr #0 {
entry:
  %0 = alloca %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", align 8
  %1 = alloca %"corlib.?$Result@PEAVObject@System@bf@@@System@bf", align 8
  %2 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %this, i64 0, i32 57
  %3 = load ptr, ptr %2, align 8
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @"?GetEnumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAA?AUEnumerator@1234@XZ"(ptr nonnull %3, ptr nonnull sret(%"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf") %0)
  %4 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %"corlib.?$Result@PEAVObject@System@bf@@@System@bf", ptr %1, i64 0, i32 2
  br label %foreach.cond

foreach.cond:                                     ; preds = %foreach.inc, %if.then
  call void @"?GetNext@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAA?AU?$Result@PEAVObject@System@bf@@@45@XZ"(ptr nonnull %0, ptr nonnull sret(%"corlib.?$Result@PEAVObject@System@bf@@@System@bf") %1)
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %foreach.body, label %foreach.end

foreach.body:                                     ; preds = %foreach.cond
  %13 = load ptr, ptr %1, align 8
  %.not29 = icmp eq ptr %13, null
  br i1 %.not29, label %foreach.inc, label %delete.body

delete.body:                                      ; preds = %foreach.body
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  call void %16(ptr nonnull %13) #4
  call void @tc_free(ptr nonnull %13) #4
  br label %foreach.inc

foreach.inc:                                      ; preds = %foreach.body, %delete.body
  br label %foreach.cond

foreach.end:                                      ; preds = %foreach.cond
  call void @"?Dispose__im@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXXZ"(ptr %5, i64 %7, ptr %9)
  %17 = load ptr, ptr %2, align 8
  %.not24 = icmp eq ptr %17, null
  br i1 %.not24, label %if.end, label %delete.body4

delete.body4:                                     ; preds = %foreach.end
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  call void %20(ptr nonnull %17) #4
  call void @tc_free(ptr nonnull %17) #4
  br label %if.end

if.end:                                           ; preds = %foreach.end, %delete.body4, %entry
  %21 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %this, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8
  %.not25 = icmp eq ptr %22, null
  br i1 %.not25, label %delete.end8, label %delete.body7

delete.body7:                                     ; preds = %if.end
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  call void %25(ptr nonnull %22) #4
  call void @tc_free(ptr nonnull %22) #4
  br label %delete.end8

delete.end8:                                      ; preds = %delete.body7, %if.end
  %26 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %this, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8
  %.not26 = icmp eq ptr %27, null
  br i1 %.not26, label %delete.end11, label %delete.body10

delete.body10:                                    ; preds = %delete.end8
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  call void %30(ptr nonnull %27) #4
  call void @tc_free(ptr nonnull %27) #4
  br label %delete.end11

delete.end11:                                     ; preds = %delete.body10, %delete.end8
  %31 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %this, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8
  %.not27 = icmp eq ptr %32, null
  br i1 %.not27, label %delete.end14, label %delete.body13

delete.body13:                                    ; preds = %delete.end11
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  call void %35(ptr nonnull %32) #4
  call void @tc_free(ptr nonnull %32) #4
  br label %delete.end14

delete.end14:                                     ; preds = %delete.body13, %delete.end11
  %36 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %this, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8
  %.not28 = icmp eq ptr %37, null
  br i1 %.not28, label %delete.end17, label %delete.body16

delete.body16:                                    ; preds = %delete.end14
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds ptr, ptr %38, i64 3
  %40 = load ptr, ptr %39, align 8
  call void %40(ptr nonnull %37) #4
  call void @tc_free(ptr nonnull %37) #4
  br label %delete.end17

delete.end17:                                     ; preds = %delete.body16, %delete.end14
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr nonnull %this)
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXXZ"(ptr) local_unnamed_addr #0

declare ptr @tc_malloc(i64) local_unnamed_addr

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@?$List@PEAVObject@System@bf@@@Collections@System@bf@@AEAAXXZ"(ptr) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
declare i1 @"??8String@System@bf@@SA_NPEAV012@0@Z"(ptr, ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr noalias sret(%"corlib.StringView@System@bf"), ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i8$String@System@bf@@QEAAXAEATint@@PEAV123@@Z"(ptr, ptr dereferenceable(8), ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare i64 @"?this$calcAppend@i9$String@System@bf@@SATint@@PEAV123@@Z"(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?GetEnumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAA?AUEnumerator@1234@XZ"(ptr, ptr noalias sret(%"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf")) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?Dispose__im@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXXZ"(ptr, i64, ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?GetNext@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAA?AU?$Result@PEAVObject@System@bf@@@45@XZ"(ptr, ptr noalias sret(%"corlib.?$Result@PEAVObject@System@bf@@@System@bf")) local_unnamed_addr #0

declare void @tc_free(ptr) local_unnamed_addr

; Function Attrs: nounwind uwtable
declare void @"?~this@Object@System@bf@@UEAAXXZ"(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare ptr @"?GetCalendarInstance@CultureInfo@Globalization@System@bf@@CAPEAVCalendar@234@Tint@@@Z"(i64) local_unnamed_addr #0

attributes #0 = { nounwind uwtable }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nounwind }
