; ModuleID = 'System_IO_FileInfo'
source_filename = "System_IO_FileInfo"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%_BF_DeferredData_c8028z = type { i64, ptr, ptr }
%"corlib.FileFindEntry@IO@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, ptr }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.StringView@System@bf" = type <{ %"corlib.?$Span@D@System@bf" }>
%"corlib.?$Span@D@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.FileInfo@IO@System@bf" = type <{ %"corlib.Object@System@bf", %"corlib.FileFindEntry@IO@System@bf" }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.DeferredCall@System@bf" = type <{ %"corlib.ValueType@System@bf", i64, ptr }>

@"?sBfClassVData@String@System@bf@@2UClassVData@23@A" = external constant [8 x ptr]

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@FileInfo@IO@System@bf@@QEAAXUStringView@34@@Z"(ptr nocapture writeonly %this, ptr %path_mPtr, i64 %path_mLength) local_unnamed_addr #0 {
entry:
  %0 = alloca %_BF_DeferredData_c8028z, align 8
  %1 = alloca %"corlib.FileFindEntry@IO@System@bf", align 8
  %2 = alloca %"corlib.StringView@System@bf", align 8
  %3 = alloca i64, align 8
  %.not = icmp eq ptr %path_mPtr, null
  br i1 %.not, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  %4 = icmp slt i64 %path_mLength, 128
  %5 = add i64 %path_mLength, 1
  br i1 %4, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %6 = alloca i8, i64 %5, align 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %6, i8 0, i64 %5, i1 false)
  br label %if.end

if.else:                                          ; preds = %if.then
  %7 = tail call ptr @tc_malloc(i64 %5) #4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %7, i8 0, i64 %5, i1 false)
  %8 = getelementptr inbounds %_BF_DeferredData_c8028z, ptr %0, i64 0, i32 1
  store ptr null, ptr %8, align 8
  store i64 25769803943, ptr %0, align 8
  %9 = getelementptr inbounds %_BF_DeferredData_c8028z, ptr %0, i64 0, i32 2
  store ptr %7, ptr %9, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  %ptr.0 = phi ptr [ %6, %if.then1 ], [ %7, %if.else ]
  %deferredCallTail.0 = phi ptr [ null, %if.then1 ], [ %0, %if.else ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %ptr.0, ptr nonnull align 1 %path_mPtr, i64 %path_mLength, i1 false)
  %10 = getelementptr inbounds i8, ptr %ptr.0, i64 %path_mLength
  store i8 0, ptr %10, align 1
  br label %if.end2

if.end2:                                          ; preds = %if.end, %entry
  %ptr.1 = phi ptr [ %ptr.0, %if.end ], [ null, %entry ]
  %deferredCallTail.1 = phi ptr [ %deferredCallTail.0, %if.end ], [ null, %entry ]
  %BfpFindFileData_FindFirstFile = call ptr @"?BfpFindFileData_FindFirstFile@Hook@Platform@System@bf@@SAPEA?AUBfpFindFileData@234@PEADW4BfpFindFileFlags@234@PEAW4BfpFileResult@234@@Z"(ptr %ptr.1, i32 1, ptr null)
  %11 = icmp eq ptr %BfpFindFileData_FindFirstFile, null
  br i1 %11, label %if.then4, label %if.end5

if.end5:                                          ; preds = %if.end2
  %12 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %2, i64 0, i32 1
  store ptr %path_mPtr, ptr %12, align 8
  %13 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %2, i64 0, i32 2
  store i64 %path_mLength, ptr %13, align 8
  %"this$calcAppend" = call i64 @"?this$calcAppend@i27$String@System@bf@@SATint@@UStringView@23@@Z"(ptr nonnull %2)
  %14 = add i64 %"this$calcAppend", 24
  %15 = call ptr @tc_malloc(i64 %14) #4
  store ptr @"?sBfClassVData@String@System@bf@@2UClassVData@23@A", ptr %15, align 8
  call void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr nonnull %15)
  %16 = ptrtoint ptr %15 to i64
  %17 = add i64 %16, 24
  store i64 %17, ptr %3, align 8
  call void @"?__BfCtor@i26$String@System@bf@@QEAAXAEATint@@UStringView@23@@Z"(ptr nonnull %15, ptr nonnull dereferenceable(8) %3, ptr nonnull %2)
  call void @"?__BfCtor@FileFindEntry@IO@System@bf@@QEAAXPEAVString@34@PEAUBfpFindFileData@Platform@34@@Z"(ptr nonnull %1, ptr nonnull %15, ptr nonnull %BfpFindFileData_FindFirstFile)
  %.fca.1.gep = getelementptr inbounds %"corlib.FileFindEntry@IO@System@bf", ptr %1, i64 0, i32 1
  %.fca.1.load = load ptr, ptr %.fca.1.gep, align 8
  %.fca.2.gep = getelementptr inbounds %"corlib.FileFindEntry@IO@System@bf", ptr %1, i64 0, i32 2
  %.fca.2.load = load ptr, ptr %.fca.2.gep, align 8
  %.repack10 = getelementptr inbounds %"corlib.FileInfo@IO@System@bf", ptr %this, i64 0, i32 1
  store ptr %.fca.1.load, ptr %.repack10, align 8
  %.repack12 = getelementptr inbounds %"corlib.FileInfo@IO@System@bf", ptr %this, i64 0, i32 1, i32 2
  store ptr %.fca.2.load, ptr %.repack12, align 8
  br label %if.then4

