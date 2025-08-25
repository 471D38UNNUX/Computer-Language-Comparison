; ModuleID = 'System_Collections_List_System_Object_Enumerator'
source_filename = "System_Collections_List_System_Object_Enumerator"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Result@PEAVObject@System@bf@@@System@bf" = type <{ %"corlib.Enum@System@bf", %"corlib.?$__TUPLE_val@PEAVObject@System@bf@@@bf", i8 }>
%"corlib.Enum@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$__TUPLE_val@PEAVObject@System@bf@@@bf" = type <{ %"corlib.Tuple@System@bf", ptr }>
%"corlib.Tuple@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64, ptr }>
%"corlib.?$List@PEAVObject@System@bf@@@Collections@System@bf" = type <{ %"corlib.Object@System@bf", ptr, i32, i32 }>
%"corlib.Object@System@bf" = type <{ ptr }>

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define void @"?GetNext@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAA?AU?$Result@PEAVObject@System@bf@@@45@XZ"(ptr nocapture %this, ptr noalias nocapture writeonly sret(%"corlib.?$Result@PEAVObject@System@bf@@@System@bf") %0) local_unnamed_addr #0 {
entry:
  %1 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %this, i64 0, i32 1
  %2 = load ptr, ptr %1, align 8
  %3 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %this, i64 0, i32 2
  %4 = load i64, ptr %3, align 8
  %5 = getelementptr inbounds %"corlib.?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %2, i64 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = zext i32 %6 to i64
  %8 = icmp ult i64 %4, %7
  br i1 %8, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = sext i32 %6 to i64
  %.sink.i = add nsw i64 %9, 1
  %10 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %this, i64 0, i32 3
  store ptr null, ptr %10, align 8
  store i64 %.sink.i, ptr %3, align 8
  br label %exit

if.end:                                           ; preds = %entry
  %11 = getelementptr inbounds %"corlib.?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds ptr, ptr %12, i64 %4
  %.sink.i13 = add nuw nsw i64 %4, 1
  %14 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %this, i64 0, i32 3
  store ptr %13, ptr %14, align 8
  store i64 %.sink.i13, ptr %3, align 8
  %15 = load ptr, ptr %13, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %.sink15 = phi ptr [ %15, %if.end ], [ null, %if.then ]
  %.sink = phi i8 [ 0, %if.end ], [ 1, %if.then ]
  store ptr %.sink15, ptr %0, align 8
  %16 = getelementptr inbounds %"corlib.?$Result@PEAVObject@System@bf@@@System@bf", ptr %0, i64 0, i32 2
  store i8 %.sink, ptr %16, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @"?Dispose__im@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXXZ"(ptr nocapture readnone %this_mList, i64 %this_mIndex, ptr nocapture readnone %this_mCurrent) local_unnamed_addr #1 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @"?__BfCtor@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXPEAV2345@@Z"(ptr nocapture writeonly %this, ptr %list) local_unnamed_addr #2 {
entry:
  %0 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %this, i64 0, i32 1
  store ptr %list, ptr %0, align 8
  %1 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %this, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define noundef i1 @"?MoveNext@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAA_NXZ"(ptr nocapture %this) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %this, i64 0, i32 1
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %this, i64 0, i32 2
  %3 = load i64, ptr %2, align 8
  %4 = getelementptr inbounds %"corlib.?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = icmp ult i64 %3, %6
  br i1 %7, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = getelementptr inbounds %"corlib.?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds ptr, ptr %9, i64 %3
  br label %exit

if.end:                                           ; preds = %entry
  %11 = sext i32 %5 to i64
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %.sink2 = phi ptr [ %10, %if.then ], [ null, %if.end ]
  %.sink.in = phi i64 [ %3, %if.then ], [ %11, %if.end ]
  %.sink = add nsw i64 %.sink.in, 1
  %12 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %this, i64 0, i32 3
  store ptr %.sink2, ptr %12, align 8
  store i64 %.sink, ptr %2, align 8
  ret i1 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @"?get__Current__im@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAPEAVObject@45@XZ"(ptr nocapture readnone %this_mList, i64 %this_mIndex, ptr nocapture readonly %this_mCurrent) local_unnamed_addr #3 {
entry:
  %0 = load ptr, ptr %this_mCurrent, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define noundef i1 @"?MoveNextRare@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@AEAA_NXZ"(ptr nocapture %this) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %this, i64 0, i32 2
  %1 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %this, i64 0, i32 1
  %2 = load ptr, ptr %1, align 8
  %3 = getelementptr inbounds %"corlib.?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %2, i64 0, i32 2
  %4 = load i32, ptr %3, align 4
  %5 = sext i32 %4 to i64
  %6 = add nsw i64 %5, 1
  store i64 %6, ptr %0, align 8
  %7 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %this, i64 0, i32 3
  store ptr null, ptr %7, align 8
  ret i1 false
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
