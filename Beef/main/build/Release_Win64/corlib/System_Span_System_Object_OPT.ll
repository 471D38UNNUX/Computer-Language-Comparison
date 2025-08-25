; ModuleID = 'System_Span_System_Object'
source_filename = "System_Span_System_Object"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Span@PEAVObject@System@bf@@@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$Array1@PEAVObject@System@bf@@@System@bf" = type <{ %"corlib.Array@System@bf", [4 x i8], ptr }>
%"corlib.Array@System@bf" = type <{ %"corlib.Object@System@bf", i32 }>
%"corlib.Object@System@bf" = type <{ ptr }>

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @"??B?$Span@PEAVObject@System@bf@@@System@bf@@SA?AU012@PEAV?$Array1@PEAVObject@System@bf@@@12@@Z"(ptr noalias nocapture writeonly sret(%"corlib.?$Span@PEAVObject@System@bf@@@System@bf") %0, ptr %array) local_unnamed_addr #0 {
entry:
  %1 = icmp eq ptr %array, null
  br i1 %1, label %"?__BfCtor@?$Span@PEAVObject@System@bf@@@System@bf@@QEAAXPEAV?$Array1@PEAVObject@System@bf@@@23@@Z.exit", label %if.end.i

if.end.i:                                         ; preds = %entry
  %2 = getelementptr inbounds %"corlib.?$Array1@PEAVObject@System@bf@@@System@bf", ptr %array, i64 0, i32 2
  %3 = getelementptr inbounds %"corlib.Array@System@bf", ptr %array, i64 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = sext i32 %4 to i64
  br label %"?__BfCtor@?$Span@PEAVObject@System@bf@@@System@bf@@QEAAXPEAV?$Array1@PEAVObject@System@bf@@@23@@Z.exit"

"?__BfCtor@?$Span@PEAVObject@System@bf@@@System@bf@@QEAAXPEAV?$Array1@PEAVObject@System@bf@@@23@@Z.exit": ; preds = %entry, %if.end.i
  %.sroa.0.0 = phi ptr [ %2, %if.end.i ], [ null, %entry ]
  %.sroa.3.0 = phi i64 [ %5, %if.end.i ], [ 0, %entry ]
  %.repack1 = getelementptr inbounds %"corlib.?$Span@PEAVObject@System@bf@@@System@bf", ptr %0, i64 0, i32 1
  store ptr %.sroa.0.0, ptr %.repack1, align 8
  %.repack3 = getelementptr inbounds %"corlib.?$Span@PEAVObject@System@bf@@@System@bf", ptr %0, i64 0, i32 2
  store i64 %.sroa.3.0, ptr %.repack3, align 8
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i64 @"?get__Length__im@?$Span@PEAVObject@System@bf@@@System@bf@@QEAATint@@XZ"(ptr nocapture readnone %this_mPtr, i64 returned %this_mLength) local_unnamed_addr #1 {
entry:
  ret i64 %this_mLength
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @"?get____im@UCHK$?$Span@PEAVObject@System@bf@@@System@bf@@QEAAAEAPEAVObject@23@Tint@@@Z"(ptr readnone %this_mPtr, i64 %this_mLength, i64 %index) local_unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds ptr, ptr %this_mPtr, i64 %index
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @"?__BfCtor@?$Span@PEAVObject@System@bf@@@System@bf@@QEAAXPEAV?$Array1@PEAVObject@System@bf@@@23@@Z"(ptr nocapture writeonly %this, ptr %array) local_unnamed_addr #0 {
entry:
  %0 = icmp eq ptr %array, null
  br i1 %0, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %this, i8 0, i64 16, i1 false)
  br label %exit

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %"corlib.?$Span@PEAVObject@System@bf@@@System@bf", ptr %this, i64 0, i32 1
  %2 = getelementptr inbounds %"corlib.?$Array1@PEAVObject@System@bf@@@System@bf", ptr %array, i64 0, i32 2
  store ptr %2, ptr %1, align 8
  %3 = getelementptr inbounds %"corlib.?$Span@PEAVObject@System@bf@@@System@bf", ptr %this, i64 0, i32 2
  %4 = getelementptr inbounds %"corlib.Array@System@bf", ptr %array, i64 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = sext i32 %5 to i64
  store i64 %6, ptr %3, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable }
attributes #1 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
