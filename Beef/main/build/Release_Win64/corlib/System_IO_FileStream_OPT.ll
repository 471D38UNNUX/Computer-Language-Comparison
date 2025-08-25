; ModuleID = 'System_IO_FileStream'
source_filename = "System_IO_FileStream"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @"?__BfCtorClear@FileStream@IO@System@bf@@AEAAXXZ"(ptr nocapture writeonly %this) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds i8, ptr %this, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(89) %0, i8 0, i64 89, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@FileStream@IO@System@bf@@QEAAXXZ"(ptr %this) local_unnamed_addr #1 {
entry:
  tail call void @"?__BfCtor@BufferedFileStream@IO@System@bf@@QEAAXXZ"(ptr %this)
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@BufferedFileStream@IO@System@bf@@QEAAXXZ"(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable }
attributes #1 = { nounwind uwtable }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
