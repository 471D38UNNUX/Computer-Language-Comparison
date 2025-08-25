; ModuleID = 'System_IO_FileStream'
source_filename = "System_IO_FileStream"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Result@X@System@bf" = type opaque
%"corlib.?$Result@Tint@@@System@bf" = type opaque

; Function Attrs: nounwind uwtable
define void @"?__BfCtorClear@FileStream@IO@System@bf@@AEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 89, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@FileStream@IO@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  call void @"?__BfCtor@BufferedFileStream@IO@System@bf@@QEAAXXZ"(ptr %0)
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@FileStream@IO@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@FileStream@IO@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@BufferedFileStream@IO@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare void @"?~this@BufferedFileStream@IO@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?get__Length@BufferedStream@IO@System@bf@@QEAA_JXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Flush@BufferedFileStream@IO@System@bf@@QEAA?AU?$Result@X@34@XZ"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?UpdateLength@BufferedFileStream@IO@System@bf@@IEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?TryWriteUnderlying@BufferedFileStream@IO@System@bf@@IEAA?AU?$Result@Tint@@@34@_JU?$Span@E@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64, ptr) #0

attributes #0 = { nounwind uwtable }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
