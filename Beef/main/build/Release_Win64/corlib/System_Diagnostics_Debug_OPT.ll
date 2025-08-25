; ModuleID = 'System_Diagnostics_Debug'
source_filename = "System_Diagnostics_Debug"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>

@"?gIsDebuggerPresent@Debug@Diagnostics@System@bf@@2_NA" = local_unnamed_addr global i1 false, align 1
@didStaticInit = internal unnamed_addr global i1 false
@"?CheckAssertError@Runtime@System@bf@@2V?$function_kind_error_filePath_lineNum@W4ErrorHandlerResult@Runtime@System@bf@@W4Kind@AssertError@123@PEAVString@23@PEAV623@Tint@@@3@A" = external local_unnamed_addr global i64
@__bfStrObj68 = external constant %"corlib.String@System@bf"

; Function Attrs: nounwind uwtable
define void @"?Assert@Debug@Diagnostics@System@bf@@SAX_NPEAVString@34@1Tint@@@Z"(i1 zeroext %condition, ptr %error, ptr %filePath, i64 %line) local_unnamed_addr #0 {
entry:
  br i1 %condition, label %exit, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i64, ptr @"?CheckAssertError@Runtime@System@bf@@2V?$function_kind_error_filePath_lineNum@W4ErrorHandlerResult@Runtime@System@bf@@W4Kind@AssertError@123@PEAVString@23@PEAV623@Tint@@@3@A", align 8
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %if.end, label %land.rhs

land.rhs:                                         ; preds = %if.then
  %1 = inttoptr i64 %0 to ptr
  %Invoke = tail call i8 %1(i8 0, ptr %error, ptr %filePath, i64 %line) #2
  %2 = icmp eq i8 %Invoke, 1
  br i1 %2, label %exit, label %if.end

if.end:                                           ; preds = %if.then, %land.rhs
  tail call void @"?FatalError@Internal@System@bf@@SAXPEAVString@23@_J@Z"(ptr nonnull @__bfStrObj68, i64 1) #3
  unreachable

exit:                                             ; preds = %entry, %land.rhs
  ret void
}

; Function Attrs: nounwind uwtable
declare i32 @IsDebuggerPresent() local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define i1 @"?get__IsDebuggerPresent@Debug@Diagnostics@System@bf@@SA_NXZ"() local_unnamed_addr #0 {
entry:
  %Internal_IsDebuggerPresent = tail call i32 @IsDebuggerPresent()
  %0 = icmp ne i32 %Internal_IsDebuggerPresent, 0
  store i1 %0, ptr @"?gIsDebuggerPresent@Debug@Diagnostics@System@bf@@2_NA", align 1
  ret i1 %0
}

; Function Attrs: nounwind uwtable
define void @"?__BfStaticCtor@Debug@Diagnostics@System@bf@@SAXXZ"() local_unnamed_addr #0 {
entry:
  %0 = load i1, ptr @didStaticInit, align 1
  br i1 %0, label %exit, label %init1

init1:                                            ; preds = %entry
  store i1 true, ptr @didStaticInit, align 1
  %Internal_IsDebuggerPresent.i = tail call i32 @IsDebuggerPresent()
  %1 = icmp ne i32 %Internal_IsDebuggerPresent.i, 0
  store i1 %1, ptr @"?gIsDebuggerPresent@Debug@Diagnostics@System@bf@@2_NA", align 1
  br label %exit

exit:                                             ; preds = %init1, %entry
  ret void
}

; Function Attrs: noreturn nounwind uwtable
declare void @"?FatalError@Internal@System@bf@@SAXPEAVString@23@_J@Z"(ptr, i64) local_unnamed_addr #1

attributes #0 = { nounwind uwtable }
attributes #1 = { noreturn nounwind uwtable }
attributes #2 = { nounwind }
attributes #3 = { noreturn }
