; ModuleID = 'System_IO_BufferedStream'
source_filename = "System_IO_BufferedStream"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Result@Tint@@@System@bf" = type <{ %"corlib.Enum@System@bf", %"corlib.?$__TUPLE_val@Tint@@@bf", i8 }>
%"corlib.Enum@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$__TUPLE_val@Tint@@@bf" = type <{ %"corlib.Tuple@System@bf", i64 }>
%"corlib.Tuple@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.BufferedStream@IO@System@bf" = type <{ %"corlib.Stream@IO@System@bf", i64, i64, ptr, i64, i64, i64, i64 }>
%"corlib.Stream@IO@System@bf" = type <{ %"corlib.Object@System@bf", ptr, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.Array@System@bf" = type <{ %"corlib.Object@System@bf", i32 }>
%"corlib.?$Array1@E@System@bf" = type <{ %"corlib.Array@System@bf", i8 }>
%"corlib.?$Result@X@System@bf" = type <{ %"corlib.Enum@System@bf", [0 x i8], i8 }>
%"corlib.?$Span@E@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>

@"?sBfClassVData@?$Array1@E@System@bf@@2UClassVData@23@A" = external constant [4 x ptr]

; Function Attrs: nounwind uwtable
declare void @"?UpdateLength@BufferedStream@IO@System@bf@@MEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?TryReadUnderlying@BufferedStream@IO@System@bf@@MEAA?AU?$Result@Tint@@@34@_JU?$Span@E@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?TryWriteUnderlying@BufferedStream@IO@System@bf@@MEAA?AU?$Result@Tint@@@34@_JU?$Span@E@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64, ptr) #0

; Function Attrs: nounwind uwtable
define void @"?MakeBuffer@BufferedStream@IO@System@bf@@QEAAXTint@@@Z"(ptr %this, i64 %size) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %0, i32 0, i32 3
  %2 = load ptr, ptr %1, align 8
  %3 = icmp ne ptr %2, null
  br i1 %3, label %delete.body, label %delete.end

delete.body:                                      ; preds = %entry
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds ptr, ptr %4, i32 3
  %6 = load ptr, ptr %5, align 8
  call void %6(ptr %2)
  call void @tc_free(ptr %2)
  br label %delete.end

delete.end:                                       ; preds = %delete.body, %entry
  %7 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %0, i32 0, i32 3
  %8 = sub i64 %size, 1
  %9 = mul i64 1, %8
  %10 = add i64 13, %9
  %11 = call ptr @tc_malloc(i64 %10)
  %12 = getelementptr inbounds %"corlib.Object@System@bf", ptr %11, i32 0, i32 0
  store ptr @"?sBfClassVData@?$Array1@E@System@bf@@2UClassVData@23@A", ptr %12, align 8
  call void @"?__BfCtor@?$Array1@E@System@bf@@QEAAXXZ"(ptr %11)
  %13 = getelementptr inbounds %"corlib.Array@System@bf", ptr %11, i32 0, i32 1
  %14 = trunc i64 %size to i32
  store i32 %14, ptr %13, align 4
  %15 = getelementptr inbounds %"corlib.?$Array1@E@System@bf", ptr %11, i32 0, i32 1
  %16 = mul i64 %size, 1
  %17 = getelementptr inbounds i8, ptr %15, i32 0
  call void @llvm.memset.p0.i64(ptr align 1 %17, i8 0, i64 %16, i1 false)
  store ptr %11, ptr %7, align 8
  br label %exit

exit:                                             ; preds = %delete.end
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@BufferedStream@IO@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@BufferedStream@IO@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %1 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %0, i32 0, i32 4
  store i64 -2147483648, ptr %1, align 8
  %2 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %0, i32 0, i32 5
  store i64 -2147483648, ptr %2, align 8
  %3 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %0, i32 0, i32 6
  store i64 -2147483648, ptr %3, align 8
  %4 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %0, i32 0, i32 7
  store i64 -2147483648, ptr %4, align 8
  call void @"?__BfCtor@Stream@IO@System@bf@@QEAAXXZ"(ptr %0)
  ret void
}

