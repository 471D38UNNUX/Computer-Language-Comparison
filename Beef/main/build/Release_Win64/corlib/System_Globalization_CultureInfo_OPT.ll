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

@"?sInvariantCultureInfo@CultureInfo@Globalization@System@bf@@2PEAV1234@A" = local_unnamed_addr global ptr null, align 8
@"?sUserDefaultUICulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A" = local_unnamed_addr global ptr null, align 8
@"?sUserDefaultCulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A" = local_unnamed_addr global ptr null, align 8
@"?mDefaultCultureInfo@CultureInfo@Globalization@System@bf@@2PEAV1234@A" = local_unnamed_addr global ptr null, align 8
@"?tlCurrentCulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A" = thread_local local_unnamed_addr global ptr null, align 8
@"?tlCurrentUICulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A" = thread_local local_unnamed_addr global ptr null, align 8
@"?init@CultureInfo@Globalization@System@bf@@2_NA" = local_unnamed_addr global i1 false, align 1
@"?s_isTaiwanSku@CultureInfo@Globalization@System@bf@@2_NC" = local_unnamed_addr global i1 false, align 1
@"?s_haveIsTaiwanSku@CultureInfo@Globalization@System@bf@@2_NC" = local_unnamed_addr global i1 false, align 1
@didStaticInit = internal unnamed_addr global i1 false
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define ptr @"?get__DefaultThreadCurrentCulture@CultureInfo@Globalization@System@bf@@SAPEAV1234@XZ"() local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @"?mDefaultCultureInfo@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define ptr @"?get__UserDefaultCulture@CultureInfo@Globalization@System@bf@@SAPEAV1234@XZ"() local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @"?sUserDefaultCulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define ptr @"?get__InvariantCulture@CultureInfo@Globalization@System@bf@@SAPEAV1234@XZ"() local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @"?sInvariantCultureInfo@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define void @"?get__Name@CultureInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr nocapture readonly %this, ptr noalias nocapture writeonly sret(%"corlib.StringView@System@bf") %0) local_unnamed_addr #1 {
entry:
  %1 = alloca %"corlib.StringView@System@bf", align 8
  %2 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %this, i64 0, i32 3
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
define ptr @"?get__NumberFormat@CultureInfo@Globalization@System@bf@@QEAAPEAVNumberFormatInfo@234@XZ"(ptr nocapture %this) local_unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %this, i64 0, i32 2
  %1 = load ptr, ptr %0, align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %if.then, label %exit

if.then:                                          ; preds = %entry
  %3 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %this, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @tc_malloc(i64 310) #8
  store ptr @"?sBfClassVData@NumberFormatInfo@Globalization@System@bf@@2UClassVData@34@A", ptr %5, align 8
  tail call void @"?__BfCtorClear@NumberFormatInfo@Globalization@System@bf@@AEAAXXZ"(ptr nonnull %5)
  tail call void @"?__BfCtor@NumberFormatInfo@Globalization@System@bf@@QEAAXPEAVCultureData@234@@Z"(ptr nonnull %5, ptr %4)
  %6 = ptrtoint ptr %5 to i64
  %7 = cmpxchg ptr %0, i64 0, i64 %6 seq_cst seq_cst, align 8
  %.not = extractvalue { i64, i1 } %7, 1
  br i1 %.not, label %if.then.if.end3_crit_edge, label %delete.body

if.then.if.end3_crit_edge:                        ; preds = %if.then
  %.pre = load ptr, ptr %0, align 8
  br label %exit

delete.body:                                      ; preds = %if.then
  %8 = extractvalue { i64, i1 } %7, 0
  %9 = inttoptr i64 %8 to ptr
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr nonnull %5) #8
  tail call void @tc_free(ptr nonnull %5) #8
  br label %exit

exit:                                             ; preds = %entry, %if.then.if.end3_crit_edge, %delete.body
  %__return.0 = phi ptr [ %9, %delete.body ], [ %.pre, %if.then.if.end3_crit_edge ], [ %1, %entry ]
  ret ptr %__return.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define ptr @"?get__CurrentCulture@CultureInfo@Globalization@System@bf@@SAPEAV1234@XZ"() local_unnamed_addr #2 {
entry:
  %0 = load ptr, ptr @"?tlCurrentCulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %if.then, label %if.end1

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @"?mDefaultCultureInfo@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  %3 = icmp eq ptr %2, null
  %4 = load ptr, ptr @"?sUserDefaultCulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  %spec.select = select i1 %3, ptr %4, ptr %2
  store ptr %spec.select, ptr @"?tlCurrentCulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  br label %if.end1

if.end1:                                          ; preds = %if.then, %entry
  %5 = phi ptr [ %spec.select, %if.then ], [ %0, %entry ]
  ret ptr %5
}

; Function Attrs: nounwind uwtable
define ptr @"?get__Calendar@CultureInfo@Globalization@System@bf@@UEAAPEAVCalendar@234@XZ"(ptr nocapture %this) local_unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %this, i64 0, i32 6
  %1 = load ptr, ptr %0, align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %this, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8
  %get__DefaultCalendar = tail call ptr @"?get__DefaultCalendar@CultureData@Globalization@System@bf@@AEAAPEAVCalendar@234@XZ"(ptr %4)
  fence seq_cst
  %5 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %this, i64 0, i32 8
  %6 = load i1, ptr %5, align 1
  tail call void @"?SetReadOnlyState@Calendar@Globalization@System@bf@@AEAAX_N@Z"(ptr %get__DefaultCalendar, i1 zeroext %6)
  store ptr %get__DefaultCalendar, ptr %0, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = phi ptr [ %get__DefaultCalendar, %if.then ], [ %1, %entry ]
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define ptr @"?get__DateTimeFormat@CultureInfo@Globalization@System@bf@@UEAAPEAVDateTimeFormatInfo@234@XZ"(ptr %this) local_unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %this, i64 0, i32 4
  %1 = load ptr, ptr %0, align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %this, i64 0, i32 5
  %4 = load ptr, ptr %this, align 8
  %5 = getelementptr inbounds ptr, ptr %4, i64 6
  %6 = load ptr, ptr %5, align 8
  %get__Calendar = tail call ptr %6(ptr nonnull %this) #8
  %7 = load ptr, ptr %3, align 8
  %8 = tail call ptr @tc_malloc(i64 338) #8
  store ptr @"?sBfClassVData@DateTimeFormatInfo@Globalization@System@bf@@2UClassVData@34@A", ptr %8, align 8
  tail call void @"?__BfCtorClear@DateTimeFormatInfo@Globalization@System@bf@@AEAAXXZ"(ptr nonnull %8)
  tail call void @"?__BfCtor@DateTimeFormatInfo@Globalization@System@bf@@QEAAXPEAVCultureData@234@PEAVCalendar@234@@Z"(ptr nonnull %8, ptr %7, ptr %get__Calendar)
  %9 = getelementptr inbounds %"corlib.DateTimeFormatInfo@Globalization@System@bf", ptr %8, i64 0, i32 42
  %10 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %this, i64 0, i32 8
  %11 = load i1, ptr %10, align 1
  store i1 %11, ptr %9, align 1
  fence seq_cst
  store ptr %8, ptr %0, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %12 = phi ptr [ %8, %if.then ], [ %1, %entry ]
  ret ptr %12
}

; Function Attrs: nounwind uwtable
define noundef i1 @"?Init@CultureInfo@Globalization@System@bf@@CA_NXZ"() local_unnamed_addr #1 {
entry:
  %0 = load ptr, ptr @"?sInvariantCultureInfo@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = tail call ptr @tc_malloc(i64 58) #8
  store ptr @"?sBfClassVData@CultureInfo@Globalization@System@bf@@2UClassVData@34@A", ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %2, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(50) %3, i8 0, i64 50, i1 false)
  tail call void @"?__BfCtor@CultureInfo@Globalization@System@bf@@QEAAXPEAVString@34@_N@Z"(ptr nonnull %2, ptr nonnull @__bfStrObj1, i1 zeroext false)
  %4 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %2, i64 0, i32 8
  store i1 true, ptr %4, align 1
  store ptr %2, ptr @"?sInvariantCultureInfo@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = phi ptr [ %2, %if.then ], [ %0, %entry ]
  store ptr %5, ptr @"?sUserDefaultUICulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  store ptr %5, ptr @"?sUserDefaultCulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  %InitUserDefaultCulture = tail call ptr @"?InitUserDefaultCulture@CultureInfo@Globalization@System@bf@@CAPEAV1234@XZ"()
  store ptr %InitUserDefaultCulture, ptr @"?sUserDefaultCulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  %InitUserDefaultUICulture = tail call ptr @"?InitUserDefaultUICulture@CultureInfo@Globalization@System@bf@@CAPEAV1234@XZ"()
  store ptr %InitUserDefaultUICulture, ptr @"?sUserDefaultUICulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  ret i1 true
}

; Function Attrs: nounwind uwtable
define ptr @"?InitUserDefaultCulture@CultureInfo@Globalization@System@bf@@CAPEAV1234@XZ"() local_unnamed_addr #1 {
entry:
  %0 = alloca [32 x i8], align 8
  %1 = alloca i64, align 8
  store ptr @"?sBfClassVData@String@System@bf@@2UClassVData@23@A", ptr %0, align 8
  call void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr nonnull %0)
  %2 = ptrtoint ptr %0 to i64
  %3 = add i64 %2, 24
  store i64 %3, ptr %1, align 8
  call void @"?__BfCtor@i4$String@System@bf@@QEAAXAEATint@@@Z"(ptr nonnull %0, ptr nonnull dereferenceable(8) %1)
  call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr nonnull %0, ptr nonnull @__bfStrObj401)
  %get__IsEmpty = call i1 @"?get__IsEmpty@String@System@bf@@QEAA_NXZ"(ptr nonnull %0)
  br i1 %get__IsEmpty, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr nonnull %0, ptr nonnull @__bfStrObj401)
  %get__IsEmpty2 = call i1 @"?get__IsEmpty@String@System@bf@@QEAA_NXZ"(ptr nonnull %0)
  br i1 %get__IsEmpty2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.then
  %4 = load ptr, ptr @"?sInvariantCultureInfo@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  br label %deferredCalls

if.end4:                                          ; preds = %if.then, %entry
  %5 = call ptr @tc_malloc(i64 58) #8
  store ptr @"?sBfClassVData@CultureInfo@Globalization@System@bf@@2UClassVData@34@A", ptr %5, align 8
  %6 = getelementptr inbounds i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(50) %6, i8 0, i64 50, i1 false)
  call void @"?__BfCtor@CultureInfo@Globalization@System@bf@@QEAAXPEAVString@34@_N@Z"(ptr nonnull %5, ptr nonnull %0, i1 zeroext true)
  %7 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %5, i64 0, i32 8
  store i1 true, ptr %7, align 1
  br label %deferredCalls

deferredCalls:                                    ; preds = %if.end4, %if.then3
  %__return.0 = phi ptr [ %4, %if.then3 ], [ %5, %if.end4 ]
  call void @"?~this@String@System@bf@@QEAAXXZ"(ptr nonnull %0)
  ret ptr %__return.0
}

; Function Attrs: nounwind uwtable
define ptr @"?InitUserDefaultUICulture@CultureInfo@Globalization@System@bf@@CAPEAV1234@XZ"() local_unnamed_addr #1 {
entry:
  %0 = alloca %"corlib.StringView@System@bf", align 8
  %1 = alloca [32 x i8], align 8
  %2 = alloca i64, align 8
  %3 = alloca %"corlib.StringView@System@bf", align 8
  store ptr @"?sBfClassVData@String@System@bf@@2UClassVData@23@A", ptr %1, align 8
  call void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr nonnull %1)
  %4 = ptrtoint ptr %1 to i64
  %5 = add i64 %4, 24
  store i64 %5, ptr %2, align 8
  call void @"?__BfCtor@i4$String@System@bf@@QEAAXAEATint@@@Z"(ptr nonnull %1, ptr nonnull dereferenceable(8) %2)
  %6 = load ptr, ptr @"?sUserDefaultCulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %0)
  %7 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %6, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !noalias !0
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr nonnull sret(%"corlib.StringView@System@bf") %0, ptr %8), !noalias !0
  %.fca.0.1.gep.i = getelementptr inbounds %"corlib.StringView@System@bf", ptr %0, i64 0, i32 0, i32 1
  %.fca.0.1.load.i = load ptr, ptr %.fca.0.1.gep.i, align 8, !noalias !0
  %.fca.0.2.gep.i = getelementptr inbounds %"corlib.StringView@System@bf", ptr %0, i64 0, i32 0, i32 2
  %.fca.0.2.load.i = load i64, ptr %.fca.0.2.gep.i, align 8, !noalias !0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %0)
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr nonnull sret(%"corlib.StringView@System@bf") %3, ptr nonnull %1)
  %9 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %3, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %3, i64 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = call i1 @"??8StringView@System@bf@@SA_NU012@0@Z"(ptr %10, i64 %12, ptr %.fca.0.1.load.i, i64 %.fca.0.2.load.i)
  br i1 %13, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %14 = load ptr, ptr @"?sUserDefaultCulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  br label %deferredCalls

if.end4:                                          ; preds = %entry
  %15 = call ptr @tc_malloc(i64 58) #8
  store ptr @"?sBfClassVData@CultureInfo@Globalization@System@bf@@2UClassVData@34@A", ptr %15, align 8
  %16 = getelementptr inbounds i8, ptr %15, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(50) %16, i8 0, i64 50, i1 false)
  call void @"?__BfCtor@CultureInfo@Globalization@System@bf@@QEAAXPEAVString@34@_N@Z"(ptr nonnull %15, ptr nonnull %1, i1 zeroext true)
  %17 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %15, i64 0, i32 8
  store i1 true, ptr %17, align 1
  br label %deferredCalls

deferredCalls:                                    ; preds = %if.end4, %if.then
  %__return.0 = phi ptr [ %14, %if.then ], [ %15, %if.end4 ]
  call void @"?~this@String@System@bf@@QEAAXXZ"(ptr nonnull %1)
  ret ptr %__return.0
}

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@CultureInfo@Globalization@System@bf@@AEAAXXZ"(ptr nocapture writeonly %this) local_unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %this, i64 0, i32 1
  %1 = tail call ptr @tc_malloc(i64 486) #8
  store ptr @"?sBfClassVData@CultureData@Globalization@System@bf@@2UClassVData@34@A", ptr %1, align 8
  tail call void @"?__BfCtorClear@CultureData@Globalization@System@bf@@AEAAXXZ"(ptr nonnull %1)
  tail call void @"?__BfCtor@CultureData@Globalization@System@bf@@QEAAXXZ"(ptr nonnull %1)
  store ptr %1, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@CultureInfo@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr %this, ptr %name) local_unnamed_addr #1 {
entry:
  tail call void @"?__BfCtor@CultureInfo@Globalization@System@bf@@QEAAXPEAVString@34@_N@Z"(ptr %this, ptr %name, i1 zeroext true)
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@CultureInfo@Globalization@System@bf@@QEAAXPEAVString@34@_N@Z"(ptr %this, ptr %name, i1 zeroext %useUserOverride) local_unnamed_addr #1 {
entry:
  %0 = alloca %"corlib.StringView@System@bf", align 8
  %1 = alloca %"corlib.StringView@System@bf", align 8
  %2 = alloca i64, align 8
  %3 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %this, i64 0, i32 1
  %4 = tail call ptr @tc_malloc(i64 486) #8
  store ptr @"?sBfClassVData@CultureData@Globalization@System@bf@@2UClassVData@34@A", ptr %4, align 8
  tail call void @"?__BfCtorClear@CultureData@Globalization@System@bf@@AEAAXXZ"(ptr nonnull %4)
  tail call void @"?__BfCtor@CultureData@Globalization@System@bf@@QEAAXXZ"(ptr nonnull %4)
  store ptr %4, ptr %3, align 8
  %5 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %this, i64 0, i32 5
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr nonnull sret(%"corlib.StringView@System@bf") %0, ptr %name)
  %6 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8
  %GetCultureData = call ptr @"?GetCultureData@CultureData@Globalization@System@bf@@CAPEAV1234@UStringView@34@_N@Z"(ptr %7, i64 %9, i1 zeroext %useUserOverride)
  store ptr %GetCultureData, ptr %5, align 8
  %10 = icmp eq ptr %GetCultureData, null
  br i1 %10, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @"?FatalError@Runtime@System@bf@@SAXPEAVString@23@0Tint@@@Z"(ptr nonnull @__bfStrObj30, ptr nonnull @__bfStrObj400, i64 256) #9
  unreachable

if.end:                                           ; preds = %entry
  %11 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %this, i64 0, i32 3
  call void @"?get__CultureName@CultureData@Globalization@System@bf@@AEAA?AUStringView@34@XZ"(ptr nonnull %GetCultureData, ptr nonnull sret(%"corlib.StringView@System@bf") %1)
  %"this$calcAppend" = call i64 @"?this$calcAppend@i27$String@System@bf@@SATint@@UStringView@23@@Z"(ptr nonnull %1)
  %12 = add i64 %"this$calcAppend", 24
  %13 = call ptr @tc_malloc(i64 %12) #8
  store ptr @"?sBfClassVData@String@System@bf@@2UClassVData@23@A", ptr %13, align 8
  call void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr nonnull %13)
  %14 = ptrtoint ptr %13 to i64
  %15 = add i64 %14, 24
  store i64 %15, ptr %2, align 8
  call void @"?__BfCtor@i26$String@System@bf@@QEAAXAEATint@@UStringView@23@@Z"(ptr nonnull %13, ptr nonnull dereferenceable(8) %2, ptr nonnull %1)
  store ptr %13, ptr %11, align 8
  %16 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %this, i64 0, i32 7
  %GetType = call ptr @"?GetType@Object@System@bf@@QEAAPEAVType@23@XZ"(ptr nonnull %this)
  %17 = icmp ne ptr %GetType, @"?sBfTypeData@CultureInfo@Globalization@System@bf@@2HA"
  store i1 %17, ptr %16, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfStaticCtor@CultureInfo@Globalization@System@bf@@SAXXZ"() local_unnamed_addr #1 {
entry:
  %0 = load i1, ptr @didStaticInit, align 1
  br i1 %0, label %exit, label %init1

init1:                                            ; preds = %entry
  store i1 true, ptr @didStaticInit, align 1
  %1 = load ptr, ptr @"?sInvariantCultureInfo@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  %2 = icmp eq ptr %1, null
  br i1 %2, label %if.then.i, label %"?Init@CultureInfo@Globalization@System@bf@@CA_NXZ.exit"

if.then.i:                                        ; preds = %init1
  %3 = tail call ptr @tc_malloc(i64 58) #8
  store ptr @"?sBfClassVData@CultureInfo@Globalization@System@bf@@2UClassVData@34@A", ptr %3, align 8
  %4 = getelementptr inbounds i8, ptr %3, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(50) %4, i8 0, i64 50, i1 false)
  tail call void @"?__BfCtor@CultureInfo@Globalization@System@bf@@QEAAXPEAVString@34@_N@Z"(ptr nonnull %3, ptr nonnull @__bfStrObj1, i1 zeroext false)
  %5 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %3, i64 0, i32 8
  store i1 true, ptr %5, align 1
  store ptr %3, ptr @"?sInvariantCultureInfo@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  br label %"?Init@CultureInfo@Globalization@System@bf@@CA_NXZ.exit"

"?Init@CultureInfo@Globalization@System@bf@@CA_NXZ.exit": ; preds = %init1, %if.then.i
  %6 = phi ptr [ %3, %if.then.i ], [ %1, %init1 ]
  store ptr %6, ptr @"?sUserDefaultUICulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  store ptr %6, ptr @"?sUserDefaultCulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  %InitUserDefaultCulture.i = tail call ptr @"?InitUserDefaultCulture@CultureInfo@Globalization@System@bf@@CAPEAV1234@XZ"()
  store ptr %InitUserDefaultCulture.i, ptr @"?sUserDefaultCulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  %InitUserDefaultUICulture.i = tail call ptr @"?InitUserDefaultUICulture@CultureInfo@Globalization@System@bf@@CAPEAV1234@XZ"()
  store ptr %InitUserDefaultUICulture.i, ptr @"?sUserDefaultUICulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  store i1 true, ptr @"?init@CultureInfo@Globalization@System@bf@@2_NA", align 1
  br label %exit

exit:                                             ; preds = %"?Init@CultureInfo@Globalization@System@bf@@CA_NXZ.exit", %entry
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @"?GetFormat@CultureInfo@Globalization@System@bf@@UEAAPEAVObject@34@PEAVType@34@@Z"(ptr %this, ptr readnone %formatType) local_unnamed_addr #1 {
entry:
  %0 = icmp eq ptr %formatType, @"?sBfTypeData@NumberFormatInfo@Globalization@System@bf@@2HA"
  br i1 %0, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %this, i64 0, i32 2
  %2 = load ptr, ptr %1, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %if.then.i, label %exit

if.then.i:                                        ; preds = %if.then
  %4 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %this, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @tc_malloc(i64 310) #8
  store ptr @"?sBfClassVData@NumberFormatInfo@Globalization@System@bf@@2UClassVData@34@A", ptr %6, align 8
  tail call void @"?__BfCtorClear@NumberFormatInfo@Globalization@System@bf@@AEAAXXZ"(ptr nonnull %6)
  tail call void @"?__BfCtor@NumberFormatInfo@Globalization@System@bf@@QEAAXPEAVCultureData@234@@Z"(ptr nonnull %6, ptr %5)
  %7 = ptrtoint ptr %6 to i64
  %8 = cmpxchg ptr %1, i64 0, i64 %7 seq_cst seq_cst, align 8
  %.not.i = extractvalue { i64, i1 } %8, 1
  br i1 %.not.i, label %if.then.if.end3_crit_edge.i, label %delete.body.i

if.then.if.end3_crit_edge.i:                      ; preds = %if.then.i
  %.pre.i = load ptr, ptr %1, align 8
  br label %exit

delete.body.i:                                    ; preds = %if.then.i
  %9 = extractvalue { i64, i1 } %8, 0
  %10 = inttoptr i64 %9 to ptr
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr nonnull %6) #8
  tail call void @tc_free(ptr nonnull %6) #8
  br label %exit

if.end:                                           ; preds = %entry
  %14 = icmp eq ptr %formatType, @"?sBfTypeData@DateTimeFormatInfo@Globalization@System@bf@@2HA"
  br i1 %14, label %if.then1, label %exit

if.then1:                                         ; preds = %if.end
  %15 = load ptr, ptr %this, align 8
  %16 = getelementptr inbounds ptr, ptr %15, i64 7
  %17 = load ptr, ptr %16, align 8
  %get__DateTimeFormat = tail call ptr %17(ptr nonnull %this) #8
  br label %exit

exit:                                             ; preds = %delete.body.i, %if.then.if.end3_crit_edge.i, %if.then, %if.end, %if.then1
  %__return.0 = phi ptr [ %get__DateTimeFormat, %if.then1 ], [ null, %if.end ], [ %10, %delete.body.i ], [ %.pre.i, %if.then.if.end3_crit_edge.i ], [ %2, %if.then ]
  ret ptr %__return.0
}

