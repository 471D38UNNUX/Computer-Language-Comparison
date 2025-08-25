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
%"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf" = type <{ %"corlib.Enum@System@bf", %"corlib.?$__TUPLE_err@UFileError@IO@System@bf@@@bf", i8 }>
%"corlib.?$__TUPLE_err@UFileError@IO@System@bf@@@bf" = type <{ %"corlib.Tuple@System@bf", %"corlib.FileError@IO@System@bf" }>
%"corlib.FileError@IO@System@bf" = type <{ %"corlib.Enum@System@bf", i8, i8 }>
%"corlib.?$Result@Tint@@@System@bf" = type <{ %"corlib.Enum@System@bf", %"corlib.?$__TUPLE_val@Tint@@@bf", i8 }>
%"corlib.?$__TUPLE_val@Tint@@@bf" = type <{ %"corlib.Tuple@System@bf", i64 }>
%"corlib.?$Span@E@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>

@__bfStrObj204 = external constant %"corlib.String@System@bf"
@__bfStrObj205 = external constant %"corlib.String@System@bf"

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@BufferedFileStream@IO@System@bf@@QEAAXXZ"(ptr %this) local_unnamed_addr #0 {
entry:
  tail call void @"?__BfCtor@BufferedStream@IO@System@bf@@QEAAXXZ"(ptr %this)
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Open@BufferedFileStream@IO@System@bf@@QEAA?AU?$Result@X?AW4FileOpenError@IO@System@bf@@@34@UStringView@34@W4FileAccess@234@W4FileShare@234@Tint@@W4FileOptions@234@PEAUSecurityAttributes@234@@Z"(ptr %this, ptr noalias nocapture writeonly sret(%"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf") %0, ptr %path_mPtr, i64 %path_mLength, i8 %access, i32 %share, i64 %bufferSize, i32 %options, ptr nocapture readnone %secAttrs) local_unnamed_addr #0 {
entry:
  %1 = alloca %"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf", align 1
  call void @"?Open@BufferedFileStream@IO@System@bf@@QEAA?AU?$Result@X?AW4FileOpenError@IO@System@bf@@@34@UStringView@34@W4FileMode@234@W4FileAccess@234@W4FileShare@234@Tint@@W4FileOptions@234@PEAUSecurityAttributes@234@@Z"(ptr %this, ptr nonnull sret(%"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf") %1, ptr %path_mPtr, i64 %path_mLength, i32 3, i8 %access, i32 %share, i64 %bufferSize, i32 poison, ptr poison)
  %.fca.1.1.gep = getelementptr inbounds %"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf", ptr %1, i64 0, i32 1, i32 1
  %.fca.1.1.load = load i8, ptr %.fca.1.1.gep, align 1
  %.fca.2.gep = getelementptr inbounds %"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf", ptr %1, i64 0, i32 2
  %.fca.2.load = load i8, ptr %.fca.2.gep, align 1
  store i8 %.fca.1.1.load, ptr %0, align 1
  %.repack3 = getelementptr inbounds %"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf", ptr %0, i64 0, i32 2
  store i8 %.fca.2.load, ptr %.repack3, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Open@BufferedFileStream@IO@System@bf@@QEAA?AU?$Result@X?AW4FileOpenError@IO@System@bf@@@34@UStringView@34@W4FileMode@234@W4FileAccess@234@W4FileShare@234@Tint@@W4FileOptions@234@PEAUSecurityAttributes@234@@Z"(ptr %this, ptr noalias nocapture writeonly sret(%"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf") %0, ptr readonly %path_mPtr, i64 %path_mLength, i32 %mode, i8 %access, i32 %share, i64 %bufferSize, i32 %options, ptr nocapture readnone %secAttrs) local_unnamed_addr #0 {
entry:
  %fileResult = alloca i32, align 4
  %1 = alloca %_BF_DeferredData_c8028z, align 8
  %2 = getelementptr inbounds %"corlib.BufferedFileStream@IO@System@bf", ptr %this, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  tail call void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext %4, ptr nonnull @__bfStrObj204, ptr nonnull @__bfStrObj205, i64 378)
  switch i32 %mode, label %default [
    i32 1, label %switch.end
    i32 2, label %switch.1
    i32 3, label %switch.2
    i32 4, label %switch.3
    i32 5, label %switch.4
    i32 6, label %switch.5
  ]

switch.1:                                         ; preds = %entry
  br label %switch.end

switch.2:                                         ; preds = %entry
  br label %switch.end

switch.3:                                         ; preds = %entry
  br label %switch.end

switch.4:                                         ; preds = %entry
  br label %switch.end

switch.5:                                         ; preds = %entry
  br label %switch.end

default:                                          ; preds = %entry
  unreachable

switch.end:                                       ; preds = %entry, %switch.5, %switch.4, %switch.3, %switch.2, %switch.1
  %createFlags.0 = phi i32 [ 32, %switch.5 ], [ 64, %switch.4 ], [ 0, %switch.3 ], [ 0, %switch.2 ], [ 0, %switch.1 ], [ 0, %entry ]
  %createKind.0 = phi i32 [ 0, %switch.5 ], [ 0, %switch.4 ], [ 3, %switch.3 ], [ 2, %switch.2 ], [ 0, %switch.1 ], [ 1, %entry ]
  %HasFlag = tail call i1 @"?HasFlag__im@FileAccess@IO@System@bf@@SA_NCW41234@@Z"(i8 %access, i8 1)
  %5 = zext i1 %HasFlag to i32
  %spec.select = or disjoint i32 %createFlags.0, %5
  %HasFlag1 = tail call i1 @"?HasFlag__im@FileAccess@IO@System@bf@@SA_NCW41234@@Z"(i8 %access, i8 2)
  %6 = or disjoint i32 %spec.select, 2
  %createFlags.2 = select i1 %HasFlag1, i32 %6, i32 %spec.select
  %HasFlag4 = tail call i1 @"?HasFlag__im@FileShare@IO@System@bf@@SA_NHW41234@@Z"(i32 %share, i32 1)
  %7 = or disjoint i32 %createFlags.2, 4
  %createFlags.3 = select i1 %HasFlag4, i32 %7, i32 %createFlags.2
  %HasFlag7 = tail call i1 @"?HasFlag__im@FileShare@IO@System@bf@@SA_NHW41234@@Z"(i32 %share, i32 2)
  %8 = or i32 %createFlags.3, 8
  %createFlags.4 = select i1 %HasFlag7, i32 %8, i32 %createFlags.3
  %HasFlag10 = tail call i1 @"?HasFlag__im@FileShare@IO@System@bf@@SA_NHW41234@@Z"(i32 %share, i32 4)
  %9 = or i32 %createFlags.4, 16
  %createFlags.5 = select i1 %HasFlag10, i32 %9, i32 %createFlags.4
  store i32 0, ptr %fileResult, align 4
  %.not = icmp eq ptr %path_mPtr, null
  br i1 %.not, label %if.end17, label %if.then14

if.then14:                                        ; preds = %switch.end
  %10 = icmp slt i64 %path_mLength, 128
  %11 = add i64 %path_mLength, 1
  br i1 %10, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then14
  %12 = alloca i8, i64 %11, align 1
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %12, i8 0, i64 %11, i1 false)
  br label %if.end16

if.else:                                          ; preds = %if.then14
  %13 = tail call ptr @tc_malloc(i64 %11) #4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %13, i8 0, i64 %11, i1 false)
  %14 = getelementptr inbounds %_BF_DeferredData_c8028z, ptr %1, i64 0, i32 1
  store ptr null, ptr %14, align 8
  store i64 25769803943, ptr %1, align 8
  %15 = getelementptr inbounds %_BF_DeferredData_c8028z, ptr %1, i64 0, i32 2
  store ptr %13, ptr %15, align 8
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then15
  %deferredCallTail.0 = phi ptr [ null, %if.then15 ], [ %1, %if.else ]
  %ptr.0 = phi ptr [ %12, %if.then15 ], [ %13, %if.else ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %ptr.0, ptr nonnull align 1 %path_mPtr, i64 %path_mLength, i1 false)
  %16 = getelementptr inbounds i8, ptr %ptr.0, i64 %path_mLength
  store i8 0, ptr %16, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %switch.end
  %deferredCallTail.1 = phi ptr [ %deferredCallTail.0, %if.end16 ], [ null, %switch.end ]
  %ptr.1 = phi ptr [ %ptr.0, %if.end16 ], [ null, %switch.end ]
  %BfpFile_Create = call ptr @"?BfpFile_Create@Hook@Platform@System@bf@@SAPEA?AUBfpFile@234@PEADW4BfpFileCreateKind@234@W4BfpFileCreateFlags@234@W4BfpFileAttributes@234@PEAW4BfpFileResult@234@@Z"(ptr %ptr.1, i32 %createKind.0, i32 %createFlags.5, i32 1, ptr nonnull %fileResult)
  store ptr %BfpFile_Create, ptr %2, align 8
  %17 = icmp eq ptr %BfpFile_Create, null
  %18 = load i32, ptr %fileResult, align 4
  %19 = icmp ne i32 %18, 0
  %20 = select i1 %17, i1 true, i1 %19
  br i1 %20, label %if.then19, label %if.end26

if.then19:                                        ; preds = %if.end17
  %.repack59 = getelementptr inbounds %"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf", ptr %0, i64 0, i32 2
  switch i32 %18, label %default24 [
    i32 9, label %switch.022
    i32 8, label %switch.123
  ]

switch.022:                                       ; preds = %if.then19
  store i8 3, ptr %0, align 1
  store i8 1, ptr %.repack59, align 1
  br label %deferredCalls

switch.123:                                       ; preds = %if.then19
  store i8 1, ptr %0, align 1
  store i8 1, ptr %.repack59, align 1
  br label %deferredCalls

default24:                                        ; preds = %if.then19
  store i8 0, ptr %0, align 1
  store i8 1, ptr %.repack59, align 1
  br label %deferredCalls

if.end26:                                         ; preds = %if.end17
  %21 = getelementptr inbounds %"corlib.BufferedFileStream@IO@System@bf", ptr %this, i64 0, i32 3
  store i8 %access, ptr %21, align 1
  call void @"?MakeBuffer@BufferedStream@IO@System@bf@@QEAAXTint@@@Z"(ptr nonnull %this, i64 %bufferSize)
  store i8 0, ptr %0, align 1
  %.repack50 = getelementptr inbounds %"corlib.?$Result@XW4FileOpenError@IO@System@bf@@@System@bf", ptr %0, i64 0, i32 2
  store i8 0, ptr %.repack50, align 1
  br label %deferredCalls

deferCall.body:                                   ; preds = %deferredCalls, %deferred.isNull
  %deferredCallTail.264 = phi ptr [ %23, %deferred.isNull ], [ %deferredCallTail.1, %deferredCalls ]
  %22 = getelementptr inbounds %"corlib.DeferredCall@System@bf", ptr %deferredCallTail.264, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %_BF_DeferredData_c8028z, ptr %deferredCallTail.264, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %.not62 = icmp eq ptr %25, null
  br i1 %.not62, label %deferred.isNull, label %deferred.notNull

deferred.notNull:                                 ; preds = %deferCall.body
  call void @tc_free(ptr nonnull %25) #4
  br label %deferred.isNull

deferred.isNull:                                  ; preds = %deferred.notNull, %deferCall.body
  %.not61 = icmp eq ptr %23, null
  br i1 %.not61, label %exit, label %deferCall.body

deferredCalls:                                    ; preds = %if.end26, %default24, %switch.123, %switch.022
  %.not6163 = icmp eq ptr %deferredCallTail.1, null
  br i1 %.not6163, label %exit, label %deferCall.body

exit:                                             ; preds = %deferred.isNull, %deferredCalls
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Delete@BufferedFileStream@IO@System@bf@@MEAAXXZ"(ptr %this) local_unnamed_addr #0 {
entry:
  %0 = alloca %"corlib.?$Result@X@System@bf", align 1
  %1 = load ptr, ptr %this, align 8
  %2 = getelementptr inbounds ptr, ptr %1, i64 15
  %3 = load ptr, ptr %2, align 8
  call void %3(ptr nonnull %this, ptr nonnull sret(%"corlib.?$Result@X@System@bf") %0) #4
  call void @"?ReturnValueDiscarded__im@?$Result@X@System@bf@@QEAAXXZ"(ptr nocapture nonnull dereferenceable(1) %0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?SeekUnderlying@BufferedFileStream@IO@System@bf@@IEAA?AU?$Result@X?AUFileError@IO@System@bf@@@34@_JW4BfpFileSeekKind@Platform@34@@Z"(ptr nocapture %this, ptr noalias nocapture writeonly sret(%"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf") %0, i64 %offset, i32 %seekKind) local_unnamed_addr #0 {
entry:
  %1 = getelementptr inbounds %"corlib.BufferedFileStream@IO@System@bf", ptr %this, i64 0, i32 1
  %2 = load ptr, ptr %1, align 8
  %BfpFile_Seek = tail call i64 @"?BfpFile_Seek@Hook@Platform@System@bf@@SA_JPEAUBfpFile@234@_JW4BfpFileSeekKind@234@@Z"(ptr %2, i64 %offset, i32 %seekKind)
  %3 = icmp eq i32 %seekKind, 0
  %4 = icmp ne i64 %BfpFile_Seek, %offset
  %5 = select i1 %3, i1 %4, i1 false
  %spec.select = select i1 %5, %"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf" <{ %"corlib.Enum@System@bf" poison, %"corlib.?$__TUPLE_err@UFileError@IO@System@bf@@@bf" <{ %"corlib.Tuple@System@bf" poison, %"corlib.FileError@IO@System@bf" <{ %"corlib.Enum@System@bf" poison, i8 0, i8 3 }> }>, i8 1 }>, %"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf" zeroinitializer
  %.fca.2.extract = extractvalue %"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf" %spec.select, 2
  %6 = icmp eq i8 %.fca.2.extract, 0
  br i1 %6, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %7 = getelementptr inbounds %"corlib.BufferedFileStream@IO@System@bf", ptr %this, i64 0, i32 2
  store i64 %BfpFile_Seek, ptr %7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %.elt12 = extractvalue %"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf" %spec.select, 1
  %.elt12.elt16 = extractvalue %"corlib.?$__TUPLE_err@UFileError@IO@System@bf@@@bf" %.elt12, 1
  %.repack17 = getelementptr inbounds %"corlib.FileError@IO@System@bf", ptr %0, i64 0, i32 1
  %.elt12.elt16.elt18 = extractvalue %"corlib.FileError@IO@System@bf" %.elt12.elt16, 1
  store i8 %.elt12.elt16.elt18, ptr %.repack17, align 1
  %.repack19 = getelementptr inbounds %"corlib.FileError@IO@System@bf", ptr %0, i64 0, i32 2
  %.elt12.elt16.elt20 = extractvalue %"corlib.FileError@IO@System@bf" %.elt12.elt16, 2
  store i8 %.elt12.elt16.elt20, ptr %.repack19, align 1
  %.repack13 = getelementptr inbounds %"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf", ptr %0, i64 0, i32 2
  store i8 %.fca.2.extract, ptr %.repack13, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?~this@BufferedFileStream@IO@System@bf@@QEAAXXZ"(ptr %this) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %this, align 8
  %1 = getelementptr inbounds ptr, ptr %0, i64 24
  %2 = load ptr, ptr %1, align 8
  tail call void %2(ptr nonnull %this) #4
  tail call void @"?~this@BufferedStream@IO@System@bf@@QEAAXXZ"(ptr nonnull %this)
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Close@BufferedFileStream@IO@System@bf@@QEAA?AU?$Result@X@34@XZ"(ptr %this, ptr noalias nocapture writeonly sret(%"corlib.?$Result@X@System@bf") %0) local_unnamed_addr #0 {
entry:
  %1 = alloca %"corlib.?$Result@X@System@bf", align 1
  call void @"?Close@BufferedStream@IO@System@bf@@QEAA?AU?$Result@X@34@XZ"(ptr %this, ptr nonnull sret(%"corlib.?$Result@X@System@bf") %1)
  %2 = getelementptr inbounds %"corlib.BufferedFileStream@IO@System@bf", ptr %this, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @"?BfpFile_Release@Hook@Platform@System@bf@@SAXPEAUBfpFile@234@@Z"(ptr nonnull %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %.fca.2.gep = getelementptr inbounds %"corlib.?$Result@X@System@bf", ptr %1, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %2, i8 0, i64 17, i1 false)
  %.fca.2.load5 = load i8, ptr %.fca.2.gep, align 1
  %.repack9 = getelementptr inbounds %"corlib.?$Result@X@System@bf", ptr %0, i64 0, i32 2
  store i8 %.fca.2.load5, ptr %.repack9, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?UpdateLength@BufferedFileStream@IO@System@bf@@IEAAXXZ"(ptr nocapture %this) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %this, i64 0, i32 2
  %1 = getelementptr inbounds %"corlib.BufferedFileStream@IO@System@bf", ptr %this, i64 0, i32 1
  %2 = load ptr, ptr %1, align 8
  %BfpFile_GetFileSize = tail call i64 @"?BfpFile_GetFileSize@Hook@Platform@System@bf@@SA_JPEAUBfpFile@234@@Z"(ptr %2)
  store i64 %BfpFile_GetFileSize, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?TryWriteUnderlying@BufferedFileStream@IO@System@bf@@IEAA?AU?$Result@Tint@@@34@_JU?$Span@E@34@@Z"(ptr nocapture %this, ptr noalias nocapture writeonly sret(%"corlib.?$Result@Tint@@@System@bf") %0, i64 %pos, ptr nocapture readonly %data) local_unnamed_addr #0 {
entry:
  %1 = alloca %"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf", align 1
  %result = alloca i32, align 4
  %2 = getelementptr inbounds %"corlib.BufferedFileStream@IO@System@bf", ptr %this, i64 0, i32 2
  %3 = load i64, ptr %2, align 8
  %.not = icmp eq i64 %3, %pos
  br i1 %.not, label %if.end2, label %if.then

if.then:                                          ; preds = %entry
  tail call void @llvm.experimental.noalias.scope.decl(metadata !0)
  %4 = getelementptr inbounds %"corlib.BufferedFileStream@IO@System@bf", ptr %this, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !noalias !0
  %BfpFile_Seek.i = tail call i64 @"?BfpFile_Seek@Hook@Platform@System@bf@@SA_JPEAUBfpFile@234@_JW4BfpFileSeekKind@234@@Z"(ptr %5, i64 %pos, i32 0), !noalias !0
  %.not40 = icmp eq i64 %BfpFile_Seek.i, %pos
  %spec.select.i = select i1 %.not40, %"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf" zeroinitializer, %"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf" <{ %"corlib.Enum@System@bf" poison, %"corlib.?$__TUPLE_err@UFileError@IO@System@bf@@@bf" <{ %"corlib.Tuple@System@bf" poison, %"corlib.FileError@IO@System@bf" <{ %"corlib.Enum@System@bf" poison, i8 0, i8 3 }> }>, i8 1 }>
  %.fca.2.extract.i = extractvalue %"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf" %spec.select.i, 2
  %6 = icmp eq i8 %.fca.2.extract.i, 0
  br i1 %6, label %"?SeekUnderlying@BufferedFileStream@IO@System@bf@@IEAA?AU?$Result@X?AUFileError@IO@System@bf@@@34@_JW4BfpFileSeekKind@Platform@34@@Z.exit.thread", label %"?SeekUnderlying@BufferedFileStream@IO@System@bf@@IEAA?AU?$Result@X?AUFileError@IO@System@bf@@@34@_JW4BfpFileSeekKind@Platform@34@@Z.exit"

"?SeekUnderlying@BufferedFileStream@IO@System@bf@@IEAA?AU?$Result@X?AUFileError@IO@System@bf@@@34@_JW4BfpFileSeekKind@Platform@34@@Z.exit.thread": ; preds = %if.then
  store i64 %BfpFile_Seek.i, ptr %2, align 8, !noalias !0
  %.elt12.i33 = extractvalue %"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf" %spec.select.i, 1
  %.elt12.elt16.i34 = extractvalue %"corlib.?$__TUPLE_err@UFileError@IO@System@bf@@@bf" %.elt12.i33, 1
  %.repack17.i35 = getelementptr inbounds %"corlib.FileError@IO@System@bf", ptr %1, i64 0, i32 1
  %.elt12.elt16.elt18.i36 = extractvalue %"corlib.FileError@IO@System@bf" %.elt12.elt16.i34, 1
  store i8 %.elt12.elt16.elt18.i36, ptr %.repack17.i35, align 1, !alias.scope !0
  %.repack19.i37 = getelementptr inbounds %"corlib.FileError@IO@System@bf", ptr %1, i64 0, i32 2
  %.elt12.elt16.elt20.i38 = extractvalue %"corlib.FileError@IO@System@bf" %.elt12.elt16.i34, 2
  store i8 %.elt12.elt16.elt20.i38, ptr %.repack19.i37, align 1, !alias.scope !0
  %.repack13.i39 = getelementptr inbounds %"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf", ptr %1, i64 0, i32 2
  store i8 0, ptr %.repack13.i39, align 1, !alias.scope !0
  br label %if.end

"?SeekUnderlying@BufferedFileStream@IO@System@bf@@IEAA?AU?$Result@X?AUFileError@IO@System@bf@@@34@_JW4BfpFileSeekKind@Platform@34@@Z.exit": ; preds = %if.then
  %.elt12.i = extractvalue %"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf" %spec.select.i, 1
  %.elt12.elt16.i = extractvalue %"corlib.?$__TUPLE_err@UFileError@IO@System@bf@@@bf" %.elt12.i, 1
  %.repack17.i = getelementptr inbounds %"corlib.FileError@IO@System@bf", ptr %1, i64 0, i32 1
  %.elt12.elt16.elt18.i = extractvalue %"corlib.FileError@IO@System@bf" %.elt12.elt16.i, 1
  store i8 %.elt12.elt16.elt18.i, ptr %.repack17.i, align 1, !alias.scope !0
  %.repack19.i = getelementptr inbounds %"corlib.FileError@IO@System@bf", ptr %1, i64 0, i32 2
  %.elt12.elt16.elt20.i = extractvalue %"corlib.FileError@IO@System@bf" %.elt12.elt16.i, 2
  store i8 %.elt12.elt16.elt20.i, ptr %.repack19.i, align 1, !alias.scope !0
  %.repack13.i = getelementptr inbounds %"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf", ptr %1, i64 0, i32 2
  store i8 %.fca.2.extract.i, ptr %.repack13.i, align 1, !alias.scope !0
  %7 = icmp eq i8 %.fca.2.extract.i, 1
  br i1 %7, label %exit, label %if.end

if.end:                                           ; preds = %"?SeekUnderlying@BufferedFileStream@IO@System@bf@@IEAA?AU?$Result@X?AUFileError@IO@System@bf@@@34@_JW4BfpFileSeekKind@Platform@34@@Z.exit.thread", %"?SeekUnderlying@BufferedFileStream@IO@System@bf@@IEAA?AU?$Result@X?AUFileError@IO@System@bf@@@34@_JW4BfpFileSeekKind@Platform@34@@Z.exit"
  call void @"?Get__im@?$Result@XUFileError@IO@System@bf@@@System@bf@@QEAAXXZ"(ptr nocapture nonnull dereferenceable(3) %1)
  br label %if.end2

if.end2:                                          ; preds = %if.end, %entry
  store i32 0, ptr %result, align 4
  %8 = getelementptr inbounds %"corlib.BufferedFileStream@IO@System@bf", ptr %this, i64 0, i32 1
  %9 = getelementptr inbounds %"corlib.?$Span@E@System@bf", ptr %data, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %"corlib.?$Span@E@System@bf", ptr %data, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = load ptr, ptr %8, align 8
  %BfpFile_Write = call i64 @"?BfpFile_Write@Hook@Platform@System@bf@@SATint@@PEAUBfpFile@234@PEAXTint@@2PEAW4BfpFileResult@234@@Z"(ptr %13, ptr %10, i64 %12, i64 -1, ptr nonnull %result)
  %14 = load i32, ptr %result, align 4
  switch i32 %14, label %exit.sink.split [
    i32 11, label %if.end5
    i32 0, label %if.end5
  ]

if.end5:                                          ; preds = %if.end2, %if.end2
  %15 = load i64, ptr %2, align 8
  %16 = add i64 %15, %BfpFile_Write
  store i64 %16, ptr %2, align 8
  br label %exit.sink.split

exit.sink.split:                                  ; preds = %if.end2, %if.end5
  %BfpFile_Write.sink = phi i64 [ %BfpFile_Write, %if.end5 ], [ 0, %if.end2 ]
  %.sink.ph = phi i8 [ 0, %if.end5 ], [ 1, %if.end2 ]
  store i64 %BfpFile_Write.sink, ptr %0, align 8
  br label %exit

exit:                                             ; preds = %exit.sink.split, %"?SeekUnderlying@BufferedFileStream@IO@System@bf@@IEAA?AU?$Result@X?AUFileError@IO@System@bf@@@34@_JW4BfpFileSeekKind@Platform@34@@Z.exit"
  %.sink = phi i8 [ 1, %"?SeekUnderlying@BufferedFileStream@IO@System@bf@@IEAA?AU?$Result@X?AUFileError@IO@System@bf@@@34@_JW4BfpFileSeekKind@Platform@34@@Z.exit" ], [ %.sink.ph, %exit.sink.split ]
  %.repack23 = getelementptr inbounds %"corlib.?$Result@Tint@@@System@bf", ptr %0, i64 0, i32 2
  store i8 %.sink, ptr %.repack23, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Flush@BufferedFileStream@IO@System@bf@@QEAA?AU?$Result@X@34@XZ"(ptr %this, ptr noalias nocapture writeonly sret(%"corlib.?$Result@X@System@bf") %0) local_unnamed_addr #0 {
entry:
  %1 = alloca %"corlib.?$Result@X@System@bf", align 1
  call void @"?Flush@BufferedStream@IO@System@bf@@QEAA?AU?$Result@X@34@XZ"(ptr %this, ptr nonnull sret(%"corlib.?$Result@X@System@bf") %1)
  %2 = getelementptr inbounds %"corlib.BufferedFileStream@IO@System@bf", ptr %this, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @"?BfpFile_Flush@Hook@Platform@System@bf@@SAXPEAUBfpFile@234@@Z"(ptr nonnull %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %.fca.2.gep = getelementptr inbounds %"corlib.?$Result@X@System@bf", ptr %1, i64 0, i32 2
  %.fca.2.load2 = load i8, ptr %.fca.2.gep, align 1
  %.repack6 = getelementptr inbounds %"corlib.?$Result@X@System@bf", ptr %0, i64 0, i32 2
  store i8 %.fca.2.load2, ptr %.repack6, align 1
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?Close@BufferedStream@IO@System@bf@@QEAA?AU?$Result@X@34@XZ"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf")) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?BfpFile_Release@Hook@Platform@System@bf@@SAXPEAUBfpFile@234@@Z"(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@BufferedStream@IO@System@bf@@QEAAXXZ"(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext, ptr, ptr, i64) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare i1 @"?HasFlag__im@FileAccess@IO@System@bf@@SA_NCW41234@@Z"(i8, i8) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare i1 @"?HasFlag__im@FileShare@IO@System@bf@@SA_NHW41234@@Z"(i32, i32) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare ptr @tc_malloc(i64) local_unnamed_addr

