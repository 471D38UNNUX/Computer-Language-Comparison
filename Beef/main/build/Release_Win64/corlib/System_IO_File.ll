; ModuleID = 'System_IO_File'
source_filename = "System_IO_File"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf" = type opaque
%"corlib.?$Result@X@System@bf" = type opaque
%_BF_DeferredData_c8028z = type { i64, ptr, ptr }
%"corlib.DeferredCall@System@bf" = type <{ %"corlib.ValueType@System@bf", i64, ptr }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$Result@XW4BfpFileResult@Platform@System@bf@@@System@bf" = type opaque
%"corlib.?$Result@UDateTime@System@bf@@@System@bf" = type opaque

; Function Attrs: nounwind uwtable
declare void @"?ReadAll@File@IO@System@bf@@SA?AU?$Result@X?AUFileError@IO@System@bf@@@34@UStringView@34@PEAV?$List@E@Collections@34@@Z"(ptr noalias sret(%"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf"), ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?WriteAll@File@IO@System@bf@@SA?AU?$Result@X@34@UStringView@34@U?$Span@E@34@_N@Z"(ptr noalias sret(%"corlib.?$Result@X@System@bf"), ptr, i64, ptr, i1 zeroext) #0

; Function Attrs: nounwind uwtable
declare void @"?ReadAllText@File@IO@System@bf@@SA?AU?$Result@X?AUFileError@IO@System@bf@@@34@UStringView@34@PEAVString@34@_N@Z"(ptr noalias sret(%"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf"), ptr, i64, ptr, i1 zeroext) #0

; Function Attrs: nounwind uwtable
declare void @"?WriteAllText@File@IO@System@bf@@SA?AU?$Result@X@34@UStringView@34@0_N@Z"(ptr noalias sret(%"corlib.?$Result@X@System@bf"), ptr, i64, ptr, i1 zeroext) #0

; Function Attrs: nounwind uwtable
declare void @"?WriteAllText@File@IO@System@bf@@SA?AU?$Result@X@34@UStringView@34@0PEAVEncoding@Text@34@@Z"(ptr noalias sret(%"corlib.?$Result@X@System@bf"), ptr, i64, ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?WriteAllLines@File@IO@System@bf@@SA?AU?$Result@X@34@UStringView@34@PEAV?$IEnumerator@UStringView@System@bf@@@Collections@34@_N@Z"(ptr noalias sret(%"corlib.?$Result@X@System@bf"), ptr, i64, ptr, i1 zeroext) #0

; Function Attrs: nounwind uwtable
declare void @"?WriteAllLines@File@IO@System@bf@@SA?AU?$Result@X@34@UStringView@34@PEAV?$IEnumerator@PEAVString@System@bf@@@Collections@34@_N@Z"(ptr noalias sret(%"corlib.?$Result@X@System@bf"), ptr, i64, ptr, i1 zeroext) #0

; Function Attrs: nounwind uwtable
define i1 @"?Exists@File@IO@System@bf@@SA_NUStringView@34@@Z"(ptr %fileName_mPtr, i64 %fileName_mLength) #0 {
entry:
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  %__return = alloca i1, align 1
  %ptr = alloca ptr, align 8
  %deferredCallTail = alloca ptr, align 8
  %2 = alloca %_BF_DeferredData_c8028z, align 8
  store ptr null, ptr %deferredCallTail, align 8
  store ptr %fileName_mPtr, ptr %0, align 8
  store i64 %fileName_mLength, ptr %1, align 8
  br label %mixinStart

mixinStart:                                       ; preds = %entry
  store ptr null, ptr %ptr, align 8
  br label %newScope

newScope:                                         ; preds = %mixinStart
  %3 = icmp ne ptr %fileName_mPtr, null
  br i1 %3, label %if.then, label %if.end2

if.then:                                          ; preds = %newScope
  %4 = icmp slt i64 %fileName_mLength, 128
  br i1 %4, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  %5 = add i64 %fileName_mLength, 1
  %6 = alloca i8, i64 %5, align 1
  %7 = mul i64 %5, 1
  %8 = getelementptr inbounds i8, ptr %6, i32 0
  call void @llvm.memset.p0.i64(ptr align 1 %8, i8 0, i64 %7, i1 false)
  store ptr %6, ptr %ptr, align 8
  br label %if.end

if.else:                                          ; preds = %if.then
  %9 = add i64 %fileName_mLength, 1
  %10 = mul i64 1, %9
  %11 = call ptr @tc_malloc(i64 %10)
  %12 = mul i64 %9, 1
  %13 = getelementptr inbounds i8, ptr %11, i32 0
  call void @llvm.memset.p0.i64(ptr align 1 %13, i8 0, i64 %12, i1 false)
  store ptr %11, ptr %ptr, align 8
  %14 = load ptr, ptr %ptr, align 8
  %15 = getelementptr inbounds %_BF_DeferredData_c8028z, ptr %2, i32 0, i32 1
  %16 = load ptr, ptr %deferredCallTail, align 8
  store ptr %16, ptr %15, align 8
  %17 = getelementptr inbounds %_BF_DeferredData_c8028z, ptr %2, i32 0, i32 0
  store i64 25769803943, ptr %17, align 8
  %18 = getelementptr inbounds %_BF_DeferredData_c8028z, ptr %2, i32 0, i32 2
  store ptr %14, ptr %18, align 8
  store ptr %2, ptr %deferredCallTail, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then1
  %19 = load ptr, ptr %ptr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %19, ptr align 1 %fileName_mPtr, i64 %fileName_mLength, i1 false)
  %20 = load ptr, ptr %ptr, align 8
  %21 = getelementptr inbounds i8, ptr %20, i64 %fileName_mLength
  store i8 0, ptr %21, align 1
  br label %if.end2

if.end2:                                          ; preds = %if.end, %newScope
  %22 = load ptr, ptr %ptr, align 8
  %BfpFile_Exists = call i1 @"?BfpFile_Exists@Hook@Platform@System@bf@@SA_NPEAD@Z"(ptr %22)
  store i1 %BfpFile_Exists, ptr %__return, align 1
  br label %deferredCalls

deferredCalls:                                    ; preds = %if.end2
  br label %dyn.processor

dyn.continue:                                     ; preds = %deferCall.end
  br label %exit

dyn.processor:                                    ; preds = %deferredCalls
  br label %deferCall.cond

deferCall.cond:                                   ; preds = %deferred.isNull, %dyn.processor
  %23 = load ptr, ptr %deferredCallTail, align 8
  %24 = icmp ne ptr %23, null
  br i1 %24, label %deferCall.body, label %deferCall.end

deferCall.body:                                   ; preds = %deferCall.cond
  %25 = getelementptr inbounds %"corlib.DeferredCall@System@bf", ptr %23, i32 0, i32 2
  %26 = load ptr, ptr %25, align 8
  store ptr %26, ptr %deferredCallTail, align 8
  %27 = getelementptr inbounds %_BF_DeferredData_c8028z, ptr %23, i32 0, i32 2
  %28 = load ptr, ptr %27, align 8
  %29 = icmp ne ptr %28, null
  br i1 %29, label %deferred.notNull, label %deferred.isNull

deferred.notNull:                                 ; preds = %deferCall.body
  call void @tc_free(ptr %28)
  br label %deferred.isNull

deferred.isNull:                                  ; preds = %deferred.notNull, %deferCall.body
  br label %deferCall.cond

deferCall.end:                                    ; preds = %deferCall.cond
  br label %dyn.continue

exit:                                             ; preds = %dyn.continue
  %30 = load i1, ptr %__return, align 1
  ret i1 %30
}

