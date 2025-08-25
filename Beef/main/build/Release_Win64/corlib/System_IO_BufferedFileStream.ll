; ModuleID = 'System_IO_BufferedFileStream'
source_filename = "System_IO_BufferedFileStream"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf" = type <{ %"corlib.Enum@System@bf", %"corlib.?$__TUPLE_err@W4FileOpenError@IO@System@bf@@@bf", i8 }>
%"corlib.Enum@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$__TUPLE_err@W4FileOpenError@IO@System@bf@@@bf" = type <{ %"corlib.Tuple@System@bf", i8 }>
%"corlib.Tuple@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%_BF_DeferredData_c8028z = type { i64, ptr, ptr }
%"corlib.BufferedFileStream@IO@System@bf" = type <{ %"corlib.BufferedStream@IO@System@bf", ptr, i64, i8 }>
%"corlib.BufferedStream@IO@System@bf" = type <{ %"corlib.Stream@IO@System@bf", i64, i64, ptr, i64, i64, i64, i64 }>
%"corlib.Stream@IO@System@bf" = type <{ %"corlib.Object@System@bf", ptr, ptr }>
%"corlib.DeferredCall@System@bf" = type <{ %"corlib.ValueType@System@bf", i64, ptr }>
%"corlib.?$Result@X@System@bf" = type <{ %"corlib.Enum@System@bf", [0 x i8], i8 }>
%"corlib.PositionRestorer@BufferedFileStream@IO@System@bf" = type opaque
%"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf" = type <{ %"corlib.Enum@System@bf", %"corlib.?$__TUPLE_err@UFileError@IO@System@bf@@@bf", i8 }>
%"corlib.?$__TUPLE_err@UFileError@IO@System@bf@@@bf" = type <{ %"corlib.Tuple@System@bf", %"corlib.FileError@IO@System@bf" }>
%"corlib.FileError@IO@System@bf" = type <{ %"corlib.Enum@System@bf", i8, i8 }>
%"corlib.?$Result@Tint@@@System@bf" = type <{ %"corlib.Enum@System@bf", %"corlib.?$__TUPLE_val@Tint@@@bf", i8 }>
%"corlib.?$__TUPLE_val@Tint@@@bf" = type <{ %"corlib.Tuple@System@bf", i64 }>
%"corlib.?$Span@E@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.?$Result@Tint@@UFileError@IO@System@bf@@@System@bf" = type opaque

@"?sBfClassVData@String@System@bf@@2UClassVData@23@A" = external constant [8 x ptr]
@__bfStrObj204 = external constant %"corlib.String@System@bf"
@__bfStrObj205 = external constant %"corlib.String@System@bf"

; Function Attrs: nounwind uwtable
declare i64 @"?get__Handle@BufferedFileStream@IO@System@bf@@QEAATint@@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@BufferedFileStream@IO@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  call void @"?__BfCtor@BufferedStream@IO@System@bf@@QEAAXXZ"(ptr %0)
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@BufferedFileStream@IO@System@bf@@QEAAXPEAUBfpFile@Platform@34@W4FileAccess@234@H_N@Z"(ptr, ptr, i8, i32, i1 zeroext) #0

; Function Attrs: nounwind uwtable
declare void @"?Create@BufferedFileStream@IO@System@bf@@QEAA?AU?$Result@X?AW4FileOpenError@IO@System@bf@@@34@UStringView@34@W4FileAccess@234@W4FileShare@234@Tint@@W4FileOptions@234@PEAUSecurityAttributes@234@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf"), ptr, i64, i8, i32, i64, i32, ptr) #0

; Function Attrs: nounwind uwtable
define void @"?Open@BufferedFileStream@IO@System@bf@@QEAA?AU?$Result@X?AW4FileOpenError@IO@System@bf@@@34@UStringView@34@W4FileAccess@234@W4FileShare@234@Tint@@W4FileOptions@234@PEAUSecurityAttributes@234@@Z"(ptr %this, ptr noalias sret(%"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf") %0, ptr %path_mPtr, i64 %path_mLength, i8 %access, i32 %share, i64 %bufferSize, i32 %options, ptr %secAttrs) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %1 = alloca ptr, align 8
  %2 = alloca i64, align 8
  %__return.addr = alloca ptr, align 8
  %3 = alloca %"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf", align 1
  store ptr %this, ptr %this.addr, align 8
  %4 = load ptr, ptr %this.addr, align 8
  store ptr %path_mPtr, ptr %1, align 8
  store i64 %path_mLength, ptr %2, align 8
  store ptr %0, ptr %__return.addr, align 1
  call void @"?Open@BufferedFileStream@IO@System@bf@@QEAA?AU?$Result@X?AW4FileOpenError@IO@System@bf@@@34@UStringView@34@W4FileMode@234@W4FileAccess@234@W4FileShare@234@Tint@@W4FileOptions@234@PEAUSecurityAttributes@234@@Z"(ptr %4, ptr sret(%"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf") %3, ptr %path_mPtr, i64 %path_mLength, i32 3, i8 %access, i32 %share, i64 %bufferSize, i32 %options, ptr %secAttrs)
  %5 = load %"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf", ptr %3, align 1
  %6 = load ptr, ptr %__return.addr, align 1
  store %"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf" %5, ptr %6, align 1
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?OpenStd@BufferedFileStream@IO@System@bf@@QEAA?AU?$Result@X?AW4FileOpenError@IO@System@bf@@@34@W4BfpFileStdKind@Platform@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf"), i32) #0

; Function Attrs: nounwind uwtable
define void @"?Open@BufferedFileStream@IO@System@bf@@QEAA?AU?$Result@X?AW4FileOpenError@IO@System@bf@@@34@UStringView@34@W4FileMode@234@W4FileAccess@234@W4FileShare@234@Tint@@W4FileOptions@234@PEAUSecurityAttributes@234@@Z"(ptr %this, ptr noalias sret(%"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf") %0, ptr %path_mPtr, i64 %path_mLength, i32 %mode, i8 %access, i32 %share, i64 %bufferSize, i32 %options, ptr %secAttrs) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %1 = alloca ptr, align 8
  %2 = alloca i64, align 8
  %__return.addr = alloca ptr, align 8
  %createKind = alloca i32, align 4
  %createFlags = alloca i32, align 4
  %fileFlags = alloca i32, align 4
  %fileResult = alloca i32, align 4
  %ptr = alloca ptr, align 8
  %deferredCallTail = alloca ptr, align 8
  %3 = alloca %_BF_DeferredData_c8028z, align 8
  %4 = alloca %"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf", align 1
  %5 = alloca %"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf", align 1
  %6 = alloca %"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf", align 1
  store ptr null, ptr %deferredCallTail, align 8
  store ptr %this, ptr %this.addr, align 8
  %7 = load ptr, ptr %this.addr, align 8
  store ptr %path_mPtr, ptr %1, align 8
  store i64 %path_mLength, ptr %2, align 8
  store ptr %0, ptr %__return.addr, align 1
  %8 = getelementptr inbounds %"corlib.BufferedFileStream@IO@System@bf", ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  call void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext %10, ptr @__bfStrObj204, ptr @__bfStrObj205, i64 378)
  store i32 0, ptr %createKind, align 4
  store i32 0, ptr %createFlags, align 4
  br label %newScope

newScope:                                         ; preds = %entry
  switch i32 %mode, label %noSwitch [
    i32 1, label %switch.0
    i32 2, label %switch.1
    i32 3, label %switch.2
    i32 4, label %switch.3
    i32 5, label %switch.4
    i32 6, label %switch.5
  ]

noSwitch:                                         ; preds = %newScope
  br label %default

switch.0:                                         ; preds = %newScope
  store i32 1, ptr %createKind, align 4
  br label %switch.end

switch.1:                                         ; preds = %newScope
  store i32 0, ptr %createKind, align 4
  br label %switch.end

switch.2:                                         ; preds = %newScope
  store i32 2, ptr %createKind, align 4
  br label %switch.end

switch.3:                                         ; preds = %newScope
  store i32 3, ptr %createKind, align 4
  br label %switch.end

switch.4:                                         ; preds = %newScope
  store i32 0, ptr %createKind, align 4
  %11 = load i32, ptr %createFlags, align 4
  %12 = or i32 %11, 64
  store i32 %12, ptr %createFlags, align 4
  br label %switch.end

switch.5:                                         ; preds = %newScope
  store i32 0, ptr %createKind, align 4
  %13 = load i32, ptr %createFlags, align 4
  %14 = or i32 %13, 32
  store i32 %14, ptr %createFlags, align 4
  br label %switch.end

default:                                          ; preds = %noSwitch
  unreachable

switch.end:                                       ; preds = %switch.5, %switch.4, %switch.3, %switch.2, %switch.1, %switch.0
  %HasFlag = call i1 @"?HasFlag__im@FileAccess@IO@System@bf@@SA_NCW41234@@Z"(i8 %access, i8 1)
  br i1 %HasFlag, label %if.then, label %if.end

