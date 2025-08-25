; ModuleID = 'System_Result_void'
source_filename = "System_Result_void"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.?$Result@X@System@bf" = type <{ %"corlib.Enum@System@bf", [0 x i8], i8 }>
%"corlib.Enum@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.ValueType@System@bf" = type <{}>

@"?sBfClassVData@String@System@bf@@2UClassVData@23@A" = external constant [8 x ptr]
@__bfStrObj97 = external constant %"corlib.String@System@bf"

; Function Attrs: alwaysinline nounwind uwtable
declare void @"?Unwrap__im@?$Result@X@System@bf@@AEAAXXZ"(ptr nocapture dereferenceable(1)) #0

; Function Attrs: alwaysinline nounwind uwtable
declare void @"??B?$Result@X@System@bf@@SA?AU012@X@Z"(ptr noalias sret(%"corlib.?$Result@X@System@bf")) #0

; Function Attrs: alwaysinline nounwind uwtable
declare void @"??B?$Result@X@System@bf@@SAXU012@@Z"(ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare void @"??$Result@X@System@bf@@SAAEAmut$XAEAU012@@Z"(ptr dereferenceable(1)) #0

; Function Attrs: alwaysinline nounwind uwtable
declare void @"?IgnoreError__im@?$Result@X@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(1)) #0

; Function Attrs: nounwind uwtable
declare void @"?Dispose__im@?$Result@X@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(1)) #1

; Function Attrs: nounwind uwtable
declare void @"??$NoDispose@U_M0@@@?$Result@X@System@bf@@CAXXZ"() #1

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface__im@?$Result@X@System@bf@@IEAAPEAVObject@23@H@Z"(ptr nocapture dereferenceable(1), i32) #1

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers__im@?$Result@X@System@bf@@IEAAXXZ"(ptr) #1

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@?$Result@X@System@bf@@QEAAXPEAVString@23@@Z"(ptr nocapture dereferenceable(1), ptr) #1

; Function Attrs: nounwind uwtable
define void @"?ReturnValueDiscarded__im@?$Result@X@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(1) %this) #1 {
entry:
  %0 = getelementptr inbounds %"corlib.?$Result@X@System@bf", ptr %this, i32 0, i32 2
  %1 = load i8, ptr %0, align 1
  %2 = icmp eq i8 %1, 1
  br i1 %2, label %caseMatch, label %caseDone

caseMatch:                                        ; preds = %entry
  br label %caseDone

caseDone:                                         ; preds = %caseMatch, %entry
  %3 = phi i1 [ false, %entry ], [ true, %caseMatch ]
  br i1 %3, label %if.then, label %if.end

if.then:                                          ; preds = %caseDone
  call void @"?FatalError@Internal@System@bf@@SAXPEAVString@23@_J@Z"(ptr @__bfStrObj97, i64 1) #3
  unreachable

if.end:                                           ; preds = %caseDone
  br label %exit

exit:                                             ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"??$NoDispose@U_M0@@@i13$?$Result@X@System@bf@@CAXXZ"() #1

; Function Attrs: nounwind uwtable
define void @"??$NoDispose@X@?$Result@X@System@bf@@CAXXZ"() #1 {
entry:
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: noreturn nounwind uwtable
declare void @"?FatalError@Internal@System@bf@@SAXPEAVString@23@_J@Z"(ptr, i64) #2

attributes #0 = { alwaysinline nounwind uwtable }
attributes #1 = { nounwind uwtable }
attributes #2 = { noreturn nounwind uwtable }
attributes #3 = { noreturn }
