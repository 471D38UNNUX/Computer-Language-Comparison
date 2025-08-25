; ModuleID = 'System_Runtime'
source_filename = "System_Runtime"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.RuntimeFeatures@System@bf" = type <{ %"corlib.ValueType@System@bf", i1, i1, i1, i1, i1 }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.BfRtCallbacks@Runtime@System@bf" = type opaque
%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.StringView@System@bf" = type <{ %"corlib.?$Span@D@System@bf" }>
%"corlib.?$Span@D@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>

@"?sExtraFlags@Runtime@System@bf@@2W4RtFlags@123@A" = local_unnamed_addr global i32 0, align 4
@"?sQueriedFeatures@Runtime@System@bf@@2_NA" = local_unnamed_addr global i1 false, align 1
@"?sFeatures@Runtime@System@bf@@2URuntimeFeatures@23@A" = local_unnamed_addr global %"corlib.RuntimeFeatures@System@bf" zeroinitializer, align 1
@"?sThreadInit@Runtime@System@bf@@2V?$function@X@3@A" = local_unnamed_addr global i64 0, align 8
@"?CheckAssertError@Runtime@System@bf@@2V?$function_kind_error_filePath_lineNum@W4ErrorHandlerResult@Runtime@System@bf@@W4Kind@AssertError@123@PEAVString@23@PEAV623@Tint@@@3@A" = local_unnamed_addr global i64 0, align 8
@"?CheckErrorHandler@Runtime@System@bf@@2V?$function_kind_arg1_arg2_arg3@HPEADPEADPEADTint@@@3@A" = local_unnamed_addr global i64 0, align 8
@"?LibraryLoadCallback@Runtime@System@bf@@2V?$function_filePath@PEAXPEAD@3@A" = local_unnamed_addr global i64 0, align 8
@didStaticInit = internal unnamed_addr global i1 false
@"?sCallbacks@BfRtCallbacks@Runtime@System@bf@@2U1234@A" = external global %"corlib.BfRtCallbacks@Runtime@System@bf"
@"?sBfClassVData@String@System@bf@@2UClassVData@23@A" = external constant [8 x ptr]
@__bfStrObj68 = external constant %"corlib.String@System@bf"
@__bfStrObj399 = external constant %"corlib.String@System@bf"
@__bfStrObj407 = external constant %"corlib.String@System@bf"
@__bfStrData408 = external constant [5 x i8]

; Function Attrs: nounwind uwtable
declare void @"?Init@Runtime@System@bf@@CAXHHPEAUBfRtCallbacks@123@@Z"(i32, i32, ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define void @"?__BfStaticCtor@Runtime@System@bf@@SAXXZ"() local_unnamed_addr #0 {
entry:
  %0 = load i1, ptr @didStaticInit, align 1
  br i1 %0, label %exit, label %init1

init1:                                            ; preds = %entry
  store i1 true, ptr @didStaticInit, align 1
  store i1 false, ptr @"?sQueriedFeatures@Runtime@System@bf@@2_NA", align 1
  tail call void @"?Init@BfRtCallbacks@Runtime@System@bf@@QEAAXXZ"(ptr nonnull @"?sCallbacks@BfRtCallbacks@Runtime@System@bf@@2U1234@A")
  %1 = load i32, ptr @"?sExtraFlags@Runtime@System@bf@@2W4RtFlags@123@A", align 4
  tail call void @"?Init@Runtime@System@bf@@CAXHHPEAUBfRtCallbacks@123@@Z"(i32 10, i32 %1, ptr nonnull @"?sCallbacks@BfRtCallbacks@Runtime@System@bf@@2U1234@A")
  %2 = load i64, ptr @"?sThreadInit@Runtime@System@bf@@2V?$function@X@3@A", align 8
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %exit, label %if.then

if.then:                                          ; preds = %init1
  %3 = inttoptr i64 %2 to ptr
  tail call void %3() #3
  br label %exit

exit:                                             ; preds = %init1, %if.then, %entry
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define void @"?FatalError@Runtime@System@bf@@SAXPEAVString@23@0Tint@@@Z"(ptr nocapture readnone %msg, ptr nocapture readnone %filePath, i64 %line) local_unnamed_addr #1 {
entry:
  tail call void @"?FatalError@Internal@System@bf@@SAXPEAVString@23@_J@Z"(ptr nonnull @__bfStrObj399, i64 1) #4
  unreachable
}

