; ModuleID = 'System_Globalization_CultureData'
source_filename = "System_Globalization_CultureData"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.CultureData@Globalization@System@bf" = type <{ %"corlib.Object@System@bf", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i1, i1 }>
%"corlib.StringView@System@bf" = type <{ %"corlib.?$Span@D@System@bf" }>
%"corlib.?$Span@D@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64, ptr }>
%"corlib.?$Result@PEAVObject@System@bf@@@System@bf" = type <{ %"corlib.Enum@System@bf", %"corlib.?$__TUPLE_val@PEAVObject@System@bf@@@bf", i8 }>
%"corlib.Enum@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.?$__TUPLE_val@PEAVObject@System@bf@@@bf" = type <{ %"corlib.Tuple@System@bf", ptr }>
%"corlib.Tuple@System@bf" = type <{ %"corlib.ValueType@System@bf" }>

@"?sBfClassVData@?$List@PEAVObject@System@bf@@@Collections@System@bf@@2UClassVData@34@A" = external constant [21 x ptr]
@"?sBfClassVData@String@System@bf@@2UClassVData@23@A" = external constant [8 x ptr]
@__bfStrObj402 = external constant %"corlib.String@System@bf"
@__bfStrObj403 = external constant %"corlib.String@System@bf"
@"?sBfClassVData@CultureData@Globalization@System@bf@@2UClassVData@34@A" = external constant [4 x ptr]
@__bfStrObj404 = external constant %"corlib.String@System@bf"

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@CultureData@Globalization@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %1 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %0, i32 0, i32 14
  store i64 -1, ptr %1, align 8
  %2 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %0, i32 0, i32 28
  store i64 -1, ptr %2, align 8
  %3 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %0, i32 0, i32 29
  store i64 -1, ptr %3, align 8
  %4 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %0, i32 0, i32 62
  store i32 -1, ptr %4, align 4
  %5 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %0, i32 0, i32 49
  store i64 -1, ptr %5, align 8
  %6 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %0, i32 0, i32 50
  store i64 -1, ptr %6, align 8
  %7 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %0, i32 0, i32 53
  store i64 -1, ptr %7, align 8
  %8 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %0, i32 0, i32 57
  %9 = call ptr @tc_malloc(i64 24)
  %10 = getelementptr inbounds %"corlib.Object@System@bf", ptr %9, i32 0, i32 0
  store ptr @"?sBfClassVData@?$List@PEAVObject@System@bf@@@Collections@System@bf@@2UClassVData@34@A", ptr %10, align 8
  call void @"?__BfCtorClear@?$List@PEAVObject@System@bf@@@Collections@System@bf@@AEAAXXZ"(ptr %9)
  call void @"?__BfCtor@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXXZ"(ptr %9)
  store ptr %9, ptr %8, align 8
  br label %exit

exit:                                             ; preds = %newScope
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?GetNFIValues@CultureData@Globalization@System@bf@@AEAAXPEAVNumberFormatInfo@234@@Z"(ptr %this, ptr %nfi) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i1 @"?get__IsInvariantCulture@CultureData@Globalization@System@bf@@QEAA_NXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca i1, align 1
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  store i1 true, ptr %__return, align 1
  br label %exit

exit:                                             ; preds = %entry
  %1 = load i1, ptr %__return, align 1
  ret i1 %1
}

; Function Attrs: nounwind uwtable
define ptr @"?get__DefaultCalendar@CultureData@Globalization@System@bf@@AEAAPEAVCalendar@234@XZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %GetCalendarInstance = call ptr @"?GetCalendarInstance@CultureInfo@Globalization@System@bf@@CAPEAVCalendar@234@Tint@@@Z"(i64 1)
  store ptr %GetCalendarInstance, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %1 = load ptr, ptr %__return, align 8
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define void @"?get__CultureName@CultureData@Globalization@System@bf@@AEAA?AUStringView@34@XZ"(ptr %this, ptr noalias sret(%"corlib.StringView@System@bf") %0) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.StringView@System@bf", align 8
  %2 = alloca %"corlib.StringView@System@bf", align 8
  store ptr %this, ptr %this.addr, align 8
  %3 = load ptr, ptr %this.addr, align 8
  store ptr %0, ptr %__return.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %4 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 8
  br label %newScope1

newScope1:                                        ; preds = %newScope
  br label %noSwitch

noSwitch:                                         ; preds = %newScope1
  %6 = call i1 @"??8String@System@bf@@SA_NPEAV012@0@Z"(ptr %5, ptr @__bfStrObj402)
  br i1 %6, label %switch.0, label %switch.notEq.0

switch.notEq.0:                                   ; preds = %noSwitch
  %7 = call i1 @"??8String@System@bf@@SA_NPEAV012@0@Z"(ptr %5, ptr @__bfStrObj403)
  br i1 %7, label %switch.1, label %switch.notEq.1

switch.0:                                         ; preds = %noSwitch
  br label %switch.end

switch.notEq.1:                                   ; preds = %switch.notEq.0
  br label %default

switch.1:                                         ; preds = %switch.notEq.0
  %8 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %3, i32 0, i32 3
  %9 = load ptr, ptr %8, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr sret(%"corlib.StringView@System@bf") %1, ptr %9)
  %10 = load %"corlib.StringView@System@bf", ptr %1, align 8
  %11 = load ptr, ptr %__return.addr, align 8
  store %"corlib.StringView@System@bf" %10, ptr %11, align 8
  br label %exit

default:                                          ; preds = %switch.notEq.1
  br label %switch.end

switch.end:                                       ; preds = %default, %switch.0
  %12 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %3, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr sret(%"corlib.StringView@System@bf") %2, ptr %13)
  %14 = load %"corlib.StringView@System@bf", ptr %2, align 8
  %15 = load ptr, ptr %__return.addr, align 8
  store %"corlib.StringView@System@bf" %14, ptr %15, align 8
  br label %exit

exit:                                             ; preds = %switch.end, %switch.1
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?get__LongTimes@CultureData@Globalization@System@bf@@AEAAPEAV?$Array1@PEAVString@System@bf@@@34@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__ShortTimes@CultureData@Globalization@System@bf@@AEAAPEAV?$Array1@PEAVString@System@bf@@@34@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
define ptr @"?GetCultureData@CultureData@Globalization@System@bf@@CAPEAV1234@UStringView@34@_N@Z"(ptr %cultureName_mPtr, i64 %cultureName_mLength, i1 zeroext %useUserOverride) #0 {
entry:
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  %__return = alloca ptr, align 8
  %culture = alloca ptr, align 8
  store ptr %cultureName_mPtr, ptr %0, align 8
  store i64 %cultureName_mLength, ptr %1, align 8
  %CreateCultureData = call ptr @"?CreateCultureData@CultureData@Globalization@System@bf@@CAPEAV1234@UStringView@34@_N@Z"(ptr %cultureName_mPtr, i64 %cultureName_mLength, i1 zeroext %useUserOverride)
  store ptr %CreateCultureData, ptr %culture, align 8
  %2 = load ptr, ptr %culture, align 8
  store ptr %2, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %3 = load ptr, ptr %__return, align 8
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define ptr @"?CreateCultureData@CultureData@Globalization@System@bf@@CAPEAV1234@UStringView@34@_N@Z"(ptr %cultureName_mPtr, i64 %cultureName_mLength, i1 zeroext %useUserOverride) #0 {
entry:
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  %__return = alloca ptr, align 8
  %culture = alloca ptr, align 8
  store ptr %cultureName_mPtr, ptr %0, align 8
  store i64 %cultureName_mLength, ptr %1, align 8
  %2 = call ptr @tc_malloc(i64 486)
  %3 = getelementptr inbounds %"corlib.Object@System@bf", ptr %2, i32 0, i32 0
  store ptr @"?sBfClassVData@CultureData@Globalization@System@bf@@2UClassVData@34@A", ptr %3, align 8
  call void @"?__BfCtorClear@CultureData@Globalization@System@bf@@AEAAXXZ"(ptr %2)
  call void @"?__BfCtor@CultureData@Globalization@System@bf@@QEAAXXZ"(ptr %2)
  store ptr %2, ptr %culture, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %4 = load ptr, ptr %culture, align 8
  %InitCultureData = call i1 @"?InitCultureData@CultureData@Globalization@System@bf@@AEAA_NXZ"(ptr %4)
  %5 = icmp eq i1 %InitCultureData, false
  br i1 %5, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  store ptr null, ptr %__return, align 8
  br label %exit