; Function Attrs: nounwind uwtable
define void @"?GetDefaultLocaleName@CultureInfo@Globalization@System@bf@@CAXTint@@PEAVString@34@@Z"(i64 %localeType, ptr %outName) local_unnamed_addr #1 {
entry:
  tail call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr %outName, ptr nonnull @__bfStrObj401)
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @"?GetCultureInfo@CultureInfo@Globalization@System@bf@@SAPEAV1234@UStringView@34@@Z"(ptr nocapture readnone %name_mPtr, i64 %name_mLength) local_unnamed_addr #1 {
entry:
  %0 = alloca %"corlib.StringView@System@bf", align 8
  call void @"?__BfCtor@StringView@System@bf@@QEAAXXZ"(ptr nonnull %0)
  %1 = call ptr @tc_malloc(i64 58) #8
  store ptr @"?sBfClassVData@CultureInfo@Globalization@System@bf@@2UClassVData@34@A", ptr %1, align 8
  %2 = getelementptr inbounds i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(50) %2, i8 0, i64 50, i1 false)
  %3 = call ptr @tc_malloc(i64 486) #8
  store ptr @"?sBfClassVData@CultureData@Globalization@System@bf@@2UClassVData@34@A", ptr %3, align 8
  call void @"?__BfCtorClear@CultureData@Globalization@System@bf@@AEAAXXZ"(ptr nonnull %3)
  call void @"?__BfCtor@CultureData@Globalization@System@bf@@QEAAXXZ"(ptr nonnull %3)
  store ptr %3, ptr %2, align 8
  ret ptr %1
}

; Function Attrs: nounwind uwtable
define noundef ptr @"?GetCultureByName@CultureInfo@Globalization@System@bf@@CAPEAV1234@PEAVString@34@_N@Z"(ptr %name, i1 zeroext %userOverride) local_unnamed_addr #1 {
entry:
  %0 = alloca %"corlib.StringView@System@bf", align 8
  %1 = alloca %"corlib.StringView@System@bf", align 8
  br i1 %userOverride, label %cond.then, label %cond.else

cond.then:                                        ; preds = %entry
  %2 = tail call ptr @tc_malloc(i64 58) #8
  store ptr @"?sBfClassVData@CultureInfo@Globalization@System@bf@@2UClassVData@34@A", ptr %2, align 8
  %3 = getelementptr inbounds i8, ptr %2, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(50) %3, i8 0, i64 50, i1 false)
  tail call void @"?__BfCtor@CultureInfo@Globalization@System@bf@@QEAAXPEAVString@34@_N@Z"(ptr nonnull %2, ptr %name, i1 zeroext true)
  br label %cond.cont

cond.else:                                        ; preds = %entry
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr nonnull sret(%"corlib.StringView@System@bf") %1, ptr %name)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %0)
  call void @"?__BfCtor@StringView@System@bf@@QEAAXXZ"(ptr nonnull %0)
  %4 = call ptr @tc_malloc(i64 58) #8
  store ptr @"?sBfClassVData@CultureInfo@Globalization@System@bf@@2UClassVData@34@A", ptr %4, align 8
  %5 = getelementptr inbounds i8, ptr %4, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(50) %5, i8 0, i64 50, i1 false)
  %6 = call ptr @tc_malloc(i64 486) #8
  store ptr @"?sBfClassVData@CultureData@Globalization@System@bf@@2UClassVData@34@A", ptr %6, align 8
  call void @"?__BfCtorClear@CultureData@Globalization@System@bf@@AEAAXXZ"(ptr nonnull %6)
  call void @"?__BfCtor@CultureData@Globalization@System@bf@@QEAAXXZ"(ptr nonnull %6)
  store ptr %6, ptr %5, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %0)
  br label %cond.cont

cond.cont:                                        ; preds = %cond.then, %cond.else
  %7 = phi ptr [ %2, %cond.then ], [ %4, %cond.else ]
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define noundef ptr @"?GetCultureInfoHelper@CultureInfo@Globalization@System@bf@@CAPEAV1234@Tint@@UStringView@34@1@Z"(i64 %lcid, ptr nocapture readnone %name_mPtr, i64 %name_mLength, ptr nocapture readnone %altName) local_unnamed_addr #1 {
entry:
  %0 = tail call ptr @tc_malloc(i64 58) #8
  store ptr @"?sBfClassVData@CultureInfo@Globalization@System@bf@@2UClassVData@34@A", ptr %0, align 8
  %1 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(50) %1, i8 0, i64 50, i1 false)
  %2 = tail call ptr @tc_malloc(i64 486) #8
  store ptr @"?sBfClassVData@CultureData@Globalization@System@bf@@2UClassVData@34@A", ptr %2, align 8
  tail call void @"?__BfCtorClear@CultureData@Globalization@System@bf@@AEAAXXZ"(ptr nonnull %2)
  tail call void @"?__BfCtor@CultureData@Globalization@System@bf@@QEAAXXZ"(ptr nonnull %2)
  store ptr %2, ptr %1, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @"?GetUserDefaultUILanguage@CultureInfo@Globalization@System@bf@@CAXPEAVString@34@@Z"(ptr nocapture readnone %langName) local_unnamed_addr #3 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @"?GetCalendarInstance@CultureInfo@Globalization@System@bf@@CAPEAVCalendar@234@Tint@@@Z"(i64 %calType) local_unnamed_addr #1 {
