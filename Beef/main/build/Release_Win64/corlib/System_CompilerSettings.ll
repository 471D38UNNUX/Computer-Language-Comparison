; ModuleID = 'System_CompilerSettings'
source_filename = "System_CompilerSettings"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

@didStaticInit = internal global i1 false

; Function Attrs: nounwind uwtable
define void @"?__BfStaticCtor@CompilerSettings@System@bf@@CAXXZ"() #0 {
entry:
  %0 = load i1, ptr @didStaticInit, align 1
  br i1 %0, label %exit, label %init1

init1:                                            ; preds = %entry
  store i1 true, ptr @didStaticInit, align 1
  br label %exit

exit:                                             ; preds = %init1, %entry
  ret void
}

attributes #0 = { nounwind uwtable }
