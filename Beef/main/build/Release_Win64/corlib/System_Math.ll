; ModuleID = 'System_Math'
source_filename = "System_Math"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

@"?sRoundPower10Double@Math@System@bf@@2?$_ARRAY@N$0BA@@A" = global [16 x double] zeroinitializer, align 8
@"?sRoundPower10Single@Math@System@bf@@2?$_ARRAY@M$06@A" = global [7 x float] zeroinitializer, align 4
@"?sMachineEpsilonFloat@Math@System@bf@@2MA" = global float 0.000000e+00, align 4
@didStaticInit = internal global i1 false

; Function Attrs: nounwind uwtable
declare float @"?Acos@Math@System@bf@@SAMM@Z"(float) #0

; Function Attrs: nounwind uwtable
declare double @"?Acos@Math@System@bf@@SANN@Z"(double) #0

; Function Attrs: nounwind uwtable
declare float @"?Asin@Math@System@bf@@SAMM@Z"(float) #0

; Function Attrs: nounwind uwtable
declare double @"?Asin@Math@System@bf@@SANN@Z"(double) #0

; Function Attrs: nounwind uwtable
declare float @"?Atan@Math@System@bf@@SAMM@Z"(float) #0

; Function Attrs: nounwind uwtable
declare double @"?Atan@Math@System@bf@@SANN@Z"(double) #0

; Function Attrs: nounwind uwtable
declare float @"?Atan2@Math@System@bf@@SAMMM@Z"(float, float) #0

; Function Attrs: nounwind uwtable
declare double @"?Atan2@Math@System@bf@@SANNN@Z"(double, double) #0

; Function Attrs: nounwind uwtable
declare float @"?Ceiling@Math@System@bf@@SAMM@Z"(float) #0

; Function Attrs: nounwind uwtable
declare double @"?Ceiling@Math@System@bf@@SANN@Z"(double) #0

; Function Attrs: nounwind uwtable
declare float @"?Cos@Math@System@bf@@SAMM@Z"(float) #0

; Function Attrs: nounwind uwtable
declare double @"?Cos@Math@System@bf@@SANN@Z"(double) #0

; Function Attrs: nounwind uwtable
declare float @"?Cosh@Math@System@bf@@SAMM@Z"(float) #0

; Function Attrs: nounwind uwtable
declare double @"?Cosh@Math@System@bf@@SANN@Z"(double) #0

; Function Attrs: nounwind uwtable
declare float @"?Floor@Math@System@bf@@SAMM@Z"(float) #0

; Function Attrs: nounwind uwtable
declare double @"?Floor@Math@System@bf@@SANN@Z"(double) #0

; Function Attrs: nounwind uwtable
declare i1 @"?WithinEpsilon@Math@System@bf@@SA_NMM@Z"(float, float) #0

; Function Attrs: nounwind uwtable
define float @"?GetMachineEpsilonFloat@Math@System@bf@@CAMXZ"() #0 {
entry:
  %__return = alloca float, align 4
  %machineEpsilon = alloca float, align 4
  %comparison = alloca float, align 4
  store float 1.000000e+00, ptr %machineEpsilon, align 4
  br label %newScope

repeat.body:                                      ; preds = %repeat.cond, %newScope
  %0 = load float, ptr %machineEpsilon, align 4
  %1 = fmul float %0, 5.000000e-01
  store float %1, ptr %machineEpsilon, align 4
  %2 = load float, ptr %machineEpsilon, align 4
  %3 = fadd float 1.000000e+00, %2
  store float %3, ptr %comparison, align 4
  br label %repeat.cond

newScope:                                         ; preds = %entry
  br label %repeat.body

repeat.cond:                                      ; preds = %repeat.body
  %4 = load float, ptr %comparison, align 4
  %5 = fcmp ogt float %4, 1.000000e+00
  br i1 %5, label %repeat.body, label %repeat.end

repeat.end:                                       ; preds = %repeat.cond
  %6 = load float, ptr %machineEpsilon, align 4
  store float %6, ptr %__return, align 4
  br label %exit

exit:                                             ; preds = %repeat.end
  %7 = load float, ptr %__return, align 4
  ret float %7
}

; Function Attrs: nounwind uwtable
declare float @"?InternalRound@Math@System@bf@@CAMMHW4MidpointRounding@23@@Z"(float, i32, i8) #0

; Function Attrs: nounwind uwtable
declare double @"?InternalRound@Math@System@bf@@CANNHW4MidpointRounding@23@@Z"(double, i32, i8) #0

; Function Attrs: nounwind uwtable
declare float @"?Sin@Math@System@bf@@SAMM@Z"(float) #0

; Function Attrs: nounwind uwtable
declare double @"?Sin@Math@System@bf@@SANN@Z"(double) #0

; Function Attrs: nounwind uwtable
declare float @"?Tan@Math@System@bf@@SAMM@Z"(float) #0

; Function Attrs: nounwind uwtable
declare double @"?Tan@Math@System@bf@@SANN@Z"(double) #0

; Function Attrs: nounwind uwtable
declare float @"?Sinh@Math@System@bf@@SAMM@Z"(float) #0

; Function Attrs: nounwind uwtable
declare double @"?Sinh@Math@System@bf@@SANN@Z"(double) #0

; Function Attrs: nounwind uwtable
declare float @"?Tanh@Math@System@bf@@SAMM@Z"(float) #0

; Function Attrs: nounwind uwtable
declare double @"?Tanh@Math@System@bf@@SANN@Z"(double) #0

; Function Attrs: nounwind uwtable
declare float @"?Round@Math@System@bf@@SAMM@Z"(float) #0

; Function Attrs: nounwind uwtable
declare double @"?Round@Math@System@bf@@SANN@Z"(double) #0

; Function Attrs: nounwind uwtable
declare float @"?RadiansToDegrees@Math@System@bf@@SAMM@Z"(float) #0

; Function Attrs: nounwind uwtable
declare double @"?RadiansToDegrees@Math@System@bf@@SANN@Z"(double) #0

; Function Attrs: nounwind uwtable
declare float @"?DegreesToRadians@Math@System@bf@@SAMM@Z"(float) #0

; Function Attrs: nounwind uwtable
declare double @"?DegreesToRadians@Math@System@bf@@SANN@Z"(double) #0

; Function Attrs: nounwind uwtable
declare float @"?Round@Math@System@bf@@SAMMH@Z"(float, i32) #0

; Function Attrs: nounwind uwtable
declare double @"?Round@Math@System@bf@@SANNH@Z"(double, i32) #0

; Function Attrs: nounwind uwtable
declare float @"?Round@Math@System@bf@@SAMMW4MidpointRounding@23@@Z"(float, i8) #0

; Function Attrs: nounwind uwtable
declare double @"?Round@Math@System@bf@@SANNW4MidpointRounding@23@@Z"(double, i8) #0

; Function Attrs: nounwind uwtable
declare float @"?Round@Math@System@bf@@SAMMHW4MidpointRounding@23@@Z"(float, i32, i8) #0

; Function Attrs: nounwind uwtable
declare double @"?Round@Math@System@bf@@SANNHW4MidpointRounding@23@@Z"(double, i32, i8) #0

; Function Attrs: nounwind uwtable
declare double @modf(double, ptr dereferenceable(8)) #0

; Function Attrs: nounwind uwtable
declare float @modff(float, ptr dereferenceable(4)) #0

; Function Attrs: nounwind uwtable
declare float @"?Truncate@Math@System@bf@@SAMM@Z"(float) #0

; Function Attrs: nounwind uwtable
declare double @"?Truncate@Math@System@bf@@SANN@Z"(double) #0