if.then:                                          ; preds = %switch.end
  %15 = load i32, ptr %createFlags, align 4
  %16 = or i32 %15, 1
  store i32 %16, ptr %createFlags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %switch.end
  %HasFlag1 = call i1 @"?HasFlag__im@FileAccess@IO@System@bf@@SA_NCW41234@@Z"(i8 %access, i8 2)
  br i1 %HasFlag1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %17 = load i32, ptr %createFlags, align 4
  %18 = or i32 %17, 2
  store i32 %18, ptr %createFlags, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %HasFlag4 = call i1 @"?HasFlag__im@FileShare@IO@System@bf@@SA_NHW41234@@Z"(i32 %share, i32 1)
  br i1 %HasFlag4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end3
  %19 = load i32, ptr %createFlags, align 4
  %20 = or i32 %19, 4
  store i32 %20, ptr %createFlags, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end3
  %HasFlag7 = call i1 @"?HasFlag__im@FileShare@IO@System@bf@@SA_NHW41234@@Z"(i32 %share, i32 2)
  br i1 %HasFlag7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end6
  %21 = load i32, ptr %createFlags, align 4
  %22 = or i32 %21, 8
  store i32 %22, ptr %createFlags, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6
  %HasFlag10 = call i1 @"?HasFlag__im@FileShare@IO@System@bf@@SA_NHW41234@@Z"(i32 %share, i32 4)
  br i1 %HasFlag10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end9
  %23 = load i32, ptr %createFlags, align 4
  %24 = or i32 %23, 16
  store i32 %24, ptr %createFlags, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9
  store i32 1, ptr %fileFlags, align 4
  store i32 0, ptr %fileResult, align 4
  %25 = getelementptr inbounds %"corlib.BufferedFileStream@IO@System@bf", ptr %7, i32 0, i32 1
  br label %mixinStart

mixinStart:                                       ; preds = %if.end12
  store ptr null, ptr %ptr, align 8
  br label %newScope13

newScope13:                                       ; preds = %mixinStart
  %26 = icmp ne ptr %path_mPtr, null
  br i1 %26, label %if.then14, label %if.end17

if.then14:                                        ; preds = %newScope13
  %27 = icmp slt i64 %path_mLength, 128
  br i1 %27, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then14
  %28 = add i64 %path_mLength, 1
  %29 = alloca i8, i64 %28, align 1
  %30 = mul i64 %28, 1
  %31 = getelementptr inbounds i8, ptr %29, i32 0
  call void @llvm.memset.p0.i64(ptr align 1 %31, i8 0, i64 %30, i1 false)
  store ptr %29, ptr %ptr, align 8
  br label %if.end16

if.else:                                          ; preds = %if.then14
  %32 = add i64 %path_mLength, 1
  %33 = mul i64 1, %32
  %34 = call ptr @tc_malloc(i64 %33)
  %35 = mul i64 %32, 1
  %36 = getelementptr inbounds i8, ptr %34, i32 0
  call void @llvm.memset.p0.i64(ptr align 1 %36, i8 0, i64 %35, i1 false)
  store ptr %34, ptr %ptr, align 8
  %37 = load ptr, ptr %ptr, align 8
  %38 = getelementptr inbounds %_BF_DeferredData_c8028z, ptr %3, i32 0, i32 1
  %39 = load ptr, ptr %deferredCallTail, align 8
  store ptr %39, ptr %38, align 8
  %40 = getelementptr inbounds %_BF_DeferredData_c8028z, ptr %3, i32 0, i32 0
  store i64 25769803943, ptr %40, align 8
  %41 = getelementptr inbounds %_BF_DeferredData_c8028z, ptr %3, i32 0, i32 2
  store ptr %37, ptr %41, align 8
  store ptr %3, ptr %deferredCallTail, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then15
  %42 = load ptr, ptr %ptr, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %42, ptr align 1 %path_mPtr, i64 %path_mLength, i1 false)
  %43 = load ptr, ptr %ptr, align 8
  %44 = getelementptr inbounds i8, ptr %43, i64 %path_mLength
  store i8 0, ptr %44, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %newScope13
  %45 = load ptr, ptr %ptr, align 8
  %46 = load i32, ptr %createKind, align 4
  %47 = load i32, ptr %createFlags, align 4
  %48 = load i32, ptr %fileFlags, align 4
  %BfpFile_Create = call ptr @"?BfpFile_Create@Hook@Platform@System@bf@@SAPEA?AUBfpFile@234@PEADW4BfpFileCreateKind@234@W4BfpFileCreateFlags@234@W4BfpFileAttributes@234@PEAW4BfpFileResult@234@@Z"(ptr %45, i32 %46, i32 %47, i32 %48, ptr %fileResult)
  store ptr %BfpFile_Create, ptr %25, align 8
  br label %newScope18

newScope18:                                       ; preds = %if.end17
  %49 = getelementptr inbounds %"corlib.BufferedFileStream@IO@System@bf", ptr %7, i32 0, i32 1
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %newScope18
  %52 = load i32, ptr %fileResult, align 4
  %53 = icmp ne i32 %52, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %newScope18
  %54 = phi i1 [ true, %newScope18 ], [ %53, %lor.rhs ]
  br i1 %54, label %if.then19, label %if.end26

if.then19:                                        ; preds = %lor.end
  %55 = load i32, ptr %fileResult, align 4
  br label %newScope20

