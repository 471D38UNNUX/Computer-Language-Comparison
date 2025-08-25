; ModuleID = 'System_Result_System_Object'
source_filename = "System_Result_System_Object"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Result@PEAVObject@System@bf@@@System@bf" = type <{ %"corlib.Enum@System@bf", %"corlib.?$__TUPLE_val@PEAVObject@System@bf@@@bf", i8 }>
%"corlib.Enum@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$__TUPLE_val@PEAVObject@System@bf@@@bf" = type <{ %"corlib.Tuple@System@bf", ptr }>
%"corlib.Tuple@System@bf" = type <{ %"corlib.ValueType@System@bf" }>

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"?Unwrap__im@?$Result@PEAVObject@System@bf@@@System@bf@@AEAAPEAVObject@23@XZ"(ptr nocapture dereferenceable(9)) #0

; Function Attrs: alwaysinline nounwind uwtable
define void @"??B?$Result@PEAVObject@System@bf@@@System@bf@@SA?AU012@PEAVObject@12@@Z"(ptr noalias sret(%"corlib.?$Result@PEAVObject@System@bf@@@System@bf") %0, ptr %value) #0 {
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

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"??B?$Result@PEAVObject@System@bf@@@System@bf@@SAPEAVObject@12@U012@@Z"(ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"??$Result@PEAVObject@System@bf@@@System@bf@@SAPEAVObject@12@AEAU012@@Z"(ptr dereferenceable(9)) #0

; Function Attrs: alwaysinline nounwind uwtable
declare void @"?IgnoreError__im@?$Result@PEAVObject@System@bf@@@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(9)) #0

; Function Attrs: nounwind uwtable
declare void @"?Dispose__im@?$Result@PEAVObject@System@bf@@@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(9)) #1

; Function Attrs: nounwind uwtable
declare void @"??$NoDispose@U_M0@@@?$Result@PEAVObject@System@bf@@@System@bf@@CAXXZ"() #1

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface__im@?$Result@PEAVObject@System@bf@@@System@bf@@IEAAPEAVObject@23@H@Z"(ptr nocapture dereferenceable(9), i32) #1

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers__im@?$Result@PEAVObject@System@bf@@@System@bf@@IEAAXXZ"(ptr) #1

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@?$Result@PEAVObject@System@bf@@@System@bf@@QEAAXPEAVString@23@@Z"(ptr nocapture dereferenceable(9), ptr) #1

attributes #0 = { alwaysinline nounwind uwtable }
attributes #1 = { nounwind uwtable }
