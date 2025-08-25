; ModuleID = 'System_Span_System_StringView'
source_filename = "System_Span_System_StringView"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf" = type <{ %"corlib.ValueType@System@bf", %"corlib.?$Span@UStringView@System@bf@@@System@bf", i64, ptr }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$Span@UStringView@System@bf@@@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>

; Function Attrs: nounwind uwtable
define void @"?GetEnumerator__im@?$Span@UStringView@System@bf@@@System@bf@@QEAA?AUEnumerator@123@XZ"(ptr noalias sret(%"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf") %0, ptr %this_mPtr, i64 %this_mLength) #0 {
entry:
  %1 = alloca ptr, align 8
  %2 = alloca i64, align 8
  %__return.addr = alloca ptr, align 8
  %3 = alloca %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", align 8
  store ptr %this_mPtr, ptr %1, align 8
  store i64 %this_mLength, ptr %2, align 8
  store ptr %0, ptr %__return.addr, align 8
  call void @"?__BfCtor@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@QEAAXU234@@Z"(ptr %3, ptr %this_mPtr, i64 %this_mLength)
  %4 = load %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %3, align 8
  %5 = load ptr, ptr %__return.addr, align 8
  store %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf" %4, ptr %5, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@?$Span@UStringView@System@bf@@@System@bf@@QEAAXPEAVString@23@@Z"(ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface__im@?$Span@UStringView@System@bf@@@System@bf@@IEAAPEAVObject@23@H@Z"(ptr, i64, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers__im@?$Span@UStringView@System@bf@@@System@bf@@IEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@QEAAXU234@@Z"(ptr, ptr, i64) #0

attributes #0 = { nounwind uwtable }