; Function Attrs: nounwind uwtable
declare i64 @"?get__Position@BufferedStream@IO@System@bf@@QEAA_JXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?set__Position@BufferedStream@IO@System@bf@@QEAAX_J@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
define i64 @"?get__Length@BufferedStream@IO@System@bf@@QEAA_JXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr inbounds ptr, ptr %1, i32 21
  %3 = load ptr, ptr %2, align 8
  call void %3(ptr %0)
  %4 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %0, i32 0, i32 7
  %6 = load i64, ptr %4, align 8
  %7 = load i64, ptr %5, align 8
  %Max = call i64 @"??$Max@_J@Math@System@bf@@SA_J_J0@Z"(i64 %6, i64 %7)
  store i64 %Max, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %8 = load i64, ptr %__return, align 8
  ret i64 %8
}

; Function Attrs: nounwind uwtable
define void @"?~this@BufferedStream@IO@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %0 = alloca %"corlib.?$Result@X@System@bf", align 1
  store ptr %this, ptr %this.addr, align 8
  %1 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %2 = load ptr, ptr %1, align 8
  %3 = getelementptr inbounds ptr, ptr %2, i32 16
  %4 = load ptr, ptr %3, align 8
  call void %4(ptr %1, ptr sret(%"corlib.?$Result@X@System@bf") %0)
  call void @"?ReturnValueDiscarded__im@?$Result@X@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(1) %0)
  br label %newScope1

newScope1:                                        ; preds = %newScope
  %5 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %1, i32 0, i32 3
  br label %newScope2

newScope2:                                        ; preds = %newScope1
  %6 = load ptr, ptr %5, align 8
  %7 = icmp ne ptr %6, null
  br i1 %7, label %delete.body, label %delete.end

delete.body:                                      ; preds = %newScope2
  %8 = load ptr, ptr %6, align 8
  %9 = getelementptr inbounds ptr, ptr %8, i32 3
  %10 = load ptr, ptr %9, align 8
  call void %10(ptr %6)
  call void @tc_free(ptr %6)
  br label %delete.end

delete.end:                                       ; preds = %delete.body, %newScope2
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr %1)
  br label %exit

exit:                                             ; preds = %delete.end
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?Seek@BufferedStream@IO@System@bf@@QEAA?AU?$Result@X@34@_JW4SeekKind@Stream@234@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf"), i64, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?TryRead@BufferedStream@IO@System@bf@@QEAA?AU?$Result@Tint@@@34@U?$Span@E@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?TryWrite@BufferedStream@IO@System@bf@@QEAA?AU?$Result@Tint@@@34@U?$Span@E@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), ptr, i64) #0

; Function Attrs: nounwind uwtable
define void @"?Flush@BufferedStream@IO@System@bf@@QEAA?AU?$Result@X@34@XZ"(ptr %this, ptr noalias sret(%"corlib.?$Result@X@System@bf") %0) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.?$Span@E@System@bf", align 8
  %2 = alloca %"corlib.?$Result@Tint@@@System@bf", align 8
  %3 = alloca %"corlib.?$Result@X@System@bf", align 1
  store ptr %this, ptr %this.addr, align 8
  %4 = load ptr, ptr %this.addr, align 8
  store ptr %0, ptr %__return.addr, align 1
  br label %newScope

newScope:                                         ; preds = %entry
  %5 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %4, i32 0, i32 6
  %6 = load i64, ptr %5, align 8
  %7 = icmp sge i64 %6, 0
  br i1 %7, label %if.then, label %if.end2

if.then:                                          ; preds = %newScope
  %8 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %4, i32 0, i32 6
  %9 = load i64, ptr %8, align 8
  %10 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %4, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %get__Ptr = call ptr @"?get__Ptr@?$Array1@E@System@bf@@QEAAPEAEXZ"(ptr %11)
  %12 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %4, i32 0, i32 6
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %4, i32 0, i32 4
  %15 = load i64, ptr %14, align 8
  %16 = sub i64 %13, %15
  %17 = getelementptr inbounds i8, ptr %get__Ptr, i64 %16
  %18 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %4, i32 0, i32 7
  %19 = load i64, ptr %18, align 8
  %20 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %4, i32 0, i32 6
  %21 = load i64, ptr %20, align 8
  %22 = sub i64 %19, %21
  call void @"?__BfCtor@?$Span@E@System@bf@@QEAAXPEAETint@@@Z"(ptr %1, ptr %17, i64 %22)
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds ptr, ptr %23, i32 23
  %25 = load ptr, ptr %24, align 8
  call void %25(ptr %4, ptr sret(%"corlib.?$Result@Tint@@@System@bf") %2, i64 %9, ptr %1)
  br label %mixinStart

mixinStart:                                       ; preds = %if.then
  %26 = getelementptr inbounds %"corlib.?$Result@Tint@@@System@bf", ptr %2, i32 0, i32 2
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 1
  br i1 %28, label %caseMatch, label %caseDone

caseMatch:                                        ; preds = %mixinStart
  br label %caseDone

caseDone:                                         ; preds = %caseMatch, %mixinStart
  %29 = phi i1 [ false, %mixinStart ], [ true, %caseMatch ]
  br i1 %29, label %if.then1, label %if.end

if.then1:                                         ; preds = %caseDone
  %30 = getelementptr inbounds %"corlib.?$Result@X@System@bf", ptr %3, i32 0, i32 2
  store i8 1, ptr %30, align 4
  %31 = load %"corlib.?$Result@X@System@bf", ptr %3, align 1
  %32 = load ptr, ptr %__return.addr, align 1
  store %"corlib.?$Result@X@System@bf" %31, ptr %32, align 1
  br label %exit

if.end:                                           ; preds = %caseDone
  %Get = call i64 @"?Get__im@?$Result@Tint@@@System@bf@@QEAATint@@XZ"(ptr nocapture dereferenceable(9) %2)
  %33 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %4, i32 0, i32 6
  store i64 -2147483648, ptr %33, align 8
  %34 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %4, i32 0, i32 7
  store i64 -2147483648, ptr %34, align 8
  br label %if.end2

if.end2:                                          ; preds = %if.end, %newScope
  %35 = load ptr, ptr %__return.addr, align 1
  store %"corlib.?$Result@X@System@bf" zeroinitializer, ptr %35, align 1
  br label %exit

exit:                                             ; preds = %if.end2, %if.then1
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Close@BufferedStream@IO@System@bf@@QEAA?AU?$Result@X@34@XZ"(ptr %this, ptr noalias sret(%"corlib.?$Result@X@System@bf") %0) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.?$Result@X@System@bf", align 1
  store ptr %this, ptr %this.addr, align 8
  %2 = load ptr, ptr %this.addr, align 8
  store ptr %0, ptr %__return.addr, align 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds ptr, ptr %3, i32 16
  %5 = load ptr, ptr %4, align 8
  call void %5(ptr %2, ptr sret(%"corlib.?$Result@X@System@bf") %1)
  %6 = load %"corlib.?$Result@X@System@bf", ptr %1, align 1
  %7 = load %"corlib.?$Result@X@System@bf", ptr %1, align 1
  store %"corlib.?$Result@X@System@bf" %7, ptr %1, align 1
  %8 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %2, i32 0, i32 1
  store i64 0, ptr %8, align 8
  %9 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %2, i32 0, i32 4
  store i64 -2147483648, ptr %9, align 8
  %10 = getelementptr inbounds %"corlib.BufferedStream@IO@System@bf", ptr %2, i32 0, i32 5
  store i64 -2147483648, ptr %10, align 8
  %11 = load %"corlib.?$Result@X@System@bf", ptr %1, align 1
  %12 = load ptr, ptr %__return.addr, align 1
  store %"corlib.?$Result@X@System@bf" %11, ptr %12, align 1
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@BufferedStream@IO@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@BufferedStream@IO@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers@BufferedStream@IO@System@bf@@IEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Flush@Stream@IO@System@bf@@UEAA?AU?$Result@X@34@XZ"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@Stream@IO@System@bf@@QEAAXXZ"(ptr) #0

declare void @tc_free(ptr)

declare ptr @tc_malloc(i64)

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@?$Array1@E@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare i64 @"??$Max@_J@Math@System@bf@@SA_J_J0@Z"(i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?ReturnValueDiscarded__im@?$Result@X@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(1)) #0

; Function Attrs: nounwind uwtable
declare void @"?~this@Object@System@bf@@UEAAXXZ"(ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @"?get__Ptr@?$Array1@E@System@bf@@QEAAPEAEXZ"(ptr %this) #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.?$Array1@E@System@bf", ptr %0, i32 0, i32 1
  store ptr %1, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %2 = load ptr, ptr %__return, align 8
  ret ptr %2
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@?$Span@E@System@bf@@QEAAXPEAETint@@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?Get__im@?$Result@Tint@@@System@bf@@QEAATint@@XZ"(ptr nocapture dereferenceable(9)) #0

attributes #0 = { nounwind uwtable }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { alwaysinline nounwind uwtable }
