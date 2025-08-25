; ModuleID = 'System_Globalization_DateTimeFormatInfo'
source_filename = "System_Globalization_DateTimeFormatInfo"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.Type@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, i32, i32, i32, i8, i8, i8 }>
%"corlib.DateTimeFormatInfo@Globalization@System@bf" = type <{ %"corlib.Object@System@bf", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i1, i8 }>
%"corlib.StringView@System@bf" = type opaque
%"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64, ptr }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$Result@PEAVObject@System@bf@@@System@bf" = type <{ %"corlib.Enum@System@bf", %"corlib.?$__TUPLE_val@PEAVObject@System@bf@@@bf", i8 }>
%"corlib.Enum@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.?$__TUPLE_val@PEAVObject@System@bf@@@bf" = type <{ %"corlib.Tuple@System@bf", ptr }>
%"corlib.Tuple@System@bf" = type <{ %"corlib.ValueType@System@bf" }>

@"?invariantInfo@DateTimeFormatInfo@Globalization@System@bf@@2PEAV1234@C" = global ptr null, align 8
@"?sBfClassVData@String@System@bf@@2UClassVData@23@A" = external constant [8 x ptr]
@__bfStrObj409 = external constant %"corlib.String@System@bf"
@__bfStrObj410 = external constant %"corlib.String@System@bf"
@__bfStrObj411 = external constant %"corlib.String@System@bf"
@__bfStrObj412 = external constant %"corlib.String@System@bf"
@__bfStrObj413 = external constant %"corlib.String@System@bf"
@__bfStrObj414 = external constant %"corlib.String@System@bf"
@__bfStrObj415 = external constant %"corlib.String@System@bf"
@"?sBfClassVData@?$List@PEAVObject@System@bf@@@Collections@System@bf@@2UClassVData@34@A" = external constant [21 x ptr]
@"?sBfTypeData@DateTimeFormatInfo@Globalization@System@bf@@2HA" = external constant %"corlib.Type@System@bf"

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@DateTimeFormatInfo@Globalization@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?AllocString@DateTimeFormatInfo@Globalization@System@bf@@QEAAPEAVString@34@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@DateTimeFormatInfo@Globalization@System@bf@@QEAAXPEAVCultureData@234@PEAVCalendar@234@@Z"(ptr %this, ptr %cultureData, ptr %calendar) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %1 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 2
  store ptr null, ptr %1, align 8
  %2 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 3
  store ptr null, ptr %2, align 8
  %3 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 4
  store ptr null, ptr %3, align 8
  %4 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 5
  store ptr @__bfStrObj409, ptr %4, align 8
  %5 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 6
  store ptr @__bfStrObj410, ptr %5, align 8
  %6 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 7
  store ptr @__bfStrObj411, ptr %6, align 8
  %7 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 8
  store ptr null, ptr %7, align 8
  %8 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 9
  store ptr null, ptr %8, align 8
  %9 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 10
  store ptr @__bfStrObj412, ptr %9, align 8
  %10 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 11
  store ptr null, ptr %10, align 8
  %11 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 12
  store ptr null, ptr %11, align 8
  %12 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 13
  store ptr null, ptr %12, align 8
  %13 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 14
  store i64 -1, ptr %13, align 8
  %14 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 15
  store i64 -1, ptr %14, align 8
  %15 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 16
  store ptr null, ptr %15, align 8
  %16 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 17
  store ptr null, ptr %16, align 8
  %17 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 18
  store ptr null, ptr %17, align 8
  %18 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 19
  store ptr null, ptr %18, align 8
  %19 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 20
  store ptr null, ptr %19, align 8
  %20 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 21
  store ptr null, ptr %20, align 8
  %21 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 22
  store ptr null, ptr %21, align 8
  %22 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 23
  store ptr null, ptr %22, align 8
  %23 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 24
  store ptr null, ptr %23, align 8
  %24 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 25
  store ptr @__bfStrObj413, ptr %24, align 8
  %25 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 26
  store ptr @__bfStrObj414, ptr %25, align 8
  %26 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 27
  store ptr @__bfStrObj415, ptr %26, align 8
  %27 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 28
  store ptr null, ptr %27, align 8
  %28 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 29
  store ptr null, ptr %28, align 8
  %29 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 30
  store ptr null, ptr %29, align 8
  %30 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 31
  store ptr null, ptr %30, align 8
  %31 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 32
  store ptr null, ptr %31, align 8
  %32 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 33
  store ptr null, ptr %32, align 8
  %33 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 34
  store ptr null, ptr %33, align 8
  %34 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 35
  store ptr null, ptr %34, align 8
  %35 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 36
  store ptr null, ptr %35, align 8
  %36 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 37
  store ptr null, ptr %36, align 8
  %37 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 38
  store ptr null, ptr %37, align 8
  %38 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 42
  store i1 false, ptr %38, align 1
  %39 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 43
  store i8 -1, ptr %39, align 1
  %40 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 39
  %41 = call ptr @tc_malloc(i64 24)
  %42 = getelementptr inbounds %"corlib.Object@System@bf", ptr %41, i32 0, i32 0
  store ptr @"?sBfClassVData@?$List@PEAVObject@System@bf@@@Collections@System@bf@@2UClassVData@34@A", ptr %42, align 8
  call void @"?__BfCtorClear@?$List@PEAVObject@System@bf@@@Collections@System@bf@@AEAAXXZ"(ptr %41)
  call void @"?__BfCtor@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXXZ"(ptr %41)
  store ptr %41, ptr %40, align 8
  %43 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 1
  store ptr %cultureData, ptr %43, align 8
  %44 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 13
  store ptr %calendar, ptr %44, align 8
  br label %exit

