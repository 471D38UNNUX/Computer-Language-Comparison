; ModuleID = 'System_NumberFormatter_CustomInfo'
source_filename = "System_NumberFormatter_CustomInfo"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$__TUPLE_c_length@_UC@bf" = type <{ %"corlib.Tuple@System@bf", i32, i8 }>
%"corlib.Tuple@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.CustomInfo@NumberFormatter@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i1, i1, i1 }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.?$Span@H@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.StringView@System@bf" = type <{ %"corlib.?$Span@D@System@bf" }>
%"corlib.?$Span@D@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @"?GetActiveSection@CustomInfo@NumberFormatter@System@bf@@SAXUStringView@34@AEA_N_NAEAH3@Z"(ptr nocapture readonly %format_mPtr, i64 %format_mLength, ptr nocapture dereferenceable(1) %positive, i1 zeroext %zero, ptr nocapture writeonly dereferenceable(4) %offset, ptr nocapture writeonly dereferenceable(4) %length) local_unnamed_addr #0 {
entry:
  %lens = alloca [3 x i32], align 4
  store i32 0, ptr %lens, align 4
  %.fca.1.gep = getelementptr inbounds [3 x i32], ptr %lens, i64 0, i64 1
  store i32 0, ptr %.fca.1.gep, align 4
  %.fca.2.gep = getelementptr inbounds [3 x i32], ptr %lens, i64 0, i64 2
  store i32 0, ptr %.fca.2.gep, align 4
  %invariant.gep = getelementptr i8, ptr %format_mPtr, i64 -1
  %0 = icmp sgt i64 %format_mLength, 0
  br i1 %0, label %for.body, label %if.then16

for.body:                                         ; preds = %entry, %for.inc
  %1 = phi i64 [ %17, %for.inc ], [ 0, %entry ]
  %index.0107 = phi i32 [ %index.1, %for.inc ], [ 0, %entry ]
  %i.0106 = phi i32 [ %16, %for.inc ], [ 0, %entry ]
  %quoted.0105 = phi i1 [ %quoted.1, %for.inc ], [ false, %entry ]
  %lastPos.0104 = phi i32 [ %lastPos.1, %for.inc ], [ 0, %entry ]
  %2 = getelementptr inbounds i8, ptr %format_mPtr, i64 %1
  %3 = load i8, ptr %2, align 1
  switch i8 %3, label %if.end5 [
    i8 39, label %if.then
    i8 34, label %if.then
  ]

if.then:                                          ; preds = %for.body, %for.body
  %4 = icmp eq i32 %i.0106, 0
  br i1 %4, label %if.then4, label %lor.rhs1

lor.rhs1:                                         ; preds = %if.then
  %gep = getelementptr i8, ptr %invariant.gep, i64 %1
  %5 = load i8, ptr %gep, align 1
  %.not89 = icmp eq i8 %5, 92
  br i1 %.not89, label %for.inc, label %if.then4

if.then4:                                         ; preds = %if.then, %lor.rhs1
  %6 = xor i1 %quoted.0105, true
  br label %for.inc

if.end5:                                          ; preds = %for.body
  %7 = icmp ne i8 %3, 59
  %.not88 = select i1 %7, i1 true, i1 %quoted.0105
  br i1 %.not88, label %for.inc, label %land.rhs6

land.rhs6:                                        ; preds = %if.end5
  %8 = icmp eq i32 %i.0106, 0
  br i1 %8, label %if.then11, label %lor.rhs7

lor.rhs7:                                         ; preds = %land.rhs6
  %gep103 = getelementptr i8, ptr %invariant.gep, i64 %1
  %9 = load i8, ptr %gep103, align 1
  %.not = icmp eq i8 %9, 92
  br i1 %.not, label %for.inc, label %if.then11

if.then11:                                        ; preds = %land.rhs6, %lor.rhs7
  %10 = add i32 %index.0107, 1
  %11 = sext i32 %index.0107 to i64
  %12 = getelementptr inbounds [3 x i32], ptr %lens, i64 0, i64 %11
  %13 = sub i32 %i.0106, %lastPos.0104
  store i32 %13, ptr %12, align 4
  %14 = add i32 %i.0106, 1
  %15 = icmp eq i32 %10, 3
  br i1 %15, label %if.end28.thread, label %for.inc

for.inc:                                          ; preds = %lor.rhs7, %if.then11, %if.end5, %lor.rhs1, %if.then4
  %lastPos.1 = phi i32 [ %lastPos.0104, %if.then4 ], [ %lastPos.0104, %lor.rhs1 ], [ %14, %if.then11 ], [ %lastPos.0104, %lor.rhs7 ], [ %lastPos.0104, %if.end5 ]
  %quoted.1 = phi i1 [ %6, %if.then4 ], [ %quoted.0105, %lor.rhs1 ], [ false, %if.then11 ], [ false, %lor.rhs7 ], [ %quoted.0105, %if.end5 ]
  %index.1 = phi i32 [ %index.0107, %if.then4 ], [ %index.0107, %lor.rhs1 ], [ %10, %if.then11 ], [ %index.0107, %lor.rhs7 ], [ %index.0107, %if.end5 ]
  %16 = add i32 %i.0106, 1
  %17 = sext i32 %16 to i64
  %18 = icmp slt i64 %17, %format_mLength
  br i1 %18, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc
  %19 = sext i32 %lastPos.1 to i64
  switch i32 %index.1, label %if.end28 [
    i32 0, label %if.then16
    i32 1, label %if.then19
  ]

if.then16:                                        ; preds = %entry, %for.end
  store i32 0, ptr %offset, align 4
  %20 = trunc i64 %format_mLength to i32
  br label %exit

if.then19:                                        ; preds = %for.end
  %21 = load i1, ptr %positive, align 1
  %spec.select = select i1 %21, i1 true, i1 %zero
  br i1 %spec.select, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then19
  store i32 0, ptr %offset, align 4
  %22 = load i32, ptr %lens, align 4
  br label %exit

if.end23:                                         ; preds = %if.then19
  %23 = load i32, ptr %lens, align 4
  %24 = add i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = icmp slt i64 %25, %format_mLength
  br i1 %26, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end23
  store i1 true, ptr %positive, align 1
  store i32 %24, ptr %offset, align 4
  %27 = trunc i64 %format_mLength to i32
  %28 = sub i32 %27, %24
  br label %exit

if.else:                                          ; preds = %if.end23
  store i32 0, ptr %offset, align 4
  br label %exit

if.end28:                                         ; preds = %for.end
  br i1 %zero, label %if.then29, label %if.end40

if.end28.thread:                                  ; preds = %if.then11
  br i1 %zero, label %if.end36, label %if.end40

if.then29:                                        ; preds = %if.end28
  %29 = icmp eq i32 %index.1, 2
  br i1 %29, label %if.then30, label %if.end36

if.then30:                                        ; preds = %if.then29
  %30 = icmp eq i64 %19, %format_mLength
  br i1 %30, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.then30
  store i32 0, ptr %offset, align 4
  %31 = load i32, ptr %lens, align 4
  br label %exit

if.else33:                                        ; preds = %if.then30
  %32 = load i32, ptr %lens, align 4
  %33 = load i32, ptr %.fca.1.gep, align 4
  %34 = add i32 %32, 2
  %35 = add i32 %34, %33
  store i32 %35, ptr %offset, align 4
  %36 = trunc i64 %format_mLength to i32
  %37 = sub i32 %36, %35
  br label %exit

if.end36:                                         ; preds = %if.end28.thread, %if.then29
  %38 = load i32, ptr %.fca.2.gep, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %if.then37, label %if.else38

if.then37:                                        ; preds = %if.end36
  store i32 0, ptr %offset, align 4
  %40 = load i32, ptr %lens, align 4
  br label %exit

if.else38:                                        ; preds = %if.end36
  %41 = load i32, ptr %lens, align 4
  %42 = load i32, ptr %.fca.1.gep, align 4
  %43 = add i32 %41, 2
  %44 = add i32 %43, %42
  store i32 %44, ptr %offset, align 4
  br label %exit

if.end40:                                         ; preds = %if.end28.thread, %if.end28
  %45 = load i1, ptr %positive, align 1
  br i1 %45, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end40
  store i32 0, ptr %offset, align 4
  %46 = load i32, ptr %lens, align 4
  br label %exit

if.end42:                                         ; preds = %if.end40
  %47 = load i32, ptr %.fca.1.gep, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end42
  store i1 true, ptr %positive, align 1
  %49 = load i32, ptr %lens, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %offset, align 4
  br label %exit

if.end44:                                         ; preds = %if.end42
  store i32 0, ptr %offset, align 4
  %51 = load i32, ptr %lens, align 4
  br label %exit

exit:                                             ; preds = %if.then37, %if.else38, %if.then32, %if.else33, %if.end44, %if.then43, %if.then41, %if.else, %if.then25, %if.then22, %if.then16
  %.sink = phi i32 [ %40, %if.then37 ], [ %38, %if.else38 ], [ %31, %if.then32 ], [ %37, %if.else33 ], [ %51, %if.end44 ], [ %47, %if.then43 ], [ %46, %if.then41 ], [ %23, %if.else ], [ %28, %if.then25 ], [ %22, %if.then22 ], [ %20, %if.then16 ]
  store i32 %.sink, ptr %length, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Parse@CustomInfo@NumberFormatter@System@bf@@SAXPEAV1234@UStringView@34@HHPEAVNumberFormatInfo@Globalization@34@@Z"(ptr nocapture %info, ptr %format_mPtr, i64 %format_mLength, i32 %offset, i32 %length, ptr nocapture readnone %nfi) local_unnamed_addr #1 {
entry:
  %0 = alloca %"corlib.?$__TUPLE_c_length@_UC@bf", align 4
  %1 = sext i32 %offset to i64
  %2 = sext i32 %length to i64
  %3 = icmp sgt i32 %length, 0
  br i1 %3, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %4 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i64 0, i32 10
  %5 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i64 0, i32 2
  %6 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i64 0, i32 13
  %7 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i64 0, i32 14
  %8 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i64 0, i32 4
  %.fca.1.gep = getelementptr inbounds %"corlib.?$__TUPLE_c_length@_UC@bf", ptr %0, i64 0, i32 1
  %.fca.2.gep = getelementptr inbounds %"corlib.?$__TUPLE_c_length@_UC@bf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i64 0, i32 11
  %10 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i64 0, i32 8
  %11 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i64 0, i32 3
  %12 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i64 0, i32 5
  %13 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i64 0, i32 6
  %14 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i64 0, i32 7
  %15 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i64 0, i32 1
  %16 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i64 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %literal.0134 = phi i8 [ 0, %for.body.lr.ph ], [ %literal.1, %for.inc ]
  %integerArea.0132 = phi i1 [ true, %for.body.lr.ph ], [ %integerArea.1, %for.inc ]
  %i.0130 = phi i64 [ %1, %for.body.lr.ph ], [ %66, %for.inc ]
  %groupSeparatorCounter.0128 = phi i32 [ 0, %for.body.lr.ph ], [ %groupSeparatorCounter.1, %for.inc ]
  %sharpContinues.0127 = phi i1 [ true, %for.body.lr.ph ], [ %sharpContinues.2, %for.inc ]
  %exponentArea.0126 = phi i1 [ false, %for.body.lr.ph ], [ %exponentArea.1, %for.inc ]
  %decimalArea.0124 = phi i1 [ false, %for.body.lr.ph ], [ %decimalArea.1, %for.inc ]
  %17 = getelementptr inbounds i8, ptr %format_mPtr, i64 %i.0130
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, %literal.0134
  %20 = icmp ne i8 %18, 0
  %21 = and i1 %19, %20
  br i1 %21, label %for.inc, label %if.end

if.end:                                           ; preds = %for.body
  %.not = icmp eq i8 %literal.0134, 0
  br i1 %.not, label %if.end2, label %for.inc

if.end2:                                          ; preds = %if.end
  br i1 %exponentArea.0126, label %land.rhs3, label %if.end10

land.rhs3:                                        ; preds = %if.end2
  switch i8 %18, label %if.then9 [
    i8 35, label %switch.3
    i8 0, label %for.inc
    i8 48, label %if.then23
  ]

if.then9:                                         ; preds = %land.rhs3
  %22 = load i32, ptr %5, align 4
  %23 = icmp slt i32 %22, 0
  %24 = xor i1 %23, true
  %25 = add i64 %i.0130, -1
  br label %for.inc

if.end10:                                         ; preds = %if.end2
  switch i8 %18, label %default [
    i8 92, label %switch.0
    i8 39, label %for.inc
    i8 34, label %if.then12
    i8 35, label %switch.3
    i8 44, label %switch.9
    i8 101, label %for.inc
    i8 69, label %switch.6
    i8 46, label %switch.7
    i8 37, label %switch.8
    i8 48, label %if.then23.thread
  ]

switch.0:                                         ; preds = %if.end10
  %26 = add i64 %i.0130, 1
  br label %for.inc

if.then12:                                        ; preds = %if.end10
  br label %for.inc

switch.3:                                         ; preds = %land.rhs3, %if.end10
  %spec.select = select i1 %sharpContinues.0127, i1 %integerArea.0132, i1 false
  br i1 %spec.select, label %if.then16, label %if.else

if.then16:                                        ; preds = %switch.3
  %27 = load i32, ptr %12, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %12, align 4
  br label %if.end30

if.else:                                          ; preds = %switch.3
  br i1 %decimalArea.0124, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.else
  %29 = load i32, ptr %11, align 4
  %30 = add i32 %29, 1
  store i32 %30, ptr %11, align 4
  br label %if.end30

if.else18:                                        ; preds = %if.else
  br i1 %exponentArea.0126, label %if.then19, label %if.end30

if.then19:                                        ; preds = %if.else18
  %31 = load i32, ptr %10, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %10, align 4
  br label %if.end30

if.then23:                                        ; preds = %land.rhs3
  br i1 %decimalArea.0124, label %if.then25, label %if.then27

if.then23.thread:                                 ; preds = %if.end10
  br i1 %decimalArea.0124, label %if.then25, label %if.end30

if.then25:                                        ; preds = %if.then23.thread, %if.then23
  store i32 0, ptr %11, align 4
  br label %if.end30

if.then27:                                        ; preds = %if.then23
  store i32 0, ptr %10, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then23.thread, %if.then17, %if.then19, %if.else18, %if.then16, %if.then25, %if.then27
  %sharpContinues.1 = phi i1 [ false, %if.then25 ], [ false, %if.then27 ], [ true, %if.then16 ], [ %sharpContinues.0127, %if.else18 ], [ %sharpContinues.0127, %if.then19 ], [ %sharpContinues.0127, %if.then17 ], [ false, %if.then23.thread ]
  %33 = load i32, ptr %13, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end30
  %35 = trunc i64 %i.0130 to i32
  store i32 %35, ptr %13, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end30
  br i1 %integerArea.0132, label %if.then33, label %if.else37

if.then33:                                        ; preds = %if.end32
  %36 = load i32, ptr %8, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %8, align 4
  %38 = icmp sgt i32 %groupSeparatorCounter.0128, 0
  br i1 %38, label %if.then35, label %for.inc

if.then35:                                        ; preds = %if.then33
  store i1 true, ptr %16, align 1
  br label %for.inc

if.else37:                                        ; preds = %if.end32
  br i1 %decimalArea.0124, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.else37
  %39 = load i32, ptr %15, align 4
  %40 = add i32 %39, 1
  store i32 %40, ptr %15, align 4
  br label %for.inc

if.else39:                                        ; preds = %if.else37
  br i1 %exponentArea.0126, label %if.then40, label %for.inc

if.then40:                                        ; preds = %if.else39
  %41 = load i32, ptr %14, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %14, align 4
  br label %for.inc

switch.6:                                         ; preds = %if.end10
  %43 = load i1, ptr %6, align 1
  br i1 %43, label %for.inc, label %if.end45

if.end45:                                         ; preds = %switch.6
  store i1 true, ptr %6, align 1
  %44 = add i64 %i.0130, 1
  %45 = sub i64 %44, %1
  %46 = icmp slt i64 %45, %2
  br i1 %46, label %if.then47, label %for.inc

if.then47:                                        ; preds = %if.end45
  %47 = getelementptr inbounds i8, ptr %format_mPtr, i64 %44
  %48 = load i8, ptr %47, align 1
  switch i8 %48, label %if.then58 [
    i8 43, label %if.then50
    i8 45, label %for.inc
    i8 48, label %for.inc.fold.split
    i8 35, label %for.inc.fold.split
  ]

if.then50:                                        ; preds = %if.then47
  store i1 false, ptr %7, align 1
  br label %for.inc

if.then58:                                        ; preds = %if.then47
  store i1 false, ptr %6, align 1
  %49 = load i32, ptr %5, align 4
  %50 = icmp slt i32 %49, 0
  br label %for.inc

switch.7:                                         ; preds = %if.end10
  %51 = load i32, ptr %5, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %if.then66, label %for.inc

if.then66:                                        ; preds = %switch.7
  %53 = trunc i64 %i.0130 to i32
  store i32 %53, ptr %5, align 4
  br label %for.inc

switch.8:                                         ; preds = %if.end10
  %54 = load i32, ptr %4, align 4
  %55 = add i32 %54, 1
  store i32 %55, ptr %4, align 4
  br label %for.inc

switch.9:                                         ; preds = %if.end10
  br i1 %integerArea.0132, label %land.rhs68, label %for.inc

land.rhs68:                                       ; preds = %switch.9
  %56 = load i32, ptr %8, align 4
  %57 = icmp sgt i32 %56, 0
  %58 = zext i1 %57 to i32
  %spec.select123 = add i32 %groupSeparatorCounter.0128, %58
  br label %for.inc

default:                                          ; preds = %if.end10
  %59 = icmp slt i8 %18, 0
  br i1 %59, label %if.then72, label %for.inc

if.then72:                                        ; preds = %default
  call void @"?GetChar32__im@StringView@System@bf@@QEAA?AU?$__TUPLE_c_length@_UC@3@Tint@@@Z"(ptr nonnull sret(%"corlib.?$__TUPLE_c_length@_UC@bf") %0, ptr nonnull %format_mPtr, i64 %format_mLength, i64 %i.0130)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %60 = icmp eq i32 %.fca.1.load, 8240
  br i1 %60, label %if.then74, label %for.inc

if.then74:                                        ; preds = %if.then72
  %.fca.2.load = load i8, ptr %.fca.2.gep, align 4
  %61 = load i32, ptr %9, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %9, align 4
  %63 = sext i8 %.fca.2.load to i64
  %64 = add i64 %i.0130, -1
  %65 = add i64 %64, %63
  br label %for.inc

for.inc.fold.split:                               ; preds = %if.then47, %if.then47
  br label %for.inc

for.inc:                                          ; preds = %land.rhs3, %if.then50, %land.rhs68, %if.then58, %if.then47, %for.inc.fold.split, %if.then33, %if.then35, %if.end10, %if.end10, %for.body, %switch.8, %if.then74, %if.then38, %if.then40, %if.else39, %switch.6, %if.end45, %if.then66, %switch.7, %switch.9, %if.then72, %default, %if.then12, %if.end, %switch.0, %if.then9
  %decimalArea.1 = phi i1 [ %decimalArea.0124, %if.end ], [ %24, %if.then9 ], [ %decimalArea.0124, %if.then74 ], [ %decimalArea.0124, %if.then72 ], [ %decimalArea.0124, %default ], [ %decimalArea.0124, %switch.9 ], [ %decimalArea.0124, %switch.8 ], [ true, %if.then66 ], [ true, %switch.7 ], [ %decimalArea.0124, %switch.6 ], [ false, %if.end45 ], [ true, %if.then38 ], [ false, %if.then40 ], [ false, %if.else39 ], [ %decimalArea.0124, %if.then12 ], [ %decimalArea.0124, %if.end10 ], [ %decimalArea.0124, %if.end10 ], [ %decimalArea.0124, %switch.0 ], [ %decimalArea.0124, %for.body ], [ %decimalArea.0124, %if.then35 ], [ %decimalArea.0124, %if.then33 ], [ false, %if.then50 ], [ false, %if.then58 ], [ %decimalArea.0124, %land.rhs68 ], [ false, %if.then47 ], [ false, %for.inc.fold.split ], [ %decimalArea.0124, %land.rhs3 ]
  %exponentArea.1 = phi i1 [ %exponentArea.0126, %if.end ], [ false, %if.then9 ], [ false, %if.then74 ], [ false, %if.then72 ], [ false, %default ], [ false, %switch.9 ], [ false, %switch.8 ], [ false, %if.then66 ], [ false, %switch.7 ], [ false, %switch.6 ], [ true, %if.end45 ], [ %exponentArea.0126, %if.then38 ], [ true, %if.then40 ], [ false, %if.else39 ], [ false, %if.then12 ], [ false, %if.end10 ], [ false, %if.end10 ], [ false, %switch.0 ], [ %exponentArea.0126, %for.body ], [ %exponentArea.0126, %if.then35 ], [ %exponentArea.0126, %if.then33 ], [ true, %if.then50 ], [ true, %if.then58 ], [ false, %land.rhs68 ], [ true, %if.then47 ], [ true, %for.inc.fold.split ], [ true, %land.rhs3 ]
  %sharpContinues.2 = phi i1 [ %sharpContinues.0127, %if.end ], [ %sharpContinues.0127, %if.then9 ], [ %sharpContinues.0127, %if.then74 ], [ %sharpContinues.0127, %if.then72 ], [ %sharpContinues.0127, %default ], [ %sharpContinues.0127, %switch.9 ], [ %sharpContinues.0127, %switch.8 ], [ %sharpContinues.0127, %if.then66 ], [ %sharpContinues.0127, %switch.7 ], [ %sharpContinues.0127, %switch.6 ], [ %sharpContinues.0127, %if.end45 ], [ %sharpContinues.1, %if.then38 ], [ %sharpContinues.1, %if.then40 ], [ %sharpContinues.1, %if.else39 ], [ %sharpContinues.0127, %if.then12 ], [ %sharpContinues.0127, %if.end10 ], [ %sharpContinues.0127, %if.end10 ], [ %sharpContinues.0127, %switch.0 ], [ %sharpContinues.0127, %for.body ], [ %sharpContinues.1, %if.then35 ], [ %sharpContinues.1, %if.then33 ], [ %sharpContinues.0127, %if.then50 ], [ %sharpContinues.0127, %if.then58 ], [ %sharpContinues.0127, %land.rhs68 ], [ %sharpContinues.0127, %if.then47 ], [ %sharpContinues.0127, %for.inc.fold.split ], [ %sharpContinues.0127, %land.rhs3 ]
  %groupSeparatorCounter.1 = phi i32 [ %groupSeparatorCounter.0128, %if.end ], [ %groupSeparatorCounter.0128, %if.then9 ], [ %groupSeparatorCounter.0128, %if.then74 ], [ %groupSeparatorCounter.0128, %if.then72 ], [ %groupSeparatorCounter.0128, %default ], [ %groupSeparatorCounter.0128, %switch.9 ], [ %groupSeparatorCounter.0128, %switch.8 ], [ %groupSeparatorCounter.0128, %if.then66 ], [ %groupSeparatorCounter.0128, %switch.7 ], [ %groupSeparatorCounter.0128, %switch.6 ], [ %groupSeparatorCounter.0128, %if.end45 ], [ %groupSeparatorCounter.0128, %if.then38 ], [ %groupSeparatorCounter.0128, %if.then40 ], [ %groupSeparatorCounter.0128, %if.else39 ], [ %groupSeparatorCounter.0128, %if.then12 ], [ %groupSeparatorCounter.0128, %if.end10 ], [ %groupSeparatorCounter.0128, %if.end10 ], [ %groupSeparatorCounter.0128, %switch.0 ], [ %groupSeparatorCounter.0128, %for.body ], [ 0, %if.then35 ], [ 0, %if.then33 ], [ %groupSeparatorCounter.0128, %if.then50 ], [ %groupSeparatorCounter.0128, %if.then58 ], [ %spec.select123, %land.rhs68 ], [ %groupSeparatorCounter.0128, %if.then47 ], [ %groupSeparatorCounter.0128, %for.inc.fold.split ], [ %groupSeparatorCounter.0128, %land.rhs3 ]
  %i.1 = phi i64 [ %i.0130, %if.end ], [ %25, %if.then9 ], [ %65, %if.then74 ], [ %i.0130, %if.then72 ], [ %i.0130, %default ], [ %i.0130, %switch.9 ], [ %i.0130, %switch.8 ], [ %i.0130, %if.then66 ], [ %i.0130, %switch.7 ], [ %i.0130, %switch.6 ], [ %i.0130, %if.end45 ], [ %i.0130, %if.then38 ], [ %i.0130, %if.then40 ], [ %i.0130, %if.else39 ], [ %i.0130, %if.then12 ], [ %i.0130, %if.end10 ], [ %i.0130, %if.end10 ], [ %26, %switch.0 ], [ %i.0130, %for.body ], [ %i.0130, %if.then35 ], [ %i.0130, %if.then33 ], [ %44, %if.then50 ], [ %i.0130, %if.then58 ], [ %i.0130, %land.rhs68 ], [ %44, %if.then47 ], [ %i.0130, %for.inc.fold.split ], [ %i.0130, %land.rhs3 ]
  %integerArea.1 = phi i1 [ %integerArea.0132, %if.end ], [ %23, %if.then9 ], [ %integerArea.0132, %if.then74 ], [ %integerArea.0132, %if.then72 ], [ %integerArea.0132, %default ], [ false, %switch.9 ], [ %integerArea.0132, %switch.8 ], [ false, %if.then66 ], [ false, %switch.7 ], [ %integerArea.0132, %switch.6 ], [ false, %if.end45 ], [ false, %if.then38 ], [ false, %if.then40 ], [ false, %if.else39 ], [ %integerArea.0132, %if.then12 ], [ %integerArea.0132, %if.end10 ], [ %integerArea.0132, %if.end10 ], [ %integerArea.0132, %switch.0 ], [ %integerArea.0132, %for.body ], [ true, %if.then35 ], [ true, %if.then33 ], [ false, %if.then50 ], [ %50, %if.then58 ], [ true, %land.rhs68 ], [ false, %if.then47 ], [ false, %for.inc.fold.split ], [ %integerArea.0132, %land.rhs3 ]
  %literal.1 = phi i8 [ %literal.0134, %if.end ], [ 0, %if.then9 ], [ 0, %if.then74 ], [ 0, %if.then72 ], [ 0, %default ], [ 0, %switch.9 ], [ 0, %switch.8 ], [ 0, %if.then66 ], [ 0, %switch.7 ], [ 0, %switch.6 ], [ 0, %if.end45 ], [ 0, %if.then38 ], [ 0, %if.then40 ], [ 0, %if.else39 ], [ 34, %if.then12 ], [ 0, %if.end10 ], [ 0, %if.end10 ], [ 0, %switch.0 ], [ 0, %for.body ], [ 0, %if.then35 ], [ 0, %if.then33 ], [ 0, %if.then50 ], [ 0, %if.then58 ], [ 0, %land.rhs68 ], [ 0, %if.then47 ], [ 0, %for.inc.fold.split ], [ 0, %land.rhs3 ]
  %66 = add i64 %i.1, 1
  %67 = sub i64 %66, %1
  %68 = icmp slt i64 %67, %2
  br i1 %68, label %for.body, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %for.inc
  %69 = mul i32 %groupSeparatorCounter.1, 3
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry
  %groupSeparatorCounter.0.lcssa = phi i32 [ 0, %entry ], [ %69, %for.end.loopexit ]
  %70 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i64 0, i32 7
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %if.then77, label %if.else78

if.then77:                                        ; preds = %for.end
  %73 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i64 0, i32 13
  store i1 false, ptr %73, align 1
  br label %if.end79

if.else78:                                        ; preds = %for.end
  %74 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i64 0, i32 5
  store i32 0, ptr %74, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.else78, %if.then77
  %75 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i64 0, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %if.then80, label %if.end81

if.then80:                                        ; preds = %if.end79
  %78 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i64 0, i32 2
  store i32 -1, ptr %78, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %if.end79
  %79 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i64 0, i32 9
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, %groupSeparatorCounter.0.lcssa
  store i32 %81, ptr %79, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Format@CustomInfo@NumberFormatter@System@bf@@QEAAXUStringView@34@Tint@@1PEAVNumberFormatInfo@Globalization@34@_NPEAVString@34@444@Z"(ptr nocapture %this, ptr %format_mPtr, i64 %format_mLength, i64 %offset, i64 %length, ptr %nfi, i1 zeroext %positive, ptr %sb_int, ptr %sb_dec, ptr %sb_exp, ptr %sb) local_unnamed_addr #1 {
entry:
  %0 = alloca %"corlib.?$Span@H@System@bf", align 8
  %1 = alloca %"corlib.StringView@System@bf", align 8
  %2 = alloca %"corlib.StringView@System@bf", align 8
  %3 = alloca %"corlib.StringView@System@bf", align 8
  %4 = alloca %"corlib.?$__TUPLE_c_length@_UC@bf", align 4
  %5 = alloca %"corlib.StringView@System@bf", align 8
  %6 = alloca %"corlib.StringView@System@bf", align 8
  %7 = getelementptr inbounds %"corlib.String@System@bf", ptr %sb, i64 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = sext i32 %8 to i64
  call void @"?get__NumberGroupSizes@NumberFormatInfo@Globalization@System@bf@@QEAA?AU?$Span@H@34@XZ"(ptr %nfi, ptr nonnull sret(%"corlib.?$Span@H@System@bf") %0)
  %.fca.1.gep199 = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %0, i64 0, i32 1
  %.fca.1.load200 = load ptr, ptr %.fca.1.gep199, align 8
  %.fca.2.gep202 = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %0, i64 0, i32 2
  %.fca.2.load203 = load i64, ptr %.fca.2.gep202, align 8
  call void @"?get__NumberGroupSeparator@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr %nfi, ptr nonnull sret(%"corlib.StringView@System@bf") %1)
  %.fca.0.1.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i64 0, i32 0, i32 1
  %.fca.0.1.load = load ptr, ptr %.fca.0.1.gep, align 8
  %.fca.0.2.gep = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i64 0, i32 0, i32 2
  %.fca.0.2.load = load i64, ptr %.fca.0.2.gep, align 8
  %10 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %this, i64 0, i32 12
  %11 = load i1, ptr %10, align 1
  %12 = icmp sgt i64 %.fca.2.load203, 0
  %or.cond = select i1 %11, i1 %12, i1 false
  br i1 %or.cond, label %if.then, label %if.else25

if.then:                                          ; preds = %entry
  %13 = getelementptr inbounds %"corlib.String@System@bf", ptr %sb_int, i64 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = sext i32 %14 to i64
  br label %for.body

for.body:                                         ; preds = %if.then, %for.body
  %i.0238 = phi i64 [ 0, %if.then ], [ %20, %for.body ]
  %groupIndex.0237 = phi i64 [ 0, %if.then ], [ %spec.select, %for.body ]
  %total.0236 = phi i64 [ 0, %if.then ], [ %19, %for.body ]
  %16 = getelementptr inbounds i32, ptr %.fca.1.load200, i64 %i.0238
  %17 = load i32, ptr %16, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 %total.0236, %18
  %.not223 = icmp sgt i64 %19, %15
  %spec.select = select i1 %.not223, i64 %groupIndex.0237, i64 %i.0238
  %20 = add nuw nsw i64 %i.0238, 1
  %exitcond.not = icmp eq i64 %20, %.fca.2.load203
  br i1 %exitcond.not, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %21 = getelementptr inbounds i32, ptr %.fca.1.load200, i64 %spec.select
  %22 = load i32, ptr %21, align 4
  %23 = icmp slt i64 %19, %15
  %24 = sub i64 %15, %19
  %25 = select i1 %23, i64 %24, i64 0
  %26 = icmp eq i32 %22, 0
  br i1 %26, label %while.cond.preheader, label %if.end18

while.cond.preheader:                             ; preds = %for.end
  %27 = icmp sgt i64 %spec.select, -1
  br i1 %27, label %land.rhs10, label %while.end

land.rhs10:                                       ; preds = %while.cond.preheader, %while.body
  %groupIndex.2239 = phi i64 [ %31, %while.body ], [ %spec.select, %while.cond.preheader ]
  %28 = getelementptr inbounds i32, ptr %.fca.1.load200, i64 %groupIndex.2239
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %while.body, label %while.end

while.body:                                       ; preds = %land.rhs10
  %31 = add nsw i64 %groupIndex.2239, -1
  %32 = icmp sgt i64 %groupIndex.2239, 0
  br i1 %32, label %land.rhs10, label %while.end

while.end:                                        ; preds = %land.rhs10, %while.body, %while.cond.preheader
  %groupIndex.2.lcssa = phi i64 [ %spec.select, %while.cond.preheader ], [ -1, %while.body ], [ %groupIndex.2239, %land.rhs10 ]
  %33 = icmp sgt i64 %25, 0
  br i1 %33, label %if.else, label %cond.else14

cond.else14:                                      ; preds = %while.end
  %34 = getelementptr inbounds i32, ptr %.fca.1.load200, i64 %groupIndex.2.lcssa
  %35 = load i32, ptr %34, align 4
  br label %if.end18

if.end18:                                         ; preds = %cond.else14, %for.end
  %groupIndex.3 = phi i64 [ %spec.select, %for.end ], [ %groupIndex.2.lcssa, %cond.else14 ]
  %groupSize.0.in = phi i32 [ %22, %for.end ], [ %35, %cond.else14 ]
  %groupSize.0 = sext i32 %groupSize.0.in to i64
  %36 = icmp eq i64 %25, 0
  br i1 %36, label %for.start27, label %if.else

if.else:                                          ; preds = %while.end, %if.end18
  %groupSize.0232 = phi i64 [ %groupSize.0, %if.end18 ], [ %24, %while.end ]
  %groupIndex.3231 = phi i64 [ %groupIndex.3, %if.end18 ], [ %groupIndex.2.lcssa, %while.end ]
  %37 = sdiv i64 %25, %groupSize.0232
  %38 = add i64 %37, %groupIndex.3231
  %39 = srem i64 %25, %groupSize.0232
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %spec.select225 = add i64 %38, %41
  %spec.select226 = select i1 %40, i64 %39, i64 %groupSize.0232
  br label %for.start27

if.else25:                                        ; preds = %entry
  store i1 false, ptr %10, align 1
  br label %for.start27

for.start27:                                      ; preds = %if.else, %if.end18, %if.else25
  %intLen.0 = phi i64 [ 0, %if.else25 ], [ %15, %if.end18 ], [ %15, %if.else ]
  %groupIndex.4 = phi i64 [ 0, %if.else25 ], [ %groupIndex.3, %if.end18 ], [ %spec.select225, %if.else ]
  %counter.0 = phi i64 [ 0, %if.else25 ], [ %groupSize.0, %if.end18 ], [ %spec.select226, %if.else ]
  %groupSize.1 = phi i64 [ 0, %if.else25 ], [ %groupSize.0, %if.end18 ], [ %groupSize.0232, %if.else ]
  %42 = icmp sgt i64 %length, 0
  br i1 %42, label %for.body30.lr.ph, label %for.end123

for.body30.lr.ph:                                 ; preds = %for.start27
  %43 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %3, i64 0, i32 1
  %44 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %3, i64 0, i32 2
  %45 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %this, i64 0, i32 2
  %46 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %this, i64 0, i32 1
  %47 = getelementptr inbounds %"corlib.String@System@bf", ptr %sb_int, i64 0, i32 1
  %48 = getelementptr inbounds %"corlib.String@System@bf", ptr %sb_dec, i64 0, i32 1
  %49 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %2, i64 0, i32 1
  %50 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %2, i64 0, i32 2
  %51 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %this, i64 0, i32 13
  %52 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %this, i64 0, i32 4
  %.fca.1.gep = getelementptr inbounds %"corlib.?$__TUPLE_c_length@_UC@bf", ptr %4, i64 0, i32 1
  %.fca.2.gep = getelementptr inbounds %"corlib.?$__TUPLE_c_length@_UC@bf", ptr %4, i64 0, i32 2
  %53 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %5, i64 0, i32 1
  %54 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %5, i64 0, i32 2
  %55 = add i64 %length, %offset
  br label %for.body30

for.body30:                                       ; preds = %for.body30.lr.ph, %for.inc122
  %sb_exp1.0274 = phi ptr [ %sb_exp, %for.body30.lr.ph ], [ %sb_exp1.1, %for.inc122 ]
  %i28.0273 = phi i64 [ %offset, %for.body30.lr.ph ], [ %150, %for.inc122 ]
  %literal.0272 = phi i8 [ 0, %for.body30.lr.ph ], [ %literal.1, %for.inc122 ]
  %groupSize.2270 = phi i64 [ %groupSize.1, %for.body30.lr.ph ], [ %groupSize.6, %for.inc122 ]
  %counter.1268 = phi i64 [ %counter.0, %for.body30.lr.ph ], [ %counter.4, %for.inc122 ]
  %groupIndex.5266 = phi i64 [ %groupIndex.4, %for.body30.lr.ph ], [ %groupIndex.8, %for.inc122 ]
  %intLen.1264 = phi i64 [ %intLen.0, %for.body30.lr.ph ], [ %intLen.4, %for.inc122 ]
  %integerArea.0263 = phi i1 [ true, %for.body30.lr.ph ], [ %integerArea.1, %for.inc122 ]
  %decimalArea.0262 = phi i1 [ false, %for.body30.lr.ph ], [ %decimalArea.1, %for.inc122 ]
  %intSharpCounter.0260 = phi i64 [ 0, %for.body30.lr.ph ], [ %intSharpCounter.1, %for.inc122 ]
  %sb_int_index.0258 = phi i64 [ 0, %for.body30.lr.ph ], [ %sb_int_index.5, %for.inc122 ]
  %sb_dec_index.0256 = phi i64 [ 0, %for.body30.lr.ph ], [ %sb_dec_index.1, %for.inc122 ]
  %56 = getelementptr inbounds i8, ptr %format_mPtr, i64 %i28.0273
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %57, %literal.0272
  %59 = icmp ne i8 %57, 0
  %60 = and i1 %58, %59
  br i1 %60, label %for.inc122, label %if.end36

if.end36:                                         ; preds = %for.body30
  %.not = icmp eq i8 %literal.0272, 0
  br i1 %.not, label %if.end38, label %if.then37

if.then37:                                        ; preds = %if.end36
  call void @"?Append@String@System@bf@@QEAAXD@Z"(ptr %sb, i8 %57)
  br label %for.inc122

if.end38:                                         ; preds = %if.end36
  switch i8 %57, label %default [
    i8 92, label %switch.0
    i8 39, label %for.inc122
    i8 34, label %if.then44
    i8 35, label %switch.4
    i8 48, label %switch.4
    i8 101, label %for.inc122
    i8 69, label %switch.6
    i8 46, label %switch.7
    i8 44, label %for.inc122
    i8 37, label %switch.9
  ]

switch.0:                                         ; preds = %if.end38
  %61 = add i64 %i28.0273, 1
  %62 = sub i64 %61, %offset
  %63 = icmp slt i64 %62, %length
  br i1 %63, label %if.then41, label %for.inc122

if.then41:                                        ; preds = %switch.0
  %64 = getelementptr inbounds i8, ptr %format_mPtr, i64 %61
  %65 = load i8, ptr %64, align 1
  call void @"?Append@String@System@bf@@QEAAXD@Z"(ptr %sb, i8 %65)
  br label %for.inc122

if.then44:                                        ; preds = %if.end38
  br label %for.inc122

switch.4:                                         ; preds = %if.end38, %if.end38
  br i1 %integerArea.0263, label %if.then46, label %if.else72

if.then46:                                        ; preds = %switch.4
  %66 = add i64 %intSharpCounter.0260, 1
  %67 = load i32, ptr %52, align 4
  %68 = sext i32 %67 to i64
  %69 = sub i64 %68, %66
  %70 = load i32, ptr %47, align 4
  %71 = sext i32 %70 to i64
  %72 = add i64 %sb_int_index.0258, %71
  %73 = icmp slt i64 %69, %72
  %74 = icmp eq i8 %57, 48
  %75 = or i1 %74, %73
  br i1 %75, label %while.cond52.preheader, label %for.inc122

while.cond52.preheader:                           ; preds = %if.then46
  %.neg = xor i64 %intSharpCounter.0260, -1
  %76 = add i64 %sb_int_index.0258, %.neg
  %77 = add i64 %76, %68
  %78 = icmp slt i64 %77, %71
  br i1 %78, label %while.body54, label %for.inc122

while.body54:                                     ; preds = %while.cond52.preheader, %if.end69
  %groupSize.3250 = phi i64 [ %groupSize.5, %if.end69 ], [ %groupSize.2270, %while.cond52.preheader ]
  %counter.2249 = phi i64 [ %counter.3, %if.end69 ], [ %counter.1268, %while.cond52.preheader ]
  %groupIndex.6248 = phi i64 [ %groupIndex.7, %if.end69 ], [ %groupIndex.5266, %while.cond52.preheader ]
  %intLen.2247 = phi i64 [ %intLen.3, %if.end69 ], [ %intLen.1264, %while.cond52.preheader ]
  %sb_int_index.1246 = phi i64 [ %79, %if.end69 ], [ %sb_int_index.0258, %while.cond52.preheader ]
  %79 = add i64 %sb_int_index.1246, 1
  %get__Ptr.i228 = call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr nonnull %sb_int)
  %80 = getelementptr inbounds i8, ptr %get__Ptr.i228, i64 %sb_int_index.1246
  %81 = load i8, ptr %80, align 1
  call void @"?Append@String@System@bf@@QEAAXD@Z"(ptr %sb, i8 %81)
  %82 = load i1, ptr %10, align 1
  br i1 %82, label %land.rhs57, label %if.end69

land.rhs57:                                       ; preds = %while.body54
  %83 = add i64 %intLen.2247, -1
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %land.rhs59, label %if.end69

land.rhs59:                                       ; preds = %land.rhs57
  %85 = add i64 %counter.2249, -1
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %if.then61, label %if.end69

if.then61:                                        ; preds = %land.rhs59
  call void @"?Append@String@System@bf@@QEAAXUStringView@23@@Z"(ptr %sb, ptr %.fca.0.1.load, i64 %.fca.0.2.load)
  %87 = add i64 %groupIndex.6248, -1
  %88 = icmp slt i64 %87, %.fca.2.load203
  %89 = icmp sgt i64 %87, -1
  %90 = and i1 %88, %89
  br i1 %90, label %if.then66, label %if.end69

if.then66:                                        ; preds = %if.then61
  %91 = getelementptr inbounds i32, ptr %.fca.1.load200, i64 %87
  %92 = load i32, ptr %91, align 4
  %93 = sext i32 %92 to i64
  br label %if.end69

if.end69:                                         ; preds = %if.then61, %if.then66, %land.rhs57, %while.body54, %land.rhs59
  %intLen.3 = phi i64 [ %83, %land.rhs59 ], [ %83, %land.rhs57 ], [ %intLen.2247, %while.body54 ], [ %83, %if.then66 ], [ %83, %if.then61 ]
  %groupIndex.7 = phi i64 [ %groupIndex.6248, %land.rhs59 ], [ %groupIndex.6248, %land.rhs57 ], [ %groupIndex.6248, %while.body54 ], [ %87, %if.then66 ], [ %87, %if.then61 ]
  %counter.3 = phi i64 [ %85, %land.rhs59 ], [ %counter.2249, %land.rhs57 ], [ %counter.2249, %while.body54 ], [ %93, %if.then66 ], [ %groupSize.3250, %if.then61 ]
  %groupSize.5 = phi i64 [ %groupSize.3250, %land.rhs59 ], [ %groupSize.3250, %land.rhs57 ], [ %groupSize.3250, %while.body54 ], [ %93, %if.then66 ], [ %groupSize.3250, %if.then61 ]
  %94 = load i32, ptr %52, align 4
  %95 = sext i32 %94 to i64
  %96 = sub i64 %sb_int_index.1246, %intSharpCounter.0260
  %97 = add i64 %96, %95
  %98 = load i32, ptr %47, align 4
  %99 = sext i32 %98 to i64
  %100 = icmp slt i64 %97, %99
  br i1 %100, label %while.body54, label %for.inc122

if.else72:                                        ; preds = %switch.4
  br i1 %decimalArea.0262, label %if.then73, label %if.end79

if.then73:                                        ; preds = %if.else72
  %101 = load i32, ptr %48, align 4
  %102 = sext i32 %101 to i64
  %103 = icmp slt i64 %sb_dec_index.0256, %102
  br i1 %103, label %if.then75, label %for.inc122

if.then75:                                        ; preds = %if.then73
  %104 = add nsw i64 %sb_dec_index.0256, 1
  %get__Ptr.i227 = call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr nonnull %sb_dec)
  %105 = getelementptr inbounds i8, ptr %get__Ptr.i227, i64 %sb_dec_index.0256
  %106 = load i8, ptr %105, align 1
  call void @"?Append@String@System@bf@@QEAAXD@Z"(ptr %sb, i8 %106)
  br label %for.inc122

if.end79:                                         ; preds = %if.else72
  call void @"?Append@String@System@bf@@QEAAXD@Z"(ptr %sb, i8 %57)
  br label %for.inc122

switch.6:                                         ; preds = %if.end38
  %107 = icmp eq ptr %sb_exp1.0274, null
  br i1 %107, label %if.then82, label %lor.rhs80

lor.rhs80:                                        ; preds = %switch.6
  %108 = load i1, ptr %51, align 1
  br i1 %108, label %if.end83, label %if.then82

if.then82:                                        ; preds = %switch.6, %lor.rhs80
  call void @"?Append@String@System@bf@@QEAAXD@Z"(ptr %sb, i8 69)
  br label %for.inc122

if.end83:                                         ; preds = %lor.rhs80
  %109 = add i64 %i28.0273, 1
  %110 = sub i64 %109, %offset
  %111 = icmp slt i64 %110, %length
  br i1 %111, label %for.body86, label %if.then102

for.body86:                                       ; preds = %if.end83, %for.inc100
  %q.0244 = phi i64 [ %116, %for.inc100 ], [ %109, %if.end83 ]
  %flag2.0243 = phi i1 [ %flag2.1, %for.inc100 ], [ false, %if.end83 ]
  %112 = getelementptr inbounds i8, ptr %format_mPtr, i64 %q.0244
  %113 = load i8, ptr %112, align 1
  %114 = icmp eq i8 %113, 48
  br i1 %114, label %for.inc100, label %if.end89

if.end89:                                         ; preds = %for.body86
  %115 = icmp eq i64 %q.0244, %109
  br i1 %115, label %land.rhs90, label %if.end97

land.rhs90:                                       ; preds = %if.end89
  switch i8 %113, label %if.end97 [
    i8 43, label %for.inc100
    i8 45, label %for.inc100
  ]

if.end97:                                         ; preds = %land.rhs90, %if.end89
  %q.0244.lcssa = phi i64 [ %109, %land.rhs90 ], [ %q.0244, %if.end89 ]
  br i1 %flag2.0243, label %if.then102, label %if.else103

for.inc100:                                       ; preds = %land.rhs90, %land.rhs90, %for.body86
  %flag2.1 = phi i1 [ %flag2.0243, %land.rhs90 ], [ true, %for.body86 ], [ %flag2.0243, %land.rhs90 ]
  %116 = add i64 %q.0244, 1
  %117 = sub i64 %116, %offset
  %118 = icmp slt i64 %117, %length
  br i1 %118, label %for.body86, label %if.then102

if.then102:                                       ; preds = %for.inc100, %if.end83, %if.end97
  %q.0234 = phi i64 [ %q.0244.lcssa, %if.end97 ], [ %109, %if.end83 ], [ %55, %for.inc100 ]
  %119 = add i64 %q.0234, -1
  %120 = load i32, ptr %45, align 4
  %121 = icmp slt i32 %120, 0
  %122 = xor i1 %121, true
  call void @"?Append@String@System@bf@@QEAAXD@Z"(ptr %sb, i8 69)
  call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr %sb, ptr nonnull %sb_exp1.0274)
  br label %for.inc122

if.else103:                                       ; preds = %if.end97
  call void @"?Append@String@System@bf@@QEAAXD@Z"(ptr %sb, i8 69)
  br label %for.inc122

switch.7:                                         ; preds = %if.end38
  %123 = load i32, ptr %45, align 4
  %124 = sext i32 %123 to i64
  %125 = icmp eq i64 %i28.0273, %124
  br i1 %125, label %if.then105, label %for.inc122

if.then105:                                       ; preds = %switch.7
  %126 = load i32, ptr %46, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %while.cond107.preheader, label %if.end112

while.cond107.preheader:                          ; preds = %if.then105
  %128 = load i32, ptr %47, align 4
  %129 = sext i32 %128 to i64
  %130 = icmp slt i64 %sb_int_index.0258, %129
  br i1 %130, label %while.body109, label %if.end112

while.body109:                                    ; preds = %while.cond107.preheader, %while.body109
  %sb_int_index.2241 = phi i64 [ %131, %while.body109 ], [ %sb_int_index.0258, %while.cond107.preheader ]
  %131 = add nsw i64 %sb_int_index.2241, 1
  %get__Ptr.i = call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr nonnull %sb_int)
  %132 = getelementptr inbounds i8, ptr %get__Ptr.i, i64 %sb_int_index.2241
  %133 = load i8, ptr %132, align 1
  call void @"?Append@String@System@bf@@QEAAXD@Z"(ptr %sb, i8 %133)
  %134 = load i32, ptr %47, align 4
  %135 = sext i32 %134 to i64
  %136 = icmp slt i64 %131, %135
  br i1 %136, label %while.body109, label %if.end112

if.end112:                                        ; preds = %while.body109, %while.cond107.preheader, %if.then105
  %sb_int_index.3 = phi i64 [ %sb_int_index.0258, %if.then105 ], [ %sb_int_index.0258, %while.cond107.preheader ], [ %131, %while.body109 ]
  %137 = load i32, ptr %48, align 4
  %138 = icmp sgt i32 %137, 0
  br i1 %138, label %if.then114, label %for.inc122

if.then114:                                       ; preds = %if.end112
  call void @"?get__NumberDecimalSeparator@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr %nfi, ptr nonnull sret(%"corlib.StringView@System@bf") %2)
  %139 = load ptr, ptr %49, align 8
  %140 = load i64, ptr %50, align 8
  call void @"?Append@String@System@bf@@QEAAXUStringView@23@@Z"(ptr %sb, ptr %139, i64 %140)
  br label %for.inc122

switch.9:                                         ; preds = %if.end38
  call void @"?get__PercentSymbol@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr %nfi, ptr nonnull sret(%"corlib.StringView@System@bf") %3)
  %141 = load ptr, ptr %43, align 8
  %142 = load i64, ptr %44, align 8
  call void @"?Append@String@System@bf@@QEAAXUStringView@23@@Z"(ptr %sb, ptr %141, i64 %142)
  br label %for.inc122

default:                                          ; preds = %if.end38
  %143 = icmp slt i8 %57, 0
  br i1 %143, label %if.then117, label %if.end121

if.then117:                                       ; preds = %default
  call void @"?GetChar32__im@StringView@System@bf@@QEAA?AU?$__TUPLE_c_length@_UC@3@Tint@@@Z"(ptr nonnull sret(%"corlib.?$__TUPLE_c_length@_UC@bf") %4, ptr nonnull %format_mPtr, i64 %format_mLength, i64 %i28.0273)
  %.fca.1.load = load i32, ptr %.fca.1.gep, align 4
  %144 = icmp eq i32 %.fca.1.load, 8240
  br i1 %144, label %if.then119, label %if.end121

if.then119:                                       ; preds = %if.then117
  %.fca.2.load = load i8, ptr %.fca.2.gep, align 4
  call void @"?get__PerMilleSymbol@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr %nfi, ptr nonnull sret(%"corlib.StringView@System@bf") %5)
  %145 = load ptr, ptr %53, align 8
  %146 = load i64, ptr %54, align 8
  call void @"?Append@String@System@bf@@QEAAXUStringView@23@@Z"(ptr %sb, ptr %145, i64 %146)
  %147 = sext i8 %.fca.2.load to i64
  %148 = add i64 %i28.0273, -1
  %149 = add i64 %148, %147
  br label %for.inc122

if.end121:                                        ; preds = %if.then117, %default
  call void @"?Append@String@System@bf@@QEAAXD@Z"(ptr %sb, i8 %57)
  br label %for.inc122

for.inc122:                                       ; preds = %if.end69, %while.cond52.preheader, %switch.7, %if.then114, %if.end112, %for.body30, %if.end79, %if.then82, %switch.9, %if.then119, %if.end121, %if.end38, %if.then46, %if.then75, %if.then73, %if.end38, %if.else103, %if.then102, %if.end38, %if.then44, %switch.0, %if.then41, %if.then37
  %sb_dec_index.1 = phi i64 [ %sb_dec_index.0256, %if.then37 ], [ %sb_dec_index.0256, %if.then119 ], [ %sb_dec_index.0256, %if.end121 ], [ %sb_dec_index.0256, %switch.9 ], [ %sb_dec_index.0256, %if.then82 ], [ %sb_dec_index.0256, %if.then102 ], [ %sb_dec_index.0256, %if.else103 ], [ %sb_dec_index.0256, %if.then46 ], [ %104, %if.then75 ], [ %sb_dec_index.0256, %if.then73 ], [ %sb_dec_index.0256, %if.end79 ], [ %sb_dec_index.0256, %if.then44 ], [ %sb_dec_index.0256, %if.end38 ], [ %sb_dec_index.0256, %if.end38 ], [ %sb_dec_index.0256, %if.end38 ], [ %sb_dec_index.0256, %if.then41 ], [ %sb_dec_index.0256, %switch.0 ], [ %sb_dec_index.0256, %for.body30 ], [ %sb_dec_index.0256, %if.end112 ], [ %sb_dec_index.0256, %if.then114 ], [ %sb_dec_index.0256, %switch.7 ], [ %sb_dec_index.0256, %while.cond52.preheader ], [ %sb_dec_index.0256, %if.end69 ]
  %sb_int_index.5 = phi i64 [ %sb_int_index.0258, %if.then37 ], [ %sb_int_index.0258, %if.then119 ], [ %sb_int_index.0258, %if.end121 ], [ %sb_int_index.0258, %switch.9 ], [ %sb_int_index.0258, %if.then82 ], [ %sb_int_index.0258, %if.then102 ], [ %sb_int_index.0258, %if.else103 ], [ %sb_int_index.0258, %if.then46 ], [ %sb_int_index.0258, %if.then75 ], [ %sb_int_index.0258, %if.then73 ], [ %sb_int_index.0258, %if.end79 ], [ %sb_int_index.0258, %if.then44 ], [ %sb_int_index.0258, %if.end38 ], [ %sb_int_index.0258, %if.end38 ], [ %sb_int_index.0258, %if.end38 ], [ %sb_int_index.0258, %if.then41 ], [ %sb_int_index.0258, %switch.0 ], [ %sb_int_index.0258, %for.body30 ], [ %sb_int_index.3, %if.end112 ], [ %sb_int_index.3, %if.then114 ], [ %sb_int_index.0258, %switch.7 ], [ %sb_int_index.0258, %while.cond52.preheader ], [ %79, %if.end69 ]
  %intSharpCounter.1 = phi i64 [ %intSharpCounter.0260, %if.then37 ], [ %intSharpCounter.0260, %if.then119 ], [ %intSharpCounter.0260, %if.end121 ], [ %intSharpCounter.0260, %switch.9 ], [ %intSharpCounter.0260, %if.then82 ], [ %intSharpCounter.0260, %if.then102 ], [ %intSharpCounter.0260, %if.else103 ], [ %66, %if.then46 ], [ %intSharpCounter.0260, %if.then75 ], [ %intSharpCounter.0260, %if.then73 ], [ %intSharpCounter.0260, %if.end79 ], [ %intSharpCounter.0260, %if.then44 ], [ %intSharpCounter.0260, %if.end38 ], [ %intSharpCounter.0260, %if.end38 ], [ %intSharpCounter.0260, %if.end38 ], [ %intSharpCounter.0260, %if.then41 ], [ %intSharpCounter.0260, %switch.0 ], [ %intSharpCounter.0260, %for.body30 ], [ %intSharpCounter.0260, %if.end112 ], [ %intSharpCounter.0260, %if.then114 ], [ %intSharpCounter.0260, %switch.7 ], [ %66, %while.cond52.preheader ], [ %66, %if.end69 ]
  %decimalArea.1 = phi i1 [ %decimalArea.0262, %if.then37 ], [ %decimalArea.0262, %if.then119 ], [ %decimalArea.0262, %if.end121 ], [ %decimalArea.0262, %switch.9 ], [ %decimalArea.0262, %if.then82 ], [ %122, %if.then102 ], [ %decimalArea.0262, %if.else103 ], [ %decimalArea.0262, %if.then46 ], [ true, %if.then75 ], [ true, %if.then73 ], [ false, %if.end79 ], [ %decimalArea.0262, %if.then44 ], [ %decimalArea.0262, %if.end38 ], [ %decimalArea.0262, %if.end38 ], [ %decimalArea.0262, %if.end38 ], [ %decimalArea.0262, %if.then41 ], [ %decimalArea.0262, %switch.0 ], [ %decimalArea.0262, %for.body30 ], [ true, %if.end112 ], [ true, %if.then114 ], [ true, %switch.7 ], [ %decimalArea.0262, %while.cond52.preheader ], [ %decimalArea.0262, %if.end69 ]
  %integerArea.1 = phi i1 [ %integerArea.0263, %if.then37 ], [ %integerArea.0263, %if.then119 ], [ %integerArea.0263, %if.end121 ], [ %integerArea.0263, %switch.9 ], [ %integerArea.0263, %if.then82 ], [ %121, %if.then102 ], [ %integerArea.0263, %if.else103 ], [ true, %if.then46 ], [ false, %if.then75 ], [ false, %if.then73 ], [ false, %if.end79 ], [ %integerArea.0263, %if.then44 ], [ %integerArea.0263, %if.end38 ], [ %integerArea.0263, %if.end38 ], [ %integerArea.0263, %if.end38 ], [ %integerArea.0263, %if.then41 ], [ %integerArea.0263, %switch.0 ], [ %integerArea.0263, %for.body30 ], [ false, %if.end112 ], [ false, %if.then114 ], [ false, %switch.7 ], [ true, %while.cond52.preheader ], [ true, %if.end69 ]
  %intLen.4 = phi i64 [ %intLen.1264, %if.then37 ], [ %intLen.1264, %if.then119 ], [ %intLen.1264, %if.end121 ], [ %intLen.1264, %switch.9 ], [ %intLen.1264, %if.then82 ], [ %intLen.1264, %if.then102 ], [ %intLen.1264, %if.else103 ], [ %intLen.1264, %if.then46 ], [ %intLen.1264, %if.then75 ], [ %intLen.1264, %if.then73 ], [ %intLen.1264, %if.end79 ], [ %intLen.1264, %if.then44 ], [ %intLen.1264, %if.end38 ], [ %intLen.1264, %if.end38 ], [ %intLen.1264, %if.end38 ], [ %intLen.1264, %if.then41 ], [ %intLen.1264, %switch.0 ], [ %intLen.1264, %for.body30 ], [ %intLen.1264, %if.end112 ], [ %intLen.1264, %if.then114 ], [ %intLen.1264, %switch.7 ], [ %intLen.1264, %while.cond52.preheader ], [ %intLen.3, %if.end69 ]
  %groupIndex.8 = phi i64 [ %groupIndex.5266, %if.then37 ], [ %groupIndex.5266, %if.then119 ], [ %groupIndex.5266, %if.end121 ], [ %groupIndex.5266, %switch.9 ], [ %groupIndex.5266, %if.then82 ], [ %groupIndex.5266, %if.then102 ], [ %groupIndex.5266, %if.else103 ], [ %groupIndex.5266, %if.then46 ], [ %groupIndex.5266, %if.then75 ], [ %groupIndex.5266, %if.then73 ], [ %groupIndex.5266, %if.end79 ], [ %groupIndex.5266, %if.then44 ], [ %groupIndex.5266, %if.end38 ], [ %groupIndex.5266, %if.end38 ], [ %groupIndex.5266, %if.end38 ], [ %groupIndex.5266, %if.then41 ], [ %groupIndex.5266, %switch.0 ], [ %groupIndex.5266, %for.body30 ], [ %groupIndex.5266, %if.end112 ], [ %groupIndex.5266, %if.then114 ], [ %groupIndex.5266, %switch.7 ], [ %groupIndex.5266, %while.cond52.preheader ], [ %groupIndex.7, %if.end69 ]
  %counter.4 = phi i64 [ %counter.1268, %if.then37 ], [ %counter.1268, %if.then119 ], [ %counter.1268, %if.end121 ], [ %counter.1268, %switch.9 ], [ %counter.1268, %if.then82 ], [ %counter.1268, %if.then102 ], [ %counter.1268, %if.else103 ], [ %counter.1268, %if.then46 ], [ %counter.1268, %if.then75 ], [ %counter.1268, %if.then73 ], [ %counter.1268, %if.end79 ], [ %counter.1268, %if.then44 ], [ %counter.1268, %if.end38 ], [ %counter.1268, %if.end38 ], [ %counter.1268, %if.end38 ], [ %counter.1268, %if.then41 ], [ %counter.1268, %switch.0 ], [ %counter.1268, %for.body30 ], [ %counter.1268, %if.end112 ], [ %counter.1268, %if.then114 ], [ %counter.1268, %switch.7 ], [ %counter.1268, %while.cond52.preheader ], [ %counter.3, %if.end69 ]
  %groupSize.6 = phi i64 [ %groupSize.2270, %if.then37 ], [ %groupSize.2270, %if.then119 ], [ %groupSize.2270, %if.end121 ], [ %groupSize.2270, %switch.9 ], [ %groupSize.2270, %if.then82 ], [ %groupSize.2270, %if.then102 ], [ %groupSize.2270, %if.else103 ], [ %groupSize.2270, %if.then46 ], [ %groupSize.2270, %if.then75 ], [ %groupSize.2270, %if.then73 ], [ %groupSize.2270, %if.end79 ], [ %groupSize.2270, %if.then44 ], [ %groupSize.2270, %if.end38 ], [ %groupSize.2270, %if.end38 ], [ %groupSize.2270, %if.end38 ], [ %groupSize.2270, %if.then41 ], [ %groupSize.2270, %switch.0 ], [ %groupSize.2270, %for.body30 ], [ %groupSize.2270, %if.end112 ], [ %groupSize.2270, %if.then114 ], [ %groupSize.2270, %switch.7 ], [ %groupSize.2270, %while.cond52.preheader ], [ %groupSize.5, %if.end69 ]
  %literal.1 = phi i8 [ %literal.0272, %if.then37 ], [ 0, %if.then119 ], [ 0, %if.end121 ], [ 0, %switch.9 ], [ 0, %if.then82 ], [ 0, %if.then102 ], [ 0, %if.else103 ], [ 0, %if.then46 ], [ 0, %if.then75 ], [ 0, %if.then73 ], [ 0, %if.end79 ], [ 34, %if.then44 ], [ 0, %if.end38 ], [ 0, %if.end38 ], [ 0, %if.end38 ], [ 0, %if.then41 ], [ 0, %switch.0 ], [ 0, %for.body30 ], [ 0, %if.end112 ], [ 0, %if.then114 ], [ 0, %switch.7 ], [ 0, %while.cond52.preheader ], [ 0, %if.end69 ]
  %i28.1 = phi i64 [ %i28.0273, %if.then37 ], [ %149, %if.then119 ], [ %i28.0273, %if.end121 ], [ %i28.0273, %switch.9 ], [ %i28.0273, %if.then82 ], [ %119, %if.then102 ], [ %i28.0273, %if.else103 ], [ %i28.0273, %if.then46 ], [ %i28.0273, %if.then75 ], [ %i28.0273, %if.then73 ], [ %i28.0273, %if.end79 ], [ %i28.0273, %if.then44 ], [ %i28.0273, %if.end38 ], [ %i28.0273, %if.end38 ], [ %i28.0273, %if.end38 ], [ %61, %if.then41 ], [ %61, %switch.0 ], [ %i28.0273, %for.body30 ], [ %i28.0273, %if.end112 ], [ %i28.0273, %if.then114 ], [ %i28.0273, %switch.7 ], [ %i28.0273, %while.cond52.preheader ], [ %i28.0273, %if.end69 ]
  %sb_exp1.1 = phi ptr [ %sb_exp1.0274, %if.then37 ], [ %sb_exp1.0274, %if.then119 ], [ %sb_exp1.0274, %if.end121 ], [ %sb_exp1.0274, %switch.9 ], [ %sb_exp1.0274, %if.then82 ], [ null, %if.then102 ], [ %sb_exp1.0274, %if.else103 ], [ %sb_exp1.0274, %if.then46 ], [ %sb_exp1.0274, %if.then75 ], [ %sb_exp1.0274, %if.then73 ], [ %sb_exp1.0274, %if.end79 ], [ %sb_exp1.0274, %if.then44 ], [ %sb_exp1.0274, %if.end38 ], [ %sb_exp1.0274, %if.end38 ], [ %sb_exp1.0274, %if.end38 ], [ %sb_exp1.0274, %if.then41 ], [ %sb_exp1.0274, %switch.0 ], [ %sb_exp1.0274, %for.body30 ], [ %sb_exp1.0274, %if.end112 ], [ %sb_exp1.0274, %if.then114 ], [ %sb_exp1.0274, %switch.7 ], [ %sb_exp1.0274, %while.cond52.preheader ], [ %sb_exp1.0274, %if.end69 ]
  %150 = add i64 %i28.1, 1
  %151 = sub i64 %150, %offset
  %152 = icmp slt i64 %151, %length
  br i1 %152, label %for.body30, label %for.end123

