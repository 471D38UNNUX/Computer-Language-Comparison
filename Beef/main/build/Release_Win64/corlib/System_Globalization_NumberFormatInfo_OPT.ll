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
%"corlib.?$Array1@PEAVString@System@bf@@@System@bf" = type <{ %"corlib.Array@System@bf", [4 x i8], ptr }>
%"corlib.?$Array1@H@System@bf" = type <{ %"corlib.Array@System@bf", i32 }>
%"corlib.TypeInstance@Reflection@System@bf" = type <{ %"corlib.Type@System@bf", [1 x i8], ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i16, i16, i16, i16, [6 x i8], ptr, ptr, ptr, ptr, ptr, ptr }>
%"corlib.CultureInfo@Globalization@System@bf" = type <{ %"corlib.Object@System@bf", ptr, ptr, ptr, ptr, ptr, ptr, i1, i1 }>
%"corlib.?$Span@H@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.StringView@System@bf" = type <{ %"corlib.?$Span@D@System@bf" }>
%"corlib.?$Span@D@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>

@"?invariantInfo@NumberFormatInfo@Globalization@System@bf@@2PEAV1234@C" = local_unnamed_addr global ptr null, align 8
@"?sBfClassVData@?$Array1@H@System@bf@@2UClassVData@23@A" = external constant [4 x ptr]
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
@"?sBfTypeData@CultureInfo@Globalization@System@bf@@2HA" = external local_unnamed_addr constant %"corlib.Type@System@bf"
@"?sBfTypeData@NumberFormatInfo@Globalization@System@bf@@2HA" = external constant %"corlib.Type@System@bf"
@"?sBfSlotOfs@IFormatProvider@System@bf@@2HA" = external local_unnamed_addr constant i32

; Function Attrs: nounwind uwtable
define void @"?DeleteNativeDigits@NumberFormatInfo@Globalization@System@bf@@AEAAXXZ"(ptr nocapture readonly %this) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 33
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr inbounds %"corlib.Array@System@bf", ptr %1, i64 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %delete.body4, label %land.rhs

land.rhs:                                         ; preds = %entry
  %5 = getelementptr inbounds %"corlib.?$Array1@PEAVString@System@bf@@@System@bf", ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %.not = icmp ne ptr %6, @__bfStrObj216
  %7 = icmp sgt i32 %3, 0
  %or.cond = and i1 %.not, %7
  br i1 %or.cond, label %foreach.body, label %delete.body4

foreach.body:                                     ; preds = %land.rhs, %foreach.inc
  %8 = phi i32 [ %14, %foreach.inc ], [ %3, %land.rhs ]
  %.013 = phi i64 [ %15, %foreach.inc ], [ 0, %land.rhs ]
  %9 = getelementptr inbounds ptr, ptr %5, i64 %.013
  %10 = load ptr, ptr %9, align 8
  %.not11 = icmp eq ptr %10, null
  br i1 %.not11, label %foreach.inc, label %delete.body

delete.body:                                      ; preds = %foreach.body
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr nonnull %10) #5
  tail call void @tc_free(ptr nonnull %10) #5
  %.pre = load i32, ptr %2, align 4
  br label %foreach.inc

foreach.inc:                                      ; preds = %foreach.body, %delete.body
  %14 = phi i32 [ %8, %foreach.body ], [ %.pre, %delete.body ]
  %15 = add nuw nsw i64 %.013, 1
  %16 = sext i32 %14 to i64
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %foreach.body, label %if.end

if.end:                                           ; preds = %foreach.inc
  %.pr.pre = load ptr, ptr %0, align 8
  %.not10 = icmp eq ptr %.pr.pre, null
  br i1 %.not10, label %exit, label %delete.body4

delete.body4:                                     ; preds = %land.rhs, %entry, %if.end
  %18 = phi ptr [ %.pr.pre, %if.end ], [ %1, %entry ], [ %1, %land.rhs ]
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr nonnull %18) #5
  tail call void @tc_free(ptr nonnull %18) #5
  br label %exit

exit:                                             ; preds = %if.end, %delete.body4
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@NumberFormatInfo@Globalization@System@bf@@QEAAXXZ"(ptr %this) local_unnamed_addr #0 {
entry:
  tail call void @"?__BfCtor@NumberFormatInfo@Globalization@System@bf@@QEAAXPEAVCultureData@234@@Z"(ptr %this, ptr null)
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@NumberFormatInfo@Globalization@System@bf@@QEAAXPEAVCultureData@234@@Z"(ptr %this, ptr %cultureData) local_unnamed_addr #0 {
entry:
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
  %14 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 1
  %15 = tail call ptr @tc_malloc(i64 16) #5
  store ptr @"?sBfClassVData@?$Array1@H@System@bf@@2UClassVData@23@A", ptr %15, align 8
  tail call void @"?__BfCtor@?$Array1@H@System@bf@@QEAAXXZ"(ptr nonnull %15)
  %16 = getelementptr inbounds %"corlib.Array@System@bf", ptr %15, i64 0, i32 1
  store i32 1, ptr %16, align 4
  %17 = getelementptr inbounds %"corlib.?$Array1@H@System@bf", ptr %15, i64 0, i32 1
  store i32 3, ptr %17, align 4
  store ptr %15, ptr %14, align 8
  %18 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 2
  %19 = tail call ptr @tc_malloc(i64 16) #5
  store ptr @"?sBfClassVData@?$Array1@H@System@bf@@2UClassVData@23@A", ptr %19, align 8
  tail call void @"?__BfCtor@?$Array1@H@System@bf@@QEAAXXZ"(ptr nonnull %19)
  %20 = getelementptr inbounds %"corlib.Array@System@bf", ptr %19, i64 0, i32 1
  store i32 1, ptr %20, align 4
  %21 = getelementptr inbounds %"corlib.?$Array1@H@System@bf", ptr %19, i64 0, i32 1
  store i32 3, ptr %21, align 4
  store ptr %19, ptr %18, align 8
  %22 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 3
  %23 = tail call ptr @tc_malloc(i64 16) #5
  store ptr @"?sBfClassVData@?$Array1@H@System@bf@@2UClassVData@23@A", ptr %23, align 8
  tail call void @"?__BfCtor@?$Array1@H@System@bf@@QEAAXXZ"(ptr nonnull %23)
  %24 = getelementptr inbounds %"corlib.Array@System@bf", ptr %23, i64 0, i32 1
  store i32 1, ptr %24, align 4
  %25 = getelementptr inbounds %"corlib.?$Array1@H@System@bf", ptr %23, i64 0, i32 1
  store i32 3, ptr %25, align 4
  store ptr %23, ptr %22, align 8
  call void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr nonnull %0, ptr nonnull @__bfStrObj206)
  %.fca.1.gep77 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %0, i64 0, i32 1
  %.fca.1.load78 = load ptr, ptr %.fca.1.gep77, align 8
  %.fca.2.gep80 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %0, i64 0, i32 2
  %.fca.2.load81 = load i1, ptr %.fca.2.gep80, align 8
  %.repack83 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 4
  store ptr %.fca.1.load78, ptr %.repack83, align 8
  %.repack85 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 4, i32 2
  store i1 %.fca.2.load81, ptr %.repack85, align 8
  call void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr nonnull %1, ptr nonnull @__bfStrObj207)
  %.fca.1.gep71 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %1, i64 0, i32 1
  %.fca.1.load72 = load ptr, ptr %.fca.1.gep71, align 8
  %.fca.2.gep74 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %1, i64 0, i32 2
  %.fca.2.load75 = load i1, ptr %.fca.2.gep74, align 8
  %.repack87 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 6
  store ptr %.fca.1.load72, ptr %.repack87, align 8
  %.repack89 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 6, i32 2
  store i1 %.fca.2.load75, ptr %.repack89, align 8
  call void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr nonnull %2, ptr nonnull @__bfStrObj208)
  %.fca.1.gep65 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %2, i64 0, i32 1
  %.fca.1.load66 = load ptr, ptr %.fca.1.gep65, align 8
  %.fca.2.gep68 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %2, i64 0, i32 2
  %.fca.2.load69 = load i1, ptr %.fca.2.gep68, align 8
  %.repack91 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 8
  store ptr %.fca.1.load66, ptr %.repack91, align 8
  %.repack93 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 8, i32 2
  store i1 %.fca.2.load69, ptr %.repack93, align 8
  call void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr nonnull %3, ptr nonnull @__bfStrObj209)
  %.fca.1.gep59 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %3, i64 0, i32 1
  %.fca.1.load60 = load ptr, ptr %.fca.1.gep59, align 8
  %.fca.2.gep62 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %3, i64 0, i32 2
  %.fca.2.load63 = load i1, ptr %.fca.2.gep62, align 8
  %.repack95 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 10
  store ptr %.fca.1.load60, ptr %.repack95, align 8
  %.repack97 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 10, i32 2
  store i1 %.fca.2.load63, ptr %.repack97, align 8
  call void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr nonnull %4, ptr nonnull @__bfStrObj209)
  %.fca.1.gep53 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %4, i64 0, i32 1
  %.fca.1.load54 = load ptr, ptr %.fca.1.gep53, align 8
  %.fca.2.gep56 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %4, i64 0, i32 2
  %.fca.2.load57 = load i1, ptr %.fca.2.gep56, align 8
  %.repack99 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 12
  store ptr %.fca.1.load54, ptr %.repack99, align 8
  %.repack101 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 12, i32 2
  store i1 %.fca.2.load57, ptr %.repack101, align 8
  call void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr nonnull %5, ptr nonnull @__bfStrObj208)
  %.fca.1.gep47 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %5, i64 0, i32 1
  %.fca.1.load48 = load ptr, ptr %.fca.1.gep47, align 8
  %.fca.2.gep50 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %5, i64 0, i32 2
  %.fca.2.load51 = load i1, ptr %.fca.2.gep50, align 8
  %.repack103 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 14
  store ptr %.fca.1.load48, ptr %.repack103, align 8
  %.repack105 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 14, i32 2
  store i1 %.fca.2.load51, ptr %.repack105, align 8
  call void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr nonnull %6, ptr nonnull @__bfStrObj210)
  %.fca.1.gep41 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %6, i64 0, i32 1
  %.fca.1.load42 = load ptr, ptr %.fca.1.gep41, align 8
  %.fca.2.gep44 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %6, i64 0, i32 2
  %.fca.2.load45 = load i1, ptr %.fca.2.gep44, align 8
  %.repack107 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 16
  store ptr %.fca.1.load42, ptr %.repack107, align 8
  %.repack109 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 16, i32 2
  store i1 %.fca.2.load45, ptr %.repack109, align 8
  %26 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 18
  store ptr null, ptr %26, align 8
  call void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr nonnull %7, ptr nonnull @__bfStrObj211)
  %.fca.1.gep35 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %7, i64 0, i32 1
  %.fca.1.load36 = load ptr, ptr %.fca.1.gep35, align 8
  %.fca.2.gep38 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %7, i64 0, i32 2
  %.fca.2.load39 = load i1, ptr %.fca.2.gep38, align 8
  %.repack111 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 19
  store ptr %.fca.1.load36, ptr %.repack111, align 8
  %.repack113 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 19, i32 2
  store i1 %.fca.2.load39, ptr %.repack113, align 8
  call void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr nonnull %8, ptr nonnull @__bfStrObj212)
  %.fca.1.gep29 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %8, i64 0, i32 1
  %.fca.1.load30 = load ptr, ptr %.fca.1.gep29, align 8
  %.fca.2.gep32 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %8, i64 0, i32 2
  %.fca.2.load33 = load i1, ptr %.fca.2.gep32, align 8
  %.repack115 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 21
  store ptr %.fca.1.load30, ptr %.repack115, align 8
  %.repack117 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 21, i32 2
  store i1 %.fca.2.load33, ptr %.repack117, align 8
  call void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr nonnull %9, ptr nonnull @__bfStrObj213)
  %.fca.1.gep23 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %9, i64 0, i32 1
  %.fca.1.load24 = load ptr, ptr %.fca.1.gep23, align 8
  %.fca.2.gep26 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %9, i64 0, i32 2
  %.fca.2.load27 = load i1, ptr %.fca.2.gep26, align 8
  %.repack119 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 23
  store ptr %.fca.1.load24, ptr %.repack119, align 8
  %.repack121 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 23, i32 2
  store i1 %.fca.2.load27, ptr %.repack121, align 8
  call void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr nonnull %10, ptr nonnull @__bfStrObj208)
  %.fca.1.gep17 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %10, i64 0, i32 1
  %.fca.1.load18 = load ptr, ptr %.fca.1.gep17, align 8
  %.fca.2.gep20 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %10, i64 0, i32 2
  %.fca.2.load21 = load i1, ptr %.fca.2.gep20, align 8
  %.repack123 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 25
  store ptr %.fca.1.load18, ptr %.repack123, align 8
  %.repack125 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 25, i32 2
  store i1 %.fca.2.load21, ptr %.repack125, align 8
  call void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr nonnull %11, ptr nonnull @__bfStrObj209)
  %.fca.1.gep11 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %11, i64 0, i32 1
  %.fca.1.load12 = load ptr, ptr %.fca.1.gep11, align 8
  %.fca.2.gep14 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %11, i64 0, i32 2
  %.fca.2.load15 = load i1, ptr %.fca.2.gep14, align 8
  %.repack127 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 27
  store ptr %.fca.1.load12, ptr %.repack127, align 8
  %.repack129 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 27, i32 2
  store i1 %.fca.2.load15, ptr %.repack129, align 8
  call void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr nonnull %12, ptr nonnull @__bfStrObj214)
  %.fca.1.gep5 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %12, i64 0, i32 1
  %.fca.1.load6 = load ptr, ptr %.fca.1.gep5, align 8
  %.fca.2.gep8 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %12, i64 0, i32 2
  %.fca.2.load9 = load i1, ptr %.fca.2.gep8, align 8
  %.repack131 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 29
  store ptr %.fca.1.load6, ptr %.repack131, align 8
  %.repack133 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 29, i32 2
  store i1 %.fca.2.load9, ptr %.repack133, align 8
  call void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr nonnull %13, ptr nonnull @__bfStrObj215)
  %.fca.1.gep = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %13, i64 0, i32 1
  %.fca.1.load = load ptr, ptr %.fca.1.gep, align 8
  %.fca.2.gep = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %13, i64 0, i32 2
  %.fca.2.load = load i1, ptr %.fca.2.gep, align 8
  %.repack135 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 31
  store ptr %.fca.1.load, ptr %.repack135, align 8
  %.repack137 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 31, i32 2
  store i1 %.fca.2.load, ptr %.repack137, align 8
  %27 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 33
  %28 = call ptr @tc_malloc(i64 96) #5
  store ptr @"?sBfClassVData@?$Array1@PEAVString@System@bf@@@System@bf@@2UClassVData@23@A", ptr %28, align 8
  call void @"?__BfCtor@?$Array1@PEAVString@System@bf@@@System@bf@@QEAAXXZ"(ptr nonnull %28)
  %29 = getelementptr inbounds %"corlib.Array@System@bf", ptr %28, i64 0, i32 1
  store i32 10, ptr %29, align 4
  %30 = getelementptr inbounds %"corlib.?$Array1@PEAVString@System@bf@@@System@bf", ptr %28, i64 0, i32 2
  store ptr @__bfStrObj216, ptr %30, align 8
  %31 = getelementptr inbounds %"corlib.?$Array1@PEAVString@System@bf@@@System@bf", ptr %28, i64 1
  store ptr @__bfStrObj217, ptr %31, align 8
  %32 = getelementptr inbounds %"corlib.?$Array1@PEAVString@System@bf@@@System@bf", ptr %28, i64 1, i32 0, i32 1
  store ptr @__bfStrObj218, ptr %32, align 8
  %33 = getelementptr inbounds %"corlib.?$Array1@PEAVString@System@bf@@@System@bf", ptr %28, i64 1, i32 2
  store ptr @__bfStrObj219, ptr %33, align 8
  %34 = getelementptr inbounds %"corlib.?$Array1@PEAVString@System@bf@@@System@bf", ptr %28, i64 2
  store ptr @__bfStrObj220, ptr %34, align 8
  %35 = getelementptr inbounds %"corlib.?$Array1@PEAVString@System@bf@@@System@bf", ptr %28, i64 2, i32 0, i32 1
  store ptr @__bfStrObj221, ptr %35, align 8
  %36 = getelementptr inbounds %"corlib.?$Array1@PEAVString@System@bf@@@System@bf", ptr %28, i64 2, i32 2
  store ptr @__bfStrObj222, ptr %36, align 8
  %37 = getelementptr inbounds %"corlib.?$Array1@PEAVString@System@bf@@@System@bf", ptr %28, i64 3
  store ptr @__bfStrObj223, ptr %37, align 8
  %38 = getelementptr inbounds %"corlib.?$Array1@PEAVString@System@bf@@@System@bf", ptr %28, i64 3, i32 0, i32 1
  store ptr @__bfStrObj224, ptr %38, align 8
  %39 = getelementptr inbounds %"corlib.?$Array1@PEAVString@System@bf@@@System@bf", ptr %28, i64 3, i32 2
  store ptr @__bfStrObj225, ptr %39, align 8
  store ptr %28, ptr %27, align 8
  %40 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 34
  store i32 2, ptr %40, align 4
  %41 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 35
  store i32 2, ptr %41, align 4
  %42 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 36
  store i32 0, ptr %42, align 4
  %43 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 37
  store i32 0, ptr %43, align 4
  %44 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 38
  store i32 1, ptr %44, align 4
  %45 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 39
  store i32 0, ptr %45, align 4
  %46 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 40
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 41
  store i32 2, ptr %47, align 4
  %48 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 42
  store i32 1, ptr %48, align 4
  %49 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 43
  store i1 false, ptr %49, align 1
  %50 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 44
  store i1 false, ptr %50, align 1
  %.not = icmp eq ptr %cultureData, null
  br i1 %.not, label %exit, label %if.then

if.then:                                          ; preds = %entry
  call void @"?GetNFIValues@CultureData@Globalization@System@bf@@AEAAXPEAVNumberFormatInfo@234@@Z"(ptr nonnull %cultureData, ptr nonnull %this)
  %get__IsInvariantCulture = call i1 @"?get__IsInvariantCulture@CultureData@Globalization@System@bf@@QEAA_NXZ"(ptr nonnull %cultureData)
  br i1 %get__IsInvariantCulture, label %if.then3, label %exit

if.then3:                                         ; preds = %if.then
  store i1 true, ptr %50, align 1
  br label %exit

exit:                                             ; preds = %entry, %if.then3, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @"?GetInstance@NumberFormatInfo@Globalization@System@bf@@SAPEAV1234@PEAVIFormatProvider@34@@Z"(ptr %formatProvider) local_unnamed_addr #0 {
entry:
  %0 = icmp eq ptr %formatProvider, null
  br i1 %0, label %if.end16, label %as.check

as.check:                                         ; preds = %entry
  %1 = load i64, ptr %formatProvider, align 8
  %2 = add i64 %1, 8
  %3 = inttoptr i64 %2 to ptr
  %4 = load i32, ptr %3, align 4
  %5 = load i32, ptr getelementptr inbounds (%"corlib.TypeInstance@Reflection@System@bf", ptr @"?sBfTypeData@CultureInfo@Globalization@System@bf@@2HA", i64 0, i32 11), align 4
  %6 = load i32, ptr getelementptr inbounds (%"corlib.TypeInstance@Reflection@System@bf", ptr @"?sBfTypeData@CultureInfo@Globalization@System@bf@@2HA", i64 0, i32 12), align 4
  %7 = sub i32 %4, %5
  %.not = icmp ugt i32 %7, %6
  %8 = inttoptr i64 %1 to ptr
  br i1 %.not, label %as.check3, label %land.rhs

land.rhs:                                         ; preds = %as.check
  %9 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %formatProvider, i64 0, i32 7
  %10 = load i1, ptr %9, align 1
  br i1 %10, label %as.check3, label %if.then

if.then:                                          ; preds = %land.rhs
  %11 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %formatProvider, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8
  %.not36 = icmp eq ptr %12, null
  br i1 %.not36, label %if.else, label %exit

if.else:                                          ; preds = %if.then
  %get__NumberFormat = tail call ptr @"?get__NumberFormat@CultureInfo@Globalization@System@bf@@QEAAPEAVNumberFormatInfo@234@XZ"(ptr nonnull %formatProvider)
  br label %exit

as.check3:                                        ; preds = %land.rhs, %as.check
  %13 = load i32, ptr getelementptr inbounds (%"corlib.TypeInstance@Reflection@System@bf", ptr @"?sBfTypeData@NumberFormatInfo@Globalization@System@bf@@2HA", i64 0, i32 11), align 4
  %14 = load i32, ptr getelementptr inbounds (%"corlib.TypeInstance@Reflection@System@bf", ptr @"?sBfTypeData@NumberFormatInfo@Globalization@System@bf@@2HA", i64 0, i32 12), align 4
  %15 = sub i32 %4, %13
  %.not31 = icmp ugt i32 %15, %14
  br i1 %.not31, label %if.then9, label %exit

if.then9:                                         ; preds = %as.check3
  %16 = load i32, ptr @"?sBfSlotOfs@IFormatProvider@System@bf@@2HA", align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds ptr, ptr %8, i64 %17
  %19 = load ptr, ptr %18, align 8
  %20 = load ptr, ptr %19, align 8
  %GetFormat = tail call ptr %20(ptr nonnull %formatProvider, ptr nonnull @"?sBfTypeData@NumberFormatInfo@Globalization@System@bf@@2HA") #5
  %21 = icmp eq ptr %GetFormat, null
  br i1 %21, label %if.end16, label %as.check10

as.check10:                                       ; preds = %if.then9
  %22 = load i64, ptr %GetFormat, align 8
  %23 = add i64 %22, 8
  %24 = inttoptr i64 %23 to ptr
  %25 = load i32, ptr %24, align 4
  %26 = sub i32 %25, %13
  %.not34 = icmp ugt i32 %26, %14
  br i1 %.not34, label %if.end16, label %exit

if.end16:                                         ; preds = %as.check10, %if.then9, %entry
  %get__CurrentCulture.i = tail call ptr @"?get__CurrentCulture@CultureInfo@Globalization@System@bf@@SAPEAV1234@XZ"()
  %get__NumberFormat.i = tail call ptr @"?get__NumberFormat@CultureInfo@Globalization@System@bf@@QEAAPEAVNumberFormatInfo@234@XZ"(ptr %get__CurrentCulture.i)
  br label %exit

exit:                                             ; preds = %as.check10, %as.check3, %if.then, %if.end16, %if.else
  %__return.0 = phi ptr [ %get__NumberFormat, %if.else ], [ %get__NumberFormat.i, %if.end16 ], [ %12, %if.then ], [ %formatProvider, %as.check3 ], [ %GetFormat, %as.check10 ]
  ret ptr %__return.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @"?get__CurrencyDecimalDigits@NumberFormatInfo@Globalization@System@bf@@QEAAHXZ"(ptr nocapture readonly %this) local_unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 35
  %1 = load i32, ptr %0, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @"?get__CurrencyDecimalSeparator@NumberFormatInfo@Globalization@System@bf@@QEAAPEAVString@34@XZ"(ptr nocapture readonly %this) local_unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 14
  %1 = load ptr, ptr %0, align 8
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define void @"?get__CurrencyGroupSizes@NumberFormatInfo@Globalization@System@bf@@QEAA?AU?$Span@H@34@XZ"(ptr nocapture readonly %this, ptr noalias nocapture writeonly sret(%"corlib.?$Span@H@System@bf") %0) local_unnamed_addr #0 {
entry:
  %1 = alloca %"corlib.?$Span@H@System@bf", align 8
  %2 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8
  call void @"??B?$Span@H@System@bf@@SA?AU012@PEAV?$Array1@H@12@@Z"(ptr nonnull sret(%"corlib.?$Span@H@System@bf") %1, ptr %3)
  %.fca.1.gep = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %1, i64 0, i32 1
  %.fca.1.load = load ptr, ptr %.fca.1.gep, align 8
  %.fca.2.gep = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %1, i64 0, i32 2
  %.fca.2.load = load i64, ptr %.fca.2.gep, align 8
  %.repack1 = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %0, i64 0, i32 1
  store ptr %.fca.1.load, ptr %.repack1, align 8
  %.repack3 = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %0, i64 0, i32 2
  store i64 %.fca.2.load, ptr %.repack3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?get__NumberGroupSizes@NumberFormatInfo@Globalization@System@bf@@QEAA?AU?$Span@H@34@XZ"(ptr nocapture readonly %this, ptr noalias nocapture writeonly sret(%"corlib.?$Span@H@System@bf") %0) local_unnamed_addr #0 {
entry:
  %1 = alloca %"corlib.?$Span@H@System@bf", align 8
  %2 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8
  call void @"??B?$Span@H@System@bf@@SA?AU012@PEAV?$Array1@H@12@@Z"(ptr nonnull sret(%"corlib.?$Span@H@System@bf") %1, ptr %3)
  %.fca.1.gep = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %1, i64 0, i32 1
  %.fca.1.load = load ptr, ptr %.fca.1.gep, align 8
  %.fca.2.gep = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %1, i64 0, i32 2
  %.fca.2.load = load i64, ptr %.fca.2.gep, align 8
  %.repack1 = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %0, i64 0, i32 1
  store ptr %.fca.1.load, ptr %.repack1, align 8
  %.repack3 = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %0, i64 0, i32 2
  store i64 %.fca.2.load, ptr %.repack3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?get__PercentGroupSizes@NumberFormatInfo@Globalization@System@bf@@QEAA?AU?$Span@H@34@XZ"(ptr nocapture readonly %this, ptr noalias nocapture writeonly sret(%"corlib.?$Span@H@System@bf") %0) local_unnamed_addr #0 {
entry:
  %1 = alloca %"corlib.?$Span@H@System@bf", align 8
  %2 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8
  call void @"??B?$Span@H@System@bf@@SA?AU012@PEAV?$Array1@H@12@@Z"(ptr nonnull sret(%"corlib.?$Span@H@System@bf") %1, ptr %3)
  %.fca.1.gep = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %1, i64 0, i32 1
  %.fca.1.load = load ptr, ptr %.fca.1.gep, align 8
  %.fca.2.gep = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %1, i64 0, i32 2
  %.fca.2.load = load i64, ptr %.fca.2.gep, align 8
  %.repack1 = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %0, i64 0, i32 1
  store ptr %.fca.1.load, ptr %.repack1, align 8
  %.repack3 = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %0, i64 0, i32 2
  store i64 %.fca.2.load, ptr %.repack3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?get__CurrencyGroupSeparator@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr nocapture readonly %this, ptr noalias nocapture writeonly sret(%"corlib.StringView@System@bf") %0) local_unnamed_addr #0 {
entry:
  %1 = alloca %"corlib.StringView@System@bf", align 8
  %2 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr nonnull sret(%"corlib.StringView@System@bf") %1, ptr %3)
  %.fca.0.1.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i64 0, i32 0, i32 1
  %.fca.0.1.load = load ptr, ptr %.fca.0.1.gep, align 8
  %.fca.0.2.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i64 0, i32 0, i32 2
  %.fca.0.2.load = load i64, ptr %.fca.0.2.gep, align 8
  %.repack1 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 1
  store ptr %.fca.0.1.load, ptr %.repack1, align 8
  %.repack3 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 2
  store i64 %.fca.0.2.load, ptr %.repack3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?get__CurrencySymbol@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr nocapture readonly %this, ptr noalias nocapture writeonly sret(%"corlib.StringView@System@bf") %0) local_unnamed_addr #0 {
entry:
  %1 = alloca %"corlib.StringView@System@bf", align 8
  %2 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 16
  %3 = load ptr, ptr %2, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr nonnull sret(%"corlib.StringView@System@bf") %1, ptr %3)
  %.fca.0.1.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i64 0, i32 0, i32 1
  %.fca.0.1.load = load ptr, ptr %.fca.0.1.gep, align 8
  %.fca.0.2.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i64 0, i32 0, i32 2
  %.fca.0.2.load = load i64, ptr %.fca.0.2.gep, align 8
  %.repack1 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 1
  store ptr %.fca.0.1.load, ptr %.repack1, align 8
  %.repack3 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 2
  store i64 %.fca.0.2.load, ptr %.repack3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @"?get__CurrentInfo@NumberFormatInfo@Globalization@System@bf@@SAPEAV1234@XZ"() local_unnamed_addr #0 {
entry:
  %get__CurrentCulture = tail call ptr @"?get__CurrentCulture@CultureInfo@Globalization@System@bf@@SAPEAV1234@XZ"()
  %get__NumberFormat = tail call ptr @"?get__NumberFormat@CultureInfo@Globalization@System@bf@@QEAAPEAVNumberFormatInfo@234@XZ"(ptr %get__CurrentCulture)
  ret ptr %get__NumberFormat
}

; Function Attrs: nounwind uwtable
define void @"?get__NaNSymbol@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr nocapture readonly %this, ptr noalias nocapture writeonly sret(%"corlib.StringView@System@bf") %0) local_unnamed_addr #0 {
entry:
  %1 = alloca %"corlib.StringView@System@bf", align 8
  %2 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 19
  %3 = load ptr, ptr %2, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr nonnull sret(%"corlib.StringView@System@bf") %1, ptr %3)
  %.fca.0.1.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i64 0, i32 0, i32 1
  %.fca.0.1.load = load ptr, ptr %.fca.0.1.gep, align 8
  %.fca.0.2.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i64 0, i32 0, i32 2
  %.fca.0.2.load = load i64, ptr %.fca.0.2.gep, align 8
  %.repack1 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 1
  store ptr %.fca.0.1.load, ptr %.repack1, align 8
  %.repack3 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 2
  store i64 %.fca.0.2.load, ptr %.repack3, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @"?get__CurrencyNegativePattern@NumberFormatInfo@Globalization@System@bf@@QEAATint@@XZ"(ptr nocapture readonly %this) local_unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 37
  %1 = load i32, ptr %0, align 4
  %2 = sext i32 %1 to i64
  ret i64 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @"?get__NumberNegativePattern@NumberFormatInfo@Globalization@System@bf@@QEAATint@@XZ"(ptr nocapture readonly %this) local_unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 38
  %1 = load i32, ptr %0, align 4
  %2 = sext i32 %1 to i64
  ret i64 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @"?get__PercentPositivePattern@NumberFormatInfo@Globalization@System@bf@@QEAATint@@XZ"(ptr nocapture readonly %this) local_unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 39
  %1 = load i32, ptr %0, align 4
  %2 = sext i32 %1 to i64
  ret i64 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @"?get__PercentNegativePattern@NumberFormatInfo@Globalization@System@bf@@QEAATint@@XZ"(ptr nocapture readonly %this) local_unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 40
  %1 = load i32, ptr %0, align 4
  %2 = sext i32 %1 to i64
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define void @"?get__NegativeInfinitySymbol@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr nocapture readonly %this, ptr noalias nocapture writeonly sret(%"corlib.StringView@System@bf") %0) local_unnamed_addr #0 {
entry:
  %1 = alloca %"corlib.StringView@System@bf", align 8
  %2 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 23
  %3 = load ptr, ptr %2, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr nonnull sret(%"corlib.StringView@System@bf") %1, ptr %3)
  %.fca.0.1.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i64 0, i32 0, i32 1
  %.fca.0.1.load = load ptr, ptr %.fca.0.1.gep, align 8
  %.fca.0.2.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i64 0, i32 0, i32 2
  %.fca.0.2.load = load i64, ptr %.fca.0.2.gep, align 8
  %.repack1 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 1
  store ptr %.fca.0.1.load, ptr %.repack1, align 8
  %.repack3 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 2
  store i64 %.fca.0.2.load, ptr %.repack3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?get__NegativeSign@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr nocapture readonly %this, ptr noalias nocapture writeonly sret(%"corlib.StringView@System@bf") %0) local_unnamed_addr #0 {
entry:
  %1 = alloca %"corlib.StringView@System@bf", align 8
  %2 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr nonnull sret(%"corlib.StringView@System@bf") %1, ptr %3)
  %.fca.0.1.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i64 0, i32 0, i32 1
  %.fca.0.1.load = load ptr, ptr %.fca.0.1.gep, align 8
  %.fca.0.2.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i64 0, i32 0, i32 2
  %.fca.0.2.load = load i64, ptr %.fca.0.2.gep, align 8
  %.repack1 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 1
  store ptr %.fca.0.1.load, ptr %.repack1, align 8
  %.repack3 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 2
  store i64 %.fca.0.2.load, ptr %.repack3, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @"?get__NumberDecimalDigits@NumberFormatInfo@Globalization@System@bf@@QEAAHXZ"(ptr nocapture readonly %this) local_unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 34
  %1 = load i32, ptr %0, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void @"?get__NumberDecimalSeparator@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr nocapture readonly %this, ptr noalias nocapture writeonly sret(%"corlib.StringView@System@bf") %0) local_unnamed_addr #0 {
entry:
  %1 = alloca %"corlib.StringView@System@bf", align 8
  %2 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr nonnull sret(%"corlib.StringView@System@bf") %1, ptr %3)
  %.fca.0.1.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i64 0, i32 0, i32 1
  %.fca.0.1.load = load ptr, ptr %.fca.0.1.gep, align 8
  %.fca.0.2.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i64 0, i32 0, i32 2
  %.fca.0.2.load = load i64, ptr %.fca.0.2.gep, align 8
  %.repack1 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 1
  store ptr %.fca.0.1.load, ptr %.repack1, align 8
  %.repack3 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 2
  store i64 %.fca.0.2.load, ptr %.repack3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?get__NumberGroupSeparator@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr nocapture readonly %this, ptr noalias nocapture writeonly sret(%"corlib.StringView@System@bf") %0) local_unnamed_addr #0 {
entry:
  %1 = alloca %"corlib.StringView@System@bf", align 8
  %2 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr nonnull sret(%"corlib.StringView@System@bf") %1, ptr %3)
  %.fca.0.1.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i64 0, i32 0, i32 1
  %.fca.0.1.load = load ptr, ptr %.fca.0.1.gep, align 8
  %.fca.0.2.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i64 0, i32 0, i32 2
  %.fca.0.2.load = load i64, ptr %.fca.0.2.gep, align 8
  %.repack1 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 1
  store ptr %.fca.0.1.load, ptr %.repack1, align 8
  %.repack3 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 2
  store i64 %.fca.0.2.load, ptr %.repack3, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @"?get__CurrencyPositivePattern@NumberFormatInfo@Globalization@System@bf@@QEAATint@@XZ"(ptr nocapture readonly %this) local_unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 36
  %1 = load i32, ptr %0, align 4
  %2 = sext i32 %1 to i64
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define void @"?get__PositiveInfinitySymbol@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr nocapture readonly %this, ptr noalias nocapture writeonly sret(%"corlib.StringView@System@bf") %0) local_unnamed_addr #0 {
entry:
  %1 = alloca %"corlib.StringView@System@bf", align 8
  %2 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr nonnull sret(%"corlib.StringView@System@bf") %1, ptr %3)
  %.fca.0.1.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i64 0, i32 0, i32 1
  %.fca.0.1.load = load ptr, ptr %.fca.0.1.gep, align 8
  %.fca.0.2.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i64 0, i32 0, i32 2
  %.fca.0.2.load = load i64, ptr %.fca.0.2.gep, align 8
  %.repack1 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 1
  store ptr %.fca.0.1.load, ptr %.repack1, align 8
  %.repack3 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 2
  store i64 %.fca.0.2.load, ptr %.repack3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?get__PositiveSign@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr nocapture readonly %this, ptr noalias nocapture writeonly sret(%"corlib.StringView@System@bf") %0) local_unnamed_addr #0 {
entry:
  %1 = alloca %"corlib.StringView@System@bf", align 8
  %2 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr nonnull sret(%"corlib.StringView@System@bf") %1, ptr %3)
  %.fca.0.1.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i64 0, i32 0, i32 1
  %.fca.0.1.load = load ptr, ptr %.fca.0.1.gep, align 8
  %.fca.0.2.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i64 0, i32 0, i32 2
  %.fca.0.2.load = load i64, ptr %.fca.0.2.gep, align 8
  %.repack1 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 1
  store ptr %.fca.0.1.load, ptr %.repack1, align 8
  %.repack3 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 2
  store i64 %.fca.0.2.load, ptr %.repack3, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @"?get__PercentDecimalDigits@NumberFormatInfo@Globalization@System@bf@@QEAAHXZ"(ptr nocapture readonly %this) local_unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 41
  %1 = load i32, ptr %0, align 4
  ret i32 %1
}

; Function Attrs: nounwind uwtable
define void @"?get__PercentDecimalSeparator@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr nocapture readonly %this, ptr noalias nocapture writeonly sret(%"corlib.StringView@System@bf") %0) local_unnamed_addr #0 {
entry:
  %1 = alloca %"corlib.StringView@System@bf", align 8
  %2 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr nonnull sret(%"corlib.StringView@System@bf") %1, ptr %3)
  %.fca.0.1.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i64 0, i32 0, i32 1
  %.fca.0.1.load = load ptr, ptr %.fca.0.1.gep, align 8
  %.fca.0.2.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i64 0, i32 0, i32 2
  %.fca.0.2.load = load i64, ptr %.fca.0.2.gep, align 8
  %.repack1 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 1
  store ptr %.fca.0.1.load, ptr %.repack1, align 8
  %.repack3 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 2
  store i64 %.fca.0.2.load, ptr %.repack3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?get__PercentGroupSeparator@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr nocapture readonly %this, ptr noalias nocapture writeonly sret(%"corlib.StringView@System@bf") %0) local_unnamed_addr #0 {
entry:
  %1 = alloca %"corlib.StringView@System@bf", align 8
  %2 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 27
  %3 = load ptr, ptr %2, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr nonnull sret(%"corlib.StringView@System@bf") %1, ptr %3)
  %.fca.0.1.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i64 0, i32 0, i32 1
  %.fca.0.1.load = load ptr, ptr %.fca.0.1.gep, align 8
  %.fca.0.2.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i64 0, i32 0, i32 2
  %.fca.0.2.load = load i64, ptr %.fca.0.2.gep, align 8
  %.repack1 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 1
  store ptr %.fca.0.1.load, ptr %.repack1, align 8
  %.repack3 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 2
  store i64 %.fca.0.2.load, ptr %.repack3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?get__PercentSymbol@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr nocapture readonly %this, ptr noalias nocapture writeonly sret(%"corlib.StringView@System@bf") %0) local_unnamed_addr #0 {
entry:
  %1 = alloca %"corlib.StringView@System@bf", align 8
  %2 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 29
  %3 = load ptr, ptr %2, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr nonnull sret(%"corlib.StringView@System@bf") %1, ptr %3)
  %.fca.0.1.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i64 0, i32 0, i32 1
  %.fca.0.1.load = load ptr, ptr %.fca.0.1.gep, align 8
  %.fca.0.2.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i64 0, i32 0, i32 2
  %.fca.0.2.load = load i64, ptr %.fca.0.2.gep, align 8
  %.repack1 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 1
  store ptr %.fca.0.1.load, ptr %.repack1, align 8
  %.repack3 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 2
  store i64 %.fca.0.2.load, ptr %.repack3, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?get__PerMilleSymbol@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr nocapture readonly %this, ptr noalias nocapture writeonly sret(%"corlib.StringView@System@bf") %0) local_unnamed_addr #0 {
entry:
  %1 = alloca %"corlib.StringView@System@bf", align 8
  %2 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 31
  %3 = load ptr, ptr %2, align 8
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr nonnull sret(%"corlib.StringView@System@bf") %1, ptr %3)
  %.fca.0.1.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i64 0, i32 0, i32 1
  %.fca.0.1.load = load ptr, ptr %.fca.0.1.gep, align 8
  %.fca.0.2.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i64 0, i32 0, i32 2
  %.fca.0.2.load = load i64, ptr %.fca.0.2.gep, align 8
  %.repack1 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 1
  store ptr %.fca.0.1.load, ptr %.repack1, align 8
  %.repack3 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 2
  store i64 %.fca.0.2.load, ptr %.repack3, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define ptr @"?GetFormat@NumberFormatInfo@Globalization@System@bf@@QEAAPEAVObject@34@PEAVType@34@@Z"(ptr readnone %this, ptr readnone %formatType) local_unnamed_addr #2 {
entry:
  %0 = icmp eq ptr %formatType, @"?sBfTypeData@NumberFormatInfo@Globalization@System@bf@@2HA"
  %. = select i1 %0, ptr %this, ptr null
  ret ptr %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @"?__BfCtorClear@NumberFormatInfo@Globalization@System@bf@@AEAAXXZ"(ptr nocapture writeonly %this) local_unnamed_addr #3 {
entry:
  %0 = getelementptr inbounds i8, ptr %this, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(302) %0, i8 0, i64 302, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?~this@NumberFormatInfo@Globalization@System@bf@@QEAAXXZ"(ptr %this) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 33
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr inbounds %"corlib.Array@System@bf", ptr %1, i64 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %delete.body4.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %entry
  %5 = getelementptr inbounds %"corlib.?$Array1@PEAVString@System@bf@@@System@bf", ptr %1, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8
  %.not.i = icmp ne ptr %6, @__bfStrObj216
  %7 = icmp sgt i32 %3, 0
  %or.cond.i = and i1 %7, %.not.i
  br i1 %or.cond.i, label %foreach.body.i, label %delete.body4.i

foreach.body.i:                                   ; preds = %land.rhs.i, %foreach.inc.i
  %8 = phi i32 [ %14, %foreach.inc.i ], [ %3, %land.rhs.i ]
  %.013.i = phi i64 [ %15, %foreach.inc.i ], [ 0, %land.rhs.i ]
  %9 = getelementptr inbounds ptr, ptr %5, i64 %.013.i
  %10 = load ptr, ptr %9, align 8
  %.not11.i = icmp eq ptr %10, null
  br i1 %.not11.i, label %foreach.inc.i, label %delete.body.i

delete.body.i:                                    ; preds = %foreach.body.i
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr nonnull %10) #5
  tail call void @tc_free(ptr nonnull %10) #5
  %.pre.i = load i32, ptr %2, align 4
  br label %foreach.inc.i

foreach.inc.i:                                    ; preds = %delete.body.i, %foreach.body.i
  %14 = phi i32 [ %8, %foreach.body.i ], [ %.pre.i, %delete.body.i ]
  %15 = add nuw nsw i64 %.013.i, 1
  %16 = sext i32 %14 to i64
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %foreach.body.i, label %if.end.i

if.end.i:                                         ; preds = %foreach.inc.i
  %.pr.pre.i = load ptr, ptr %0, align 8
  %.not10.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not10.i, label %"?DeleteNativeDigits@NumberFormatInfo@Globalization@System@bf@@AEAAXXZ.exit", label %delete.body4.i

delete.body4.i:                                   ; preds = %if.end.i, %land.rhs.i, %entry
  %18 = phi ptr [ %.pr.pre.i, %if.end.i ], [ %1, %entry ], [ %1, %land.rhs.i ]
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr nonnull %18) #5
  tail call void @tc_free(ptr nonnull %18) #5
  br label %"?DeleteNativeDigits@NumberFormatInfo@Globalization@System@bf@@AEAAXXZ.exit"

"?DeleteNativeDigits@NumberFormatInfo@Globalization@System@bf@@AEAAXXZ.exit": ; preds = %if.end.i, %delete.body4.i
  %22 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 31
  tail call void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr nonnull %22)
  %23 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 29
  tail call void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr nonnull %23)
  %24 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 27
  tail call void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr nonnull %24)
  %25 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 25
  tail call void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr nonnull %25)
  %26 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 23
  tail call void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr nonnull %26)
  %27 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 21
  tail call void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr nonnull %27)
  %28 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 19
  tail call void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr nonnull %28)
  %29 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 16
  tail call void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr nonnull %29)
  %30 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 14
  tail call void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr nonnull %30)
  %31 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 12
  tail call void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr nonnull %31)
  %32 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 10
  tail call void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr nonnull %32)
  %33 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 8
  tail call void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr nonnull %33)
  %34 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 6
  tail call void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr nonnull %34)
  %35 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 4
  tail call void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr nonnull %35)
  %36 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8
  %.not = icmp eq ptr %37, null
  br i1 %.not, label %delete.end, label %delete.body

delete.body:                                      ; preds = %"?DeleteNativeDigits@NumberFormatInfo@Globalization@System@bf@@AEAAXXZ.exit"
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds ptr, ptr %38, i64 3
  %40 = load ptr, ptr %39, align 8
  tail call void %40(ptr nonnull %37) #5
  tail call void @tc_free(ptr nonnull %37) #5
  br label %delete.end

delete.end:                                       ; preds = %delete.body, %"?DeleteNativeDigits@NumberFormatInfo@Globalization@System@bf@@AEAAXXZ.exit"
  %41 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8
  %.not40 = icmp eq ptr %42, null
  br i1 %.not40, label %delete.end34, label %delete.body33

delete.body33:                                    ; preds = %delete.end
  %43 = load ptr, ptr %42, align 8
  %44 = getelementptr inbounds ptr, ptr %43, i64 3
  %45 = load ptr, ptr %44, align 8
  tail call void %45(ptr nonnull %42) #5
  tail call void @tc_free(ptr nonnull %42) #5
  br label %delete.end34

delete.end34:                                     ; preds = %delete.body33, %delete.end
  %46 = getelementptr inbounds %"corlib.NumberFormatInfo@Globalization@System@bf", ptr %this, i64 0, i32 1
  %47 = load ptr, ptr %46, align 8
  %.not41 = icmp eq ptr %47, null
  br i1 %.not41, label %delete.end37, label %delete.body36

delete.body36:                                    ; preds = %delete.end34
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds ptr, ptr %48, i64 3
  %50 = load ptr, ptr %49, align 8
  tail call void %50(ptr nonnull %47) #5
  tail call void @tc_free(ptr nonnull %47) #5
  br label %delete.end37

delete.end37:                                     ; preds = %delete.body36, %delete.end34
  tail call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr nonnull %this)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare ptr @tc_malloc(i64) local_unnamed_addr

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@?$Array1@H@System@bf@@QEAAXXZ"(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr, ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@?$Array1@PEAVString@System@bf@@@System@bf@@QEAAXXZ"(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?GetNFIValues@CultureData@Globalization@System@bf@@AEAAXPEAVNumberFormatInfo@234@@Z"(ptr, ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsInvariantCulture@CultureData@Globalization@System@bf@@QEAA_NXZ"(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr) local_unnamed_addr #0

declare void @tc_free(ptr) local_unnamed_addr

; Function Attrs: nounwind uwtable
declare void @"?~this@Object@System@bf@@UEAAXXZ"(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr noalias sret(%"corlib.StringView@System@bf"), ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__NumberFormat@CultureInfo@Globalization@System@bf@@QEAAPEAVNumberFormatInfo@234@XZ"(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"??B?$Span@H@System@bf@@SA?AU012@PEAV?$Array1@H@12@@Z"(ptr noalias sret(%"corlib.?$Span@H@System@bf"), ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__CurrentCulture@CultureInfo@Globalization@System@bf@@SAPEAV1234@XZ"() local_unnamed_addr #0

attributes #0 = { nounwind uwtable }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }
