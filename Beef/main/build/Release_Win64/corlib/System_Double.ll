; ModuleID = 'System_Double'
source_filename = "System_Double"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.?$Result@N@System@bf" = type opaque
%"corlib.StringView@System@bf" = type <{ %"corlib.?$Span@D@System@bf" }>
%"corlib.?$Span@D@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.ValueType@System@bf" = type <{}>

@"?sBfClassVData@String@System@bf@@2UClassVData@23@A" = external constant [8 x ptr]
@__bfStrObj384 = external constant %"corlib.String@System@bf"

; Function Attrs: nounwind uwtable
declare double @"?get__MinValue@?$IMinMaxValue@N@System@bf@@Double@23@SANXZ"() #0

; Function Attrs: nounwind uwtable
declare double @"?get__MaxValue@?$IMinMaxValue@N@System@bf@@Double@23@SANXZ"() #0

; Function Attrs: nounwind uwtable
declare i64 @"?__cmp__Double@System@bf@@SATint@@V012@0@Z"(double, double) #0

; Function Attrs: nounwind uwtable
declare double @"??GDouble@System@bf@@SAV012@V012@@Z"(double) #0

; Function Attrs: nounwind uwtable
declare double @"??HDouble@System@bf@@SAV012@V012@0@Z"(double, double) #0

; Function Attrs: nounwind uwtable
declare double @"??GDouble@System@bf@@SAV012@V012@0@Z"(double, double) #0

; Function Attrs: nounwind uwtable
declare double @"??DDouble@System@bf@@SAV012@V012@0@Z"(double, double) #0

; Function Attrs: nounwind uwtable
declare double @"??KDouble@System@bf@@SAV012@V012@0@Z"(double, double) #0

; Function Attrs: nounwind uwtable
declare i64 @"?GetHashCode__im@Double@System@bf@@SATint@@N@Z"(double) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsNegative__im@Double@System@bf@@SA_NN@Z"(double) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsFinite__im@Double@System@bf@@SA_NN@Z"(double) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsInfinity__im@Double@System@bf@@SA_NN@Z"(double) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsPositiveInfinity__im@Double@System@bf@@SA_NN@Z"(double) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsNegativeInfinity__im@Double@System@bf@@SA_NN@Z"(double) #0

; Function Attrs: nounwind uwtable
define i1 @"?get__IsNaN__im@Double@System@bf@@SA_NN@Z"(double %this) #0 {
entry:
  %__return = alloca i1, align 1
  %val = alloca double, align 8
  store double %this, ptr %val, align 8
  %0 = load i64, ptr %val, align 8
  %1 = and i64 %0, 9223372036854775807
  %2 = icmp ugt i64 %1, 9218868437227405312
  store i1 %2, ptr %__return, align 1
  br label %exit

exit:                                             ; preds = %entry
  %3 = load i1, ptr %__return, align 1
  ret i1 %3
}

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsSubnormal__im@Double@System@bf@@SA_NN@Z"(double) #0

; Function Attrs: nounwind uwtable
declare i32 @"?CompareTo__im@Double@System@bf@@SAHNPEAVObject@23@@Z"(double, ptr) #0

; Function Attrs: nounwind uwtable
declare i32 @"?CompareTo__im@Double@System@bf@@SAHNN@Z"(double, double) #0

; Function Attrs: nounwind uwtable
declare i1 @"?Equals__im@Double@System@bf@@SA_NNN@Z"(double, double) #0

; Function Attrs: nounwind uwtable
declare double @strtod(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Parse@Double@System@bf@@SA?AU?$Result@N@23@UStringView@23@@Z"(ptr noalias sret(%"corlib.?$Result@N@System@bf"), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i32 @ftoa(float, ptr) #0

; Function Attrs: nounwind uwtable
declare i32 @"?ToString@Double@System@bf@@CAHNPEAD_N@Z"(double, ptr, i1 zeroext) #0

; Function Attrs: nounwind uwtable
define void @"?ToString__im@Double@System@bf@@SAXNPEAVString@23@0PEAVIFormatProvider@23@@Z"(double %this, ptr %outString, ptr %format, ptr %formatProvider) #0 {
entry:
  %outBuff = alloca [128 x i8], align 1
  %len = alloca i64, align 8
  %0 = alloca %"corlib.StringView@System@bf", align 8
  %get__IsEmpty = call i1 @"?get__IsEmpty@String@System@bf@@QEAA_NXZ"(ptr %format)
  br i1 %get__IsEmpty, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @"?ToString__im@Double@System@bf@@SAXNPEAVString@23@@Z"(double %this, ptr %outString)
  br label %exit

if.else:                                          ; preds = %entry
  %1 = call i1 @"??8String@System@bf@@SA_NPEAV012@0@Z"(ptr %format, ptr @__bfStrObj384)
  br i1 %1, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.else
  %ToString = call i32 @"?ToString@Double@System@bf@@CAHNPEAD_N@Z"(double %this, ptr %outBuff, i1 zeroext true)
  %2 = sext i32 %ToString to i64
  store i64 %2, ptr %len, align 8
  %3 = load i64, ptr %len, align 8
  call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %outString, ptr %outBuff, i64 %3)
  br label %exit

if.end:                                           ; preds = %if.else
  br label %if.end2

if.end2:                                          ; preds = %if.end
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr sret(%"corlib.StringView@System@bf") %0, ptr %format)
  %4 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %0, i32 0, i32 0
  %5 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %4, i32 0, i32 2
  %8 = load i64, ptr %7, align 8
  call void @"?NumberToString@NumberFormatter@System@bf@@SAXUStringView@23@NPEAVIFormatProvider@23@PEAVString@23@@Z"(ptr %6, i64 %8, double %this, ptr %formatProvider, ptr %outString)
  br label %exit

exit:                                             ; preds = %if.end2, %if.then1, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@Double@System@bf@@SAXN@Z"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?ToString__im@Double@System@bf@@SAXNPEAVString@23@@Z"(double %this, ptr %strBuffer) #0 {
entry:
  %outBuff = alloca [128 x i8], align 1
  %len = alloca i64, align 8
  %ToString = call i32 @"?ToString@Double@System@bf@@CAHNPEAD_N@Z"(double %this, ptr %outBuff, i1 zeroext false)
  %0 = sext i32 %ToString to i64
  store i64 %0, ptr %len, align 8
  %1 = load i64, ptr %len, align 8
  call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %strBuffer, ptr %outBuff, i64 %1)
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface__im@Double@System@bf@@KAPEAVObject@23@NH@Z"(double, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsEmpty@String@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"??8String@System@bf@@SA_NPEAV012@0@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?NumberToString@NumberFormatter@System@bf@@SAXUStringView@23@NPEAVIFormatProvider@23@PEAVString@23@@Z"(ptr, i64, double, ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr noalias sret(%"corlib.StringView@System@bf"), ptr) #0

attributes #0 = { nounwind uwtable }
