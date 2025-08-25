; ModuleID = 'System_Result_System_StringView'
source_filename = "System_Result_System_StringView"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.StringView@System@bf" = type <{ %"corlib.?$Span@D@System@bf" }>
%"corlib.?$Span@D@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$Result@UStringView@System@bf@@@System@bf" = type <{ %"corlib.Enum@System@bf", %"corlib.?$__TUPLE_val@UStringView@System@bf@@@bf", i8 }>
%"corlib.Enum@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.?$__TUPLE_val@UStringView@System@bf@@@bf" = type <{ %"corlib.Tuple@System@bf", %"corlib.StringView@System@bf" }>
%"corlib.Tuple@System@bf" = type <{ %"corlib.ValueType@System@bf" }>

; Function Attrs: alwaysinline nounwind uwtable
declare void @"?Unwrap__im@?$Result@UStringView@System@bf@@@System@bf@@AEAA?AUStringView@23@XZ"(ptr nocapture dereferenceable(17), ptr noalias sret(%"corlib.StringView@System@bf")) #0

; Function Attrs: alwaysinline nounwind uwtable
define void @"??B?$Result@UStringView@System@bf@@@System@bf@@SA?AU012@UStringView@12@@Z"(ptr noalias sret(%"corlib.?$Result@UStringView@System@bf@@@System@bf") %0, ptr %value_mPtr, i64 %value_mLength) #0 {
entry:
  %1 = alloca ptr, align 8
  %2 = alloca i64, align 8
  %__return.addr = alloca ptr, align 8
  %3 = alloca %"corlib.?$Result@UStringView@System@bf@@@System@bf", align 8
  store ptr %value_mPtr, ptr %1, align 8
  store i64 %value_mLength, ptr %2, align 8
  store ptr %0, ptr %__return.addr, align 8
  %4 = getelementptr inbounds %"corlib.?$Result@UStringView@System@bf@@@System@bf", ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %"corlib.?$__TUPLE_val@UStringView@System@bf@@@bf", ptr %4, i32 0, i32 1
  %6 = insertvalue %"corlib.?$Span@D@System@bf" undef, ptr %value_mPtr, 1
  %7 = insertvalue %"corlib.?$Span@D@System@bf" %6, i64 %value_mLength, 2
  %8 = insertvalue %"corlib.StringView@System@bf" undef, %"corlib.?$Span@D@System@bf" %7, 0
  store %"corlib.StringView@System@bf" %8, ptr %5, align 8
  %9 = getelementptr inbounds %"corlib.?$Result@UStringView@System@bf@@@System@bf", ptr %3, i32 0, i32 2
  store i8 0, ptr %9, align 4
  %10 = load %"corlib.?$Result@UStringView@System@bf@@@System@bf", ptr %3, align 8
  %11 = load ptr, ptr %__return.addr, align 8
  store %"corlib.?$Result@UStringView@System@bf@@@System@bf" %10, ptr %11, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
declare void @"??B?$Result@UStringView@System@bf@@@System@bf@@SA?AUStringView@12@U012@@Z"(ptr noalias sret(%"corlib.StringView@System@bf"), ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"??$Result@UStringView@System@bf@@@System@bf@@SAAEAmut$?AUStringView@12@AEAU012@@Z"(ptr dereferenceable(17)) #0

; Function Attrs: alwaysinline nounwind uwtable
declare void @"?IgnoreError__im@?$Result@UStringView@System@bf@@@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(17)) #0

; Function Attrs: nounwind uwtable
declare void @"?Dispose__im@?$Result@UStringView@System@bf@@@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(17)) #1

; Function Attrs: nounwind uwtable
declare void @"??$NoDispose@U_M0@@@?$Result@UStringView@System@bf@@@System@bf@@CAXXZ"() #1

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface__im@?$Result@UStringView@System@bf@@@System@bf@@IEAAPEAVObject@23@H@Z"(ptr nocapture dereferenceable(17), i32) #1

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers__im@?$Result@UStringView@System@bf@@@System@bf@@IEAAXXZ"(ptr) #1

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@?$Result@UStringView@System@bf@@@System@bf@@QEAAXPEAVString@23@@Z"(ptr nocapture dereferenceable(17), ptr) #1

attributes #0 = { alwaysinline nounwind uwtable }
attributes #1 = { nounwind uwtable }