; Function Attrs: nounwind uwtable
declare float @"?Sqrt@Math@System@bf@@SAMM@Z"(float) #0

; Function Attrs: nounwind uwtable
declare double @"?Sqrt@Math@System@bf@@SANN@Z"(double) #0

; Function Attrs: nounwind uwtable
declare float @"?Cbrt@Math@System@bf@@SAMM@Z"(float) #0

; Function Attrs: nounwind uwtable
declare double @"?Cbrt@Math@System@bf@@SANN@Z"(double) #0

; Function Attrs: nounwind uwtable
declare float @"?Log@Math@System@bf@@SAMM@Z"(float) #0

; Function Attrs: nounwind uwtable
declare double @"?Log@Math@System@bf@@SANN@Z"(double) #0

; Function Attrs: nounwind uwtable
declare float @"?Log10@Math@System@bf@@SAMM@Z"(float) #0

; Function Attrs: nounwind uwtable
declare double @"?Log10@Math@System@bf@@SANN@Z"(double) #0

; Function Attrs: nounwind uwtable
declare float @"?Exp@Math@System@bf@@SAMM@Z"(float) #0

; Function Attrs: nounwind uwtable
declare double @"?Exp@Math@System@bf@@SANN@Z"(double) #0

; Function Attrs: nounwind uwtable
declare float @"?Pow@Math@System@bf@@SAMMM@Z"(float, float) #0

; Function Attrs: nounwind uwtable
declare double @"?Pow@Math@System@bf@@SANNN@Z"(double, double) #0

; Function Attrs: nounwind uwtable
declare float @"?IEEERemainder@Math@System@bf@@SAMMM@Z"(float, float) #0

; Function Attrs: nounwind uwtable
declare double @"?IEEERemainder@Math@System@bf@@SANNN@Z"(double, double) #0

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #1

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"??$Abs@U_M0@@@Math@System@bf@@SAU_M0@@U_M0@@@Z"(ptr) #2

; Function Attrs: nounwind uwtable
declare float @"?Distance@Math@System@bf@@SAMMM@Z"(float, float) #0

; Function Attrs: nounwind uwtable
declare float @"?Lerp@Math@System@bf@@SAMMMM@Z"(float, float, float) #0

; Function Attrs: nounwind uwtable
declare double @"?Lerp@Math@System@bf@@SANNNN@Z"(double, double, double) #0

; Function Attrs: nounwind uwtable
declare float @"?Log@Math@System@bf@@SAMMM@Z"(float, float) #0

; Function Attrs: nounwind uwtable
declare double @"?Log@Math@System@bf@@SANNN@Z"(double, double) #0

; Function Attrs: nounwind uwtable
declare i32 @"?DivRem@Math@System@bf@@SAHHHAEAout$H@Z"(i32, i32, ptr dereferenceable(4)) #0

; Function Attrs: nounwind uwtable
declare i64 @"?DivRem@Math@System@bf@@SA_J_J0AEAout$_J@Z"(i64, i64, ptr dereferenceable(8)) #0

; Function Attrs: nounwind uwtable
declare i32 @"?Align@Math@System@bf@@SAHHH@Z"(i32, i32) #0

; Function Attrs: nounwind uwtable
declare i64 @"?Align@Math@System@bf@@SA_J_J0@Z"(i64, i64) #0

; Function Attrs: nounwind uwtable
declare float @"?SmoothStep@Math@System@bf@@SAMMMM@Z"(float, float, float) #0

; Function Attrs: nounwind uwtable
declare float @"?Hermite@Math@System@bf@@SAMMMMMM@Z"(float, float, float, float, float) #0

; Function Attrs: nounwind uwtable
declare float @"?Barycentric@Math@System@bf@@SAMMMMMM@Z"(float, float, float, float, float) #0

; Function Attrs: nounwind uwtable
declare float @"?CatmullRom@Math@System@bf@@SAMMMMMM@Z"(float, float, float, float, float) #0

