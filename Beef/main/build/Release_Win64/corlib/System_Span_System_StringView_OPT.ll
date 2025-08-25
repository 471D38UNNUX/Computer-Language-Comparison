; ModuleID = 'System_Span_System_StringView'
source_filename = "System_Span_System_StringView"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf" = type <{ %"corlib.ValueType@System@bf", %"corlib.?$Span@UStringView@System@bf@@@System@bf", i64, ptr }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$Span@UStringView@System@bf@@@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>

; Function Attrs: nounwind uwtable
define void @"?GetEnumerator__im@?$Span@UStringView@System@bf@@@System@bf@@QEAA?AUEnumerator@123@XZ"(ptr noalias nocapture writeonly sret(%"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf") %0, ptr %this_mPtr, i64 %this_mLength) local_unnamed_addr #0 {
entry:
  %1 = alloca %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", align 8
  call void @"?__BfCtor@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@QEAAXU234@@Z"(ptr nonnull %1, ptr %this_mPtr, i64 %this_mLength)
  %.fca.1.1.gep = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %1, i64 0, i32 1, i32 1
  %.fca.1.1.load = load ptr, ptr %.fca.1.1.gep, align 8
  %.fca.1.2.gep = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %1, i64 0, i32 1, i32 2
  %.fca.1.2.load = load i64, ptr %.fca.1.2.gep, align 8
  %.fca.2.gep = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %1, i64 0, i32 2
  %.fca.2.load = load i64, ptr %.fca.2.gep, align 8
  %.fca.3.gep = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %1, i64 0, i32 3
  %.fca.3.load = load ptr, ptr %.fca.3.gep, align 8
  store ptr %.fca.1.1.load, ptr %0, align 8
  %.repack1.repack9 = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %0, i64 0, i32 1, i32 2
  store i64 %.fca.1.2.load, ptr %.repack1.repack9, align 8
  %.repack3 = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %0, i64 0, i32 2
  store i64 %.fca.2.load, ptr %.repack3, align 8
  %.repack5 = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %0, i64 0, i32 3
  store ptr %.fca.3.load, ptr %.repack5, align 8
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@QEAAXU234@@Z"(ptr, ptr, i64) local_unnamed_addr #0

attributes #0 = { nounwind uwtable }
