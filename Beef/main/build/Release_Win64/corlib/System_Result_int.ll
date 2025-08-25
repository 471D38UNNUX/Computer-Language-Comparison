; ModuleID = 'System_Result_int'
source_filename = "System_Result_int"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.?$Result@Tint@@@System@bf" = type <{ %"corlib.Enum@System@bf", %"corlib.?$__TUPLE_val@Tint@@@bf", i8 }>
%"corlib.Enum@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$__TUPLE_val@Tint@@@bf" = type <{ %"corlib.Tuple@System@bf", i64 }>
%"corlib.Tuple@System@bf" = type <{ %"corlib.ValueType@System@bf" }>

@"?sBfClassVData@String@System@bf@@2UClassVData@23@A" = external constant [8 x ptr]
@__bfStrObj97 = external constant %"corlib.String@System@bf"

; Function Attrs: alwaysinline nounwind uwtable
define i64 @"?Unwrap__im@?$Result@Tint@@@System@bf@@AEAATint@@XZ"(ptr nocapture dereferenceable(9) %this) #0 {
entry:
  %__return = alloca i64, align 8
  %0 = alloca i64, align 8
  %1 = getelementptr inbounds %"corlib.?$Result@Tint@@@System@bf", ptr %this, i32 0, i32 2
  %2 = load i8, ptr %1, align 1
  switch i8 %2, label %switch.notEq.0 [
    i8 0, label %caseMatch
    i8 1, label %switch.1
  ]

noSwitch:                                         ; No predecessors!
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %caseMatch, label %switch.notEq.0

caseMatch:                                        ; preds = %entry, %noSwitch
  %4 = getelementptr inbounds %"corlib.?$Result@Tint@@@System@bf", ptr %this, i32 0, i32 1
  %5 = getelementptr inbounds %"corlib.?$__TUPLE_val@Tint@@@bf", ptr %4, i32 0, i32 1
  %6 = load i64, ptr %5, align 8
  store i64 %6, ptr %0, align 8
  br label %switch.0

switch.notEq.0:                                   ; preds = %entry, %noSwitch
  br label %default

switch.0:                                         ; preds = %caseMatch
  %7 = load i64, ptr %0, align 8
  store i64 %7, ptr %__return, align 8
  br label %exit

switch.1:                                         ; preds = %entry
  call void @"?FatalError@Internal@System@bf@@SAXPEAVString@23@_J@Z"(ptr @__bfStrObj97, i64 2) #3
  unreachable

default:                                          ; preds = %switch.notEq.0
  unreachable

switch.end:                                       ; No predecessors!
  unreachable

exit:                                             ; preds = %switch.0
  %8 = load i64, ptr %__return, align 8
  ret i64 %8
}

; Function Attrs: alwaysinline nounwind uwtable
define void @"??B?$Result@Tint@@@System@bf@@SA?AU012@Tint@@@Z"(ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf") %0, i64 %value) #0 {
entry:
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.?$Result@Tint@@@System@bf", align 8
  store ptr %0, ptr %__return.addr, align 8
  %2 = getelementptr inbounds %"corlib.?$Result@Tint@@@System@bf", ptr %1, i32 0, i32 1
  %3 = getelementptr inbounds %"corlib.?$__TUPLE_val@Tint@@@bf", ptr %2, i32 0, i32 1
  store i64 %value, ptr %3, align 8
  %4 = getelementptr inbounds %"corlib.?$Result@Tint@@@System@bf", ptr %1, i32 0, i32 2
  store i8 0, ptr %4, align 4
  %5 = load %"corlib.?$Result@Tint@@@System@bf", ptr %1, align 8
  %6 = load ptr, ptr %__return.addr, align 8
  store %"corlib.?$Result@Tint@@@System@bf" %5, ptr %6, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
declare i64 @"??B?$Result@Tint@@@System@bf@@SATint@@U012@@Z"(ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"??$Result@Tint@@@System@bf@@SAAEAmut$Tint@@AEAU012@@Z"(ptr dereferenceable(9)) #0

; Function Attrs: alwaysinline nounwind uwtable
declare void @"?IgnoreError__im@?$Result@Tint@@@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(9)) #0

; Function Attrs: nounwind uwtable
declare void @"?Dispose__im@?$Result@Tint@@@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(9)) #1

; Function Attrs: nounwind uwtable
declare void @"??$NoDispose@U_M0@@@?$Result@Tint@@@System@bf@@CAXXZ"() #1

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface__im@?$Result@Tint@@@System@bf@@IEAAPEAVObject@23@H@Z"(ptr nocapture dereferenceable(9), i32) #1

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers__im@?$Result@Tint@@@System@bf@@IEAAXXZ"(ptr) #1

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@?$Result@Tint@@@System@bf@@QEAAXPEAVString@23@@Z"(ptr nocapture dereferenceable(9), ptr) #1

; Function Attrs: nounwind uwtable
define i64 @"?Get__im@?$Result@Tint@@@System@bf@@QEAATint@@XZ"(ptr nocapture dereferenceable(9) %this) #1 {
entry:
  %__return = alloca i64, align 8
  %Unwrap = call i64 @"?Unwrap__im@?$Result@Tint@@@System@bf@@AEAATint@@XZ"(ptr nocapture dereferenceable(9) %this)
  store i64 %Unwrap, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %0 = load i64, ptr %__return, align 8
  ret i64 %0
}

; Function Attrs: noreturn nounwind uwtable
declare void @"?FatalError@Internal@System@bf@@SAXPEAVString@23@_J@Z"(ptr, i64) #2

attributes #0 = { alwaysinline nounwind uwtable }
attributes #1 = { nounwind uwtable }
attributes #2 = { noreturn nounwind uwtable }
attributes #3 = { noreturn }
