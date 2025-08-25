; ModuleID = 'System_Console'
source_filename = "System_Console"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.CONSOLE_SCREEN_BUFFER_INFO@Console@System@bf" = type <{ %"corlib.ValueType@System@bf", [2 x i16], [2 x i16], i16, [4 x i16], [2 x i16] }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$Result@D@System@bf" = type opaque
%"corlib.?$Result@X@System@bf" = type <{ %"corlib.Enum@System@bf", [0 x i8], i8 }>
%"corlib.Enum@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.?$Span@PEAVObject@System@bf@@@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.StringView@System@bf" = type <{ %"corlib.?$Span@D@System@bf" }>
%"corlib.?$Span@D@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>

@"?sInputEncoding@Console@System@bf@@2PEAVEncoding@Text@23@A" = global ptr null, align 8
@"?sOutputEncoding@Console@System@bf@@2PEAVEncoding@Text@23@A" = global ptr null, align 8
@"?sForegroundColor@Console@System@bf@@2W4ConsoleColor@23@A" = global i8 0, align 1
@"?sBackgroundColor@Console@System@bf@@2W4ConsoleColor@23@A" = global i8 0, align 1
@"?sOriginalForegroundColor@Console@System@bf@@2W4ConsoleColor@23@A" = global i8 0, align 1
@"?sOriginalBackgroundColor@Console@System@bf@@2W4ConsoleColor@23@A" = global i8 0, align 1
@"?OutString@Console@System@bf@@2V?$function_str@XUStringView@System@bf@@@3@A" = global i64 0, align 8
@"?mOut@Console@System@bf@@2PEAVStreamWriter@IO@23@C" = global ptr null, align 8
@"?mError@Console@System@bf@@2PEAVStreamWriter@IO@23@C" = global ptr null, align 8
@"?mIn@Console@System@bf@@2PEAVStreamReader@IO@23@C" = global ptr null, align 8
@didStaticInit = internal global i1 false
@"?sBfClassVData@String@System@bf@@2UClassVData@23@A" = external constant [8 x ptr]
@__bfStrObj60 = external constant %"corlib.String@System@bf"
@__bfStrData60 = external constant [2 x i8]

; Function Attrs: nounwind uwtable
declare ptr @"?get__InputEncoding@Console@System@bf@@CAPEAVEncoding@Text@23@XZ"() #0

; Function Attrs: nounwind uwtable
declare void @"?set__InputEncoding@Console@System@bf@@CAXPEAVEncoding@Text@23@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__OutputEncoding@Console@System@bf@@CAPEAVEncoding@Text@23@XZ"() #0

; Function Attrs: nounwind uwtable
declare void @"?set__OutputEncoding@Console@System@bf@@CAXPEAVEncoding@Text@23@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare i8 @"?get__ForegroundColor@Console@System@bf@@SA?AW4ConsoleColor@23@XZ"() #0

; Function Attrs: nounwind uwtable
declare void @"?set__ForegroundColor@Console@System@bf@@SAXW4ConsoleColor@23@@Z"(i8) #0

; Function Attrs: nounwind uwtable
declare i8 @"?get__BackgroundColor@Console@System@bf@@SA?AW4ConsoleColor@23@XZ"() #0

; Function Attrs: nounwind uwtable
declare void @"?set__BackgroundColor@Console@System@bf@@SAXW4ConsoleColor@23@@Z"(i8) #0

; Function Attrs: nounwind uwtable
declare void @"?SetupOutStringEx@Console@System@bf@@CAXXZ"() #0

; Function Attrs: nounwind uwtable
declare void @"?PutChars@Console@System@bf@@CAXPEADH@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?ReopenHandles@Console@System@bf@@SAXXZ"() #0

; Function Attrs: nounwind uwtable
define void @"?OutString_Simple@Console@System@bf@@CAXUStringView@23@@Z"(ptr %str_mPtr, i64 %str_mLength) #0 {
entry:
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  store ptr %str_mPtr, ptr %0, align 8
  store i64 %str_mLength, ptr %1, align 8
  %get__Ptr = call ptr @"?get__Ptr__im@?$Span@D@System@bf@@QEAAPEADXZ"(ptr %str_mPtr, i64 %str_mLength)
  %get__Length = call i64 @"?get__Length__im@?$Span@D@System@bf@@QEAATint@@XZ"(ptr %str_mPtr, i64 %str_mLength)
  %2 = trunc i64 %get__Length to i32
  call void @"?PutChars@Console@System@bf@@CAXPEADH@Z"(ptr %get__Ptr, i32 %2)
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?OutString_Ex@Console@System@bf@@CAXUStringView@23@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__OnCancel@Console@System@bf@@SAAEA?AU?$Event@PEAV?$delegate_cancelKind_terminate@X?AW4CancelKind@Console@System@bf@@AEA_N@bf@@@23@XZ"() #0

; Function Attrs: nounwind uwtable
declare i32 @"?ConsoleCtrlHandler@Console@System@bf@@SAVIntBool@Windows@23@H@Z"(i32) #0

; Function Attrs: nounwind uwtable
declare i32 @GetConsoleMode(i64, ptr dereferenceable(4)) #0

; Function Attrs: nounwind uwtable
declare i32 @SetConsoleMode(i64, i32) #0

; Function Attrs: nounwind uwtable
declare i32 @SetConsoleTextAttribute(i64, i16) #0

; Function Attrs: nounwind uwtable
declare i32 @GetConsoleScreenBufferInfo(i64, ptr dereferenceable(22)) #0

; Function Attrs: nounwind uwtable
declare i64 @GetStdHandle(i32) #0

; Function Attrs: nounwind uwtable
declare i32 @SetConsoleOutputCP(i32) #0

; Function Attrs: nounwind uwtable
declare i32 @SetConsoleCtrlHandler(i64, i32) #0

; Function Attrs: nounwind uwtable
declare i32 @FillConsoleOutputCharacterW(i64, i16, i32, i32, ptr) #0

; Function Attrs: nounwind uwtable
declare i32 @FillConsoleOutputAttribute(i64, i16, i32, i32, ptr) #0

; Function Attrs: nounwind uwtable
declare i32 @SetConsoleCursorPosition(i64, i32) #0

; Function Attrs: nounwind uwtable
define void @"?__BfStaticCtor@Console@System@bf@@SAXXZ"() #0 {
entry:
  %0 = alloca %"corlib.CONSOLE_SCREEN_BUFFER_INFO@Console@System@bf", align 2
  %1 = load i1, ptr @didStaticInit, align 1
  br i1 %1, label %exit, label %init1

init1:                                            ; preds = %entry
  store i1 true, ptr @didStaticInit, align 1
  store i8 15, ptr @"?sForegroundColor@Console@System@bf@@2W4ConsoleColor@23@A", align 1
  store i8 0, ptr @"?sBackgroundColor@Console@System@bf@@2W4ConsoleColor@23@A", align 1
  %2 = load i8, ptr @"?sForegroundColor@Console@System@bf@@2W4ConsoleColor@23@A", align 1
  store i8 %2, ptr @"?sOriginalForegroundColor@Console@System@bf@@2W4ConsoleColor@23@A", align 1
  %3 = load i8, ptr @"?sBackgroundColor@Console@System@bf@@2W4ConsoleColor@23@A", align 1
  store i8 %3, ptr @"?sOriginalBackgroundColor@Console@System@bf@@2W4ConsoleColor@23@A", align 1
  store i64 ptrtoint (ptr @"?OutString_Simple@Console@System@bf@@CAXUStringView@23@@Z" to i64), ptr @"?OutString@Console@System@bf@@2V?$function_str@XUStringView@System@bf@@@3@A", align 8
  %GetStdHandle = call i64 @GetStdHandle(i32 -11)
  call void @"?__BfCtor@CONSOLE_SCREEN_BUFFER_INFO@Console@System@bf@@QEAAXXZ"(ptr %0)
  br label %newScope