newScope20:                                       ; preds = %if.then19
  switch i32 %55, label %noSwitch21 [
    i32 9, label %switch.022
    i32 8, label %switch.123
  ]

noSwitch21:                                       ; preds = %newScope20
  br label %default24

switch.022:                                       ; preds = %newScope20
  %56 = getelementptr inbounds %"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf", ptr %4, i32 0, i32 1
  %57 = getelementptr inbounds %"corlib.?$__TUPLE_err@W4FileOpenError@IO@System@bf@@@bf", ptr %56, i32 0, i32 1
  store i8 3, ptr %57, align 1
  %58 = getelementptr inbounds %"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf", ptr %4, i32 0, i32 2
  store i8 1, ptr %58, align 4
  %59 = load %"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf", ptr %4, align 1
  %60 = load ptr, ptr %__return.addr, align 1
  store %"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf" %59, ptr %60, align 1
  br label %deferredCalls

dyn.continue:                                     ; preds = %deferCall.end
  br label %exit

switch.123:                                       ; preds = %newScope20
  %61 = getelementptr inbounds %"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf", ptr %5, i32 0, i32 1
  %62 = getelementptr inbounds %"corlib.?$__TUPLE_err@W4FileOpenError@IO@System@bf@@@bf", ptr %61, i32 0, i32 1
  store i8 1, ptr %62, align 1
  %63 = getelementptr inbounds %"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf", ptr %5, i32 0, i32 2
  store i8 1, ptr %63, align 4
  %64 = load %"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf", ptr %5, align 1
  %65 = load ptr, ptr %__return.addr, align 1
  store %"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf" %64, ptr %65, align 1
  br label %deferredCalls

default24:                                        ; preds = %noSwitch21
  %66 = getelementptr inbounds %"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf", ptr %6, i32 0, i32 1
  %67 = getelementptr inbounds %"corlib.?$__TUPLE_err@W4FileOpenError@IO@System@bf@@@bf", ptr %66, i32 0, i32 1
  store i8 0, ptr %67, align 1
  %68 = getelementptr inbounds %"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf", ptr %6, i32 0, i32 2
  store i8 1, ptr %68, align 4
  %69 = load %"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf", ptr %6, align 1
  %70 = load ptr, ptr %__return.addr, align 1
  store %"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf" %69, ptr %70, align 1
  br label %deferredCalls

switch.end25:                                     ; No predecessors!
  unreachable

if.end26:                                         ; preds = %lor.end
  %71 = getelementptr inbounds %"corlib.BufferedFileStream@IO@System@bf", ptr %7, i32 0, i32 3
  store i8 %access, ptr %71, align 1
  call void @"?MakeBuffer@BufferedStream@IO@System@bf@@QEAAXTint@@@Z"(ptr %7, i64 %bufferSize)
  %72 = load ptr, ptr %__return.addr, align 1
  store %"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf" zeroinitializer, ptr %72, align 1
  br label %deferredCalls

dyn.processor:                                    ; preds = %deferredCalls
  br label %deferCall.cond

deferCall.cond:                                   ; preds = %deferred.isNull, %dyn.processor
  %73 = load ptr, ptr %deferredCallTail, align 8
  %74 = icmp ne ptr %73, null
  br i1 %74, label %deferCall.body, label %deferCall.end

deferCall.body:                                   ; preds = %deferCall.cond
  %75 = getelementptr inbounds %"corlib.DeferredCall@System@bf", ptr %73, i32 0, i32 2
  %76 = load ptr, ptr %75, align 8
  store ptr %76, ptr %deferredCallTail, align 8
  %77 = getelementptr inbounds %_BF_DeferredData_c8028z, ptr %73, i32 0, i32 2
  %78 = load ptr, ptr %77, align 8
  %79 = icmp ne ptr %78, null
  br i1 %79, label %deferred.notNull, label %deferred.isNull

deferred.notNull:                                 ; preds = %deferCall.body
  call void @tc_free(ptr %78)
  br label %deferred.isNull

deferred.isNull:                                  ; preds = %deferred.notNull, %deferCall.body
  br label %deferCall.cond

deferCall.end:                                    ; preds = %deferCall.cond
  br label %dyn.continue

deferredCalls:                                    ; preds = %if.end26, %default24, %switch.123, %switch.022
  br label %dyn.processor

