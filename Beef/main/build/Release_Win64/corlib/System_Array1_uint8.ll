; ModuleID = 'System_Array1_uint8'
source_filename = "System_Array1_uint8"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.Enumerator@?$Span@E@System@bf" = type opaque
%"corlib.?$Array1@E@System@bf" = type <{ %"corlib.Array@System@bf", i8 }>
%"corlib.Array@System@bf" = type <{ %"corlib.Object@System@bf", i32 }>
%"corlib.Object@System@bf" = type <{ ptr }>

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"?GetRef@?$Array1@E@System@bf@@AEAAAEAETint@@@Z"(ptr, i64) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"?GetRefChecked@?$Array1@E@System@bf@@AEAAAEAETint@@@Z"(ptr, i64) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"?CArray@?$Array1@E@System@bf@@QEAAPEAEXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetEnumerator@?$Array1@E@System@bf@@QEAA?AUEnumerator@?$Span@E@23@XZ"(ptr, ptr noalias sret(%"corlib.Enumerator@?$Span@E@System@bf")) #1

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers@?$Array1@E@System@bf@@IEAAXXZ"(ptr) #1

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@?$Array1@E@System@bf@@IEAAPEAVObject@23@H@Z"(ptr, i32) #1

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@?$Array1@E@System@bf@@IEAAPEAVObject@23@H@Z"(ptr, i32) #1

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@?$Array1@E@System@bf@@QEAAXXZ"(ptr %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  call void @"?__BfCtor@Array@System@bf@@QEAAXXZ"(ptr %0)
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@Array@System@bf@@QEAAXXZ"(ptr) #1

; Function Attrs: alwaysinline nounwind uwtable
define ptr @"?get__Ptr@?$Array1@E@System@bf@@QEAAPEAEXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.?$Array1@E@System@bf", ptr %0, i32 0, i32 1
  store ptr %1, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %2 = load ptr, ptr %__return, align 8
  ret ptr %2
}

attributes #0 = { alwaysinline nounwind uwtable }
attributes #1 = { nounwind uwtable }
