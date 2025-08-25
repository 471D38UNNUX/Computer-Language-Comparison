; ModuleID = 'System_Runtime_BfRtCallbacks'
source_filename = "System_Runtime_BfRtCallbacks"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.BfRtCallbacks@Runtime@System@bf" = type <{ %"corlib.ValueType@System@bf", i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.ClassVData@System@bf" = type <{ %"corlib.ValueType@System@bf", i64 }>
%"corlib.Type@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, i32, i32, i32, i8, i8, i8 }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.StringView@System@bf" = type <{ %"corlib.?$Span@D@System@bf" }>
%"corlib.?$Span@D@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>

@"?sCallbacks@BfRtCallbacks@Runtime@System@bf@@2U1234@A" = local_unnamed_addr global %"corlib.BfRtCallbacks@Runtime@System@bf" zeroinitializer, align 8
@"?CheckErrorHandler@Runtime@System@bf@@2V?$function_kind_arg1_arg2_arg3@HPEADPEADPEADTint@@@3@A" = external local_unnamed_addr global i64
@"?sBfClassVData@String@System@bf@@2UClassVData@23@A" = external constant [8 x ptr]

; Function Attrs: nounwind uwtable
define ptr @"?Alloc@BfRtCallbacks@Runtime@System@bf@@CAPEAXTint@@@Z"(i64 %size) #0 {
entry:
  %0 = tail call ptr @tc_malloc(i64 %size) #3
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define void @"?Free@BfRtCallbacks@Runtime@System@bf@@CAXPEAX@Z"(ptr %ptr) #0 {
entry:
  tail call void @tc_free(ptr %ptr) #3
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Object_Delete@BfRtCallbacks@Runtime@System@bf@@CAXPEAVObject@34@@Z"(ptr %obj) #0 {
entry:
  %.not = icmp eq ptr %obj, null
  br i1 %.not, label %exit, label %delete.body

delete.body:                                      ; preds = %entry
  %0 = load ptr, ptr %obj, align 8
  %1 = getelementptr inbounds ptr, ptr %0, i64 3
  %2 = load ptr, ptr %1, align 8
  tail call void %2(ptr nonnull %obj) #3
  tail call void @tc_free(ptr nonnull %obj) #3
  br label %exit

exit:                                             ; preds = %entry, %delete.body
  ret void
}

; Function Attrs: nounwind uwtable
define nonnull ptr @"?ClassVData_GetTypeData@BfRtCallbacks@Runtime@System@bf@@CAPEAXPEAUClassVData@34@@Z"(ptr nocapture readonly %classVData) #0 {
entry:
  %0 = getelementptr inbounds %"corlib.ClassVData@System@bf", ptr %classVData, i64 0, i32 1
  %1 = load i64, ptr %0, align 8
  %2 = lshr i64 %1, 32
  %3 = trunc i64 %2 to i32
  %GetType_ = tail call ptr @"?GetType_@Type@System@bf@@KAPEAV123@H@Z"(i32 %3)
  %4 = getelementptr inbounds %"corlib.Type@System@bf", ptr %GetType_, i64 0, i32 1
  ret ptr %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noalias noundef ptr @"?Object_GetType@BfRtCallbacks@Runtime@System@bf@@CAPEAVType@34@PEAVObject@34@@Z"(ptr nocapture readnone %obj) #1 {
