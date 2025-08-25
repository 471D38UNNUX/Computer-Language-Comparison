; ModuleID = 'System_Reflection_ArrayType'
source_filename = "System_Reflection_ArrayType"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Result@PEAVObject@System@bf@@@System@bf" = type opaque

; Function Attrs: nounwind uwtable
declare void @"?CreateObject@ArrayType@Reflection@System@bf@@QEAA?AU?$Result@PEAVObject@System@bf@@@34@H@Z"(ptr, ptr noalias sret(%"corlib.?$Result@PEAVObject@System@bf@@@System@bf"), i32) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@ArrayType@Reflection@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@ArrayType@Reflection@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  call void @"?__BfCtor@SpecializedGenericType@Reflection@System@bf@@QEAAXXZ"(ptr %0)
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?GetFullName@ArrayType@Reflection@System@bf@@QEAAXPEAVString@34@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@ArrayType@Reflection@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@ArrayType@Reflection@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers@ArrayType@Reflection@System@bf@@IEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@SpecializedGenericType@Reflection@System@bf@@QEAAXXZ"(ptr) #0

attributes #0 = { nounwind uwtable }
