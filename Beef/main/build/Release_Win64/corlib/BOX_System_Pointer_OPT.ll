; ModuleID = 'BOX_System_Pointer'
source_filename = "BOX_System_Pointer"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Box@UPointer@System@bf" = type <{ %"corlib.Object@System@bf", %"corlib.Pointer@System@bf" }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.Pointer@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr }>
%"corlib.ValueType@System@bf" = type <{}>

; Function Attrs: nounwind uwtable
define void @"?ToString@?$Box@UPointer@System@bf@@@@QEAAXPEAVString@System@bf@@@Z"(ptr nocapture readonly %this, ptr %strBuffer) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %"corlib.?$Box@UPointer@System@bf", ptr %this, i64 0, i32 1
  %1 = load ptr, ptr %0, align 8
  tail call void @"?ToString__im@Pointer@System@bf@@QEAAXPEAVString@23@@Z"(ptr %1, ptr %strBuffer)
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@Pointer@System@bf@@QEAAXPEAVString@23@@Z"(ptr, ptr) local_unnamed_addr #0

attributes #0 = { nounwind uwtable }
