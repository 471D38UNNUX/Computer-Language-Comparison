; ModuleID = 'System_Reflection_SpecializedGenericType'
source_filename = "System_Reflection_SpecializedGenericType"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: nounwind uwtable
declare ptr @"?get__UnspecializedType@SpecializedGenericType@Reflection@System@bf@@QEAAPEAVType@34@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?GetGenericArg@SpecializedGenericType@Reflection@System@bf@@QEAAPEAVType@34@Tint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@SpecializedGenericType@Reflection@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@SpecializedGenericType@Reflection@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  call void @"?__BfCtor@TypeInstance@Reflection@System@bf@@QEAAXXZ"(ptr %0)
  ret void
}

; Function Attrs: nounwind uwtable
declare i32 @"?get__GenericParamCount@SpecializedGenericType@Reflection@System@bf@@QEAAHXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetFullName@SpecializedGenericType@Reflection@System@bf@@QEAAXPEAVString@34@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@SpecializedGenericType@Reflection@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@SpecializedGenericType@Reflection@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers@SpecializedGenericType@Reflection@System@bf@@IEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@TypeInstance@Reflection@System@bf@@QEAAXXZ"(ptr) #0

attributes #0 = { nounwind uwtable }
