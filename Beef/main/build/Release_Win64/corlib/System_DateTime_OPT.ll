; ModuleID = 'System_DateTime'
source_filename = "System_DateTime"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.DateTime@System@bf" = type <{ %"corlib.ValueType@System@bf", i64 }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.Array@System@bf" = type <{ %"corlib.Object@System@bf", i32 }>
%"corlib.?$Array1@H@System@bf" = type <{ %"corlib.Array@System@bf", i32 }>

@"?DaysToMonth365@DateTime@System@bf@@2PEAV?$Array1@H@23@A" = local_unnamed_addr global ptr null, align 8
@"?DaysToMonth366@DateTime@System@bf@@2PEAV?$Array1@H@23@A" = local_unnamed_addr global ptr null, align 8
@"?MinValue@DateTime@System@bf@@2U123@A" = local_unnamed_addr global %"corlib.DateTime@System@bf" zeroinitializer, align 8
@"?MaxValue@DateTime@System@bf@@2U123@A" = local_unnamed_addr global %"corlib.DateTime@System@bf" zeroinitializer, align 8
@didStaticInit = internal unnamed_addr global i1 false
@"?sBfClassVData@?$Array1@H@System@bf@@2UClassVData@23@A" = external constant [4 x ptr]
@__bfStrObj30 = external constant %"corlib.String@System@bf"
@__bfStrObj417 = external constant %"corlib.String@System@bf"

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@DateTime@System@bf@@QEAAX_JW4DateTimeKind@23@@Z"(ptr nocapture writeonly %this, i64 %ticks, i8 %kind) local_unnamed_addr #0 {
entry:
  %0 = icmp ugt i64 %ticks, 3155378975999999999
  br i1 %0, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @"?FatalError@Runtime@System@bf@@SAXPEAVString@23@0Tint@@@Z"(ptr nonnull @__bfStrObj30, ptr nonnull @__bfStrObj417, i64 131) #2
  unreachable

if.end:                                           ; preds = %entry
  %spec.select = icmp ugt i8 %kind, 2
  br i1 %spec.select, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @"?FatalError@Runtime@System@bf@@SAXPEAVString@23@0Tint@@@Z"(ptr nonnull @__bfStrObj30, ptr nonnull @__bfStrObj417, i64 135) #2
  unreachable

if.end4:                                          ; preds = %if.end
  %1 = getelementptr inbounds %"corlib.DateTime@System@bf", ptr %this, i64 0, i32 1
  %2 = zext nneg i8 %kind to i64
  %3 = shl nuw i64 %2, 62
  %4 = or disjoint i64 %3, %ticks
  store i64 %4, ptr %1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfStaticDtor@DateTime@System@bf@@SAXXZ"() local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @"?DaysToMonth366@DateTime@System@bf@@2PEAV?$Array1@H@23@A", align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %delete.end, label %delete.body

delete.body:                                      ; preds = %entry
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr inbounds ptr, ptr %1, i64 3
  %3 = load ptr, ptr %2, align 8
  tail call void %3(ptr nonnull %0) #3
  tail call void @tc_free(ptr nonnull %0) #3
  br label %delete.end

delete.end:                                       ; preds = %delete.body, %entry
  %4 = load ptr, ptr @"?DaysToMonth365@DateTime@System@bf@@2PEAV?$Array1@H@23@A", align 8
  %.not4 = icmp eq ptr %4, null
  br i1 %.not4, label %exit, label %delete.body1

delete.body1:                                     ; preds = %delete.end
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr nonnull %4) #3
  tail call void @tc_free(ptr nonnull %4) #3
  br label %exit

exit:                                             ; preds = %delete.end, %delete.body1
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfStaticCtor@DateTime@System@bf@@SAXXZ"() local_unnamed_addr #0 {
entry:
  %0 = load i1, ptr @didStaticInit, align 1
  br i1 %0, label %exit, label %init1

init1:                                            ; preds = %entry
  store i1 true, ptr @didStaticInit, align 1
  %1 = tail call ptr @tc_malloc(i64 64) #3
  store ptr @"?sBfClassVData@?$Array1@H@System@bf@@2UClassVData@23@A", ptr %1, align 8
  tail call void @"?__BfCtor@?$Array1@H@System@bf@@QEAAXXZ"(ptr nonnull %1)
  %2 = getelementptr inbounds %"corlib.Array@System@bf", ptr %1, i64 0, i32 1
  store i32 13, ptr %2, align 4
  %3 = getelementptr inbounds %"corlib.?$Array1@H@System@bf", ptr %1, i64 0, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %"corlib.?$Array1@H@System@bf", ptr %1, i64 1
  store i32 31, ptr %4, align 4
  %5 = getelementptr inbounds i8, ptr %1, i64 20
  store i32 59, ptr %5, align 4
  %6 = getelementptr inbounds %"corlib.?$Array1@H@System@bf", ptr %1, i64 1, i32 0, i32 1
  store i32 90, ptr %6, align 4
  %7 = getelementptr inbounds %"corlib.?$Array1@H@System@bf", ptr %1, i64 1, i32 1
  store i32 120, ptr %7, align 4
  %8 = getelementptr inbounds %"corlib.?$Array1@H@System@bf", ptr %1, i64 2
  store i32 151, ptr %8, align 4
  %9 = getelementptr inbounds i8, ptr %1, i64 36
  store i32 181, ptr %9, align 4
  %10 = getelementptr inbounds %"corlib.?$Array1@H@System@bf", ptr %1, i64 2, i32 0, i32 1
  store i32 212, ptr %10, align 4
  %11 = getelementptr inbounds %"corlib.?$Array1@H@System@bf", ptr %1, i64 2, i32 1
  store i32 243, ptr %11, align 4
  %12 = getelementptr inbounds %"corlib.?$Array1@H@System@bf", ptr %1, i64 3
  store i32 273, ptr %12, align 4
  %13 = getelementptr inbounds i8, ptr %1, i64 52
  store i32 304, ptr %13, align 4
  %14 = getelementptr inbounds %"corlib.?$Array1@H@System@bf", ptr %1, i64 3, i32 0, i32 1
  store i32 334, ptr %14, align 4
  %15 = getelementptr inbounds %"corlib.?$Array1@H@System@bf", ptr %1, i64 3, i32 1
  store i32 365, ptr %15, align 4
  store ptr %1, ptr @"?DaysToMonth365@DateTime@System@bf@@2PEAV?$Array1@H@23@A", align 8
  %16 = tail call ptr @tc_malloc(i64 64) #3
  store ptr @"?sBfClassVData@?$Array1@H@System@bf@@2UClassVData@23@A", ptr %16, align 8
  tail call void @"?__BfCtor@?$Array1@H@System@bf@@QEAAXXZ"(ptr nonnull %16)
  %17 = getelementptr inbounds %"corlib.Array@System@bf", ptr %16, i64 0, i32 1
  store i32 13, ptr %17, align 4
  %18 = getelementptr inbounds %"corlib.?$Array1@H@System@bf", ptr %16, i64 0, i32 1
  store i32 0, ptr %18, align 4
  %19 = getelementptr inbounds %"corlib.?$Array1@H@System@bf", ptr %16, i64 1
  store i32 31, ptr %19, align 4
  %20 = getelementptr inbounds i8, ptr %16, i64 20
  store i32 60, ptr %20, align 4
  %21 = getelementptr inbounds %"corlib.?$Array1@H@System@bf", ptr %16, i64 1, i32 0, i32 1
  store i32 91, ptr %21, align 4
  %22 = getelementptr inbounds %"corlib.?$Array1@H@System@bf", ptr %16, i64 1, i32 1
  store i32 121, ptr %22, align 4
  %23 = getelementptr inbounds %"corlib.?$Array1@H@System@bf", ptr %16, i64 2
  store i32 152, ptr %23, align 4
  %24 = getelementptr inbounds i8, ptr %16, i64 36
  store i32 182, ptr %24, align 4
  %25 = getelementptr inbounds %"corlib.?$Array1@H@System@bf", ptr %16, i64 2, i32 0, i32 1
  store i32 213, ptr %25, align 4
  %26 = getelementptr inbounds %"corlib.?$Array1@H@System@bf", ptr %16, i64 2, i32 1
  store i32 244, ptr %26, align 4
  %27 = getelementptr inbounds %"corlib.?$Array1@H@System@bf", ptr %16, i64 3
  store i32 274, ptr %27, align 4
  %28 = getelementptr inbounds i8, ptr %16, i64 52
  store i32 305, ptr %28, align 4
  %29 = getelementptr inbounds %"corlib.?$Array1@H@System@bf", ptr %16, i64 3, i32 0, i32 1
  store i32 335, ptr %29, align 4
  %30 = getelementptr inbounds %"corlib.?$Array1@H@System@bf", ptr %16, i64 3, i32 1
  store i32 366, ptr %30, align 4
  store ptr %16, ptr @"?DaysToMonth366@DateTime@System@bf@@2PEAV?$Array1@H@23@A", align 8
  store i64 0, ptr @"?MinValue@DateTime@System@bf@@2U123@A", align 8
  store i64 3155378975999999999, ptr @"?MaxValue@DateTime@System@bf@@2U123@A", align 8
  br label %exit

exit:                                             ; preds = %init1, %entry
  ret void
}

declare void @tc_free(ptr) local_unnamed_addr

declare ptr @tc_malloc(i64) local_unnamed_addr

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@?$Array1@H@System@bf@@QEAAXXZ"(ptr) local_unnamed_addr #0

; Function Attrs: noreturn nounwind uwtable
declare void @"?FatalError@Runtime@System@bf@@SAXPEAVString@23@0Tint@@@Z"(ptr, ptr, i64) local_unnamed_addr #1

attributes #0 = { nounwind uwtable }
attributes #1 = { noreturn nounwind uwtable }
attributes #2 = { noreturn }
attributes #3 = { nounwind }
