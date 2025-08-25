; ModuleID = 'System_BitConverter'
source_filename = "System_BitConverter"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

@"?IsLittleEndian@BitConverter@System@bf@@2_NA" = local_unnamed_addr global i1 false, align 1
@didStaticInit = internal unnamed_addr global i1 false

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define void @"?__BfStaticCtor@BitConverter@System@bf@@SAXXZ"() local_unnamed_addr #0 {
entry:
  %0 = load i1, ptr @didStaticInit, align 1
  br i1 %0, label %exit, label %init1

init1:                                            ; preds = %entry
  store i1 true, ptr @didStaticInit, align 1
  store i1 true, ptr @"?IsLittleEndian@BitConverter@System@bf@@2_NA", align 1
  br label %exit

exit:                                             ; preds = %init1, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i64 @"??$Convert@N_J@BitConverter@System@bf@@SA_JN@Z"(double %from) local_unnamed_addr #1 {
entry:
  %0 = bitcast double %from to i64
  ret i64 %0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
