; ModuleID = 'System_Char8'
source_filename = "System_Char8"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsNaN__im@IIsNaN@System@bf@@Char8@23@CA_ND@Z"(i8) #0

; Function Attrs: nounwind uwtable
declare i8 @"?get__ToLower__im@Char8@System@bf@@SADD@Z"(i8) #0

; Function Attrs: nounwind uwtable
declare i8 @"?get__ToUpper__im@Char8@System@bf@@SADD@Z"(i8) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsLower__im@Char8@System@bf@@SA_ND@Z"(i8) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsUpper__im@Char8@System@bf@@SA_ND@Z"(i8) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsWhiteSpace__im@Char8@System@bf@@SA_ND@Z"(i8) #0

; Function Attrs: nounwind uwtable
define i1 @"?get__IsDigit__im@Char8@System@bf@@SA_ND@Z"(i8 %this) #0 {
entry:
  %__return = alloca i1, align 1
  %0 = icmp uge i8 %this, 48
  br i1 %0, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = icmp ule i8 %this, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %1, %land.rhs ]
  store i1 %2, ptr %__return, align 1
  br label %exit

exit:                                             ; preds = %land.end
  %3 = load i1, ptr %__return, align 1
  ret i1 %3
}

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsLetterOrDigit__im@Char8@System@bf@@SA_ND@Z"(i8) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsLetter__im@Char8@System@bf@@SA_ND@Z"(i8) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsNumber__im@Char8@System@bf@@SA_ND@Z"(i8) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsControl__im@Char8@System@bf@@SA_ND@Z"(i8) #0

; Function Attrs: nounwind uwtable
declare i64 @"?GetHashCode__im@Char8@System@bf@@SATint@@D@Z"(i8) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@Char8@System@bf@@SAXD@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@Char8@System@bf@@SAXDPEAVString@23@@Z"(i8, ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface__im@Char8@System@bf@@KAPEAVObject@23@DH@Z"(i8, i32) #0

attributes #0 = { nounwind uwtable }
