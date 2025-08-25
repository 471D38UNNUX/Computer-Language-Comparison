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

@"?sCallbacks@BfRtCallbacks@Runtime@System@bf@@2U1234@A" = global %"corlib.BfRtCallbacks@Runtime@System@bf" zeroinitializer, align 8
@"?CheckErrorHandler@Runtime@System@bf@@2V?$function_kind_arg1_arg2_arg3@HPEADPEADPEADTint@@@3@A" = external global i64
@"?sBfClassVData@String@System@bf@@2UClassVData@23@A" = external constant [8 x ptr]

; Function Attrs: nounwind uwtable
define ptr @"?Alloc@BfRtCallbacks@Runtime@System@bf@@CAPEAXTint@@@Z"(i64 %size) #0 {
entry:
  %__return = alloca ptr, align 8
  %0 = call ptr @tc_malloc(i64 %size)
  store ptr %0, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %1 = load ptr, ptr %__return, align 8
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define void @"?Free@BfRtCallbacks@Runtime@System@bf@@CAXPEAX@Z"(ptr %ptr) #0 {
entry:
  call void @tc_free(ptr %ptr)
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Object_Delete@BfRtCallbacks@Runtime@System@bf@@CAXPEAVObject@34@@Z"(ptr %obj) #0 {
entry:
  %0 = icmp ne ptr %obj, null
  br i1 %0, label %delete.body, label %delete.end

delete.body:                                      ; preds = %entry
  %1 = load ptr, ptr %obj, align 8
  %2 = getelementptr inbounds ptr, ptr %1, i32 3
  %3 = load ptr, ptr %2, align 8
  call void %3(ptr %obj)
  call void @tc_free(ptr %obj)
  br label %delete.end

delete.end:                                       ; preds = %delete.body, %entry
  br label %exit

exit:                                             ; preds = %delete.end
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @"?ClassVData_GetTypeData@BfRtCallbacks@Runtime@System@bf@@CAPEAXPEAUClassVData@34@@Z"(ptr %classVData) #0 {
entry:
  %__return = alloca ptr, align 8
  %type = alloca ptr, align 8
  %0 = getelementptr inbounds %"corlib.ClassVData@System@bf", ptr %classVData, i32 0, i32 1
  %1 = load i64, ptr %0, align 8
  %2 = ashr i64 %1, 32
  %3 = trunc i64 %2 to i32
  %GetType_ = call ptr @"?GetType_@Type@System@bf@@KAPEAV123@H@Z"(i32 %3)
  store ptr %GetType_, ptr %type, align 8
  %4 = load ptr, ptr %type, align 8
  %5 = getelementptr inbounds %"corlib.Type@System@bf", ptr %4, i32 0, i32 1
  store ptr %5, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %6 = load ptr, ptr %__return, align 8
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define ptr @"?Object_GetType@BfRtCallbacks@Runtime@System@bf@@CAPEAVType@34@PEAVObject@34@@Z"(ptr %obj) #0 {
entry:
  %__return = alloca ptr, align 8
  store ptr null, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %0 = load ptr, ptr %__return, align 8
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define void @"?Object_GCMarkMembers@BfRtCallbacks@Runtime@System@bf@@CAXPEAVObject@34@@Z"(ptr %obj) #0 {
entry:
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @"?Object_DynamicCastToTypeId@BfRtCallbacks@Runtime@System@bf@@CAPEAVObject@34@PEAV534@H@Z"(ptr %obj, i32 %typeId) #0 {
entry:
  %__return = alloca ptr, align 8
  store ptr null, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %0 = load ptr, ptr %__return, align 8
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define void @"?Type_GetFullName@BfRtCallbacks@Runtime@System@bf@@CAXPEAVType@34@PEAVString@34@@Z"(ptr %type, ptr %str) #0 {
entry:
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @"?String_Alloc@BfRtCallbacks@Runtime@System@bf@@CAPEAVString@34@XZ"() #0 {
entry:
  %__return = alloca ptr, align 8
  %0 = alloca i64, align 8
  %1 = call ptr @tc_malloc(i64 32)
  %2 = getelementptr inbounds %"corlib.Object@System@bf", ptr %1, i32 0, i32 0
  store ptr @"?sBfClassVData@String@System@bf@@2UClassVData@23@A", ptr %2, align 8
  call void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr %1)
  %3 = ptrtoint ptr %1 to i64
  %4 = add i64 %3, 24
  store i64 %4, ptr %0, align 8
  call void @"?__BfCtor@i4$String@System@bf@@QEAAXAEATint@@@Z"(ptr %1, ptr dereferenceable(8) %0)
  store ptr %1, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %5 = load ptr, ptr %__return, align 8
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define void @"?String_ToStringView@BfRtCallbacks@Runtime@System@bf@@CA?AUStringView@34@PEAVString@34@@Z"(ptr noalias sret(%"corlib.StringView@System@bf") %0, ptr %str) #0 {
entry:
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.StringView@System@bf", align 8
  store ptr %0, ptr %__return.addr, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr sret(%"corlib.StringView@System@bf") %1, ptr %str)
  %2 = load %"corlib.StringView@System@bf", ptr %1, align 8
  %3 = load ptr, ptr %__return.addr, align 8
  store %"corlib.StringView@System@bf" %2, ptr %3, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?GC_MarkAllStaticMembers@BfRtCallbacks@Runtime@System@bf@@CAXXZ"() #0 {
entry:
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i1 @"?GC_CallRootCallbacks@BfRtCallbacks@Runtime@System@bf@@CA_NXZ"() #0 {
entry:
  %__return = alloca i1, align 1
  store i1 true, ptr %__return, align 1
  br label %exit

exit:                                             ; preds = %entry
  %0 = load i1, ptr %__return, align 1
  ret i1 %0
}

; Function Attrs: nounwind uwtable
define void @"?GC_Shutdown@BfRtCallbacks@Runtime@System@bf@@CAXXZ"() #0 {
entry:
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?DebugMessageData_SetupError@BfRtCallbacks@Runtime@System@bf@@CAXPEADH@Z"(ptr %str, i32 %stackWindbackCount) #0 {
entry:
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?DebugMessageData_SetupProfilerCmd@BfRtCallbacks@Runtime@System@bf@@CAXPEAD@Z"(ptr %str) #0 {
entry:
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?DebugMessageData_Fatal@BfRtCallbacks@Runtime@System@bf@@CAXXZ"() #0 {
entry:
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?DebugMessageData_Clear@BfRtCallbacks@Runtime@System@bf@@CAXXZ"() #0 {
entry:
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare i32 @"?CheckErrorHandle@BfRtCallbacks@Runtime@System@bf@@CAHPEAD00Tint@@@Z"(ptr, ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
define void @"?Init@BfRtCallbacks@Runtime@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %0 = alloca %"corlib.StringView@System@bf", align 8
  store ptr %this, ptr %this.addr, align 8
  %1 = load ptr, ptr %this.addr, align 8
  %2 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %1, i32 0, i32 1
  store i64 ptrtoint (ptr @"?Alloc@BfRtCallbacks@Runtime@System@bf@@CAPEAXTint@@@Z" to i64), ptr %2, align 8
  %3 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %1, i32 0, i32 2
  store i64 ptrtoint (ptr @"?Free@BfRtCallbacks@Runtime@System@bf@@CAXPEAX@Z" to i64), ptr %3, align 8
  %4 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %1, i32 0, i32 3
  store i64 ptrtoint (ptr @"?Object_Delete@BfRtCallbacks@Runtime@System@bf@@CAXPEAVObject@34@@Z" to i64), ptr %4, align 8
  %5 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %1, i32 0, i32 4
  store i64 ptrtoint (ptr @"?ClassVData_GetTypeData@BfRtCallbacks@Runtime@System@bf@@CAPEAXPEAUClassVData@34@@Z" to i64), ptr %5, align 8
  %6 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %1, i32 0, i32 5
  store i64 ptrtoint (ptr @"?Object_GetType@BfRtCallbacks@Runtime@System@bf@@CAPEAVType@34@PEAVObject@34@@Z" to i64), ptr %6, align 8
  %7 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %1, i32 0, i32 6
  store i64 ptrtoint (ptr @"?Object_GCMarkMembers@BfRtCallbacks@Runtime@System@bf@@CAXPEAVObject@34@@Z" to i64), ptr %7, align 8
  %8 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %1, i32 0, i32 7
  store i64 ptrtoint (ptr @"?Object_DynamicCastToTypeId@BfRtCallbacks@Runtime@System@bf@@CAPEAVObject@34@PEAV534@H@Z" to i64), ptr %8, align 8
  %9 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %1, i32 0, i32 8
  store i64 ptrtoint (ptr @"?Type_GetFullName@BfRtCallbacks@Runtime@System@bf@@CAXPEAVType@34@PEAVString@34@@Z" to i64), ptr %9, align 8
  %10 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %1, i32 0, i32 9
  store i64 ptrtoint (ptr @"?String_Alloc@BfRtCallbacks@Runtime@System@bf@@CAPEAVString@34@XZ" to i64), ptr %10, align 8
  %11 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %1, i32 0, i32 10
  store i64 ptrtoint (ptr @"?String_ToStringView@BfRtCallbacks@Runtime@System@bf@@CA?AUStringView@34@PEAVString@34@@Z" to i64), ptr %11, align 8
  %12 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %1, i32 0, i32 20
  store i64 ptrtoint (ptr @"?GC_MarkAllStaticMembers@BfRtCallbacks@Runtime@System@bf@@CAXXZ" to i64), ptr %12, align 8
  %13 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %1, i32 0, i32 21
  store i64 ptrtoint (ptr @"?GC_CallRootCallbacks@BfRtCallbacks@Runtime@System@bf@@CA_NXZ" to i64), ptr %13, align 8
  %14 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %1, i32 0, i32 22
  store i64 ptrtoint (ptr @"?GC_Shutdown@BfRtCallbacks@Runtime@System@bf@@CAXXZ" to i64), ptr %14, align 8
  %15 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %1, i32 0, i32 23
  store i64 ptrtoint (ptr @"?SetErrorString@Runtime@System@bf@@CAXPEAD@Z" to i64), ptr %15, align 8
  %16 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %1, i32 0, i32 24
  store i64 ptrtoint (ptr @"?DebugMessageData_SetupError@BfRtCallbacks@Runtime@System@bf@@CAXPEADH@Z" to i64), ptr %16, align 8
  %17 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %1, i32 0, i32 25
  store i64 ptrtoint (ptr @"?DebugMessageData_SetupProfilerCmd@BfRtCallbacks@Runtime@System@bf@@CAXPEAD@Z" to i64), ptr %17, align 8
  %18 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %1, i32 0, i32 26
  store i64 ptrtoint (ptr @"?DebugMessageData_Fatal@BfRtCallbacks@Runtime@System@bf@@CAXXZ" to i64), ptr %18, align 8
  %19 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %1, i32 0, i32 27
  store i64 ptrtoint (ptr @"?DebugMessageData_Clear@BfRtCallbacks@Runtime@System@bf@@CAXXZ" to i64), ptr %19, align 8
  %20 = getelementptr inbounds %"corlib.BfRtCallbacks@Runtime@System@bf", ptr %1, i32 0, i32 28
  %21 = load i64, ptr @"?CheckErrorHandler@Runtime@System@bf@@2V?$function_kind_arg1_arg2_arg3@HPEADPEADPEADTint@@@3@A", align 8
  %22 = inttoptr i64 %21 to ptr
  %23 = ptrtoint ptr %22 to i64
  store i64 %23, ptr %20, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@BfRtCallbacks@Runtime@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkStaticMembers@BfRtCallbacks@Runtime@System@bf@@KAXXZ"() #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface__im@BfRtCallbacks@Runtime@System@bf@@IEAAPEAVObject@34@H@Z"(ptr nocapture dereferenceable(224), i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers__im@BfRtCallbacks@Runtime@System@bf@@IEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?SetErrorString@Runtime@System@bf@@CAXPEAD@Z"(ptr) #0

declare ptr @tc_malloc(i64)

declare void @tc_free(ptr)

; Function Attrs: nounwind uwtable
declare ptr @"?GetType_@Type@System@bf@@KAPEAV123@H@Z"(i32) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i4$String@System@bf@@QEAAXAEATint@@@Z"(ptr, ptr dereferenceable(8)) #0

; Function Attrs: nounwind uwtable
declare i64 @"?this$calcAppend@i5$String@System@bf@@SATint@@XZ"() #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr noalias sret(%"corlib.StringView@System@bf"), ptr) #0

attributes #0 = { nounwind uwtable }