entry:
  %0 = icmp eq i64 %calType, 1
  br i1 %0, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = tail call ptr @tc_malloc(i64 26) #8
  store ptr @"?sBfClassVData@GregorianCalendar@Globalization@System@bf@@2UClassVData@34@A", ptr %1, align 8
  tail call void @"?__BfCtorClear@GregorianCalendar@Globalization@System@bf@@AEAAXXZ"(ptr nonnull %1)
  tail call void @"?__BfCtor@GregorianCalendar@Globalization@System@bf@@QEAAXXZ"(ptr nonnull %1)
  ret ptr %1

if.end:                                           ; preds = %entry
  tail call void @"?NotImplemented@Runtime@System@bf@@SAXPEAVString@23@Tint@@@Z"(ptr nonnull @__bfStrObj400, i64 354) #9
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @"?__BfCtorClear@CultureInfo@Globalization@System@bf@@AEAAXXZ"(ptr nocapture writeonly %this) local_unnamed_addr #4 {
entry:
  %0 = getelementptr inbounds i8, ptr %this, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(50) %0, i8 0, i64 50, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfStaticDtor@CultureInfo@Globalization@System@bf@@SAXXZ"() local_unnamed_addr #1 {
entry:
  %0 = load ptr, ptr @"?mDefaultCultureInfo@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %delete.end, label %delete.body

delete.body:                                      ; preds = %entry
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr inbounds ptr, ptr %1, i64 3
  %3 = load ptr, ptr %2, align 8
  tail call void %3(ptr nonnull %0) #8
  tail call void @tc_free(ptr nonnull %0) #8
  br label %delete.end

delete.end:                                       ; preds = %delete.body, %entry
  %4 = load ptr, ptr @"?sUserDefaultCulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  %.not10 = icmp eq ptr %4, null
  br i1 %.not10, label %delete.end2, label %delete.body1

delete.body1:                                     ; preds = %delete.end
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr nonnull %4) #8
  tail call void @tc_free(ptr nonnull %4) #8
  br label %delete.end2

delete.end2:                                      ; preds = %delete.body1, %delete.end
  %8 = load ptr, ptr @"?sUserDefaultUICulture@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  %.not11 = icmp eq ptr %8, null
  br i1 %.not11, label %delete.end4, label %delete.body3

delete.body3:                                     ; preds = %delete.end2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr nonnull %8) #8
  tail call void @tc_free(ptr nonnull %8) #8
  br label %delete.end4

delete.end4:                                      ; preds = %delete.body3, %delete.end2
  %12 = load ptr, ptr @"?sInvariantCultureInfo@CultureInfo@Globalization@System@bf@@2PEAV1234@A", align 8
  %.not12 = icmp eq ptr %12, null
  br i1 %.not12, label %exit, label %delete.body5

delete.body5:                                     ; preds = %delete.end4
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr nonnull %12) #8
  tail call void @tc_free(ptr nonnull %12) #8
  br label %exit

exit:                                             ; preds = %delete.end4, %delete.body5
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?~this@CultureInfo@Globalization@System@bf@@QEAAXXZ"(ptr %this) local_unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %this, i64 0, i32 6
  %1 = load ptr, ptr %0, align 8
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %delete.end, label %delete.body

delete.body:                                      ; preds = %entry
  %2 = load ptr, ptr %1, align 8
  %3 = getelementptr inbounds ptr, ptr %2, i64 3
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr nonnull %1) #8
  tail call void @tc_free(ptr nonnull %1) #8
  br label %delete.end

delete.end:                                       ; preds = %delete.body, %entry
  %5 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %this, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8
  %.not22 = icmp eq ptr %6, null
  br i1 %.not22, label %delete.end4, label %delete.body3

delete.body3:                                     ; preds = %delete.end
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr nonnull %6) #8
  tail call void @tc_free(ptr nonnull %6) #8
  br label %delete.end4

delete.end4:                                      ; preds = %delete.body3, %delete.end
  %10 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %this, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8
  %.not23 = icmp eq ptr %11, null
  br i1 %.not23, label %delete.end7, label %delete.body6