if.end:                                           ; preds = %newScope
  %6 = load ptr, ptr %culture, align 8
  store ptr %6, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %7 = load ptr, ptr %__return, align 8
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define i1 @"?InitCultureData@CultureData@Globalization@System@bf@@AEAA_NXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca i1, align 1
  %0 = alloca i64, align 8
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  %4 = load ptr, ptr %this.addr, align 8
  %5 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %4, i32 0, i32 2
  %"this$calcAppend" = call i64 @"?this$calcAppend@i9$String@System@bf@@SATint@@PEAV123@@Z"(ptr @__bfStrObj404)
  %6 = add i64 24, %"this$calcAppend"
  %7 = call ptr @tc_malloc(i64 %6)
  %8 = getelementptr inbounds %"corlib.Object@System@bf", ptr %7, i32 0, i32 0
  store ptr @"?sBfClassVData@String@System@bf@@2UClassVData@23@A", ptr %8, align 8
  call void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr %7)
  %9 = ptrtoint ptr %7 to i64
  %10 = add i64 %9, 24
  store i64 %10, ptr %0, align 8
  call void @"?__BfCtor@i8$String@System@bf@@QEAAXAEATint@@PEAV123@@Z"(ptr %7, ptr dereferenceable(8) %0, ptr @__bfStrObj404)
  store ptr %7, ptr %5, align 8
  %11 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %4, i32 0, i32 1
  %"this$calcAppend1" = call i64 @"?this$calcAppend@i9$String@System@bf@@SATint@@PEAV123@@Z"(ptr @__bfStrObj404)
  %12 = add i64 24, %"this$calcAppend1"
  %13 = call ptr @tc_malloc(i64 %12)
  %14 = getelementptr inbounds %"corlib.Object@System@bf", ptr %13, i32 0, i32 0
  store ptr @"?sBfClassVData@String@System@bf@@2UClassVData@23@A", ptr %14, align 8
  call void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr %13)
  %15 = ptrtoint ptr %13 to i64
  %16 = add i64 %15, 24
  store i64 %16, ptr %1, align 8
  call void @"?__BfCtor@i8$String@System@bf@@QEAAXAEATint@@PEAV123@@Z"(ptr %13, ptr dereferenceable(8) %1, ptr @__bfStrObj404)
  store ptr %13, ptr %11, align 8
  %17 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %4, i32 0, i32 8
  %"this$calcAppend2" = call i64 @"?this$calcAppend@i9$String@System@bf@@SATint@@PEAV123@@Z"(ptr @__bfStrObj404)
  %18 = add i64 24, %"this$calcAppend2"
  %19 = call ptr @tc_malloc(i64 %18)
  %20 = getelementptr inbounds %"corlib.Object@System@bf", ptr %19, i32 0, i32 0
  store ptr @"?sBfClassVData@String@System@bf@@2UClassVData@23@A", ptr %20, align 8
  call void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr %19)
  %21 = ptrtoint ptr %19 to i64
  %22 = add i64 %21, 24
  store i64 %22, ptr %2, align 8
  call void @"?__BfCtor@i8$String@System@bf@@QEAAXAEATint@@PEAV123@@Z"(ptr %19, ptr dereferenceable(8) %2, ptr @__bfStrObj404)
  store ptr %19, ptr %17, align 8
  %23 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %4, i32 0, i32 3
  %"this$calcAppend3" = call i64 @"?this$calcAppend@i9$String@System@bf@@SATint@@PEAV123@@Z"(ptr @__bfStrObj404)
  %24 = add i64 24, %"this$calcAppend3"
  %25 = call ptr @tc_malloc(i64 %24)
  %26 = getelementptr inbounds %"corlib.Object@System@bf", ptr %25, i32 0, i32 0
  store ptr @"?sBfClassVData@String@System@bf@@2UClassVData@23@A", ptr %26, align 8
  call void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr %25)
  %27 = ptrtoint ptr %25 to i64
  %28 = add i64 %27, 24
  store i64 %28, ptr %3, align 8
  call void @"?__BfCtor@i8$String@System@bf@@QEAAXAEATint@@PEAV123@@Z"(ptr %25, ptr dereferenceable(8) %3, ptr @__bfStrObj404)
  store ptr %25, ptr %23, align 8
  store i1 true, ptr %__return, align 1
  br label %exit

exit:                                             ; preds = %entry
  %29 = load i1, ptr %__return, align 1
  ret i1 %29
}

; Function Attrs: nounwind uwtable
declare void @"?ReescapeWin32String@CultureData@Globalization@System@bf@@CAXPEAVString@34@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?ReescapeWin32Strings@CultureData@Globalization@System@bf@@CAXPEAV?$Array1@PEAVString@System@bf@@@34@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__UseUserOverride@CultureData@Globalization@System@bf@@AEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsSupplementalCustomCulture@CultureData@Globalization@System@bf@@AEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?IsOsWin7OrPrior@CultureData@Globalization@System@bf@@CA_NXZ"() #0

; Function Attrs: nounwind uwtable
declare ptr @"?GetCalendar@CultureData@Globalization@System@bf@@AEAAPEAVCalendarData@234@Tint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare ptr @"?ShortDates@CultureData@Globalization@System@bf@@AEAAPEAV?$Array1@PEAVString@System@bf@@@34@Tint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare ptr @"?LongDates@CultureData@Globalization@System@bf@@AEAAPEAV?$Array1@PEAVString@System@bf@@@34@Tint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare ptr @"?YearMonths@CultureData@Globalization@System@bf@@AEAAPEAV?$Array1@PEAVString@System@bf@@@34@Tint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DayNames@CultureData@Globalization@System@bf@@AEAAPEAV?$Array1@PEAVString@System@bf@@@34@Tint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare ptr @"?AbbreviatedDayNames@CultureData@Globalization@System@bf@@AEAAPEAV?$Array1@PEAVString@System@bf@@@34@Tint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare ptr @"?SuperShortDayNames@CultureData@Globalization@System@bf@@AEAAPEAV?$Array1@PEAVString@System@bf@@@34@Tint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare ptr @"?MonthNames@CultureData@Globalization@System@bf@@AEAAPEAV?$Array1@PEAVString@System@bf@@@34@Tint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare ptr @"?GenitiveMonthNames@CultureData@Globalization@System@bf@@AEAAPEAV?$Array1@PEAVString@System@bf@@@34@Tint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare ptr @"?AbbreviatedMonthNames@CultureData@Globalization@System@bf@@AEAAPEAV?$Array1@PEAVString@System@bf@@@34@Tint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare ptr @"?AbbreviatedGenitiveMonthNames@CultureData@Globalization@System@bf@@AEAAPEAV?$Array1@PEAVString@System@bf@@@34@Tint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare ptr @"?LeapYearMonthNames@CultureData@Globalization@System@bf@@AEAAPEAV?$Array1@PEAVString@System@bf@@@34@Tint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare ptr @"?MonthDay@CultureData@Globalization@System@bf@@AEAAPEAVString@34@Tint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?DoGetLocaleInfo@CultureData@Globalization@System@bf@@AEAAXTuint@@PEAVString@34@@Z"(ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?DoGetLocaleInfo@CultureData@Globalization@System@bf@@AEAAXUStringView@34@Tuint@@PEAVString@34@@Z"(ptr, ptr, i64, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetSeparator@CultureData@Globalization@System@bf@@CAXUStringView@34@0PEAVString@34@@Z"(ptr, i64, ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetTimeSeparator@CultureData@Globalization@System@bf@@CAXUStringView@34@PEAVString@34@@Z"(ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__TimeSeparator@CultureData@Globalization@System@bf@@AEAAPEAVString@34@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?__BfCtorClear@CultureData@Globalization@System@bf@@AEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 478, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?~this@CultureData@Globalization@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %0 = alloca %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", align 8
  %1 = alloca %"corlib.?$Result@PEAVObject@System@bf@@@System@bf", align 8
  %2 = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %3 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %4 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %3, i32 0, i32 57
  br label %newScope1

newScope1:                                        ; preds = %newScope
  br label %mixinStart

mixinStart:                                       ; preds = %newScope1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %if.then, label %if.end

if.then:                                          ; preds = %mixinStart
  %7 = load ptr, ptr %4, align 8
  call void @"?GetEnumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAA?AUEnumerator@1234@XZ"(ptr %7, ptr sret(%"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf") %0)
  %8 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %0, i32 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  br label %newScope2

newScope2:                                        ; preds = %if.then
  br label %foreach.cond

foreach.cond:                                     ; preds = %foreach.inc, %newScope2
  call void @"?GetNext@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAA?AU?$Result@PEAVObject@System@bf@@@45@XZ"(ptr %0, ptr sret(%"corlib.?$Result@PEAVObject@System@bf@@@System@bf") %1)
  %14 = getelementptr inbounds %"corlib.?$Result@PEAVObject@System@bf@@@System@bf", ptr %1, i32 0, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %foreach.body, label %foreach.end

foreach.body:                                     ; preds = %foreach.cond
  %17 = load ptr, ptr %1, align 8
  store ptr %17, ptr %2, align 8
  br label %newScope3

newScope3:                                        ; preds = %foreach.body
  %18 = load ptr, ptr %2, align 8
  %19 = icmp ne ptr %18, null
  br i1 %19, label %delete.body, label %delete.end

delete.body:                                      ; preds = %newScope3
  %20 = load ptr, ptr %18, align 8
  %21 = getelementptr inbounds ptr, ptr %20, i32 3
  %22 = load ptr, ptr %21, align 8
  call void %22(ptr %18)
  call void @tc_free(ptr %18)
  br label %delete.end

delete.end:                                       ; preds = %delete.body, %newScope3
  br label %foreach.inc

foreach.inc:                                      ; preds = %delete.end
  br label %foreach.cond

foreach.end:                                      ; preds = %foreach.cond
  call void @"?Dispose__im@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXXZ"(ptr %9, i64 %11, ptr %13)
  %23 = load ptr, ptr %4, align 8
  %24 = icmp ne ptr %23, null
  br i1 %24, label %delete.body4, label %delete.end5

delete.body4:                                     ; preds = %foreach.end
  %25 = load ptr, ptr %23, align 8
  %26 = getelementptr inbounds ptr, ptr %25, i32 3
  %27 = load ptr, ptr %26, align 8
  call void %27(ptr %23)
  call void @tc_free(ptr %23)
  br label %delete.end5

delete.end5:                                      ; preds = %delete.body4, %foreach.end
  br label %if.end

if.end:                                           ; preds = %delete.end5, %mixinStart
  %28 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %3, i32 0, i32 8
  br label %newScope6

newScope6:                                        ; preds = %if.end
  %29 = load ptr, ptr %28, align 8
  %30 = icmp ne ptr %29, null
  br i1 %30, label %delete.body7, label %delete.end8

delete.body7:                                     ; preds = %newScope6
  %31 = load ptr, ptr %29, align 8
  %32 = getelementptr inbounds ptr, ptr %31, i32 3
  %33 = load ptr, ptr %32, align 8
  call void %33(ptr %29)
  call void @tc_free(ptr %29)
  br label %delete.end8

delete.end8:                                      ; preds = %delete.body7, %newScope6
  %34 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %3, i32 0, i32 3
  br label %newScope9

newScope9:                                        ; preds = %delete.end8
  %35 = load ptr, ptr %34, align 8
  %36 = icmp ne ptr %35, null
  br i1 %36, label %delete.body10, label %delete.end11

delete.body10:                                    ; preds = %newScope9
  %37 = load ptr, ptr %35, align 8
  %38 = getelementptr inbounds ptr, ptr %37, i32 3
  %39 = load ptr, ptr %38, align 8
  call void %39(ptr %35)
  call void @tc_free(ptr %35)
  br label %delete.end11

delete.end11:                                     ; preds = %delete.body10, %newScope9
  %40 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %3, i32 0, i32 2
  br label %newScope12

newScope12:                                       ; preds = %delete.end11
  %41 = load ptr, ptr %40, align 8
  %42 = icmp ne ptr %41, null
  br i1 %42, label %delete.body13, label %delete.end14

delete.body13:                                    ; preds = %newScope12
  %43 = load ptr, ptr %41, align 8
  %44 = getelementptr inbounds ptr, ptr %43, i32 3
  %45 = load ptr, ptr %44, align 8
  call void %45(ptr %41)
  call void @tc_free(ptr %41)
  br label %delete.end14

delete.end14:                                     ; preds = %delete.body13, %newScope12
  %46 = getelementptr inbounds %"corlib.CultureData@Globalization@System@bf", ptr %3, i32 0, i32 1
  br label %newScope15

newScope15:                                       ; preds = %delete.end14
  %47 = load ptr, ptr %46, align 8
  %48 = icmp ne ptr %47, null
  br i1 %48, label %delete.body16, label %delete.end17

delete.body16:                                    ; preds = %newScope15
  %49 = load ptr, ptr %47, align 8
  %50 = getelementptr inbounds ptr, ptr %49, i32 3
  %51 = load ptr, ptr %50, align 8
  call void %51(ptr %47)
  call void @tc_free(ptr %47)
  br label %delete.end17

delete.end17:                                     ; preds = %delete.body16, %newScope15
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr %3)
  br label %exit

exit:                                             ; preds = %delete.end17
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@CultureData@Globalization@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@CultureData@Globalization@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers@CultureData@Globalization@System@bf@@IEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXXZ"(ptr) #0

declare ptr @tc_malloc(i64)

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@?$List@PEAVObject@System@bf@@@Collections@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
declare i1 @"??8String@System@bf@@SA_NPEAV012@0@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr noalias sret(%"corlib.StringView@System@bf"), ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i8$String@System@bf@@QEAAXAEATint@@PEAV123@@Z"(ptr, ptr dereferenceable(8), ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?this$calcAppend@i9$String@System@bf@@SATint@@PEAV123@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetEnumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAA?AUEnumerator@1234@XZ"(ptr, ptr noalias sret(%"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?Dispose__im@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXXZ"(ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetNext@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAA?AU?$Result@PEAVObject@System@bf@@@45@XZ"(ptr, ptr noalias sret(%"corlib.?$Result@PEAVObject@System@bf@@@System@bf")) #0

declare void @tc_free(ptr)

; Function Attrs: nounwind uwtable
declare void @"?~this@Object@System@bf@@UEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?GetCalendarInstance@CultureInfo@Globalization@System@bf@@CAPEAVCalendar@234@Tint@@@Z"(i64) #0

attributes #0 = { nounwind uwtable }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
