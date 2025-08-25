; ModuleID = 'System_Array1_int'
source_filename = "System_Array1_int"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.Enumerator@?$Span@Tint@@@System@bf" = type opaque

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"?GetRef@?$Array1@Tint@@@System@bf@@AEAAAEATint@@Tint@@@Z"(ptr, i64) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"?GetRefChecked@?$Array1@Tint@@@System@bf@@AEAAAEATint@@Tint@@@Z"(ptr, i64) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"?CArray@?$Array1@Tint@@@System@bf@@QEAAPEATint@@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetEnumerator@?$Array1@Tint@@@System@bf@@QEAA?AUEnumerator@?$Span@Tint@@@23@XZ"(ptr, ptr noalias sret(%"corlib.Enumerator@?$Span@Tint@@@System@bf")) #1

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers@?$Array1@Tint@@@System@bf@@IEAAXXZ"(ptr) #1

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@?$Array1@Tint@@@System@bf@@IEAAPEAVObject@23@H@Z"(ptr, i32) #1

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@?$Array1@Tint@@@System@bf@@IEAAPEAVObject@23@H@Z"(ptr, i32) #1

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@?$Array1@Tint@@@System@bf@@QEAAXXZ"(ptr %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  call void @"?__BfCtor@Array@System@bf@@QEAAXXZ"(ptr %0)
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@Array@System@bf@@QEAAXXZ"(ptr) #1

attributes #0 = { alwaysinline nounwind uwtable }
attributes #1 = { nounwind uwtable }
