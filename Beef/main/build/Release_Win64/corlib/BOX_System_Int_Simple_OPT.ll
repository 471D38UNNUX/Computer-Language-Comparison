; ModuleID = 'BOX_System_Int_Simple'
source_filename = "BOX_System_Int_Simple"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Box@VSimple@Int@System@bf" = type <{ %"corlib.Object@System@bf", i64 }>
%"corlib.Object@System@bf" = type <{ ptr }>

; Function Attrs: nounwind uwtable
define void @"?ToString@?$Box@VSimple@Int@System@bf@@@@QEAAXPEAVString@System@bf@@@Z"(ptr nocapture readonly %this, ptr %strBuffer) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %"corlib.?$Box@VSimple@Int@System@bf", ptr %this, i64 0, i32 1
  %1 = load i64, ptr %0, align 8
  tail call void @"?ToString__im@Simple@Int@System@bf@@SAXTint@@PEAVString@34@@Z"(i64 %1, ptr %strBuffer)
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@Simple@Int@System@bf@@SAXTint@@PEAVString@34@@Z"(i64, ptr) local_unnamed_addr #0

attributes #0 = { nounwind uwtable }
