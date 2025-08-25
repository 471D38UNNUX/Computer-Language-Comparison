; ModuleID = 'System_Windows_IntBool'
source_filename = "System_Windows_IntBool"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i1 @"??BIntBool@Windows@System@bf@@SA_NV0123@@Z"(i32 %value) local_unnamed_addr #0 {
entry:
  %0 = icmp ne i32 %value, 0
  ret i1 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
