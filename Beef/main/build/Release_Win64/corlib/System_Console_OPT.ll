; ModuleID = 'System_Console'
source_filename = "System_Console"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.CONSOLE_SCREEN_BUFFER_INFO@Console@System@bf" = type <{ %"corlib.ValueType@System@bf", [2 x i16], [2 x i16], i16, [4 x i16], [2 x i16] }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$Span@PEAVObject@System@bf@@@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.?$Result@X@System@bf" = type <{ %"corlib.Enum@System@bf", [0 x i8], i8 }>
%"corlib.Enum@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.StringView@System@bf" = type <{ %"corlib.?$Span@D@System@bf" }>
%"corlib.?$Span@D@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>

@"?sInputEncoding@Console@System@bf@@2PEAVEncoding@Text@23@A" = local_unnamed_addr global ptr null, align 8
@"?sOutputEncoding@Console@System@bf@@2PEAVEncoding@Text@23@A" = local_unnamed_addr global ptr null, align 8
@"?sForegroundColor@Console@System@bf@@2W4ConsoleColor@23@A" = local_unnamed_addr global i8 0, align 1
@"?sBackgroundColor@Console@System@bf@@2W4ConsoleColor@23@A" = local_unnamed_addr global i8 0, align 1
@"?sOriginalForegroundColor@Console@System@bf@@2W4ConsoleColor@23@A" = global i8 0, align 1
@"?sOriginalBackgroundColor@Console@System@bf@@2W4ConsoleColor@23@A" = global i8 0, align 1
@"?OutString@Console@System@bf@@2V?$function_str@XUStringView@System@bf@@@3@A" = local_unnamed_addr global i64 0, align 8
@"?mOut@Console@System@bf@@2PEAVStreamWriter@IO@23@C" = local_unnamed_addr global ptr null, align 8
@"?mError@Console@System@bf@@2PEAVStreamWriter@IO@23@C" = local_unnamed_addr global ptr null, align 8
@"?mIn@Console@System@bf@@2PEAVStreamReader@IO@23@C" = local_unnamed_addr global ptr null, align 8
@didStaticInit = internal unnamed_addr global i1 false
@"?sBfClassVData@String@System@bf@@2UClassVData@23@A" = external constant [8 x ptr]
@__bfStrData60 = external constant [2 x i8]

; Function Attrs: nounwind uwtable
declare void @"?PutChars@Console@System@bf@@CAXPEADH@Z"(ptr, i32) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define void @"?OutString_Simple@Console@System@bf@@CAXUStringView@23@@Z"(ptr %str_mPtr, i64 %str_mLength) #0 {
entry:
  %0 = trunc i64 %str_mLength to i32
  tail call void @"?PutChars@Console@System@bf@@CAXPEADH@Z"(ptr %str_mPtr, i32 %0)
  ret void
}

; Function Attrs: nounwind uwtable
declare i32 @GetConsoleScreenBufferInfo(i64, ptr dereferenceable(22)) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare i64 @GetStdHandle(i32) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare i32 @SetConsoleOutputCP(i32) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define void @"?__BfStaticCtor@Console@System@bf@@SAXXZ"() local_unnamed_addr #0 {
entry:
  %0 = alloca %"corlib.CONSOLE_SCREEN_BUFFER_INFO@Console@System@bf", align 2
  %1 = load i1, ptr @didStaticInit, align 1
  br i1 %1, label %exit, label %init1