exit:                                             ; preds = %newScope
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?get__CurrentInfo@DateTimeFormatInfo@Globalization@System@bf@@SAPEAV1234@XZ"() #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__InvariantInfo@DateTimeFormatInfo@Globalization@System@bf@@SAPEAV1234@XZ"() #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__Calendar@DateTimeFormatInfo@Globalization@System@bf@@QEAAPEAVCalendar@234@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?get__AMDesignator@DateTimeFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr, ptr noalias sret(%"corlib.StringView@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?get__PMDesignator@DateTimeFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr, ptr noalias sret(%"corlib.StringView@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?get__TimeSeparator@DateTimeFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr, ptr noalias sret(%"corlib.StringView@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?get__DateSeparator@DateTimeFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr, ptr noalias sret(%"corlib.StringView@System@bf")) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__HasForceTwoDigitYears@DateTimeFormatInfo@Globalization@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i8 @"?get__FormatFlags@DateTimeFormatInfo@Globalization@System@bf@@QEAA?AW4DateTimeFormatFlags@234@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?get__ShortDatePattern@DateTimeFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr, ptr noalias sret(%"corlib.StringView@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?get__LongDatePattern@DateTimeFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr, ptr noalias sret(%"corlib.StringView@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?get__ShortTimePattern@DateTimeFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr, ptr noalias sret(%"corlib.StringView@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?get__FullDateTimePattern@DateTimeFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr, ptr noalias sret(%"corlib.StringView@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?get__DateTimeOffsetPattern@DateTimeFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr, ptr noalias sret(%"corlib.StringView@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?get__GeneralShortTimePattern@DateTimeFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr, ptr noalias sret(%"corlib.StringView@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?get__GeneralLongTimePattern@DateTimeFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr, ptr noalias sret(%"corlib.StringView@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?get__MonthDayPattern@DateTimeFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr, ptr noalias sret(%"corlib.StringView@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?set__MonthDayPattern@DateTimeFormatInfo@Globalization@System@bf@@QEAAXUStringView@34@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?get__RFC1123Pattern@DateTimeFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr, ptr noalias sret(%"corlib.StringView@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?get__SortableDateTimePattern@DateTimeFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr, ptr noalias sret(%"corlib.StringView@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?get__LongTimePattern@DateTimeFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr, ptr noalias sret(%"corlib.StringView@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?get__UniversalSortableDateTimePattern@DateTimeFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr, ptr noalias sret(%"corlib.StringView@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?get__YearMonthPattern@DateTimeFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr, ptr noalias sret(%"corlib.StringView@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?GetAbbreviatedDayName@DateTimeFormatInfo@Globalization@System@bf@@QEAAXW4DayOfWeek@34@PEAVString@34@@Z"(ptr, i8, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetDayName@DateTimeFormatInfo@Globalization@System@bf@@QEAAXW4DayOfWeek@34@PEAVString@34@@Z"(ptr, i8, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetAbbreviatedMonthName@DateTimeFormatInfo@Globalization@System@bf@@QEAAXTint@@PEAVString@34@@Z"(ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetMonthName@DateTimeFormatInfo@Globalization@System@bf@@QEAAXTint@@PEAVString@34@@Z"(ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetEraName@DateTimeFormatInfo@Globalization@System@bf@@QEAAXTint@@PEAVString@34@@Z"(ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?internalGetMonthName@DateTimeFormatInfo@Globalization@System@bf@@AEAAXTint@@W4MonthNameStyles@234@_NPEAVString@34@@Z"(ptr, i64, i8, i1 zeroext, ptr) #0

; Function Attrs: nounwind uwtable
define ptr @"?GetFormat@DateTimeFormatInfo@Globalization@System@bf@@QEAAPEAVObject@34@PEAVType@34@@Z"(ptr %this, ptr %formatType) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = icmp eq ptr %formatType, @"?sBfTypeData@DateTimeFormatInfo@Globalization@System@bf@@2HA"
  br i1 %1, label %cond.then, label %cond.else

cond.then:                                        ; preds = %entry
  br label %cond.end

cond.else:                                        ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.else, %cond.then
  %2 = phi ptr [ %0, %cond.then ], [ null, %cond.else ]
  br label %cond.cont

cond.cont:                                        ; preds = %cond.end
  store ptr %2, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %cond.cont
  %3 = load ptr, ptr %__return, align 8
  ret ptr %3
}

; Function Attrs: nounwind uwtable
declare ptr @"?GetInstance@DateTimeFormatInfo@Globalization@System@bf@@SAPEAV1234@PEAVIFormatProvider@34@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__UnclonedYearMonthPatterns@DateTimeFormatInfo@Globalization@System@bf@@AEAAPEAV?$Array1@PEAVString@System@bf@@@34@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__UnclonedShortDatePatterns@DateTimeFormatInfo@Globalization@System@bf@@AEAAPEAV?$Array1@PEAVString@System@bf@@@34@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__UnclonedLongDatePatterns@DateTimeFormatInfo@Globalization@System@bf@@AEAAPEAV?$Array1@PEAVString@System@bf@@@34@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__UnclonedShortTimePatterns@DateTimeFormatInfo@Globalization@System@bf@@AEAAPEAV?$Array1@PEAVString@System@bf@@@34@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__UnclonedLongTimePatterns@DateTimeFormatInfo@Globalization@System@bf@@AEAAPEAV?$Array1@PEAVString@System@bf@@@34@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__FullTimeSpanPositivePattern@DateTimeFormatInfo@Globalization@System@bf@@AEAAPEAVString@34@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__FullTimeSpanNegativePattern@DateTimeFormatInfo@Globalization@System@bf@@AEAAPEAVString@34@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?__BfCtorClear@DateTimeFormatInfo@Globalization@System@bf@@AEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 330, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfStaticDtor@DateTimeFormatInfo@Globalization@System@bf@@SAXXZ"() #0 {
entry:
  %0 = load ptr, ptr @"?invariantInfo@DateTimeFormatInfo@Globalization@System@bf@@2PEAV1234@C", align 8
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
  br label %exit

exit:                                             ; preds = %delete.end
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?GCMarkStaticMembers@DateTimeFormatInfo@Globalization@System@bf@@KAXXZ"() #0

; Function Attrs: nounwind uwtable
define void @"?~this@DateTimeFormatInfo@Globalization@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %0 = alloca %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", align 8
  %1 = alloca %"corlib.?$Result@PEAVObject@System@bf@@@System@bf", align 8
  %2 = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %3 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %4 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %3, i32 0, i32 41
  br label %newScope1

newScope1:                                        ; preds = %newScope
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %delete.body, label %delete.end

delete.body:                                      ; preds = %newScope1
  %7 = load ptr, ptr %5, align 8
  %8 = getelementptr inbounds ptr, ptr %7, i32 3
  %9 = load ptr, ptr %8, align 8
  call void %9(ptr %5)
  call void @tc_free(ptr %5)
  br label %delete.end

delete.end:                                       ; preds = %delete.body, %newScope1
  %10 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %3, i32 0, i32 40
  br label %newScope2

newScope2:                                        ; preds = %delete.end
  %11 = load ptr, ptr %10, align 8
  %12 = icmp ne ptr %11, null
  br i1 %12, label %delete.body3, label %delete.end4

delete.body3:                                     ; preds = %newScope2
  %13 = load ptr, ptr %11, align 8
  %14 = getelementptr inbounds ptr, ptr %13, i32 3
  %15 = load ptr, ptr %14, align 8
  call void %15(ptr %11)
  call void @tc_free(ptr %11)
  br label %delete.end4

delete.end4:                                      ; preds = %delete.body3, %newScope2
  %16 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %3, i32 0, i32 39
  br label %newScope5

newScope5:                                        ; preds = %delete.end4
  br label %mixinStart

mixinStart:                                       ; preds = %newScope5
  %17 = load ptr, ptr %16, align 8
  %18 = icmp ne ptr %17, null
  br i1 %18, label %if.then, label %if.end

if.then:                                          ; preds = %mixinStart
  %19 = load ptr, ptr %16, align 8
  call void @"?GetEnumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAA?AUEnumerator@1234@XZ"(ptr %19, ptr sret(%"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf") %0)
  %20 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %0, i32 0, i32 2
  %23 = load i64, ptr %22, align 8
  %24 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %0, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8
  br label %newScope6

newScope6:                                        ; preds = %if.then
  br label %foreach.cond

foreach.cond:                                     ; preds = %foreach.inc, %newScope6
  call void @"?GetNext@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAA?AU?$Result@PEAVObject@System@bf@@@45@XZ"(ptr %0, ptr sret(%"corlib.?$Result@PEAVObject@System@bf@@@System@bf") %1)
  %26 = getelementptr inbounds %"corlib.?$Result@PEAVObject@System@bf@@@System@bf", ptr %1, i32 0, i32 2
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %foreach.body, label %foreach.end

foreach.body:                                     ; preds = %foreach.cond
  %29 = load ptr, ptr %1, align 8
  store ptr %29, ptr %2, align 8
  br label %newScope7

newScope7:                                        ; preds = %foreach.body
  %30 = load ptr, ptr %2, align 8
  %31 = icmp ne ptr %30, null
  br i1 %31, label %delete.body8, label %delete.end9

delete.body8:                                     ; preds = %newScope7
  %32 = load ptr, ptr %30, align 8
  %33 = getelementptr inbounds ptr, ptr %32, i32 3
  %34 = load ptr, ptr %33, align 8
  call void %34(ptr %30)
  call void @tc_free(ptr %30)
  br label %delete.end9

delete.end9:                                      ; preds = %delete.body8, %newScope7
  br label %foreach.inc

foreach.inc:                                      ; preds = %delete.end9
  br label %foreach.cond

foreach.end:                                      ; preds = %foreach.cond
  call void @"?Dispose__im@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXXZ"(ptr %21, i64 %23, ptr %25)
  %35 = load ptr, ptr %16, align 8
  %36 = icmp ne ptr %35, null
  br i1 %36, label %delete.body10, label %delete.end11

delete.body10:                                    ; preds = %foreach.end
  %37 = load ptr, ptr %35, align 8
  %38 = getelementptr inbounds ptr, ptr %37, i32 3
  %39 = load ptr, ptr %38, align 8
  call void %39(ptr %35)
  call void @tc_free(ptr %35)
  br label %delete.end11

delete.end11:                                     ; preds = %delete.body10, %foreach.end
  br label %if.end

if.end:                                           ; preds = %delete.end11, %mixinStart
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr %3)
  br label %exit

exit:                                             ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@DateTimeFormatInfo@Globalization@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@DateTimeFormatInfo@Globalization@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers@DateTimeFormatInfo@Globalization@System@bf@@IEAAXXZ"(ptr) #0

declare void @tc_free(ptr)

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXXZ"(ptr) #0

declare ptr @tc_malloc(i64)

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@?$List@PEAVObject@System@bf@@@Collections@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare void @"?GetEnumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAA?AUEnumerator@1234@XZ"(ptr, ptr noalias sret(%"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?Dispose__im@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXXZ"(ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetNext@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAA?AU?$Result@PEAVObject@System@bf@@@45@XZ"(ptr, ptr noalias sret(%"corlib.?$Result@PEAVObject@System@bf@@@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?~this@Object@System@bf@@UEAAXXZ"(ptr) #0

attributes #0 = { nounwind uwtable }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