deferCall.body:                                   ; preds = %if.then4, %deferred.isNull
  %deferredCallTail.217 = phi ptr [ %19, %deferred.isNull ], [ %deferredCallTail.1, %if.then4 ]
  %18 = getelementptr inbounds %"corlib.DeferredCall@System@bf", ptr %deferredCallTail.217, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %_BF_DeferredData_c8028z, ptr %deferredCallTail.217, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %.not15 = icmp eq ptr %21, null
  br i1 %.not15, label %deferred.isNull, label %deferred.notNull

deferred.notNull:                                 ; preds = %deferCall.body
  call void @tc_free(ptr nonnull %21) #4
  br label %deferred.isNull

deferred.isNull:                                  ; preds = %deferred.notNull, %deferCall.body
  %.not14 = icmp eq ptr %19, null
  br i1 %.not14, label %exit, label %deferCall.body

if.then4:                                         ; preds = %if.end5, %if.end2
  %.not1416 = icmp eq ptr %deferredCallTail.1, null
  br i1 %.not1416, label %exit, label %deferCall.body

exit:                                             ; preds = %deferred.isNull, %if.then4
  ret void
}

; Function Attrs: nounwind uwtable
define i1 @"?get__Exists@FileInfo@IO@System@bf@@QEAA_NXZ"(ptr nocapture readonly %this) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %"corlib.FileInfo@IO@System@bf", ptr %this, i64 0, i32 1
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr inbounds %"corlib.FileInfo@IO@System@bf", ptr %this, i64 0, i32 1, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i1 @"??BFileFindEntry@IO@System@bf@@SA_NU0123@@Z"(ptr %1, ptr %3)
  ret i1 %4
}

; Function Attrs: nounwind uwtable
define i64 @"?GetFileSize@FileInfo@IO@System@bf@@QEAA_JXZ"(ptr nocapture readonly %this) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %"corlib.FileInfo@IO@System@bf", ptr %this, i64 0, i32 1
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr inbounds %"corlib.FileInfo@IO@System@bf", ptr %this, i64 0, i32 1, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i1 @"??BFileFindEntry@IO@System@bf@@SA_NU0123@@Z"(ptr %1, ptr %3)
  br i1 %4, label %cond.then, label %cond.cont

cond.then:                                        ; preds = %entry
  %5 = load ptr, ptr %0, align 8
  %6 = load ptr, ptr %2, align 8
  %GetFileSize = tail call i64 @"?GetFileSize__im@FileFindEntry@IO@System@bf@@QEAA_JXZ"(ptr %5, ptr %6)
  br label %cond.cont

cond.cont:                                        ; preds = %cond.then, %entry
  %7 = phi i64 [ %GetFileSize, %cond.then ], [ 0, %entry ]
  ret i64 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @"?__BfCtorClear@FileInfo@IO@System@bf@@AEAAXXZ"(ptr nocapture writeonly %this) local_unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds i8, ptr %this, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?~this@FileInfo@IO@System@bf@@QEAAXXZ"(ptr %this) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %"corlib.FileInfo@IO@System@bf", ptr %this, i64 0, i32 1
  %1 = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %if.end, label %delete.body

delete.body:                                      ; preds = %entry
  %2 = load ptr, ptr %1, align 8
  %3 = getelementptr inbounds ptr, ptr %2, i64 3
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr nonnull %1) #4
  tail call void @tc_free(ptr nonnull %1) #4
  %5 = getelementptr inbounds %"corlib.FileInfo@IO@System@bf", ptr %this, i64 0, i32 1, i32 2
  %6 = load ptr, ptr %5, align 8
  tail call void @"?BfpFindFileData_Release@Hook@Platform@System@bf@@SAXPEAUBfpFindFileData@234@@Z"(ptr %6)
  br label %if.end

if.end:                                           ; preds = %delete.body, %entry
  tail call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr nonnull %this)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare ptr @tc_malloc(i64) local_unnamed_addr

declare void @tc_free(ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
declare ptr @"?BfpFindFileData_FindFirstFile@Hook@Platform@System@bf@@SAPEA?AUBfpFindFileData@234@PEADW4BfpFindFileFlags@234@PEAW4BfpFileResult@234@@Z"(ptr, i32, ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@FileFindEntry@IO@System@bf@@QEAAXPEAVString@34@PEAUBfpFindFileData@Platform@34@@Z"(ptr, ptr, ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i26$String@System@bf@@QEAAXAEATint@@UStringView@23@@Z"(ptr, ptr dereferenceable(8), ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare i64 @"?this$calcAppend@i27$String@System@bf@@SATint@@UStringView@23@@Z"(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare i1 @"??BFileFindEntry@IO@System@bf@@SA_NU0123@@Z"(ptr, ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare i64 @"?GetFileSize__im@FileFindEntry@IO@System@bf@@QEAA_JXZ"(ptr, ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?BfpFindFileData_Release@Hook@Platform@System@bf@@SAXPEAUBfpFindFileData@234@@Z"(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?~this@Object@System@bf@@UEAAXXZ"(ptr) local_unnamed_addr #0

attributes #0 = { nounwind uwtable }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }
