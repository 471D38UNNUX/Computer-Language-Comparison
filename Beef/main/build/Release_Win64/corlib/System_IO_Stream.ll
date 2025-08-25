; ModuleID = 'System_IO_Stream'
source_filename = "System_IO_Stream"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Result@X@System@bf" = type <{ %"corlib.Enum@System@bf", [0 x i8], i8 }>
%"corlib.Enum@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$Result@Tint@@@System@bf" = type opaque
%"corlib.?$Result@Tint@@UFileError@IO@System@bf@@@System@bf" = type opaque

; Function Attrs: nounwind uwtable
declare i64 @"?get__Position@Stream@IO@System@bf@@UEAA_JXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?set__Position@Stream@IO@System@bf@@UEAAX_J@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?get__Length@Stream@IO@System@bf@@UEAA_JXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__CanRead@Stream@IO@System@bf@@UEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__CanWrite@Stream@IO@System@bf@@UEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsEmpty@Stream@IO@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Seek@Stream@IO@System@bf@@UEAA?AU?$Result@X@34@_JW4SeekKind@1234@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf"), i64, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?TryRead@Stream@IO@System@bf@@UEAA?AU?$Result@Tint@@@34@U?$Span@E@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?TryRead@Stream@IO@System@bf@@UEAA?AU?$Result@Tint@@?AUFileError@IO@System@bf@@@34@U?$Span@E@34@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@UFileError@IO@System@bf@@@System@bf"), ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?TryWrite@Stream@IO@System@bf@@UEAA?AU?$Result@Tint@@@34@U?$Span@E@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Close@Stream@IO@System@bf@@UEAA?AU?$Result@X@34@XZ"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?Skip@Stream@IO@System@bf@@QEAAX_J@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Write@Stream@IO@System@bf@@QEAAXE_J@Z"(ptr, i8, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?ReadStrSized32@Stream@IO@System@bf@@QEAA?AU?$Result@X@34@Tint@@PEAVString@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf"), i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?ReadStrSized32@Stream@IO@System@bf@@QEAA?AU?$Result@X@34@PEAVString@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf"), ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?ReadStrC@Stream@IO@System@bf@@QEAA?AU?$Result@X@34@PEAVString@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf"), ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?WriteStrSized32@Stream@IO@System@bf@@QEAA?AU?$Result@X@34@UStringView@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf"), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?WriteStrUnsized@Stream@IO@System@bf@@QEAA?AU?$Result@X@34@UStringView@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf"), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Write@Stream@IO@System@bf@@QEAA?AU?$Result@X@34@PEAVString@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf"), ptr) #0

; Function Attrs: nounwind uwtable
define void @"?Flush@Stream@IO@System@bf@@UEAA?AU?$Result@X@34@XZ"(ptr %this, ptr noalias sret(%"corlib.?$Result@X@System@bf") %0) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %1 = load ptr, ptr %this.addr, align 8
  store ptr %0, ptr %__return.addr, align 1
  %2 = load ptr, ptr %__return.addr, align 1
  store %"corlib.?$Result@X@System@bf" zeroinitializer, ptr %2, align 1
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?SetLength@Stream@IO@System@bf@@UEAA?AU?$Result@X@34@_J@Z"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Align@Stream@IO@System@bf@@QEAAXTint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?CopyTo@Stream@IO@System@bf@@UEAA?AU?$Result@Tint@@@34@PEAV1234@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?BeginRead@Stream@IO@System@bf@@UEAAPEAVIAsyncResult@34@PEAV?$Array1@E@34@Tint@@1PEAVAsyncCallback@34@PEAVObject@34@@Z"(ptr, ptr, i64, i64, ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?BeginReadInternal@Stream@IO@System@bf@@AEAAPEAVIAsyncResult@34@PEAV?$Array1@E@34@Tint@@1PEAVAsyncCallback@34@PEAVObject@34@_N@Z"(ptr, ptr, i64, i64, ptr, ptr, i1 zeroext) #0

; Function Attrs: nounwind uwtable
declare void @"?EndRead@Stream@IO@System@bf@@UEAA?AU?$Result@Tint@@@34@PEAVIAsyncResult@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@Stream@IO@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@Stream@IO@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@Stream@IO@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@Stream@IO@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers@Stream@IO@System@bf@@IEAAXXZ"(ptr) #0

attributes #0 = { nounwind uwtable }
