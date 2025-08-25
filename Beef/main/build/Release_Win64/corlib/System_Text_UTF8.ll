; ModuleID = 'System_Text_UTF8'
source_filename = "System_Text_UTF8"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$__TUPLE_c_length@_UC@bf" = type <{ %"corlib.Tuple@System@bf", i32, i8 }>
%"corlib.Tuple@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$Result@U?$__TUPLE@_UH@bf@@UDecodeError@UTF8@Text@System@1@@System@bf" = type opaque

@__constMem9792 = internal constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\04\04\04\04\05\05\05\05"
@__constMem10608 = internal constant [6 x i32] [i32 0, i32 12416, i32 925824, i32 63447168, i32 -100130688, i32 -2113396608]

; Function Attrs: nounwind uwtable
declare i64 @"?GetEncodedLength@UTF8@Text@System@bf@@SATint@@_U@Z"(i32) #0

; Function Attrs: nounwind uwtable
declare i8 @"?GetDecodedLength@UTF8@Text@System@bf@@SACPEAD@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare i8 @"?GetDecodedLength@UTF8@Text@System@bf@@SACD@Z"(i8) #0

; Function Attrs: nounwind uwtable
define void @"?Decode@UTF8@Text@System@bf@@SA?AU?$__TUPLE_c_length@_UC@4@PEADTint@@@Z"(ptr noalias sret(%"corlib.?$__TUPLE_c_length@_UC@bf") %0, ptr %buf, i64 %bufSize) #0 {
entry:
  %__return.addr = alloca ptr, align 8
  %c = alloca i32, align 4
  %trailingBytes = alloca i8, align 1
  %1 = alloca %"corlib.?$__TUPLE_c_length@_UC@bf", align 4
  %bufIdx = alloca i64, align 8
  %2 = alloca %"corlib.?$__TUPLE_c_length@_UC@bf", align 4
  store ptr %0, ptr %__return.addr, align 4
  %3 = load i8, ptr %buf, align 1
  %4 = zext i8 %3 to i32
  store i32 %4, ptr %c, align 4
  %5 = load i32, ptr %c, align 4
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [256 x i8], ptr @__constMem9792, i64 0, i64 %6
  %8 = load i8, ptr %7, align 1
  store i8 %8, ptr %trailingBytes, align 1
  br label %newScope

newScope:                                         ; preds = %entry
  %9 = load i8, ptr %trailingBytes, align 1
  %10 = sext i8 %9 to i64
  %11 = icmp sgt i64 %10, %bufSize
  br i1 %11, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  %12 = load i8, ptr %trailingBytes, align 1
  %13 = add i8 %12, 1
  %14 = getelementptr inbounds %"corlib.?$__TUPLE_c_length@_UC@bf", ptr %1, i32 0, i32 1
  store i32 -1, ptr %14, align 4
  %15 = getelementptr inbounds %"corlib.?$__TUPLE_c_length@_UC@bf", ptr %1, i32 0, i32 2
  store i8 %13, ptr %15, align 1
  %16 = load %"corlib.?$__TUPLE_c_length@_UC@bf", ptr %1, align 4
  %17 = load ptr, ptr %__return.addr, align 4
  store %"corlib.?$__TUPLE_c_length@_UC@bf" %16, ptr %17, align 4
  br label %exit

if.end:                                           ; preds = %newScope
  store i64 1, ptr %bufIdx, align 8
  br label %newScope1

newScope1:                                        ; preds = %if.end
  %18 = load i8, ptr %trailingBytes, align 1
  br label %newScope2

newScope2:                                        ; preds = %newScope1
  switch i8 %18, label %noSwitch [
    i8 3, label %switch.0
    i8 2, label %switch.1
    i8 1, label %switch.2
  ]

noSwitch:                                         ; preds = %newScope2
  br label %default

switch.0:                                         ; preds = %newScope2
  %19 = load i32, ptr %c, align 4
  %20 = shl i32 %19, 6
  store i32 %20, ptr %c, align 4
  %21 = load i64, ptr %bufIdx, align 8
  %22 = add i64 %21, 1
  store i64 %22, ptr %bufIdx, align 8
  %23 = getelementptr inbounds i8, ptr %buf, i64 %21
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = load i32, ptr %c, align 4
  %27 = add i32 %26, %25
  store i32 %27, ptr %c, align 4
  br label %switch.1

switch.1:                                         ; preds = %newScope2, %switch.0
  %28 = load i32, ptr %c, align 4
  %29 = shl i32 %28, 6
  store i32 %29, ptr %c, align 4
  %30 = load i64, ptr %bufIdx, align 8
  %31 = add i64 %30, 1
  store i64 %31, ptr %bufIdx, align 8
  %32 = getelementptr inbounds i8, ptr %buf, i64 %30
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = load i32, ptr %c, align 4
  %36 = add i32 %35, %34
  store i32 %36, ptr %c, align 4
  br label %switch.2

switch.2:                                         ; preds = %newScope2, %switch.1
  %37 = load i32, ptr %c, align 4
  %38 = shl i32 %37, 6
  store i32 %38, ptr %c, align 4
  %39 = load i64, ptr %bufIdx, align 8
  %40 = add i64 %39, 1
  store i64 %40, ptr %bufIdx, align 8
  %41 = getelementptr inbounds i8, ptr %buf, i64 %39
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = load i32, ptr %c, align 4
  %45 = add i32 %44, %43
  store i32 %45, ptr %c, align 4
  br label %default

default:                                          ; preds = %noSwitch, %switch.2
  br label %switch.end

switch.end:                                       ; preds = %default
  %46 = load i8, ptr %trailingBytes, align 1
  %47 = getelementptr inbounds [6 x i32], ptr @__constMem10608, i64 0, i8 %46
  %48 = load i32, ptr %47, align 4
  %49 = load i32, ptr %c, align 4
  %50 = sub i32 %49, %48
  store i32 %50, ptr %c, align 4
  %51 = load i32, ptr %c, align 4
  %52 = load i8, ptr %trailingBytes, align 1
  %53 = add i8 %52, 1
  %54 = getelementptr inbounds %"corlib.?$__TUPLE_c_length@_UC@bf", ptr %2, i32 0, i32 1
  store i32 %51, ptr %54, align 4
  %55 = getelementptr inbounds %"corlib.?$__TUPLE_c_length@_UC@bf", ptr %2, i32 0, i32 2
  store i8 %53, ptr %55, align 1
  %56 = load %"corlib.?$__TUPLE_c_length@_UC@bf", ptr %2, align 4
  %57 = load ptr, ptr %__return.addr, align 4
  store %"corlib.?$__TUPLE_c_length@_UC@bf" %56, ptr %57, align 4
  br label %exit

exit:                                             ; preds = %switch.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?TryDecode@UTF8@Text@System@bf@@SA?AU?$Result@?AU?$__TUPLE@_UH@bf@@?AUDecodeError@UTF8@Text@System@1@@34@PEADTint@@@Z"(ptr noalias sret(%"corlib.?$Result@U?$__TUPLE@_UH@bf@@UDecodeError@UTF8@Text@System@1@@System@bf"), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?Encode@UTF8@Text@System@bf@@SATint@@_UU?$Span@D@34@@Z"(i32, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Encode@UTF8@Text@System@bf@@SAX_UAEAPEAD@Z"(i32, ptr dereferenceable(8)) #0

attributes #0 = { nounwind uwtable }
