; ModuleID = 'System_Globalization_Calendar'
source_filename = "System_Globalization_Calendar"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.DateTime@System@bf" = type opaque
%"corlib.Calendar@Globalization@System@bf" = type <{ %"corlib.Object@System@bf", i64, i64, i1 }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.?$Result@X@System@bf" = type opaque
%"corlib.?$Result@UDateTime@System@bf@@@System@bf" = type opaque
%"corlib.?$Result@Tint@@@System@bf" = type opaque
%"corlib.?$Result@W4DayOfWeek@System@bf@@@System@bf" = type opaque
%"corlib.?$Result@N@System@bf" = type opaque
%"corlib.?$Result@_N@System@bf" = type opaque
%"corlib.?$Result@_J@System@bf" = type opaque

; Function Attrs: nounwind uwtable
declare void @"?get__MinSupportedDateTime@Calendar@Globalization@System@bf@@UEAA?AUDateTime@34@XZ"(ptr, ptr noalias sret(%"corlib.DateTime@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?get__MaxSupportedDateTime@Calendar@Globalization@System@bf@@UEAA?AUDateTime@34@XZ"(ptr, ptr noalias sret(%"corlib.DateTime@System@bf")) #0

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@Calendar@Globalization@System@bf@@IEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %1 = getelementptr inbounds %"corlib.Calendar@Globalization@System@bf", ptr %0, i32 0, i32 1
  store i64 -1, ptr %1, align 8
  %2 = getelementptr inbounds %"corlib.Calendar@Globalization@System@bf", ptr %0, i32 0, i32 3
  store i1 false, ptr %2, align 1
  %3 = getelementptr inbounds %"corlib.Calendar@Globalization@System@bf", ptr %0, i32 0, i32 2
  store i64 -1, ptr %3, align 8
  br label %exit

exit:                                             ; preds = %newScope
  ret void
}

; Function Attrs: nounwind uwtable
declare i64 @"?get__ID@Calendar@Globalization@System@bf@@MEAATint@@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?get__BaseCalendarID@Calendar@Globalization@System@bf@@MEAATint@@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i8 @"?get__AlgorithmType@Calendar@Globalization@System@bf@@UEAA?AW4CalendarAlgorithmType@234@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsReadOnly@Calendar@Globalization@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?ReadOnly@Calendar@Globalization@System@bf@@SAPEAV1234@PEAV1234@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?VerifyWritable@Calendar@Globalization@System@bf@@AEAA?AU?$Result@X@34@XZ"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf")) #0

; Function Attrs: nounwind uwtable
define void @"?SetReadOnlyState@Calendar@Globalization@System@bf@@AEAAX_N@Z"(ptr %this, i1 zeroext %readOnly) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.Calendar@Globalization@System@bf", ptr %0, i32 0, i32 3
  store i1 %readOnly, ptr %1, align 1
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare i64 @"?get__CurrentEraValue@Calendar@Globalization@System@bf@@MEAATint@@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?CheckAddResult@Calendar@Globalization@System@bf@@CA?AU?$Result@X@34@_JUDateTime@34@1@Z"(ptr noalias sret(%"corlib.?$Result@X@System@bf"), i64, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Add@Calendar@Globalization@System@bf@@AEAA?AU?$Result@?AUDateTime@System@bf@@@34@UDateTime@34@NTint@@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@UDateTime@System@bf@@@System@bf"), i64, double, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?AddMilliseconds@Calendar@Globalization@System@bf@@UEAA?AU?$Result@?AUDateTime@System@bf@@@34@UDateTime@34@N@Z"(ptr, ptr noalias sret(%"corlib.?$Result@UDateTime@System@bf@@@System@bf"), i64, double) #0

; Function Attrs: nounwind uwtable
declare void @"?AddDays@Calendar@Globalization@System@bf@@UEAA?AU?$Result@?AUDateTime@System@bf@@@34@UDateTime@34@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@UDateTime@System@bf@@@System@bf"), i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?AddHours@Calendar@Globalization@System@bf@@UEAA?AU?$Result@?AUDateTime@System@bf@@@34@UDateTime@34@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@UDateTime@System@bf@@@System@bf"), i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?AddMinutes@Calendar@Globalization@System@bf@@UEAA?AU?$Result@?AUDateTime@System@bf@@@34@UDateTime@34@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@UDateTime@System@bf@@@System@bf"), i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?AddMonths@Calendar@Globalization@System@bf@@UEAA?AU?$Result@?AUDateTime@System@bf@@@34@UDateTime@34@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@UDateTime@System@bf@@@System@bf"), i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?AddSeconds@Calendar@Globalization@System@bf@@UEAA?AU?$Result@?AUDateTime@System@bf@@@34@UDateTime@34@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@UDateTime@System@bf@@@System@bf"), i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?AddWeeks@Calendar@Globalization@System@bf@@UEAA?AU?$Result@?AUDateTime@System@bf@@@34@UDateTime@34@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@UDateTime@System@bf@@@System@bf"), i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?AddYears@Calendar@Globalization@System@bf@@UEAA?AU?$Result@?AUDateTime@System@bf@@@34@UDateTime@34@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@UDateTime@System@bf@@@System@bf"), i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetDayOfMonth@Calendar@Globalization@System@bf@@UEAA?AU?$Result@Tint@@@34@UDateTime@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetDayOfWeek@Calendar@Globalization@System@bf@@UEAA?AU?$Result@?AW4DayOfWeek@System@bf@@@34@UDateTime@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@W4DayOfWeek@System@bf@@@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetDayOfYear@Calendar@Globalization@System@bf@@UEAA?AU?$Result@Tint@@@34@UDateTime@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetDaysInMonth@Calendar@Globalization@System@bf@@UEAA?AU?$Result@Tint@@@34@Tint@@0@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetDaysInMonth@Calendar@Globalization@System@bf@@UEAA?AU?$Result@Tint@@@34@Tint@@00@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetDaysInYear@Calendar@Globalization@System@bf@@UEAA?AU?$Result@Tint@@@34@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetDaysInYear@Calendar@Globalization@System@bf@@UEAA?AU?$Result@Tint@@@34@Tint@@0@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetEra@Calendar@Globalization@System@bf@@UEAA?AU?$Result@Tint@@@34@UDateTime@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__Eras@Calendar@Globalization@System@bf@@UEAAPEAV?$Array1@Tint@@@34@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetHour@Calendar@Globalization@System@bf@@UEAA?AU?$Result@Tint@@@34@UDateTime@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetMilliseconds@Calendar@Globalization@System@bf@@UEAA?AU?$Result@N@34@UDateTime@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@N@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetMinute@Calendar@Globalization@System@bf@@UEAA?AU?$Result@Tint@@@34@UDateTime@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetMonth@Calendar@Globalization@System@bf@@UEAA?AU?$Result@Tint@@@34@UDateTime@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetMonthsInYear@Calendar@Globalization@System@bf@@UEAA?AU?$Result@Tint@@@34@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetMonthsInYear@Calendar@Globalization@System@bf@@UEAA?AU?$Result@Tint@@@34@Tint@@0@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetSecond@Calendar@Globalization@System@bf@@UEAA?AU?$Result@Tint@@@34@UDateTime@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetFirstDayWeekOfYear@Calendar@Globalization@System@bf@@AEAA?AU?$Result@Tint@@@34@UDateTime@34@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetWeekOfYearFullDays@Calendar@Globalization@System@bf@@AEAA?AU?$Result@Tint@@@34@UDateTime@34@Tint@@1@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetWeekOfYearOfMinSupportedDateTime@Calendar@Globalization@System@bf@@AEAA?AU?$Result@Tint@@@34@Tint@@0@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?get__DaysInYearBeforeMinSupportedYear@Calendar@Globalization@System@bf@@MEAATint@@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetWeekOfYear@Calendar@Globalization@System@bf@@UEAA?AU?$Result@Tint@@@34@UDateTime@34@W4CalendarWeekRule@234@W4DayOfWeek@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64, i8, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?GetYear@Calendar@Globalization@System@bf@@UEAA?AU?$Result@Tint@@@34@UDateTime@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?IsLeapDay@Calendar@Globalization@System@bf@@UEAA?AU?$Result@_N@34@Tint@@00@Z"(ptr, ptr noalias sret(%"corlib.?$Result@_N@System@bf"), i64, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?IsLeapDay@Calendar@Globalization@System@bf@@UEAA?AU?$Result@_N@34@Tint@@000@Z"(ptr, ptr noalias sret(%"corlib.?$Result@_N@System@bf"), i64, i64, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?IsLeapMonth@Calendar@Globalization@System@bf@@UEAA?AU?$Result@_N@34@Tint@@0@Z"(ptr, ptr noalias sret(%"corlib.?$Result@_N@System@bf"), i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?IsLeapMonth@Calendar@Globalization@System@bf@@UEAA?AU?$Result@_N@34@Tint@@00@Z"(ptr, ptr noalias sret(%"corlib.?$Result@_N@System@bf"), i64, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetLeapMonth@Calendar@Globalization@System@bf@@UEAA?AU?$Result@Tint@@@34@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetLeapMonth@Calendar@Globalization@System@bf@@UEAA?AU?$Result@Tint@@@34@Tint@@0@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?IsLeapYear@Calendar@Globalization@System@bf@@UEAA?AU?$Result@_N@34@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@_N@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?IsLeapYear@Calendar@Globalization@System@bf@@UEAA?AU?$Result@_N@34@Tint@@0@Z"(ptr, ptr noalias sret(%"corlib.?$Result@_N@System@bf"), i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?ToDateTime@Calendar@Globalization@System@bf@@UEAA?AUDateTime@34@Tint@@000000@Z"(ptr, ptr noalias sret(%"corlib.DateTime@System@bf"), i64, i64, i64, i64, i64, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?ToDateTime@Calendar@Globalization@System@bf@@UEAA?AU?$Result@?AUDateTime@System@bf@@@34@Tint@@0000000@Z"(ptr, ptr noalias sret(%"corlib.?$Result@UDateTime@System@bf@@@System@bf"), i64, i64, i64, i64, i64, i64, i64, i64) #0

; Function Attrs: nounwind uwtable
declare i1 @"?TryToDateTime@Calendar@Globalization@System@bf@@MEAA_NTint@@0000000AEAout$UDateTime@34@@Z"(ptr, i64, i64, i64, i64, i64, i64, i64, i64, ptr dereferenceable(8)) #0

; Function Attrs: nounwind uwtable
declare i1 @"?IsValidYear@Calendar@Globalization@System@bf@@MEAA_NTint@@0@Z"(ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
declare i1 @"?IsValidMonth@Calendar@Globalization@System@bf@@MEAA_NTint@@00@Z"(ptr, i64, i64, i64) #0

; Function Attrs: nounwind uwtable
declare i1 @"?IsValidDay@Calendar@Globalization@System@bf@@MEAA_NTint@@000@Z"(ptr, i64, i64, i64, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?get__TwoDigitYearMax@Calendar@Globalization@System@bf@@UEAATint@@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?set__TwoDigitYearMax@Calendar@Globalization@System@bf@@UEAAXTint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?ToFourDigitYear@Calendar@Globalization@System@bf@@UEAA?AU?$Result@Tint@@@34@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?TimeToTicks@Calendar@Globalization@System@bf@@CA?AU?$Result@_J@34@Tint@@000@Z"(ptr noalias sret(%"corlib.?$Result@_J@System@bf"), i64, i64, i64, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?GetSystemTwoDigitYearSetting@Calendar@Globalization@System@bf@@KATint@@Tint@@0@Z"(i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@Calendar@Globalization@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@Calendar@Globalization@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@Calendar@Globalization@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers@Calendar@Globalization@System@bf@@IEAAXXZ"(ptr) #0

attributes #0 = { nounwind uwtable }