declare void @tc_free(ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare ptr @"?BfpFile_Create@Hook@Platform@System@bf@@SAPEA?AUBfpFile@234@PEADW4BfpFileCreateKind@234@W4BfpFileCreateFlags@234@W4BfpFileAttributes@234@PEAW4BfpFileResult@234@@Z"(ptr, i32, i32, i32, ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?MakeBuffer@BufferedStream@IO@System@bf@@QEAAXTint@@@Z"(ptr, i64) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?~this@BufferedStream@IO@System@bf@@QEAAXXZ"(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?Flush@BufferedStream@IO@System@bf@@QEAA?AU?$Result@X@34@XZ"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf")) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?BfpFile_Flush@Hook@Platform@System@bf@@SAXPEAUBfpFile@234@@Z"(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?ReturnValueDiscarded__im@?$Result@X@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(1)) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare i64 @"?BfpFile_GetFileSize@Hook@Platform@System@bf@@SA_JPEAUBfpFile@234@@Z"(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?Get__im@?$Result@XUFileError@IO@System@bf@@@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(3)) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare i64 @"?BfpFile_Write@Hook@Platform@System@bf@@SATint@@PEAUBfpFile@234@PEAXTint@@2PEAW4BfpFileResult@234@@Z"(ptr, ptr, i64, i64, ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare i64 @"?BfpFile_Seek@Hook@Platform@System@bf@@SA_JPEAUBfpFile@234@_JW4BfpFileSeekKind@234@@Z"(ptr, i64, i32) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

attributes #0 = { nounwind uwtable }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #4 = { nounwind }

!0 = !{!1}
!1 = distinct !{!1, !2, !"?SeekUnderlying@BufferedFileStream@IO@System@bf@@IEAA?AU?$Result@X?AUFileError@IO@System@bf@@@34@_JW4BfpFileSeekKind@Platform@34@@Z: argument 0"}
!2 = distinct !{!2, !"?SeekUnderlying@BufferedFileStream@IO@System@bf@@IEAA?AU?$Result@X?AUFileError@IO@System@bf@@@34@_JW4BfpFileSeekKind@Platform@34@@Z"}
