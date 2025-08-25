; ModuleID = 'System_Threading_Interlocked'
source_filename = "System_Threading_Interlocked"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>

@__bfStrObj405 = external constant %"corlib.String@System@bf"
@__bfStrObj406 = external constant %"corlib.String@System@bf"

; Function Attrs: noreturn nounwind uwtable
define void @"?FailOnDataSize@Interlocked@Threading@System@bf@@CAXXZ"() local_unnamed_addr #0 {
entry:
  tail call void @"?FatalError@Runtime@System@bf@@SAXPEAVString@23@0Tint@@@Z"(ptr nonnull @__bfStrObj405, ptr nonnull @__bfStrObj406, i64 964) #3
  unreachable
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define ptr @"??$CompareExchange@PEAVNumberFormatInfo@Globalization@System@bf@@W4RMWAtomicOrdering@Interlocked@Threading@23@$$04@Interlocked@Threading@System@bf@@SAPEAVNumberFormatInfo@Globalization@34@AEAPEAVNumberFormatInfo@Globalization@System@bf@@PEAV0123@1W4RMWAtomicOrdering@Interlocked@Threading@23@$$04@Z"(ptr nocapture dereferenceable(8) %location, ptr %comparand, ptr %value) local_unnamed_addr #1 {
entry:
  %0 = ptrtoint ptr %comparand to i64
  %1 = ptrtoint ptr %value to i64
  %2 = cmpxchg ptr %location, i64 %0, i64 %1 seq_cst seq_cst, align 8
  %3 = extractvalue { i64, i1 } %2, 0
  %4 = inttoptr i64 %3 to ptr
  ret ptr %4
}

; Function Attrs: noreturn nounwind uwtable
declare void @"?FatalError@Runtime@System@bf@@SAXPEAVString@23@0Tint@@@Z"(ptr, ptr, i64) local_unnamed_addr #0

; Function Attrs: alwaysinline mustprogress nofree norecurse nounwind willreturn uwtable
define void @"??$Fence@W4FenceAtomicOrdering@Interlocked@Threading@System@bf@@$$04@Interlocked@Threading@System@bf@@SAXW4FenceAtomicOrdering@Interlocked@Threading@System@bf@@$$04@Z"() local_unnamed_addr #2 {
entry:
  fence seq_cst
  ret void
}

attributes #0 = { noreturn nounwind uwtable }
attributes #1 = { alwaysinline mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable }
attributes #2 = { alwaysinline mustprogress nofree norecurse nounwind willreturn uwtable }
attributes #3 = { noreturn }
