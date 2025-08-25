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

@__bfStrObj97 = external constant %"corlib.String@System@bf"

; Function Attrs: nounwind uwtable
define void @"?Get__im@?$Result@XUFileError@IO@System@bf@@@System@bf@@QEAAXXZ"(ptr nocapture readonly dereferenceable(3) %this) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf", ptr %this, i64 0, i32 2
  %1 = load i8, ptr %0, align 1
  %switch.i = icmp eq i8 %1, 0
  br i1 %switch.i, label %"?Unwrap__im@?$Result@XUFileError@IO@System@bf@@@System@bf@@AEAAXXZ.exit", label %switch.1.i

switch.1.i:                                       ; preds = %entry
  tail call void @"?FatalError@Internal@System@bf@@SAXPEAVString@23@_J@Z"(ptr nonnull @__bfStrObj97, i64 2) #2
  unreachable

"?Unwrap__im@?$Result@XUFileError@IO@System@bf@@@System@bf@@AEAAXXZ.exit": ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Unwrap__im@?$Result@XUFileError@IO@System@bf@@@System@bf@@AEAAXXZ"(ptr nocapture readonly dereferenceable(3) %this) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %"corlib.?$Result@XUFileError@IO@System@bf@@@System@bf", ptr %this, i64 0, i32 2
  %1 = load i8, ptr %0, align 1
  %switch = icmp eq i8 %1, 0
  br i1 %switch, label %exit, label %switch.1

switch.1:                                         ; preds = %entry
  tail call void @"?FatalError@Internal@System@bf@@SAXPEAVString@23@_J@Z"(ptr nonnull @__bfStrObj97, i64 2) #2
  unreachable

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: noreturn nounwind uwtable
declare void @"?FatalError@Internal@System@bf@@SAXPEAVString@23@_J@Z"(ptr, i64) local_unnamed_addr #1

attributes #0 = { nounwind uwtable }
attributes #1 = { noreturn nounwind uwtable }
attributes #2 = { noreturn }