; Function Attrs: nounwind uwtable
define void @"?__BfStaticCtor@Math@System@bf@@SAXXZ"() #0 {
entry:
  %0 = load i1, ptr @didStaticInit, align 1
  br i1 %0, label %exit, label %init1

init1:                                            ; preds = %entry
  store i1 true, ptr @didStaticInit, align 1
  store [16 x double] [double 1.000000e+00, double 1.000000e+01, double 1.000000e+02, double 1.000000e+03, double 1.000000e+04, double 1.000000e+05, double 1.000000e+06, double 1.000000e+07, double 1.000000e+08, double 1.000000e+09, double 1.000000e+10, double 1.000000e+11, double 1.000000e+12, double 1.000000e+13, double 1.000000e+14, double 1.000000e+15], ptr @"?sRoundPower10Double@Math@System@bf@@2?$_ARRAY@N$0BA@@A", align 8
  store [7 x float] [float 1.000000e+00, float 1.000000e+01, float 1.000000e+02, float 1.000000e+03, float 1.000000e+04, float 1.000000e+05, float 1.000000e+06], ptr @"?sRoundPower10Single@Math@System@bf@@2?$_ARRAY@M$06@A", align 4
  %GetMachineEpsilonFloat = call float @"?GetMachineEpsilonFloat@Math@System@bf@@CAMXZ"()
  store float %GetMachineEpsilonFloat, ptr @"?sMachineEpsilonFloat@Math@System@bf@@2MA", align 4
  br label %exit

exit:                                             ; preds = %init1, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?GCMarkStaticMembers@Math@System@bf@@KAXXZ"() #0

; Function Attrs: nounwind uwtable
declare ptr @"??$Max@U_M0@@@Math@System@bf@@SAU_M0@@U_M0@@0@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
define i64 @"??$Max@_J@Math@System@bf@@SA_J_J0@Z"(i64 %val1, i64 %val2) #0 {
entry:
  %__return = alloca i64, align 8
  %0 = icmp sgt i64 %val1, %val2
  br i1 %0, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 %val1, ptr %__return, align 8
  br label %exit

if.end:                                           ; preds = %entry
  br label %if.end1

if.end1:                                          ; preds = %if.end
  store i64 %val2, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %if.end1, %if.then
  %1 = load i64, ptr %__return, align 8
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define i32 @"??$Max@H@Math@System@bf@@SAHHH@Z"(i32 %val1, i32 %val2) #0 {
entry:
  %__return = alloca i32, align 4
  %0 = icmp sgt i32 %val1, %val2
  br i1 %0, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 %val1, ptr %__return, align 4
  br label %exit

if.end:                                           ; preds = %entry
  br label %if.end1

if.end1:                                          ; preds = %if.end
  store i32 %val2, ptr %__return, align 4
  br label %exit

exit:                                             ; preds = %if.end1, %if.then
  %1 = load i32, ptr %__return, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
declare ptr @"??$Min@U_M0@@@Math@System@bf@@SAU_M0@@U_M0@@0@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
define i32 @"??$Min@H@Math@System@bf@@SAHHH@Z"(i32 %val1, i32 %val2) #0 {
entry:
  %__return = alloca i32, align 4
  %0 = icmp slt i32 %val1, %val2
  br i1 %0, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 %val1, ptr %__return, align 4
  br label %exit

if.end:                                           ; preds = %entry
  br label %if.end1

if.end1:                                          ; preds = %if.end
  store i32 %val2, ptr %__return, align 4
  br label %exit

exit:                                             ; preds = %if.end1, %if.then
  %1 = load i32, ptr %__return, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsNaN__im@IIsNaN@System@bf@@Int64@23@CA_N_J@Z"(i64) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsNaN__im@IIsNaN@System@bf@@Int32@23@CA_NH@Z"(i32) #0

attributes #0 = { nounwind uwtable }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { alwaysinline nounwind uwtable }
