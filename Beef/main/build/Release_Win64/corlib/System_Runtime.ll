; ModuleID = 'System_Runtime'
source_filename = "System_Runtime"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.RuntimeFeatures@System@bf" = type <{ %"corlib.ValueType@System@bf", i1, i1, i1, i1, i1 }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.BfRtCallbacks@Runtime@System@bf" = type opaque
%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.?$Span@UStringView@System@bf@@@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.StringView@System@bf" = type <{ %"corlib.?$Span@D@System@bf" }>
%"corlib.?$Span@D@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.?$Result@X@System@bf" = type opaque

@"?sExtraFlags@Runtime@System@bf@@2W4RtFlags@123@A" = global i32 0, align 4
@"?sQueriedFeatures@Runtime@System@bf@@2_NA" = global i1 false, align 1
@"?sFeatures@Runtime@System@bf@@2URuntimeFeatures@23@A" = global %"corlib.RuntimeFeatures@System@bf" zeroinitializer, align 1
@"?sThreadInit@Runtime@System@bf@@2V?$function@X@3@A" = global i64 0, align 8
@"?CheckAssertError@Runtime@System@bf@@2V?$function_kind_error_filePath_lineNum@W4ErrorHandlerResult@Runtime@System@bf@@W4Kind@AssertError@123@PEAVString@23@PEAV623@Tint@@@3@A" = global i64 0, align 8
@"?CheckErrorHandler@Runtime@System@bf@@2V?$function_kind_arg1_arg2_arg3@HPEADPEADPEADTint@@@3@A" = global i64 0, align 8
@"?LibraryLoadCallback@Runtime@System@bf@@2V?$function_filePath@PEAXPEAD@3@A" = global i64 0, align 8
@didStaticInit = internal global i1 false
@"?sCallbacks@BfRtCallbacks@Runtime@System@bf@@2U1234@A" = external global %"corlib.BfRtCallbacks@Runtime@System@bf"
@"?sBfClassVData@String@System@bf@@2UClassVData@23@A" = external constant [8 x ptr]
@__bfStrObj68 = external constant %"corlib.String@System@bf"
@__bfStrObj399 = external constant %"corlib.String@System@bf"
@__bfStrObj407 = external constant %"corlib.String@System@bf"
@__bfStrObj408 = external constant %"corlib.String@System@bf"
@__bfStrData408 = external constant [5 x i8]

