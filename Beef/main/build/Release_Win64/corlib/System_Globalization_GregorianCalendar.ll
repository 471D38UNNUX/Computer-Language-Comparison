; ModuleID = 'System_Globalization_GregorianCalendar'
source_filename = "System_Globalization_GregorianCalendar"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.GregorianCalendar@Globalization@System@bf" = type <{ %"corlib.Calendar@Globalization@System@bf", i8 }>
%"corlib.Calendar@Globalization@System@bf" = type <{ %"corlib.Object@System@bf", i64, i64, i1 }>
%"corlib.?$Result@_J@System@bf" = type opaque
%"corlib.Array@System@bf" = type <{ %"corlib.Object@System@bf", i32 }>
%"corlib.?$Array1@Tint@@@System@bf" = type <{ %"corlib.Array@System@bf", [4 x i8], i64 }>
%"corlib.DateTime@System@bf" = type opaque
%"corlib.?$Result@UDateTime@System@bf@@@System@bf" = type opaque
%"corlib.?$Result@Tint@@@System@bf" = type opaque
%"corlib.?$Result@W4DayOfWeek@System@bf@@@System@bf" = type opaque
%"corlib.?$Result@_N@System@bf" = type opaque

@"?DaysToMonth365@GregorianCalendar@Globalization@System@bf@@2PEAV?$Array1@Tint@@@34@A" = global ptr null, align 8
@"?DaysToMonth366@GregorianCalendar@Globalization@System@bf@@2PEAV?$Array1@Tint@@@34@A" = global ptr null, align 8
@"?s_defaultInstance@GregorianCalendar@Globalization@System@bf@@2PEAVCalendar@234@C" = global ptr null, align 8
@didStaticInit = internal global i1 false
@"?sBfClassVData@?$Array1@Tint@@@System@bf@@2UClassVData@23@A" = external constant [4 x ptr]
@"?sBfClassVData@String@System@bf@@2UClassVData@23@A" = external constant [8 x ptr]
@__bfStrObj30 = external constant %"corlib.String@System@bf"
@__bfStrObj416 = external constant %"corlib.String@System@bf"

; Function Attrs: nounwind uwtable
declare ptr @"?GetDefaultInstance@GregorianCalendar@Globalization@System@bf@@CAPEAVCalendar@234@XZ"() #0

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@GregorianCalendar@Globalization@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  call void @"?__BfCtor@GregorianCalendar@Globalization@System@bf@@QEAAXW4GregorianCalendarTypes@234@@Z"(ptr %0, i8 1)
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@GregorianCalendar@Globalization@System@bf@@QEAAXW4GregorianCalendarTypes@234@@Z"(ptr %this, i8 %type) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  call void @"?__BfCtor@Calendar@Globalization@System@bf@@IEAAXXZ"(ptr %0)
  br label %newScope

newScope:                                         ; preds = %entry
  %1 = sext i8 %type to i64
  %2 = icmp slt i64 %1, 1
  br i1 %2, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %newScope
  %3 = sext i8 %type to i64
  %4 = icmp sgt i64 %3, 12
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %newScope
  %5 = phi i1 [ true, %newScope ], [ %4, %lor.rhs ]
  br i1 %5, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  call void @"?FatalError@Runtime@System@bf@@SAXPEAVString@23@0Tint@@@Z"(ptr @__bfStrObj30, ptr @__bfStrObj416, i64 139) #3
  unreachable

if.end:                                           ; preds = %lor.end
  call void @"?EndContractBlock@Contract@Contracts@Diagnostics@System@bf@@SAXXZ"()
  %6 = getelementptr inbounds %"corlib.GregorianCalendar@Globalization@System@bf", ptr %0, i32 0, i32 1
  store i8 %type, ptr %6, align 1
  br label %exit

exit:                                             ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
declare i8 @"?get__CalendarType@GregorianCalendar@Globalization@System@bf@@UEAA?AW4GregorianCalendarTypes@234@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?set__CalendarType@GregorianCalendar@Globalization@System@bf@@UEAAXW4GregorianCalendarTypes@234@@Z"(ptr, i8) #0

; Function Attrs: nounwind uwtable
declare i64 @"?GetDatePart@GregorianCalendar@Globalization@System@bf@@MEAATint@@_JTint@@@Z"(ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetAbsoluteDate@GregorianCalendar@Globalization@System@bf@@CA?AU?$Result@_J@34@Tint@@00@Z"(ptr noalias sret(%"corlib.?$Result@_J@System@bf"), i64, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?DateToTicks@GregorianCalendar@Globalization@System@bf@@MEAA?AU?$Result@_J@34@Tint@@00@Z"(ptr, ptr noalias sret(%"corlib.?$Result@_J@System@bf"), i64, i64, i64) #0

; Function Attrs: nounwind uwtable
define void @"?__BfCtorClear@GregorianCalendar@Globalization@System@bf@@AEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 18, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfStaticDtor@GregorianCalendar@Globalization@System@bf@@SAXXZ"() #0 {
entry:
  %0 = load ptr, ptr @"?s_defaultInstance@GregorianCalendar@Globalization@System@bf@@2PEAVCalendar@234@C", align 8
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
  %5 = load ptr, ptr @"?DaysToMonth366@GregorianCalendar@Globalization@System@bf@@2PEAV?$Array1@Tint@@@34@A", align 8
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
  %10 = load ptr, ptr @"?DaysToMonth365@GregorianCalendar@Globalization@System@bf@@2PEAV?$Array1@Tint@@@34@A", align 8
  %11 = icmp ne ptr %10, null
  br i1 %11, label %delete.body3, label %delete.end4

delete.body3:                                     ; preds = %delete.end2
  %12 = load ptr, ptr %10, align 8
  %13 = getelementptr inbounds ptr, ptr %12, i32 3
  %14 = load ptr, ptr %13, align 8
  call void %14(ptr %10)
  call void @tc_free(ptr %10)
  br label %delete.end4

delete.end4:                                      ; preds = %delete.body3, %delete.end2
  br label %exit

exit:                                             ; preds = %delete.end4
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfStaticCtor@GregorianCalendar@Globalization@System@bf@@SAXXZ"() #0 {
entry:
  %0 = load i1, ptr @didStaticInit, align 1
  br i1 %0, label %exit, label %init1

init1:                                            ; preds = %entry
  store i1 true, ptr @didStaticInit, align 1
  %1 = call ptr @tc_malloc(i64 120)
  %2 = getelementptr inbounds %"corlib.Object@System@bf", ptr %1, i32 0, i32 0
  store ptr @"?sBfClassVData@?$Array1@Tint@@@System@bf@@2UClassVData@23@A", ptr %2, align 8
  call void @"?__BfCtor@?$Array1@Tint@@@System@bf@@QEAAXXZ"(ptr %1)
  %3 = getelementptr inbounds %"corlib.Array@System@bf", ptr %1, i32 0, i32 1
  store i32 13, ptr %3, align 4
  %4 = getelementptr inbounds %"corlib.?$Array1@Tint@@@System@bf", ptr %1, i32 0, i32 2
  %5 = getelementptr inbounds i64, ptr %4, i32 0
  store i64 0, ptr %5, align 8
  %6 = getelementptr inbounds i64, ptr %4, i32 1
  store i64 31, ptr %6, align 8
  %7 = getelementptr inbounds i64, ptr %4, i32 2
  store i64 59, ptr %7, align 8
  %8 = getelementptr inbounds i64, ptr %4, i32 3
  store i64 90, ptr %8, align 8
  %9 = getelementptr inbounds i64, ptr %4, i32 4
  store i64 120, ptr %9, align 8
  %10 = getelementptr inbounds i64, ptr %4, i32 5
  store i64 151, ptr %10, align 8
  %11 = getelementptr inbounds i64, ptr %4, i32 6
  store i64 181, ptr %11, align 8
  %12 = getelementptr inbounds i64, ptr %4, i32 7
  store i64 212, ptr %12, align 8
  %13 = getelementptr inbounds i64, ptr %4, i32 8
  store i64 243, ptr %13, align 8
  %14 = getelementptr inbounds i64, ptr %4, i32 9
  store i64 273, ptr %14, align 8
  %15 = getelementptr inbounds i64, ptr %4, i32 10
  store i64 304, ptr %15, align 8
  %16 = getelementptr inbounds i64, ptr %4, i32 11
  store i64 334, ptr %16, align 8
  %17 = getelementptr inbounds i64, ptr %4, i32 12
  store i64 365, ptr %17, align 8
  store ptr %1, ptr @"?DaysToMonth365@GregorianCalendar@Globalization@System@bf@@2PEAV?$Array1@Tint@@@34@A", align 8
  %18 = call ptr @tc_malloc(i64 120)
  %19 = getelementptr inbounds %"corlib.Object@System@bf", ptr %18, i32 0, i32 0
  store ptr @"?sBfClassVData@?$Array1@Tint@@@System@bf@@2UClassVData@23@A", ptr %19, align 8
  call void @"?__BfCtor@?$Array1@Tint@@@System@bf@@QEAAXXZ"(ptr %18)
  %20 = getelementptr inbounds %"corlib.Array@System@bf", ptr %18, i32 0, i32 1
  store i32 13, ptr %20, align 4
  %21 = getelementptr inbounds %"corlib.?$Array1@Tint@@@System@bf", ptr %18, i32 0, i32 2
  %22 = getelementptr inbounds i64, ptr %21, i32 0
  store i64 0, ptr %22, align 8
  %23 = getelementptr inbounds i64, ptr %21, i32 1
  store i64 31, ptr %23, align 8
  %24 = getelementptr inbounds i64, ptr %21, i32 2
  store i64 60, ptr %24, align 8
  %25 = getelementptr inbounds i64, ptr %21, i32 3
  store i64 91, ptr %25, align 8
  %26 = getelementptr inbounds i64, ptr %21, i32 4
  store i64 121, ptr %26, align 8
  %27 = getelementptr inbounds i64, ptr %21, i32 5
  store i64 152, ptr %27, align 8
  %28 = getelementptr inbounds i64, ptr %21, i32 6
  store i64 182, ptr %28, align 8
  %29 = getelementptr inbounds i64, ptr %21, i32 7
  store i64 213, ptr %29, align 8
  %30 = getelementptr inbounds i64, ptr %21, i32 8
  store i64 244, ptr %30, align 8
  %31 = getelementptr inbounds i64, ptr %21, i32 9
  store i64 274, ptr %31, align 8
  %32 = getelementptr inbounds i64, ptr %21, i32 10
  store i64 305, ptr %32, align 8
  %33 = getelementptr inbounds i64, ptr %21, i32 11
  store i64 335, ptr %33, align 8
  %34 = getelementptr inbounds i64, ptr %21, i32 12
  store i64 366, ptr %34, align 8
  store ptr %18, ptr @"?DaysToMonth366@GregorianCalendar@Globalization@System@bf@@2PEAV?$Array1@Tint@@@34@A", align 8
  br label %exit

exit:                                             ; preds = %init1, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?GCMarkStaticMembers@GregorianCalendar@Globalization@System@bf@@KAXXZ"() #0

; Function Attrs: nounwind uwtable
declare void @"?get__MinSupportedDateTime@GregorianCalendar@Globalization@System@bf@@QEAA?AUDateTime@34@XZ"(ptr, ptr noalias sret(%"corlib.DateTime@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?get__MaxSupportedDateTime@GregorianCalendar@Globalization@System@bf@@QEAA?AUDateTime@34@XZ"(ptr, ptr noalias sret(%"corlib.DateTime@System@bf")) #0

; Function Attrs: nounwind uwtable
declare i8 @"?get__AlgorithmType@GregorianCalendar@Globalization@System@bf@@QEAA?AW4CalendarAlgorithmType@234@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?get__ID@GregorianCalendar@Globalization@System@bf@@IEAATint@@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?AddMonths@GregorianCalendar@Globalization@System@bf@@QEAA?AU?$Result@?AUDateTime@System@bf@@@34@UDateTime@34@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@UDateTime@System@bf@@@System@bf"), i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?AddYears@GregorianCalendar@Globalization@System@bf@@QEAA?AU?$Result@?AUDateTime@System@bf@@@34@UDateTime@34@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@UDateTime@System@bf@@@System@bf"), i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetDayOfMonth@GregorianCalendar@Globalization@System@bf@@QEAA?AU?$Result@Tint@@@34@UDateTime@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetDayOfWeek@GregorianCalendar@Globalization@System@bf@@QEAA?AU?$Result@?AW4DayOfWeek@System@bf@@@34@UDateTime@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@W4DayOfWeek@System@bf@@@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetDayOfYear@GregorianCalendar@Globalization@System@bf@@QEAA?AU?$Result@Tint@@@34@UDateTime@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetDaysInMonth@GregorianCalendar@Globalization@System@bf@@QEAA?AU?$Result@Tint@@@34@Tint@@00@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetDaysInYear@GregorianCalendar@Globalization@System@bf@@QEAA?AU?$Result@Tint@@@34@Tint@@0@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetEra@GregorianCalendar@Globalization@System@bf@@QEAA?AU?$Result@Tint@@@34@UDateTime@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__Eras@GregorianCalendar@Globalization@System@bf@@QEAAPEAV?$Array1@Tint@@@34@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetMonth@GregorianCalendar@Globalization@System@bf@@QEAA?AU?$Result@Tint@@@34@UDateTime@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetMonthsInYear@GregorianCalendar@Globalization@System@bf@@QEAA?AU?$Result@Tint@@@34@Tint@@0@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetYear@GregorianCalendar@Globalization@System@bf@@QEAA?AU?$Result@Tint@@@34@UDateTime@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?IsLeapDay@GregorianCalendar@Globalization@System@bf@@QEAA?AU?$Result@_N@34@Tint@@000@Z"(ptr, ptr noalias sret(%"corlib.?$Result@_N@System@bf"), i64, i64, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetLeapMonth@GregorianCalendar@Globalization@System@bf@@QEAA?AU?$Result@Tint@@@34@Tint@@0@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?IsLeapMonth@GregorianCalendar@Globalization@System@bf@@QEAA?AU?$Result@_N@34@Tint@@00@Z"(ptr, ptr noalias sret(%"corlib.?$Result@_N@System@bf"), i64, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?IsLeapYear@GregorianCalendar@Globalization@System@bf@@QEAA?AU?$Result@_N@34@Tint@@0@Z"(ptr, ptr noalias sret(%"corlib.?$Result@_N@System@bf"), i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?ToDateTime@GregorianCalendar@Globalization@System@bf@@QEAA?AU?$Result@?AUDateTime@System@bf@@@34@Tint@@0000000@Z"(ptr, ptr noalias sret(%"corlib.?$Result@UDateTime@System@bf@@@System@bf"), i64, i64, i64, i64, i64, i64, i64, i64) #0

; Function Attrs: nounwind uwtable
declare i1 @"?TryToDateTime@GregorianCalendar@Globalization@System@bf@@IEAA_NTint@@0000000AEAout$UDateTime@34@@Z"(ptr, i64, i64, i64, i64, i64, i64, i64, i64, ptr dereferenceable(8)) #0

; Function Attrs: nounwind uwtable
declare i64 @"?get__TwoDigitYearMax@GregorianCalendar@Globalization@System@bf@@QEAATint@@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?set__TwoDigitYearMax@GregorianCalendar@Globalization@System@bf@@QEAAXTint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?ToFourDigitYear@GregorianCalendar@Globalization@System@bf@@QEAA?AU?$Result@Tint@@@34@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@GregorianCalendar@Globalization@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@GregorianCalendar@Globalization@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers@GregorianCalendar@Globalization@System@bf@@IEAAXXZ"(ptr) #0

declare void @tc_free(ptr)

declare ptr @tc_malloc(i64)

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@?$Array1@Tint@@@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@Calendar@Globalization@System@bf@@IEAAXXZ"(ptr) #0

; Function Attrs: noreturn nounwind uwtable
declare void @"?FatalError@Runtime@System@bf@@SAXPEAVString@23@0Tint@@@Z"(ptr, ptr, i64) #2

; Function Attrs: nounwind uwtable
declare void @"?EndContractBlock@Contract@Contracts@Diagnostics@System@bf@@SAXXZ"() #0

attributes #0 = { nounwind uwtable }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { noreturn nounwind uwtable }
attributes #3 = { noreturn }
