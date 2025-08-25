; ModuleID = 'System_Reflection_TypeInstance'
source_filename = "System_Reflection_TypeInstance"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@TypeInstance@Reflection@System@bf@@QEAAXXZ"(ptr %this) local_unnamed_addr #0 {
entry:
  tail call void @"?__BfCtor@Type@System@bf@@IEAAXXZ"(ptr %this)
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@Type@System@bf@@IEAAXXZ"(ptr) local_unnamed_addr #0

attributes #0 = { nounwind uwtable }