newScope:                                         ; preds = %init1
  %GetConsoleScreenBufferInfo = call i32 @GetConsoleScreenBufferInfo(i64 %GetStdHandle, ptr dereferenceable(22) %0)
  %4 = icmp ne i32 %GetConsoleScreenBufferInfo, 0
  br i1 %4, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  %5 = getelementptr inbounds %"corlib.CONSOLE_SCREEN_BUFFER_INFO@Console@System@bf", ptr %0, i32 0, i32 3
  %6 = load i16, ptr %5, align 2
  %7 = and i16 %6, 15
  %8 = trunc i16 %7 to i8
  call void @"?set__ConsoleTextAttribute@ConsoleColor@System@bf@@SAXCE@Z"(ptr @"?sOriginalForegroundColor@Console@System@bf@@2W4ConsoleColor@23@A", i8 %8)
  %9 = getelementptr inbounds %"corlib.CONSOLE_SCREEN_BUFFER_INFO@Console@System@bf", ptr %0, i32 0, i32 3
  %10 = load i16, ptr %9, align 2
  %11 = lshr i16 %10, 4
  %12 = trunc i16 %11 to i8
  call void @"?set__ConsoleTextAttribute@ConsoleColor@System@bf@@SAXCE@Z"(ptr @"?sOriginalBackgroundColor@Console@System@bf@@2W4ConsoleColor@23@A", i8 %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %newScope
  %SetConsoleOutputCP = call i32 @SetConsoleOutputCP(i32 65001)
  br label %exit

exit:                                             ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare i32 @"?get__CursorTop@Console@System@bf@@SAHXZ"() #0

; Function Attrs: nounwind uwtable
declare void @"?set__CursorTop@Console@System@bf@@SAXH@Z"(i32) #0

; Function Attrs: nounwind uwtable
declare i32 @"?get__CursorLeft@Console@System@bf@@SAHXZ"() #0

; Function Attrs: nounwind uwtable
declare void @"?set__CursorLeft@Console@System@bf@@SAXH@Z"(i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?OpenStreamWriter@Console@System@bf@@CAPEAVStreamWriter@IO@23@W4BfpFileStdKind@Platform@23@AEAPEAV4523@@Z"(i32, ptr dereferenceable(8)) #0

; Function Attrs: nounwind uwtable
declare ptr @"?OpenStreamReader@Console@System@bf@@CAPEAVStreamReader@IO@23@W4BfpFileStdKind@Platform@23@AEAPEAV4523@@Z"(i32, ptr dereferenceable(8)) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__Out@Console@System@bf@@SAPEAVStreamWriter@IO@23@XZ"() #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__Error@Console@System@bf@@SAPEAVStreamWriter@IO@23@XZ"() #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__In@Console@System@bf@@SAPEAVStreamReader@IO@23@XZ"() #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__KeyAvailable@Console@System@bf@@SA_NXZ"() #0

; Function Attrs: nounwind uwtable
declare void @"?Read@Console@System@bf@@SA?AU?$Result@D@23@XZ"(ptr noalias sret(%"corlib.?$Result@D@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?ReadLine@Console@System@bf@@SA?AU?$Result@X@23@PEAVString@23@@Z"(ptr noalias sret(%"corlib.?$Result@X@System@bf"), ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?ReadLineAsync@Console@System@bf@@SAPEAV?$Task@PEAVString@System@bf@@@Tasks@Threading@23@XZ"() #0

; Function Attrs: nounwind uwtable
declare void @"?ReadToEnd@Console@System@bf@@SA?AU?$Result@X@23@PEAVString@23@@Z"(ptr noalias sret(%"corlib.?$Result@X@System@bf"), ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Write@Console@System@bf@@SAXUStringView@23@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Write@Console@System@bf@@SAXUStringView@23@Tparams@@PEAV?$Array1@PEAVObject@System@bf@@@23@@Z"(ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Write@Console@System@bf@@SAXPEAVObject@23@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?WriteLine@Console@System@bf@@SAXXZ"() #0

; Function Attrs: nounwind uwtable
define void @"?WriteLine@Console@System@bf@@SAXUStringView@23@@Z"(ptr %line_mPtr, i64 %line_mLength) #0 {
entry:
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  store ptr %line_mPtr, ptr %0, align 8
  store i64 %line_mLength, ptr %1, align 8
  %2 = load i64, ptr @"?OutString@Console@System@bf@@2V?$function_str@XUStringView@System@bf@@@3@A", align 8
  %3 = inttoptr i64 %2 to ptr
  call void %3(ptr %line_mPtr, i64 %line_mLength)
  %4 = load i64, ptr @"?OutString@Console@System@bf@@2V?$function_str@XUStringView@System@bf@@@3@A", align 8
  %5 = inttoptr i64 %4 to ptr
  call void %5(ptr @__bfStrData60, i64 1)
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?WriteLine@Console@System@bf@@SAXUStringView@23@Tparams@@PEAV?$Array1@PEAVObject@System@bf@@@23@@Z"(ptr %fmt_mPtr, i64 %fmt_mLength, ptr %args) #0 {
entry:
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  %2 = alloca i8, i64 272, align 8
  %3 = alloca i64, align 8
  %str = alloca ptr, align 8
  %4 = alloca %"corlib.?$Span@PEAVObject@System@bf@@@System@bf", align 8
  %5 = alloca %"corlib.?$Result@X@System@bf", align 1
  %6 = alloca %"corlib.StringView@System@bf", align 8
  store ptr %fmt_mPtr, ptr %0, align 8
  store i64 %fmt_mLength, ptr %1, align 8
  %7 = getelementptr inbounds %"corlib.String@System@bf", ptr %2, i32 0, i32 0
  store ptr @"?sBfClassVData@String@System@bf@@2UClassVData@23@A", ptr %7, align 8
  call void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr %2)
  %8 = ptrtoint ptr %2 to i64
  %9 = add i64 %8, 24
  store i64 %9, ptr %3, align 8
  call void @"?__BfCtor@i0$String@System@bf@@QEAAXAEATint@@Tint@@@Z"(ptr %2, ptr dereferenceable(8) %3, i64 256)
  store ptr %2, ptr %str, align 8
  %10 = load ptr, ptr %str, align 8
  call void @"??B?$Span@PEAVObject@System@bf@@@System@bf@@SA?AU012@PEAV?$Array1@PEAVObject@System@bf@@@12@@Z"(ptr sret(%"corlib.?$Span@PEAVObject@System@bf@@@System@bf") %4, ptr %args)
  call void @"?AppendF@String@System@bf@@QEAA?AU?$Result@X@23@UStringView@23@Tparams@@U?$Span@PEAVObject@System@bf@@@23@@Z"(ptr %10, ptr sret(%"corlib.?$Result@X@System@bf") %5, ptr %fmt_mPtr, i64 %fmt_mLength, ptr %4)
  call void @"?ReturnValueDiscarded__im@?$Result@X@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(1) %5)
  %11 = load ptr, ptr %str, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr sret(%"corlib.StringView@System@bf") %6, ptr %11)
  %12 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %6, i32 0, i32 0
  %13 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %12, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %12, i32 0, i32 2
  %16 = load i64, ptr %15, align 8
  call void @"?WriteLine@Console@System@bf@@SAXUStringView@23@@Z"(ptr %14, i64 %16)
  br label %deferredCalls

deferredCalls:                                    ; preds = %entry
  call void @"?~this@String@System@bf@@QEAAXXZ"(ptr %2)
  br label %exit

exit:                                             ; preds = %deferredCalls
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?WriteLine@Console@System@bf@@SAXPEAVObject@23@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?ResetColor@Console@System@bf@@SAXXZ"() #0

; Function Attrs: nounwind uwtable
declare void @"?SetColors@Console@System@bf@@CAXXZ"() #0

; Function Attrs: nounwind uwtable
declare void @"?Clear@Console@System@bf@@SAXXZ"() #0

; Function Attrs: nounwind uwtable
define void @"?__BfStaticDtor@Console@System@bf@@SAXXZ"() #0 {
entry:
  %0 = load ptr, ptr @"?mIn@Console@System@bf@@2PEAVStreamReader@IO@23@C", align 8
  %1 = icmp ne ptr %0, null
  br i1 %1, label %delete.body, label %delete.end

delete.body:                                      ; preds = %entry
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds ptr, ptr %2, i32 3
  %4 = load ptr, ptr %3, align 8
  call void %4(ptr %0)
  call void @tc_free(ptr %0)
  br label %delete.end

delete.end:                                       ; preds = %delete.body, %entry
  %5 = load ptr, ptr @"?mError@Console@System@bf@@2PEAVStreamWriter@IO@23@C", align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %delete.body1, label %delete.end2

delete.body1:                                     ; preds = %delete.end
  %7 = load ptr, ptr %5, align 8
  %8 = getelementptr inbounds ptr, ptr %7, i32 3
  %9 = load ptr, ptr %8, align 8
  call void %9(ptr %5)
  call void @tc_free(ptr %5)
  br label %delete.end2

delete.end2:                                      ; preds = %delete.body1, %delete.end
  %10 = load ptr, ptr @"?mOut@Console@System@bf@@2PEAVStreamWriter@IO@23@C", align 8
  %11 = icmp ne ptr %10, null
  br i1 %11, label %delete.body3, label %delete.end4

delete.body3:                                     ; preds = %delete.end2
  %12 = load ptr, ptr %10, align 8
  %13 = getelementptr inbounds ptr, ptr %12, i32 3
  %14 = load ptr, ptr %13, align 8
  call void %14(ptr %10)
  call void @tc_free(ptr %10)
  br label %delete.end4

delete.end4:                                      ; preds = %delete.body3, %delete.end2
  br label %exit

exit:                                             ; preds = %delete.end4
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?GCMarkStaticMembers@Console@System@bf@@KAXXZ"() #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@CONSOLE_SCREEN_BUFFER_INFO@Console@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?set__ConsoleTextAttribute@ConsoleColor@System@bf@@SAXCE@Z"(ptr, i8) #0

declare void @tc_free(ptr)

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i0$String@System@bf@@QEAAXAEATint@@Tint@@@Z"(ptr, ptr dereferenceable(8), i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?this$calcAppend@i1$String@System@bf@@SATint@@Tint@@@Z"(i64) #0

; Function Attrs: nounwind uwtable
declare void @"?~this@String@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?AppendF@String@System@bf@@QEAA?AU?$Result@X@23@UStringView@23@Tparams@@U?$Span@PEAVObject@System@bf@@@23@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf"), ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"??B?$Span@PEAVObject@System@bf@@@System@bf@@SA?AU012@PEAV?$Array1@PEAVObject@System@bf@@@12@@Z"(ptr noalias sret(%"corlib.?$Span@PEAVObject@System@bf@@@System@bf"), ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?ReturnValueDiscarded__im@?$Result@X@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(1)) #0

; Function Attrs: nounwind uwtable
declare void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr noalias sret(%"corlib.StringView@System@bf"), ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @"?get__Ptr__im@?$Span@D@System@bf@@QEAAPEADXZ"(ptr %this_mPtr, i64 %this_mLength) #1 {
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
define internal i64 @"?get__Length__im@?$Span@D@System@bf@@QEAATint@@XZ"(ptr %this_mPtr, i64 %this_mLength) #1 {
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

attributes #0 = { nounwind uwtable }
attributes #1 = { alwaysinline nounwind uwtable }
