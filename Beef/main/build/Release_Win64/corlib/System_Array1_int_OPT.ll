; ModuleID = 'System_Array1_int'
source_filename = "System_Array1_int"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@?$Array1@Tint@@@System@bf@@QEAAXXZ"(ptr %this) local_unnamed_addr #0 {
entry:
  tail call void @"?__BfCtor@Array@System@bf@@QEAAXXZ"(ptr %this)
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@Array@System@bf@@QEAAXXZ"(ptr) local_unnamed_addr #0

attributes #0 = { nounwind uwtable }
