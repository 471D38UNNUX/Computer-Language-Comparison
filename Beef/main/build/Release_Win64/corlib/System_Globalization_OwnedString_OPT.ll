; ModuleID = 'System_Globalization_OwnedString'
source_filename = "System_Globalization_OwnedString"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.OwnedString@Globalization@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i1 }>
%"corlib.ValueType@System@bf" = type <{}>

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr nocapture writeonly %this, ptr %unownedString) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %this, i64 0, i32 1
  store ptr %unownedString, ptr %0, align 8
  %1 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %this, i64 0, i32 2
  store i1 false, ptr %1, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr nocapture readonly %this) local_unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %this, i64 0, i32 2
  %1 = load i1, ptr %0, align 1
  br i1 %1, label %if.then, label %exit

if.then:                                          ; preds = %entry
  %2 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %this, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %exit, label %delete.body

delete.body:                                      ; preds = %if.then
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr nonnull %3) #2
  tail call void @tc_free(ptr nonnull %3) #2
  br label %exit

exit:                                             ; preds = %entry, %delete.body, %if.then
  ret void
}

declare void @tc_free(ptr) local_unnamed_addr

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable }
attributes #1 = { nounwind uwtable }
attributes #2 = { nounwind }
