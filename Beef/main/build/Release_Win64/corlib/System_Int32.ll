; ModuleID = 'System_Int32'
source_filename = "System_Int32"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.StringView@System@bf" = type <{ %"corlib.?$Span@D@System@bf" }>
%"corlib.?$Span@D@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$Result@HUParseError@Int32@System@bf@@@System@bf" = type opaque
%"corlib.?$Result@H@System@bf" = type opaque

; Function Attrs: nounwind uwtable
declare i32 @"?get__MinValue@?$IMinMaxValue@H@System@bf@@Int32@23@SAHXZ"() #0

; Function Attrs: nounwind uwtable
declare i32 @"?get__MaxValue@?$IMinMaxValue@H@System@bf@@Int32@23@SAHXZ"() #0

; Function Attrs: nounwind uwtable
declare i64 @"?__cmp__Int32@System@bf@@SATint@@V012@0@Z"(i32, i32) #0

; Function Attrs: nounwind uwtable
declare i32 @"??HInt32@System@bf@@SAV012@V012@0@Z"(i32, i32) #0

; Function Attrs: nounwind uwtable
declare i32 @"??GInt32@System@bf@@SAV012@V012@0@Z"(i32, i32) #0

; Function Attrs: nounwind uwtable
declare i32 @"??GInt32@System@bf@@SAV012@V012@@Z"(i32) #0

; Function Attrs: nounwind uwtable
declare i32 @"??DInt32@System@bf@@SAV012@V012@0@Z"(i32, i32) #0

; Function Attrs: nounwind uwtable
declare i32 @"??KInt32@System@bf@@SAV012@V012@0@Z"(i32, i32) #0

; Function Attrs: nounwind uwtable
declare i64 @"?GetHashCode__im@Int32@System@bf@@SATint@@H@Z"(i32) #0

; Function Attrs: nounwind uwtable
define i1 @"?get__IsNaN__im@IIsNaN@System@bf@@Int32@23@CA_NH@Z"(i32 %this) #0 {
entry:
  %__return = alloca i1, align 1
  store i1 false, ptr %__return, align 1
  br label %exit

exit:                                             ; preds = %entry
  %0 = load i1, ptr %__return, align 1
  ret i1 %0
}

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@Int32@System@bf@@CAXHPEAVString@23@Tint@@@Z"(i32, ptr, i64) #0

; Function Attrs: nounwind uwtable
define void @"?ToString__im@Int32@System@bf@@SAXHPEAVString@23@0PEAVIFormatProvider@23@@Z"(i32 %this, ptr %outString, ptr %format, ptr %formatProvider) #0 {
entry:
  %0 = alloca %"corlib.StringView@System@bf", align 8
  %1 = icmp eq ptr %format, null
  br i1 %1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %get__IsEmpty = call i1 @"?get__IsEmpty@String@System@bf@@QEAA_NXZ"(ptr %format)
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %get__IsEmpty, %lor.rhs ]
  br i1 %2, label %if.then, label %if.else

if.then:                                          ; preds = %lor.end
  call void @"?ToString__im@Int32@System@bf@@SAXHPEAVString@23@@Z"(i32 %this, ptr %outString)
  br label %if.end

if.else:                                          ; preds = %lor.end
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr sret(%"corlib.StringView@System@bf") %0, ptr %format)
  %3 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %0, i32 0, i32 0
  %4 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %3, i32 0, i32 2
  %7 = load i64, ptr %6, align 8
  call void @"?NumberToString@NumberFormatter@System@bf@@SAXUStringView@23@HPEAVIFormatProvider@23@PEAVString@23@@Z"(ptr %5, i64 %7, i32 %this, ptr %formatProvider, ptr %outString)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %exit

exit:                                             ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?Parse@Int32@System@bf@@SA?AU?$Result@H?AUParseError@Int32@System@bf@@@23@UStringView@23@W4NumberStyles@Globalization@23@PEAVCultureInfo@723@@Z"(ptr noalias sret(%"corlib.?$Result@HUParseError@Int32@System@bf@@@System@bf"), ptr, i64, i16, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Parse@?$IParseable@HUParseError@Int32@System@bf@@@System@bf@@Int32@23@SA?AU?$Result@H?AUParseError@Int32@System@bf@@@23@UStringView@23@@Z"(ptr noalias sret(%"corlib.?$Result@HUParseError@Int32@System@bf@@@System@bf"), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Parse@?$IParseable@H@System@bf@@Int32@23@SA?AU?$Result@H@23@UStringView@23@@Z"(ptr noalias sret(%"corlib.?$Result@H@System@bf"), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@Int32@System@bf@@SAXH@Z"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?ToString__im@Int32@System@bf@@SAXHPEAVString@23@@Z"(i32 %this, ptr %strBuffer) #0 {
entry:
  %strChars = alloca [16 x i8], align 1
  %char8Idx = alloca i32, align 4
  %valLeft = alloca i32, align 4
  %isNeg = alloca i1, align 1
  %char8Ptr = alloca ptr, align 8
  store i32 14, ptr %char8Idx, align 4
  store i32 %this, ptr %valLeft, align 4
  store i1 true, ptr %isNeg, align 1
  br label %newScope

newScope:                                         ; preds = %entry
  %0 = load i32, ptr %valLeft, align 4
  %1 = icmp sge i32 %0, 0
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  %2 = load i32, ptr %valLeft, align 4
  %3 = sub i32 0, %2
  store i32 %3, ptr %valLeft, align 4
  store i1 false, ptr %isNeg, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %newScope
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %4 = load i32, ptr %valLeft, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %6 = load i32, ptr %char8Idx, align 4
  %7 = getelementptr inbounds [16 x i8], ptr %strChars, i64 0, i32 %6
  %8 = load i32, ptr %valLeft, align 4
  %9 = srem i32 %8, 10
  %10 = trunc i32 %9 to i8
  %11 = sub i8 48, %10
  store i8 %11, ptr %7, align 1
  %12 = load i32, ptr %valLeft, align 4
  %13 = sdiv i32 %12, 10
  store i32 %13, ptr %valLeft, align 4
  %14 = load i32, ptr %char8Idx, align 4
  %15 = sub i32 %14, 1
  store i32 %15, ptr %char8Idx, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i32, ptr %char8Idx, align 4
  %17 = icmp eq i32 %16, 14
  br i1 %17, label %if.then1, label %if.end2

if.then1:                                         ; preds = %while.end
  %18 = load i32, ptr %char8Idx, align 4
  %19 = sub i32 %18, 1
  store i32 %19, ptr %char8Idx, align 4
  %20 = getelementptr inbounds [16 x i8], ptr %strChars, i64 0, i32 %18
  store i8 48, ptr %20, align 1
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %while.end
  %21 = load i1, ptr %isNeg, align 1
  br i1 %21, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end2
  %22 = load i32, ptr %char8Idx, align 4
  %23 = sub i32 %22, 1
  store i32 %23, ptr %char8Idx, align 4
  %24 = getelementptr inbounds [16 x i8], ptr %strChars, i64 0, i32 %22
  store i8 45, ptr %24, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end2
  %25 = load i32, ptr %char8Idx, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 %26, 1
  %28 = getelementptr inbounds [16 x i8], ptr %strChars, i64 0, i64 %27
  store ptr %28, ptr %char8Ptr, align 8
  %29 = load ptr, ptr %char8Ptr, align 8
  %30 = load i32, ptr %char8Idx, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 14, %31
  call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %strBuffer, ptr %29, i64 %32)
  br label %exit

exit:                                             ; preds = %if.end4
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface__im@Int32@System@bf@@KAPEAVObject@23@HH@Z"(i32, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsEmpty@String@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?NumberToString@NumberFormatter@System@bf@@SAXUStringView@23@HPEAVIFormatProvider@23@PEAVString@23@@Z"(ptr, i64, i32, ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr noalias sret(%"corlib.StringView@System@bf"), ptr) #0

attributes #0 = { nounwind uwtable }
