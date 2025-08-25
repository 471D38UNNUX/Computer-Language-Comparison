; ModuleID = 'System_Threading_Interlocked'
source_filename = "System_Threading_Interlocked"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>

@"?sBfClassVData@String@System@bf@@2UClassVData@23@A" = external constant [8 x ptr]
@__bfStrObj405 = external constant %"corlib.String@System@bf"
@__bfStrObj406 = external constant %"corlib.String@System@bf"

; Function Attrs: alwaysinline nounwind uwtable
declare void @"??$Fence@U_M0@@@Interlocked@Threading@System@bf@@SAXU_M0@@@Z"(ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"??$Load@U_M0@@U_M1@@@Interlocked@Threading@System@bf@@SAU_M0@@AEAU_M0@@U_M1@@@Z"(ptr dereferenceable(8), ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare void @"??$Store@U_M0@@U_M1@@@Interlocked@Threading@System@bf@@SAXAEAU_M0@@0U_M1@@@Z"(ptr dereferenceable(8), ptr, ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"??$CompareExchange@U_M0@@U_M1@@@Interlocked@Threading@System@bf@@SAU_M0@@AEAU_M0@@01U_M1@@@Z"(ptr dereferenceable(8), ptr, ptr, ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"??$CompareExchange@U_M0@@U_M1@@U_M2@@@Interlocked@Threading@System@bf@@SAU_M0@@AEAU_M0@@01U_M1@@U_M2@@@Z"(ptr dereferenceable(8), ptr, ptr, ptr, ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare i1 @"??$CompareStore@U_M0@@U_M1@@@Interlocked@Threading@System@bf@@SA_NAEAU_M0@@01U_M1@@@Z"(ptr dereferenceable(8), ptr, ptr, ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare i1 @"??$CompareStoreWeak@U_M0@@U_M1@@@Interlocked@Threading@System@bf@@SA_NAEAU_M0@@01U_M1@@@Z"(ptr dereferenceable(8), ptr, ptr, ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"??$Add@U_M0@@U_M1@@@Interlocked@Threading@System@bf@@SAU_M0@@AEAU_M0@@0U_M1@@@Z"(ptr dereferenceable(8), ptr, ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"??$Add@U_M0@@U_M1@@@i45$Interlocked@Threading@System@bf@@SAU_M0@@AEAU_M0@@0U_M1@@@Z"(ptr dereferenceable(8), ptr, ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"??$ExchangeAdd@U_M0@@U_M1@@@Interlocked@Threading@System@bf@@SAU_M0@@AEAU_M0@@0U_M1@@@Z"(ptr dereferenceable(8), ptr, ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"??$ExchangeAdd@U_M0@@U_M1@@@i47$Interlocked@Threading@System@bf@@SAU_M0@@AEAU_M0@@0U_M1@@@Z"(ptr dereferenceable(8), ptr, ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"??$Increment@U_M0@@U_M1@@@Interlocked@Threading@System@bf@@SAU_M0@@AEAU_M0@@U_M1@@@Z"(ptr dereferenceable(8), ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"??$And@U_M0@@U_M1@@@Interlocked@Threading@System@bf@@SAU_M0@@AEAU_M0@@0U_M1@@@Z"(ptr dereferenceable(8), ptr, ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"??$ExchangeAnd@U_M0@@U_M1@@@Interlocked@Threading@System@bf@@SAU_M0@@AEAU_M0@@0U_M1@@@Z"(ptr dereferenceable(8), ptr, ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"??$Max@U_M0@@U_M1@@@Interlocked@Threading@System@bf@@SAU_M0@@AEAU_M0@@0U_M1@@@Z"(ptr dereferenceable(8), ptr, ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"??$ExchangeMax@U_M0@@U_M1@@@Interlocked@Threading@System@bf@@SAU_M0@@AEAU_M0@@0U_M1@@@Z"(ptr dereferenceable(8), ptr, ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"??$Min@U_M0@@U_M1@@@Interlocked@Threading@System@bf@@SAU_M0@@AEAU_M0@@0U_M1@@@Z"(ptr dereferenceable(8), ptr, ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"??$ExchangeMin@U_M0@@U_M1@@@Interlocked@Threading@System@bf@@SAU_M0@@AEAU_M0@@0U_M1@@@Z"(ptr dereferenceable(8), ptr, ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"??$Nand@U_M0@@U_M1@@@Interlocked@Threading@System@bf@@SAU_M0@@AEAU_M0@@0U_M1@@@Z"(ptr dereferenceable(8), ptr, ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"??$ExchangeNand@U_M0@@U_M1@@@Interlocked@Threading@System@bf@@SAU_M0@@AEAU_M0@@0U_M1@@@Z"(ptr dereferenceable(8), ptr, ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"??$Or@U_M0@@U_M1@@@Interlocked@Threading@System@bf@@SAU_M0@@AEAU_M0@@0U_M1@@@Z"(ptr dereferenceable(8), ptr, ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"??$ExchangeOr@U_M0@@U_M1@@@Interlocked@Threading@System@bf@@SAU_M0@@AEAU_M0@@0U_M1@@@Z"(ptr dereferenceable(8), ptr, ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"??$Sub@U_M0@@U_M1@@@Interlocked@Threading@System@bf@@SAU_M0@@AEAU_M0@@0U_M1@@@Z"(ptr dereferenceable(8), ptr, ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"??$Sub@U_M0@@U_M1@@@i96$Interlocked@Threading@System@bf@@SAU_M0@@AEAU_M0@@0U_M1@@@Z"(ptr dereferenceable(8), ptr, ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"??$ExchangeSub@U_M0@@U_M1@@@Interlocked@Threading@System@bf@@SAU_M0@@AEAU_M0@@0U_M1@@@Z"(ptr dereferenceable(8), ptr, ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"??$ExchangeSub@U_M0@@U_M1@@@i98$Interlocked@Threading@System@bf@@SAU_M0@@AEAU_M0@@0U_M1@@@Z"(ptr dereferenceable(8), ptr, ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"??$Decrement@U_M0@@U_M1@@@Interlocked@Threading@System@bf@@SAU_M0@@AEAU_M0@@U_M1@@@Z"(ptr dereferenceable(8), ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"??$Xor@U_M0@@U_M1@@@Interlocked@Threading@System@bf@@SAU_M0@@AEAU_M0@@0U_M1@@@Z"(ptr dereferenceable(8), ptr, ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"??$ExchangeXor@U_M0@@U_M1@@@Interlocked@Threading@System@bf@@SAU_M0@@AEAU_M0@@0U_M1@@@Z"(ptr dereferenceable(8), ptr, ptr) #0

; Function Attrs: noreturn nounwind uwtable
define void @"?FailOnDataSize@Interlocked@Threading@System@bf@@CAXXZ"() #1 {
entry:
  call void @"?FatalError@Runtime@System@bf@@SAXPEAVString@23@0Tint@@@Z"(ptr @__bfStrObj405, ptr @__bfStrObj406, i64 964) #2
  unreachable

exit:                                             ; No predecessors!
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define ptr @"??$CompareExchange@PEAVNumberFormatInfo@Globalization@System@bf@@W4RMWAtomicOrdering@Interlocked@Threading@23@$$04@Interlocked@Threading@System@bf@@SAPEAVNumberFormatInfo@Globalization@34@AEAPEAVNumberFormatInfo@Globalization@System@bf@@PEAV0123@1W4RMWAtomicOrdering@Interlocked@Threading@23@$$04@Z"(ptr dereferenceable(8) %location, ptr %comparand, ptr %value) #0 {
entry:
  %location.addr = alloca ptr, align 8
  %__return = alloca ptr, align 8
  %value1 = alloca ptr, align 8
  %comparand2 = alloca ptr, align 8
  %result = alloca i64, align 8
  store ptr %location, ptr %location.addr, align 8
  store ptr %value, ptr %value1, align 8
  store ptr %comparand, ptr %comparand2, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %0 = load ptr, ptr %location.addr, align 8
  %1 = load i64, ptr %comparand2, align 8
  %2 = load i64, ptr %value1, align 8
  %3 = cmpxchg ptr %0, i64 %1, i64 %2 seq_cst seq_cst, align 8
  %4 = extractvalue { i64, i1 } %3, 0
  store i64 %4, ptr %result, align 8
  %5 = load ptr, ptr %result, align 8
  store ptr %5, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %newScope
  %6 = load ptr, ptr %__return, align 8
  ret ptr %6
}

; Function Attrs: noreturn nounwind uwtable
declare void @"?FatalError@Runtime@System@bf@@SAXPEAVString@23@0Tint@@@Z"(ptr, ptr, i64) #1

; Function Attrs: alwaysinline nounwind uwtable
define void @"??$Fence@W4FenceAtomicOrdering@Interlocked@Threading@System@bf@@$$04@Interlocked@Threading@System@bf@@SAXW4FenceAtomicOrdering@Interlocked@Threading@System@bf@@$$04@Z"() #0 {
entry:
  fence seq_cst
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

attributes #0 = { alwaysinline nounwind uwtable }
attributes #1 = { noreturn nounwind uwtable }
attributes #2 = { noreturn }
