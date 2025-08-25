; ModuleID = 'System_Reflection_ConstExprType'
source_filename = "System_Reflection_ConstExprType"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: nounwind uwtable
declare ptr @"?get__ValueType@ConstExprType@Reflection@System@bf@@QEAAPEAVType@34@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__ValueData@ConstExprType@Reflection@System@bf@@QEAAAEA_JXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@ConstExprType@Reflection@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@ConstExprType@Reflection@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  call void @"?__BfCtor@Type@System@bf@@IEAAXXZ"(ptr %0)
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?GetFullName@ConstExprType@Reflection@System@bf@@QEAAXPEAVString@34@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@ConstExprType@Reflection@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@ConstExprType@Reflection@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers@ConstExprType@Reflection@System@bf@@IEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@Type@System@bf@@IEAAXXZ"(ptr) #0

attributes #0 = { nounwind uwtable }
