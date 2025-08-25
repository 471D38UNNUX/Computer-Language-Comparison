; ModuleID = 'System_Int_Simple'
source_filename = "System_Int_Simple"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: nounwind uwtable
define void @"?ToString__im@Simple@Int@System@bf@@SAXTint@@PEAVString@34@@Z"(i64 %this, ptr %strBuffer) local_unnamed_addr #0 {
entry:
  tail call void @"?ToString__im@Int@System@bf@@SAXTint@@PEAVString@23@@Z"(i64 %this, ptr %strBuffer)
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@Int@System@bf@@SAXTint@@PEAVString@23@@Z"(i64, ptr) local_unnamed_addr #0

attributes #0 = { nounwind uwtable }
