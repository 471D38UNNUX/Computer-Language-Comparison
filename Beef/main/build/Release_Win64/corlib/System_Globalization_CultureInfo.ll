; ModuleID = 'System_Globalization_CultureInfo'
source_filename = "System_Globalization_CultureInfo"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.Type@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, i32, i32, i32, i8, i8, i8 }>
%"corlib.StringView@System@bf" = type <{ %"corlib.?$Span@D@System@bf" }>
%"corlib.?$Span@D@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.CultureInfo@Globalization@System@bf" = type <{ %"corlib.Object@System@bf", ptr, ptr, ptr, ptr, ptr, ptr, i1, i1 }>
%"corlib.DateTimeFormatInfo@Globalization@System@bf" = type <{ %"corlib.Object@System@bf", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i1, i8 }>

@"?sInvariantCultureInfo@CultureInfo@Globalization@System@bf@@2PEAV1234@A" = global ptr null, align 8
@"?sUserDefaultUICulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A" = global ptr null, align 8
@"?sUserDefaultCulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A" = global ptr null, align 8
@"?mDefaultCultureInfo@CultureInfo@Globalization@System@bf@@2PEAV1234@A" = global ptr null, align 8
@"?tlCurrentCulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A" = thread_local global ptr null, align 8
@"?tlCurrentUICulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A" = thread_local global ptr null, align 8
@"?init@CultureInfo@Globalization@System@bf@@2_NA" = global i1 false, align 1
@"?s_isTaiwanSku@CultureInfo@Globalization@System@bf@@2_NC" = global i1 false, align 1
@"?s_haveIsTaiwanSku@CultureInfo@Globalization@System@bf@@2_NC" = global i1 false, align 1
@didStaticInit = internal global i1 false
@"?sBfClassVData@NumberFormatInfo@Globalization@System@bf@@2UClassVData@34@A" = external constant [5 x ptr]
@"?sBfClassVData@String@System@bf@@2UClassVData@23@A" = external constant [8 x ptr]
@__bfStrObj1 = external constant %"corlib.String@System@bf"
@"?sBfClassVData@CultureInfo@Globalization@System@bf@@2UClassVData@34@A" = external constant [9 x ptr]
@"?sBfClassVData@CultureData@Globalization@System@bf@@2UClassVData@34@A" = external constant [4 x ptr]
@__bfStrObj30 = external constant %"corlib.String@System@bf"
@__bfStrObj400 = external constant %"corlib.String@System@bf"
@"?sBfTypeData@CultureInfo@Globalization@System@bf@@2HA" = external constant %"corlib.Type@System@bf"
@__bfStrObj401 = external constant %"corlib.String@System@bf"
@"?sBfTypeData@NumberFormatInfo@Globalization@System@bf@@2HA" = external constant %"corlib.Type@System@bf"
@"?sBfTypeData@DateTimeFormatInfo@Globalization@System@bf@@2HA" = external constant %"corlib.Type@System@bf"
@"?sBfClassVData@DateTimeFormatInfo@Globalization@System@bf@@2UClassVData@34@A" = external constant [5 x ptr]
@"?sBfClassVData@GregorianCalendar@Globalization@System@bf@@2UClassVData@34@A" = external constant [58 x ptr]

; Function Attrs: nounwind uwtable
define ptr @"?get__DefaultThreadCurrentCulture@CultureInfo@Globalization@System@bf@@SAPEAV1234@XZ"() #0 {
entry:
  %__return = alloca ptr, align 8
  %0 = load ptr, ptr @"?mDefaultCultureInfo@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  store ptr %0, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %1 = load ptr, ptr %__return, align 8
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define ptr @"?get__UserDefaultCulture@CultureInfo@Globalization@System@bf@@SAPEAV1234@XZ"() #0 {
entry:
  %__return = alloca ptr, align 8
  %0 = load ptr, ptr @"?sUserDefaultCulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  store ptr %0, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %1 = load ptr, ptr %__return, align 8
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define ptr @"?get__InvariantCulture@CultureInfo@Globalization@System@bf@@SAPEAV1234@XZ"() #0 {
entry:
  %__return = alloca ptr, align 8
  %0 = load ptr, ptr @"?sInvariantCultureInfo@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  store ptr %0, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %1 = load ptr, ptr %__return, align 8
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define void @"?get__Name@CultureInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr %this, ptr noalias sret(%"corlib.StringView@System@bf") %0) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.StringView@System@bf", align 8
  store ptr %this, ptr %this.addr, align 8
  %2 = load ptr, ptr %this.addr, align 8
  store ptr %0, ptr %__return.addr, align 8
  %3 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %2, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr sret(%"corlib.StringView@System@bf") %1, ptr %4)
  %5 = load %"corlib.StringView@System@bf", ptr %1, align 8
  %6 = load ptr, ptr %__return.addr, align 8
  store %"corlib.StringView@System@bf" %5, ptr %6, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @"?get__NumberFormat@CultureInfo@Globalization@System@bf@@QEAAPEAVNumberFormatInfo@234@XZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca ptr, align 8
  %numInfo = alloca ptr, align 8
  %prevValue = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %1 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %0, i32 0, i32 2
  %2 = load ptr, ptr %1, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %if.then, label %if.end3

if.then:                                          ; preds = %newScope
  %4 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = call ptr @tc_malloc(i64 310)
  %7 = getelementptr inbounds %"corlib.Object@System@bf", ptr %6, i32 0, i32 0
  store ptr @"?sBfClassVData@NumberFormatInfo@Globalization@System@bf@@2UClassVData@34@A", ptr %7, align 8
  call void @"?__BfCtorClear@NumberFormatInfo@Globalization@System@bf@@AEAAXXZ"(ptr %6)
  call void @"?__BfCtor@NumberFormatInfo@Globalization@System@bf@@QEAAXPEAVCultureData@234@@Z"(ptr %6, ptr %5)
  store ptr %6, ptr %numInfo, align 8
  br label %newScope1

newScope1:                                        ; preds = %if.then
  %8 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %numInfo, align 8
  %CompareExchange = call ptr @"??$CompareExchange@PEAVNumberFormatInfo@Globalization@System@bf@@W4RMWAtomicOrdering@Interlocked@Threading@23@$$04@Interlocked@Threading@System@bf@@SAPEAVNumberFormatInfo@Globalization@34@AEAPEAVNumberFormatInfo@Globalization@System@bf@@PEAV0123@1W4RMWAtomicOrdering@Interlocked@Threading@23@$$04@Z"(ptr dereferenceable(8) %8, ptr null, ptr %9)
  %10 = icmp ne ptr %CompareExchange, null
  store ptr %CompareExchange, ptr %prevValue, align 8
  br i1 %10, label %if.then2, label %if.end

if.then2:                                         ; preds = %newScope1
  %11 = load ptr, ptr %numInfo, align 8
  %12 = icmp ne ptr %11, null
  br i1 %12, label %delete.body, label %delete.end

delete.body:                                      ; preds = %if.then2
  %13 = load ptr, ptr %11, align 8
  %14 = getelementptr inbounds ptr, ptr %13, i32 3
  %15 = load ptr, ptr %14, align 8
  call void %15(ptr %11)
  call void @tc_free(ptr %11)
  br label %delete.end

delete.end:                                       ; preds = %delete.body, %if.then2
  %16 = load ptr, ptr %prevValue, align 8
  store ptr %16, ptr %__return, align 8
  br label %exit

if.end:                                           ; preds = %newScope1
  br label %if.end3

if.end3:                                          ; preds = %if.end, %newScope
  %17 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %0, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %if.end3, %delete.end
  %19 = load ptr, ptr %__return, align 8
  ret ptr %19
}

; Function Attrs: nounwind uwtable
define ptr @"?get__CurrentCulture@CultureInfo@Globalization@System@bf@@SAPEAV1234@XZ"() #0 {
entry:
  %__return = alloca ptr, align 8
  br label %if.end

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @"?tlCurrentCulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %if.then, label %if.end1

if.then:                                          ; preds = %if.end
  %get__DefaultThreadCurrentCulture = call ptr @"?get__DefaultThreadCurrentCulture@CultureInfo@Globalization@System@bf@@SAPEAV1234@XZ"()
  %2 = icmp eq ptr %get__DefaultThreadCurrentCulture, null
  br i1 %2, label %nullc.rhs, label %nullc.end

nullc.rhs:                                        ; preds = %if.then
  %get__UserDefaultCulture = call ptr @"?get__UserDefaultCulture@CultureInfo@Globalization@System@bf@@SAPEAV1234@XZ"()
  br label %nullc.end

nullc.end:                                        ; preds = %if.then, %nullc.rhs
  %3 = phi ptr [ %get__DefaultThreadCurrentCulture, %if.then ], [ %get__UserDefaultCulture, %nullc.rhs ]
  store ptr %3, ptr @"?tlCurrentCulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  br label %if.end1

if.end1:                                          ; preds = %nullc.end, %if.end
  %4 = load ptr, ptr @"?tlCurrentCulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  store ptr %4, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %if.end1
  %5 = load ptr, ptr %__return, align 8
  ret ptr %5
}

; Function Attrs: nounwind uwtable
declare void @"?set__CurrentCulture@CultureInfo@Globalization@System@bf@@SAXPEAV1234@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__CurrentUICulture@CultureInfo@Globalization@System@bf@@SAPEAV1234@XZ"() #0

; Function Attrs: nounwind uwtable
declare void @"?set__CurrentUICulture@CultureInfo@Globalization@System@bf@@SAXPEAV1234@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
define ptr @"?get__Calendar@CultureInfo@Globalization@System@bf@@UEAAPEAVCalendar@234@XZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca ptr, align 8
  %newObj = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %1 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %0, i32 0, i32 6
  %2 = load ptr, ptr %1, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  %4 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 8
  %get__DefaultCalendar = call ptr @"?get__DefaultCalendar@CultureData@Globalization@System@bf@@AEAAPEAVCalendar@234@XZ"(ptr %5)
  store ptr %get__DefaultCalendar, ptr %newObj, align 8
  call void @"??$Fence@W4FenceAtomicOrdering@Interlocked@Threading@System@bf@@$$04@Interlocked@Threading@System@bf@@SAXW4FenceAtomicOrdering@Interlocked@Threading@System@bf@@$$04@Z"()
  %6 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %newObj, align 8
  %8 = load i1, ptr %6, align 1
  call void @"?SetReadOnlyState@Calendar@Globalization@System@bf@@AEAAX_N@Z"(ptr %7, i1 zeroext %8)
  %9 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %0, i32 0, i32 6
  %10 = load ptr, ptr %newObj, align 8
  store ptr %10, ptr %9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %newScope
  %11 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %0, i32 0, i32 6
  %12 = load ptr, ptr %11, align 8
  store ptr %12, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %if.end
  %13 = load ptr, ptr %__return, align 8
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define ptr @"?get__DateTimeFormat@CultureInfo@Globalization@System@bf@@UEAAPEAVDateTimeFormatInfo@234@XZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca ptr, align 8
  %temp = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %1 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %0, i32 0, i32 4
  %2 = load ptr, ptr %1, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  %4 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds ptr, ptr %5, i32 6
  %7 = load ptr, ptr %6, align 8
  %get__Calendar = call ptr %7(ptr %0)
  %8 = load ptr, ptr %4, align 8
  %9 = call ptr @tc_malloc(i64 338)
  %10 = getelementptr inbounds %"corlib.Object@System@bf", ptr %9, i32 0, i32 0
  store ptr @"?sBfClassVData@DateTimeFormatInfo@Globalization@System@bf@@2UClassVData@34@A", ptr %10, align 8
  call void @"?__BfCtorClear@DateTimeFormatInfo@Globalization@System@bf@@AEAAXXZ"(ptr %9)
  call void @"?__BfCtor@DateTimeFormatInfo@Globalization@System@bf@@QEAAXPEAVCultureData@234@PEAVCalendar@234@@Z"(ptr %9, ptr %8, ptr %get__Calendar)
  store ptr %9, ptr %temp, align 8
  %11 = load ptr, ptr %temp, align 8
  %12 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %11, i32 0, i32 42
  %13 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %0, i32 0, i32 8
  %14 = load i1, ptr %13, align 1
  store i1 %14, ptr %12, align 1
  call void @"??$Fence@W4FenceAtomicOrdering@Interlocked@Threading@System@bf@@$$04@Interlocked@Threading@System@bf@@SAXW4FenceAtomicOrdering@Interlocked@Threading@System@bf@@$$04@Z"()
  %15 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %temp, align 8
  store ptr %16, ptr %15, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %newScope
  %17 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %0, i32 0, i32 4
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %if.end
  %19 = load ptr, ptr %__return, align 8
  ret ptr %19
}

; Function Attrs: nounwind uwtable
declare void @"?set__DateTimeFormat@CultureInfo@Globalization@System@bf@@UEAAXPEAVDateTimeFormatInfo@234@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
define i1 @"?Init@CultureInfo@Globalization@System@bf@@CA_NXZ"() #0 {
entry:
  %__return = alloca i1, align 1
  %temp = alloca ptr, align 8
  %0 = load ptr, ptr @"?sInvariantCultureInfo@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = call ptr @tc_malloc(i64 58)
  %3 = getelementptr inbounds %"corlib.Object@System@bf", ptr %2, i32 0, i32 0
  store ptr @"?sBfClassVData@CultureInfo@Globalization@System@bf@@2UClassVData@34@A", ptr %3, align 8
  call void @"?__BfCtorClear@CultureInfo@Globalization@System@bf@@AEAAXXZ"(ptr %2)
  call void @"?__BfCtor@CultureInfo@Globalization@System@bf@@QEAAXPEAVString@34@_N@Z"(ptr %2, ptr @__bfStrObj1, i1 zeroext false)
  store ptr %2, ptr %temp, align 8
  %4 = load ptr, ptr %temp, align 8
  %5 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %4, i32 0, i32 8
  store i1 true, ptr %5, align 1
  %6 = load ptr, ptr %temp, align 8
  store ptr %6, ptr @"?sInvariantCultureInfo@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr @"?sInvariantCultureInfo@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  store ptr %7, ptr @"?sUserDefaultUICulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  store ptr %7, ptr @"?sUserDefaultCulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  %InitUserDefaultCulture = call ptr @"?InitUserDefaultCulture@CultureInfo@Globalization@System@bf@@CAPEAV1234@XZ"()
  store ptr %InitUserDefaultCulture, ptr @"?sUserDefaultCulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  %InitUserDefaultUICulture = call ptr @"?InitUserDefaultUICulture@CultureInfo@Globalization@System@bf@@CAPEAV1234@XZ"()
  store ptr %InitUserDefaultUICulture, ptr @"?sUserDefaultUICulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  store i1 true, ptr %__return, align 1
  br label %exit

exit:                                             ; preds = %if.end
  %8 = load i1, ptr %__return, align 1
  ret i1 %8
}

; Function Attrs: nounwind uwtable
define ptr @"?InitUserDefaultCulture@CultureInfo@Globalization@System@bf@@CAPEAV1234@XZ"() #0 {
entry:
  %__return = alloca ptr, align 8
  %0 = alloca i8, i64 32, align 8
  %1 = alloca i64, align 8
  %strDefault = alloca ptr, align 8
  %temp = alloca ptr, align 8
  %2 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 0
  store ptr @"?sBfClassVData@String@System@bf@@2UClassVData@23@A", ptr %2, align 8
  call void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr %0)
  %3 = ptrtoint ptr %0 to i64
  %4 = add i64 %3, 24
  store i64 %4, ptr %1, align 8
  call void @"?__BfCtor@i4$String@System@bf@@QEAAXAEATint@@@Z"(ptr %0, ptr dereferenceable(8) %1)
  store ptr %0, ptr %strDefault, align 8
  %5 = load ptr, ptr %strDefault, align 8
  call void @"?GetDefaultLocaleName@CultureInfo@Globalization@System@bf@@CAXTint@@PEAVString@34@@Z"(i64 1024, ptr %5)
  br label %newScope

newScope:                                         ; preds = %entry
  %6 = load ptr, ptr %strDefault, align 8
  %get__IsEmpty = call i1 @"?get__IsEmpty@String@System@bf@@QEAA_NXZ"(ptr %6)
  br i1 %get__IsEmpty, label %if.then, label %if.end4

if.then:                                          ; preds = %newScope
  %7 = load ptr, ptr %strDefault, align 8
  call void @"?GetDefaultLocaleName@CultureInfo@Globalization@System@bf@@CAXTint@@PEAVString@34@@Z"(i64 2048, ptr %7)
  br label %newScope1

newScope1:                                        ; preds = %if.then
  %8 = load ptr, ptr %strDefault, align 8
  %get__IsEmpty2 = call i1 @"?get__IsEmpty@String@System@bf@@QEAA_NXZ"(ptr %8)
  br i1 %get__IsEmpty2, label %if.then3, label %if.end

if.then3:                                         ; preds = %newScope1
  %get__InvariantCulture = call ptr @"?get__InvariantCulture@CultureInfo@Globalization@System@bf@@SAPEAV1234@XZ"()
  store ptr %get__InvariantCulture, ptr %__return, align 8
  br label %deferredCalls

if.end:                                           ; preds = %newScope1
  br label %if.end4

if.end4:                                          ; preds = %if.end, %newScope
  %9 = load ptr, ptr %strDefault, align 8
  %GetCultureByName = call ptr @"?GetCultureByName@CultureInfo@Globalization@System@bf@@CAPEAV1234@PEAVString@34@_N@Z"(ptr %9, i1 zeroext true)
  store ptr %GetCultureByName, ptr %temp, align 8
  %10 = load ptr, ptr %temp, align 8
  %11 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %10, i32 0, i32 8
  store i1 true, ptr %11, align 1
  %12 = load ptr, ptr %temp, align 8
  store ptr %12, ptr %__return, align 8
  br label %deferredCalls

deferredCalls:                                    ; preds = %if.end4, %if.then3
  call void @"?~this@String@System@bf@@QEAAXXZ"(ptr %0)
  br label %exit

exit:                                             ; preds = %deferredCalls
  %13 = load ptr, ptr %__return, align 8
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define ptr @"?InitUserDefaultUICulture@CultureInfo@Globalization@System@bf@@CAPEAV1234@XZ"() #0 {
entry:
  %__return = alloca ptr, align 8
  %0 = alloca i8, i64 32, align 8
  %1 = alloca i64, align 8
  %strDefault = alloca ptr, align 8
  %2 = alloca %"corlib.StringView@System@bf", align 8
  %3 = alloca %"corlib.StringView@System@bf", align 8
  %temp = alloca ptr, align 8
  %4 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 0
  store ptr @"?sBfClassVData@String@System@bf@@2UClassVData@23@A", ptr %4, align 8
  call void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr %0)
  %5 = ptrtoint ptr %0 to i64
  %6 = add i64 %5, 24
  store i64 %6, ptr %1, align 8
  call void @"?__BfCtor@i4$String@System@bf@@QEAAXAEATint@@@Z"(ptr %0, ptr dereferenceable(8) %1)
  store ptr %0, ptr %strDefault, align 8
  %7 = load ptr, ptr %strDefault, align 8
  call void @"?GetUserDefaultUILanguage@CultureInfo@Globalization@System@bf@@CAXPEAVString@34@@Z"(ptr %7)
  br label %newScope

newScope:                                         ; preds = %entry
  %8 = load ptr, ptr %strDefault, align 8
  %get__UserDefaultCulture = call ptr @"?get__UserDefaultCulture@CultureInfo@Globalization@System@bf@@SAPEAV1234@XZ"()
  call void @"?get__Name@CultureInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr %get__UserDefaultCulture, ptr sret(%"corlib.StringView@System@bf") %2)
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr sret(%"corlib.StringView@System@bf") %3, ptr %8)
  %9 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %3, i32 0, i32 0
  %10 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %9, i32 0, i32 2
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %2, i32 0, i32 0
  %15 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %14, i32 0, i32 2
  %18 = load i64, ptr %17, align 8
  %19 = call i1 @"??8StringView@System@bf@@SA_NU012@0@Z"(ptr %11, i64 %13, ptr %16, i64 %18)
  br i1 %19, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  %get__UserDefaultCulture1 = call ptr @"?get__UserDefaultCulture@CultureInfo@Globalization@System@bf@@SAPEAV1234@XZ"()
  store ptr %get__UserDefaultCulture1, ptr %__return, align 8
  br label %deferredCalls

if.end:                                           ; preds = %newScope
  %20 = load ptr, ptr %strDefault, align 8
  %GetCultureByName = call ptr @"?GetCultureByName@CultureInfo@Globalization@System@bf@@CAPEAV1234@PEAVString@34@_N@Z"(ptr %20, i1 zeroext true)
  store ptr %GetCultureByName, ptr %temp, align 8
  br label %newScope2

newScope2:                                        ; preds = %if.end
  %21 = load ptr, ptr %temp, align 8
  %22 = icmp eq ptr %21, null
  br i1 %22, label %if.then3, label %if.end4

if.then3:                                         ; preds = %newScope2
  %get__InvariantCulture = call ptr @"?get__InvariantCulture@CultureInfo@Globalization@System@bf@@SAPEAV1234@XZ"()
  store ptr %get__InvariantCulture, ptr %__return, align 8
  br label %deferredCalls

if.end4:                                          ; preds = %newScope2
  %23 = load ptr, ptr %temp, align 8
  %24 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %23, i32 0, i32 8
  store i1 true, ptr %24, align 1
  %25 = load ptr, ptr %temp, align 8
  store ptr %25, ptr %__return, align 8
  br label %deferredCalls

deferredCalls:                                    ; preds = %if.end4, %if.then3, %if.then
  call void @"?~this@String@System@bf@@QEAAXXZ"(ptr %0)
  br label %exit

exit:                                             ; preds = %deferredCalls
  %26 = load ptr, ptr %__return, align 8
  ret ptr %26
}

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@CultureInfo@Globalization@System@bf@@AEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %1 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %0, i32 0, i32 1
  %2 = call ptr @tc_malloc(i64 486)
  %3 = getelementptr inbounds %"corlib.Object@System@bf", ptr %2, i32 0, i32 0
  store ptr @"?sBfClassVData@CultureData@Globalization@System@bf@@2UClassVData@34@A", ptr %3, align 8
  call void @"?__BfCtorClear@CultureData@Globalization@System@bf@@AEAAXXZ"(ptr %2)
  call void @"?__BfCtor@CultureData@Globalization@System@bf@@QEAAXXZ"(ptr %2)
  store ptr %2, ptr %1, align 8
  br label %exit

exit:                                             ; preds = %newScope
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@CultureInfo@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr %this, ptr %name) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  call void @"?__BfCtor@CultureInfo@Globalization@System@bf@@QEAAXPEAVString@34@_N@Z"(ptr %0, ptr %name, i1 zeroext true)
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@CultureInfo@Globalization@System@bf@@QEAAXPEAVString@34@_N@Z"(ptr %this, ptr %name, i1 zeroext %useUserOverride) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %0 = alloca %"corlib.StringView@System@bf", align 8
  %1 = alloca %"corlib.StringView@System@bf", align 8
  %2 = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  %3 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %4 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %3, i32 0, i32 1
  %5 = call ptr @tc_malloc(i64 486)
  %6 = getelementptr inbounds %"corlib.Object@System@bf", ptr %5, i32 0, i32 0
  store ptr @"?sBfClassVData@CultureData@Globalization@System@bf@@2UClassVData@34@A", ptr %6, align 8
  call void @"?__BfCtorClear@CultureData@Globalization@System@bf@@AEAAXXZ"(ptr %5)
  call void @"?__BfCtor@CultureData@Globalization@System@bf@@QEAAXXZ"(ptr %5)
  store ptr %5, ptr %4, align 8
  %7 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %3, i32 0, i32 5
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr sret(%"corlib.StringView@System@bf") %0, ptr %name)
  %8 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %0, i32 0, i32 0
  %9 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %8, i32 0, i32 2
  %12 = load i64, ptr %11, align 8
  %GetCultureData = call ptr @"?GetCultureData@CultureData@Globalization@System@bf@@CAPEAV1234@UStringView@34@_N@Z"(ptr %10, i64 %12, i1 zeroext %useUserOverride)
  store ptr %GetCultureData, ptr %7, align 8
  br label %newScope1

newScope1:                                        ; preds = %newScope
  %13 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %3, i32 0, i32 5
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %if.then, label %if.end

if.then:                                          ; preds = %newScope1
  call void @"?FatalError@Runtime@System@bf@@SAXPEAVString@23@0Tint@@@Z"(ptr @__bfStrObj30, ptr @__bfStrObj400, i64 256) #4
  unreachable

if.end:                                           ; preds = %newScope1
  %16 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %3, i32 0, i32 3
  %17 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %3, i32 0, i32 5
  %18 = load ptr, ptr %17, align 8
  call void @"?get__CultureName@CultureData@Globalization@System@bf@@AEAA?AUStringView@34@XZ"(ptr %18, ptr sret(%"corlib.StringView@System@bf") %1)
  %"this$calcAppend" = call i64 @"?this$calcAppend@i27$String@System@bf@@SATint@@UStringView@23@@Z"(ptr %1)
  %19 = add i64 24, %"this$calcAppend"
  %20 = call ptr @tc_malloc(i64 %19)
  %21 = getelementptr inbounds %"corlib.Object@System@bf", ptr %20, i32 0, i32 0
  store ptr @"?sBfClassVData@String@System@bf@@2UClassVData@23@A", ptr %21, align 8
  call void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr %20)
  %22 = ptrtoint ptr %20 to i64
  %23 = add i64 %22, 24
  store i64 %23, ptr %2, align 8
  call void @"?__BfCtor@i26$String@System@bf@@QEAAXAEATint@@UStringView@23@@Z"(ptr %20, ptr dereferenceable(8) %2, ptr %1)
  store ptr %20, ptr %16, align 8
  %24 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %3, i32 0, i32 7
  %GetType = call ptr @"?GetType@Object@System@bf@@QEAAPEAVType@23@XZ"(ptr %3)
  %25 = icmp ne ptr %GetType, @"?sBfTypeData@CultureInfo@Globalization@System@bf@@2HA"
  store i1 %25, ptr %24, align 1
  br label %exit

exit:                                             ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?VerifyWritable@CultureInfo@Globalization@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?__BfStaticCtor@CultureInfo@Globalization@System@bf@@SAXXZ"() #0 {
entry:
  %0 = load i1, ptr @didStaticInit, align 1
  br i1 %0, label %exit, label %init1

init1:                                            ; preds = %entry
  store i1 true, ptr @didStaticInit, align 1
  %Init = call i1 @"?Init@CultureInfo@Globalization@System@bf@@CA_NXZ"()
  store i1 %Init, ptr @"?init@CultureInfo@Globalization@System@bf@@2_NA", align 1
  br label %exit

exit:                                             ; preds = %init1, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsTaiwanSku@CultureInfo@Globalization@System@bf@@CA_NXZ"() #0

; Function Attrs: nounwind uwtable
declare i1 @"?GetSystemDefaultUILanguage@CultureInfo@Globalization@System@bf@@CA_NPEAVString@34@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
define ptr @"?GetFormat@CultureInfo@Globalization@System@bf@@UEAAPEAVObject@34@PEAVType@34@@Z"(ptr %this, ptr %formatType) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %1 = icmp eq ptr %formatType, @"?sBfTypeData@NumberFormatInfo@Globalization@System@bf@@2HA"
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  %get__NumberFormat = call ptr @"?get__NumberFormat@CultureInfo@Globalization@System@bf@@QEAAPEAVNumberFormatInfo@234@XZ"(ptr %0)
  store ptr %get__NumberFormat, ptr %__return, align 8
  br label %exit

if.end:                                           ; preds = %newScope
  %2 = icmp eq ptr %formatType, @"?sBfTypeData@DateTimeFormatInfo@Globalization@System@bf@@2HA"
  br i1 %2, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds ptr, ptr %3, i32 7
  %5 = load ptr, ptr %4, align 8
  %get__DateTimeFormat = call ptr %5(ptr %0)
  store ptr %get__DateTimeFormat, ptr %__return, align 8
  br label %exit

if.end2:                                          ; preds = %if.end
  store ptr null, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %if.end2, %if.then1, %if.then
  %6 = load ptr, ptr %__return, align 8
  ret ptr %6
}

; Function Attrs: nounwind uwtable
define void @"?GetDefaultLocaleName@CultureInfo@Globalization@System@bf@@CAXTint@@PEAVString@34@@Z"(i64 %localeType, ptr %outName) #0 {
entry:
  call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr %outName, ptr @__bfStrObj401)
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @"?GetCultureInfo@CultureInfo@Globalization@System@bf@@SAPEAV1234@UStringView@34@@Z"(ptr %name_mPtr, i64 %name_mLength) #0 {
entry:
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  %__return = alloca ptr, align 8
  %2 = alloca %"corlib.StringView@System@bf", align 8
  %retval = alloca ptr, align 8
  store ptr %name_mPtr, ptr %0, align 8
  store i64 %name_mLength, ptr %1, align 8
  call void @"?__BfCtor@StringView@System@bf@@QEAAXXZ"(ptr %2)
  %GetCultureInfoHelper = call ptr @"?GetCultureInfoHelper@CultureInfo@Globalization@System@bf@@CAPEAV1234@Tint@@UStringView@34@1@Z"(i64 0, ptr %name_mPtr, i64 %name_mLength, ptr %2)
  store ptr %GetCultureInfoHelper, ptr %retval, align 8
  %3 = load ptr, ptr %retval, align 8
  store ptr %3, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %4 = load ptr, ptr %__return, align 8
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define ptr @"?GetCultureByName@CultureInfo@Globalization@System@bf@@CAPEAV1234@PEAVString@34@_N@Z"(ptr %name, i1 zeroext %userOverride) #0 {
entry:
  %__return = alloca ptr, align 8
  %0 = alloca %"corlib.StringView@System@bf", align 8
  br i1 %userOverride, label %cond.then, label %cond.else

cond.then:                                        ; preds = %entry
  %1 = call ptr @tc_malloc(i64 58)
  %2 = getelementptr inbounds %"corlib.Object@System@bf", ptr %1, i32 0, i32 0
  store ptr @"?sBfClassVData@CultureInfo@Globalization@System@bf@@2UClassVData@34@A", ptr %2, align 8
  call void @"?__BfCtorClear@CultureInfo@Globalization@System@bf@@AEAAXXZ"(ptr %1)
  call void @"?__BfCtor@CultureInfo@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr %1, ptr %name)
  br label %cond.end

cond.else:                                        ; preds = %entry
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr sret(%"corlib.StringView@System@bf") %0, ptr %name)
  %3 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %0, i32 0, i32 0
  %4 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %3, i32 0, i32 2
  %7 = load i64, ptr %6, align 8
  %GetCultureInfo = call ptr @"?GetCultureInfo@CultureInfo@Globalization@System@bf@@SAPEAV1234@UStringView@34@@Z"(ptr %5, i64 %7)
  br label %cond.end

cond.end:                                         ; preds = %cond.else, %cond.then
  %8 = phi ptr [ %1, %cond.then ], [ %GetCultureInfo, %cond.else ]
  br label %cond.cont

cond.cont:                                        ; preds = %cond.end
  store ptr %8, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %cond.cont
  %9 = load ptr, ptr %__return, align 8
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define ptr @"?GetCultureInfoHelper@CultureInfo@Globalization@System@bf@@CAPEAV1234@Tint@@UStringView@34@1@Z"(i64 %lcid, ptr %name_mPtr, i64 %name_mLength, ptr %altName) #0 {
entry:
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  %__return = alloca ptr, align 8
  store ptr %name_mPtr, ptr %0, align 8
  store i64 %name_mLength, ptr %1, align 8
  %2 = call ptr @tc_malloc(i64 58)
  %3 = getelementptr inbounds %"corlib.Object@System@bf", ptr %2, i32 0, i32 0
  store ptr @"?sBfClassVData@CultureInfo@Globalization@System@bf@@2UClassVData@34@A", ptr %3, align 8
  call void @"?__BfCtorClear@CultureInfo@Globalization@System@bf@@AEAAXXZ"(ptr %2)
  call void @"?__BfCtor@CultureInfo@Globalization@System@bf@@AEAAXXZ"(ptr %2)
  store ptr %2, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %4 = load ptr, ptr %__return, align 8
  ret ptr %4
}

; Function Attrs: nounwind uwtable
define void @"?GetUserDefaultUILanguage@CultureInfo@Globalization@System@bf@@CAXPEAVString@34@@Z"(ptr %langName) #0 {
entry:
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @"?GetCalendarInstance@CultureInfo@Globalization@System@bf@@CAPEAVCalendar@234@Tint@@@Z"(i64 %calType) #0 {
entry:
  %__return = alloca ptr, align 8
  %0 = icmp eq i64 %calType, 1
  br i1 %0, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = call ptr @tc_malloc(i64 26)
  %2 = getelementptr inbounds %"corlib.Object@System@bf", ptr %1, i32 0, i32 0
  store ptr @"?sBfClassVData@GregorianCalendar@Globalization@System@bf@@2UClassVData@34@A", ptr %2, align 8
  call void @"?__BfCtorClear@GregorianCalendar@Globalization@System@bf@@AEAAXXZ"(ptr %1)
  call void @"?__BfCtor@GregorianCalendar@Globalization@System@bf@@QEAAXXZ"(ptr %1)
  store ptr %1, ptr %__return, align 8
  br label %exit

if.end:                                           ; preds = %entry
  call void @"?NotImplemented@Runtime@System@bf@@SAXPEAVString@23@Tint@@@Z"(ptr @__bfStrObj400, i64 354) #4
  unreachable

exit:                                             ; preds = %if.then
  %3 = load ptr, ptr %__return, align 8
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define void @"?__BfCtorClear@CultureInfo@Globalization@System@bf@@AEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 50, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfStaticDtor@CultureInfo@Globalization@System@bf@@SAXXZ"() #0 {
entry:
  %0 = load ptr, ptr @"?mDefaultCultureInfo@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
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
  %5 = load ptr, ptr @"?sUserDefaultCulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
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
  %10 = load ptr, ptr @"?sUserDefaultUICulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
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
  %15 = load ptr, ptr @"?sInvariantCultureInfo@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  %16 = icmp ne ptr %15, null
  br i1 %16, label %delete.body5, label %delete.end6

delete.body5:                                     ; preds = %delete.end4
  %17 = load ptr, ptr %15, align 8
  %18 = getelementptr inbounds ptr, ptr %17, i32 3
  %19 = load ptr, ptr %18, align 8
  call void %19(ptr %15)
  call void @tc_free(ptr %15)
  br label %delete.end6

delete.end6:                                      ; preds = %delete.body5, %delete.end4
  br label %exit

exit:                                             ; preds = %delete.end6
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?GCMarkStaticMembers@CultureInfo@Globalization@System@bf@@KAXXZ"() #0

; Function Attrs: nounwind uwtable
declare void @"?GCFindTLSMembers@CultureInfo@Globalization@System@bf@@KAXXZ"() #0

; Function Attrs: nounwind uwtable
define void @"?~this@CultureInfo@Globalization@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %1 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %0, i32 0, i32 6
  br label %newScope1

newScope1:                                        ; preds = %newScope
  %2 = load ptr, ptr %1, align 8
  %3 = icmp ne ptr %2, null
  br i1 %3, label %delete.body, label %delete.end

delete.body:                                      ; preds = %newScope1
  %4 = load ptr, ptr %2, align 8
  %5 = getelementptr inbounds ptr, ptr %4, i32 3
  %6 = load ptr, ptr %5, align 8
  call void %6(ptr %2)
  call void @tc_free(ptr %2)
  br label %delete.end

delete.end:                                       ; preds = %delete.body, %newScope1
  %7 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %0, i32 0, i32 5
  br label %newScope2

newScope2:                                        ; preds = %delete.end
  %8 = load ptr, ptr %7, align 8
  %9 = icmp ne ptr %8, null
  br i1 %9, label %delete.body3, label %delete.end4

delete.body3:                                     ; preds = %newScope2
  %10 = load ptr, ptr %8, align 8
  %11 = getelementptr inbounds ptr, ptr %10, i32 3
  %12 = load ptr, ptr %11, align 8
  call void %12(ptr %8)
  call void @tc_free(ptr %8)
  br label %delete.end4

delete.end4:                                      ; preds = %delete.body3, %newScope2
  %13 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %0, i32 0, i32 4
  br label %newScope5

newScope5:                                        ; preds = %delete.end4
  %14 = load ptr, ptr %13, align 8
  %15 = icmp ne ptr %14, null
  br i1 %15, label %delete.body6, label %delete.end7

delete.body6:                                     ; preds = %newScope5
  %16 = load ptr, ptr %14, align 8
  %17 = getelementptr inbounds ptr, ptr %16, i32 3
  %18 = load ptr, ptr %17, align 8
  call void %18(ptr %14)
  call void @tc_free(ptr %14)
  br label %delete.end7

delete.end7:                                      ; preds = %delete.body6, %newScope5
  %19 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %0, i32 0, i32 3
  br label %newScope8

newScope8:                                        ; preds = %delete.end7
  %20 = load ptr, ptr %19, align 8
  %21 = icmp ne ptr %20, null
  br i1 %21, label %delete.body9, label %delete.end10

delete.body9:                                     ; preds = %newScope8
  %22 = load ptr, ptr %20, align 8
  %23 = getelementptr inbounds ptr, ptr %22, i32 3
  %24 = load ptr, ptr %23, align 8
  call void %24(ptr %20)
  call void @tc_free(ptr %20)
  br label %delete.end10

delete.end10:                                     ; preds = %delete.body9, %newScope8
  %25 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %0, i32 0, i32 2
  br label %newScope11

newScope11:                                       ; preds = %delete.end10
  %26 = load ptr, ptr %25, align 8
  %27 = icmp ne ptr %26, null
  br i1 %27, label %delete.body12, label %delete.end13

delete.body12:                                    ; preds = %newScope11
  %28 = load ptr, ptr %26, align 8
  %29 = getelementptr inbounds ptr, ptr %28, i32 3
  %30 = load ptr, ptr %29, align 8
  call void %30(ptr %26)
  call void @tc_free(ptr %26)
  br label %delete.end13

delete.end13:                                     ; preds = %delete.body12, %newScope11
  %31 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %0, i32 0, i32 1
  br label %newScope14

newScope14:                                       ; preds = %delete.end13
  %32 = load ptr, ptr %31, align 8
  %33 = icmp ne ptr %32, null
  br i1 %33, label %delete.body15, label %delete.end16

delete.body15:                                    ; preds = %newScope14
  %34 = load ptr, ptr %32, align 8
  %35 = getelementptr inbounds ptr, ptr %34, i32 3
  %36 = load ptr, ptr %35, align 8
  call void %36(ptr %32)
  call void @tc_free(ptr %32)
  br label %delete.end16

delete.end16:                                     ; preds = %delete.body15, %newScope14
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr %0)
  br label %exit

exit:                                             ; preds = %delete.end16
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@CultureInfo@Globalization@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@CultureInfo@Globalization@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers@CultureInfo@Globalization@System@bf@@IEAAXXZ"(ptr) #0

declare void @tc_free(ptr)

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@NumberFormatInfo@Globalization@System@bf@@QEAAXPEAVCultureData@234@@Z"(ptr, ptr) #0

declare ptr @tc_malloc(i64)

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@NumberFormatInfo@Globalization@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @"??$CompareExchange@PEAVNumberFormatInfo@Globalization@System@bf@@W4RMWAtomicOrdering@Interlocked@Threading@23@$$04@Interlocked@Threading@System@bf@@SAPEAVNumberFormatInfo@Globalization@34@AEAPEAVNumberFormatInfo@Globalization@System@bf@@PEAV0123@1W4RMWAtomicOrdering@Interlocked@Threading@23@$$04@Z"(ptr dereferenceable(8) %location, ptr %comparand, ptr %value) #1 {
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

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i4$String@System@bf@@QEAAXAEATint@@@Z"(ptr, ptr dereferenceable(8)) #0

; Function Attrs: nounwind uwtable
declare i64 @"?this$calcAppend@i5$String@System@bf@@SATint@@XZ"() #0

; Function Attrs: nounwind uwtable
declare void @"?~this@String@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsEmpty@String@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@CultureData@Globalization@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@CultureData@Globalization@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?GetCultureData@CultureData@Globalization@System@bf@@CAPEAV1234@UStringView@34@_N@Z"(ptr, i64, i1 zeroext) #0

; Function Attrs: nounwind uwtable
declare void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr noalias sret(%"corlib.StringView@System@bf"), ptr) #0

; Function Attrs: noreturn nounwind uwtable
declare void @"?FatalError@Runtime@System@bf@@SAXPEAVString@23@0Tint@@@Z"(ptr, ptr, i64) #2

; Function Attrs: nounwind uwtable
declare void @"?get__CultureName@CultureData@Globalization@System@bf@@AEAA?AUStringView@34@XZ"(ptr, ptr noalias sret(%"corlib.StringView@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i26$String@System@bf@@QEAAXAEATint@@UStringView@23@@Z"(ptr, ptr dereferenceable(8), ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?this$calcAppend@i27$String@System@bf@@SATint@@UStringView@23@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?GetType@Object@System@bf@@QEAAPEAVType@23@XZ"(ptr) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
declare i1 @"??8StringView@System@bf@@SA_NU012@0@Z"(ptr, i64, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@StringView@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?~this@Object@System@bf@@UEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@DateTimeFormatInfo@Globalization@System@bf@@QEAAXPEAVCultureData@234@PEAVCalendar@234@@Z"(ptr, ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@DateTimeFormatInfo@Globalization@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
define internal void @"??$Fence@W4FenceAtomicOrdering@Interlocked@Threading@System@bf@@$$04@Interlocked@Threading@System@bf@@SAXW4FenceAtomicOrdering@Interlocked@Threading@System@bf@@$$04@Z"() #1 {
entry:
  fence seq_cst
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?get__DefaultCalendar@CultureData@Globalization@System@bf@@AEAAPEAVCalendar@234@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?SetReadOnlyState@Calendar@Globalization@System@bf@@AEAAX_N@Z"(ptr, i1 zeroext) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@GregorianCalendar@Globalization@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@GregorianCalendar@Globalization@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: noreturn nounwind uwtable
declare void @"?NotImplemented@Runtime@System@bf@@SAXPEAVString@23@Tint@@@Z"(ptr, i64) #2

attributes #0 = { nounwind uwtable }
attributes #1 = { alwaysinline nounwind uwtable }
attributes #2 = { noreturn nounwind uwtable }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { noreturn }