; Function Attrs: noreturn nounwind uwtable
define void @"?NotImplemented@Runtime@System@bf@@SAXPEAVString@23@Tint@@@Z"(ptr %filePath, i64 %line) local_unnamed_addr #1 {
entry:
  %0 = alloca [32 x i8], align 8
  %1 = alloca i64, align 8
  %2 = alloca [2 x %"corlib.StringView@System@bf"], align 8
  %3 = alloca %"corlib.StringView@System@bf", align 8
  store ptr @"?sBfClassVData@String@System@bf@@2UClassVData@23@A", ptr %0, align 8
  call void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr nonnull %0)
  %4 = ptrtoint ptr %0 to i64
  %5 = add i64 %4, 24
  store i64 %5, ptr %1, align 8
  call void @"?__BfCtor@i4$String@System@bf@@QEAAXAEATint@@@Z"(ptr nonnull %0, ptr nonnull dereferenceable(8) %1)
  call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr nonnull %0, ptr nonnull @__bfStrObj407)
  call void @"?ToString__im@Int@System@bf@@SAXTint@@PEAVString@23@@Z"(i64 %line, ptr nonnull %0)
  %.repack3 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %2, i64 0, i32 1
  store ptr @__bfStrData408, ptr %.repack3, align 8
  %.repack4 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %2, i64 0, i32 2
  store i64 4, ptr %.repack4, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr nonnull sret(%"corlib.StringView@System@bf") %3, ptr %filePath)
  %.fca.0.1.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %3, i64 0, i32 0, i32 1
  %.fca.0.1.load = load ptr, ptr %.fca.0.1.gep, align 8
  %.fca.0.2.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %3, i64 0, i32 0, i32 2
  %.fca.0.2.load = load i64, ptr %.fca.0.2.gep, align 8
  %.repack5 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %2, i64 1
  store ptr %.fca.0.1.load, ptr %.repack5, align 8
  %.repack7 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %2, i64 1, i32 0, i32 2
  store i64 %.fca.0.2.load, ptr %.repack7, align 8
  call void @"?Append@String@System@bf@@QEAAXTparams@@U?$Span@UStringView@System@bf@@@23@@Z"(ptr nonnull %0, ptr nonnull %2, i64 2)
  call void @"?FatalError@Internal@System@bf@@SAXPEAVString@23@_J@Z"(ptr nonnull %0, i64 1) #4
  unreachable
}

; Function Attrs: nounwind uwtable
define void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext %condition, ptr %error, ptr %filePath, i64 %line) local_unnamed_addr #0 {
entry:
  br i1 %condition, label %exit, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i64, ptr @"?CheckAssertError@Runtime@System@bf@@2V?$function_kind_error_filePath_lineNum@W4ErrorHandlerResult@Runtime@System@bf@@W4Kind@AssertError@123@PEAVString@23@PEAV623@Tint@@@3@A", align 8
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %if.end, label %land.rhs

land.rhs:                                         ; preds = %if.then
  %1 = inttoptr i64 %0 to ptr
  %Invoke = tail call i8 %1(i8 1, ptr %error, ptr %filePath, i64 %line) #3
  %2 = icmp eq i8 %Invoke, 1
  br i1 %2, label %exit, label %if.end

if.end:                                           ; preds = %if.then, %land.rhs
  tail call void @"?FatalError@Internal@System@bf@@SAXPEAVString@23@_J@Z"(ptr nonnull @__bfStrObj68, i64 1) #4
  unreachable

exit:                                             ; preds = %entry, %land.rhs
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @"?Shutdown@Runtime@System@bf@@SAXXZ"() local_unnamed_addr #2 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?Init@BfRtCallbacks@Runtime@System@bf@@QEAAXXZ"(ptr) local_unnamed_addr #0

; Function Attrs: noreturn nounwind uwtable
declare void @"?FatalError@Internal@System@bf@@SAXPEAVString@23@_J@Z"(ptr, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i4$String@System@bf@@QEAAXAEATint@@@Z"(ptr, ptr dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr, ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@Int@System@bf@@SAXTint@@PEAVString@23@@Z"(i64, ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAXTparams@@U?$Span@UStringView@System@bf@@@23@@Z"(ptr, ptr, i64) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr noalias sret(%"corlib.StringView@System@bf"), ptr) local_unnamed_addr #0

attributes #0 = { nounwind uwtable }
attributes #1 = { noreturn nounwind uwtable }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
attributes #3 = { nounwind }
attributes #4 = { noreturn }
