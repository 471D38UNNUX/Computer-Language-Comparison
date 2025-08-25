; ModuleID = 'System_Char8'
source_filename = "System_Char8"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i1 @"?get__IsDigit__im@Char8@System@bf@@SA_ND@Z"(i8 %this) local_unnamed_addr #0 {
entry:
  %0 = add i8 %this, -48
  %spec.select = icmp ult i8 %0, 10
  ret i1 %spec.select
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
