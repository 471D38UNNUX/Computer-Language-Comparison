; ModuleID = 'System_ConsoleColor'
source_filename = "System_ConsoleColor"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @"?set__ConsoleTextAttribute@ConsoleColor@System@bf@@SAXCE@Z"(ptr nocapture writeonly %this, i8 %value) local_unnamed_addr #0 {
entry:
  store i8 %value, ptr %this, align 1
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable }
