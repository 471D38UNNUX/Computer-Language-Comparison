; ModuleID = 'System_Globalization_GregorianCalendar'
source_filename = "System_Globalization_GregorianCalendar"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.GregorianCalendar@Globalization@System@bf" = type <{ %"corlib.Calendar@Globalization@System@bf", i8 }>
%"corlib.Calendar@Globalization@System@bf" = type <{ %"corlib.Object@System@bf", i64, i64, i1 }>
%"corlib.Array@System@bf" = type <{ %"corlib.Object@System@bf", i32 }>
%"corlib.?$Array1@Tint@@@System@bf" = type <{ %"corlib.Array@System@bf", [4 x i8], i64 }>

@"?DaysToMonth365@GregorianCalendar@Globalization@System@bf@@2PEAV?$Array1@Tint@@@34@A" = local_unnamed_addr global ptr null, align 8
@"?DaysToMonth366@GregorianCalendar@Globalization@System@bf@@2PEAV?$Array1@Tint@@@34@A" = local_unnamed_addr global ptr null, align 8
@"?s_defaultInstance@GregorianCalendar@Globalization@System@bf@@2PEAVCalendar@234@C" = local_unnamed_addr global ptr null, align 8
@didStaticInit = internal unnamed_addr global i1 false
@"?sBfClassVData@?$Array1@Tint@@@System@bf@@2UClassVData@23@A" = external constant [4 x ptr]
@__bfStrObj30 = external constant %"corlib.String@System@bf"
@__bfStrObj416 = external constant %"corlib.String@System@bf"

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@GregorianCalendar@Globalization@System@bf@@QEAAXXZ"(ptr %this) local_unnamed_addr #0 {
entry:
  tail call void @"?__BfCtor@Calendar@Globalization@System@bf@@IEAAXXZ"(ptr %this)
  tail call void @"?EndContractBlock@Contract@Contracts@Diagnostics@System@bf@@SAXXZ"()
  %0 = getelementptr inbounds %"corlib.GregorianCalendar@Globalization@System@bf", ptr %this, i64 0, i32 1
  store i8 1, ptr %0, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@GregorianCalendar@Globalization@System@bf@@QEAAXW4GregorianCalendarTypes@234@@Z"(ptr %this, i8 %type) local_unnamed_addr #0 {
entry:
  tail call void @"?__BfCtor@Calendar@Globalization@System@bf@@IEAAXXZ"(ptr %this)
  %0 = add i8 %type, -13
  %1 = icmp ult i8 %0, -12
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @"?FatalError@Runtime@System@bf@@SAXPEAVString@23@0Tint@@@Z"(ptr nonnull @__bfStrObj30, ptr nonnull @__bfStrObj416, i64 139) #4
  unreachable

if.end:                                           ; preds = %entry
  tail call void @"?EndContractBlock@Contract@Contracts@Diagnostics@System@bf@@SAXXZ"()
  %2 = getelementptr inbounds %"corlib.GregorianCalendar@Globalization@System@bf", ptr %this, i64 0, i32 1
  store i8 %type, ptr %2, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @"?__BfCtorClear@GregorianCalendar@Globalization@System@bf@@AEAAXXZ"(ptr nocapture writeonly %this) local_unnamed_addr #1 {
entry:
  %0 = getelementptr inbounds i8, ptr %this, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %0, i8 0, i64 18, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfStaticDtor@GregorianCalendar@Globalization@System@bf@@SAXXZ"() local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @"?s_defaultInstance@GregorianCalendar@Globalization@System@bf@@2PEAVCalendar@234@C", align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %delete.end, label %delete.body

delete.body:                                      ; preds = %entry
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr inbounds ptr, ptr %1, i64 3
  %3 = load ptr, ptr %2, align 8
  tail call void %3(ptr nonnull %0) #5
  tail call void @tc_free(ptr nonnull %0) #5
  br label %delete.end

delete.end:                                       ; preds = %delete.body, %entry
  %4 = load ptr, ptr @"?DaysToMonth366@GregorianCalendar@Globalization@System@bf@@2PEAV?$Array1@Tint@@@34@A", align 8
  %.not7 = icmp eq ptr %4, null
  br i1 %.not7, label %delete.end2, label %delete.body1

delete.body1:                                     ; preds = %delete.end
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr nonnull %4) #5
  tail call void @tc_free(ptr nonnull %4) #5
  br label %delete.end2

delete.end2:                                      ; preds = %delete.body1, %delete.end
  %8 = load ptr, ptr @"?DaysToMonth365@GregorianCalendar@Globalization@System@bf@@2PEAV?$Array1@Tint@@@34@A", align 8
  %.not8 = icmp eq ptr %8, null
  br i1 %.not8, label %exit, label %delete.body3

delete.body3:                                     ; preds = %delete.end2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr nonnull %8) #5
  tail call void @tc_free(ptr nonnull %8) #5
  br label %exit

exit:                                             ; preds = %delete.end2, %delete.body3
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfStaticCtor@GregorianCalendar@Globalization@System@bf@@SAXXZ"() local_unnamed_addr #0 {
entry:
  %0 = load i1, ptr @didStaticInit, align 1
  br i1 %0, label %exit, label %init1

