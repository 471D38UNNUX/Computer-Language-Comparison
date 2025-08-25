; ModuleID = 'System_ConsoleColor'
source_filename = "System_ConsoleColor"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: nounwind uwtable
declare i8 @"?get__ConsoleTextAttribute__im@ConsoleColor@System@bf@@SAEC@Z"(i8) #0

; Function Attrs: nounwind uwtable
define void @"?set__ConsoleTextAttribute@ConsoleColor@System@bf@@SAXCE@Z"(ptr %this, i8 %value) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 1
  %0 = load ptr, ptr %this.addr, align 1
  store i8 %value, ptr %0, align 1
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare i8 @"?get__AnsiCode__im@ConsoleColor@System@bf@@SAEC@Z"(i8) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@ConsoleColor@System@bf@@SAXC@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?HasFlag__im@ConsoleColor@System@bf@@SA_NCW4123@@Z"(i8, i8) #0

; Function Attrs: nounwind uwtable
declare i8 @"?get__Underlying__im@ConsoleColor@System@bf@@SACC@Z"(i8) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__UnderlyingRef@ConsoleColor@System@bf@@SAAEACC@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface__im@ConsoleColor@System@bf@@KAPEAVObject@23@CH@Z"(i8, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@ConsoleColor@System@bf@@SAXCPEAVString@23@@Z"(i8, ptr) #0

attributes #0 = { nounwind uwtable }
