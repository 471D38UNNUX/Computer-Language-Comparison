; ModuleID = 'System_Array1_System_String'
source_filename = "System_Array1_System_String"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Array1@PEAVString@System@bf@@@System@bf" = type <{ %"corlib.Array@System@bf", [4 x i8], ptr }>
%"corlib.Array@System@bf" = type <{ %"corlib.Object@System@bf", i32 }>
%"corlib.Object@System@bf" = type <{ ptr }>

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@?$Array1@PEAVString@System@bf@@@System@bf@@QEAAXXZ"(ptr %this) local_unnamed_addr #0 {
entry:
  tail call void @"?__BfCtor@Array@System@bf@@QEAAXXZ"(ptr %this)
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@Array@System@bf@@QEAAXXZ"(ptr) local_unnamed_addr #0

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define nonnull ptr @"?get__@UCHK$?$Array1@PEAVString@System@bf@@@System@bf@@QEAAAEAPEAVString@23@Tint@@@Z"(ptr readnone %this, i64 %idx) local_unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds %"corlib.?$Array1@PEAVString@System@bf@@@System@bf", ptr %this, i64 0, i32 2
  %1 = getelementptr inbounds ptr, ptr %0, i64 %idx
  ret ptr %1
}

attributes #0 = { nounwind uwtable }
attributes #1 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
