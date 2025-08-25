; ModuleID = 'System_BitConverter'
source_filename = "System_BitConverter"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

@"?IsLittleEndian@BitConverter@System@bf@@2_NA" = global i1 false, align 1
@didStaticInit = internal global i1 false

; Function Attrs: nounwind uwtable
define void @"?__BfStaticCtor@BitConverter@System@bf@@SAXXZ"() #0 {
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

; Function Attrs: nounwind uwtable
declare void @"?GCMarkStaticMembers@BitConverter@System@bf@@KAXXZ"() #0

; Function Attrs: nounwind uwtable
declare ptr @"??$Convert@U_M0@@U_M1@@@BitConverter@System@bf@@SAU_M1@@U_M0@@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
define i64 @"??$Convert@N_J@BitConverter@System@bf@@SA_JN@Z"(double %from) #0 {
entry:
  %__return = alloca i64, align 8
  %from1 = alloca double, align 8
  store double %from, ptr %from1, align 8
  %0 = load i64, ptr %from1, align 8
  store i64 %0, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %1 = load i64, ptr %__return, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
declare void @"?Assert@Debug@Diagnostics@System@bf@@SAX_NPEAVString@34@1Tint@@@Z"(i1 zeroext, ptr, ptr, i64) #0

attributes #0 = { nounwind uwtable }