entry:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @"?Object_GCMarkMembers@BfRtCallbacks@Runtime@System@bf@@CAXPEAVObject@34@@Z"(ptr nocapture readnone %obj) #1 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noalias noundef ptr @"?Object_DynamicCastToTypeId@BfRtCallbacks@Runtime@System@bf@@CAPEAVObject@34@PEAV534@H@Z"(ptr nocapture readnone %obj, i32 %typeId) #1 {
entry:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @"?Type_GetFullName@BfRtCallbacks@Runtime@System@bf@@CAXPEAVType@34@PEAVString@34@@Z"(ptr nocapture readnone %type, ptr nocapture readnone %str) #1 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @"?String_Alloc@BfRtCallbacks@Runtime@System@bf@@CAPEAVString@34@XZ"() #0 {
entry:
  %0 = alloca i64, align 8
  %1 = tail call ptr @tc_malloc(i64 32) #3
  store ptr @"?sBfClassVData@String@System@bf@@2UClassVData@23@A", ptr %1, align 8
  tail call void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr nonnull %1)
  %2 = ptrtoint ptr %1 to i64
  %3 = add i64 %2, 24
  store i64 %3, ptr %0, align 8
  call void @"?__BfCtor@i4$String@System@bf@@QEAAXAEATint@@@Z"(ptr nonnull %1, ptr nonnull dereferenceable(8) %0)
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define void @"?String_ToStringView@BfRtCallbacks@Runtime@System@bf@@CA?AUStringView@34@PEAVString@34@@Z"(ptr noalias nocapture writeonly sret(%"corlib.StringView@System@bf") %0, ptr %str) #0 {
entry:
  %1 = alloca %"corlib.StringView@System@bf", align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr nonnull sret(%"corlib.StringView@System@bf") %1, ptr %str)
  %.fca.0.1.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i64 0, i32 0, i32 1
  %.fca.0.1.load = load ptr, ptr %.fca.0.1.gep, align 8
  %.fca.0.2.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i64 0, i32 0, i32 2
  %.fca.0.2.load = load i64, ptr %.fca.0.2.gep, align 8
  %.repack1 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 1
  store ptr %.fca.0.1.load, ptr %.repack1, align 8
  %.repack3 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 2
  store i64 %.fca.0.2.load, ptr %.repack3, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @"?GC_MarkAllStaticMembers@BfRtCallbacks@Runtime@System@bf@@CAXXZ"() #1 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i1 @"?GC_CallRootCallbacks@BfRtCallbacks@Runtime@System@bf@@CA_NXZ"() #1 {
