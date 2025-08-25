; ModuleID = 'System_Globalization_Calendar'
source_filename = "System_Globalization_Calendar"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.Calendar@Globalization@System@bf" = type <{ %"corlib.Object@System@bf", i64, i64, i1 }>
%"corlib.Object@System@bf" = type <{ ptr }>

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @"?__BfCtor@Calendar@Globalization@System@bf@@IEAAXXZ"(ptr nocapture writeonly %this) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %"corlib.Calendar@Globalization@System@bf", ptr %this, i64 0, i32 1
  store i64 -1, ptr %0, align 8
  %1 = getelementptr inbounds %"corlib.Calendar@Globalization@System@bf", ptr %this, i64 0, i32 3
  store i1 false, ptr %1, align 1
  %2 = getelementptr inbounds %"corlib.Calendar@Globalization@System@bf", ptr %this, i64 0, i32 2
  store i64 -1, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @"?SetReadOnlyState@Calendar@Globalization@System@bf@@AEAAX_N@Z"(ptr nocapture writeonly %this, i1 zeroext %readOnly) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %"corlib.Calendar@Globalization@System@bf", ptr %this, i64 0, i32 3
  store i1 %readOnly, ptr %0, align 1
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable }
