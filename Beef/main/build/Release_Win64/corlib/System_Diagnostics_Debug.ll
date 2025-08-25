; ModuleID = 'System_Diagnostics_Debug'
source_filename = "System_Diagnostics_Debug"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>

@"?sBfClassVData@String@System@bf@@2UClassVData@23@A" = external constant [8 x ptr]
@__bfStrObj30 = external constant %"corlib.String@System@bf"
@"?gIsDebuggerPresent@Debug@Diagnostics@System@bf@@2_NA" = global i1 false, align 1
@didStaticInit = internal global i1 false
@"?CheckAssertError@Runtime@System@bf@@2V?$function_kind_error_filePath_lineNum@W4ErrorHandlerResult@Runtime@System@bf@@W4Kind@AssertError@123@PEAVString@23@PEAV623@Tint@@@3@A" = external global i64
@__bfStrObj68 = external constant %"corlib.String@System@bf"

; Function Attrs: nounwind uwtable
define void @"?Assert@Debug@Diagnostics@System@bf@@SAX_NPEAVString@34@1Tint@@@Z"(i1 zeroext %condition, ptr %error, ptr %filePath, i64 %line) #0 {
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
  %Invoke = call i8 %4(i8 0, ptr %error, ptr %filePath, i64 %line)
  %5 = icmp eq i8 %Invoke, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then
  %6 = phi i1 [ false, %if.then ], [ %5, %land.rhs ]
  br i1 %6, label %if.then1, label %if.end

if.then1:                                         ; preds = %land.end
  br label %exit

if.end:                                           ; preds = %land.end
  call void @"?FatalError@Internal@System@bf@@SAXPEAVString@23@_J@Z"(ptr @__bfStrObj68, i64 1) #3
  unreachable

if.end2:                                          ; preds = %entry
  br label %exit

exit:                                             ; preds = %if.end2, %if.then1
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?FatalError@Debug@Diagnostics@System@bf@@SAXUStringView@34@PEAVString@34@Tint@@@Z"(ptr, i64, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?AssertNotStack@Debug@Diagnostics@System@bf@@SAXPEAVObject@34@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Write@Debug@Diagnostics@System@bf@@CAXPEAD_J@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Write@Debug@Diagnostics@System@bf@@CAX_J@Z"(i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Write@Debug@Diagnostics@System@bf@@SAXPEAVString@34@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Write@Debug@Diagnostics@System@bf@@SAXUStringView@34@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Write@Debug@Diagnostics@System@bf@@SAXUStringView@34@Tparams@@U?$Span@PEAVObject@System@bf@@@34@@Z"(ptr, i64, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Write@Debug@Diagnostics@System@bf@@SAXPEAVObject@34@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?WriteLine@Debug@Diagnostics@System@bf@@SAXXZ"() #0

; Function Attrs: nounwind uwtable
declare void @"?WriteLine@Debug@Diagnostics@System@bf@@SAXUStringView@34@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?WriteLine@Debug@Diagnostics@System@bf@@SAXUStringView@34@Tparams@@U?$Span@PEAVObject@System@bf@@@34@@Z"(ptr, i64, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i32 @IsDebuggerPresent() #0

; Function Attrs: nounwind uwtable
define i1 @"?get__IsDebuggerPresent@Debug@Diagnostics@System@bf@@SA_NXZ"() #0 {
entry:
  %__return = alloca i1, align 1
  %Internal_IsDebuggerPresent = call i32 @IsDebuggerPresent()
  %0 = icmp ne i32 %Internal_IsDebuggerPresent, 0
  store i1 %0, ptr @"?gIsDebuggerPresent@Debug@Diagnostics@System@bf@@2_NA", align 1
  store i1 %0, ptr %__return, align 1
  br label %exit

exit:                                             ; preds = %entry
  %1 = load i1, ptr %__return, align 1
  ret i1 %1
}

; Function Attrs: nounwind
declare void @llvm.debugtrap() #1

; Function Attrs: nounwind uwtable
declare void @"?SafeBreak@Debug@Diagnostics@System@bf@@SAXXZ"() #0

; Function Attrs: nounwind uwtable
declare void @"?WriteMemory@Debug@Diagnostics@System@bf@@SAXU?$Span@E@34@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
define void @"?__BfStaticCtor@Debug@Diagnostics@System@bf@@SAXXZ"() #0 {
entry:
  %0 = load i1, ptr @didStaticInit, align 1
  br i1 %0, label %exit, label %init1

init1:                                            ; preds = %entry
  store i1 true, ptr @didStaticInit, align 1
  %get__IsDebuggerPresent = call i1 @"?get__IsDebuggerPresent@Debug@Diagnostics@System@bf@@SA_NXZ"()
  store i1 %get__IsDebuggerPresent, ptr @"?gIsDebuggerPresent@Debug@Diagnostics@System@bf@@2_NA", align 1
  br label %exit

exit:                                             ; preds = %init1, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?GCMarkStaticMembers@Debug@Diagnostics@System@bf@@KAXXZ"() #0

; Function Attrs: noreturn nounwind uwtable
declare void @"?FatalError@Internal@System@bf@@SAXPEAVString@23@_J@Z"(ptr, i64) #2

attributes #0 = { nounwind uwtable }
attributes #1 = { nounwind }
attributes #2 = { noreturn nounwind uwtable }
attributes #3 = { noreturn }
