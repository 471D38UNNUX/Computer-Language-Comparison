; ModuleID = 'System_IO_BufferedStream'
source_filename = "System_IO_BufferedStream"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.BufferedStream@IO@System@bf" = type <{ %"corlib.Stream@IO@System@bf", i64, i64, ptr, i64, i64, i64, i64 }>
%"corlib.Stream@IO@System@bf" = type <{ %"corlib.Object@System@bf", ptr, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.Array@System@bf" = type <{ %"corlib.Object@System@bf", i32 }>
%"corlib.?$Array1@E@System@bf" = type <{ %"corlib.Array@System@bf", i8 }>
%"corlib.?$Result@X@System@bf" = type <{ %"corlib.Enum@System@bf", [0 x i8], i8 }>
%"corlib.Enum@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$Span@E@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.?$Result@Tint@@@System@bf" = type <{ %"corlib.Enum@System@bf", %"corlib.?$__TUPLE_val@Tint@@@bf", i8 }>
%"corlib.?$__TUPLE_val@Tint@@@bf" = type <{ %"corlib.Tuple@System@bf", i64 }>
%"corlib.Tuple@System@bf" = type <{ %"corlib.ValueType@System@bf" }>

@"?sBfClassVData@?$Array1@E@System@bf@@2UClassVData@23@A" = external constant [4 x ptr]

; Function Attrs: nounwind uwtable
define void @"?MakeBuffer@BufferedStream@IO@System@bf@@QEAAXTint@@@Z"(ptr nocapture %this, i64 %size) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %this, i64 0, i32 3
  %1 = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %delete.end, label %delete.body

delete.body:                                      ; preds = %entry
  %2 = load ptr, ptr %1, align 8
  %3 = getelementptr inbounds ptr, ptr %2, i64 3
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr nonnull %1) #2
  tail call void @tc_free(ptr nonnull %1) #2
  br label %delete.end

delete.end:                                       ; preds = %delete.body, %entry
  %5 = add i64 %size, 12
  %6 = tail call ptr @tc_malloc(i64 %5) #2
  store ptr @"?sBfClassVData@?$Array1@E@System@bf@@2UClassVData@23@A", ptr %6, align 8
  tail call void @"?__BfCtor@?$Array1@E@System@bf@@QEAAXXZ"(ptr nonnull %6)
  %7 = getelementptr inbounds %"corlib.Array@System@bf", ptr %6, i64 0, i32 1
  %8 = trunc i64 %size to i32
  store i32 %8, ptr %7, align 4
  %9 = getelementptr inbounds %"corlib.?$Array1@E@System@bf", ptr %6, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %9, i8 0, i64 %size, i1 false)
  store ptr %6, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@BufferedStream@IO@System@bf@@QEAAXXZ"(ptr %this) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %this, i64 0, i32 4
  store i64 -2147483648, ptr %0, align 8
  %1 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %this, i64 0, i32 5
  store i64 -2147483648, ptr %1, align 8
  %2 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %this, i64 0, i32 6
  store i64 -2147483648, ptr %2, align 8
  %3 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %this, i64 0, i32 7
  store i64 -2147483648, ptr %3, align 8
  tail call void @"?__BfCtor@Stream@IO@System@bf@@QEAAXXZ"(ptr %this)
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @"?get__Length@BufferedStream@IO@System@bf@@QEAA_JXZ"(ptr %this) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %this, align 8
  %1 = getelementptr inbounds ptr, ptr %0, i64 21
  %2 = load ptr, ptr %1, align 8
  tail call void %2(ptr nonnull %this) #2
  %3 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %this, i64 0, i32 2
  %4 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %this, i64 0, i32 7
  %5 = load i64, ptr %3, align 8
  %6 = load i64, ptr %4, align 8
  %Max = tail call i64 @"??$Max@_J@Math@System@bf@@SA_J_J0@Z"(i64 %5, i64 %6)
  ret i64 %Max
}

; Function Attrs: nounwind uwtable
define void @"?~this@BufferedStream@IO@System@bf@@QEAAXXZ"(ptr %this) local_unnamed_addr #0 {
entry:
  %0 = alloca %"corlib.?$Result@X@System@bf", align 1
  %1 = load ptr, ptr %this, align 8
  %2 = getelementptr inbounds ptr, ptr %1, i64 16
  %3 = load ptr, ptr %2, align 8
  call void %3(ptr nonnull %this, ptr nonnull sret(%"corlib.?$Result@X@System@bf") %0) #2
  call void @"?ReturnValueDiscarded__im@?$Result@X@System@bf@@QEAAXXZ"(ptr nocapture nonnull dereferenceable(1) %0)
  %4 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %this, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8
  %.not = icmp eq ptr %5, null
  br i1 %.not, label %delete.end, label %delete.body

delete.body:                                      ; preds = %entry
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  call void %8(ptr nonnull %5) #2
  call void @tc_free(ptr nonnull %5) #2
  br label %delete.end

delete.end:                                       ; preds = %delete.body, %entry
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr nonnull %this)
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Flush@BufferedStream@IO@System@bf@@QEAA?AU?$Result@X@34@XZ"(ptr %this, ptr noalias nocapture writeonly sret(%"corlib.?$Result@X@System@bf") %0) local_unnamed_addr #0 {
entry:
  %1 = alloca %"corlib.?$Span@E@System@bf", align 8
  %2 = alloca %"corlib.?$Result@Tint@@@System@bf", align 8
  %3 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %this, i64 0, i32 6
  %4 = load i64, ptr %3, align 8
  %5 = icmp sgt i64 %4, -1
  br i1 %5, label %if.then, label %exit

if.then:                                          ; preds = %entry
  %6 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %this, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %"corlib.?$Array1@E@System@bf", ptr %7, i64 0, i32 1
  %9 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %this, i64 0, i32 4
  %10 = load i64, ptr %9, align 8
  %11 = sub i64 %4, %10
  %12 = getelementptr inbounds i8, ptr %8, i64 %11
  %13 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %this, i64 0, i32 7
  %14 = load i64, ptr %13, align 8
  %15 = sub i64 %14, %4
  call void @"?__BfCtor@?$Span@E@System@bf@@QEAAXPEAETint@@@Z"(ptr nonnull %1, ptr nonnull %12, i64 %15)
  %16 = load ptr, ptr %this, align 8
  %17 = getelementptr inbounds ptr, ptr %16, i64 23
  %18 = load ptr, ptr %17, align 8
  call void %18(ptr nonnull %this, ptr nonnull sret(%"corlib.?$Result@Tint@@@System@bf") %2, i64 %4, ptr nonnull %1) #2
  %19 = getelementptr inbounds %"corlib.?$Result@Tint@@@System@bf", ptr %2, i64 0, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 1
  br i1 %21, label %exit, label %if.end

if.end:                                           ; preds = %if.then
  %Get = call i64 @"?Get__im@?$Result@Tint@@@System@bf@@QEAATint@@XZ"(ptr nocapture nonnull dereferenceable(9) %2)
  store i64 -2147483648, ptr %3, align 8
  store i64 -2147483648, ptr %13, align 8
  br label %exit

exit:                                             ; preds = %entry, %if.end, %if.then
  %.sink = phi i8 [ 1, %if.then ], [ 0, %if.end ], [ 0, %entry ]
  %.repack5 = getelementptr inbounds %"corlib.?$Result@X@System@bf", ptr %0, i64 0, i32 2
  store i8 %.sink, ptr %.repack5, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Close@BufferedStream@IO@System@bf@@QEAA?AU?$Result@X@34@XZ"(ptr %this, ptr noalias nocapture writeonly sret(%"corlib.?$Result@X@System@bf") %0) local_unnamed_addr #0 {
entry:
  %1 = alloca %"corlib.?$Result@X@System@bf", align 1
  %2 = load ptr, ptr %this, align 8
  %3 = getelementptr inbounds ptr, ptr %2, i64 16
  %4 = load ptr, ptr %3, align 8
  call void %4(ptr nonnull %this, ptr nonnull sret(%"corlib.?$Result@X@System@bf") %1) #2
  %.fca.2.gep = getelementptr inbounds %"corlib.?$Result@X@System@bf", ptr %1, i64 0, i32 2
  %5 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %this, i64 0, i32 1
  store i64 0, ptr %5, align 8
  %6 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %this, i64 0, i32 4
  store i64 -2147483648, ptr %6, align 8
  %7 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %this, i64 0, i32 5
  store i64 -2147483648, ptr %7, align 8
  %.fca.2.load5 = load i8, ptr %.fca.2.gep, align 1
  %.repack9 = getelementptr inbounds %"corlib.?$Result@X@System@bf", ptr %0, i64 0, i32 2
  store i8 %.fca.2.load5, ptr %.repack9, align 1
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@Stream@IO@System@bf@@QEAAXXZ"(ptr) local_unnamed_addr #0

declare void @tc_free(ptr) local_unnamed_addr

declare ptr @tc_malloc(i64) local_unnamed_addr

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@?$Array1@E@System@bf@@QEAAXXZ"(ptr) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare i64 @"??$Max@_J@Math@System@bf@@SA_J_J0@Z"(i64, i64) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?ReturnValueDiscarded__im@?$Result@X@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(1)) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?~this@Object@System@bf@@UEAAXXZ"(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@?$Span@E@System@bf@@QEAAXPEAETint@@@Z"(ptr, ptr, i64) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare i64 @"?Get__im@?$Result@Tint@@@System@bf@@QEAATint@@XZ"(ptr nocapture dereferenceable(9)) local_unnamed_addr #0

attributes #0 = { nounwind uwtable }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind }
