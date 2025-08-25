; ModuleID = 'BOX_System_Pointer'
source_filename = "BOX_System_Pointer"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Box@UPointer@System@bf" = type <{ %"corlib.Object@System@bf", %"corlib.Pointer@System@bf" }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.Pointer@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr }>
%"corlib.ValueType@System@bf" = type <{}>

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@?$Box@UPointer@System@bf@@@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?ToString@?$Box@UPointer@System@bf@@@@QEAAXPEAVString@System@bf@@@Z"(ptr %this, ptr %strBuffer) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.?$Box@UPointer@System@bf", ptr %0, i32 0, i32 1
  %2 = getelementptr inbounds %"corlib.Pointer@System@bf", ptr %1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  tail call void @"?ToString__im@Pointer@System@bf@@QEAAXPEAVString@23@@Z"(ptr %3, ptr %strBuffer)
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@?$Box@UPointer@System@bf@@@@IEAAPEAVObject@System@bf@@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@?$Box@UPointer@System@bf@@@@IEAAPEAVObject@System@bf@@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers@?$Box@UPointer@System@bf@@@@IEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?GetHashCode@?$Box@UPointer@System@bf@@@@QEAATint@@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@Pointer@System@bf@@QEAAXPEAVString@23@@Z"(ptr, ptr) #0

attributes #0 = { nounwind uwtable }
