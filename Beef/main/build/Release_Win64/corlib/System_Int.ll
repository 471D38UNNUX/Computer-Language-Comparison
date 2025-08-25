; ModuleID = 'System_Int'
source_filename = "System_Int"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Result@Tint@@UParseError@Int@System@bf@@@System@bf" = type opaque
%"corlib.?$Result@Tint@@@System@bf" = type opaque

; Function Attrs: nounwind uwtable
declare i64 @"?get__MinValue@?$IMinMaxValue@Tint@@@System@bf@@Int@23@SATint@@XZ"() #0

; Function Attrs: nounwind uwtable
declare i64 @"?get__MaxValue@?$IMinMaxValue@Tint@@@System@bf@@Int@23@SATint@@XZ"() #0

; Function Attrs: nounwind uwtable
declare i64 @"?__cmp__Int@System@bf@@SATint@@V012@0@Z"(i64, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"??HInt@System@bf@@SAV012@V012@0@Z"(i64, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"??GInt@System@bf@@SAV012@V012@0@Z"(i64, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"??GInt@System@bf@@SAV012@V012@@Z"(i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"??DInt@System@bf@@SAV012@V012@0@Z"(i64, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"??KInt@System@bf@@SAV012@V012@0@Z"(i64, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?GetHashCode__im@Int@System@bf@@SATint@@Tint@@@Z"(i64) #0

; Function Attrs: nounwind uwtable
define i1 @"?get__IsNaN__im@IIsNaN@System@bf@@Int@23@CA_NTint@@@Z"(i64 %this) #0 {
entry:
  %__return = alloca i1, align 1
  store i1 false, ptr %__return, align 1
  br label %exit

exit:                                             ; preds = %entry
  %0 = load i1, ptr %__return, align 1
  ret i1 %0
}

; Function Attrs: nounwind uwtable
define void @"?ToString__im@Int@System@bf@@SAXTint@@PEAVString@23@1PEAVIFormatProvider@23@@Z"(i64 %this, ptr %outString, ptr %format, ptr %formatProvider) #0 {
entry:
  call void @"?ToString__im@Int64@System@bf@@SAX_JPEAVString@23@1PEAVIFormatProvider@23@@Z"(i64 %this, ptr %outString, ptr %format, ptr %formatProvider)
  br label %if.end

if.end:                                           ; preds = %entry
  br label %exit

exit:                                             ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?Parse@Int@System@bf@@SA?AU?$Result@Tint@@?AUParseError@Int@System@bf@@@23@UStringView@23@W4NumberStyles@Globalization@23@PEAVCultureInfo@723@@Z"(ptr noalias sret(%"corlib.?$Result@Tint@@UParseError@Int@System@bf@@@System@bf"), ptr, i64, i16, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Parse@?$IParseable@Tint@@UParseError@Int@System@bf@@@System@bf@@Int@23@SA?AU?$Result@Tint@@?AUParseError@Int@System@bf@@@23@UStringView@23@@Z"(ptr noalias sret(%"corlib.?$Result@Tint@@UParseError@Int@System@bf@@@System@bf"), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Parse@?$IParseable@Tint@@@System@bf@@Int@23@SA?AU?$Result@Tint@@@23@UStringView@23@@Z"(ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@Int@System@bf@@SAXTint@@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?ToString__im@Int@System@bf@@SAXTint@@PEAVString@23@@Z"(i64 %this, ptr %outString) #0 {
entry:
  call void @"?ToString__im@Int64@System@bf@@SAX_JPEAVString@23@@Z"(i64 %this, ptr %outString)
  br label %if.end

if.end:                                           ; preds = %entry
  br label %exit

exit:                                             ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface__im@Int@System@bf@@KAPEAVObject@23@Tint@@H@Z"(i64, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@Int64@System@bf@@SAX_JPEAVString@23@@Z"(i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@Int64@System@bf@@SAX_JPEAVString@23@1PEAVIFormatProvider@23@@Z"(i64, ptr, ptr, ptr) #0

attributes #0 = { nounwind uwtable }
