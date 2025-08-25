; ModuleID = 'System_Result_void_System_IO_FileError'
source_filename = "System_Result_void_System_IO_FileError"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf" = type <{ %"corlib.Enum@System@bf", %"corlib.?$__TUPLE_err@UFileError@IO@System@bf@@@bf", i8 }>
%"corlib.Enum@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$__TUPLE_err@UFileError@IO@System@bf@@@bf" = type <{ %"corlib.Tuple@System@bf", %"corlib.FileError@IO@System@bf" }>
%"corlib.Tuple@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.FileError@IO@System@bf" = type <{ %"corlib.Enum@System@bf", i8, i8 }>

@"?sBfClassVData@String@System@bf@@2UClassVData@23@A" = external constant [8 x ptr]
@__bfStrObj97 = external constant %"corlib.String@System@bf"

; Function Attrs: alwaysinline nounwind uwtable
declare void @"??B?$Result@XUFileError@IO@System@bf@@@System@bf@@SA?AU012@X@Z"(ptr noalias sret(%"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf")) #0

; Function Attrs: alwaysinline nounwind uwtable
declare void @"??B?$Result@XUFileError@IO@System@bf@@@System@bf@@SAXU012@@Z"(ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare void @"??$Result@XUFileError@IO@System@bf@@@System@bf@@SAAEAmut$XAEAU012@@Z"(ptr dereferenceable(3)) #0

; Function Attrs: nounwind uwtable
declare void @"?Dispose__im@?$Result@XUFileError@IO@System@bf@@@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(3)) #1

; Function Attrs: nounwind uwtable
declare void @"??$NoDispose@U_M0@@@?$Result@XUFileError@IO@System@bf@@@System@bf@@CAXXZ"() #1

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface__im@?$Result@XUFileError@IO@System@bf@@@System@bf@@IEAAPEAVObject@23@H@Z"(ptr nocapture dereferenceable(3), i32) #1

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers__im@?$Result@XUFileError@IO@System@bf@@@System@bf@@IEAAXXZ"(ptr) #1

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@?$Result@XUFileError@IO@System@bf@@@System@bf@@QEAAXPEAVString@23@@Z"(ptr nocapture dereferenceable(3), ptr) #1

; Function Attrs: nounwind uwtable
define void @"?Get__im@?$Result@XUFileError@IO@System@bf@@@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(3) %this) #1 {
entry:
  call void @"?Unwrap__im@?$Result@XUFileError@IO@System@bf@@@System@bf@@AEAAXXZ"(ptr nocapture dereferenceable(3) %this)
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Unwrap__im@?$Result@XUFileError@IO@System@bf@@@System@bf@@AEAAXXZ"(ptr nocapture dereferenceable(3) %this) #1 {
entry:
  %0 = getelementptr inbounds %"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf", ptr %this, i32 0, i32 2
  %1 = load i8, ptr %0, align 1
  switch i8 %1, label %switch.notEq.0 [
    i8 0, label %caseMatch
    i8 1, label %switch.1
  ]

noSwitch:                                         ; No predecessors!
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %caseMatch, label %switch.notEq.0

caseMatch:                                        ; preds = %entry, %noSwitch
  br label %switch.0

switch.notEq.0:                                   ; preds = %entry, %noSwitch
  br label %default

switch.0:                                         ; preds = %caseMatch
  br label %exit

switch.1:                                         ; preds = %entry
  call void @"?FatalError@Internal@System@bf@@SAXPEAVString@23@_J@Z"(ptr @__bfStrObj97, i64 2) #3
  unreachable

default:                                          ; preds = %switch.notEq.0
  unreachable

switch.end:                                       ; No predecessors!
  unreachable

exit:                                             ; preds = %switch.0
  ret void
}

; Function Attrs: noreturn nounwind uwtable
declare void @"?FatalError@Internal@System@bf@@SAXPEAVString@23@_J@Z"(ptr, i64) #2

attributes #0 = { alwaysinline nounwind uwtable }
attributes #1 = { nounwind uwtable }
attributes #2 = { noreturn nounwind uwtable }
attributes #3 = { noreturn }
