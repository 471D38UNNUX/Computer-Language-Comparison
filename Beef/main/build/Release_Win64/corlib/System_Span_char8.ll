; ModuleID = 'System_Span_char8'
source_filename = "System_Span_char8"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.Enumerator@?$Span@D@System@bf" = type opaque
%"corlib.?$Span@D@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.ValueType@System@bf" = type <{}>

; Function Attrs: nounwind uwtable
declare void @"?GetEnumerator__im@?$Span@D@System@bf@@QEAA?AUEnumerator@123@XZ"(ptr noalias sret(%"corlib.Enumerator@?$Span@D@System@bf"), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@?$Span@D@System@bf@@QEAAXPEAVString@23@@Z"(ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface__im@?$Span@D@System@bf@@IEAAPEAVObject@23@H@Z"(ptr, i64, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers__im@?$Span@D@System@bf@@IEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?IndexOf__im@?$Span@D@System@bf@@QEAATint@@D@Z"(ptr, i64, i8) #0

; Function Attrs: alwaysinline nounwind uwtable
define ptr @"?get__Ptr__im@?$Span@D@System@bf@@QEAAPEADXZ"(ptr %this_mPtr, i64 %this_mLength) #1 {
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
define i64 @"?get__Length__im@?$Span@D@System@bf@@QEAATint@@XZ"(ptr %this_mPtr, i64 %this_mLength) #1 {
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
declare void @"??B?$Span@D@System@bf@@SA?AU012@PEAV?$Array1@D@12@@Z"(ptr noalias sret(%"corlib.?$Span@D@System@bf"), ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare void @"?get____im@?$Span@D@System@bf@@QEAA?AU123@UIndexRange@23@@Z"(ptr noalias sret(%"corlib.?$Span@D@System@bf"), ptr, i64, ptr) #1

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"?get____im@UCHK$?$Span@D@System@bf@@QEAAAEADUIndex@23@@Z"(ptr, i64, ptr) #1

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"?get____im@UCHK$?$Span@D@System@bf@@QEAAAEADTint@@@Z"(ptr, i64, i64) #1

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@?$Span@D@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i32 0, i32 1
  store ptr null, ptr %1, align 8
  %2 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i32 0, i32 2
  store i64 0, ptr %2, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

attributes #0 = { nounwind uwtable }
attributes #1 = { alwaysinline nounwind uwtable }
