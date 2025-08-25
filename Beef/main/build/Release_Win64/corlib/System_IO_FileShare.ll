; ModuleID = 'System_IO_FileShare'
source_filename = "System_IO_FileShare"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@FileShare@IO@System@bf@@SAXH@Z"(ptr) #0

; Function Attrs: nounwind uwtable
define i1 @"?HasFlag__im@FileShare@IO@System@bf@@SA_NHW41234@@Z"(i32 %this, i32 %checkEnum) #0 {
entry:
  %0 = and i32 %this, %checkEnum
  %1 = icmp eq i32 %0, %checkEnum
  ret i1 %1
}

; Function Attrs: nounwind uwtable
declare i32 @"?get__Underlying__im@FileShare@IO@System@bf@@SAHH@Z"(i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__UnderlyingRef@FileShare@IO@System@bf@@SAAEAHH@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface__im@FileShare@IO@System@bf@@KAPEAVObject@34@HH@Z"(i32, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@FileShare@IO@System@bf@@SAXHPEAVString@34@@Z"(i32, ptr) #0

attributes #0 = { nounwind uwtable }