exit:                                             ; preds = %dyn.continue
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?Attach@BufferedFileStream@IO@System@bf@@QEAA?AU?$Result@X@34@PEAUBfpFile@Platform@34@W4FileAccess@234@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf"), ptr, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?PushPosition@BufferedFileStream@IO@System@bf@@QEAA?AUPositionRestorer@1234@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.PositionRestorer@BufferedFileStream@IO@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
define void @"?Delete@BufferedFileStream@IO@System@bf@@MEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %0 = alloca %"corlib.?$Result@X@System@bf", align 1
  store ptr %this, ptr %this.addr, align 8
  %1 = load ptr, ptr %this.addr, align 8
  %2 = load ptr, ptr %1, align 8
  %3 = getelementptr inbounds ptr, ptr %2, i32 15
  %4 = load ptr, ptr %3, align 8
  call void %4(ptr %1, ptr sret(%"corlib.?$Result@X@System@bf") %0)
  call void @"?ReturnValueDiscarded__im@?$Result@X@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(1) %0)
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?SeekUnderlying@BufferedFileStream@IO@System@bf@@IEAA?AU?$Result@X?AUFileError@IO@System@bf@@@34@_JW4BfpFileSeekKind@Platform@34@@Z"(ptr %this, ptr noalias sret(%"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf") %0, i64 %offset, i32 %seekKind) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return.addr = alloca ptr, align 8
  %newPos = alloca i64, align 8
  %1 = alloca %"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf", align 1
  %result = alloca %"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf", align 1
  store ptr %this, ptr %this.addr, align 8
  %2 = load ptr, ptr %this.addr, align 8
  store ptr %0, ptr %__return.addr, align 1
  %3 = getelementptr inbounds %"corlib.BufferedFileStream@IO@System@bf", ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %BfpFile_Seek = call i64 @"?BfpFile_Seek@Hook@Platform@System@bf@@SA_JPEAUBfpFile@234@_JW4BfpFileSeekKind@234@@Z"(ptr %4, i64 %offset, i32 %seekKind)
  store i64 %BfpFile_Seek, ptr %newPos, align 8
  %5 = icmp eq i32 %seekKind, 0
  br i1 %5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %6 = load i64, ptr %newPos, align 8
  %7 = icmp ne i64 %6, %offset
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %8 = phi i1 [ false, %entry ], [ %7, %land.rhs ]
  br i1 %8, label %cond.then, label %cond.else

cond.then:                                        ; preds = %land.end
  %9 = getelementptr inbounds %"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf", ptr %1, i32 0, i32 1
  %10 = getelementptr inbounds %"corlib.?$__TUPLE_err@UFileError@IO@System@bf@@@bf", ptr %9, i32 0, i32 1
  store %"corlib.FileError@IO@System@bf" <{ %"corlib.Enum@System@bf" zeroinitializer, i8 0, i8 3 }>, ptr %10, align 1
  %11 = getelementptr inbounds %"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf", ptr %1, i32 0, i32 2
  store i8 1, ptr %11, align 4
  %12 = load %"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf", ptr %1, align 1
  br label %cond.end

cond.else:                                        ; preds = %land.end
  br label %cond.end

cond.end:                                         ; preds = %cond.else, %cond.then
  %13 = phi %"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf" [ %12, %cond.then ], [ zeroinitializer, %cond.else ]
  br label %cond.cont

cond.cont:                                        ; preds = %cond.end
  store %"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf" %13, ptr %result, align 1
  br label %newScope

newScope:                                         ; preds = %cond.cont
  %14 = getelementptr inbounds %"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf", ptr %result, i32 0, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr inbounds %"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf", ptr %result, i32 0, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  %19 = getelementptr inbounds %"corlib.BufferedFileStream@IO@System@bf", ptr %2, i32 0, i32 2
  %20 = load i64, ptr %newPos, align 8
  store i64 %20, ptr %19, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %newScope
  %21 = load %"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf", ptr %result, align 1
  %22 = load ptr, ptr %__return.addr, align 1
  store %"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf" %21, ptr %22, align 1
  br label %exit

exit:                                             ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@BufferedFileStream@IO@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__CanRead@BufferedFileStream@IO@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__CanWrite@BufferedFileStream@IO@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?set__Position@BufferedFileStream@IO@System@bf@@QEAAX_J@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
define void @"?~this@BufferedFileStream@IO@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr inbounds ptr, ptr %1, i32 24
  %3 = load ptr, ptr %2, align 8
  call void %3(ptr %0)
  call void @"?~this@BufferedStream@IO@System@bf@@QEAAXXZ"(ptr %0)
  br label %exit

exit:                                             ; preds = %newScope
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?Seek@BufferedFileStream@IO@System@bf@@QEAA?AU?$Result@X@34@_JW4SeekKind@Stream@234@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf"), i64, i8) #0

; Function Attrs: nounwind uwtable
define void @"?Close@BufferedFileStream@IO@System@bf@@QEAA?AU?$Result@X@34@XZ"(ptr %this, ptr noalias sret(%"corlib.?$Result@X@System@bf") %0) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.?$Result@X@System@bf", align 1
  store ptr %this, ptr %this.addr, align 8
  %2 = load ptr, ptr %this.addr, align 8
  store ptr %0, ptr %__return.addr, align 1
  call void @"?Close@BufferedStream@IO@System@bf@@QEAA?AU?$Result@X@34@XZ"(ptr %2, ptr sret(%"corlib.?$Result@X@System@bf") %1)
  %3 = load %"corlib.?$Result@X@System@bf", ptr %1, align 1
  %4 = load %"corlib.?$Result@X@System@bf", ptr %1, align 1
  store %"corlib.?$Result@X@System@bf" %4, ptr %1, align 1
  br label %newScope

