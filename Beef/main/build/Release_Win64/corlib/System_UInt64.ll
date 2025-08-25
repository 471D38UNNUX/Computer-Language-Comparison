; ModuleID = 'System_UInt64'
source_filename = "System_UInt64"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.StringView@System@bf" = type <{ %"corlib.?$Span@D@System@bf" }>
%"corlib.?$Span@D@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$Result@_KUParseError@UInt64@System@bf@@@System@bf" = type opaque
%"corlib.?$Result@_K@System@bf" = type opaque

; Function Attrs: nounwind uwtable
declare i64 @"?get__MinValue@?$IMinMaxValue@_K@System@bf@@UInt64@23@SA_KXZ"() #0

; Function Attrs: nounwind uwtable
declare i64 @"?get__MaxValue@?$IMinMaxValue@_K@System@bf@@UInt64@23@SA_KXZ"() #0

; Function Attrs: nounwind uwtable
declare i64 @"?__cmp__UInt64@System@bf@@SATint@@V012@0@Z"(i64, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"??HUInt64@System@bf@@SAV012@V012@0@Z"(i64, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"??GUInt64@System@bf@@SAV012@V012@0@Z"(i64, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"??DUInt64@System@bf@@SAV012@V012@0@Z"(i64, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"??KUInt64@System@bf@@SAV012@V012@0@Z"(i64, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?GetHashCode__im@UInt64@System@bf@@SATint@@_K@Z"(i64) #0

; Function Attrs: nounwind uwtable
define i1 @"?get__IsNaN__im@IIsNaN@System@bf@@UInt64@23@CA_N_K@Z"(i64 %this) #0 {
entry:
  %__return = alloca i1, align 1
  store i1 false, ptr %__return, align 1
  br label %exit

exit:                                             ; preds = %entry
  %0 = load i1, ptr %__return, align 1
  ret i1 %0
}

; Function Attrs: nounwind uwtable
define void @"?ToString__im@UInt64@System@bf@@SAX_KPEAVString@23@1PEAVIFormatProvider@23@@Z"(i64 %this, ptr %outString, ptr %format, ptr %formatProvider) #0 {
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
  call void @"?ToString__im@UInt64@System@bf@@SAX_KPEAVString@23@@Z"(i64 %this, ptr %outString)
  br label %if.end

if.else:                                          ; preds = %lor.end
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr sret(%"corlib.StringView@System@bf") %0, ptr %format)
  %3 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %0, i32 0, i32 0
  %4 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %3, i32 0, i32 2
  %7 = load i64, ptr %6, align 8
  call void @"?NumberToString@NumberFormatter@System@bf@@SAXUStringView@23@_KPEAVIFormatProvider@23@PEAVString@23@@Z"(ptr %5, i64 %7, i64 %this, ptr %formatProvider, ptr %outString)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %exit

exit:                                             ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?Parse@UInt64@System@bf@@SA?AU?$Result@_K?AUParseError@UInt64@System@bf@@@23@UStringView@23@W4NumberStyles@Globalization@23@PEAVCultureInfo@723@@Z"(ptr noalias sret(%"corlib.?$Result@_KUParseError@UInt64@System@bf@@@System@bf"), ptr, i64, i16, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Parse@?$IParseable@_KUParseError@UInt64@System@bf@@@System@bf@@UInt64@23@SA?AU?$Result@_K?AUParseError@UInt64@System@bf@@@23@UStringView@23@@Z"(ptr noalias sret(%"corlib.?$Result@_KUParseError@UInt64@System@bf@@@System@bf"), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Parse@?$IParseable@_K@System@bf@@UInt64@23@SA?AU?$Result@_K@23@UStringView@23@@Z"(ptr noalias sret(%"corlib.?$Result@_K@System@bf"), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@UInt64@System@bf@@SAX_K@Z"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?ToString__im@UInt64@System@bf@@SAX_KPEAVString@23@@Z"(i64 %this, ptr %strBuffer) #0 {
entry:
  %strChars = alloca [22 x i8], align 1
  %char8Idx = alloca i32, align 4
  %valLeft = alloca i64, align 8
  %char8Ptr = alloca ptr, align 8
  store i32 20, ptr %char8Idx, align 4
  store i64 %this, ptr %valLeft, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %newScope
  %0 = load i64, ptr %valLeft, align 8
  %1 = icmp ugt i64 %0, 0
  br i1 %1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, ptr %char8Idx, align 4
  %3 = getelementptr inbounds [22 x i8], ptr %strChars, i64 0, i32 %2
  %4 = load i64, ptr %valLeft, align 8
  %5 = urem i64 %4, 10
  %6 = trunc i64 %5 to i8
  %7 = add i8 48, %6
  store i8 %7, ptr %3, align 1
  %8 = load i64, ptr %valLeft, align 8
  %9 = udiv i64 %8, 10
  store i64 %9, ptr %valLeft, align 8
  %10 = load i32, ptr %char8Idx, align 4
  %11 = sub i32 %10, 1
  store i32 %11, ptr %char8Idx, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %12 = load i32, ptr %char8Idx, align 4
  %13 = icmp eq i32 %12, 20
  br i1 %13, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  %14 = load i32, ptr %char8Idx, align 4
  %15 = sub i32 %14, 1
  store i32 %15, ptr %char8Idx, align 4
  %16 = getelementptr inbounds [22 x i8], ptr %strChars, i64 0, i32 %14
  store i8 48, ptr %16, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %17 = load i32, ptr %char8Idx, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 %18, 1
  %20 = getelementptr inbounds [22 x i8], ptr %strChars, i64 0, i64 %19
  store ptr %20, ptr %char8Ptr, align 8
  %21 = load ptr, ptr %char8Ptr, align 8
  %22 = load i32, ptr %char8Idx, align 4
  %23 = sext i32 %22 to i64
  %24 = sub i64 20, %23
  call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %strBuffer, ptr %21, i64 %24)
  br label %exit

exit:                                             ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface__im@UInt64@System@bf@@KAPEAVObject@23@_KH@Z"(i64, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsEmpty@String@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?NumberToString@NumberFormatter@System@bf@@SAXUStringView@23@_KPEAVIFormatProvider@23@PEAVString@23@@Z"(ptr, i64, i64, ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr noalias sret(%"corlib.StringView@System@bf"), ptr) #0

attributes #0 = { nounwind uwtable }
