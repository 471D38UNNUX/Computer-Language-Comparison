; ModuleID = 'System_Globalization_NumberFormatInfo'
source_filename = "System_Globalization_NumberFormatInfo"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.Type@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, i32, i32, i32, i8, i8, i8 }>
%"corlib.NumberFormatInfo@Globalization@System@bf" = type <{ %"corlib.Object@System@bf", ptr, ptr, ptr, %"corlib.OwnedString@Globalization@System@bf", [7 x i8], %"corlib.OwnedString@Globalization@System@bf", [7 x i8], %"corlib.OwnedString@Globalization@System@bf", [7 x i8], %"corlib.OwnedString@Globalization@System@bf", [7 x i8], %"corlib.OwnedString@Globalization@System@bf", [7 x i8], %"corlib.OwnedString@Globalization@System@bf", [7 x i8], %"corlib.OwnedString@Globalization@System@bf", [7 x i8], ptr, %"corlib.OwnedString@Globalization@System@bf", [7 x i8], %"corlib.OwnedString@Globalization@System@bf", [7 x i8], %"corlib.OwnedString@Globalization@System@bf", [7 x i8], %"corlib.OwnedString@Globalization@System@bf", [7 x i8], %"corlib.OwnedString@Globalization@System@bf", [7 x i8], %"corlib.OwnedString@Globalization@System@bf", [7 x i8], %"corlib.OwnedString@Globalization@System@bf", [7 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i1, i1 }>
%"corlib.OwnedString@Globalization@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i1 }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.Array@System@bf" = type <{ %"corlib.Object@System@bf", i32 }>
%"corlib.?$Array1@H@System@bf" = type <{ %"corlib.Array@System@bf", i32 }>
%"corlib.?$Array1@PEAVString@System@bf@@@System@bf" = type <{ %"corlib.Array@System@bf", [4 x i8], ptr }>
%"corlib.TypeInstance@Reflection@System@bf" = type <{ %"corlib.Type@System@bf", [1 x i8], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i16, i16, i16, [6 x i8], ptr, ptr, ptr, ptr, ptr, ptr }>
%"corlib.CultureInfo@Globalization@System@bf" = type <{ %"corlib.Object@System@bf", ptr, ptr, ptr, ptr, ptr, ptr, i1, i1 }>
%"corlib.?$Span@H@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.StringView@System@bf" = type <{ %"corlib.?$Span@D@System@bf" }>
%"corlib.?$Span@D@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.?$Span@PEAVString@System@bf@@@System@bf" = type opaque

@"?invariantInfo@NumberFormatInfo@Globalization@System@bf@@2PEAV1234@C" = global ptr null, align 8
@"?sBfClassVData@?$Array1@H@System@bf@@2UClassVData@23@A" = external constant [4 x ptr]
@"?sBfClassVData@String@System@bf@@2UClassVData@23@A" = external constant [8 x ptr]
@__bfStrObj206 = external constant %"corlib.String@System@bf"
@__bfStrObj207 = external constant %"corlib.String@System@bf"
@__bfStrObj208 = external constant %"corlib.String@System@bf"
@__bfStrObj209 = external constant %"corlib.String@System@bf"
@__bfStrObj210 = external constant %"corlib.String@System@bf"
@__bfStrObj211 = external constant %"corlib.String@System@bf"
@__bfStrObj212 = external constant %"corlib.String@System@bf"
@__bfStrObj213 = external constant %"corlib.String@System@bf"
@__bfStrObj214 = external constant %"corlib.String@System@bf"
@__bfStrObj215 = external constant %"corlib.String@System@bf"
@"?sBfClassVData@?$Array1@PEAVString@System@bf@@@System@bf@@2UClassVData@23@A" = external constant [4 x ptr]
@__bfStrObj216 = external constant %"corlib.String@System@bf"
@__bfStrObj217 = external constant %"corlib.String@System@bf"
@__bfStrObj218 = external constant %"corlib.String@System@bf"
@__bfStrObj219 = external constant %"corlib.String@System@bf"
@__bfStrObj220 = external constant %"corlib.String@System@bf"
@__bfStrObj221 = external constant %"corlib.String@System@bf"
@__bfStrObj222 = external constant %"corlib.String@System@bf"
@__bfStrObj223 = external constant %"corlib.String@System@bf"
@__bfStrObj224 = external constant %"corlib.String@System@bf"
@__bfStrObj225 = external constant %"corlib.String@System@bf"
@"?sBfTypeData@CultureInfo@Globalization@System@bf@@2HA" = external constant %"corlib.Type@System@bf"
@"?sBfTypeData@NumberFormatInfo@Globalization@System@bf@@2HA" = external constant %"corlib.Type@System@bf"
@"?sBfSlotOfs@IFormatProvider@System@bf@@2HA" = external constant i32

; Function Attrs: nounwind uwtable
define void @"?DeleteNativeDigits@NumberFormatInfo@Globalization@System@bf@@AEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %0 = alloca i64, align 8
  %1 = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %2 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %3 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %2, i32 0, i32 33
  %4 = load ptr, ptr %3, align 8
  %get__IsEmpty = call i1 @"?get__IsEmpty@Array@System@bf@@QEAA_NXZ"(ptr %4)
  %5 = xor i1 %get__IsEmpty, true
  br i1 %5, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %newScope
  %6 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %2, i32 0, i32 33
  %7 = load ptr, ptr %6, align 8
  %get__ = call ptr @"?get__@UCHK$?$Array1@PEAVString@System@bf@@@System@bf@@QEAAAEAPEAVString@23@Tint@@@Z"(ptr %7, i64 0)
  %8 = load ptr, ptr %get__, align 8
  %9 = icmp ne ptr %8, @__bfStrObj216
  br label %land.end

land.end:                                         ; preds = %land.rhs, %newScope
  %10 = phi i1 [ false, %newScope ], [ %9, %land.rhs ]
  br i1 %10, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %11 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %2, i32 0, i32 33
  %12 = load ptr, ptr %11, align 8
  br label %newScope1

newScope1:                                        ; preds = %if.then
  store i64 0, ptr %0, align 8
  br label %foreach.cond

foreach.cond:                                     ; preds = %foreach.inc, %newScope1
  %13 = load i64, ptr %0, align 8
  %14 = getelementptr inbounds %"corlib.Array@System@bf", ptr %12, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %foreach.body, label %foreach.end

foreach.body:                                     ; preds = %foreach.cond
  %18 = load i64, ptr %0, align 8
  %get__2 = call ptr @"?get__@UCHK$?$Array1@PEAVString@System@bf@@@System@bf@@QEAAAEAPEAVString@23@Tint@@@Z"(ptr %12, i64 %18)
  %19 = load ptr, ptr %get__2, align 8
  store ptr %19, ptr %1, align 8
  br label %newScope3

newScope3:                                        ; preds = %foreach.body
  %20 = load ptr, ptr %1, align 8
  %21 = icmp ne ptr %20, null
  br i1 %21, label %delete.body, label %delete.end

delete.body:                                      ; preds = %newScope3
  %22 = load ptr, ptr %20, align 8
  %23 = getelementptr inbounds ptr, ptr %22, i32 3
  %24 = load ptr, ptr %23, align 8
  call void %24(ptr %20)
  call void @tc_free(ptr %20)
  br label %delete.end

delete.end:                                       ; preds = %delete.body, %newScope3
  br label %foreach.inc

foreach.inc:                                      ; preds = %delete.end
  %25 = load i64, ptr %0, align 8
  %26 = add i64 %25, 1
  store i64 %26, ptr %0, align 8
  br label %foreach.cond

foreach.end:                                      ; preds = %foreach.cond
  br label %if.end

if.end:                                           ; preds = %foreach.end, %land.end
  %27 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %2, i32 0, i32 33
  %28 = load ptr, ptr %27, align 8
  %29 = icmp ne ptr %28, null
  br i1 %29, label %delete.body4, label %delete.end5

delete.body4:                                     ; preds = %if.end
  %30 = load ptr, ptr %28, align 8
  %31 = getelementptr inbounds ptr, ptr %30, i32 3
  %32 = load ptr, ptr %31, align 8
  call void %32(ptr %28)
  call void @tc_free(ptr %28)
  br label %delete.end5

delete.end5:                                      ; preds = %delete.body4, %if.end
  br label %exit

exit:                                             ; preds = %delete.end5
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@NumberFormatInfo@Globalization@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  call void @"?__BfCtor@NumberFormatInfo@Globalization@System@bf@@QEAAXPEAVCultureData@234@@Z"(ptr %0, ptr null)
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?VerifyDecimalSeparator@NumberFormatInfo@Globalization@System@bf@@CAXPEAVString@34@0@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?VerifyGroupSeparator@NumberFormatInfo@Globalization@System@bf@@CAXPEAVString@34@0@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?VerifyNativeDigits@NumberFormatInfo@Globalization@System@bf@@CAXPEAV?$Array1@PEAVString@System@bf@@@34@PEAVString@34@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@NumberFormatInfo@Globalization@System@bf@@QEAAXPEAVCultureData@234@@Z"(ptr %this, ptr %cultureData) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %0 = alloca %"corlib.OwnedString@Globalization@System@bf", align 8
  %1 = alloca %"corlib.OwnedString@Globalization@System@bf", align 8
  %2 = alloca %"corlib.OwnedString@Globalization@System@bf", align 8
  %3 = alloca %"corlib.OwnedString@Globalization@System@bf", align 8
  %4 = alloca %"corlib.OwnedString@Globalization@System@bf", align 8
  %5 = alloca %"corlib.OwnedString@Globalization@System@bf", align 8
  %6 = alloca %"corlib.OwnedString@Globalization@System@bf", align 8
  %7 = alloca %"corlib.OwnedString@Globalization@System@bf", align 8
  %8 = alloca %"corlib.OwnedString@Globalization@System@bf", align 8
  %9 = alloca %"corlib.OwnedString@Globalization@System@bf", align 8
  %10 = alloca %"corlib.OwnedString@Globalization@System@bf", align 8
  %11 = alloca %"corlib.OwnedString@Globalization@System@bf", align 8
  %12 = alloca %"corlib.OwnedString@Globalization@System@bf", align 8
  %13 = alloca %"corlib.OwnedString@Globalization@System@bf", align 8
  store ptr %this, ptr %this.addr, align 8
  %14 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %15 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 1
  %16 = call ptr @tc_malloc(i64 16)
  %17 = getelementptr inbounds %"corlib.Object@System@bf", ptr %16, i32 0, i32 0
  store ptr @"?sBfClassVData@?$Array1@H@System@bf@@2UClassVData@23@A", ptr %17, align 8
  call void @"?__BfCtor@?$Array1@H@System@bf@@QEAAXXZ"(ptr %16)
  %18 = getelementptr inbounds %"corlib.Array@System@bf", ptr %16, i32 0, i32 1
  store i32 1, ptr %18, align 4
  %19 = getelementptr inbounds %"corlib.?$Array1@H@System@bf", ptr %16, i32 0, i32 1
  %20 = getelementptr inbounds i32, ptr %19, i32 0
  store i32 3, ptr %20, align 4
  store ptr %16, ptr %15, align 8
  %21 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 2
  %22 = call ptr @tc_malloc(i64 16)
  %23 = getelementptr inbounds %"corlib.Object@System@bf", ptr %22, i32 0, i32 0
  store ptr @"?sBfClassVData@?$Array1@H@System@bf@@2UClassVData@23@A", ptr %23, align 8
  call void @"?__BfCtor@?$Array1@H@System@bf@@QEAAXXZ"(ptr %22)
  %24 = getelementptr inbounds %"corlib.Array@System@bf", ptr %22, i32 0, i32 1
  store i32 1, ptr %24, align 4
  %25 = getelementptr inbounds %"corlib.?$Array1@H@System@bf", ptr %22, i32 0, i32 1
  %26 = getelementptr inbounds i32, ptr %25, i32 0
  store i32 3, ptr %26, align 4
  store ptr %22, ptr %21, align 8
  %27 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 3
  %28 = call ptr @tc_malloc(i64 16)
  %29 = getelementptr inbounds %"corlib.Object@System@bf", ptr %28, i32 0, i32 0
  store ptr @"?sBfClassVData@?$Array1@H@System@bf@@2UClassVData@23@A", ptr %29, align 8
  call void @"?__BfCtor@?$Array1@H@System@bf@@QEAAXXZ"(ptr %28)
  %30 = getelementptr inbounds %"corlib.Array@System@bf", ptr %28, i32 0, i32 1
  store i32 1, ptr %30, align 4
  %31 = getelementptr inbounds %"corlib.?$Array1@H@System@bf", ptr %28, i32 0, i32 1
  %32 = getelementptr inbounds i32, ptr %31, i32 0
  store i32 3, ptr %32, align 4
  store ptr %28, ptr %27, align 8
  %33 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 4
  call void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr %0, ptr @__bfStrObj206)
  %34 = load %"corlib.OwnedString@Globalization@System@bf", ptr %0, align 8
  store %"corlib.OwnedString@Globalization@System@bf" %34, ptr %33, align 8
  %35 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 6
  call void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr %1, ptr @__bfStrObj207)
  %36 = load %"corlib.OwnedString@Globalization@System@bf", ptr %1, align 8
  store %"corlib.OwnedString@Globalization@System@bf" %36, ptr %35, align 8
  %37 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 8
  call void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr %2, ptr @__bfStrObj208)
  %38 = load %"corlib.OwnedString@Globalization@System@bf", ptr %2, align 8
  store %"corlib.OwnedString@Globalization@System@bf" %38, ptr %37, align 8
  %39 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 10
  call void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr %3, ptr @__bfStrObj209)
  %40 = load %"corlib.OwnedString@Globalization@System@bf", ptr %3, align 8
  store %"corlib.OwnedString@Globalization@System@bf" %40, ptr %39, align 8
  %41 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 12
  call void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr %4, ptr @__bfStrObj209)
  %42 = load %"corlib.OwnedString@Globalization@System@bf", ptr %4, align 8
  store %"corlib.OwnedString@Globalization@System@bf" %42, ptr %41, align 8
  %43 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 14
  call void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr %5, ptr @__bfStrObj208)
  %44 = load %"corlib.OwnedString@Globalization@System@bf", ptr %5, align 8
  store %"corlib.OwnedString@Globalization@System@bf" %44, ptr %43, align 8
  %45 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 16
  call void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr %6, ptr @__bfStrObj210)
  %46 = load %"corlib.OwnedString@Globalization@System@bf", ptr %6, align 8
  store %"corlib.OwnedString@Globalization@System@bf" %46, ptr %45, align 8
  %47 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 18
  store ptr null, ptr %47, align 8
  %48 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 19
  call void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr %7, ptr @__bfStrObj211)
  %49 = load %"corlib.OwnedString@Globalization@System@bf", ptr %7, align 8
  store %"corlib.OwnedString@Globalization@System@bf" %49, ptr %48, align 8
  %50 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 21
  call void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr %8, ptr @__bfStrObj212)
  %51 = load %"corlib.OwnedString@Globalization@System@bf", ptr %8, align 8
  store %"corlib.OwnedString@Globalization@System@bf" %51, ptr %50, align 8
  %52 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 23
  call void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr %9, ptr @__bfStrObj213)
  %53 = load %"corlib.OwnedString@Globalization@System@bf", ptr %9, align 8
  store %"corlib.OwnedString@Globalization@System@bf" %53, ptr %52, align 8
  %54 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 25
  call void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr %10, ptr @__bfStrObj208)
  %55 = load %"corlib.OwnedString@Globalization@System@bf", ptr %10, align 8
  store %"corlib.OwnedString@Globalization@System@bf" %55, ptr %54, align 8
  %56 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 27
  call void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr %11, ptr @__bfStrObj209)
  %57 = load %"corlib.OwnedString@Globalization@System@bf", ptr %11, align 8
  store %"corlib.OwnedString@Globalization@System@bf" %57, ptr %56, align 8
  %58 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 29
  call void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr %12, ptr @__bfStrObj214)
  %59 = load %"corlib.OwnedString@Globalization@System@bf", ptr %12, align 8
  store %"corlib.OwnedString@Globalization@System@bf" %59, ptr %58, align 8
  %60 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 31
  call void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr %13, ptr @__bfStrObj215)
  %61 = load %"corlib.OwnedString@Globalization@System@bf", ptr %13, align 8
  store %"corlib.OwnedString@Globalization@System@bf" %61, ptr %60, align 8
  %62 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 33
  %63 = call ptr @tc_malloc(i64 96)
  %64 = getelementptr inbounds %"corlib.Object@System@bf", ptr %63, i32 0, i32 0
  store ptr @"?sBfClassVData@?$Array1@PEAVString@System@bf@@@System@bf@@2UClassVData@23@A", ptr %64, align 8
  call void @"?__BfCtor@?$Array1@PEAVString@System@bf@@@System@bf@@QEAAXXZ"(ptr %63)
  %65 = getelementptr inbounds %"corlib.Array@System@bf", ptr %63, i32 0, i32 1
  store i32 10, ptr %65, align 4
  %66 = getelementptr inbounds %"corlib.?$Array1@PEAVString@System@bf@@@System@bf", ptr %63, i32 0, i32 2
  %67 = getelementptr inbounds ptr, ptr %66, i32 0
  store ptr @__bfStrObj216, ptr %67, align 8
  %68 = getelementptr inbounds ptr, ptr %66, i32 1
  store ptr @__bfStrObj217, ptr %68, align 8
  %69 = getelementptr inbounds ptr, ptr %66, i32 2
  store ptr @__bfStrObj218, ptr %69, align 8
  %70 = getelementptr inbounds ptr, ptr %66, i32 3
  store ptr @__bfStrObj219, ptr %70, align 8
  %71 = getelementptr inbounds ptr, ptr %66, i32 4
  store ptr @__bfStrObj220, ptr %71, align 8
  %72 = getelementptr inbounds ptr, ptr %66, i32 5
  store ptr @__bfStrObj221, ptr %72, align 8
  %73 = getelementptr inbounds ptr, ptr %66, i32 6
  store ptr @__bfStrObj222, ptr %73, align 8
  %74 = getelementptr inbounds ptr, ptr %66, i32 7
  store ptr @__bfStrObj223, ptr %74, align 8
  %75 = getelementptr inbounds ptr, ptr %66, i32 8
  store ptr @__bfStrObj224, ptr %75, align 8
  %76 = getelementptr inbounds ptr, ptr %66, i32 9
  store ptr @__bfStrObj225, ptr %76, align 8
  store ptr %63, ptr %62, align 8
  %77 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 34
  store i32 2, ptr %77, align 4
  %78 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 35
  store i32 2, ptr %78, align 4
  %79 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 36
  store i32 0, ptr %79, align 4
  %80 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 37
  store i32 0, ptr %80, align 4
  %81 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 38
  store i32 1, ptr %81, align 4
  %82 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 39
  store i32 0, ptr %82, align 4
  %83 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 40
  store i32 0, ptr %83, align 4
  %84 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 41
  store i32 2, ptr %84, align 4
  %85 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 42
  store i32 1, ptr %85, align 4
  %86 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 43
  store i1 false, ptr %86, align 1
  %87 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 44
  store i1 false, ptr %87, align 1
  br label %newScope1

newScope1:                                        ; preds = %newScope
  %88 = icmp ne ptr %cultureData, null
  br i1 %88, label %if.then, label %if.end4

if.then:                                          ; preds = %newScope1
  call void @"?GetNFIValues@CultureData@Globalization@System@bf@@AEAAXPEAVNumberFormatInfo@234@@Z"(ptr %cultureData, ptr %14)
  br label %newScope2

newScope2:                                        ; preds = %if.then
  %get__IsInvariantCulture = call i1 @"?get__IsInvariantCulture@CultureData@Globalization@System@bf@@QEAA_NXZ"(ptr %cultureData)
  br i1 %get__IsInvariantCulture, label %if.then3, label %if.end

if.then3:                                         ; preds = %newScope2
  %89 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %14, i32 0, i32 44
  store i1 true, ptr %89, align 1
  br label %if.end

if.end:                                           ; preds = %if.then3, %newScope2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %newScope1
  br label %exit

exit:                                             ; preds = %if.end4
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?VerifyWritable@NumberFormatInfo@Globalization@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
define ptr @"?GetInstance@NumberFormatInfo@Globalization@System@bf@@SAPEAV1234@PEAVIFormatProvider@34@@Z"(ptr %formatProvider) #0 {
entry:
  %__return = alloca ptr, align 8
  %info = alloca ptr, align 8
  %0 = alloca ptr, align 8
  %cultureProvider = alloca ptr, align 8
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  store ptr null, ptr %0, align 8
  %3 = icmp eq ptr %formatProvider, null
  br i1 %3, label %as.end, label %as.check

as.check:                                         ; preds = %entry
  %4 = load i64, ptr %formatProvider, align 8
  %5 = add i64 %4, 8
  %6 = inttoptr i64 %5 to ptr
  %7 = load i32, ptr %6, align 4
  %8 = load i32, ptr getelementptr inbounds (%"corlib.TypeInstance@Reflection@System@bf", ptr @"?sBfTypeData@CultureInfo@Globalization@System@bf@@2HA", i32 0, i32 11), align 4
  %9 = load i32, ptr getelementptr inbounds (%"corlib.TypeInstance@Reflection@System@bf", ptr @"?sBfTypeData@CultureInfo@Globalization@System@bf@@2HA", i32 0, i32 12), align 4
  %10 = sub i32 %7, %8
  %11 = icmp ule i32 %10, %9
  br i1 %11, label %as.match, label %as.end

as.match:                                         ; preds = %as.check
  store ptr %formatProvider, ptr %0, align 8
  br label %as.end

as.end:                                           ; preds = %as.match, %as.check, %entry
  %12 = load ptr, ptr %0, align 8
  store ptr %12, ptr %cultureProvider, align 8
  br label %newScope

newScope:                                         ; preds = %as.end
  %13 = load ptr, ptr %cultureProvider, align 8
  %14 = icmp ne ptr %13, null
  br i1 %14, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %newScope
  %15 = load ptr, ptr %cultureProvider, align 8
  %16 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %15, i32 0, i32 7
  %17 = load i1, ptr %16, align 1
  %18 = xor i1 %17, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %newScope
  %19 = phi i1 [ false, %newScope ], [ %18, %land.rhs ]
  br i1 %19, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  %20 = load ptr, ptr %cultureProvider, align 8
  %21 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 8
  store ptr %22, ptr %info, align 8
  br label %newScope1

newScope1:                                        ; preds = %if.then
  %23 = load ptr, ptr %info, align 8
  %24 = icmp ne ptr %23, null
  br i1 %24, label %if.then2, label %if.else

if.then2:                                         ; preds = %newScope1
  %25 = load ptr, ptr %info, align 8
  store ptr %25, ptr %__return, align 8
  br label %exit

if.else:                                          ; preds = %newScope1
  %26 = load ptr, ptr %cultureProvider, align 8
  %get__NumberFormat = call ptr @"?get__NumberFormat@CultureInfo@Globalization@System@bf@@QEAAPEAVNumberFormatInfo@234@XZ"(ptr %26)
  store ptr %get__NumberFormat, ptr %__return, align 8
  br label %exit

if.end:                                           ; preds = %land.end
  store ptr null, ptr %1, align 8
  %27 = icmp eq ptr %formatProvider, null
  br i1 %27, label %as.end5, label %as.check3

as.check3:                                        ; preds = %if.end
  %28 = load i64, ptr %formatProvider, align 8
  %29 = add i64 %28, 8
  %30 = inttoptr i64 %29 to ptr
  %31 = load i32, ptr %30, align 4
  %32 = load i32, ptr getelementptr inbounds (%"corlib.TypeInstance@Reflection@System@bf", ptr @"?sBfTypeData@NumberFormatInfo@Globalization@System@bf@@2HA", i32 0, i32 11), align 4
  %33 = load i32, ptr getelementptr inbounds (%"corlib.TypeInstance@Reflection@System@bf", ptr @"?sBfTypeData@NumberFormatInfo@Globalization@System@bf@@2HA", i32 0, i32 12), align 4
  %34 = sub i32 %31, %32
  %35 = icmp ule i32 %34, %33
  br i1 %35, label %as.match4, label %as.end5

as.match4:                                        ; preds = %as.check3
  store ptr %formatProvider, ptr %1, align 8
  br label %as.end5

as.end5:                                          ; preds = %as.match4, %as.check3, %if.end
  %36 = load ptr, ptr %1, align 8
  store ptr %36, ptr %info, align 8
  br label %newScope6

newScope6:                                        ; preds = %as.end5
  %37 = load ptr, ptr %info, align 8
  %38 = icmp ne ptr %37, null
  br i1 %38, label %if.then7, label %if.end8

if.then7:                                         ; preds = %newScope6
  %39 = load ptr, ptr %info, align 8
  store ptr %39, ptr %__return, align 8
  br label %exit

if.end8:                                          ; preds = %newScope6
  %40 = icmp ne ptr %formatProvider, null
  br i1 %40, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.end8
  %41 = load i32, ptr @"?sBfSlotOfs@IFormatProvider@System@bf@@2HA", align 4
  %42 = load ptr, ptr %formatProvider, align 8
  %43 = getelementptr inbounds ptr, ptr %42, i32 %41
  %44 = load ptr, ptr %43, align 8
  %45 = getelementptr inbounds ptr, ptr %44, i32 0
  %46 = load ptr, ptr %45, align 8
  %GetFormat = call ptr %46(ptr %formatProvider, ptr @"?sBfTypeData@NumberFormatInfo@Globalization@System@bf@@2HA")
  store ptr null, ptr %2, align 8
  %47 = icmp eq ptr %GetFormat, null
  br i1 %47, label %as.end12, label %as.check10

as.check10:                                       ; preds = %if.then9
  %48 = load i64, ptr %GetFormat, align 8
  %49 = add i64 %48, 8
  %50 = inttoptr i64 %49 to ptr
  %51 = load i32, ptr %50, align 4
  %52 = load i32, ptr getelementptr inbounds (%"corlib.TypeInstance@Reflection@System@bf", ptr @"?sBfTypeData@NumberFormatInfo@Globalization@System@bf@@2HA", i32 0, i32 11), align 4
  %53 = load i32, ptr getelementptr inbounds (%"corlib.TypeInstance@Reflection@System@bf", ptr @"?sBfTypeData@NumberFormatInfo@Globalization@System@bf@@2HA", i32 0, i32 12), align 4
  %54 = sub i32 %51, %52
  %55 = icmp ule i32 %54, %53
  br i1 %55, label %as.match11, label %as.end12

as.match11:                                       ; preds = %as.check10
  store ptr %GetFormat, ptr %2, align 8
  br label %as.end12

as.end12:                                         ; preds = %as.match11, %as.check10, %if.then9
  %56 = load ptr, ptr %2, align 8
  store ptr %56, ptr %info, align 8
  br label %newScope13

newScope13:                                       ; preds = %as.end12
  %57 = load ptr, ptr %info, align 8
  %58 = icmp ne ptr %57, null
  br i1 %58, label %if.then14, label %if.end15

if.then14:                                        ; preds = %newScope13
  %59 = load ptr, ptr %info, align 8
  store ptr %59, ptr %__return, align 8
  br label %exit

if.end15:                                         ; preds = %newScope13
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end8
  %get__CurrentInfo = call ptr @"?get__CurrentInfo@NumberFormatInfo@Globalization@System@bf@@SAPEAV1234@XZ"()
  store ptr %get__CurrentInfo, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %if.end16, %if.then14, %if.then7, %if.else, %if.then2
  %60 = load ptr, ptr %__return, align 8
  ret ptr %60
}

; Function Attrs: nounwind uwtable
define i32 @"?get__CurrencyDecimalDigits@NumberFormatInfo@Globalization@System@bf@@QEAAHXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 35
  %2 = load i32, ptr %1, align 4
  store i32 %2, ptr %__return, align 4
  br label %exit

exit:                                             ; preds = %entry
  %3 = load i32, ptr %__return, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
declare void @"?set__CurrencyDecimalDigits@NumberFormatInfo@Globalization@System@bf@@QEAAXH@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
define ptr @"?get__CurrencyDecimalSeparator@NumberFormatInfo@Globalization@System@bf@@QEAAPEAVString@34@XZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 14
  %2 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %1, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  store ptr %3, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %4 = load ptr, ptr %__return, align 8
  ret ptr %4
}

; Function Attrs: nounwind uwtable
declare void @"?set__CurrencyDecimalSeparator@NumberFormatInfo@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsReadOnly@NumberFormatInfo@Globalization@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?CheckGroupSize@NumberFormatInfo@Globalization@System@bf@@KAXPEAVString@34@PEAV?$Array1@Tint@@@34@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
define void @"?get__CurrencyGroupSizes@NumberFormatInfo@Globalization@System@bf@@QEAA?AU?$Span@H@34@XZ"(ptr %this, ptr noalias sret(%"corlib.?$Span@H@System@bf") %0) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.?$Span@H@System@bf", align 8
  store ptr %this, ptr %this.addr, align 8
  %2 = load ptr, ptr %this.addr, align 8
  store ptr %0, ptr %__return.addr, align 8
  %3 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %2, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  call void @"??B?$Span@H@System@bf@@SA?AU012@PEAV?$Array1@H@12@@Z"(ptr sret(%"corlib.?$Span@H@System@bf") %1, ptr %4)
  %5 = load %"corlib.?$Span@H@System@bf", ptr %1, align 8
  %6 = load ptr, ptr %__return.addr, align 8
  store %"corlib.?$Span@H@System@bf" %5, ptr %6, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?set__CurrencyGroupSizes@NumberFormatInfo@Globalization@System@bf@@QEAAXU?$Span@H@34@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
define void @"?get__NumberGroupSizes@NumberFormatInfo@Globalization@System@bf@@QEAA?AU?$Span@H@34@XZ"(ptr %this, ptr noalias sret(%"corlib.?$Span@H@System@bf") %0) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.?$Span@H@System@bf", align 8
  store ptr %this, ptr %this.addr, align 8
  %2 = load ptr, ptr %this.addr, align 8
  store ptr %0, ptr %__return.addr, align 8
  %3 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %2, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  call void @"??B?$Span@H@System@bf@@SA?AU012@PEAV?$Array1@H@12@@Z"(ptr sret(%"corlib.?$Span@H@System@bf") %1, ptr %4)
  %5 = load %"corlib.?$Span@H@System@bf", ptr %1, align 8
  %6 = load ptr, ptr %__return.addr, align 8
  store %"corlib.?$Span@H@System@bf" %5, ptr %6, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?set__NumberGroupSizes@NumberFormatInfo@Globalization@System@bf@@QEAAXU?$Span@H@34@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
define void @"?get__PercentGroupSizes@NumberFormatInfo@Globalization@System@bf@@QEAA?AU?$Span@H@34@XZ"(ptr %this, ptr noalias sret(%"corlib.?$Span@H@System@bf") %0) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.?$Span@H@System@bf", align 8
  store ptr %this, ptr %this.addr, align 8
  %2 = load ptr, ptr %this.addr, align 8
  store ptr %0, ptr %__return.addr, align 8
  %3 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %2, i32 0, i32 3
  %4 = load ptr, ptr %3, align 8
  call void @"??B?$Span@H@System@bf@@SA?AU012@PEAV?$Array1@H@12@@Z"(ptr sret(%"corlib.?$Span@H@System@bf") %1, ptr %4)
  %5 = load %"corlib.?$Span@H@System@bf", ptr %1, align 8
  %6 = load ptr, ptr %__return.addr, align 8
  store %"corlib.?$Span@H@System@bf" %5, ptr %6, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?set__PercentGroupSizes@NumberFormatInfo@Globalization@System@bf@@QEAAXU?$Span@H@34@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
define void @"?get__CurrencyGroupSeparator@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr %this, ptr noalias sret(%"corlib.StringView@System@bf") %0) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.StringView@System@bf", align 8
  store ptr %this, ptr %this.addr, align 8
  %2 = load ptr, ptr %this.addr, align 8
  store ptr %0, ptr %__return.addr, align 8
  %3 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %2, i32 0, i32 12
  %4 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr sret(%"corlib.StringView@System@bf") %1, ptr %5)
  %6 = load %"corlib.StringView@System@bf", ptr %1, align 8
  %7 = load ptr, ptr %__return.addr, align 8
  store %"corlib.StringView@System@bf" %6, ptr %7, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?set__CurrencyGroupSeparator@NumberFormatInfo@Globalization@System@bf@@QEAAXUStringView@34@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
define void @"?get__CurrencySymbol@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr %this, ptr noalias sret(%"corlib.StringView@System@bf") %0) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.StringView@System@bf", align 8
  store ptr %this, ptr %this.addr, align 8
  %2 = load ptr, ptr %this.addr, align 8
  store ptr %0, ptr %__return.addr, align 8
  %3 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %2, i32 0, i32 16
  %4 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr sret(%"corlib.StringView@System@bf") %1, ptr %5)
  %6 = load %"corlib.StringView@System@bf", ptr %1, align 8
  %7 = load ptr, ptr %__return.addr, align 8
  store %"corlib.StringView@System@bf" %6, ptr %7, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?set__CurrencySymbol@NumberFormatInfo@Globalization@System@bf@@QEAAXUStringView@34@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
define ptr @"?get__CurrentInfo@NumberFormatInfo@Globalization@System@bf@@SAPEAV1234@XZ"() #0 {
entry:
  %__return = alloca ptr, align 8
  %get__CurrentCulture = call ptr @"?get__CurrentCulture@CultureInfo@Globalization@System@bf@@SAPEAV1234@XZ"()
  %get__NumberFormat = call ptr @"?get__NumberFormat@CultureInfo@Globalization@System@bf@@QEAAPEAVNumberFormatInfo@234@XZ"(ptr %get__CurrentCulture)
  store ptr %get__NumberFormat, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %0 = load ptr, ptr %__return, align 8
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define void @"?get__NaNSymbol@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr %this, ptr noalias sret(%"corlib.StringView@System@bf") %0) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.StringView@System@bf", align 8
  store ptr %this, ptr %this.addr, align 8
  %2 = load ptr, ptr %this.addr, align 8
  store ptr %0, ptr %__return.addr, align 8
  %3 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %2, i32 0, i32 19
  %4 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr sret(%"corlib.StringView@System@bf") %1, ptr %5)
  %6 = load %"corlib.StringView@System@bf", ptr %1, align 8
  %7 = load ptr, ptr %__return.addr, align 8
  store %"corlib.StringView@System@bf" %6, ptr %7, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?set__NaNSymbol@NumberFormatInfo@Globalization@System@bf@@QEAAXUStringView@34@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
define i64 @"?get__CurrencyNegativePattern@NumberFormatInfo@Globalization@System@bf@@QEAATint@@XZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 37
  %2 = load i32, ptr %1, align 4
  %3 = sext i32 %2 to i64
  store i64 %3, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %4 = load i64, ptr %__return, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
declare void @"?set__CurrencyNegativePattern@NumberFormatInfo@Globalization@System@bf@@QEAAXTint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
define i64 @"?get__NumberNegativePattern@NumberFormatInfo@Globalization@System@bf@@QEAATint@@XZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 38
  %2 = load i32, ptr %1, align 4
  %3 = sext i32 %2 to i64
  store i64 %3, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %4 = load i64, ptr %__return, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
declare void @"?set__NumberNegativePattern@NumberFormatInfo@Globalization@System@bf@@QEAAXTint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
define i64 @"?get__PercentPositivePattern@NumberFormatInfo@Globalization@System@bf@@QEAATint@@XZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 39
  %2 = load i32, ptr %1, align 4
  %3 = sext i32 %2 to i64
  store i64 %3, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %4 = load i64, ptr %__return, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
declare void @"?set__PercentPositivePattern@NumberFormatInfo@Globalization@System@bf@@QEAAXTint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
define i64 @"?get__PercentNegativePattern@NumberFormatInfo@Globalization@System@bf@@QEAATint@@XZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 40
  %2 = load i32, ptr %1, align 4
  %3 = sext i32 %2 to i64
  store i64 %3, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %4 = load i64, ptr %__return, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
declare void @"?set__PercentNegativePattern@NumberFormatInfo@Globalization@System@bf@@QEAAXTint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
define void @"?get__NegativeInfinitySymbol@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr %this, ptr noalias sret(%"corlib.StringView@System@bf") %0) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.StringView@System@bf", align 8
  store ptr %this, ptr %this.addr, align 8
  %2 = load ptr, ptr %this.addr, align 8
  store ptr %0, ptr %__return.addr, align 8
  %3 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %2, i32 0, i32 23
  %4 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr sret(%"corlib.StringView@System@bf") %1, ptr %5)
  %6 = load %"corlib.StringView@System@bf", ptr %1, align 8
  %7 = load ptr, ptr %__return.addr, align 8
  store %"corlib.StringView@System@bf" %6, ptr %7, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?set__NegativeInfinitySymbol@NumberFormatInfo@Globalization@System@bf@@QEAAXUStringView@34@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
define void @"?get__NegativeSign@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr %this, ptr noalias sret(%"corlib.StringView@System@bf") %0) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.StringView@System@bf", align 8
  store ptr %this, ptr %this.addr, align 8
  %2 = load ptr, ptr %this.addr, align 8
  store ptr %0, ptr %__return.addr, align 8
  %3 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %2, i32 0, i32 6
  %4 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr sret(%"corlib.StringView@System@bf") %1, ptr %5)
  %6 = load %"corlib.StringView@System@bf", ptr %1, align 8
  %7 = load ptr, ptr %__return.addr, align 8
  store %"corlib.StringView@System@bf" %6, ptr %7, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?set__NegativeSign@NumberFormatInfo@Globalization@System@bf@@QEAAXUStringView@34@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
define i32 @"?get__NumberDecimalDigits@NumberFormatInfo@Globalization@System@bf@@QEAAHXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 34
  %2 = load i32, ptr %1, align 4
  store i32 %2, ptr %__return, align 4
  br label %exit

exit:                                             ; preds = %entry
  %3 = load i32, ptr %__return, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
declare void @"?set__NumberDecimalDigits@NumberFormatInfo@Globalization@System@bf@@QEAAXH@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
define void @"?get__NumberDecimalSeparator@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr %this, ptr noalias sret(%"corlib.StringView@System@bf") %0) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.StringView@System@bf", align 8
  store ptr %this, ptr %this.addr, align 8
  %2 = load ptr, ptr %this.addr, align 8
  store ptr %0, ptr %__return.addr, align 8
  %3 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %2, i32 0, i32 8
  %4 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr sret(%"corlib.StringView@System@bf") %1, ptr %5)
  %6 = load %"corlib.StringView@System@bf", ptr %1, align 8
  %7 = load ptr, ptr %__return.addr, align 8
  store %"corlib.StringView@System@bf" %6, ptr %7, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?set__NumberDecimalSeparator@NumberFormatInfo@Globalization@System@bf@@QEAAXUStringView@34@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
define void @"?get__NumberGroupSeparator@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr %this, ptr noalias sret(%"corlib.StringView@System@bf") %0) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.StringView@System@bf", align 8
  store ptr %this, ptr %this.addr, align 8
  %2 = load ptr, ptr %this.addr, align 8
  store ptr %0, ptr %__return.addr, align 8
  %3 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %2, i32 0, i32 10
  %4 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr sret(%"corlib.StringView@System@bf") %1, ptr %5)
  %6 = load %"corlib.StringView@System@bf", ptr %1, align 8
  %7 = load ptr, ptr %__return.addr, align 8
  store %"corlib.StringView@System@bf" %6, ptr %7, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?set__NumberGroupSeparator@NumberFormatInfo@Globalization@System@bf@@QEAAXUStringView@34@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
define i64 @"?get__CurrencyPositivePattern@NumberFormatInfo@Globalization@System@bf@@QEAATint@@XZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 36
  %2 = load i32, ptr %1, align 4
  %3 = sext i32 %2 to i64
  store i64 %3, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %4 = load i64, ptr %__return, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
declare void @"?set__CurrencyPositivePattern@NumberFormatInfo@Globalization@System@bf@@QEAAXTint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
define void @"?get__PositiveInfinitySymbol@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr %this, ptr noalias sret(%"corlib.StringView@System@bf") %0) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.StringView@System@bf", align 8
  store ptr %this, ptr %this.addr, align 8
  %2 = load ptr, ptr %this.addr, align 8
  store ptr %0, ptr %__return.addr, align 8
  %3 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %2, i32 0, i32 21
  %4 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr sret(%"corlib.StringView@System@bf") %1, ptr %5)
  %6 = load %"corlib.StringView@System@bf", ptr %1, align 8
  %7 = load ptr, ptr %__return.addr, align 8
  store %"corlib.StringView@System@bf" %6, ptr %7, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?set__PositiveInfinitySymbol@NumberFormatInfo@Globalization@System@bf@@QEAAXUStringView@34@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
define void @"?get__PositiveSign@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr %this, ptr noalias sret(%"corlib.StringView@System@bf") %0) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.StringView@System@bf", align 8
  store ptr %this, ptr %this.addr, align 8
  %2 = load ptr, ptr %this.addr, align 8
  store ptr %0, ptr %__return.addr, align 8
  %3 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %2, i32 0, i32 4
  %4 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr sret(%"corlib.StringView@System@bf") %1, ptr %5)
  %6 = load %"corlib.StringView@System@bf", ptr %1, align 8
  %7 = load ptr, ptr %__return.addr, align 8
  store %"corlib.StringView@System@bf" %6, ptr %7, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?set__PositiveSign@NumberFormatInfo@Globalization@System@bf@@QEAAXUStringView@34@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
define i32 @"?get__PercentDecimalDigits@NumberFormatInfo@Globalization@System@bf@@QEAAHXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 41
  %2 = load i32, ptr %1, align 4
  store i32 %2, ptr %__return, align 4
  br label %exit

exit:                                             ; preds = %entry
  %3 = load i32, ptr %__return, align 4
  ret i32 %3
}

; Function Attrs: nounwind uwtable
declare void @"?set__PercentDecimalDigits@NumberFormatInfo@Globalization@System@bf@@QEAAXH@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
define void @"?get__PercentDecimalSeparator@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr %this, ptr noalias sret(%"corlib.StringView@System@bf") %0) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.StringView@System@bf", align 8
  store ptr %this, ptr %this.addr, align 8
  %2 = load ptr, ptr %this.addr, align 8
  store ptr %0, ptr %__return.addr, align 8
  %3 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %2, i32 0, i32 25
  %4 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr sret(%"corlib.StringView@System@bf") %1, ptr %5)
  %6 = load %"corlib.StringView@System@bf", ptr %1, align 8
  %7 = load ptr, ptr %__return.addr, align 8
  store %"corlib.StringView@System@bf" %6, ptr %7, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?set__PercentDecimalSeparator@NumberFormatInfo@Globalization@System@bf@@QEAAXUStringView@34@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
define void @"?get__PercentGroupSeparator@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr %this, ptr noalias sret(%"corlib.StringView@System@bf") %0) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.StringView@System@bf", align 8
  store ptr %this, ptr %this.addr, align 8
  %2 = load ptr, ptr %this.addr, align 8
  store ptr %0, ptr %__return.addr, align 8
  %3 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %2, i32 0, i32 27
  %4 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr sret(%"corlib.StringView@System@bf") %1, ptr %5)
  %6 = load %"corlib.StringView@System@bf", ptr %1, align 8
  %7 = load ptr, ptr %__return.addr, align 8
  store %"corlib.StringView@System@bf" %6, ptr %7, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?set__PercentGroupSeparator@NumberFormatInfo@Globalization@System@bf@@QEAAXUStringView@34@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
define void @"?get__PercentSymbol@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr %this, ptr noalias sret(%"corlib.StringView@System@bf") %0) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.StringView@System@bf", align 8
  store ptr %this, ptr %this.addr, align 8
  %2 = load ptr, ptr %this.addr, align 8
  store ptr %0, ptr %__return.addr, align 8
  %3 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %2, i32 0, i32 29
  %4 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr sret(%"corlib.StringView@System@bf") %1, ptr %5)
  %6 = load %"corlib.StringView@System@bf", ptr %1, align 8
  %7 = load ptr, ptr %__return.addr, align 8
  store %"corlib.StringView@System@bf" %6, ptr %7, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?set__PercentSymbol@NumberFormatInfo@Globalization@System@bf@@QEAAXUStringView@34@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
define void @"?get__PerMilleSymbol@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr %this, ptr noalias sret(%"corlib.StringView@System@bf") %0) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.StringView@System@bf", align 8
  store ptr %this, ptr %this.addr, align 8
  %2 = load ptr, ptr %this.addr, align 8
  store ptr %0, ptr %__return.addr, align 8
  %3 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %2, i32 0, i32 31
  %4 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr sret(%"corlib.StringView@System@bf") %1, ptr %5)
  %6 = load %"corlib.StringView@System@bf", ptr %1, align 8
  %7 = load ptr, ptr %__return.addr, align 8
  store %"corlib.StringView@System@bf" %6, ptr %7, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?set__PerMilleSymbol@NumberFormatInfo@Globalization@System@bf@@QEAAXUStringView@34@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?get__NativeDigits@NumberFormatInfo@Globalization@System@bf@@QEAA?AU?$Span@PEAVString@System@bf@@@34@XZ"(ptr, ptr noalias sret(%"corlib.?$Span@PEAVString@System@bf@@@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?set__NativeDigits@NumberFormatInfo@Globalization@System@bf@@QEAAXU?$Span@PEAVString@System@bf@@@34@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
define ptr @"?GetFormat@NumberFormatInfo@Globalization@System@bf@@QEAAPEAVObject@34@PEAVType@34@@Z"(ptr %this, ptr %formatType) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = icmp eq ptr %formatType, @"?sBfTypeData@NumberFormatInfo@Globalization@System@bf@@2HA"
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
declare ptr @"?ReadOnly@NumberFormatInfo@Globalization@System@bf@@SAPEAV1234@PEAV1234@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?__BfCtorClear@NumberFormatInfo@Globalization@System@bf@@AEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 302, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?GCMarkStaticMembers@NumberFormatInfo@Globalization@System@bf@@KAXXZ"() #0

; Function Attrs: nounwind uwtable
define void @"?~this@NumberFormatInfo@Globalization@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %1 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 33
  br label %newScope1

newScope1:                                        ; preds = %newScope
  call void @"?DeleteNativeDigits@NumberFormatInfo@Globalization@System@bf@@AEAAXXZ"(ptr %0)
  br label %newScope2

newScope2:                                        ; preds = %newScope1
  %2 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 31
  br label %newScope3

newScope3:                                        ; preds = %newScope2
  call void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr %2)
  br label %newScope4

newScope4:                                        ; preds = %newScope3
  %3 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 29
  br label %newScope5

newScope5:                                        ; preds = %newScope4
  call void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr %3)
  br label %newScope6

newScope6:                                        ; preds = %newScope5
  %4 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 27
  br label %newScope7

newScope7:                                        ; preds = %newScope6
  call void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr %4)
  br label %newScope8

newScope8:                                        ; preds = %newScope7
  %5 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 25
  br label %newScope9

newScope9:                                        ; preds = %newScope8
  call void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr %5)
  br label %newScope10

newScope10:                                       ; preds = %newScope9
  %6 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 23
  br label %newScope11

newScope11:                                       ; preds = %newScope10
  call void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr %6)
  br label %newScope12

newScope12:                                       ; preds = %newScope11
  %7 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 21
  br label %newScope13

newScope13:                                       ; preds = %newScope12
  call void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr %7)
  br label %newScope14

newScope14:                                       ; preds = %newScope13
  %8 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 19
  br label %newScope15

newScope15:                                       ; preds = %newScope14
  call void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr %8)
  br label %newScope16

newScope16:                                       ; preds = %newScope15
  %9 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 16
  br label %newScope17

newScope17:                                       ; preds = %newScope16
  call void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr %9)
  br label %newScope18

newScope18:                                       ; preds = %newScope17
  %10 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 14
  br label %newScope19

newScope19:                                       ; preds = %newScope18
  call void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr %10)
  br label %newScope20

newScope20:                                       ; preds = %newScope19
  %11 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 12
  br label %newScope21

newScope21:                                       ; preds = %newScope20
  call void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr %11)
  br label %newScope22

newScope22:                                       ; preds = %newScope21
  %12 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 10
  br label %newScope23

newScope23:                                       ; preds = %newScope22
  call void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr %12)
  br label %newScope24

newScope24:                                       ; preds = %newScope23
  %13 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 8
  br label %newScope25

newScope25:                                       ; preds = %newScope24
  call void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr %13)
  br label %newScope26

newScope26:                                       ; preds = %newScope25
  %14 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 6
  br label %newScope27

newScope27:                                       ; preds = %newScope26
  call void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr %14)
  br label %newScope28

newScope28:                                       ; preds = %newScope27
  %15 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 4
  br label %newScope29

newScope29:                                       ; preds = %newScope28
  call void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr %15)
  br label %newScope30

newScope30:                                       ; preds = %newScope29
  %16 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 3
  br label %newScope31

newScope31:                                       ; preds = %newScope30
  %17 = load ptr, ptr %16, align 8
  %18 = icmp ne ptr %17, null
  br i1 %18, label %delete.body, label %delete.end

delete.body:                                      ; preds = %newScope31
  %19 = load ptr, ptr %17, align 8
  %20 = getelementptr inbounds ptr, ptr %19, i32 3
  %21 = load ptr, ptr %20, align 8
  call void %21(ptr %17)
  call void @tc_free(ptr %17)
  br label %delete.end

delete.end:                                       ; preds = %delete.body, %newScope31
  %22 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 2
  br label %newScope32

newScope32:                                       ; preds = %delete.end
  %23 = load ptr, ptr %22, align 8
  %24 = icmp ne ptr %23, null
  br i1 %24, label %delete.body33, label %delete.end34

delete.body33:                                    ; preds = %newScope32
  %25 = load ptr, ptr %23, align 8
  %26 = getelementptr inbounds ptr, ptr %25, i32 3
  %27 = load ptr, ptr %26, align 8
  call void %27(ptr %23)
  call void @tc_free(ptr %23)
  br label %delete.end34

delete.end34:                                     ; preds = %delete.body33, %newScope32
  %28 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %0, i32 0, i32 1
  br label %newScope35

newScope35:                                       ; preds = %delete.end34
  %29 = load ptr, ptr %28, align 8
  %30 = icmp ne ptr %29, null
  br i1 %30, label %delete.body36, label %delete.end37

delete.body36:                                    ; preds = %newScope35
  %31 = load ptr, ptr %29, align 8
  %32 = getelementptr inbounds ptr, ptr %31, i32 3
  %33 = load ptr, ptr %32, align 8
  call void %33(ptr %29)
  call void @tc_free(ptr %29)
  br label %delete.end37

delete.end37:                                     ; preds = %delete.body36, %newScope35
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr %0)
  br label %exit

exit:                                             ; preds = %delete.end37
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@NumberFormatInfo@Globalization@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@NumberFormatInfo@Globalization@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers@NumberFormatInfo@Globalization@System@bf@@IEAAXXZ"(ptr) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #1

declare ptr @tc_malloc(i64)

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@?$Array1@H@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@?$Array1@PEAVString@System@bf@@@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetNFIValues@CultureData@Globalization@System@bf@@AEAAXPEAVNumberFormatInfo@234@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsInvariantCulture@CultureData@Globalization@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr) #0

declare void @tc_free(ptr)

; Function Attrs: nounwind uwtable
declare void @"?~this@Object@System@bf@@UEAAXXZ"(ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
define internal i1 @"?get__IsEmpty@Array@System@bf@@QEAA_NXZ"(ptr %this) #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca i1, align 1
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.Array@System@bf", ptr %0, i32 0, i32 1
  %2 = load i32, ptr %1, align 4
  %3 = icmp eq i32 %2, 0
  store i1 %3, ptr %__return, align 1
  br label %exit

exit:                                             ; preds = %entry
  %4 = load i1, ptr %__return, align 1
  ret i1 %4
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @"?get__@UCHK$?$Array1@PEAVString@System@bf@@@System@bf@@QEAAAEAPEAVString@23@Tint@@@Z"(ptr %this, i64 %idx) #2 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.?$Array1@PEAVString@System@bf@@@System@bf", ptr %0, i32 0, i32 2
  %2 = getelementptr inbounds ptr, ptr %1, i64 %idx
  store ptr %2, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %3 = load ptr, ptr %__return, align 8
  ret ptr %3
}

; Function Attrs: nounwind uwtable
declare void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr noalias sret(%"corlib.StringView@System@bf"), ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__NumberFormat@CultureInfo@Globalization@System@bf@@QEAAPEAVNumberFormatInfo@234@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"??B?$Span@H@System@bf@@SA?AU012@PEAV?$Array1@H@12@@Z"(ptr noalias sret(%"corlib.?$Span@H@System@bf"), ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__CurrentCulture@CultureInfo@Globalization@System@bf@@SAPEAV1234@XZ"() #0

attributes #0 = { nounwind uwtable }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { alwaysinline nounwind uwtable }
