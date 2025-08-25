; ModuleID = 'System_IO_File'
source_filename = "System_IO_File"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%_BF_DeferredData_c8028z = type { i64, ptr, ptr }
%"corlib.DeferredCall@System@bf" = type <{ %"corlib.ValueType@System@bf", i64, ptr }>
%"corlib.ValueType@System@bf" = type <{}>

; Function Attrs: nounwind uwtable
define i1 @"?Exists@File@IO@System@bf@@SA_NUStringView@34@@Z"(ptr readonly %fileName_mPtr, i64 %fileName_mLength) local_unnamed_addr #0 {
entry:
  %0 = alloca %_BF_DeferredData_c8028z, align 8
  %.not = icmp eq ptr %fileName_mPtr, null
  br i1 %.not, label %if.end2.thread, label %if.then

if.end2.thread:                                   ; preds = %entry
  %BfpFile_Exists13 = call i1 @"?BfpFile_Exists@Hook@Platform@System@bf@@SA_NPEAD@Z"(ptr null)
  br label %exit

if.then:                                          ; preds = %entry
  %1 = icmp slt i64 %fileName_mLength, 128
  %2 = add i64 %fileName_mLength, 1
  br i1 %1, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %3 = alloca i8, i64 %2, align 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %3, i8 0, i64 %2, i1 false)
  br label %if.end2

if.else:                                          ; preds = %if.then
  %4 = tail call ptr @tc_malloc(i64 %2) #3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %4, i8 0, i64 %2, i1 false)
  %5 = getelementptr inbounds %_BF_DeferredData_c8028z, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8
  store i64 25769803943, ptr %0, align 8
  %6 = getelementptr inbounds %_BF_DeferredData_c8028z, ptr %0, i64 0, i32 2
  store ptr %4, ptr %6, align 8
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.else
  %ptr.0 = phi ptr [ %3, %if.then1 ], [ %4, %if.else ]
  %deferredCallTail.0 = phi ptr [ null, %if.then1 ], [ %0, %if.else ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %ptr.0, ptr nonnull align 1 %fileName_mPtr, i64 %fileName_mLength, i1 false)
  %7 = getelementptr inbounds i8, ptr %ptr.0, i64 %fileName_mLength
  store i8 0, ptr %7, align 1
  %BfpFile_Exists = call i1 @"?BfpFile_Exists@Hook@Platform@System@bf@@SA_NPEAD@Z"(ptr %ptr.0)
  %.not79 = icmp eq ptr %deferredCallTail.0, null
  br i1 %.not79, label %exit, label %deferCall.body

deferCall.body:                                   ; preds = %if.end2, %deferred.isNull
  %deferredCallTail.210 = phi ptr [ %9, %deferred.isNull ], [ %deferredCallTail.0, %if.end2 ]
  %8 = getelementptr inbounds %"corlib.DeferredCall@System@bf", ptr %deferredCallTail.210, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %_BF_DeferredData_c8028z, ptr %deferredCallTail.210, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %.not8 = icmp eq ptr %11, null
  br i1 %.not8, label %deferred.isNull, label %deferred.notNull

deferred.notNull:                                 ; preds = %deferCall.body
  call void @tc_free(ptr nonnull %11) #3
  br label %deferred.isNull

deferred.isNull:                                  ; preds = %deferred.notNull, %deferCall.body
  %.not7 = icmp eq ptr %9, null
  br i1 %.not7, label %exit, label %deferCall.body

exit:                                             ; preds = %deferred.isNull, %if.end2.thread, %if.end2
  %BfpFile_Exists15 = phi i1 [ %BfpFile_Exists13, %if.end2.thread ], [ %BfpFile_Exists, %if.end2 ], [ %BfpFile_Exists, %deferred.isNull ]
  ret i1 %BfpFile_Exists15
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare ptr @tc_malloc(i64) local_unnamed_addr

declare void @tc_free(ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare i1 @"?BfpFile_Exists@Hook@Platform@System@bf@@SA_NPEAD@Z"(ptr) local_unnamed_addr #0

attributes #0 = { nounwind uwtable }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind }
