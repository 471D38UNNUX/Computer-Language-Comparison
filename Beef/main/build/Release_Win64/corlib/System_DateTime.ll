; ModuleID = 'System_DateTime'
source_filename = "System_DateTime"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.DateTime@System@bf" = type <{ %"corlib.ValueType@System@bf", i64 }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.?$Result@_J@System@bf" = type opaque
%"corlib.?$Result@Tint@@@System@bf" = type opaque
%"corlib.?$Result@_N@System@bf" = type opaque
%"corlib.?$Result@UDateTime@System@bf@@@System@bf" = type opaque
%"corlib.Array@System@bf" = type <{ %"corlib.Object@System@bf", i32 }>
%"corlib.?$Array1@H@System@bf" = type <{ %"corlib.Array@System@bf", i32 }>

@"?DaysToMonth365@DateTime@System@bf@@2PEAV?$Array1@H@23@A" = global ptr null, align 8
@"?DaysToMonth366@DateTime@System@bf@@2PEAV?$Array1@H@23@A" = global ptr null, align 8
@"?MinValue@DateTime@System@bf@@2U123@A" = global %"corlib.DateTime@System@bf" zeroinitializer, align 8
@"?MaxValue@DateTime@System@bf@@2U123@A" = global %"corlib.DateTime@System@bf" zeroinitializer, align 8
@didStaticInit = internal global i1 false
@"?sBfClassVData@?$Array1@H@System@bf@@2UClassVData@23@A" = external constant [4 x ptr]
@"?sBfClassVData@String@System@bf@@2UClassVData@23@A" = external constant [8 x ptr]
@__bfStrObj30 = external constant %"corlib.String@System@bf"
@__bfStrObj417 = external constant %"corlib.String@System@bf"

