; ModuleID = 'System_Span_uint8'
source_filename = "System_Span_uint8"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Span@E@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.ValueType@System@bf" = type <{}>

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @"?__BfCtor@?$Span@E@System@bf@@QEAAXPEAETint@@@Z"(ptr nocapture writeonly %this, ptr %memory, i64 %length) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %"corlib.?$Span@E@System@bf", ptr %this, i64 0, i32 1
  store ptr %memory, ptr %0, align 8
  %1 = getelementptr inbounds %"corlib.?$Span@E@System@bf", ptr %this, i64 0, i32 2
  store i64 %length, ptr %1, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @"?get__Ptr__im@?$Span@E@System@bf@@QEAAPEAEXZ"(ptr readnone returned %this_mPtr, i64 %this_mLength) local_unnamed_addr #1 {
entry:
  ret ptr %this_mPtr
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i64 @"?get__Length__im@?$Span@E@System@bf@@QEAATint@@XZ"(ptr nocapture readnone %this_mPtr, i64 returned %this_mLength) local_unnamed_addr #1 {
entry:
  ret i64 %this_mLength
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable }
attributes #1 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
