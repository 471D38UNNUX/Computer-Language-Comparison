; ModuleID = 'System_Span_System_StringView_Enumerator'
source_filename = "System_Span_System_StringView_Enumerator"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Result@UStringView@System@bf@@@System@bf" = type <{ %"corlib.Enum@System@bf", %"corlib.?$__TUPLE_val@UStringView@System@bf@@@bf", i8 }>
%"corlib.Enum@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$__TUPLE_val@UStringView@System@bf@@@bf" = type <{ %"corlib.Tuple@System@bf", %"corlib.StringView@System@bf" }>
%"corlib.Tuple@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.StringView@System@bf" = type <{ %"corlib.?$Span@D@System@bf" }>
%"corlib.?$Span@D@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf" = type <{ %"corlib.ValueType@System@bf", %"corlib.?$Span@UStringView@System@bf@@@System@bf", i64, ptr }>
%"corlib.?$Span@UStringView@System@bf@@@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define void @"?GetNext@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@QEAA?AU?$Result@?AUStringView@System@bf@@@34@XZ"(ptr nocapture %this, ptr noalias nocapture writeonly sret(%"corlib.?$Result@UStringView@System@bf@@@System@bf") %0) local_unnamed_addr #0 {
entry:
  %1 = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %this, i64 0, i32 2
  %2 = load i64, ptr %1, align 8
  %3 = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %this, i64 0, i32 1, i32 2
  %4 = load i64, ptr %3, align 8
  %5 = icmp ult i64 %2, %4
  br i1 %5, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %.sink.i = add i64 %4, 1
  %6 = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %this, i64 0, i32 3
  store ptr null, ptr %6, align 8
  store i64 %.sink.i, ptr %1, align 8
  br label %exit

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %this, align 8
  %8 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %7, i64 %2
  %.sink.i21 = add nuw i64 %2, 1
  %9 = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %this, i64 0, i32 3
  store ptr %8, ptr %9, align 8
  store i64 %.sink.i21, ptr %1, align 8
  %.unpack.elt1.i = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %8, i64 0, i32 1
  %.unpack.unpack2.i = load ptr, ptr %.unpack.elt1.i, align 8, !noalias !0
  %.unpack.elt3.i = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %8, i64 0, i32 2
  %.unpack.unpack4.i = load i64, ptr %.unpack.elt3.i, align 8, !noalias !0
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %.sink24 = phi ptr [ %.unpack.unpack2.i, %if.end ], [ null, %if.then ]
  %.sink23 = phi i64 [ %.unpack.unpack4.i, %if.end ], [ 0, %if.then ]
  %.sink = phi i8 [ 0, %if.end ], [ 1, %if.then ]
  %10 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 1
  store ptr %.sink24, ptr %10, align 8
  %11 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 2
  store i64 %.sink23, ptr %11, align 8
  %12 = getelementptr inbounds %"corlib.?$Result@UStringView@System@bf@@@System@bf", ptr %0, i64 0, i32 2
  store i8 %.sink, ptr %12, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @"?Dispose__im@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@QEAAXXZ"(ptr nocapture readnone dereferenceable(32) %this) local_unnamed_addr #1 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @"?__BfCtor@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@QEAAXU234@@Z"(ptr nocapture writeonly %this, ptr %list_mPtr, i64 %list_mLength) local_unnamed_addr #2 {
entry:
  store ptr %list_mPtr, ptr %this, align 8
  %0 = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %this, i64 0, i32 1, i32 2
  store i64 %list_mLength, ptr %0, align 8
  %1 = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %this, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i1 @"?MoveNext@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@QEAA_NXZ"(ptr nocapture %this) local_unnamed_addr #3 {
entry:
  %0 = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %this, i64 0, i32 2
  %1 = load i64, ptr %0, align 8
  %2 = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %this, i64 0, i32 1, i32 2
  %3 = load i64, ptr %2, align 8
  %4 = icmp ult i64 %1, %3
  br i1 %4, label %if.then, label %exit

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %this, align 8
  %6 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %5, i64 %1
  br label %exit

exit:                                             ; preds = %entry, %if.then
  %.sink1 = phi ptr [ %6, %if.then ], [ null, %entry ]
  %.sink.in = phi i64 [ %1, %if.then ], [ %3, %entry ]
  %.sink = add i64 %.sink.in, 1
  %7 = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %this, i64 0, i32 3
  store ptr %.sink1, ptr %7, align 8
  store i64 %.sink, ptr %0, align 8
  ret i1 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define void @"?get__Current__im@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@QEAA?AUStringView@34@XZ"(ptr nocapture readonly dereferenceable(32) %this, ptr noalias nocapture writeonly sret(%"corlib.StringView@System@bf") %0) local_unnamed_addr #0 {
entry:
  %1 = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %this, i64 0, i32 3
  %2 = load ptr, ptr %1, align 8
  %.unpack.elt1 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %2, i64 0, i32 1
  %.unpack.unpack2 = load ptr, ptr %.unpack.elt1, align 8
  %.unpack.elt3 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %2, i64 0, i32 2
  %.unpack.unpack4 = load i64, ptr %.unpack.elt3, align 8
  %.repack6 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 1
  store ptr %.unpack.unpack2, ptr %.repack6, align 8
  %.repack8 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 2
  store i64 %.unpack.unpack4, ptr %.repack8, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i1 @"?MoveNextRare@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@AEAA_NXZ"(ptr nocapture %this) local_unnamed_addr #3 {
entry:
  %0 = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %this, i64 0, i32 2
  %1 = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %this, i64 0, i32 1, i32 2
  %2 = load i64, ptr %1, align 8
  %3 = add i64 %2, 1
  store i64 %3, ptr %0, align 8
  %4 = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %this, i64 0, i32 3
  store ptr null, ptr %4, align 8
  ret i1 false
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }

!0 = !{!1}
!1 = distinct !{!1, !2, !"?get__Current__im@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@QEAA?AUStringView@34@XZ: argument 0"}
!2 = distinct !{!2, !"?get__Current__im@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@QEAA?AUStringView@34@XZ"}