; Function Attrs: nounwind uwtable
declare void @"?Init@Runtime@System@bf@@CAXHHPEAUBfRtCallbacks@123@@Z"(i32, i32, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?InitCrashCatcher@Runtime@System@bf@@CAXH@Z"(i32) #0

; Function Attrs: nounwind uwtable
declare void @"?ShutdownCrashCatcher@Runtime@System@bf@@CAXXZ"() #0

; Function Attrs: nounwind uwtable
declare void @"?AddCrashInfoFunc@Runtime@System@bf@@CAXPEAX@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Dbg_Init@Runtime@System@bf@@CAXHHPEAUBfRtCallbacks@123@@Z"(i32, i32, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?SetErrorString@Runtime@System@bf@@CAXPEAD@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?Dbg_GetCrashInfoFunc@Runtime@System@bf@@CAPEAXXZ"() #0

; Function Attrs: nounwind uwtable
declare void @"?SetCrashReportKind@Runtime@System@bf@@SAXW4RtCrashReportKind@123@@Z"(i32) #0

; Function Attrs: nounwind uwtable
define void @"?__BfStaticCtor@Runtime@System@bf@@SAXXZ"() #0 {
entry:
  %flags = alloca i32, align 4
  %0 = load i1, ptr @didStaticInit, align 1
  br i1 %0, label %exit, label %init1

init1:                                            ; preds = %entry
  store i1 true, ptr @didStaticInit, align 1
  store i1 false, ptr @"?sQueriedFeatures@Runtime@System@bf@@2_NA", align 1
  call void @"?Init@BfRtCallbacks@Runtime@System@bf@@QEAAXXZ"(ptr @"?sCallbacks@BfRtCallbacks@Runtime@System@bf@@2U1234@A")
  %1 = load i32, ptr @"?sExtraFlags@Runtime@System@bf@@2W4RtFlags@123@A", align 4
  store i32 %1, ptr %flags, align 4
  %2 = load i32, ptr %flags, align 4
  call void @"?Init@Runtime@System@bf@@CAXHHPEAUBfRtCallbacks@123@@Z"(i32 10, i32 %2, ptr @"?sCallbacks@BfRtCallbacks@Runtime@System@bf@@2U1234@A")
  br label %newScope

newScope:                                         ; preds = %init1
  %3 = load i64, ptr @"?sThreadInit@Runtime@System@bf@@2V?$function@X@3@A", align 8
  %4 = icmp ne i64 0, %3
  br i1 %4, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  %5 = load i64, ptr @"?sThreadInit@Runtime@System@bf@@2V?$function@X@3@A", align 8
  %6 = inttoptr i64 %5 to ptr
  call void %6()
  br label %if.end

if.end:                                           ; preds = %if.then, %newScope
  br label %exit

exit:                                             ; preds = %if.end, %entry
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define void @"?FatalError@Runtime@System@bf@@SAXPEAVString@23@0Tint@@@Z"(ptr %msg, ptr %filePath, i64 %line) #1 {
entry:
  call void @"?FatalError@Internal@System@bf@@SAXPEAVString@23@_J@Z"(ptr @__bfStrObj399, i64 1) #2
  unreachable

exit:                                             ; No predecessors!
  ret void
}

; Function Attrs: noreturn nounwind uwtable
define void @"?NotImplemented@Runtime@System@bf@@SAXPEAVString@23@Tint@@@Z"(ptr %filePath, i64 %line) #1 {
entry:
  %0 = alloca i8, i64 32, align 8
  %1 = alloca i64, align 8
  %failStr = alloca ptr, align 8
  %2 = alloca %"corlib.?$Span@UStringView@System@bf@@@System@bf", align 8
  %3 = alloca %"corlib.StringView@System@bf", i64 2, align 8
  %4 = alloca %"corlib.StringView@System@bf", align 8
  %5 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 0
  store ptr @"?sBfClassVData@String@System@bf@@2UClassVData@23@A", ptr %5, align 8
  call void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr %0)
  %6 = ptrtoint ptr %0 to i64
  %7 = add i64 %6, 24
  store i64 %7, ptr %1, align 8
  call void @"?__BfCtor@i4$String@System@bf@@QEAAXAEATint@@@Z"(ptr %0, ptr dereferenceable(8) %1)
  call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr %0, ptr @__bfStrObj407)
  store ptr %0, ptr %failStr, align 8
  %8 = load ptr, ptr %failStr, align 8
  call void @"?ToString__im@Int@System@bf@@SAXTint@@PEAVString@23@@Z"(i64 %line, ptr %8)
  %9 = load ptr, ptr %failStr, align 8
  %10 = getelementptr inbounds %"corlib.?$Span@UStringView@System@bf@@@System@bf", ptr %2, i32 0, i32 1
  store ptr %3, ptr %10, align 8
  %11 = getelementptr inbounds %"corlib.?$Span@UStringView@System@bf@@@System@bf", ptr %2, i32 0, i32 2
  store i64 2, ptr %11, align 8
  %12 = getelementptr inbounds %"corlib.?$Span@UStringView@System@bf@@@System@bf", ptr %2, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %"corlib.?$Span@UStringView@System@bf@@@System@bf", ptr %2, i32 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %3, i32 0
  store %"corlib.StringView@System@bf" <{ %"corlib.?$Span@D@System@bf" <{ %"corlib.ValueType@System@bf" zeroinitializer, ptr @__bfStrData408, i64 4 }> }>, ptr %16, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr sret(%"corlib.StringView@System@bf") %4, ptr %filePath)
  %17 = load %"corlib.StringView@System@bf", ptr %4, align 8
  %18 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %3, i32 1
  store %"corlib.StringView@System@bf" %17, ptr %18, align 8
  call void @"?Append@String@System@bf@@QEAAXTparams@@U?$Span@UStringView@System@bf@@@23@@Z"(ptr %9, ptr %13, i64 %15)
  %19 = load ptr, ptr %failStr, align 8
  call void @"?FatalError@Internal@System@bf@@SAXPEAVString@23@_J@Z"(ptr %19, i64 1) #2
  unreachable

