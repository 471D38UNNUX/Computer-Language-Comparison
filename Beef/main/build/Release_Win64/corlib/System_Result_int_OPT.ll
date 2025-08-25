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

@__bfStrObj97 = external constant %"corlib.String@System@bf"

; Function Attrs: alwaysinline nounwind uwtable
define i64 @"?Unwrap__im@?$Result@Tint@@@System@bf@@AEAATint@@XZ"(ptr nocapture readonly dereferenceable(9) %this) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %"corlib.?$Result@Tint@@@System@bf", ptr %this, i64 0, i32 2
  %1 = load i8, ptr %0, align 1
  %switch = icmp eq i8 %1, 0
  br i1 %switch, label %caseMatch, label %switch.1

caseMatch:                                        ; preds = %entry
  %2 = load i64, ptr %this, align 8
  ret i64 %2

switch.1:                                         ; preds = %entry
  tail call void @"?FatalError@Internal@System@bf@@SAXPEAVString@23@_J@Z"(ptr nonnull @__bfStrObj97, i64 2) #4
  unreachable
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @"??B?$Result@Tint@@@System@bf@@SA?AU012@Tint@@@Z"(ptr noalias nocapture writeonly sret(%"corlib.?$Result@Tint@@@System@bf") %0, i64 %value) local_unnamed_addr #1 {
entry:
  store i64 %value, ptr %0, align 8
  %.repack3 = getelementptr inbounds %"corlib.?$Result@Tint@@@System@bf", ptr %0, i64 0, i32 2
  store i8 0, ptr %.repack3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @"?Get__im@?$Result@Tint@@@System@bf@@QEAATint@@XZ"(ptr nocapture readonly dereferenceable(9) %this) local_unnamed_addr #2 {
entry:
  %0 = getelementptr inbounds %"corlib.?$Result@Tint@@@System@bf", ptr %this, i64 0, i32 2
  %1 = load i8, ptr %0, align 1
  %switch.i = icmp eq i8 %1, 0
  br i1 %switch.i, label %"?Unwrap__im@?$Result@Tint@@@System@bf@@AEAATint@@XZ.exit", label %switch.1.i

switch.1.i:                                       ; preds = %entry
  tail call void @"?FatalError@Internal@System@bf@@SAXPEAVString@23@_J@Z"(ptr nonnull @__bfStrObj97, i64 2) #4
  unreachable

"?Unwrap__im@?$Result@Tint@@@System@bf@@AEAATint@@XZ.exit": ; preds = %entry
  %2 = load i64, ptr %this, align 8
  ret i64 %2
}

; Function Attrs: noreturn nounwind uwtable
declare void @"?FatalError@Internal@System@bf@@SAXPEAVString@23@_J@Z"(ptr, i64) local_unnamed_addr #3

attributes #0 = { alwaysinline nounwind uwtable }
attributes #1 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable }
attributes #2 = { nounwind uwtable }
attributes #3 = { noreturn nounwind uwtable }
attributes #4 = { noreturn }
