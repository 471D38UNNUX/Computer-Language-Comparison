; ModuleID = 'System_Type'
source_filename = "System_Type"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.Type@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, i32, i32, i32, i8, i8, i8 }>

@"?sTypes@Type@System@bf@@2PEAPEAV123@A" = external local_unnamed_addr global ptr, align 8
@__bfStrObj95 = external constant %"corlib.String@System@bf"
@__bfStrObj96 = external constant %"corlib.String@System@bf"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define ptr @"?GetType_@Type@System@bf@@KAPEAV123@H@Z"(i32 %typeId) local_unnamed_addr #0 {
entry:
  %0 = sext i32 %typeId to i64
  %1 = getelementptr inbounds ptr, ptr @"?sTypes@Type@System@bf@@2PEAPEAV123@A", i64 %0
  %2 = load ptr, ptr %1, align 8
  ret ptr %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @"?__BfCtor@Type@System@bf@@IEAAXXZ"(ptr nocapture readnone %this) local_unnamed_addr #1 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?ToString@Type@System@bf@@QEAAXPEAVString@23@@Z"(ptr nocapture readonly %this, ptr %strBuffer) local_unnamed_addr #2 {
entry:
  tail call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr %strBuffer, ptr nonnull @__bfStrObj95)
  %0 = getelementptr inbounds %"corlib.Type@System@bf", ptr %this, i64 0, i32 2
  %1 = load i32, ptr %0, align 4
  tail call void @"?ToString__im@Int32@System@bf@@SAXHPEAVString@23@@Z"(i32 %1, ptr %strBuffer)
  tail call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr %strBuffer, ptr nonnull @__bfStrObj96)
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr, ptr) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@Int32@System@bf@@SAXHPEAVString@23@@Z"(i32, ptr) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
attributes #2 = { nounwind uwtable }
