; ModuleID = 'System_StringView'
source_filename = "System_StringView"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Span@D@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$__TUPLE_c_length@_UC@bf" = type <{ %"corlib.Tuple@System@bf", i32, i8 }>
%"corlib.Tuple@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.StringView@System@bf" = type <{ %"corlib.?$Span@D@System@bf" }>
%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@StringView@System@bf@@QEAAXXZ"(ptr %this) local_unnamed_addr #0 {
entry:
  tail call void @"?__BfCtor@?$Span@D@System@bf@@QEAAXXZ"(ptr %this)
  %0 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %this, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @"?get____im@UCHK$StringView@System@bf@@QEAAAEADTint@@@Z"(ptr readnone %this_mPtr, i64 %this_mLength, i64 %index) local_unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds i8, ptr %this_mPtr, i64 %index
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define i1 @"??8StringView@System@bf@@SA_NU012@0@Z"(ptr %val1_mPtr, i64 %val1_mLength, ptr %val2_mPtr, i64 %val2_mLength) local_unnamed_addr #0 {
entry:
  %.not = icmp eq i64 %val1_mLength, %val2_mLength
  br i1 %.not, label %if.end, label %exit

if.end:                                           ; preds = %entry
  %0 = icmp eq ptr %val1_mPtr, %val2_mPtr
  br i1 %0, label %exit, label %if.end3

if.end3:                                          ; preds = %if.end
  %1 = icmp eq ptr %val1_mPtr, null
  %2 = icmp eq ptr %val2_mPtr, null
  %3 = select i1 %1, i1 true, i1 %2
  br i1 %3, label %exit, label %if.end5

if.end5:                                          ; preds = %if.end3
  %EqualsHelper = tail call i1 @"?EqualsHelper@String@System@bf@@CA_NPEAD0Tint@@@Z"(ptr nonnull %val1_mPtr, ptr nonnull %val2_mPtr, i64 %val1_mLength)
  br label %exit

exit:                                             ; preds = %if.end3, %if.end, %entry, %if.end5
  %__return.0 = phi i1 [ %EqualsHelper, %if.end5 ], [ false, %entry ], [ true, %if.end ], [ false, %if.end3 ]
  ret i1 %__return.0
}

; Function Attrs: nounwind uwtable
define void @"?GetChar32__im@StringView@System@bf@@QEAA?AU?$__TUPLE_c_length@_UC@3@Tint@@@Z"(ptr noalias nocapture writeonly sret(%"corlib.?$__TUPLE_c_length@_UC@bf") %0, ptr %this_mPtr, i64 %this_mLength, i64 %idx) local_unnamed_addr #0 {
entry:
  %1 = alloca %"corlib.?$__TUPLE_c_length@_UC@bf", align 4
  %2 = getelementptr inbounds i8, ptr %this_mPtr, i64 %idx
  %3 = load i8, ptr %2, align 1
  %4 = icmp sgt i8 %3, -1
  br i1 %4, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = zext nneg i8 %3 to i32
  br label %exit

if.end:                                           ; preds = %entry
  %6 = and i8 %3, -64
  %7 = icmp eq i8 %6, -128
  br i1 %7, label %exit, label %if.end2

if.end2:                                          ; preds = %if.end
  %8 = sub i64 %this_mLength, %idx
  call void @"?Decode@UTF8@Text@System@bf@@SA?AU?$__TUPLE_c_length@_UC@4@PEADTint@@@Z"(ptr nonnull sret(%"corlib.?$__TUPLE_c_length@_UC@bf") %1, ptr nonnull %2, i64 %8)
  %.fca.1.gep = getelementptr inbounds %"corlib.?$__TUPLE_c_length@_UC@bf", ptr %1, i64 0, i32 1
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %.fca.2.gep = getelementptr inbounds %"corlib.?$__TUPLE_c_length@_UC@bf", ptr %1, i64 0, i32 2
  %.fca.2.load = load i8, ptr %.fca.2.gep, align 4
  br label %exit

exit:                                             ; preds = %if.end, %if.end2, %if.then
  %.fca.1.load.sink = phi i32 [ %.fca.1.load, %if.end2 ], [ %5, %if.then ], [ 0, %if.end ]
  %.fca.2.load.sink = phi i8 [ %.fca.2.load, %if.end2 ], [ 1, %if.then ], [ 0, %if.end ]
  %.repack14 = getelementptr inbounds %"corlib.?$__TUPLE_c_length@_UC@bf", ptr %0, i64 0, i32 1
  store i32 %.fca.1.load.sink, ptr %.repack14, align 4
  %.repack16 = getelementptr inbounds %"corlib.?$__TUPLE_c_length@_UC@bf", ptr %0, i64 0, i32 2
  store i8 %.fca.2.load.sink, ptr %.repack16, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr noalias nocapture writeonly sret(%"corlib.StringView@System@bf") %0, ptr %str) local_unnamed_addr #0 {
entry:
  %.not = icmp eq ptr %str, null
  br i1 %.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %get__Ptr = tail call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr nonnull %str)
  %1 = getelementptr inbounds %"corlib.String@System@bf", ptr %str, i64 0, i32 1
  %2 = load i32, ptr %1, align 4
  %3 = sext i32 %2 to i64
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %sv.sroa.0.0 = phi ptr [ %get__Ptr, %if.then ], [ null, %entry ]
  %sv.sroa.3.0 = phi i64 [ %3, %if.then ], [ 0, %entry ]
  %.repack1 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 1
  store ptr %sv.sroa.0.0, ptr %.repack1, align 8
  %.repack3 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 2
  store i64 %sv.sroa.3.0, ptr %.repack3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?Decode@UTF8@Text@System@bf@@SA?AU?$__TUPLE_c_length@_UC@4@PEADTint@@@Z"(ptr noalias sret(%"corlib.?$__TUPLE_c_length@_UC@bf"), ptr, i64) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare i1 @"?EqualsHelper@String@System@bf@@CA_NPEAD0Tint@@@Z"(ptr, ptr, i64) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@?$Span@D@System@bf@@QEAAXXZ"(ptr) local_unnamed_addr #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { nounwind uwtable }
attributes #1 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