exit:                                             ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext %condition, ptr %error, ptr %filePath, i64 %line) #0 {
entry:
  %0 = xor i1 %condition, true
  br i1 %0, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %1 = load i64, ptr @"?CheckAssertError@Runtime@System@bf@@2V?$function_kind_error_filePath_lineNum@W4ErrorHandlerResult@Runtime@System@bf@@W4Kind@AssertError@123@PEAVString@23@PEAV623@Tint@@@3@A", align 8
  %2 = icmp ne i64 0, %1
  br i1 %2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then
  %3 = load i64, ptr @"?CheckAssertError@Runtime@System@bf@@2V?$function_kind_error_filePath_lineNum@W4ErrorHandlerResult@Runtime@System@bf@@W4Kind@AssertError@123@PEAVString@23@PEAV623@Tint@@@3@A", align 8
  %4 = inttoptr i64 %3 to ptr
  %Invoke = call i8 %4(i8 1, ptr %error, ptr %filePath, i64 %line)
  %5 = icmp eq i8 %Invoke, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %6 = phi i1 [ false, %if.then ], [ %5, %land.rhs ]
  br i1 %6, label %if.then1, label %if.end

if.then1:                                         ; preds = %land.end
  br label %exit

if.end:                                           ; preds = %land.end
  call void @"?FatalError@Internal@System@bf@@SAXPEAVString@23@_J@Z"(ptr @__bfStrObj68, i64 1) #2
  unreachable

if.end2:                                          ; preds = %entry
  br label %exit

exit:                                             ; preds = %if.end2, %if.then1
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?AddErrorHandler@Runtime@System@bf@@SAXPEAVErrorHandler@ErrorHandlerData@123@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?RemoveErrorHandler@Runtime@System@bf@@SA?AU?$Result@X@23@PEAVErrorHandler@ErrorHandlerData@123@@Z"(ptr noalias sret(%"corlib.?$Result@X@System@bf"), ptr) #0

; Function Attrs: nounwind uwtable
declare i8 @"?CheckAssertError_Impl@Runtime@System@bf@@CA?AW4ErrorHandlerResult@123@W4Kind@AssertError@123@PEAVString@23@1Tint@@@Z"(i8, ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i32 @"?CheckErrorHandler_Impl@Runtime@System@bf@@CAHPEAD00Tint@@@Z"(ptr, ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i8 @"?CheckErrorHandlers@Runtime@System@bf@@CA?AW4ErrorHandlerResult@123@PEAVError@123@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?get__Features@Runtime@System@bf@@SA?AURuntimeFeatures@23@XZ"(ptr noalias sret(%"corlib.RuntimeFeatures@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?QueryFeaturesX86@Runtime@System@bf@@CAXXZ"() #0

; Function Attrs: nounwind uwtable
define void @"?Shutdown@Runtime@System@bf@@SAXXZ"() #0 {
entry:
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?GCMarkStaticMembers@Runtime@System@bf@@KAXXZ"() #0

; Function Attrs: nounwind uwtable
declare void @"?Init@BfRtCallbacks@Runtime@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: noreturn nounwind uwtable
declare void @"?FatalError@Internal@System@bf@@SAXPEAVString@23@_J@Z"(ptr, i64) #1

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i4$String@System@bf@@QEAAXAEATint@@@Z"(ptr, ptr dereferenceable(8)) #0

; Function Attrs: nounwind uwtable
declare i64 @"?this$calcAppend@i5$String@System@bf@@SATint@@XZ"() #0

; Function Attrs: nounwind uwtable
declare void @"?~this@String@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@Int@System@bf@@SAXTint@@PEAVString@23@@Z"(i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAXTparams@@U?$Span@UStringView@System@bf@@@23@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr noalias sret(%"corlib.StringView@System@bf"), ptr) #0

attributes #0 = { nounwind uwtable }
attributes #1 = { noreturn nounwind uwtable }
attributes #2 = { noreturn }