init1:                                            ; preds = %entry
  store i1 true, ptr @didStaticInit, align 1
  store i8 15, ptr @"?sForegroundColor@Console@System@bf@@2W4ConsoleColor@23@A", align 1
  store i8 0, ptr @"?sBackgroundColor@Console@System@bf@@2W4ConsoleColor@23@A", align 1
  store i8 15, ptr @"?sOriginalForegroundColor@Console@System@bf@@2W4ConsoleColor@23@A", align 1
  store i8 0, ptr @"?sOriginalBackgroundColor@Console@System@bf@@2W4ConsoleColor@23@A", align 1
  store i64 ptrtoint (ptr @"?OutString_Simple@Console@System@bf@@CAXUStringView@23@@Z" to i64), ptr @"?OutString@Console@System@bf@@2V?$function_str@XUStringView@System@bf@@@3@A", align 8
  %GetStdHandle = tail call i64 @GetStdHandle(i32 -11)
  call void @"?__BfCtor@CONSOLE_SCREEN_BUFFER_INFO@Console@System@bf@@QEAAXXZ"(ptr nonnull %0)
  %GetConsoleScreenBufferInfo = call i32 @GetConsoleScreenBufferInfo(i64 %GetStdHandle, ptr nonnull dereferenceable(22) %0)
  %.not = icmp eq i32 %GetConsoleScreenBufferInfo, 0
  br i1 %.not, label %if.end, label %if.then

if.then:                                          ; preds = %init1
  %2 = getelementptr inbounds %"corlib.CONSOLE_SCREEN_BUFFER_INFO@Console@System@bf", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 2
  %4 = trunc i16 %3 to i8
  %5 = and i8 %4, 15
  call void @"?set__ConsoleTextAttribute@ConsoleColor@System@bf@@SAXCE@Z"(ptr nonnull @"?sOriginalForegroundColor@Console@System@bf@@2W4ConsoleColor@23@A", i8 %5)
  %6 = load i16, ptr %2, align 2
  %7 = lshr i16 %6, 4
  %8 = trunc i16 %7 to i8
  call void @"?set__ConsoleTextAttribute@ConsoleColor@System@bf@@SAXCE@Z"(ptr nonnull @"?sOriginalBackgroundColor@Console@System@bf@@2W4ConsoleColor@23@A", i8 %8)
  br label %if.end

if.end:                                           ; preds = %if.then, %init1
  %SetConsoleOutputCP = call i32 @SetConsoleOutputCP(i32 65001)
  br label %exit

exit:                                             ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?WriteLine@Console@System@bf@@SAXUStringView@23@@Z"(ptr %line_mPtr, i64 %line_mLength) local_unnamed_addr #0 {
entry:
  %0 = load i64, ptr @"?OutString@Console@System@bf@@2V?$function_str@XUStringView@System@bf@@@3@A", align 8
  %1 = inttoptr i64 %0 to ptr
  tail call void %1(ptr %line_mPtr, i64 %line_mLength) #1
  %2 = load i64, ptr @"?OutString@Console@System@bf@@2V?$function_str@XUStringView@System@bf@@@3@A", align 8
  %3 = inttoptr i64 %2 to ptr
  tail call void %3(ptr nonnull @__bfStrData60, i64 1) #1
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?WriteLine@Console@System@bf@@SAXUStringView@23@Tparams@@PEAV?$Array1@PEAVObject@System@bf@@@23@@Z"(ptr %fmt_mPtr, i64 %fmt_mLength, ptr %args) local_unnamed_addr #0 {
entry:
  %0 = alloca [272 x i8], align 8
  %1 = alloca i64, align 8
  %2 = alloca %"corlib.?$Span@PEAVObject@System@bf@@@System@bf", align 8
  %3 = alloca %"corlib.?$Result@X@System@bf", align 1
  %4 = alloca %"corlib.StringView@System@bf", align 8
  store ptr @"?sBfClassVData@String@System@bf@@2UClassVData@23@A", ptr %0, align 8
  call void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr nonnull %0)
  %5 = ptrtoint ptr %0 to i64
  %6 = add i64 %5, 24
  store i64 %6, ptr %1, align 8
  call void @"?__BfCtor@i0$String@System@bf@@QEAAXAEATint@@Tint@@@Z"(ptr nonnull %0, ptr nonnull dereferenceable(8) %1, i64 256)
  call void @"??B?$Span@PEAVObject@System@bf@@@System@bf@@SA?AU012@PEAV?$Array1@PEAVObject@System@bf@@@12@@Z"(ptr nonnull sret(%"corlib.?$Span@PEAVObject@System@bf@@@System@bf") %2, ptr %args)
  call void @"?AppendF@String@System@bf@@QEAA?AU?$Result@X@23@UStringView@23@Tparams@@U?$Span@PEAVObject@System@bf@@@23@@Z"(ptr nonnull %0, ptr nonnull sret(%"corlib.?$Result@X@System@bf") %3, ptr %fmt_mPtr, i64 %fmt_mLength, ptr nonnull %2)
  call void @"?ReturnValueDiscarded__im@?$Result@X@System@bf@@QEAAXXZ"(ptr nocapture nonnull dereferenceable(1) %3)
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr nonnull sret(%"corlib.StringView@System@bf") %4, ptr nonnull %0)
  %7 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %4, i64 0, i32 2
  %10 = load i64, ptr %9, align 8
  %11 = load i64, ptr @"?OutString@Console@System@bf@@2V?$function_str@XUStringView@System@bf@@@3@A", align 8
  %12 = inttoptr i64 %11 to ptr
  call void %12(ptr %8, i64 %10) #1
  %13 = load i64, ptr @"?OutString@Console@System@bf@@2V?$function_str@XUStringView@System@bf@@@3@A", align 8
  %14 = inttoptr i64 %13 to ptr
  call void %14(ptr nonnull @__bfStrData60, i64 1) #1
  call void @"?~this@String@System@bf@@QEAAXXZ"(ptr nonnull %0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfStaticDtor@Console@System@bf@@SAXXZ"() local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @"?mIn@Console@System@bf@@2PEAVStreamReader@IO@23@C", align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %delete.end, label %delete.body

delete.body:                                      ; preds = %entry
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr inbounds ptr, ptr %1, i64 3
  %3 = load ptr, ptr %2, align 8
  tail call void %3(ptr nonnull %0) #1
  tail call void @tc_free(ptr nonnull %0) #1
  br label %delete.end

delete.end:                                       ; preds = %delete.body, %entry
  %4 = load ptr, ptr @"?mError@Console@System@bf@@2PEAVStreamWriter@IO@23@C", align 8
  %.not7 = icmp eq ptr %4, null
  br i1 %.not7, label %delete.end2, label %delete.body1

delete.body1:                                     ; preds = %delete.end
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr nonnull %4) #1
  tail call void @tc_free(ptr nonnull %4) #1
  br label %delete.end2

delete.end2:                                      ; preds = %delete.body1, %delete.end
  %8 = load ptr, ptr @"?mOut@Console@System@bf@@2PEAVStreamWriter@IO@23@C", align 8
  %.not8 = icmp eq ptr %8, null
  br i1 %.not8, label %exit, label %delete.body3

delete.body3:                                     ; preds = %delete.end2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr nonnull %8) #1
  tail call void @tc_free(ptr nonnull %8) #1
  br label %exit

exit:                                             ; preds = %delete.end2, %delete.body3
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@CONSOLE_SCREEN_BUFFER_INFO@Console@System@bf@@QEAAXXZ"(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?set__ConsoleTextAttribute@ConsoleColor@System@bf@@SAXCE@Z"(ptr, i8) local_unnamed_addr #0

declare void @tc_free(ptr) local_unnamed_addr

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i0$String@System@bf@@QEAAXAEATint@@Tint@@@Z"(ptr, ptr dereferenceable(8), i64) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?~this@String@System@bf@@QEAAXXZ"(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?AppendF@String@System@bf@@QEAA?AU?$Result@X@23@UStringView@23@Tparams@@U?$Span@PEAVObject@System@bf@@@23@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf"), ptr, i64, ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"??B?$Span@PEAVObject@System@bf@@@System@bf@@SA?AU012@PEAV?$Array1@PEAVObject@System@bf@@@12@@Z"(ptr noalias sret(%"corlib.?$Span@PEAVObject@System@bf@@@System@bf"), ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?ReturnValueDiscarded__im@?$Result@X@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(1)) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr noalias sret(%"corlib.StringView@System@bf"), ptr) local_unnamed_addr #0

attributes #0 = { nounwind uwtable }
attributes #1 = { nounwind }
