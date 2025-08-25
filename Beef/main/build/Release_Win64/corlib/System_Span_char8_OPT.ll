; ModuleID = 'System_Span_char8'
source_filename = "System_Span_char8"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Span@D@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.ValueType@System@bf" = type <{}>

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @"?get__Ptr__im@?$Span@D@System@bf@@QEAAPEADXZ"(ptr readnone returned %this_mPtr, i64 %this_mLength) local_unnamed_addr #0 {
entry:
  ret ptr %this_mPtr
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i64 @"?get__Length__im@?$Span@D@System@bf@@QEAATint@@XZ"(ptr nocapture readnone %this_mPtr, i64 returned %this_mLength) local_unnamed_addr #0 {
entry:
  ret i64 %this_mLength
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @"?__BfCtor@?$Span@D@System@bf@@QEAAXXZ"(ptr nocapture writeonly %this) local_unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %this, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