delete.body6:                                     ; preds = %delete.end4
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr nonnull %11) #8
  tail call void @tc_free(ptr nonnull %11) #8
  br label %delete.end7

delete.end7:                                      ; preds = %delete.body6, %delete.end4
  %15 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %this, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %.not24 = icmp eq ptr %16, null
  br i1 %.not24, label %delete.end10, label %delete.body9

delete.body9:                                     ; preds = %delete.end7
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr nonnull %16) #8
  tail call void @tc_free(ptr nonnull %16) #8
  br label %delete.end10

delete.end10:                                     ; preds = %delete.body9, %delete.end7
  %20 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %this, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8
  %.not25 = icmp eq ptr %21, null
  br i1 %.not25, label %delete.end13, label %delete.body12

delete.body12:                                    ; preds = %delete.end10
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds ptr, ptr %22, i64 3
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr nonnull %21) #8
  tail call void @tc_free(ptr nonnull %21) #8
  br label %delete.end13

delete.end13:                                     ; preds = %delete.body12, %delete.end10
  %25 = getelementptr inbounds %"corlib.CultureInfo@Globalization@System@bf", ptr %this, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8
  %.not26 = icmp eq ptr %26, null
  br i1 %.not26, label %delete.end16, label %delete.body15

delete.body15:                                    ; preds = %delete.end13
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr nonnull %26) #8
  tail call void @tc_free(ptr nonnull %26) #8
  br label %delete.end16

delete.end16:                                     ; preds = %delete.body15, %delete.end13
  tail call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr nonnull %this)
  ret void
}

declare void @tc_free(ptr) local_unnamed_addr

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@NumberFormatInfo@Globalization@System@bf@@QEAAXPEAVCultureData@234@@Z"(ptr, ptr) local_unnamed_addr #1

declare ptr @tc_malloc(i64) local_unnamed_addr

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@NumberFormatInfo@Globalization@System@bf@@AEAAXXZ"(ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i4$String@System@bf@@QEAAXAEATint@@@Z"(ptr, ptr dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?~this@String@System@bf@@QEAAXXZ"(ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsEmpty@String@System@bf@@QEAA_NXZ"(ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@CultureData@Globalization@System@bf@@QEAAXXZ"(ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@CultureData@Globalization@System@bf@@AEAAXXZ"(ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare ptr @"?GetCultureData@CultureData@Globalization@System@bf@@CAPEAV1234@UStringView@34@_N@Z"(ptr, i64, i1 zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr noalias sret(%"corlib.StringView@System@bf"), ptr) local_unnamed_addr #1

; Function Attrs: noreturn nounwind uwtable
declare void @"?FatalError@Runtime@System@bf@@SAXPEAVString@23@0Tint@@@Z"(ptr, ptr, i64) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
declare void @"?get__CultureName@CultureData@Globalization@System@bf@@AEAA?AUStringView@34@XZ"(ptr, ptr noalias sret(%"corlib.StringView@System@bf")) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i26$String@System@bf@@QEAAXAEATint@@UStringView@23@@Z"(ptr, ptr dereferenceable(8), ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare i64 @"?this$calcAppend@i27$String@System@bf@@SATint@@UStringView@23@@Z"(ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare ptr @"?GetType@Object@System@bf@@QEAAPEAVType@23@XZ"(ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
declare i1 @"??8StringView@System@bf@@SA_NU012@0@Z"(ptr, i64, ptr, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr, ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@StringView@System@bf@@QEAAXXZ"(ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?~this@Object@System@bf@@UEAAXXZ"(ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@DateTimeFormatInfo@Globalization@System@bf@@QEAAXPEAVCultureData@234@PEAVCalendar@234@@Z"(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@DateTimeFormatInfo@Globalization@System@bf@@AEAAXXZ"(ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare ptr @"?get__DefaultCalendar@CultureData@Globalization@System@bf@@AEAAPEAVCalendar@234@XZ"(ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?SetReadOnlyState@Calendar@Globalization@System@bf@@AEAAX_N@Z"(ptr, i1 zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@GregorianCalendar@Globalization@System@bf@@QEAAXXZ"(ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@GregorianCalendar@Globalization@System@bf@@AEAAXXZ"(ptr) local_unnamed_addr #1

; Function Attrs: noreturn nounwind uwtable
declare void @"?NotImplemented@Runtime@System@bf@@SAXPEAVString@23@Tint@@@Z"(ptr, i64) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable }
attributes #1 = { nounwind uwtable }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable }
attributes #5 = { noreturn nounwind uwtable }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

!0 = !{!1}
!1 = distinct !{!1, !2, !"?get__Name@CultureInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ: argument 0"}
!2 = distinct !{!2, !"?get__Name@CultureInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"}
