; ModuleID = 'System_Span_int32'
source_filename = "System_Span_int32"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Span@H@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.Enumerator@?$Span@H@System@bf" = type opaque
%"corlib.Array@System@bf" = type <{ %"corlib.Object@System@bf", i32 }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.?$Array1@H@System@bf" = type <{ %"corlib.Array@System@bf", i32 }>

; Function Attrs: nounwind uwtable
define void @"??B?$Span@H@System@bf@@SA?AU012@PEAV?$Array1@H@12@@Z"(ptr noalias sret(%"corlib.?$Span@H@System@bf") %0, ptr %array) #0 {
entry:
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.?$Span@H@System@bf", align 8
  store ptr %0, ptr %__return.addr, align 8
  call void @"?__BfCtor@?$Span@H@System@bf@@QEAAXPEAV?$Array1@H@23@@Z"(ptr %1, ptr %array)
  %2 = load %"corlib.?$Span@H@System@bf", ptr %1, align 8
  %3 = load ptr, ptr %__return.addr, align 8
  store %"corlib.?$Span@H@System@bf" %2, ptr %3, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?GetEnumerator__im@?$Span@H@System@bf@@QEAA?AUEnumerator@123@XZ"(ptr noalias sret(%"corlib.Enumerator@?$Span@H@System@bf"), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@?$Span@H@System@bf@@QEAAXPEAVString@23@@Z"(ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface__im@?$Span@H@System@bf@@IEAAPEAVObject@23@H@Z"(ptr, i64, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers__im@?$Span@H@System@bf@@IEAAXXZ"(ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
define i64 @"?get__Length__im@?$Span@H@System@bf@@QEAATint@@XZ"(ptr %this_mPtr, i64 %this_mLength) #1 {
entry:
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  %__return = alloca i64, align 8
  store ptr %this_mPtr, ptr %0, align 8
  store i64 %this_mLength, ptr %1, align 8
  store i64 %this_mLength, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %2 = load i64, ptr %__return, align 8
  ret i64 %2
}

; Function Attrs: alwaysinline nounwind uwtable
define ptr @"?get____im@UCHK$?$Span@H@System@bf@@QEAAAEAHTint@@@Z"(ptr %this_mPtr, i64 %this_mLength, i64 %index) #1 {
entry:
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  %__return = alloca ptr, align 8
  store ptr %this_mPtr, ptr %0, align 8
  store i64 %this_mLength, ptr %1, align 8
  %2 = getelementptr inbounds i32, ptr %this_mPtr, i64 %index
  store ptr %2, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %3 = load ptr, ptr %__return, align 8
  ret ptr %3
}

; Function Attrs: alwaysinline nounwind uwtable
declare void @"?get____im@?$Span@H@System@bf@@QEAA?AU123@UIndexRange@23@@Z"(ptr noalias sret(%"corlib.?$Span@H@System@bf"), ptr, i64, ptr) #1

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"?get____im@UCHK$?$Span@H@System@bf@@QEAAAEAHUIndex@23@@Z"(ptr, i64, ptr) #1

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@?$Span@H@System@bf@@QEAAXPEAHTint@@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@?$Span@H@System@bf@@QEAAXPEAV?$Array1@H@23@Tint@@1@Z"(ptr, ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@?$Span@H@System@bf@@QEAAXPEAV?$Array1@H@23@Tint@@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@?$Span@H@System@bf@@QEAAXPEAV?$Array1@H@23@@Z"(ptr %this, ptr %array) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %1 = icmp eq ptr %array, null
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 16, i1 false)
  br label %exit

if.end:                                           ; preds = %newScope
  %2 = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %0, i32 0, i32 1
  %GetRef = call ptr @"?GetRef@?$Array1@H@System@bf@@AEAAAEAHTint@@@Z"(ptr %array, i64 0)
  store ptr %GetRef, ptr %2, align 8
  %3 = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %0, i32 0, i32 2
  %4 = getelementptr inbounds %"corlib.Array@System@bf", ptr %array, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = sext i32 %5 to i64
  store i64 %6, ptr %3, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@?$Span@H@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @"?GetRef@?$Array1@H@System@bf@@AEAAAEAHTint@@@Z"(ptr %this, i64 %idx) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.?$Array1@H@System@bf", ptr %0, i32 0, i32 1
  %2 = getelementptr inbounds i32, ptr %1, i64 %idx
  store ptr %2, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %3 = load ptr, ptr %__return, align 8
  ret ptr %3
}

; Function Attrs: nounwind uwtable
declare void @"?Assert@Debug@Diagnostics@System@bf@@SAX_NPEAVString@34@1Tint@@@Z"(i1 zeroext, ptr, ptr, i64) #0

attributes #0 = { nounwind uwtable }
attributes #1 = { alwaysinline nounwind uwtable }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
