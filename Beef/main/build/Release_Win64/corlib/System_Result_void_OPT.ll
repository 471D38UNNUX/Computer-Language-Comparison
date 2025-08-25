; ModuleID = 'System_Result_void'
source_filename = "System_Result_void"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.?$Result@X@System@bf" = type <{ %"corlib.Enum@System@bf", [0 x i8], i8 }>
%"corlib.Enum@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.ValueType@System@bf" = type <{}>

@__bfStrObj97 = external constant %"corlib.String@System@bf"

; Function Attrs: nounwind uwtable
define void @"?ReturnValueDiscarded__im@?$Result@X@System@bf@@QEAAXXZ"(ptr nocapture readonly dereferenceable(1) %this) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %"corlib.?$Result@X@System@bf", ptr %this, i64 0, i32 2
  %1 = load i8, ptr %0, align 1
  %2 = icmp eq i8 %1, 1
  br i1 %2, label %if.then, label %exit

if.then:                                          ; preds = %entry
  tail call void @"?FatalError@Internal@System@bf@@SAXPEAVString@23@_J@Z"(ptr nonnull @__bfStrObj97, i64 1) #3
  unreachable

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @"??$NoDispose@X@?$Result@X@System@bf@@CAXXZ"() local_unnamed_addr #1 {
entry:
  ret void
}

; Function Attrs: noreturn nounwind uwtable
declare void @"?FatalError@Internal@System@bf@@SAXPEAVString@23@_J@Z"(ptr, i64) local_unnamed_addr #2

attributes #0 = { nounwind uwtable }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
attributes #2 = { noreturn nounwind uwtable }
attributes #3 = { noreturn }
