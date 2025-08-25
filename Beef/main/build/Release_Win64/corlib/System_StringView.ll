; ModuleID = 'System_StringView'
source_filename = "System_StringView"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Span@D@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.StringView@System@bf" = type <{ %"corlib.?$Span@D@System@bf" }>
%"corlib.RawEnumerator@String@System@bf" = type opaque
%"corlib.UTF8Enumerator@String@System@bf" = type opaque
%"corlib.?$Result@X@System@bf" = type opaque
%"corlib.?$__TUPLE_c_length@_UC@bf" = type <{ %"corlib.Tuple@System@bf", i32, i8 }>
%"corlib.Tuple@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.?$__TUPLE_c_idx_length@_UTint@@C@bf" = type opaque
%"corlib.StringSplitEnumerator@System@bf" = type opaque
%"corlib.StringStringSplitEnumerator@System@bf" = type opaque
%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@StringView@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  call void @"?__BfCtor@?$Span@D@System@bf@@QEAAXXZ"(ptr %0)
  %1 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i32 0, i32 1
  store ptr null, ptr %1, align 8
  %2 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i32 0, i32 2
  store i64 0, ptr %2, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@StringView@System@bf@@QEAAXPEAVString@23@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@StringView@System@bf@@QEAAXPEAVString@23@Tint@@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@StringView@System@bf@@QEAAXPEAVString@23@Tint@@1@Z"(ptr, ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@StringView@System@bf@@QEAAXU123@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@StringView@System@bf@@QEAAXU123@Tint@@@Z"(ptr, ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@StringView@System@bf@@QEAAXU123@Tint@@1@Z"(ptr, ptr, i64, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@StringView@System@bf@@QEAAXPEAV?$Array1@D@23@Tint@@1@Z"(ptr, ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@StringView@System@bf@@QEAAXPEAD@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@StringView@System@bf@@QEAAXPEADTint@@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@StringView@System@bf@@QEAAXU?$Span@E@23@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get____im@CHK$StringView@System@bf@@QEAAAEADTint@@@Z"(ptr, i64, i64) #0

; Function Attrs: alwaysinline nounwind uwtable
define ptr @"?get____im@UCHK$StringView@System@bf@@QEAAAEADTint@@@Z"(ptr %this_mPtr, i64 %this_mLength, i64 %index) #1 {
entry:
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  %__return = alloca ptr, align 8
  store ptr %this_mPtr, ptr %0, align 8
  store i64 %this_mLength, ptr %1, align 8
  %2 = getelementptr inbounds i8, ptr %this_mPtr, i64 %index
  store ptr %2, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %3 = load ptr, ptr %__return, align 8
  ret ptr %3
}

; Function Attrs: nounwind uwtable
declare ptr @"?get____im@CHK$StringView@System@bf@@QEAAAEADUIndex@23@@Z"(ptr, i64, ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"?get____im@UCHK$StringView@System@bf@@QEAAAEADUIndex@23@@Z"(ptr, i64, ptr) #1

; Function Attrs: alwaysinline nounwind uwtable
declare void @"?get____im@StringView@System@bf@@QEAA?AU123@UIndexRange@23@@Z"(ptr noalias sret(%"corlib.StringView@System@bf"), ptr, i64, ptr) #1

; Function Attrs: nounwind uwtable
declare i64 @"?get__NumCodePoints__im@StringView@System@bf@@QEAATint@@XZ"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?GetRangeStart__im@StringView@System@bf@@AEAATint@@UIndexRange@23@@Z"(ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?GetRangeEnd__im@StringView@System@bf@@AEAATint@@UIndexRange@23@@Z"(ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?get__RawChars__im@StringView@System@bf@@QEAA?AURawEnumerator@String@23@XZ"(ptr noalias sret(%"corlib.RawEnumerator@String@System@bf"), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?get__DecodedChars__im@StringView@System@bf@@QEAA?AUUTF8Enumerator@String@23@XZ"(ptr noalias sret(%"corlib.UTF8Enumerator@String@System@bf"), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsWhiteSpace__im@StringView@System@bf@@QEAA_NXZ"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__HasMultibyteChars__im@StringView@System@bf@@QEAA_NXZ"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?GetHashCode__im@StringView@System@bf@@QEAATint@@XZ"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@StringView@System@bf@@QEAAXPEAVString@23@0PEAVIFormatProvider@23@@Z"(ptr, i64, ptr, ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Print__im@IPrintable@System@bf@@StringView@23@AEAAXPEAVString@23@@Z"(ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
define i1 @"??8StringView@System@bf@@SA_NU012@0@Z"(ptr %val1_mPtr, i64 %val1_mLength, ptr %val2_mPtr, i64 %val2_mLength) #0 {
entry:
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %__return = alloca i1, align 1
  %ptr1 = alloca ptr, align 8
  %ptr2 = alloca ptr, align 8
  store ptr %val1_mPtr, ptr %0, align 8
  store i64 %val1_mLength, ptr %1, align 8
  store ptr %val2_mPtr, ptr %2, align 8
  store i64 %val2_mLength, ptr %3, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %4 = icmp ne i64 %val1_mLength, %val2_mLength
  br i1 %4, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  store i1 false, ptr %__return, align 1
  br label %exit

if.end:                                           ; preds = %newScope
  store ptr %val1_mPtr, ptr %ptr1, align 8
  store ptr %val2_mPtr, ptr %ptr2, align 8
  br label %newScope1

newScope1:                                        ; preds = %if.end
  %5 = load ptr, ptr %ptr1, align 8
  %6 = load ptr, ptr %ptr2, align 8
  %7 = icmp eq ptr %5, %6
  br i1 %7, label %if.then2, label %if.end3

if.then2:                                         ; preds = %newScope1
  store i1 true, ptr %__return, align 1
  br label %exit

if.end3:                                          ; preds = %newScope1
  %8 = load ptr, ptr %ptr1, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end3
  %10 = load ptr, ptr %ptr2, align 8
  %11 = icmp eq ptr %10, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end3
  %12 = phi i1 [ true, %if.end3 ], [ %11, %lor.rhs ]
  br i1 %12, label %if.then4, label %if.end5

if.then4:                                         ; preds = %lor.end
  store i1 false, ptr %__return, align 1
  br label %exit

if.end5:                                          ; preds = %lor.end
  %13 = load ptr, ptr %ptr1, align 8
  %14 = load ptr, ptr %ptr2, align 8
  %EqualsHelper = call i1 @"?EqualsHelper@String@System@bf@@CA_NPEAD0Tint@@@Z"(ptr %13, ptr %14, i64 %val1_mLength)
  store i1 %EqualsHelper, ptr %__return, align 1
  br label %exit

exit:                                             ; preds = %if.end5, %if.then4, %if.then2, %if.then
  %15 = load i1, ptr %__return, align 1
  ret i1 %15
}

; Function Attrs: nounwind uwtable
declare i1 @"??8StringView@System@bf@@SA_NU012@PEAVString@12@@Z"(ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?__cmp__StringView@System@bf@@SATint@@U012@0@Z"(ptr, i64, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?Compare@StringView@System@bf@@SATint@@U123@0_N@Z"(ptr, i64, ptr, i64, i1 zeroext) #0

; Function Attrs: nounwind uwtable
declare i64 @"?CompareTo__im@StringView@System@bf@@QEAATint@@U123@_N@Z"(ptr, i64, ptr, i64, i1 zeroext) #0

; Function Attrs: nounwind uwtable
declare i1 @"?Equals__im@StringView@System@bf@@QEAA_NU123@@Z"(ptr, i64, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i1 @"?Equals__im@StringView@System@bf@@QEAA_NU123@_N@Z"(ptr, i64, ptr, i64, i1 zeroext) #0

; Function Attrs: nounwind uwtable
declare i64 @"?IndexOf__im@StringView@System@bf@@QEAATint@@U123@_N@Z"(ptr, i64, ptr, i64, i1 zeroext) #0

; Function Attrs: nounwind uwtable
declare i64 @"?IndexOf__im@StringView@System@bf@@QEAATint@@U123@Tint@@_N@Z"(ptr, i64, ptr, i64, i64, i1 zeroext) #0

; Function Attrs: nounwind uwtable
declare i64 @"?IndexOf__im@StringView@System@bf@@QEAATint@@DTint@@@Z"(ptr, i64, i8, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?LastIndexOf__im@StringView@System@bf@@QEAATint@@D@Z"(ptr, i64, i8) #0

; Function Attrs: nounwind uwtable
declare i64 @"?LastIndexOf__im@StringView@System@bf@@QEAATint@@DTint@@@Z"(ptr, i64, i8, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?IndexOfAny__im@StringView@System@bf@@QEAATint@@PEAV?$Array1@D@23@@Z"(ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?IndexOfAny__im@StringView@System@bf@@QEAATint@@PEAV?$Array1@D@23@Tint@@@Z"(ptr, i64, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?IndexOfAny__im@StringView@System@bf@@QEAATint@@PEAV?$Array1@D@23@Tint@@1@Z"(ptr, i64, ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
declare i1 @"?Contains__im@StringView@System@bf@@QEAA_ND@Z"(ptr, i64, i8) #0

; Function Attrs: nounwind uwtable
declare i1 @"?Contains__im@StringView@System@bf@@QEAA_NU123@_N@Z"(ptr, i64, ptr, i64, i1 zeroext) #0

; Function Attrs: nounwind uwtable
declare i1 @"?StartsWith__im@StringView@System@bf@@QEAA_NU123@W4StringComparison@23@@Z"(ptr, i64, ptr, i64, i8) #0

; Function Attrs: nounwind uwtable
declare i1 @"?EndsWith__im@StringView@System@bf@@QEAA_NU123@W4StringComparison@23@@Z"(ptr, i64, ptr, i64, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?TrimEnd@StringView@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?TrimStart@StringView@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Trim@StringView@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?TrimEnd@StringView@System@bf@@QEAAX_U@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?TrimEnd@StringView@System@bf@@QEAAXD@Z"(ptr, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?TrimStart@StringView@System@bf@@QEAAX_U@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?TrimStart@StringView@System@bf@@QEAAXD@Z"(ptr, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?Trim@StringView@System@bf@@QEAAX_U@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?Trim@StringView@System@bf@@QEAAXD@Z"(ptr, i8) #0

; Function Attrs: nounwind uwtable
declare i1 @"?StartsWith__im@StringView@System@bf@@QEAA_ND@Z"(ptr, i64, i8) #0

; Function Attrs: nounwind uwtable
declare i1 @"?StartsWith__im@StringView@System@bf@@QEAA_N_U@Z"(ptr, i64, i32) #0

; Function Attrs: nounwind uwtable
declare i1 @"?EndsWith__im@StringView@System@bf@@QEAA_ND@Z"(ptr, i64, i8) #0

; Function Attrs: nounwind uwtable
declare i1 @"?EndsWith__im@StringView@System@bf@@QEAA_N_U@Z"(ptr, i64, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?QuoteString__im@StringView@System@bf@@QEAAXPEAVString@23@@Z"(ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?UnQuoteString__im@StringView@System@bf@@QEAA?AU?$Result@X@23@PEAVString@23@@Z"(ptr noalias sret(%"corlib.?$Result@X@System@bf"), ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Unescape__im@StringView@System@bf@@QEAA?AU?$Result@X@23@PEAVString@23@@Z"(ptr noalias sret(%"corlib.?$Result@X@System@bf"), ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Substring__im@StringView@System@bf@@QEAA?AU123@Tint@@@Z"(ptr noalias sret(%"corlib.StringView@System@bf"), ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Substring__im@StringView@System@bf@@QEAA?AU123@Tint@@0@Z"(ptr noalias sret(%"corlib.StringView@System@bf"), ptr, i64, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Substring__im@StringView@System@bf@@QEAA?AU123@UIndexRange@23@@Z"(ptr noalias sret(%"corlib.StringView@System@bf"), ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
define void @"?GetChar32__im@StringView@System@bf@@QEAA?AU?$__TUPLE_c_length@_UC@3@Tint@@@Z"(ptr noalias sret(%"corlib.?$__TUPLE_c_length@_UC@bf") %0, ptr %this_mPtr, i64 %this_mLength, i64 %idx) #0 {
entry:
  %1 = alloca ptr, align 8
  %2 = alloca i64, align 8
  %__return.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %c = alloca i8, align 1
  %3 = alloca %"corlib.?$__TUPLE_c_length@_UC@bf", align 4
  %4 = alloca %"corlib.?$__TUPLE_c_length@_UC@bf", align 4
  store ptr %this_mPtr, ptr %1, align 8
  store i64 %this_mLength, ptr %2, align 8
  store ptr %0, ptr %__return.addr, align 4
  %get__Ptr = call ptr @"?get__Ptr__im@?$Span@D@System@bf@@QEAAPEADXZ"(ptr %this_mPtr, i64 %this_mLength)
  store ptr %get__Ptr, ptr %ptr, align 8
  %5 = load ptr, ptr %ptr, align 8
  %6 = getelementptr inbounds i8, ptr %5, i64 %idx
  %7 = load i8, ptr %6, align 1
  store i8 %7, ptr %c, align 1
  br label %newScope

newScope:                                         ; preds = %entry
  %8 = load i8, ptr %c, align 1
  %9 = icmp ult i8 %8, -128
  br i1 %9, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  %10 = load i8, ptr %c, align 1
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds %"corlib.?$__TUPLE_c_length@_UC@bf", ptr %3, i32 0, i32 1
  store i32 %11, ptr %12, align 4
  %13 = getelementptr inbounds %"corlib.?$__TUPLE_c_length@_UC@bf", ptr %3, i32 0, i32 2
  store i8 1, ptr %13, align 1
  %14 = load %"corlib.?$__TUPLE_c_length@_UC@bf", ptr %3, align 4
  %15 = load ptr, ptr %__return.addr, align 4
  store %"corlib.?$__TUPLE_c_length@_UC@bf" %14, ptr %15, align 4
  br label %exit

if.end:                                           ; preds = %newScope
  %16 = load ptr, ptr %ptr, align 8
  %17 = getelementptr inbounds i8, ptr %16, i64 %idx
  %18 = load i8, ptr %17, align 1
  %19 = and i8 %18, -64
  %20 = icmp eq i8 %19, -128
  br i1 %20, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  %21 = load ptr, ptr %__return.addr, align 4
  store %"corlib.?$__TUPLE_c_length@_UC@bf" zeroinitializer, ptr %21, align 4
  br label %exit

if.end2:                                          ; preds = %if.end
  %22 = load ptr, ptr %ptr, align 8
  %23 = getelementptr inbounds i8, ptr %22, i64 %idx
  %24 = sub i64 %this_mLength, %idx
  call void @"?Decode@UTF8@Text@System@bf@@SA?AU?$__TUPLE_c_length@_UC@4@PEADTint@@@Z"(ptr sret(%"corlib.?$__TUPLE_c_length@_UC@bf") %4, ptr %23, i64 %24)
  %25 = load %"corlib.?$__TUPLE_c_length@_UC@bf", ptr %4, align 4
  %26 = load ptr, ptr %__return.addr, align 4
  store %"corlib.?$__TUPLE_c_length@_UC@bf" %25, ptr %26, align 4
  br label %exit

exit:                                             ; preds = %if.end2, %if.then1, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?GetChar32WithBacktrack__im@StringView@System@bf@@QEAA?AU?$__TUPLE_c_idx_length@_UTint@@C@3@Tint@@@Z"(ptr noalias sret(%"corlib.?$__TUPLE_c_idx_length@_UTint@@C@bf"), ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Split__im@StringView@System@bf@@QEAA?AUStringSplitEnumerator@23@D@Z"(ptr noalias sret(%"corlib.StringSplitEnumerator@System@bf"), ptr, i64, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?Split__im@StringView@System@bf@@QEAA?AUStringSplitEnumerator@23@DTint@@@Z"(ptr noalias sret(%"corlib.StringSplitEnumerator@System@bf"), ptr, i64, i8, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Split__im@StringView@System@bf@@QEAA?AUStringSplitEnumerator@23@DW4StringSplitOptions@23@@Z"(ptr noalias sret(%"corlib.StringSplitEnumerator@System@bf"), ptr, i64, i8, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?Split__im@StringView@System@bf@@QEAA?AUStringSplitEnumerator@23@DTint@@W4StringSplitOptions@23@@Z"(ptr noalias sret(%"corlib.StringSplitEnumerator@System@bf"), ptr, i64, i8, i64, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?Split__im@StringView@System@bf@@QEAA?AUStringSplitEnumerator@23@Tparams@@PEAV?$Array1@D@23@@Z"(ptr noalias sret(%"corlib.StringSplitEnumerator@System@bf"), ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Split__im@StringView@System@bf@@QEAA?AUStringSplitEnumerator@23@PEAV?$Array1@D@23@@Z"(ptr noalias sret(%"corlib.StringSplitEnumerator@System@bf"), ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Split__im@StringView@System@bf@@QEAA?AUStringSplitEnumerator@23@PEAV?$Array1@D@23@Tint@@@Z"(ptr noalias sret(%"corlib.StringSplitEnumerator@System@bf"), ptr, i64, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Split__im@StringView@System@bf@@QEAA?AUStringSplitEnumerator@23@PEAV?$Array1@D@23@Tint@@W4StringSplitOptions@23@@Z"(ptr noalias sret(%"corlib.StringSplitEnumerator@System@bf"), ptr, i64, ptr, i64, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?Split__im@StringView@System@bf@@QEAA?AUStringSplitEnumerator@23@PEAV?$Array1@D@23@W4StringSplitOptions@23@@Z"(ptr noalias sret(%"corlib.StringSplitEnumerator@System@bf"), ptr, i64, ptr, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?Split__im@StringView@System@bf@@QEAA?AUStringStringSplitEnumerator@23@U123@@Z"(ptr noalias sret(%"corlib.StringStringSplitEnumerator@System@bf"), ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Split__im@StringView@System@bf@@QEAA?AUStringStringSplitEnumerator@23@U123@Tint@@@Z"(ptr noalias sret(%"corlib.StringStringSplitEnumerator@System@bf"), ptr, i64, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Split__im@StringView@System@bf@@QEAA?AUStringStringSplitEnumerator@23@U123@W4StringSplitOptions@23@@Z"(ptr noalias sret(%"corlib.StringStringSplitEnumerator@System@bf"), ptr, i64, ptr, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?Split__im@StringView@System@bf@@QEAA?AUStringStringSplitEnumerator@23@U123@Tint@@W4StringSplitOptions@23@@Z"(ptr noalias sret(%"corlib.StringStringSplitEnumerator@System@bf"), ptr, i64, ptr, i64, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?Split__im@StringView@System@bf@@QEAA?AUStringStringSplitEnumerator@23@Tparams@@U?$Span@UStringView@System@bf@@@23@@Z"(ptr noalias sret(%"corlib.StringStringSplitEnumerator@System@bf"), ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Split__im@StringView@System@bf@@QEAA?AUStringStringSplitEnumerator@23@U?$Span@UStringView@System@bf@@@23@@Z"(ptr noalias sret(%"corlib.StringStringSplitEnumerator@System@bf"), ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Split__im@StringView@System@bf@@QEAA?AUStringStringSplitEnumerator@23@U?$Span@UStringView@System@bf@@@23@Tint@@@Z"(ptr noalias sret(%"corlib.StringStringSplitEnumerator@System@bf"), ptr, i64, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Split__im@StringView@System@bf@@QEAA?AUStringStringSplitEnumerator@23@U?$Span@UStringView@System@bf@@@23@Tint@@W4StringSplitOptions@23@@Z"(ptr noalias sret(%"corlib.StringStringSplitEnumerator@System@bf"), ptr, i64, ptr, i64, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?Split__im@StringView@System@bf@@QEAA?AUStringStringSplitEnumerator@23@U?$Span@UStringView@System@bf@@@23@W4StringSplitOptions@23@@Z"(ptr noalias sret(%"corlib.StringStringSplitEnumerator@System@bf"), ptr, i64, ptr, i8) #0

; Function Attrs: nounwind uwtable
declare ptr @"?Intern__im@StringView@System@bf@@QEAAPEAVString@23@XZ"(ptr, i64) #0

; Function Attrs: nounwind uwtable
define void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr noalias sret(%"corlib.StringView@System@bf") %0, ptr %str) #0 {
entry:
  %__return.addr = alloca ptr, align 8
  %sv = alloca %"corlib.StringView@System@bf", align 8
  store ptr %0, ptr %__return.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %1 = icmp ne ptr %str, null
  br i1 %1, label %if.then, label %if.else

if.then:                                          ; preds = %newScope
  %2 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %sv, i32 0, i32 1
  %get__Ptr = call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr %str)
  store ptr %get__Ptr, ptr %2, align 8
  %3 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %sv, i32 0, i32 2
  %4 = getelementptr inbounds %"corlib.String@System@bf", ptr %str, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = sext i32 %5 to i64
  store i64 %6, ptr %3, align 8
  br label %if.end

if.else:                                          ; preds = %newScope
  call void @llvm.memset.p0.i64(ptr align 8 %sv, i8 0, i64 16, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load %"corlib.StringView@System@bf", ptr %sv, align 8
  %8 = load ptr, ptr %__return.addr, align 8
  store %"corlib.StringView@System@bf" %7, ptr %8, align 8
  br label %exit

exit:                                             ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?ToScopeCStr__im@StringView@System@bf@@QEAAXTint@@@Z"(ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?ToScopedNativeWChar__im@StringView@System@bf@@QEAAXXZ"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@StringView@System@bf@@QEAAXPEAVString@23@@Z"(ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface__im@StringView@System@bf@@IEAAPEAVObject@23@H@Z"(ptr, i64, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare void @"?Assert@Debug@Diagnostics@System@bf@@SAX_NPEAVString@34@1Tint@@@Z"(i1 zeroext, ptr, ptr, i64) #0

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @"?get__Ptr__im@?$Span@D@System@bf@@QEAAPEADXZ"(ptr %this_mPtr, i64 %this_mLength) #1 {
entry:
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  %__return = alloca ptr, align 8
  store ptr %this_mPtr, ptr %0, align 8
  store i64 %this_mLength, ptr %1, align 8
  store ptr %this_mPtr, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %2 = load ptr, ptr %__return, align 8
  ret ptr %2
}

; Function Attrs: nounwind uwtable
declare void @"?Decode@UTF8@Text@System@bf@@SA?AU?$__TUPLE_c_length@_UC@4@PEADTint@@@Z"(ptr noalias sret(%"corlib.?$__TUPLE_c_length@_UC@bf"), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i1 @"?EqualsHelper@String@System@bf@@CA_NPEAD0Tint@@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@?$Span@D@System@bf@@QEAAXXZ"(ptr) #0

attributes #0 = { nounwind uwtable }
attributes #1 = { alwaysinline nounwind uwtable }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
