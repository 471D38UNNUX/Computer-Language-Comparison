; ModuleID = 'System_Span_uint8'
source_filename = "System_Span_uint8"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.Enumerator@?$Span@E@System@bf" = type opaque
%"corlib.?$Span@E@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.ValueType@System@bf" = type <{}>

; Function Attrs: nounwind uwtable
declare void @"?GetEnumerator__im@?$Span@E@System@bf@@QEAA?AUEnumerator@123@XZ"(ptr noalias sret(%"corlib.Enumerator@?$Span@E@System@bf"), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@?$Span@E@System@bf@@QEAAXPEAVString@23@@Z"(ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface__im@?$Span@E@System@bf@@IEAAPEAVObject@23@H@Z"(ptr, i64, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers__im@?$Span@E@System@bf@@IEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@?$Span@E@System@bf@@QEAAXPEAETint@@@Z"(ptr %this, ptr %memory, i64 %length) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.?$Span@E@System@bf", ptr %0, i32 0, i32 1
  store ptr %memory, ptr %1, align 8
  %2 = getelementptr inbounds %"corlib.?$Span@E@System@bf", ptr %0, i32 0, i32 2
  store i64 %length, ptr %2, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?Assert@Debug@Diagnostics@System@bf@@SAX_NPEAVString@34@1Tint@@@Z"(i1 zeroext, ptr, ptr, i64) #0

; Function Attrs: alwaysinline nounwind uwtable
define ptr @"?get__Ptr__im@?$Span@E@System@bf@@QEAAPEAEXZ"(ptr %this_mPtr, i64 %this_mLength) #1 {
entry:
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  %__return = alloca ptr, align 8
  store ptr %this_mPtr, ptr %0, align 8
  store i64 %this_mLength, ptr %1, align 8
  store ptr %this_mPtr, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %2 = load ptr, ptr %__return, align 8
  ret ptr %2
}

; Function Attrs: alwaysinline nounwind uwtable
define i64 @"?get__Length__im@?$Span@E@System@bf@@QEAATint@@XZ"(ptr %this_mPtr, i64 %this_mLength) #1 {
entry:
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  %__return = alloca i64, align 8
  store ptr %this_mPtr, ptr %0, align 8
  store i64 %this_mLength, ptr %1, align 8
  store i64 %this_mLength, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %2 = load i64, ptr %__return, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
declare void @"??B?$Span@E@System@bf@@SA?AU012@PEAV?$Array1@E@12@@Z"(ptr noalias sret(%"corlib.?$Span@E@System@bf"), ptr) #0

attributes #0 = { nounwind uwtable }
attributes #1 = { alwaysinline nounwind uwtable }
