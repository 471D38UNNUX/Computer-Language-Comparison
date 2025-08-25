; ModuleID = 'System_Math'
source_filename = "System_Math"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

@"?sRoundPower10Double@Math@System@bf@@2?$_ARRAY@N$0BA@@A" = local_unnamed_addr global [16 x double] zeroinitializer, align 8
@"?sRoundPower10Single@Math@System@bf@@2?$_ARRAY@M$06@A" = local_unnamed_addr global [7 x float] zeroinitializer, align 4
@"?sMachineEpsilonFloat@Math@System@bf@@2MA" = local_unnamed_addr global float 0.000000e+00, align 4
@didStaticInit = internal unnamed_addr global i1 false

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef float @"?GetMachineEpsilonFloat@Math@System@bf@@CAMXZ"() local_unnamed_addr #0 {
entry:
  ret float 0x3E70000000000000
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define void @"?__BfStaticCtor@Math@System@bf@@SAXXZ"() local_unnamed_addr #1 {
entry:
  %0 = load i1, ptr @didStaticInit, align 1
  br i1 %0, label %exit, label %init1

init1:                                            ; preds = %entry
  store i1 true, ptr @didStaticInit, align 1
  store double 1.000000e+00, ptr @"?sRoundPower10Double@Math@System@bf@@2?$_ARRAY@N$0BA@@A", align 8
  store double 1.000000e+01, ptr getelementptr inbounds ([16 x double], ptr @"?sRoundPower10Double@Math@System@bf@@2?$_ARRAY@N$0BA@@A", i64 0, i64 1), align 8
  store double 1.000000e+02, ptr getelementptr inbounds ([16 x double], ptr @"?sRoundPower10Double@Math@System@bf@@2?$_ARRAY@N$0BA@@A", i64 0, i64 2), align 8
  store double 1.000000e+03, ptr getelementptr inbounds ([16 x double], ptr @"?sRoundPower10Double@Math@System@bf@@2?$_ARRAY@N$0BA@@A", i64 0, i64 3), align 8
  store double 1.000000e+04, ptr getelementptr inbounds ([16 x double], ptr @"?sRoundPower10Double@Math@System@bf@@2?$_ARRAY@N$0BA@@A", i64 0, i64 4), align 8
  store double 1.000000e+05, ptr getelementptr inbounds ([16 x double], ptr @"?sRoundPower10Double@Math@System@bf@@2?$_ARRAY@N$0BA@@A", i64 0, i64 5), align 8
  store double 1.000000e+06, ptr getelementptr inbounds ([16 x double], ptr @"?sRoundPower10Double@Math@System@bf@@2?$_ARRAY@N$0BA@@A", i64 0, i64 6), align 8
  store double 1.000000e+07, ptr getelementptr inbounds ([16 x double], ptr @"?sRoundPower10Double@Math@System@bf@@2?$_ARRAY@N$0BA@@A", i64 0, i64 7), align 8
  store double 1.000000e+08, ptr getelementptr inbounds ([16 x double], ptr @"?sRoundPower10Double@Math@System@bf@@2?$_ARRAY@N$0BA@@A", i64 0, i64 8), align 8
  store double 1.000000e+09, ptr getelementptr inbounds ([16 x double], ptr @"?sRoundPower10Double@Math@System@bf@@2?$_ARRAY@N$0BA@@A", i64 0, i64 9), align 8
  store double 1.000000e+10, ptr getelementptr inbounds ([16 x double], ptr @"?sRoundPower10Double@Math@System@bf@@2?$_ARRAY@N$0BA@@A", i64 0, i64 10), align 8
  store double 1.000000e+11, ptr getelementptr inbounds ([16 x double], ptr @"?sRoundPower10Double@Math@System@bf@@2?$_ARRAY@N$0BA@@A", i64 0, i64 11), align 8
  store double 1.000000e+12, ptr getelementptr inbounds ([16 x double], ptr @"?sRoundPower10Double@Math@System@bf@@2?$_ARRAY@N$0BA@@A", i64 0, i64 12), align 8
  store double 1.000000e+13, ptr getelementptr inbounds ([16 x double], ptr @"?sRoundPower10Double@Math@System@bf@@2?$_ARRAY@N$0BA@@A", i64 0, i64 13), align 8
  store double 1.000000e+14, ptr getelementptr inbounds ([16 x double], ptr @"?sRoundPower10Double@Math@System@bf@@2?$_ARRAY@N$0BA@@A", i64 0, i64 14), align 8
  store double 1.000000e+15, ptr getelementptr inbounds ([16 x double], ptr @"?sRoundPower10Double@Math@System@bf@@2?$_ARRAY@N$0BA@@A", i64 0, i64 15), align 8
  store float 1.000000e+00, ptr @"?sRoundPower10Single@Math@System@bf@@2?$_ARRAY@M$06@A", align 4
  store float 1.000000e+01, ptr getelementptr inbounds ([7 x float], ptr @"?sRoundPower10Single@Math@System@bf@@2?$_ARRAY@M$06@A", i64 0, i64 1), align 4
  store float 1.000000e+02, ptr getelementptr inbounds ([7 x float], ptr @"?sRoundPower10Single@Math@System@bf@@2?$_ARRAY@M$06@A", i64 0, i64 2), align 4
  store float 1.000000e+03, ptr getelementptr inbounds ([7 x float], ptr @"?sRoundPower10Single@Math@System@bf@@2?$_ARRAY@M$06@A", i64 0, i64 3), align 4
  store float 1.000000e+04, ptr getelementptr inbounds ([7 x float], ptr @"?sRoundPower10Single@Math@System@bf@@2?$_ARRAY@M$06@A", i64 0, i64 4), align 4
  store float 1.000000e+05, ptr getelementptr inbounds ([7 x float], ptr @"?sRoundPower10Single@Math@System@bf@@2?$_ARRAY@M$06@A", i64 0, i64 5), align 4
  store float 1.000000e+06, ptr getelementptr inbounds ([7 x float], ptr @"?sRoundPower10Single@Math@System@bf@@2?$_ARRAY@M$06@A", i64 0, i64 6), align 4
  store float 0x3E70000000000000, ptr @"?sMachineEpsilonFloat@Math@System@bf@@2MA", align 4
  br label %exit

exit:                                             ; preds = %init1, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i64 @"??$Max@_J@Math@System@bf@@SA_J_J0@Z"(i64 %val1, i64 %val2) local_unnamed_addr #0 {
entry:
  %val1.val2 = tail call i64 @llvm.smax.i64(i64 %val1, i64 %val2)
  ret i64 %val1.val2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @"??$Max@H@Math@System@bf@@SAHHH@Z"(i32 %val1, i32 %val2) local_unnamed_addr #0 {
entry:
  %val1.val2 = tail call i32 @llvm.smax.i32(i32 %val1, i32 %val2)
  ret i32 %val1.val2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i32 @"??$Min@H@Math@System@bf@@SAHHH@Z"(i32 %val1, i32 %val2) local_unnamed_addr #0 {
entry:
  %val1.val2 = tail call i32 @llvm.smin.i32(i32 %val1, i32 %val2)
  ret i32 %val1.val2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
