; ModuleID = 'System_IO_Stream'
source_filename = "System_IO_Stream"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Result@X@System@bf" = type <{ %"corlib.Enum@System@bf", [0 x i8], i8 }>
%"corlib.Enum@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.ValueType@System@bf" = type <{}>

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @"?Flush@Stream@IO@System@bf@@UEAA?AU?$Result@X@34@XZ"(ptr nocapture readnone %this, ptr noalias nocapture writeonly sret(%"corlib.?$Result@X@System@bf") %0) local_unnamed_addr #0 {
entry:
  %.repack2 = getelementptr inbounds %"corlib.?$Result@X@System@bf", ptr %0, i64 0, i32 2
  store i8 0, ptr %.repack2, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @"?__BfCtor@Stream@IO@System@bf@@QEAAXXZ"(ptr nocapture readnone %this) local_unnamed_addr #1 {
entry:
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