for.end123:                                       ; preds = %for.inc122, %for.start27
  br i1 %positive, label %exit, label %if.then124

if.then124:                                       ; preds = %for.end123
  call void @"?get__NegativeSign@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr %nfi, ptr nonnull sret(%"corlib.StringView@System@bf") %6)
  %153 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %6, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8
  %155 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %6, i64 0, i32 2
  %156 = load i64, ptr %155, align 8
  call void @"?Insert@String@System@bf@@QEAAXTint@@UStringView@23@@Z"(ptr %sb, i64 %9, ptr %154, i64 %156)
  br label %exit

exit:                                             ; preds = %for.end123, %if.then124
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @"?__BfCtorClear@CustomInfo@NumberFormatter@System@bf@@AEAAXXZ"(ptr nocapture writeonly %this) local_unnamed_addr #2 {
entry:
  %0 = getelementptr inbounds i8, ptr %this, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %0, i8 0, i64 47, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @"?__BfCtor@CustomInfo@NumberFormatter@System@bf@@QEAAXXZ"(ptr nocapture writeonly %this) local_unnamed_addr #2 {
entry:
  %0 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %this, i64 0, i32 12
  store i1 false, ptr %0, align 1
  %1 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %this, i64 0, i32 1
  store i32 0, ptr %1, align 4
  %2 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %this, i64 0, i32 2
  store i32 -1, ptr %2, align 4
  %3 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %this, i64 0, i32 3
  %4 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %this, i64 0, i32 13
  store i1 false, ptr %4, align 1
  %5 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %this, i64 0, i32 14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  store i1 true, ptr %5, align 1
  %6 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %this, i64 0, i32 9
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %this, i64 0, i32 10
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %this, i64 0, i32 11
  store i32 0, ptr %8, align 4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
declare void @"?GetChar32__im@StringView@System@bf@@QEAA?AU?$__TUPLE_c_length@_UC@3@Tint@@@Z"(ptr noalias sret(%"corlib.?$__TUPLE_c_length@_UC@bf"), ptr, i64, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?get__NumberGroupSizes@NumberFormatInfo@Globalization@System@bf@@QEAA?AU?$Span@H@34@XZ"(ptr, ptr noalias sret(%"corlib.?$Span@H@System@bf")) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?get__NumberGroupSeparator@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr, ptr noalias sret(%"corlib.StringView@System@bf")) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAXD@Z"(ptr, i8) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAXUStringView@23@@Z"(ptr, ptr, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr, ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?get__NumberDecimalSeparator@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr, ptr noalias sret(%"corlib.StringView@System@bf")) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?get__PercentSymbol@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr, ptr noalias sret(%"corlib.StringView@System@bf")) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?get__PerMilleSymbol@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr, ptr noalias sret(%"corlib.StringView@System@bf")) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?get__NegativeSign@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr, ptr noalias sret(%"corlib.StringView@System@bf")) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?Insert@String@System@bf@@QEAAXTint@@UStringView@23@@Z"(ptr, i64, ptr, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr) local_unnamed_addr #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable }
attributes #1 = { nounwind uwtable }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