newScope:                                         ; preds = %entry
  %5 = getelementptr inbounds %"corlib.BufferedFileStream@IO@System@bf", ptr %2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %6, null
  br i1 %7, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  %8 = getelementptr inbounds %"corlib.BufferedFileStream@IO@System@bf", ptr %2, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  call void @"?BfpFile_Release@Hook@Platform@System@bf@@SAXPEAUBfpFile@234@@Z"(ptr %9)
  br label %if.end

if.end:                                           ; preds = %if.then, %newScope
  %10 = getelementptr inbounds %"corlib.BufferedFileStream@IO@System@bf", ptr %2, i32 0, i32 1
  store ptr null, ptr %10, align 8
  %11 = getelementptr inbounds %"corlib.BufferedFileStream@IO@System@bf", ptr %2, i32 0, i32 3
  store i8 0, ptr %11, align 1
  %12 = getelementptr inbounds %"corlib.BufferedFileStream@IO@System@bf", ptr %2, i32 0, i32 2
  store i64 0, ptr %12, align 8
  %13 = load %"corlib.?$Result@X@System@bf", ptr %1, align 1
  %14 = load ptr, ptr %__return.addr, align 1
  store %"corlib.?$Result@X@System@bf" %13, ptr %14, align 1
  br label %exit

exit:                                             ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?UpdateLength@BufferedFileStream@IO@System@bf@@IEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %0, i32 0, i32 2
  %2 = getelementptr inbounds %"corlib.BufferedFileStream@IO@System@bf", ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %BfpFile_GetFileSize = call i64 @"?BfpFile_GetFileSize@Hook@Platform@System@bf@@SA_JPEAUBfpFile@234@@Z"(ptr %3)
  store i64 %BfpFile_GetFileSize, ptr %1, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?TryReadUnderlying@BufferedFileStream@IO@System@bf@@IEAA?AU?$Result@Tint@@@34@_JU?$Span@E@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64, ptr) #0

