; ModuleID = 'System_Int'
source_filename = "System_Int"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i1 @"?get__IsNaN__im@IIsNaN@System@bf@@Int@23@CA_NTint@@@Z"(i64 %this) local_unnamed_addr #0 {
entry:
  ret i1 false
}

; Function Attrs: nounwind uwtable
define void @"?ToString__im@Int@System@bf@@SAXTint@@PEAVString@23@1PEAVIFormatProvider@23@@Z"(i64 %this, ptr %outString, ptr %format, ptr %formatProvider) local_unnamed_addr #1 {
entry:
  tail call void @"?ToString__im@Int64@System@bf@@SAX_JPEAVString@23@1PEAVIFormatProvider@23@@Z"(i64 %this, ptr %outString, ptr %format, ptr %formatProvider)
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?ToString__im@Int@System@bf@@SAXTint@@PEAVString@23@@Z"(i64 %this, ptr %outString) local_unnamed_addr #1 {
entry:
  tail call void @"?ToString__im@Int64@System@bf@@SAX_JPEAVString@23@@Z"(i64 %this, ptr %outString)
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@Int64@System@bf@@SAX_JPEAVString@23@@Z"(i64, ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@Int64@System@bf@@SAX_JPEAVString@23@1PEAVIFormatProvider@23@@Z"(i64, ptr, ptr, ptr) local_unnamed_addr #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
attributes #1 = { nounwind uwtable }
