; ModuleID = 'System_Console_CONSOLE_SCREEN_BUFFER_INFO'
source_filename = "System_Console_CONSOLE_SCREEN_BUFFER_INFO"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@CONSOLE_SCREEN_BUFFER_INFO@Console@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 2
  %0 = load ptr, ptr %this.addr, align 2
  call void @llvm.memset.p0.i64(ptr align 2 %0, i8 0, i64 22, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface__im@CONSOLE_SCREEN_BUFFER_INFO@Console@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers__im@CONSOLE_SCREEN_BUFFER_INFO@Console@System@bf@@IEAAXXZ"(ptr) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

attributes #0 = { nounwind uwtable }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