; Function Attrs: nounwind uwtable
define void @"?TryWriteUnderlying@BufferedFileStream@IO@System@bf@@IEAA?AU?$Result@Tint@@@34@_JU?$Span@E@34@@Z"(ptr %this, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf") %0, i64 %pos, ptr %data) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf", align 1
  %2 = alloca %"corlib.FileError@IO@System@bf", align 1
  %3 = alloca %"corlib.?$Result@Tint@@@System@bf", align 8
  %result = alloca i32, align 4
  %numBytesRead = alloca i64, align 8
  %4 = alloca %"corlib.?$Result@Tint@@@System@bf", align 8
  store ptr %this, ptr %this.addr, align 8
  %5 = load ptr, ptr %this.addr, align 8
  store ptr %0, ptr %__return.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %6 = getelementptr inbounds %"corlib.BufferedFileStream@IO@System@bf", ptr %5, i32 0, i32 2
  %7 = load i64, ptr %6, align 8
  %8 = icmp ne i64 %7, %pos
  br i1 %8, label %if.then, label %if.end2

if.then:                                          ; preds = %newScope
  call void @"?SeekUnderlying@BufferedFileStream@IO@System@bf@@IEAA?AU?$Result@X?AUFileError@IO@System@bf@@@34@_JW4BfpFileSeekKind@Platform@34@@Z"(ptr %5, ptr sret(%"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf") %1, i64 %pos, i32 0)
  br label %mixinStart

mixinStart:                                       ; preds = %if.then
  %9 = getelementptr inbounds %"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf", ptr %1, i32 0, i32 2
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 1
  br i1 %11, label %caseMatch, label %caseDone

caseMatch:                                        ; preds = %mixinStart
  %12 = getelementptr inbounds %"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf", ptr %1, i32 0, i32 1
  %13 = getelementptr inbounds %"corlib.?$__TUPLE_err@UFileError@IO@System@bf@@@bf", ptr %12, i32 0, i32 1
  %14 = load %"corlib.FileError@IO@System@bf", ptr %13, align 1
  store %"corlib.FileError@IO@System@bf" %14, ptr %2, align 1
  br label %caseDone

caseDone:                                         ; preds = %caseMatch, %mixinStart
  %15 = phi i1 [ false, %mixinStart ], [ true, %caseMatch ]
  br i1 %15, label %if.then1, label %if.end

if.then1:                                         ; preds = %caseDone
  %16 = getelementptr inbounds %"corlib.?$Result@Tint@@@System@bf", ptr %3, i32 0, i32 2
  store i8 1, ptr %16, align 4
  %17 = load %"corlib.?$Result@Tint@@@System@bf", ptr %3, align 8
  %18 = load ptr, ptr %__return.addr, align 8
  store %"corlib.?$Result@Tint@@@System@bf" %17, ptr %18, align 8
  br label %exit

if.end:                                           ; preds = %caseDone
  call void @"?Get__im@?$Result@XUFileError@IO@System@bf@@@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(3) %1)
  br label %if.end2

if.end2:                                          ; preds = %if.end, %newScope
  store i32 0, ptr %result, align 4
  %19 = getelementptr inbounds %"corlib.BufferedFileStream@IO@System@bf", ptr %5, i32 0, i32 1
  %20 = getelementptr inbounds %"corlib.?$Span@E@System@bf", ptr %data, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %"corlib.?$Span@E@System@bf", ptr %data, i32 0, i32 2
  %23 = load i64, ptr %22, align 8
  %get__Ptr = call ptr @"?get__Ptr__im@?$Span@E@System@bf@@QEAAPEAEXZ"(ptr %21, i64 %23)
  %24 = getelementptr inbounds %"corlib.?$Span@E@System@bf", ptr %data, i32 0, i32 1
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %"corlib.?$Span@E@System@bf", ptr %data, i32 0, i32 2
  %27 = load i64, ptr %26, align 8
  %get__Length = call i64 @"?get__Length__im@?$Span@E@System@bf@@QEAATint@@XZ"(ptr %25, i64 %27)
  %28 = load ptr, ptr %19, align 8
  %BfpFile_Write = call i64 @"?BfpFile_Write@Hook@Platform@System@bf@@SATint@@PEAUBfpFile@234@PEAXTint@@2PEAW4BfpFileResult@234@@Z"(ptr %28, ptr %get__Ptr, i64 %get__Length, i64 -1, ptr %result)
  store i64 %BfpFile_Write, ptr %numBytesRead, align 8
  br label %newScope3

newScope3:                                        ; preds = %if.end2
  %29 = load i32, ptr %result, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %newScope3
  %31 = load i32, ptr %result, align 4
  %32 = icmp ne i32 %31, 11
  br label %land.end

land.end:                                         ; preds = %land.rhs, %newScope3
  %33 = phi i1 [ false, %newScope3 ], [ %32, %land.rhs ]
  br i1 %33, label %if.then4, label %if.end5

if.then4:                                         ; preds = %land.end
  %34 = load ptr, ptr %__return.addr, align 8
  store %"corlib.?$Result@Tint@@@System@bf" <{ %"corlib.Enum@System@bf" zeroinitializer, %"corlib.?$__TUPLE_val@Tint@@@bf" zeroinitializer, i8 1 }>, ptr %34, align 8
  br label %exit

if.end5:                                          ; preds = %land.end
  %35 = getelementptr inbounds %"corlib.BufferedFileStream@IO@System@bf", ptr %5, i32 0, i32 2
  %36 = load i64, ptr %numBytesRead, align 8
  %37 = load i64, ptr %35, align 8
  %38 = add i64 %37, %36
  store i64 %38, ptr %35, align 8
  %39 = load i64, ptr %numBytesRead, align 8
  call void @"??B?$Result@Tint@@@System@bf@@SA?AU012@Tint@@@Z"(ptr sret(%"corlib.?$Result@Tint@@@System@bf") %4, i64 %39)
  %40 = load %"corlib.?$Result@Tint@@@System@bf", ptr %4, align 8
  %41 = load ptr, ptr %__return.addr, align 8
  store %"corlib.?$Result@Tint@@@System@bf" %40, ptr %41, align 8
  br label %exit

exit:                                             ; preds = %if.end5, %if.then4, %if.then1
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?TryRead@BufferedFileStream@IO@System@bf@@QEAA?AU?$Result@Tint@@?AUFileError@IO@System@bf@@@34@U?$Span@E@34@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@UFileError@IO@System@bf@@@System@bf"), ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?SetLength@BufferedFileStream@IO@System@bf@@QEAA?AU?$Result@X@34@_J@Z"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
define void @"?Flush@BufferedFileStream@IO@System@bf@@QEAA?AU?$Result@X@34@XZ"(ptr %this, ptr noalias sret(%"corlib.?$Result@X@System@bf") %0) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.?$Result@X@System@bf", align 1
  store ptr %this, ptr %this.addr, align 8
  %2 = load ptr, ptr %this.addr, align 8
  store ptr %0, ptr %__return.addr, align 1
  call void @"?Flush@BufferedStream@IO@System@bf@@QEAA?AU?$Result@X@34@XZ"(ptr %2, ptr sret(%"corlib.?$Result@X@System@bf") %1)
  %3 = load %"corlib.?$Result@X@System@bf", ptr %1, align 1
  store %"corlib.?$Result@X@System@bf" %3, ptr %1, align 1
  br label %newScope

newScope:                                         ; preds = %entry
  %4 = getelementptr inbounds %"corlib.BufferedFileStream@IO@System@bf", ptr %2, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  %7 = getelementptr inbounds %"corlib.BufferedFileStream@IO@System@bf", ptr %2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  call void @"?BfpFile_Flush@Hook@Platform@System@bf@@SAXPEAUBfpFile@234@@Z"(ptr %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %newScope
  %9 = load %"corlib.?$Result@X@System@bf", ptr %1, align 1
  %10 = load ptr, ptr %__return.addr, align 1
  store %"corlib.?$Result@X@System@bf" %9, ptr %10, align 1
  br label %exit

exit:                                             ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@BufferedFileStream@IO@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@BufferedFileStream@IO@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers@BufferedFileStream@IO@System@bf@@IEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Close@BufferedStream@IO@System@bf@@QEAA?AU?$Result@X@34@XZ"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?BfpFile_Release@Hook@Platform@System@bf@@SAXPEAUBfpFile@234@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@BufferedStream@IO@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext, ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i1 @"?HasFlag__im@FileAccess@IO@System@bf@@SA_NCW41234@@Z"(i8, i8) #0

; Function Attrs: nounwind uwtable
declare i1 @"?HasFlag__im@FileShare@IO@System@bf@@SA_NHW41234@@Z"(i32, i32) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare ptr @tc_malloc(i64)

declare void @tc_free(ptr)

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare ptr @"?BfpFile_Create@Hook@Platform@System@bf@@SAPEA?AUBfpFile@234@PEADW4BfpFileCreateKind@234@W4BfpFileCreateFlags@234@W4BfpFileAttributes@234@PEAW4BfpFileResult@234@@Z"(ptr, i32, i32, i32, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?MakeBuffer@BufferedStream@IO@System@bf@@QEAAXTint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?~this@BufferedStream@IO@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Flush@BufferedStream@IO@System@bf@@QEAA?AU?$Result@X@34@XZ"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?BfpFile_Flush@Hook@Platform@System@bf@@SAXPEAUBfpFile@234@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Close@Stream@IO@System@bf@@UEAA?AU?$Result@X@34@XZ"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?ReturnValueDiscarded__im@?$Result@X@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(1)) #0

; Function Attrs: nounwind uwtable
declare i64 @"?BfpFile_GetFileSize@Hook@Platform@System@bf@@SA_JPEAUBfpFile@234@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Get__im@?$Result@XUFileError@IO@System@bf@@@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(3)) #0

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @"?get__Ptr__im@?$Span@E@System@bf@@QEAAPEAEXZ"(ptr %this_mPtr, i64 %this_mLength) #3 {
entry:
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  %__return = alloca ptr, align 8
  store ptr %this_mPtr, ptr %0, align 8
  store i64 %this_mLength, ptr %1, align 8
  store ptr %this_mPtr, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %2 = load ptr, ptr %__return, align 8
  ret ptr %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @"?get__Length__im@?$Span@E@System@bf@@QEAATint@@XZ"(ptr %this_mPtr, i64 %this_mLength) #3 {
entry:
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  %__return = alloca i64, align 8
  store ptr %this_mPtr, ptr %0, align 8
  store i64 %this_mLength, ptr %1, align 8
  store i64 %this_mLength, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %2 = load i64, ptr %__return, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
declare i64 @"?BfpFile_Write@Hook@Platform@System@bf@@SATint@@PEAUBfpFile@234@PEAXTint@@2PEAW4BfpFileResult@234@@Z"(ptr, ptr, i64, i64, ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
define internal void @"??B?$Result@Tint@@@System@bf@@SA?AU012@Tint@@@Z"(ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf") %0, i64 %value) #3 {
entry:
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.?$Result@Tint@@@System@bf", align 8
  store ptr %0, ptr %__return.addr, align 8
  %2 = getelementptr inbounds %"corlib.?$Result@Tint@@@System@bf", ptr %1, i32 0, i32 1
  %3 = getelementptr inbounds %"corlib.?$__TUPLE_val@Tint@@@bf", ptr %2, i32 0, i32 1
  store i64 %value, ptr %3, align 8
  %4 = getelementptr inbounds %"corlib.?$Result@Tint@@@System@bf", ptr %1, i32 0, i32 2
  store i8 0, ptr %4, align 4
  %5 = load %"corlib.?$Result@Tint@@@System@bf", ptr %1, align 8
  %6 = load ptr, ptr %__return.addr, align 8
  store %"corlib.?$Result@Tint@@@System@bf" %5, ptr %6, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare i64 @"?BfpFile_Seek@Hook@Platform@System@bf@@SA_JPEAUBfpFile@234@_JW4BfpFileSeekKind@234@@Z"(ptr, i64, i32) #0

attributes #0 = { nounwind uwtable }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline nounwind uwtable }
