; ModuleID = 'System_Reflection_UnspecializedGenericType'
source_filename = "System_Reflection_UnspecializedGenericType"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Result@PEAVType@System@bf@@@System@bf" = type opaque

; Function Attrs: nounwind uwtable
declare void @"?GetSpecializedType@UnspecializedGenericType@Reflection@System@bf@@QEAA?AU?$Result@PEAVType@System@bf@@@34@Tparams@@U?$Span@PEAVType@System@bf@@@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@PEAVType@System@bf@@@System@bf"), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@UnspecializedGenericType@Reflection@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@UnspecializedGenericType@Reflection@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  call void @"?__BfCtor@TypeInstance@Reflection@System@bf@@QEAAXXZ"(ptr %0)
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@UnspecializedGenericType@Reflection@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@UnspecializedGenericType@Reflection@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers@UnspecializedGenericType@Reflection@System@bf@@IEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@TypeInstance@Reflection@System@bf@@QEAAXXZ"(ptr) #0

attributes #0 = { nounwind uwtable }
