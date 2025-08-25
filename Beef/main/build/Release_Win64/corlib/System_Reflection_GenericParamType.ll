; ModuleID = 'System_Reflection_GenericParamType'
source_filename = "System_Reflection_GenericParamType"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@GenericParamType@Reflection@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@GenericParamType@Reflection@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  call void @"?__BfCtor@Type@System@bf@@IEAAXXZ"(ptr %0)
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?GetName@GenericParamType@Reflection@System@bf@@QEAAXPEAVString@34@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetFullName@GenericParamType@Reflection@System@bf@@QEAAXPEAVString@34@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@GenericParamType@Reflection@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@GenericParamType@Reflection@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@Type@System@bf@@IEAAXXZ"(ptr) #0

attributes #0 = { nounwind uwtable }