entry:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @"?GC_Shutdown@BfRtCallbacks@Runtime@System@bf@@CAXXZ"() #1 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @"?DebugMessageData_SetupError@BfRtCallbacks@Runtime@System@bf@@CAXPEADH@Z"(ptr nocapture readnone %str, i32 %stackWindbackCount) #1 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @"?DebugMessageData_SetupProfilerCmd@BfRtCallbacks@Runtime@System@bf@@CAXPEAD@Z"(ptr nocapture readnone %str) #1 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @"?DebugMessageData_Fatal@BfRtCallbacks@Runtime@System@bf@@CAXXZ"() #1 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @"?DebugMessageData_Clear@BfRtCallbacks@Runtime@System@bf@@CAXXZ"() #1 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable
define void @"?Init@BfRtCallbacks@Runtime@System@bf@@QEAAXXZ"(ptr nocapture writeonly %this) local_unnamed_addr #2 {
entry:
  %0 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %this, i64 0, i32 1
  store i64 ptrtoint (ptr @"?Alloc@BfRtCallbacks@Runtime@System@bf@@CAPEAXTint@@@Z" to i64), ptr %0, align 8
  %1 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %this, i64 0, i32 2
  store i64 ptrtoint (ptr @"?Free@BfRtCallbacks@Runtime@System@bf@@CAXPEAX@Z" to i64), ptr %1, align 8
  %2 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %this, i64 0, i32 3
  store i64 ptrtoint (ptr @"?Object_Delete@BfRtCallbacks@Runtime@System@bf@@CAXPEAVObject@34@@Z" to i64), ptr %2, align 8
  %3 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %this, i64 0, i32 4
  store i64 ptrtoint (ptr @"?ClassVData_GetTypeData@BfRtCallbacks@Runtime@System@bf@@CAPEAXPEAUClassVData@34@@Z" to i64), ptr %3, align 8
  %4 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %this, i64 0, i32 5
  store i64 ptrtoint (ptr @"?Object_GetType@BfRtCallbacks@Runtime@System@bf@@CAPEAVType@34@PEAVObject@34@@Z" to i64), ptr %4, align 8
  %5 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %this, i64 0, i32 6
  store i64 ptrtoint (ptr @"?Object_GCMarkMembers@BfRtCallbacks@Runtime@System@bf@@CAXPEAVObject@34@@Z" to i64), ptr %5, align 8
  %6 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %this, i64 0, i32 7
  store i64 ptrtoint (ptr @"?Object_DynamicCastToTypeId@BfRtCallbacks@Runtime@System@bf@@CAPEAVObject@34@PEAV534@H@Z" to i64), ptr %6, align 8
  %7 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %this, i64 0, i32 8
  store i64 ptrtoint (ptr @"?Type_GetFullName@BfRtCallbacks@Runtime@System@bf@@CAXPEAVType@34@PEAVString@34@@Z" to i64), ptr %7, align 8
  %8 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %this, i64 0, i32 9
  store i64 ptrtoint (ptr @"?String_Alloc@BfRtCallbacks@Runtime@System@bf@@CAPEAVString@34@XZ" to i64), ptr %8, align 8
  %9 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %this, i64 0, i32 10
  store i64 ptrtoint (ptr @"?String_ToStringView@BfRtCallbacks@Runtime@System@bf@@CA?AUStringView@34@PEAVString@34@@Z" to i64), ptr %9, align 8
  %10 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %this, i64 0, i32 20
  store i64 ptrtoint (ptr @"?GC_MarkAllStaticMembers@BfRtCallbacks@Runtime@System@bf@@CAXXZ" to i64), ptr %10, align 8
  %11 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %this, i64 0, i32 21
  store i64 ptrtoint (ptr @"?GC_CallRootCallbacks@BfRtCallbacks@Runtime@System@bf@@CA_NXZ" to i64), ptr %11, align 8
  %12 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %this, i64 0, i32 22
  store i64 ptrtoint (ptr @"?GC_Shutdown@BfRtCallbacks@Runtime@System@bf@@CAXXZ" to i64), ptr %12, align 8
  %13 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %this, i64 0, i32 23
  store i64 ptrtoint (ptr @"?SetErrorString@Runtime@System@bf@@CAXPEAD@Z" to i64), ptr %13, align 8
  %14 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %this, i64 0, i32 24
  store i64 ptrtoint (ptr @"?DebugMessageData_SetupError@BfRtCallbacks@Runtime@System@bf@@CAXPEADH@Z" to i64), ptr %14, align 8
  %15 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %this, i64 0, i32 25
  store i64 ptrtoint (ptr @"?DebugMessageData_SetupProfilerCmd@BfRtCallbacks@Runtime@System@bf@@CAXPEAD@Z" to i64), ptr %15, align 8
  %16 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %this, i64 0, i32 26
  store i64 ptrtoint (ptr @"?DebugMessageData_Fatal@BfRtCallbacks@Runtime@System@bf@@CAXXZ" to i64), ptr %16, align 8
  %17 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %this, i64 0, i32 27
  store i64 ptrtoint (ptr @"?DebugMessageData_Clear@BfRtCallbacks@Runtime@System@bf@@CAXXZ" to i64), ptr %17, align 8
  %18 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %this, i64 0, i32 28
  %19 = load i64, ptr @"?CheckErrorHandler@Runtime@System@bf@@2V?$function_kind_arg1_arg2_arg3@HPEADPEADPEADTint@@@3@A", align 8
  store i64 %19, ptr %18, align 8
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?SetErrorString@Runtime@System@bf@@CAXPEAD@Z"(ptr) #0

declare ptr @tc_malloc(i64) local_unnamed_addr

declare void @tc_free(ptr) local_unnamed_addr

; Function Attrs: nounwind uwtable
declare ptr @"?GetType_@Type@System@bf@@KAPEAV123@H@Z"(i32) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i4$String@System@bf@@QEAAXAEATint@@@Z"(ptr, ptr dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr noalias sret(%"corlib.StringView@System@bf"), ptr) local_unnamed_addr #0

attributes #0 = { nounwind uwtable }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none) uwtable }
attributes #3 = { nounwind }