init1:                                            ; preds = %entry
  store i1 true, ptr @didStaticInit, align 1
  %1 = tail call ptr @tc_malloc(i64 120) #5
  store ptr @"?sBfClassVData@?$Array1@Tint@@@System@bf@@2UClassVData@23@A", ptr %1, align 8
  tail call void @"?__BfCtor@?$Array1@Tint@@@System@bf@@QEAAXXZ"(ptr nonnull %1)
  %2 = getelementptr inbounds %"corlib.Array@System@bf", ptr %1, i64 0, i32 1
  store i32 13, ptr %2, align 4
  %3 = getelementptr inbounds %"corlib.?$Array1@Tint@@@System@bf", ptr %1, i64 0, i32 2
  store i64 0, ptr %3, align 8
  %4 = getelementptr inbounds %"corlib.?$Array1@Tint@@@System@bf", ptr %1, i64 1
  store i64 31, ptr %4, align 8
  %5 = getelementptr inbounds %"corlib.?$Array1@Tint@@@System@bf", ptr %1, i64 1, i32 0, i32 1
  store i64 59, ptr %5, align 8
  %6 = getelementptr inbounds %"corlib.?$Array1@Tint@@@System@bf", ptr %1, i64 1, i32 2
  store i64 90, ptr %6, align 8
  %7 = getelementptr inbounds %"corlib.?$Array1@Tint@@@System@bf", ptr %1, i64 2
  store i64 120, ptr %7, align 8
  %8 = getelementptr inbounds %"corlib.?$Array1@Tint@@@System@bf", ptr %1, i64 2, i32 0, i32 1
  store i64 151, ptr %8, align 8
  %9 = getelementptr inbounds %"corlib.?$Array1@Tint@@@System@bf", ptr %1, i64 2, i32 2
  store i64 181, ptr %9, align 8
  %10 = getelementptr inbounds %"corlib.?$Array1@Tint@@@System@bf", ptr %1, i64 3
  store i64 212, ptr %10, align 8
  %11 = getelementptr inbounds %"corlib.?$Array1@Tint@@@System@bf", ptr %1, i64 3, i32 0, i32 1
  store i64 243, ptr %11, align 8
  %12 = getelementptr inbounds %"corlib.?$Array1@Tint@@@System@bf", ptr %1, i64 3, i32 2
  store i64 273, ptr %12, align 8
  %13 = getelementptr inbounds %"corlib.?$Array1@Tint@@@System@bf", ptr %1, i64 4
  store i64 304, ptr %13, align 8
  %14 = getelementptr inbounds %"corlib.?$Array1@Tint@@@System@bf", ptr %1, i64 4, i32 0, i32 1
  store i64 334, ptr %14, align 8
  %15 = getelementptr inbounds %"corlib.?$Array1@Tint@@@System@bf", ptr %1, i64 4, i32 2
  store i64 365, ptr %15, align 8
  store ptr %1, ptr @"?DaysToMonth365@GregorianCalendar@Globalization@System@bf@@2PEAV?$Array1@Tint@@@34@A", align 8
  %16 = tail call ptr @tc_malloc(i64 120) #5
  store ptr @"?sBfClassVData@?$Array1@Tint@@@System@bf@@2UClassVData@23@A", ptr %16, align 8
  tail call void @"?__BfCtor@?$Array1@Tint@@@System@bf@@QEAAXXZ"(ptr nonnull %16)
  %17 = getelementptr inbounds %"corlib.Array@System@bf", ptr %16, i64 0, i32 1
  store i32 13, ptr %17, align 4
  %18 = getelementptr inbounds %"corlib.?$Array1@Tint@@@System@bf", ptr %16, i64 0, i32 2
  store i64 0, ptr %18, align 8
  %19 = getelementptr inbounds %"corlib.?$Array1@Tint@@@System@bf", ptr %16, i64 1
  store i64 31, ptr %19, align 8
  %20 = getelementptr inbounds %"corlib.?$Array1@Tint@@@System@bf", ptr %16, i64 1, i32 0, i32 1
  store i64 60, ptr %20, align 8
  %21 = getelementptr inbounds %"corlib.?$Array1@Tint@@@System@bf", ptr %16, i64 1, i32 2
  store i64 91, ptr %21, align 8
  %22 = getelementptr inbounds %"corlib.?$Array1@Tint@@@System@bf", ptr %16, i64 2
  store i64 121, ptr %22, align 8
  %23 = getelementptr inbounds %"corlib.?$Array1@Tint@@@System@bf", ptr %16, i64 2, i32 0, i32 1
  store i64 152, ptr %23, align 8
  %24 = getelementptr inbounds %"corlib.?$Array1@Tint@@@System@bf", ptr %16, i64 2, i32 2
  store i64 182, ptr %24, align 8
  %25 = getelementptr inbounds %"corlib.?$Array1@Tint@@@System@bf", ptr %16, i64 3
  store i64 213, ptr %25, align 8
  %26 = getelementptr inbounds %"corlib.?$Array1@Tint@@@System@bf", ptr %16, i64 3, i32 0, i32 1
  store i64 244, ptr %26, align 8
  %27 = getelementptr inbounds %"corlib.?$Array1@Tint@@@System@bf", ptr %16, i64 3, i32 2
  store i64 274, ptr %27, align 8
  %28 = getelementptr inbounds %"corlib.?$Array1@Tint@@@System@bf", ptr %16, i64 4
  store i64 305, ptr %28, align 8
  %29 = getelementptr inbounds %"corlib.?$Array1@Tint@@@System@bf", ptr %16, i64 4, i32 0, i32 1
  store i64 335, ptr %29, align 8
  %30 = getelementptr inbounds %"corlib.?$Array1@Tint@@@System@bf", ptr %16, i64 4, i32 2
  store i64 366, ptr %30, align 8
  store ptr %16, ptr @"?DaysToMonth366@GregorianCalendar@Globalization@System@bf@@2PEAV?$Array1@Tint@@@34@A", align 8
  br label %exit

exit:                                             ; preds = %init1, %entry
  ret void
}

declare void @tc_free(ptr) local_unnamed_addr

declare ptr @tc_malloc(i64) local_unnamed_addr

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@?$Array1@Tint@@@System@bf@@QEAAXXZ"(ptr) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@Calendar@Globalization@System@bf@@IEAAXXZ"(ptr) local_unnamed_addr #0

; Function Attrs: noreturn nounwind uwtable
declare void @"?FatalError@Runtime@System@bf@@SAXPEAVString@23@0Tint@@@Z"(ptr, ptr, i64) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
declare void @"?EndContractBlock@Contract@Contracts@Diagnostics@System@bf@@SAXXZ"() local_unnamed_addr #0

attributes #0 = { nounwind uwtable }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { noreturn nounwind uwtable }
attributes #4 = { noreturn }
attributes #5 = { nounwind }
