; ModuleID = 'System_Console_CONSOLE_SCREEN_BUFFER_INFO'
source_filename = "System_Console_CONSOLE_SCREEN_BUFFER_INFO"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @"?__BfCtor@CONSOLE_SCREEN_BUFFER_INFO@Console@System@bf@@QEAAXXZ"(ptr nocapture writeonly %this) local_unnamed_addr #0 {
entry:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %this, i8 0, i64 22, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