; Function Attrs: nounwind uwtable
declare void @"?Delete@File@IO@System@bf@@SA?AU?$Result@X?AW4BfpFileResult@Platform@System@bf@@@34@UStringView@34@@Z"(ptr noalias sret(%"corlib.?$Result@XW4BfpFileResult@Platform@System@bf@@@System@bf"), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Move@File@IO@System@bf@@SA?AU?$Result@X?AW4BfpFileResult@Platform@System@bf@@@34@UStringView@34@0@Z"(ptr noalias sret(%"corlib.?$Result@XW4BfpFileResult@Platform@System@bf@@@System@bf"), ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Copy@File@IO@System@bf@@SA?AU?$Result@X?AW4BfpFileResult@Platform@System@bf@@@34@UStringView@34@0@Z"(ptr noalias sret(%"corlib.?$Result@XW4BfpFileResult@Platform@System@bf@@@System@bf"), ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?CopyIfNewer@File@IO@System@bf@@SA?AU?$Result@X?AW4BfpFileResult@Platform@System@bf@@@34@UStringView@34@0@Z"(ptr noalias sret(%"corlib.?$Result@XW4BfpFileResult@Platform@System@bf@@@System@bf"), ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Copy@File@IO@System@bf@@SA?AU?$Result@X?AW4BfpFileResult@Platform@System@bf@@@34@UStringView@34@0_N@Z"(ptr noalias sret(%"corlib.?$Result@XW4BfpFileResult@Platform@System@bf@@@System@bf"), ptr, i64, ptr, i1 zeroext) #0

; Function Attrs: nounwind uwtable
declare void @"?SetAttributes@File@IO@System@bf@@SA?AU?$Result@X?AW4BfpFileResult@Platform@System@bf@@@34@UStringView@34@W4FileAttributes@234@@Z"(ptr noalias sret(%"corlib.?$Result@XW4BfpFileResult@Platform@System@bf@@@System@bf"), ptr, i64, i16) #0

; Function Attrs: nounwind uwtable
declare void @"?GetLastWriteTime@File@IO@System@bf@@SA?AU?$Result@?AUDateTime@System@bf@@@34@UStringView@34@@Z"(ptr noalias sret(%"corlib.?$Result@UDateTime@System@bf@@@System@bf"), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetLastWriteTimeUtc@File@IO@System@bf@@SA?AU?$Result@?AUDateTime@System@bf@@@34@UStringView@34@@Z"(ptr noalias sret(%"corlib.?$Result@UDateTime@System@bf@@@System@bf"), ptr, i64) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare ptr @tc_malloc(i64)

declare void @tc_free(ptr)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare i1 @"?BfpFile_Exists@Hook@Platform@System@bf@@SA_NPEAD@Z"(ptr) #0

attributes #0 = { nounwind uwtable }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
