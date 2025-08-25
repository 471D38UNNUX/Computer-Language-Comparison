; ModuleID = 'BOX_System_Int'
source_filename = "BOX_System_Int"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Box@VInt@System@bf" = type <{ %"corlib.Object@System@bf", i64 }>
%"corlib.Object@System@bf" = type <{ ptr }>

; Function Attrs: nounwind uwtable
define void @"?ToString@?$Box@VInt@System@bf@@@@QEAAXPEAVString@System@bf@@@Z"(ptr nocapture readonly %this, ptr %outString) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %"corlib.?$Box@VInt@System@bf", ptr %this, i64 0, i32 1
  %1 = load i64, ptr %0, align 8
  tail call void @"?ToString__im@Int@System@bf@@SAXTint@@PEAVString@23@@Z"(i64 %1, ptr %outString)
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?ToString@?$Box@VInt@System@bf@@@@QEAAXPEAVString@System@bf@@0PEAVIFormatProvider@34@@Z"(ptr nocapture readonly %this, ptr %outString, ptr %format, ptr %formatProvider) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %"corlib.?$Box@VInt@System@bf", ptr %this, i64 0, i32 1
  %1 = load i64, ptr %0, align 8
  tail call void @"?ToString__im@Int@System@bf@@SAXTint@@PEAVString@23@1PEAVIFormatProvider@23@@Z"(i64 %1, ptr %outString, ptr %format, ptr %formatProvider)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i1 @"?get__IsNaN@IIsNaN@System@bf@@?$Box@VInt@System@bf@@@@AEAA_NXZ"(ptr nocapture readnone %this) local_unnamed_addr #1 {
entry:
  ret i1 false
}

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@Int@System@bf@@SAXTint@@PEAVString@23@@Z"(i64, ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@Int@System@bf@@SAXTint@@PEAVString@23@1PEAVIFormatProvider@23@@Z"(i64, ptr, ptr, ptr) local_unnamed_addr #0

attributes #0 = { nounwind uwtable }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
