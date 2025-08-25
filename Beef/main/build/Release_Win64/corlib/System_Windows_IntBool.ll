; ModuleID = 'System_Windows_IntBool'
source_filename = "System_Windows_IntBool"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: nounwind uwtable
declare i32 @"??BIntBool@Windows@System@bf@@SAV0123@_N@Z"(i1 zeroext) #0

; Function Attrs: nounwind uwtable
define i1 @"??BIntBool@Windows@System@bf@@SA_NV0123@@Z"(i32 %value) #0 {
entry:
  %__return = alloca i1, align 1
  %0 = icmp ne i32 %value, 0
  store i1 %0, ptr %__return, align 1
  br label %exit

exit:                                             ; preds = %entry
  %1 = load i1, ptr %__return, align 1
  ret i1 %1
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@IntBool@Windows@System@bf@@SAXH@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface__im@IntBool@Windows@System@bf@@KAPEAVObject@34@HH@Z"(i32, i32) #0

attributes #0 = { nounwind uwtable }