; Function Attrs: nounwind uwtable
declare i64 @"?get__InternalTicks__im@DateTime@System@bf@@AEAA_JXZ"(i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?get__InternalKind__im@DateTime@System@bf@@AEAA_KXZ"(i64) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@DateTime@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@DateTime@System@bf@@QEAAX_J@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@DateTime@System@bf@@AEAAX_K@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@DateTime@System@bf@@QEAAX_JW4DateTimeKind@23@@Z"(ptr %this, i64 %ticks, i8 %kind) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %1 = icmp slt i64 %ticks, 0
  br i1 %1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %newScope
  %2 = icmp sgt i64 %ticks, 3155378975999999999
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %newScope
  %3 = phi i1 [ true, %newScope ], [ %2, %lor.rhs ]
  br i1 %3, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  call void @"?FatalError@Runtime@System@bf@@SAXPEAVString@23@0Tint@@@Z"(ptr @__bfStrObj30, ptr @__bfStrObj417, i64 131) #2
  unreachable

if.end:                                           ; preds = %lor.end
  %4 = icmp slt i8 %kind, 0
  br i1 %4, label %lor.end2, label %lor.rhs1

lor.rhs1:                                         ; preds = %if.end
  %5 = icmp sgt i8 %kind, 2
  br label %lor.end2

lor.end2:                                         ; preds = %lor.rhs1, %if.end
  %6 = phi i1 [ true, %if.end ], [ %5, %lor.rhs1 ]
  br i1 %6, label %if.then3, label %if.end4

if.then3:                                         ; preds = %lor.end2
  call void @"?FatalError@Runtime@System@bf@@SAXPEAVString@23@0Tint@@@Z"(ptr @__bfStrObj30, ptr @__bfStrObj417, i64 135) #2
  unreachable

if.end4:                                          ; preds = %lor.end2
  %7 = getelementptr inbounds %"corlib.DateTime@System@bf", ptr %0, i32 0, i32 1
  %8 = zext i8 %kind to i64
  %9 = shl i64 %8, 62
  %10 = or i64 %ticks, %9
  store i64 %10, ptr %7, align 8
  br label %exit

exit:                                             ; preds = %if.end4
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@DateTime@System@bf@@QEAAX_JW4DateTimeKind@23@_N@Z"(ptr, i64, i8, i1 zeroext) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@DateTime@System@bf@@QEAAXTint@@00@Z"(ptr, i64, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@DateTime@System@bf@@QEAAXTint@@00000@Z"(ptr, i64, i64, i64, i64, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?DateToTicks@DateTime@System@bf@@CA?AU?$Result@_J@23@Tint@@00@Z"(ptr noalias sret(%"corlib.?$Result@_J@System@bf"), i64, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@DateTime@System@bf@@QEAAXTint@@000000@Z"(ptr, i64, i64, i64, i64, i64, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?TimeToTicks@DateTime@System@bf@@CA?AU?$Result@_J@23@Tint@@00@Z"(ptr noalias sret(%"corlib.?$Result@_J@System@bf"), i64, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?DaysInMonth@DateTime@System@bf@@SA?AU?$Result@Tint@@@23@Tint@@0@Z"(ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?IsLeapYear@DateTime@System@bf@@SA?AU?$Result@_N@23@Tint@@@Z"(ptr noalias sret(%"corlib.?$Result@_N@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?get__Date__im@DateTime@System@bf@@QEAA?AU123@XZ"(ptr noalias sret(%"corlib.DateTime@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare i32 @"?GetDatePart__im@DateTime@System@bf@@AEAAHH@Z"(i64, i32) #0

; Function Attrs: nounwind uwtable
declare i32 @"?get__Day__im@DateTime@System@bf@@QEAAHXZ"(i64) #0

; Function Attrs: nounwind uwtable
declare i8 @"?get__DayOfWeek__im@DateTime@System@bf@@QEAA?AW4DayOfWeek@23@XZ"(i64) #0

; Function Attrs: nounwind uwtable
declare i32 @"?get__DayOfYear__im@DateTime@System@bf@@QEAAHXZ"(i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?GetHashCode__im@DateTime@System@bf@@QEAATint@@XZ"(i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?get__Hour__im@DateTime@System@bf@@QEAATint@@XZ"(i64) #0

; Function Attrs: nounwind uwtable
declare i1 @"?IsAmbiguousDaylightSavingTime__im@DateTime@System@bf@@AEAA_NXZ"(i64) #0

; Function Attrs: nounwind uwtable
declare i8 @"?get__Kind__im@DateTime@System@bf@@QEAA?AW4DateTimeKind@23@XZ"(i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?get__Millisecond__im@DateTime@System@bf@@QEAATint@@XZ"(i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?get__Minute__im@DateTime@System@bf@@QEAATint@@XZ"(i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?get__Second__im@DateTime@System@bf@@QEAATint@@XZ"(i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?get__Month__im@DateTime@System@bf@@QEAATint@@XZ"(i64) #0

; Function Attrs: nounwind uwtable
declare void @"?get__Now@DateTime@System@bf@@SA?AU123@XZ"(ptr noalias sret(%"corlib.DateTime@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?get__UtcNow@DateTime@System@bf@@SA?AU123@XZ"(ptr noalias sret(%"corlib.DateTime@System@bf")) #0

; Function Attrs: nounwind uwtable
declare i64 @"?get__Ticks__im@DateTime@System@bf@@QEAA_JXZ"(i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?get__TimeOfDay__im@DateTime@System@bf@@QEAAVTimeSpan@23@XZ"(i64) #0

; Function Attrs: nounwind uwtable
declare void @"?get__Today@DateTime@System@bf@@SA?AU123@XZ"(ptr noalias sret(%"corlib.DateTime@System@bf")) #0

; Function Attrs: nounwind uwtable
declare i32 @"?get__Year__im@DateTime@System@bf@@QEAAHXZ"(i64) #0

; Function Attrs: nounwind uwtable
declare i1 @"?IsLeapYear@DateTime@System@bf@@SA_NH@Z"(i32) #0

; Function Attrs: nounwind uwtable
declare void @"?SpecifyKind@DateTime@System@bf@@SA?AU123@U123@W4DateTimeKind@23@@Z"(ptr noalias sret(%"corlib.DateTime@System@bf"), i64, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?FromFileTime@DateTime@System@bf@@SA?AU123@_J@Z"(ptr noalias sret(%"corlib.DateTime@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?FromFileTimeUtc@DateTime@System@bf@@SA?AU123@_J@Z"(ptr noalias sret(%"corlib.DateTime@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?ToFileTime__im@DateTime@System@bf@@QEAA_JXZ"(i64) #0

; Function Attrs: nounwind uwtable
declare void @"?ToFileTimeUtc__im@DateTime@System@bf@@QEAA?AU?$Result@_J@23@XZ"(ptr noalias sret(%"corlib.?$Result@_J@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?Subtract__im@DateTime@System@bf@@QEAAVTimeSpan@23@U123@@Z"(i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?FromBinaryRaw@DateTime@System@bf@@SA?AU?$Result@?AUDateTime@System@bf@@@23@_J@Z"(ptr noalias sret(%"corlib.?$Result@UDateTime@System@bf@@@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?ToBinaryRaw__im@DateTime@System@bf@@QEAA_JXZ"(i64) #0

; Function Attrs: nounwind uwtable
declare void @"?AddTicks__im@DateTime@System@bf@@QEAA?AU?$Result@?AUDateTime@System@bf@@@23@_J@Z"(ptr noalias sret(%"corlib.?$Result@UDateTime@System@bf@@@System@bf"), i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Add__im@DateTime@System@bf@@AEAA?AU?$Result@?AUDateTime@System@bf@@@23@NTint@@@Z"(ptr noalias sret(%"corlib.?$Result@UDateTime@System@bf@@@System@bf"), i64, double, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?AddYears__im@DateTime@System@bf@@QEAA?AU?$Result@?AUDateTime@System@bf@@@23@Tint@@@Z"(ptr noalias sret(%"corlib.?$Result@UDateTime@System@bf@@@System@bf"), i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?AddDays__im@DateTime@System@bf@@QEAA?AU123@N@Z"(ptr noalias sret(%"corlib.DateTime@System@bf"), i64, double) #0

; Function Attrs: nounwind uwtable
declare void @"?AddHours__im@DateTime@System@bf@@QEAA?AU123@N@Z"(ptr noalias sret(%"corlib.DateTime@System@bf"), i64, double) #0

; Function Attrs: nounwind uwtable
declare void @"?AddMilliseconds__im@DateTime@System@bf@@QEAA?AU123@N@Z"(ptr noalias sret(%"corlib.DateTime@System@bf"), i64, double) #0

; Function Attrs: nounwind uwtable
declare void @"?AddMinutes__im@DateTime@System@bf@@QEAA?AU123@N@Z"(ptr noalias sret(%"corlib.DateTime@System@bf"), i64, double) #0

; Function Attrs: nounwind uwtable
declare void @"?AddMonths__im@DateTime@System@bf@@QEAA?AU?$Result@?AUDateTime@System@bf@@@23@Tint@@@Z"(ptr noalias sret(%"corlib.?$Result@UDateTime@System@bf@@@System@bf"), i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?AddSeconds__im@DateTime@System@bf@@QEAA?AU123@N@Z"(ptr noalias sret(%"corlib.DateTime@System@bf"), i64, double) #0

; Function Attrs: nounwind uwtable
declare i64 @"?__cmp__DateTime@System@bf@@SATint@@U012@0@Z"(i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"??HDateTime@System@bf@@SA?AU?$Result@?AUDateTime@System@bf@@@12@U012@VTimeSpan@12@@Z"(ptr noalias sret(%"corlib.?$Result@UDateTime@System@bf@@@System@bf"), i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Subtract__im@DateTime@System@bf@@QEAA?AU?$Result@?AUDateTime@System@bf@@@23@VTimeSpan@23@@Z"(ptr noalias sret(%"corlib.?$Result@UDateTime@System@bf@@@System@bf"), i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"??GDateTime@System@bf@@SA?AU012@U012@VTimeSpan@12@@Z"(ptr noalias sret(%"corlib.DateTime@System@bf"), i64, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"??GDateTime@System@bf@@SAVTimeSpan@12@U012@0@Z"(i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?ToLocalTime__im@DateTime@System@bf@@QEAA?AU123@XZ"(ptr noalias sret(%"corlib.DateTime@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?ToLocalTime__im@DateTime@System@bf@@AEAA?AU123@_N@Z"(ptr noalias sret(%"corlib.DateTime@System@bf"), i64, i1 zeroext) #0

; Function Attrs: nounwind uwtable
declare void @"?ToLongDateString__im@DateTime@System@bf@@QEAAXPEAVString@23@@Z"(i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?ToLongTimeString__im@DateTime@System@bf@@QEAAXPEAVString@23@@Z"(i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?ToShortDateString__im@DateTime@System@bf@@QEAAXPEAVString@23@@Z"(i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?ToShortTimeString__im@DateTime@System@bf@@QEAAXPEAVString@23@@Z"(i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@DateTime@System@bf@@QEAAXPEAVString@23@0@Z"(i64, ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@DateTime@System@bf@@QEAAXPEAVString@23@PEAVIFormatProvider@23@@Z"(i64, ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@DateTime@System@bf@@QEAAXPEAVString@23@0PEAVIFormatProvider@23@@Z"(i64, ptr, ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?ToUniversalTime__im@DateTime@System@bf@@QEAA?AU123@XZ"(ptr noalias sret(%"corlib.DateTime@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?TryCreate@DateTime@System@bf@@CA?AU?$Result@?AUDateTime@System@bf@@@23@Tint@@000000@Z"(ptr noalias sret(%"corlib.?$Result@UDateTime@System@bf@@@System@bf"), i64, i64, i64, i64, i64, i64, i64) #0

; Function Attrs: nounwind uwtable
define void @"?__BfStaticDtor@DateTime@System@bf@@SAXXZ"() #0 {
entry:
  %0 = load ptr, ptr @"?DaysToMonth366@DateTime@System@bf@@2PEAV?$Array1@H@23@A", align 8
  %1 = icmp ne ptr %0, null
  br i1 %1, label %delete.body, label %delete.end

delete.body:                                      ; preds = %entry
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds ptr, ptr %2, i32 3
  %4 = load ptr, ptr %3, align 8
  call void %4(ptr %0)
  call void @tc_free(ptr %0)
  br label %delete.end

delete.end:                                       ; preds = %delete.body, %entry
  %5 = load ptr, ptr @"?DaysToMonth365@DateTime@System@bf@@2PEAV?$Array1@H@23@A", align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %delete.body1, label %delete.end2

delete.body1:                                     ; preds = %delete.end
  %7 = load ptr, ptr %5, align 8
  %8 = getelementptr inbounds ptr, ptr %7, i32 3
  %9 = load ptr, ptr %8, align 8
  call void %9(ptr %5)
  call void @tc_free(ptr %5)
  br label %delete.end2

delete.end2:                                      ; preds = %delete.body1, %delete.end
  br label %exit

exit:                                             ; preds = %delete.end2
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfStaticCtor@DateTime@System@bf@@SAXXZ"() #0 {
entry:
  %0 = load i1, ptr @didStaticInit, align 1
  br i1 %0, label %exit, label %init1

init1:                                            ; preds = %entry
  store i1 true, ptr @didStaticInit, align 1
  %1 = call ptr @tc_malloc(i64 64)
  %2 = getelementptr inbounds %"corlib.Object@System@bf", ptr %1, i32 0, i32 0
  store ptr @"?sBfClassVData@?$Array1@H@System@bf@@2UClassVData@23@A", ptr %2, align 8
  call void @"?__BfCtor@?$Array1@H@System@bf@@QEAAXXZ"(ptr %1)
  %3 = getelementptr inbounds %"corlib.Array@System@bf", ptr %1, i32 0, i32 1
  store i32 13, ptr %3, align 4
  %4 = getelementptr inbounds %"corlib.?$Array1@H@System@bf", ptr %1, i32 0, i32 1
  %5 = getelementptr inbounds i32, ptr %4, i32 0
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds i32, ptr %4, i32 1
  store i32 31, ptr %6, align 4
  %7 = getelementptr inbounds i32, ptr %4, i32 2
  store i32 59, ptr %7, align 4
  %8 = getelementptr inbounds i32, ptr %4, i32 3
  store i32 90, ptr %8, align 4
  %9 = getelementptr inbounds i32, ptr %4, i32 4
  store i32 120, ptr %9, align 4
  %10 = getelementptr inbounds i32, ptr %4, i32 5
  store i32 151, ptr %10, align 4
  %11 = getelementptr inbounds i32, ptr %4, i32 6
  store i32 181, ptr %11, align 4
  %12 = getelementptr inbounds i32, ptr %4, i32 7
  store i32 212, ptr %12, align 4
  %13 = getelementptr inbounds i32, ptr %4, i32 8
  store i32 243, ptr %13, align 4
  %14 = getelementptr inbounds i32, ptr %4, i32 9
  store i32 273, ptr %14, align 4
  %15 = getelementptr inbounds i32, ptr %4, i32 10
  store i32 304, ptr %15, align 4
  %16 = getelementptr inbounds i32, ptr %4, i32 11
  store i32 334, ptr %16, align 4
  %17 = getelementptr inbounds i32, ptr %4, i32 12
  store i32 365, ptr %17, align 4
  store ptr %1, ptr @"?DaysToMonth365@DateTime@System@bf@@2PEAV?$Array1@H@23@A", align 8
  %18 = call ptr @tc_malloc(i64 64)
  %19 = getelementptr inbounds %"corlib.Object@System@bf", ptr %18, i32 0, i32 0
  store ptr @"?sBfClassVData@?$Array1@H@System@bf@@2UClassVData@23@A", ptr %19, align 8
  call void @"?__BfCtor@?$Array1@H@System@bf@@QEAAXXZ"(ptr %18)
  %20 = getelementptr inbounds %"corlib.Array@System@bf", ptr %18, i32 0, i32 1
  store i32 13, ptr %20, align 4
  %21 = getelementptr inbounds %"corlib.?$Array1@H@System@bf", ptr %18, i32 0, i32 1
  %22 = getelementptr inbounds i32, ptr %21, i32 0
  store i32 0, ptr %22, align 4
  %23 = getelementptr inbounds i32, ptr %21, i32 1
  store i32 31, ptr %23, align 4
  %24 = getelementptr inbounds i32, ptr %21, i32 2
  store i32 60, ptr %24, align 4
  %25 = getelementptr inbounds i32, ptr %21, i32 3
  store i32 91, ptr %25, align 4
  %26 = getelementptr inbounds i32, ptr %21, i32 4
  store i32 121, ptr %26, align 4
  %27 = getelementptr inbounds i32, ptr %21, i32 5
  store i32 152, ptr %27, align 4
  %28 = getelementptr inbounds i32, ptr %21, i32 6
  store i32 182, ptr %28, align 4
  %29 = getelementptr inbounds i32, ptr %21, i32 7
  store i32 213, ptr %29, align 4
  %30 = getelementptr inbounds i32, ptr %21, i32 8
  store i32 244, ptr %30, align 4
  %31 = getelementptr inbounds i32, ptr %21, i32 9
  store i32 274, ptr %31, align 4
  %32 = getelementptr inbounds i32, ptr %21, i32 10
  store i32 305, ptr %32, align 4
  %33 = getelementptr inbounds i32, ptr %21, i32 11
  store i32 335, ptr %33, align 4
  %34 = getelementptr inbounds i32, ptr %21, i32 12
  store i32 366, ptr %34, align 4
  store ptr %18, ptr @"?DaysToMonth366@DateTime@System@bf@@2PEAV?$Array1@H@23@A", align 8
  call void @"?__BfCtor@DateTime@System@bf@@QEAAX_JW4DateTimeKind@23@@Z"(ptr @"?MinValue@DateTime@System@bf@@2U123@A", i64 0, i8 0)
  %35 = load %"corlib.DateTime@System@bf", ptr @"?MinValue@DateTime@System@bf@@2U123@A", align 8
  call void @"?__BfCtor@DateTime@System@bf@@QEAAX_JW4DateTimeKind@23@@Z"(ptr @"?MaxValue@DateTime@System@bf@@2U123@A", i64 3155378975999999999, i8 0)
  %36 = load %"corlib.DateTime@System@bf", ptr @"?MaxValue@DateTime@System@bf@@2U123@A", align 8
  br label %exit

exit:                                             ; preds = %init1, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?GCMarkStaticMembers@DateTime@System@bf@@KAXXZ"() #0

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@DateTime@System@bf@@QEAAXPEAVString@23@@Z"(i64, ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface__im@DateTime@System@bf@@IEAAPEAVObject@23@H@Z"(i64, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers__im@DateTime@System@bf@@IEAAXXZ"(ptr) #0

declare void @tc_free(ptr)

declare ptr @tc_malloc(i64)

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@?$Array1@H@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: noreturn nounwind uwtable
declare void @"?FatalError@Runtime@System@bf@@SAXPEAVString@23@0Tint@@@Z"(ptr, ptr, i64) #1

attributes #0 = { nounwind uwtable }
attributes #1 = { noreturn nounwind uwtable }
attributes #2 = { noreturn }
