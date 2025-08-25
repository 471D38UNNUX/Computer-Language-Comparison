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
%"corlib.DateTime@System@bf" = type opaque

@"?sBfClassVData@String@System@bf@@2UClassVData@23@A" = external constant [8 x ptr]

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@FileInfo@IO@System@bf@@QEAAXUStringView@34@@Z"(ptr %this, ptr %path_mPtr, i64 %path_mLength) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  %ptr = alloca ptr, align 8
  %deferredCallTail = alloca ptr, align 8
  %2 = alloca %_BF_DeferredData_c8028z, align 8
  %3 = alloca %"corlib.FileFindEntry@IO@System@bf", align 8
  %4 = alloca %"corlib.StringView@System@bf", align 8
  %5 = alloca i64, align 8
  store ptr null, ptr %deferredCallTail, align 8
  store ptr %this, ptr %this.addr, align 8
  %6 = load ptr, ptr %this.addr, align 8
  store ptr %path_mPtr, ptr %0, align 8
  store i64 %path_mLength, ptr %1, align 8
  br label %mixinStart

mixinStart:                                       ; preds = %entry
  store ptr null, ptr %ptr, align 8
  br label %newScope

newScope:                                         ; preds = %mixinStart
  %7 = icmp ne ptr %path_mPtr, null
  br i1 %7, label %if.then, label %if.end2

if.then:                                          ; preds = %newScope
  %8 = icmp slt i64 %path_mLength, 128
  br i1 %8, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %9 = add i64 %path_mLength, 1
  %10 = alloca i8, i64 %9, align 1
  %11 = mul i64 %9, 1
  %12 = getelementptr inbounds i8, ptr %10, i32 0
  call void @llvm.memset.p0.i64(ptr align 1 %12, i8 0, i64 %11, i1 false)
  store ptr %10, ptr %ptr, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %13 = add i64 %path_mLength, 1
  %14 = mul i64 1, %13
  %15 = call ptr @tc_malloc(i64 %14)
  %16 = mul i64 %13, 1
  %17 = getelementptr inbounds i8, ptr %15, i32 0
  call void @llvm.memset.p0.i64(ptr align 1 %17, i8 0, i64 %16, i1 false)
  store ptr %15, ptr %ptr, align 8
  %18 = load ptr, ptr %ptr, align 8
  %19 = getelementptr inbounds %_BF_DeferredData_c8028z, ptr %2, i32 0, i32 1
  %20 = load ptr, ptr %deferredCallTail, align 8
  store ptr %20, ptr %19, align 8
  %21 = getelementptr inbounds %_BF_DeferredData_c8028z, ptr %2, i32 0, i32 0
  store i64 25769803943, ptr %21, align 8
  %22 = getelementptr inbounds %_BF_DeferredData_c8028z, ptr %2, i32 0, i32 2
  store ptr %18, ptr %22, align 8
  store ptr %2, ptr %deferredCallTail, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  %23 = load ptr, ptr %ptr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %23, ptr align 1 %path_mPtr, i64 %path_mLength, i1 false)
  %24 = load ptr, ptr %ptr, align 8
  %25 = getelementptr inbounds i8, ptr %24, i64 %path_mLength
  store i8 0, ptr %25, align 1
  br label %if.end2

if.end2:                                          ; preds = %if.end, %newScope
  %26 = load ptr, ptr %ptr, align 8
  %BfpFindFileData_FindFirstFile = call ptr @"?BfpFindFileData_FindFirstFile@Hook@Platform@System@bf@@SAPEA?AUBfpFindFileData@234@PEADW4BfpFindFileFlags@234@PEAW4BfpFileResult@234@@Z"(ptr %26, i32 1, ptr null)
  br label %newScope3

newScope3:                                        ; preds = %if.end2
  %27 = icmp eq ptr %BfpFindFileData_FindFirstFile, null
  br i1 %27, label %if.then4, label %if.end5

dyn.continue:                                     ; preds = %deferCall.end
  br label %exit

if.end5:                                          ; preds = %newScope3
  %28 = getelementptr inbounds %"corlib.FileInfo@IO@System@bf", ptr %6, i32 0, i32 1
  %29 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %4, i32 0, i32 0
  %30 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %29, i32 0, i32 0
  %31 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %29, i32 0, i32 1
  store ptr %path_mPtr, ptr %31, align 8
  %32 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %29, i32 0, i32 2
  store i64 %path_mLength, ptr %32, align 8
  %"this$calcAppend" = call i64 @"?this$calcAppend@i27$String@System@bf@@SATint@@UStringView@23@@Z"(ptr %4)
  %33 = add i64 24, %"this$calcAppend"
  %34 = call ptr @tc_malloc(i64 %33)
  %35 = getelementptr inbounds %"corlib.Object@System@bf", ptr %34, i32 0, i32 0
  store ptr @"?sBfClassVData@String@System@bf@@2UClassVData@23@A", ptr %35, align 8
  call void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr %34)
  %36 = ptrtoint ptr %34 to i64
  %37 = add i64 %36, 24
  store i64 %37, ptr %5, align 8
  call void @"?__BfCtor@i26$String@System@bf@@QEAAXAEATint@@UStringView@23@@Z"(ptr %34, ptr dereferenceable(8) %5, ptr %4)
  call void @"?__BfCtor@FileFindEntry@IO@System@bf@@QEAAXPEAVString@34@PEAUBfpFindFileData@Platform@34@@Z"(ptr %3, ptr %34, ptr %BfpFindFileData_FindFirstFile)
  %38 = load %"corlib.FileFindEntry@IO@System@bf", ptr %3, align 8
  store %"corlib.FileFindEntry@IO@System@bf" %38, ptr %28, align 8
  br label %if.then4

dyn.processor:                                    ; preds = %if.then4
  br label %deferCall.cond

deferCall.cond:                                   ; preds = %deferred.isNull, %dyn.processor
  %39 = load ptr, ptr %deferredCallTail, align 8
  %40 = icmp ne ptr %39, null
  br i1 %40, label %deferCall.body, label %deferCall.end

deferCall.body:                                   ; preds = %deferCall.cond
  %41 = getelementptr inbounds %"corlib.DeferredCall@System@bf", ptr %39, i32 0, i32 2
  %42 = load ptr, ptr %41, align 8
  store ptr %42, ptr %deferredCallTail, align 8
  %43 = getelementptr inbounds %_BF_DeferredData_c8028z, ptr %39, i32 0, i32 2
  %44 = load ptr, ptr %43, align 8
  %45 = icmp ne ptr %44, null
  br i1 %45, label %deferred.notNull, label %deferred.isNull

deferred.notNull:                                 ; preds = %deferCall.body
  call void @tc_free(ptr %44)
  br label %deferred.isNull

deferred.isNull:                                  ; preds = %deferred.notNull, %deferCall.body
  br label %deferCall.cond

deferCall.end:                                    ; preds = %deferCall.cond
  br label %dyn.continue

if.then4:                                         ; preds = %if.end5, %newScope3
  br label %dyn.processor

exit:                                             ; preds = %dyn.continue
  ret void
}

; Function Attrs: nounwind uwtable
define i1 @"?get__Exists@FileInfo@IO@System@bf@@QEAA_NXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca i1, align 1
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.FileInfo@IO@System@bf", ptr %0, i32 0, i32 1
  %2 = getelementptr inbounds %"corlib.FileFindEntry@IO@System@bf", ptr %1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"corlib.FileFindEntry@IO@System@bf", ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = call i1 @"??BFileFindEntry@IO@System@bf@@SA_NU0123@@Z"(ptr %3, ptr %5)
  store i1 %6, ptr %__return, align 1
  br label %exit

exit:                                             ; preds = %entry
  %7 = load i1, ptr %__return, align 1
  ret i1 %7
}

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsDirectory@FileInfo@IO@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetFileName@FileInfo@IO@System@bf@@QEAAXPEAVString@34@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetFilePath@FileInfo@IO@System@bf@@QEAAXPEAVString@34@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetLastWriteTime@FileInfo@IO@System@bf@@QEAA?AUDateTime@34@XZ"(ptr, ptr noalias sret(%"corlib.DateTime@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?GetLastWriteTimeUtc@FileInfo@IO@System@bf@@QEAA?AUDateTime@34@XZ"(ptr, ptr noalias sret(%"corlib.DateTime@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?GetCreatedTime@FileInfo@IO@System@bf@@QEAA?AUDateTime@34@XZ"(ptr, ptr noalias sret(%"corlib.DateTime@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?GetCreatedTimeUtc@FileInfo@IO@System@bf@@QEAA?AUDateTime@34@XZ"(ptr, ptr noalias sret(%"corlib.DateTime@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?GetAccessedTime@FileInfo@IO@System@bf@@QEAA?AUDateTime@34@XZ"(ptr, ptr noalias sret(%"corlib.DateTime@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?GetAccessedTimeUtc@FileInfo@IO@System@bf@@QEAA?AUDateTime@34@XZ"(ptr, ptr noalias sret(%"corlib.DateTime@System@bf")) #0

; Function Attrs: nounwind uwtable
define i64 @"?GetFileSize@FileInfo@IO@System@bf@@QEAA_JXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.FileInfo@IO@System@bf", ptr %0, i32 0, i32 1
  %2 = getelementptr inbounds %"corlib.FileFindEntry@IO@System@bf", ptr %1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"corlib.FileFindEntry@IO@System@bf", ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = call i1 @"??BFileFindEntry@IO@System@bf@@SA_NU0123@@Z"(ptr %3, ptr %5)
  br i1 %6, label %cond.then, label %cond.else

cond.then:                                        ; preds = %entry
  %7 = getelementptr inbounds %"corlib.FileInfo@IO@System@bf", ptr %0, i32 0, i32 1
  %8 = getelementptr inbounds %"corlib.FileFindEntry@IO@System@bf", ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %"corlib.FileFindEntry@IO@System@bf", ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 8
  %GetFileSize = call i64 @"?GetFileSize__im@FileFindEntry@IO@System@bf@@QEAA_JXZ"(ptr %9, ptr %11)
  br label %cond.end

cond.else:                                        ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.else, %cond.then
  %12 = phi i64 [ %GetFileSize, %cond.then ], [ 0, %cond.else ]
  br label %cond.cont

cond.cont:                                        ; preds = %cond.end
  store i64 %12, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %cond.cont
  %13 = load i64, ptr %__return, align 8
  ret i64 %13
}

; Function Attrs: nounwind uwtable
declare i32 @"?GetFileAttributes@FileInfo@IO@System@bf@@QEAA?AW4BfpFileAttributes@Platform@34@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?__BfCtorClear@FileInfo@IO@System@bf@@AEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@FileInfo@IO@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?~this@FileInfo@IO@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %1 = getelementptr inbounds %"corlib.FileInfo@IO@System@bf", ptr %0, i32 0, i32 1
  %2 = getelementptr inbounds %"corlib.FileFindEntry@IO@System@bf", ptr %1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = icmp ne ptr %3, null
  br i1 %4, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  %5 = getelementptr inbounds %"corlib.FileInfo@IO@System@bf", ptr %0, i32 0, i32 1
  %6 = getelementptr inbounds %"corlib.FileFindEntry@IO@System@bf", ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %delete.body, label %delete.end

delete.body:                                      ; preds = %if.then
  %9 = load ptr, ptr %7, align 8
  %10 = getelementptr inbounds ptr, ptr %9, i32 3
  %11 = load ptr, ptr %10, align 8
  call void %11(ptr %7)
  call void @tc_free(ptr %7)
  br label %delete.end

delete.end:                                       ; preds = %delete.body, %if.then
  %12 = getelementptr inbounds %"corlib.FileInfo@IO@System@bf", ptr %0, i32 0, i32 1
  %13 = getelementptr inbounds %"corlib.FileFindEntry@IO@System@bf", ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 8
  call void @"?BfpFindFileData_Release@Hook@Platform@System@bf@@SAXPEAUBfpFindFileData@234@@Z"(ptr %14)
  br label %if.end

if.end:                                           ; preds = %delete.end, %newScope
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr %0)
  br label %exit

exit:                                             ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@FileInfo@IO@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@FileInfo@IO@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers@FileInfo@IO@System@bf@@IEAAXXZ"(ptr) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare ptr @tc_malloc(i64)

declare void @tc_free(ptr)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare ptr @"?BfpFindFileData_FindFirstFile@Hook@Platform@System@bf@@SAPEA?AUBfpFindFileData@234@PEADW4BfpFindFileFlags@234@PEAW4BfpFileResult@234@@Z"(ptr, i32, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@FileFindEntry@IO@System@bf@@QEAAXPEAVString@34@PEAUBfpFindFileData@Platform@34@@Z"(ptr, ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i26$String@System@bf@@QEAAXAEATint@@UStringView@23@@Z"(ptr, ptr dereferenceable(8), ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?this$calcAppend@i27$String@System@bf@@SATint@@UStringView@23@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"??BFileFindEntry@IO@System@bf@@SA_NU0123@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?GetFileSize__im@FileFindEntry@IO@System@bf@@QEAA_JXZ"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?BfpFindFileData_Release@Hook@Platform@System@bf@@SAXPEAUBfpFindFileData@234@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?~this@Object@System@bf@@UEAAXXZ"(ptr) #0

attributes #0 = { nounwind uwtable }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
