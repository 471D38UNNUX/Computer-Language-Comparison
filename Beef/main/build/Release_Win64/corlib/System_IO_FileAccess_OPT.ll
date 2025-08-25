; ModuleID = 'System_IO_FileAccess'
source_filename = "System_IO_FileAccess"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i1 @"?HasFlag__im@FileAccess@IO@System@bf@@SA_NCW41234@@Z"(i8 %this, i8 %checkEnum) local_unnamed_addr #0 {
entry:
  %0 = and i8 %checkEnum, %this
  %1 = icmp eq i8 %0, %checkEnum
  ret i1 %1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
