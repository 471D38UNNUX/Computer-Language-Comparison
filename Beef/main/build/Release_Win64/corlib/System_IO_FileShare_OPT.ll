; ModuleID = 'System_IO_FileShare'
source_filename = "System_IO_FileShare"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i1 @"?HasFlag__im@FileShare@IO@System@bf@@SA_NHW41234@@Z"(i32 %this, i32 %checkEnum) local_unnamed_addr #0 {
entry:
  %0 = and i32 %checkEnum, %this
  %1 = icmp eq i32 %0, %checkEnum
  ret i1 %1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
