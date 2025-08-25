; ModuleID = 'System_Reflection_RefType'
source_filename = "System_Reflection_RefType"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: nounwind uwtable
declare i8 @"?get__RefKind@RefType@Reflection@System@bf@@QEAA?AW4RefKind@1234@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@RefType@Reflection@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@RefType@Reflection@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  call void @"?__BfCtor@Type@System@bf@@IEAAXXZ"(ptr %0)
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?get__UnderlyingType@RefType@Reflection@System@bf@@QEAAPEAVType@34@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetFullName@RefType@Reflection@System@bf@@QEAAXPEAVString@34@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@RefType@Reflection@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@RefType@Reflection@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers@RefType@Reflection@System@bf@@IEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@Type@System@bf@@IEAAXXZ"(ptr) #0

attributes #0 = { nounwind uwtable }
