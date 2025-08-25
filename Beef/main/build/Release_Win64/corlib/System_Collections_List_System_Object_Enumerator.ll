; ModuleID = 'System_Collections_List_System_Object_Enumerator'
source_filename = "System_Collections_List_System_Object_Enumerator"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Result@PEAVObject@System@bf@@@System@bf" = type <{ %"corlib.Enum@System@bf", %"corlib.?$__TUPLE_val@PEAVObject@System@bf@@@bf", i8 }>
%"corlib.Enum@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$__TUPLE_val@PEAVObject@System@bf@@@bf" = type <{ %"corlib.Tuple@System@bf", ptr }>
%"corlib.Tuple@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64, ptr }>
%"corlib.?$Result@PEAPEAVObject@System@bf@@@System@bf" = type opaque
%"corlib.?$List@PEAVObject@System@bf@@@Collections@System@bf" = type <{ %"corlib.Object@System@bf", ptr, i32, i32 }>
%"corlib.Object@System@bf" = type <{ ptr }>

; Function Attrs: nounwind uwtable
declare void @"?Reset@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?GetNext@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAA?AU?$Result@PEAVObject@System@bf@@@45@XZ"(ptr %this, ptr noalias sret(%"corlib.?$Result@PEAVObject@System@bf@@@System@bf") %0) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.?$Result@PEAVObject@System@bf@@@System@bf", align 8
  store ptr %this, ptr %this.addr, align 8
  %2 = load ptr, ptr %this.addr, align 8
  store ptr %0, ptr %__return.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %MoveNext = call i1 @"?MoveNext@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAA_NXZ"(ptr %2)
  %3 = xor i1 %MoveNext, true
  br i1 %3, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  %4 = load ptr, ptr %__return.addr, align 8
  store %"corlib.?$Result@PEAVObject@System@bf@@@System@bf" <{ %"corlib.Enum@System@bf" zeroinitializer, %"corlib.?$__TUPLE_val@PEAVObject@System@bf@@@bf" zeroinitializer, i8 1 }>, ptr %4, align 8
  br label %exit

if.end:                                           ; preds = %newScope
  %5 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %2, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %2, i32 0, i32 2
  %8 = load i64, ptr %7, align 8
  %9 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %2, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %get__Current = call ptr @"?get__Current__im@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAPEAVObject@45@XZ"(ptr %6, i64 %8, ptr %10)
  call void @"??B?$Result@PEAVObject@System@bf@@@System@bf@@SA?AU012@PEAVObject@12@@Z"(ptr sret(%"corlib.?$Result@PEAVObject@System@bf@@@System@bf") %1, ptr %get__Current)
  %11 = load %"corlib.?$Result@PEAVObject@System@bf@@@System@bf", ptr %1, align 8
  %12 = load ptr, ptr %__return.addr, align 8
  store %"corlib.?$Result@PEAVObject@System@bf@@@System@bf" %11, ptr %12, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?GetNextRef@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAA?AU?$Result@PEAPEAVObject@System@bf@@@45@XZ"(ptr, ptr noalias sret(%"corlib.?$Result@PEAPEAVObject@System@bf@@@System@bf")) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface__im@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@IEAAPEAVObject@45@H@Z"(ptr, i64, ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers__im@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@IEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?Dispose__im@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXXZ"(ptr %this_mList, i64 %this_mIndex, ptr %this_mCurrent) #0 {
entry:
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  store ptr %this_mList, ptr %0, align 8
  store i64 %this_mIndex, ptr %1, align 8
  store ptr %this_mCurrent, ptr %2, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXPEAV2345@@Z"(ptr %this, ptr %list) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %0, i32 0, i32 1
  store ptr %list, ptr %1, align 8
  %2 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %0, i32 0, i32 2
  store i64 0, ptr %2, align 8
  %3 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %0, i32 0, i32 3
  store ptr null, ptr %3, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i1 @"?MoveNext@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAA_NXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca i1, align 1
  %localList = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %0, i32 0, i32 1
  %2 = load ptr, ptr %1, align 8
  store ptr %2, ptr %localList, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %3 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %0, i32 0, i32 2
  %4 = load i64, ptr %3, align 8
  %5 = load ptr, ptr %localList, align 8
  %6 = getelementptr inbounds %"corlib.?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = zext i32 %7 to i64
  %9 = icmp ult i64 %4, %8
  br i1 %9, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  %10 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %localList, align 8
  %12 = getelementptr inbounds %"corlib.?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %11, i32 0, i32 1
  %13 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %0, i32 0, i32 2
  %14 = load i64, ptr %13, align 8
  %15 = load ptr, ptr %12, align 8
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  store ptr %16, ptr %10, align 8
  %17 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %0, i32 0, i32 2
  %18 = load i64, ptr %17, align 8
  %19 = add i64 %18, 1
  store i64 %19, ptr %17, align 8
  store i1 true, ptr %__return, align 1
  br label %exit

if.end:                                           ; preds = %newScope
  %MoveNextRare = call i1 @"?MoveNextRare@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@AEAA_NXZ"(ptr %0)
  store i1 %MoveNextRare, ptr %__return, align 1
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %20 = load i1, ptr %__return, align 1
  ret i1 %20
}

; Function Attrs: nounwind uwtable
define ptr @"?get__Current__im@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAPEAVObject@45@XZ"(ptr %this_mList, i64 %this_mIndex, ptr %this_mCurrent) #0 {
entry:
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  %__return = alloca ptr, align 8
  store ptr %this_mList, ptr %0, align 8
  store i64 %this_mIndex, ptr %1, align 8
  store ptr %this_mCurrent, ptr %2, align 8
  %3 = load ptr, ptr %this_mCurrent, align 8
  store ptr %3, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %4 = load ptr, ptr %__return, align 8
  ret ptr %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @"??B?$Result@PEAVObject@System@bf@@@System@bf@@SA?AU012@PEAVObject@12@@Z"(ptr noalias sret(%"corlib.?$Result@PEAVObject@System@bf@@@System@bf") %0, ptr %value) #1 {
entry:
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.?$Result@PEAVObject@System@bf@@@System@bf", align 8
  store ptr %0, ptr %__return.addr, align 8
  %2 = getelementptr inbounds %"corlib.?$Result@PEAVObject@System@bf@@@System@bf", ptr %1, i32 0, i32 1
  %3 = getelementptr inbounds %"corlib.?$__TUPLE_val@PEAVObject@System@bf@@@bf", ptr %2, i32 0, i32 1
  store ptr %value, ptr %3, align 8
  %4 = getelementptr inbounds %"corlib.?$Result@PEAVObject@System@bf@@@System@bf", ptr %1, i32 0, i32 2
  store i8 0, ptr %4, align 4
  %5 = load %"corlib.?$Result@PEAVObject@System@bf@@@System@bf", ptr %1, align 8
  %6 = load ptr, ptr %__return.addr, align 8
  store %"corlib.?$Result@PEAVObject@System@bf@@@System@bf" %5, ptr %6, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i1 @"?MoveNextRare@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@AEAA_NXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca i1, align 1
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %0, i32 0, i32 2
  %2 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"corlib.?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = sext i32 %5 to i64
  %7 = add i64 %6, 1
  store i64 %7, ptr %1, align 8
  %8 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %0, i32 0, i32 3
  store ptr null, ptr %8, align 8
  store i1 false, ptr %__return, align 1
  br label %exit

exit:                                             ; preds = %entry
  %9 = load i1, ptr %__return, align 1
  ret i1 %9
}

attributes #0 = { nounwind uwtable }
attributes #1 = { alwaysinline nounwind uwtable }
