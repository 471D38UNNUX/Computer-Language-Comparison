; ModuleID = 'System_IO_FileAccess'
source_filename = "System_IO_FileAccess"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@FileAccess@IO@System@bf@@SAXC@Z"(ptr) #0

; Function Attrs: nounwind uwtable
define i1 @"?HasFlag__im@FileAccess@IO@System@bf@@SA_NCW41234@@Z"(i8 %this, i8 %checkEnum) #0 {
entry:
  %0 = and i8 %this, %checkEnum
  %1 = icmp eq i8 %0, %checkEnum
  ret i1 %1
}

; Function Attrs: nounwind uwtable
declare i8 @"?get__Underlying__im@FileAccess@IO@System@bf@@SACC@Z"(i8) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__UnderlyingRef@FileAccess@IO@System@bf@@SAAEACC@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface__im@FileAccess@IO@System@bf@@KAPEAVObject@34@CH@Z"(i8, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@FileAccess@IO@System@bf@@SAXCPEAVString@34@@Z"(i8, ptr) #0

attributes #0 = { nounwind uwtable }
