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

; Function Attrs: nounwind uwtable
define void @"?GetActiveSection@CustomInfo@NumberFormatter@System@bf@@SAXUStringView@34@AEA_N_NAEAH3@Z"(ptr %format_mPtr, i64 %format_mLength, ptr dereferenceable(1) %positive, i1 zeroext %zero, ptr dereferenceable(4) %offset, ptr dereferenceable(4) %length) #0 {
entry:
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  %positive.addr = alloca ptr, align 8
  %offset.addr = alloca ptr, align 8
  %length.addr = alloca ptr, align 8
  %lens = alloca [3 x i32], align 4
  %index = alloca i32, align 4
  %lastPos = alloca i32, align 4
  %quoted = alloca i1, align 1
  %i = alloca i32, align 4
  %c = alloca i8, align 1
  store ptr %format_mPtr, ptr %0, align 8
  store i64 %format_mLength, ptr %1, align 8
  store ptr %positive, ptr %positive.addr, align 8
  store ptr %offset, ptr %offset.addr, align 8
  store ptr %length, ptr %length.addr, align 8
  store [3 x i32] zeroinitializer, ptr %lens, align 4
  store i32 0, ptr %index, align 4
  store i32 0, ptr %lastPos, align 4
  store i1 false, ptr %quoted, align 1
  br label %for.start

for.start:                                        ; preds = %entry
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %for.start
  %2 = load i32, ptr %i, align 4
  %get__Length = call i64 @"?get__Length__im@?$Span@D@System@bf@@QEAATint@@XZ"(ptr %format_mPtr, i64 %format_mLength)
  %3 = sext i32 %2 to i64
  %4 = icmp slt i64 %3, %get__Length
  br i1 %4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, ptr %i, align 4
  %6 = sext i32 %5 to i64
  %get__ = call ptr @"?get____im@UCHK$StringView@System@bf@@QEAAAEADTint@@@Z"(ptr %format_mPtr, i64 %format_mLength, i64 %6)
  %7 = load i8, ptr %get__, align 1
  store i8 %7, ptr %c, align 1
  br label %newScope

newScope:                                         ; preds = %for.body
  %8 = load i8, ptr %c, align 1
  %9 = icmp eq i8 %8, 34
  br i1 %9, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %newScope
  %10 = load i8, ptr %c, align 1
  %11 = icmp eq i8 %10, 39
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %newScope
  %12 = phi i1 [ true, %newScope ], [ %11, %lor.rhs ]
  br i1 %12, label %if.then, label %if.end5

if.then:                                          ; preds = %lor.end
  %13 = load i32, ptr %i, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %lor.end3, label %lor.rhs1

lor.rhs1:                                         ; preds = %if.then
  %15 = load i32, ptr %i, align 4
  %16 = sext i32 %15 to i64
  %17 = sub i64 %16, 1
  %get__2 = call ptr @"?get____im@UCHK$StringView@System@bf@@QEAAAEADTint@@@Z"(ptr %format_mPtr, i64 %format_mLength, i64 %17)
  %18 = load i8, ptr %get__2, align 1
  %19 = icmp ne i8 %18, 92
  br label %lor.end3

lor.end3:                                         ; preds = %lor.rhs1, %if.then
  %20 = phi i1 [ true, %if.then ], [ %19, %lor.rhs1 ]
  br i1 %20, label %if.then4, label %if.end

if.then4:                                         ; preds = %lor.end3
  %21 = load i1, ptr %quoted, align 1
  %22 = xor i1 %21, true
  store i1 %22, ptr %quoted, align 1
  br label %if.end

if.end:                                           ; preds = %if.then4, %lor.end3
  br label %for.inc

if.end5:                                          ; preds = %lor.end
  %23 = load i8, ptr %c, align 1
  %24 = icmp eq i8 %23, 59
  br i1 %24, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.end5
  %25 = load i1, ptr %quoted, align 1
  %26 = xor i1 %25, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end5
  %27 = phi i1 [ false, %if.end5 ], [ %26, %land.rhs ]
  br i1 %27, label %land.rhs6, label %land.end10

land.rhs6:                                        ; preds = %land.end
  %28 = load i32, ptr %i, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %lor.end9, label %lor.rhs7

lor.rhs7:                                         ; preds = %land.rhs6
  %30 = load i32, ptr %i, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 %31, 1
  %get__8 = call ptr @"?get____im@UCHK$StringView@System@bf@@QEAAAEADTint@@@Z"(ptr %format_mPtr, i64 %format_mLength, i64 %32)
  %33 = load i8, ptr %get__8, align 1
  %34 = icmp ne i8 %33, 92
  br label %lor.end9

lor.end9:                                         ; preds = %lor.rhs7, %land.rhs6
  %35 = phi i1 [ true, %land.rhs6 ], [ %34, %lor.rhs7 ]
  br label %land.end10

land.end10:                                       ; preds = %lor.end9, %land.end
  %36 = phi i1 [ false, %land.end ], [ %35, %lor.end9 ]
  br i1 %36, label %if.then11, label %if.end15

if.then11:                                        ; preds = %land.end10
  %37 = load i32, ptr %index, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %index, align 4
  %39 = getelementptr inbounds [3 x i32], ptr %lens, i64 0, i32 %37
  %40 = load i32, ptr %i, align 4
  %41 = load i32, ptr %lastPos, align 4
  %42 = sub i32 %40, %41
  store i32 %42, ptr %39, align 4
  %43 = load i32, ptr %i, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %lastPos, align 4
  br label %newScope12

newScope12:                                       ; preds = %if.then11
  %45 = load i32, ptr %index, align 4
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %if.then13, label %if.end14

if.then13:                                        ; preds = %newScope12
  br label %for.end

if.end14:                                         ; preds = %newScope12
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %land.end10
  br label %for.inc

for.inc:                                          ; preds = %if.end15, %if.end
  %47 = load i32, ptr %i, align 4
  %48 = add i32 %47, 1
  store i32 %48, ptr %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then13, %for.cond
  %49 = load i32, ptr %index, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %if.then16, label %if.end18

if.then16:                                        ; preds = %for.end
  %51 = load ptr, ptr %offset.addr, align 8
  store i32 0, ptr %51, align 4
  %52 = load ptr, ptr %length.addr, align 8
  %get__Length17 = call i64 @"?get__Length__im@?$Span@D@System@bf@@QEAATint@@XZ"(ptr %format_mPtr, i64 %format_mLength)
  %53 = trunc i64 %get__Length17 to i32
  store i32 %53, ptr %52, align 4
  br label %exit

if.end18:                                         ; preds = %for.end
  %54 = load i32, ptr %index, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %if.then19, label %if.end28

if.then19:                                        ; preds = %if.end18
  %56 = load ptr, ptr %positive.addr, align 8
  %57 = load i1, ptr %56, align 1
  br i1 %57, label %lor.end21, label %lor.rhs20

lor.rhs20:                                        ; preds = %if.then19
  br label %lor.end21

lor.end21:                                        ; preds = %lor.rhs20, %if.then19
  %58 = phi i1 [ true, %if.then19 ], [ %zero, %lor.rhs20 ]
  br i1 %58, label %if.then22, label %if.end23

if.then22:                                        ; preds = %lor.end21
  %59 = load ptr, ptr %offset.addr, align 8
  store i32 0, ptr %59, align 4
  %60 = load ptr, ptr %length.addr, align 8
  %61 = getelementptr inbounds [3 x i32], ptr %lens, i64 0, i64 0
  %62 = load i32, ptr %61, align 4
  store i32 %62, ptr %60, align 4
  br label %exit

if.end23:                                         ; preds = %lor.end21
  %63 = getelementptr inbounds [3 x i32], ptr %lens, i64 0, i64 0
  %64 = load i32, ptr %63, align 4
  %65 = add i32 %64, 1
  %get__Length24 = call i64 @"?get__Length__im@?$Span@D@System@bf@@QEAATint@@XZ"(ptr %format_mPtr, i64 %format_mLength)
  %66 = sext i32 %65 to i64
  %67 = icmp slt i64 %66, %get__Length24
  br i1 %67, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end23
  %68 = load ptr, ptr %positive.addr, align 8
  store i1 true, ptr %68, align 1
  %69 = load ptr, ptr %offset.addr, align 8
  %70 = getelementptr inbounds [3 x i32], ptr %lens, i64 0, i64 0
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, 1
  store i32 %72, ptr %69, align 4
  %73 = load ptr, ptr %length.addr, align 8
  %get__Length26 = call i64 @"?get__Length__im@?$Span@D@System@bf@@QEAATint@@XZ"(ptr %format_mPtr, i64 %format_mLength)
  %74 = trunc i64 %get__Length26 to i32
  %75 = load ptr, ptr %offset.addr, align 8
  %76 = load i32, ptr %75, align 4
  %77 = sub i32 %74, %76
  store i32 %77, ptr %73, align 4
  br label %exit

if.else:                                          ; preds = %if.end23
  %78 = load ptr, ptr %offset.addr, align 8
  store i32 0, ptr %78, align 4
  %79 = load ptr, ptr %length.addr, align 8
  %80 = getelementptr inbounds [3 x i32], ptr %lens, i64 0, i64 0
  %81 = load i32, ptr %80, align 4
  store i32 %81, ptr %79, align 4
  br label %exit

if.end28:                                         ; preds = %if.end18
  br i1 %zero, label %if.then29, label %if.end40

if.then29:                                        ; preds = %if.end28
  %82 = load i32, ptr %index, align 4
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %if.then30, label %if.end36

if.then30:                                        ; preds = %if.then29
  %get__Length31 = call i64 @"?get__Length__im@?$Span@D@System@bf@@QEAATint@@XZ"(ptr %format_mPtr, i64 %format_mLength)
  %84 = load i32, ptr %lastPos, align 4
  %85 = sext i32 %84 to i64
  %86 = sub i64 %get__Length31, %85
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %if.then32, label %if.else33

if.then32:                                        ; preds = %if.then30
  %88 = load ptr, ptr %offset.addr, align 8
  store i32 0, ptr %88, align 4
  %89 = load ptr, ptr %length.addr, align 8
  %90 = getelementptr inbounds [3 x i32], ptr %lens, i64 0, i64 0
  %91 = load i32, ptr %90, align 4
  store i32 %91, ptr %89, align 4
  br label %if.end35

if.else33:                                        ; preds = %if.then30
  %92 = load ptr, ptr %offset.addr, align 8
  %93 = getelementptr inbounds [3 x i32], ptr %lens, i64 0, i64 0
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr inbounds [3 x i32], ptr %lens, i64 0, i64 1
  %96 = load i32, ptr %95, align 4
  %97 = add i32 %94, %96
  %98 = add i32 %97, 2
  store i32 %98, ptr %92, align 4
  %99 = load ptr, ptr %length.addr, align 8
  %get__Length34 = call i64 @"?get__Length__im@?$Span@D@System@bf@@QEAATint@@XZ"(ptr %format_mPtr, i64 %format_mLength)
  %100 = trunc i64 %get__Length34 to i32
  %101 = load ptr, ptr %offset.addr, align 8
  %102 = load i32, ptr %101, align 4
  %103 = sub i32 %100, %102
  store i32 %103, ptr %99, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %if.then32
  br label %exit

if.end36:                                         ; preds = %if.then29
  %104 = getelementptr inbounds [3 x i32], ptr %lens, i64 0, i64 2
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %if.then37, label %if.else38

if.then37:                                        ; preds = %if.end36
  %107 = load ptr, ptr %offset.addr, align 8
  store i32 0, ptr %107, align 4
  %108 = load ptr, ptr %length.addr, align 8
  %109 = getelementptr inbounds [3 x i32], ptr %lens, i64 0, i64 0
  %110 = load i32, ptr %109, align 4
  store i32 %110, ptr %108, align 4
  br label %if.end39

if.else38:                                        ; preds = %if.end36
  %111 = load ptr, ptr %offset.addr, align 8
  %112 = getelementptr inbounds [3 x i32], ptr %lens, i64 0, i64 0
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr inbounds [3 x i32], ptr %lens, i64 0, i64 1
  %115 = load i32, ptr %114, align 4
  %116 = add i32 %113, %115
  %117 = add i32 %116, 2
  store i32 %117, ptr %111, align 4
  %118 = load ptr, ptr %length.addr, align 8
  %119 = getelementptr inbounds [3 x i32], ptr %lens, i64 0, i64 2
  %120 = load i32, ptr %119, align 4
  store i32 %120, ptr %118, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.else38, %if.then37
  br label %exit

if.end40:                                         ; preds = %if.end28
  %121 = load ptr, ptr %positive.addr, align 8
  %122 = load i1, ptr %121, align 1
  br i1 %122, label %if.then41, label %if.end42

if.then41:                                        ; preds = %if.end40
  %123 = load ptr, ptr %offset.addr, align 8
  store i32 0, ptr %123, align 4
  %124 = load ptr, ptr %length.addr, align 8
  %125 = getelementptr inbounds [3 x i32], ptr %lens, i64 0, i64 0
  %126 = load i32, ptr %125, align 4
  store i32 %126, ptr %124, align 4
  br label %exit

if.end42:                                         ; preds = %if.end40
  %127 = getelementptr inbounds [3 x i32], ptr %lens, i64 0, i64 1
  %128 = load i32, ptr %127, align 4
  %129 = icmp sgt i32 %128, 0
  br i1 %129, label %if.then43, label %if.end44

if.then43:                                        ; preds = %if.end42
  %130 = load ptr, ptr %positive.addr, align 8
  store i1 true, ptr %130, align 1
  %131 = load ptr, ptr %offset.addr, align 8
  %132 = getelementptr inbounds [3 x i32], ptr %lens, i64 0, i64 0
  %133 = load i32, ptr %132, align 4
  %134 = add i32 %133, 1
  store i32 %134, ptr %131, align 4
  %135 = load ptr, ptr %length.addr, align 8
  %136 = getelementptr inbounds [3 x i32], ptr %lens, i64 0, i64 1
  %137 = load i32, ptr %136, align 4
  store i32 %137, ptr %135, align 4
  br label %exit

if.end44:                                         ; preds = %if.end42
  %138 = load ptr, ptr %offset.addr, align 8
  store i32 0, ptr %138, align 4
  %139 = load ptr, ptr %length.addr, align 8
  %140 = getelementptr inbounds [3 x i32], ptr %lens, i64 0, i64 0
  %141 = load i32, ptr %140, align 4
  store i32 %141, ptr %139, align 4
  br label %exit

exit:                                             ; preds = %if.end44, %if.then43, %if.then41, %if.end39, %if.end35, %if.else, %if.then25, %if.then22, %if.then16
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Parse@CustomInfo@NumberFormatter@System@bf@@SAXPEAV1234@UStringView@34@HHPEAVNumberFormatInfo@Globalization@34@@Z"(ptr %info, ptr %format_mPtr, i64 %format_mLength, i32 %offset, i32 %length, ptr %nfi) #0 {
entry:
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  %literal = alloca i8, align 1
  %integerArea = alloca i1, align 1
  %decimalArea = alloca i1, align 1
  %exponentArea = alloca i1, align 1
  %sharpContinues = alloca i1, align 1
  %groupSeparatorCounter = alloca i32, align 4
  %i = alloca i64, align 8
  %c = alloca i8, align 1
  %nc = alloca i8, align 1
  %2 = alloca %"corlib.?$__TUPLE_c_length@_UC@bf", align 4
  store ptr %format_mPtr, ptr %0, align 8
  store i64 %format_mLength, ptr %1, align 8
  store i8 0, ptr %literal, align 1
  store i1 true, ptr %integerArea, align 1
  store i1 false, ptr %decimalArea, align 1
  store i1 false, ptr %exponentArea, align 1
  store i1 true, ptr %sharpContinues, align 1
  store i32 0, ptr %groupSeparatorCounter, align 4
  br label %for.start

for.start:                                        ; preds = %entry
  %3 = sext i32 %offset to i64
  store i64 %3, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %for.start
  %4 = load i64, ptr %i, align 8
  %5 = sext i32 %offset to i64
  %6 = sub i64 %4, %5
  %7 = sext i32 %length to i64
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64, ptr %i, align 8
  %get__ = call ptr @"?get____im@UCHK$StringView@System@bf@@QEAAAEADTint@@@Z"(ptr %format_mPtr, i64 %format_mLength, i64 %9)
  %10 = load i8, ptr %get__, align 1
  store i8 %10, ptr %c, align 1
  br label %newScope

newScope:                                         ; preds = %for.body
  %11 = load i8, ptr %c, align 1
  %12 = load i8, ptr %literal, align 1
  %13 = icmp eq i8 %11, %12
  br i1 %13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %newScope
  %14 = load i8, ptr %c, align 1
  %15 = icmp ne i8 %14, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %newScope
  %16 = phi i1 [ false, %newScope ], [ %15, %land.rhs ]
  br i1 %16, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  store i8 0, ptr %literal, align 1
  br label %for.inc

if.end:                                           ; preds = %land.end
  %17 = load i8, ptr %literal, align 1
  %18 = icmp ne i8 %17, 0
  br i1 %18, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  br label %for.inc

if.end2:                                          ; preds = %if.end
  %19 = load i1, ptr %exponentArea, align 1
  br i1 %19, label %land.rhs3, label %land.end8

land.rhs3:                                        ; preds = %if.end2
  %20 = load i8, ptr %c, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %land.rhs4, label %land.end5

land.rhs4:                                        ; preds = %land.rhs3
  %22 = load i8, ptr %c, align 1
  %23 = icmp ne i8 %22, 48
  br label %land.end5

land.end5:                                        ; preds = %land.rhs4, %land.rhs3
  %24 = phi i1 [ false, %land.rhs3 ], [ %23, %land.rhs4 ]
  br i1 %24, label %land.rhs6, label %land.end7

land.rhs6:                                        ; preds = %land.end5
  %25 = load i8, ptr %c, align 1
  %26 = icmp ne i8 %25, 35
  br label %land.end7

land.end7:                                        ; preds = %land.rhs6, %land.end5
  %27 = phi i1 [ false, %land.end5 ], [ %26, %land.rhs6 ]
  br label %land.end8

land.end8:                                        ; preds = %land.end7, %if.end2
  %28 = phi i1 [ false, %if.end2 ], [ %27, %land.end7 ]
  br i1 %28, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.end8
  store i1 false, ptr %exponentArea, align 1
  %29 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i32 0, i32 2
  %30 = load i32, ptr %29, align 4
  %31 = icmp slt i32 %30, 0
  store i1 %31, ptr %integerArea, align 1
  %32 = load i1, ptr %integerArea, align 1
  %33 = xor i1 %32, true
  store i1 %33, ptr %decimalArea, align 1
  %34 = load i64, ptr %i, align 8
  %35 = sub i64 %34, 1
  store i64 %35, ptr %i, align 8
  br label %for.inc

if.end10:                                         ; preds = %land.end8
  %36 = load i8, ptr %c, align 1
  br label %newScope11

newScope11:                                       ; preds = %if.end10
  switch i8 %36, label %noSwitch [
    i8 92, label %switch.0
    i8 39, label %switch.1
    i8 34, label %switch.2
    i8 35, label %switch.3
    i8 48, label %switch.4
    i8 101, label %switch.5
    i8 69, label %switch.6
    i8 46, label %switch.7
    i8 37, label %switch.8
    i8 44, label %switch.9
  ]

noSwitch:                                         ; preds = %newScope11
  br label %default

switch.0:                                         ; preds = %newScope11
  %37 = load i64, ptr %i, align 8
  %38 = add i64 %37, 1
  store i64 %38, ptr %i, align 8
  br label %for.inc

switch.1:                                         ; preds = %newScope11
  br label %switch.end

switch.2:                                         ; preds = %newScope11
  %39 = load i8, ptr %c, align 1
  %40 = icmp eq i8 %39, 34
  br i1 %40, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %switch.2
  %41 = load i8, ptr %c, align 1
  %42 = icmp eq i8 %41, 39
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %switch.2
  %43 = phi i1 [ true, %switch.2 ], [ %42, %lor.rhs ]
  br i1 %43, label %if.then12, label %if.end13

if.then12:                                        ; preds = %lor.end
  %44 = load i8, ptr %c, align 1
  store i8 %44, ptr %literal, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %lor.end
  br label %for.inc

switch.3:                                         ; preds = %newScope11
  %45 = load i1, ptr %sharpContinues, align 1
  br i1 %45, label %land.rhs14, label %land.end15

land.rhs14:                                       ; preds = %switch.3
  %46 = load i1, ptr %integerArea, align 1
  br label %land.end15

land.end15:                                       ; preds = %land.rhs14, %switch.3
  %47 = phi i1 [ false, %switch.3 ], [ %46, %land.rhs14 ]
  br i1 %47, label %if.then16, label %if.else

if.then16:                                        ; preds = %land.end15
  %48 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i32 0, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, 1
  store i32 %50, ptr %48, align 4
  br label %if.end22

if.else:                                          ; preds = %land.end15
  %51 = load i1, ptr %decimalArea, align 1
  br i1 %51, label %if.then17, label %if.else18

if.then17:                                        ; preds = %if.else
  %52 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = add i32 %53, 1
  store i32 %54, ptr %52, align 4
  br label %if.end21

if.else18:                                        ; preds = %if.else
  %55 = load i1, ptr %exponentArea, align 1
  br i1 %55, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.else18
  %56 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i32 0, i32 8
  %57 = load i32, ptr %56, align 4
  %58 = add i32 %57, 1
  store i32 %58, ptr %56, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.else18
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.then17
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.then16
  br label %switch.4

switch.4:                                         ; preds = %newScope11, %if.end22
  %59 = load i8, ptr %c, align 1
  %60 = icmp ne i8 %59, 35
  br i1 %60, label %if.then23, label %if.end30

if.then23:                                        ; preds = %switch.4
  store i1 false, ptr %sharpContinues, align 1
  br label %newScope24

newScope24:                                       ; preds = %if.then23
  %61 = load i1, ptr %decimalArea, align 1
  br i1 %61, label %if.then25, label %if.else26

if.then25:                                        ; preds = %newScope24
  %62 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i32 0, i32 3
  store i32 0, ptr %62, align 4
  br label %if.end29

if.else26:                                        ; preds = %newScope24
  %63 = load i1, ptr %exponentArea, align 1
  br i1 %63, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.else26
  %64 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i32 0, i32 8
  store i32 0, ptr %64, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.else26
  br label %if.end29

if.end29:                                         ; preds = %if.end28, %if.then25
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %switch.4
  %65 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i32 0, i32 6
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end30
  %68 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i32 0, i32 6
  %69 = load i64, ptr %i, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, ptr %68, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end30
  %71 = load i1, ptr %integerArea, align 1
  br i1 %71, label %if.then33, label %if.else37

if.then33:                                        ; preds = %if.end32
  %72 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i32 0, i32 4
  %73 = load i32, ptr %72, align 4
  %74 = add i32 %73, 1
  store i32 %74, ptr %72, align 4
  br label %newScope34

newScope34:                                       ; preds = %if.then33
  %75 = load i32, ptr %groupSeparatorCounter, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %if.then35, label %if.end36

if.then35:                                        ; preds = %newScope34
  %77 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i32 0, i32 12
  store i1 true, ptr %77, align 1
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %newScope34
  store i32 0, ptr %groupSeparatorCounter, align 4
  br label %if.end43

if.else37:                                        ; preds = %if.end32
  %78 = load i1, ptr %decimalArea, align 1
  br i1 %78, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.else37
  %79 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, 1
  store i32 %81, ptr %79, align 4
  br label %if.end42

if.else39:                                        ; preds = %if.else37
  %82 = load i1, ptr %exponentArea, align 1
  br i1 %82, label %if.then40, label %if.end41

if.then40:                                        ; preds = %if.else39
  %83 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i32 0, i32 7
  %84 = load i32, ptr %83, align 4
  %85 = add i32 %84, 1
  store i32 %85, ptr %83, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %if.else39
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.then38
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.end36
  br label %switch.end

switch.5:                                         ; preds = %newScope11
  br label %switch.end

switch.6:                                         ; preds = %newScope11
  %86 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i32 0, i32 13
  %87 = load i1, ptr %86, align 1
  br i1 %87, label %if.then44, label %if.end45

if.then44:                                        ; preds = %switch.6
  br label %switch.end

if.end45:                                         ; preds = %switch.6
  %88 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i32 0, i32 13
  store i1 true, ptr %88, align 1
  store i1 false, ptr %integerArea, align 1
  store i1 false, ptr %decimalArea, align 1
  store i1 true, ptr %exponentArea, align 1
  br label %newScope46

newScope46:                                       ; preds = %if.end45
  %89 = load i64, ptr %i, align 8
  %90 = add i64 %89, 1
  %91 = sext i32 %offset to i64
  %92 = sub i64 %90, %91
  %93 = sext i32 %length to i64
  %94 = icmp slt i64 %92, %93
  br i1 %94, label %if.then47, label %if.end64

if.then47:                                        ; preds = %newScope46
  %95 = load i64, ptr %i, align 8
  %96 = add i64 %95, 1
  %get__48 = call ptr @"?get____im@UCHK$StringView@System@bf@@QEAAAEADTint@@@Z"(ptr %format_mPtr, i64 %format_mLength, i64 %96)
  %97 = load i8, ptr %get__48, align 1
  store i8 %97, ptr %nc, align 1
  br label %newScope49

newScope49:                                       ; preds = %if.then47
  %98 = load i8, ptr %nc, align 1
  %99 = icmp eq i8 %98, 43
  br i1 %99, label %if.then50, label %if.end51

if.then50:                                        ; preds = %newScope49
  %100 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i32 0, i32 14
  store i1 false, ptr %100, align 1
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %newScope49
  %101 = load i8, ptr %nc, align 1
  %102 = icmp eq i8 %101, 43
  br i1 %102, label %lor.end53, label %lor.rhs52

lor.rhs52:                                        ; preds = %if.end51
  %103 = load i8, ptr %nc, align 1
  %104 = icmp eq i8 %103, 45
  br label %lor.end53

lor.end53:                                        ; preds = %lor.rhs52, %if.end51
  %105 = phi i1 [ true, %if.end51 ], [ %104, %lor.rhs52 ]
  br i1 %105, label %if.then54, label %if.else55

if.then54:                                        ; preds = %lor.end53
  %106 = load i64, ptr %i, align 8
  %107 = add i64 %106, 1
  store i64 %107, ptr %i, align 8
  br label %if.end63

if.else55:                                        ; preds = %lor.end53
  %108 = load i8, ptr %nc, align 1
  %109 = icmp ne i8 %108, 48
  br i1 %109, label %land.rhs56, label %land.end57

land.rhs56:                                       ; preds = %if.else55
  %110 = load i8, ptr %nc, align 1
  %111 = icmp ne i8 %110, 35
  br label %land.end57

land.end57:                                       ; preds = %land.rhs56, %if.else55
  %112 = phi i1 [ false, %if.else55 ], [ %111, %land.rhs56 ]
  br i1 %112, label %if.then58, label %if.end62

if.then58:                                        ; preds = %land.end57
  %113 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i32 0, i32 13
  store i1 false, ptr %113, align 1
  br label %newScope59

newScope59:                                       ; preds = %if.then58
  %114 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i32 0, i32 2
  %115 = load i32, ptr %114, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %if.then60, label %if.end61

if.then60:                                        ; preds = %newScope59
  store i1 true, ptr %integerArea, align 1
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %newScope59
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %land.end57
  br label %if.end63

if.end63:                                         ; preds = %if.end62, %if.then54
  br label %if.end64

if.end64:                                         ; preds = %if.end63, %newScope46
  br label %switch.end

switch.7:                                         ; preds = %newScope11
  store i1 false, ptr %integerArea, align 1
  store i1 true, ptr %decimalArea, align 1
  store i1 false, ptr %exponentArea, align 1
  br label %newScope65

newScope65:                                       ; preds = %switch.7
  %117 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i32 0, i32 2
  %118 = load i32, ptr %117, align 4
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %if.then66, label %if.end67

if.then66:                                        ; preds = %newScope65
  %120 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i32 0, i32 2
  %121 = load i64, ptr %i, align 8
  %122 = trunc i64 %121 to i32
  store i32 %122, ptr %120, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %newScope65
  br label %switch.end

switch.8:                                         ; preds = %newScope11
  %123 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i32 0, i32 10
  %124 = load i32, ptr %123, align 4
  %125 = add i32 %124, 1
  store i32 %125, ptr %123, align 4
  br label %switch.end

switch.9:                                         ; preds = %newScope11
  %126 = load i1, ptr %integerArea, align 1
  br i1 %126, label %land.rhs68, label %land.end69

land.rhs68:                                       ; preds = %switch.9
  %127 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i32 0, i32 4
  %128 = load i32, ptr %127, align 4
  %129 = icmp sgt i32 %128, 0
  br label %land.end69

land.end69:                                       ; preds = %land.rhs68, %switch.9
  %130 = phi i1 [ false, %switch.9 ], [ %129, %land.rhs68 ]
  br i1 %130, label %if.then70, label %if.end71

if.then70:                                        ; preds = %land.end69
  %131 = load i32, ptr %groupSeparatorCounter, align 4
  %132 = add i32 %131, 1
  store i32 %132, ptr %groupSeparatorCounter, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %land.end69
  br label %switch.end

default:                                          ; preds = %noSwitch
  %133 = load i8, ptr %c, align 1
  %134 = icmp uge i8 %133, -128
  br i1 %134, label %if.then72, label %if.end76

if.then72:                                        ; preds = %default
  %135 = load i64, ptr %i, align 8
  call void @"?GetChar32__im@StringView@System@bf@@QEAA?AU?$__TUPLE_c_length@_UC@3@Tint@@@Z"(ptr sret(%"corlib.?$__TUPLE_c_length@_UC@bf") %2, ptr %format_mPtr, i64 %format_mLength, i64 %135)
  %136 = load %"corlib.?$__TUPLE_c_length@_UC@bf", ptr %2, align 4
  %137 = extractvalue %"corlib.?$__TUPLE_c_length@_UC@bf" %136, 1
  %138 = extractvalue %"corlib.?$__TUPLE_c_length@_UC@bf" %136, 2
  br label %newScope73

newScope73:                                       ; preds = %if.then72
  %139 = icmp eq i32 %137, 8240
  br i1 %139, label %if.then74, label %if.end75

if.then74:                                        ; preds = %newScope73
  %140 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i32 0, i32 11
  %141 = load i32, ptr %140, align 4
  %142 = add i32 %141, 1
  store i32 %142, ptr %140, align 4
  %143 = sext i8 %138 to i64
  %144 = sub i64 %143, 1
  %145 = load i64, ptr %i, align 8
  %146 = add i64 %145, %144
  store i64 %146, ptr %i, align 8
  br label %switch.end

if.end75:                                         ; preds = %newScope73
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %default
  br label %switch.end

switch.end:                                       ; preds = %if.end76, %if.then74, %if.end71, %switch.8, %if.end67, %if.end64, %if.then44, %switch.5, %if.end43, %switch.1
  br label %for.inc

for.inc:                                          ; preds = %switch.end, %if.end13, %switch.0, %if.then9, %if.then1, %if.then
  %147 = load i64, ptr %i, align 8
  %148 = add i64 %147, 1
  store i64 %148, ptr %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %149 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i32 0, i32 7
  %150 = load i32, ptr %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %if.then77, label %if.else78

if.then77:                                        ; preds = %for.end
  %152 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i32 0, i32 13
  store i1 false, ptr %152, align 1
  br label %if.end79

if.else78:                                        ; preds = %for.end
  %153 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i32 0, i32 5
  store i32 0, ptr %153, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.else78, %if.then77
  %154 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i32 0, i32 1
  %155 = load i32, ptr %154, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %if.then80, label %if.end81

if.then80:                                        ; preds = %if.end79
  %157 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i32 0, i32 2
  store i32 -1, ptr %157, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %if.end79
  %158 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %info, i32 0, i32 9
  %159 = load i32, ptr %groupSeparatorCounter, align 4
  %160 = mul i32 %159, 3
  %161 = load i32, ptr %158, align 4
  %162 = add i32 %161, %160
  store i32 %162, ptr %158, align 4
  br label %exit

exit:                                             ; preds = %if.end81
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Format@CustomInfo@NumberFormatter@System@bf@@QEAAXUStringView@34@Tint@@1PEAVNumberFormatInfo@Globalization@34@_NPEAVString@34@444@Z"(ptr %this, ptr %format_mPtr, i64 %format_mLength, i64 %offset, i64 %length, ptr %nfi, i1 zeroext %positive, ptr %sb_int, ptr %sb_dec, ptr %sb_exp, ptr %sb) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  %sb_exp1 = alloca ptr, align 8
  %startPos = alloca i64, align 8
  %literal = alloca i8, align 1
  %integerArea = alloca i1, align 1
  %decimalArea = alloca i1, align 1
  %intSharpCounter = alloca i64, align 8
  %sb_int_index = alloca i64, align 8
  %sb_dec_index = alloca i64, align 8
  %2 = alloca %"corlib.?$Span@H@System@bf", align 8
  %groups = alloca %"corlib.?$Span@H@System@bf", align 8
  %3 = alloca %"corlib.StringView@System@bf", align 8
  %groupSeparator = alloca %"corlib.StringView@System@bf", align 8
  %intLen = alloca i64, align 8
  %total = alloca i64, align 8
  %groupIndex = alloca i64, align 8
  %counter = alloca i64, align 8
  %groupSize = alloca i64, align 8
  %i = alloca i64, align 8
  %fraction = alloca i64, align 8
  %i28 = alloca i64, align 8
  %c = alloca i8, align 1
  %flag1 = alloca i1, align 1
  %flag2 = alloca i1, align 1
  %q = alloca i64, align 8
  %4 = alloca %"corlib.StringView@System@bf", align 8
  %5 = alloca %"corlib.StringView@System@bf", align 8
  %6 = alloca %"corlib.?$__TUPLE_c_length@_UC@bf", align 4
  %7 = alloca %"corlib.StringView@System@bf", align 8
  %8 = alloca %"corlib.StringView@System@bf", align 8
  store ptr %this, ptr %this.addr, align 8
  %9 = load ptr, ptr %this.addr, align 8
  store ptr %format_mPtr, ptr %0, align 8
  store i64 %format_mLength, ptr %1, align 8
  store ptr %sb_exp, ptr %sb_exp1, align 8
  %get__Length = call i64 @"?get__Length@String@System@bf@@QEAATint@@XZ"(ptr %sb)
  store i64 %get__Length, ptr %startPos, align 8
  store i8 0, ptr %literal, align 1
  store i1 true, ptr %integerArea, align 1
  store i1 false, ptr %decimalArea, align 1
  store i64 0, ptr %intSharpCounter, align 8
  store i64 0, ptr %sb_int_index, align 8
  store i64 0, ptr %sb_dec_index, align 8
  call void @"?get__NumberGroupSizes@NumberFormatInfo@Globalization@System@bf@@QEAA?AU?$Span@H@34@XZ"(ptr %nfi, ptr sret(%"corlib.?$Span@H@System@bf") %2)
  %10 = load %"corlib.?$Span@H@System@bf", ptr %2, align 8
  store %"corlib.?$Span@H@System@bf" %10, ptr %groups, align 8
  call void @"?get__NumberGroupSeparator@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr %nfi, ptr sret(%"corlib.StringView@System@bf") %3)
  %11 = load %"corlib.StringView@System@bf", ptr %3, align 8
  store %"corlib.StringView@System@bf" %11, ptr %groupSeparator, align 8
  store i64 0, ptr %intLen, align 8
  store i64 0, ptr %total, align 8
  store i64 0, ptr %groupIndex, align 8
  store i64 0, ptr %counter, align 8
  store i64 0, ptr %groupSize, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %12 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %9, i32 0, i32 12
  %13 = load i1, ptr %12, align 1
  br i1 %13, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %newScope
  %14 = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %groups, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %groups, i32 0, i32 2
  %17 = load i64, ptr %16, align 8
  %get__Length2 = call i64 @"?get__Length__im@?$Span@H@System@bf@@QEAATint@@XZ"(ptr %15, i64 %17)
  %18 = icmp sgt i64 %get__Length2, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %newScope
  %19 = phi i1 [ false, %newScope ], [ %18, %land.rhs ]
  br i1 %19, label %if.then, label %if.else25

if.then:                                          ; preds = %land.end
  %get__Length3 = call i64 @"?get__Length@String@System@bf@@QEAATint@@XZ"(ptr %sb_int)
  store i64 %get__Length3, ptr %intLen, align 8
  br label %for.start

for.start:                                        ; preds = %if.then
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %for.start
  %20 = load i64, ptr %i, align 8
  %21 = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %groups, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %groups, i32 0, i32 2
  %24 = load i64, ptr %23, align 8
  %get__Length4 = call i64 @"?get__Length__im@?$Span@H@System@bf@@QEAATint@@XZ"(ptr %22, i64 %24)
  %25 = icmp slt i64 %20, %get__Length4
  br i1 %25, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %26 = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %groups, i32 0, i32 1
  %27 = load ptr, ptr %26, align 8
  %28 = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %groups, i32 0, i32 2
  %29 = load i64, ptr %28, align 8
  %30 = load i64, ptr %i, align 8
  %get__ = call ptr @"?get____im@UCHK$?$Span@H@System@bf@@QEAAAEAHTint@@@Z"(ptr %27, i64 %29, i64 %30)
  %31 = load i32, ptr %get__, align 4
  %32 = load i64, ptr %total, align 8
  %33 = sext i32 %31 to i64
  %34 = add i64 %32, %33
  store i64 %34, ptr %total, align 8
  br label %newScope5

newScope5:                                        ; preds = %for.body
  %35 = load i64, ptr %total, align 8
  %36 = load i64, ptr %intLen, align 8
  %37 = icmp sle i64 %35, %36
  br i1 %37, label %if.then6, label %if.end

if.then6:                                         ; preds = %newScope5
  %38 = load i64, ptr %i, align 8
  store i64 %38, ptr %groupIndex, align 8
  br label %if.end

if.end:                                           ; preds = %if.then6, %newScope5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %39 = load i64, ptr %i, align 8
  %40 = add i64 %39, 1
  store i64 %40, ptr %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %41 = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %groups, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %groups, i32 0, i32 2
  %44 = load i64, ptr %43, align 8
  %45 = load i64, ptr %groupIndex, align 8
  %get__7 = call ptr @"?get____im@UCHK$?$Span@H@System@bf@@QEAAAEAHTint@@@Z"(ptr %42, i64 %44, i64 %45)
  %46 = load i32, ptr %get__7, align 4
  %47 = sext i32 %46 to i64
  store i64 %47, ptr %groupSize, align 8
  %48 = load i64, ptr %intLen, align 8
  %49 = load i64, ptr %total, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %cond.then, label %cond.else

cond.then:                                        ; preds = %for.end
  %51 = load i64, ptr %intLen, align 8
  %52 = load i64, ptr %total, align 8
  %53 = sub i64 %51, %52
  br label %cond.end

cond.else:                                        ; preds = %for.end
  br label %cond.end

cond.end:                                         ; preds = %cond.else, %cond.then
  %54 = phi i64 [ %53, %cond.then ], [ 0, %cond.else ]
  br label %cond.cont

cond.cont:                                        ; preds = %cond.end
  store i64 %54, ptr %fraction, align 8
  br label %newScope8

newScope8:                                        ; preds = %cond.cont
  %55 = load i64, ptr %groupSize, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %if.then9, label %if.end18

if.then9:                                         ; preds = %newScope8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then9
  %57 = load i64, ptr %groupIndex, align 8
  %58 = icmp sge i64 %57, 0
  br i1 %58, label %land.rhs10, label %land.end12

land.rhs10:                                       ; preds = %while.cond
  %59 = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %groups, i32 0, i32 1
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %groups, i32 0, i32 2
  %62 = load i64, ptr %61, align 8
  %63 = load i64, ptr %groupIndex, align 8
  %get__11 = call ptr @"?get____im@UCHK$?$Span@H@System@bf@@QEAAAEAHTint@@@Z"(ptr %60, i64 %62, i64 %63)
  %64 = load i32, ptr %get__11, align 4
  %65 = icmp eq i32 %64, 0
  br label %land.end12

land.end12:                                       ; preds = %land.rhs10, %while.cond
  %66 = phi i1 [ false, %while.cond ], [ %65, %land.rhs10 ]
  br i1 %66, label %while.body, label %while.end

while.body:                                       ; preds = %land.end12
  %67 = load i64, ptr %groupIndex, align 8
  %68 = sub i64 %67, 1
  store i64 %68, ptr %groupIndex, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end12
  %69 = load i64, ptr %fraction, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %cond.then13, label %cond.else14

cond.then13:                                      ; preds = %while.end
  %71 = load i64, ptr %fraction, align 8
  br label %cond.end16

cond.else14:                                      ; preds = %while.end
  %72 = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %groups, i32 0, i32 1
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %groups, i32 0, i32 2
  %75 = load i64, ptr %74, align 8
  %76 = load i64, ptr %groupIndex, align 8
  %get__15 = call ptr @"?get____im@UCHK$?$Span@H@System@bf@@QEAAAEAHTint@@@Z"(ptr %73, i64 %75, i64 %76)
  %77 = load i32, ptr %get__15, align 4
  %78 = sext i32 %77 to i64
  br label %cond.end16

cond.end16:                                       ; preds = %cond.else14, %cond.then13
  %79 = phi i64 [ %71, %cond.then13 ], [ %78, %cond.else14 ]
  br label %cond.cont17

cond.cont17:                                      ; preds = %cond.end16
  store i64 %79, ptr %groupSize, align 8
  br label %if.end18

if.end18:                                         ; preds = %cond.cont17, %newScope8
  %80 = load i64, ptr %fraction, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.end18
  %82 = load i64, ptr %groupSize, align 8
  store i64 %82, ptr %counter, align 8
  br label %if.end24

if.else:                                          ; preds = %if.end18
  %83 = load i64, ptr %fraction, align 8
  %84 = load i64, ptr %groupSize, align 8
  %85 = sdiv i64 %83, %84
  %86 = load i64, ptr %groupIndex, align 8
  %87 = add i64 %86, %85
  store i64 %87, ptr %groupIndex, align 8
  %88 = load i64, ptr %fraction, align 8
  %89 = load i64, ptr %groupSize, align 8
  %90 = srem i64 %88, %89
  store i64 %90, ptr %counter, align 8
  br label %newScope20

newScope20:                                       ; preds = %if.else
  %91 = load i64, ptr %counter, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %if.then21, label %if.else22

if.then21:                                        ; preds = %newScope20
  %93 = load i64, ptr %groupSize, align 8
  store i64 %93, ptr %counter, align 8
  br label %if.end23

if.else22:                                        ; preds = %newScope20
  %94 = load i64, ptr %groupIndex, align 8
  %95 = add i64 %94, 1
  store i64 %95, ptr %groupIndex, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.else22, %if.then21
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then19
  br label %if.end26

if.else25:                                        ; preds = %land.end
  %96 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %9, i32 0, i32 12
  store i1 false, ptr %96, align 1
  br label %if.end26

if.end26:                                         ; preds = %if.else25, %if.end24
  br label %for.start27

for.start27:                                      ; preds = %if.end26
  store i64 %offset, ptr %i28, align 8
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc122, %for.start27
  %97 = load i64, ptr %i28, align 8
  %98 = sub i64 %97, %offset
  %99 = icmp slt i64 %98, %length
  br i1 %99, label %for.body30, label %for.end123

for.body30:                                       ; preds = %for.cond29
  %100 = load i64, ptr %i28, align 8
  %get__31 = call ptr @"?get____im@UCHK$StringView@System@bf@@QEAAAEADTint@@@Z"(ptr %format_mPtr, i64 %format_mLength, i64 %100)
  %101 = load i8, ptr %get__31, align 1
  store i8 %101, ptr %c, align 1
  br label %newScope32

newScope32:                                       ; preds = %for.body30
  %102 = load i8, ptr %c, align 1
  %103 = load i8, ptr %literal, align 1
  %104 = icmp eq i8 %102, %103
  br i1 %104, label %land.rhs33, label %land.end34

land.rhs33:                                       ; preds = %newScope32
  %105 = load i8, ptr %c, align 1
  %106 = icmp ne i8 %105, 0
  br label %land.end34

land.end34:                                       ; preds = %land.rhs33, %newScope32
  %107 = phi i1 [ false, %newScope32 ], [ %106, %land.rhs33 ]
  br i1 %107, label %if.then35, label %if.end36

if.then35:                                        ; preds = %land.end34
  store i8 0, ptr %literal, align 1
  br label %for.inc122

if.end36:                                         ; preds = %land.end34
  %108 = load i8, ptr %literal, align 1
  %109 = icmp ne i8 %108, 0
  br i1 %109, label %if.then37, label %if.end38

if.then37:                                        ; preds = %if.end36
  %110 = load i8, ptr %c, align 1
  call void @"?Append@String@System@bf@@QEAAXD@Z"(ptr %sb, i8 %110)
  br label %for.inc122

if.end38:                                         ; preds = %if.end36
  %111 = load i8, ptr %c, align 1
  br label %newScope39

newScope39:                                       ; preds = %if.end38
  switch i8 %111, label %noSwitch [
    i8 92, label %switch.0
    i8 39, label %switch.1
    i8 34, label %switch.2
    i8 35, label %switch.3
    i8 48, label %switch.4
    i8 101, label %switch.5
    i8 69, label %switch.6
    i8 46, label %switch.7
    i8 44, label %switch.8
    i8 37, label %switch.9
  ]

noSwitch:                                         ; preds = %newScope39
  br label %default

switch.0:                                         ; preds = %newScope39
  %112 = load i64, ptr %i28, align 8
  %113 = add i64 %112, 1
  store i64 %113, ptr %i28, align 8
  br label %newScope40

newScope40:                                       ; preds = %switch.0
  %114 = load i64, ptr %i28, align 8
  %115 = sub i64 %114, %offset
  %116 = icmp slt i64 %115, %length
  br i1 %116, label %if.then41, label %if.end43

if.then41:                                        ; preds = %newScope40
  %117 = load i64, ptr %i28, align 8
  %get__42 = call ptr @"?get____im@UCHK$StringView@System@bf@@QEAAAEADTint@@@Z"(ptr %format_mPtr, i64 %format_mLength, i64 %117)
  %118 = load i8, ptr %get__42, align 1
  call void @"?Append@String@System@bf@@QEAAXD@Z"(ptr %sb, i8 %118)
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %newScope40
  br label %for.inc122

switch.1:                                         ; preds = %newScope39
  br label %switch.end

switch.2:                                         ; preds = %newScope39
  %119 = load i8, ptr %c, align 1
  %120 = icmp eq i8 %119, 34
  br i1 %120, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %switch.2
  %121 = load i8, ptr %c, align 1
  %122 = icmp eq i8 %121, 39
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %switch.2
  %123 = phi i1 [ true, %switch.2 ], [ %122, %lor.rhs ]
  br i1 %123, label %if.then44, label %if.end45

if.then44:                                        ; preds = %lor.end
  %124 = load i8, ptr %c, align 1
  store i8 %124, ptr %literal, align 1
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %lor.end
  br label %for.inc122

switch.3:                                         ; preds = %newScope39
  br label %switch.4

switch.4:                                         ; preds = %newScope39, %switch.3
  %125 = load i1, ptr %integerArea, align 1
  br i1 %125, label %if.then46, label %if.else72

if.then46:                                        ; preds = %switch.4
  %126 = load i64, ptr %intSharpCounter, align 8
  %127 = add i64 %126, 1
  store i64 %127, ptr %intSharpCounter, align 8
  br label %newScope47

newScope47:                                       ; preds = %if.then46
  %128 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %9, i32 0, i32 4
  %129 = load i32, ptr %128, align 4
  %130 = load i64, ptr %intSharpCounter, align 8
  %131 = sext i32 %129 to i64
  %132 = sub i64 %131, %130
  %get__Length48 = call i64 @"?get__Length@String@System@bf@@QEAATint@@XZ"(ptr %sb_int)
  %133 = load i64, ptr %sb_int_index, align 8
  %134 = add i64 %get__Length48, %133
  %135 = icmp slt i64 %132, %134
  br i1 %135, label %lor.end50, label %lor.rhs49

lor.rhs49:                                        ; preds = %newScope47
  %136 = load i8, ptr %c, align 1
  %137 = icmp eq i8 %136, 48
  br label %lor.end50

lor.end50:                                        ; preds = %lor.rhs49, %newScope47
  %138 = phi i1 [ true, %newScope47 ], [ %137, %lor.rhs49 ]
  br i1 %138, label %if.then51, label %if.end71

if.then51:                                        ; preds = %lor.end50
  br label %while.cond52

while.cond52:                                     ; preds = %if.end69, %if.then51
  %139 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %9, i32 0, i32 4
  %140 = load i32, ptr %139, align 4
  %141 = load i64, ptr %intSharpCounter, align 8
  %142 = sext i32 %140 to i64
  %143 = sub i64 %142, %141
  %144 = load i64, ptr %sb_int_index, align 8
  %145 = add i64 %143, %144
  %get__Length53 = call i64 @"?get__Length@String@System@bf@@QEAATint@@XZ"(ptr %sb_int)
  %146 = icmp slt i64 %145, %get__Length53
  br i1 %146, label %while.body54, label %while.end70

while.body54:                                     ; preds = %while.cond52
  %147 = load i64, ptr %sb_int_index, align 8
  %148 = add i64 %147, 1
  store i64 %148, ptr %sb_int_index, align 8
  %get__55 = call ptr @"?get__@UCHK$String@System@bf@@QEAAAEADTint@@@Z"(ptr %sb_int, i64 %147)
  %149 = load i8, ptr %get__55, align 1
  call void @"?Append@String@System@bf@@QEAAXD@Z"(ptr %sb, i8 %149)
  br label %newScope56

newScope56:                                       ; preds = %while.body54
  %150 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %9, i32 0, i32 12
  %151 = load i1, ptr %150, align 1
  br i1 %151, label %land.rhs57, label %land.end58

land.rhs57:                                       ; preds = %newScope56
  %152 = load i64, ptr %intLen, align 8
  %153 = sub i64 %152, 1
  store i64 %153, ptr %intLen, align 8
  %154 = icmp sgt i64 %153, 0
  br label %land.end58

land.end58:                                       ; preds = %land.rhs57, %newScope56
  %155 = phi i1 [ false, %newScope56 ], [ %154, %land.rhs57 ]
  br i1 %155, label %land.rhs59, label %land.end60

land.rhs59:                                       ; preds = %land.end58
  %156 = load i64, ptr %counter, align 8
  %157 = sub i64 %156, 1
  store i64 %157, ptr %counter, align 8
  %158 = icmp eq i64 %157, 0
  br label %land.end60

land.end60:                                       ; preds = %land.rhs59, %land.end58
  %159 = phi i1 [ false, %land.end58 ], [ %158, %land.rhs59 ]
  br i1 %159, label %if.then61, label %if.end69

if.then61:                                        ; preds = %land.end60
  %160 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %groupSeparator, i32 0, i32 0
  %161 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %160, i32 0, i32 1
  %162 = load ptr, ptr %161, align 8
  %163 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %160, i32 0, i32 2
  %164 = load i64, ptr %163, align 8
  call void @"?Append@String@System@bf@@QEAAXUStringView@23@@Z"(ptr %sb, ptr %162, i64 %164)
  br label %newScope62

newScope62:                                       ; preds = %if.then61
  %165 = load i64, ptr %groupIndex, align 8
  %166 = sub i64 %165, 1
  store i64 %166, ptr %groupIndex, align 8
  %167 = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %groups, i32 0, i32 1
  %168 = load ptr, ptr %167, align 8
  %169 = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %groups, i32 0, i32 2
  %170 = load i64, ptr %169, align 8
  %get__Length63 = call i64 @"?get__Length__im@?$Span@H@System@bf@@QEAATint@@XZ"(ptr %168, i64 %170)
  %171 = icmp slt i64 %166, %get__Length63
  br i1 %171, label %land.rhs64, label %land.end65

land.rhs64:                                       ; preds = %newScope62
  %172 = load i64, ptr %groupIndex, align 8
  %173 = icmp sge i64 %172, 0
  br label %land.end65

land.end65:                                       ; preds = %land.rhs64, %newScope62
  %174 = phi i1 [ false, %newScope62 ], [ %173, %land.rhs64 ]
  br i1 %174, label %if.then66, label %if.end68

if.then66:                                        ; preds = %land.end65
  %175 = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %groups, i32 0, i32 1
  %176 = load ptr, ptr %175, align 8
  %177 = getelementptr inbounds %"corlib.?$Span@H@System@bf", ptr %groups, i32 0, i32 2
  %178 = load i64, ptr %177, align 8
  %179 = load i64, ptr %groupIndex, align 8
  %get__67 = call ptr @"?get____im@UCHK$?$Span@H@System@bf@@QEAAAEAHTint@@@Z"(ptr %176, i64 %178, i64 %179)
  %180 = load i32, ptr %get__67, align 4
  %181 = sext i32 %180 to i64
  store i64 %181, ptr %groupSize, align 8
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %land.end65
  %182 = load i64, ptr %groupSize, align 8
  store i64 %182, ptr %counter, align 8
  br label %if.end69

if.end69:                                         ; preds = %if.end68, %land.end60
  br label %while.cond52

while.end70:                                      ; preds = %while.cond52
  br label %if.end71

if.end71:                                         ; preds = %while.end70, %lor.end50
  br label %switch.end

if.else72:                                        ; preds = %switch.4
  %183 = load i1, ptr %decimalArea, align 1
  br i1 %183, label %if.then73, label %if.end78

if.then73:                                        ; preds = %if.else72
  %184 = load i64, ptr %sb_dec_index, align 8
  %get__Length74 = call i64 @"?get__Length@String@System@bf@@QEAATint@@XZ"(ptr %sb_dec)
  %185 = icmp slt i64 %184, %get__Length74
  br i1 %185, label %if.then75, label %if.end77

if.then75:                                        ; preds = %if.then73
  %186 = load i64, ptr %sb_dec_index, align 8
  %187 = add i64 %186, 1
  store i64 %187, ptr %sb_dec_index, align 8
  %get__76 = call ptr @"?get__@UCHK$String@System@bf@@QEAAAEADTint@@@Z"(ptr %sb_dec, i64 %186)
  %188 = load i8, ptr %get__76, align 1
  call void @"?Append@String@System@bf@@QEAAXD@Z"(ptr %sb, i8 %188)
  br label %if.end77

if.end77:                                         ; preds = %if.then75, %if.then73
  br label %switch.end

if.end78:                                         ; preds = %if.else72
  br label %if.end79

if.end79:                                         ; preds = %if.end78
  %189 = load i8, ptr %c, align 1
  call void @"?Append@String@System@bf@@QEAAXD@Z"(ptr %sb, i8 %189)
  br label %switch.end

switch.5:                                         ; preds = %newScope39
  br label %switch.end

switch.6:                                         ; preds = %newScope39
  %190 = load ptr, ptr %sb_exp1, align 8
  %191 = icmp eq ptr %190, null
  br i1 %191, label %lor.end81, label %lor.rhs80

lor.rhs80:                                        ; preds = %switch.6
  %192 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %9, i32 0, i32 13
  %193 = load i1, ptr %192, align 1
  %194 = xor i1 %193, true
  br label %lor.end81

lor.end81:                                        ; preds = %lor.rhs80, %switch.6
  %195 = phi i1 [ true, %switch.6 ], [ %194, %lor.rhs80 ]
  br i1 %195, label %if.then82, label %if.end83

if.then82:                                        ; preds = %lor.end81
  %196 = load i8, ptr %c, align 1
  call void @"?Append@String@System@bf@@QEAAXD@Z"(ptr %sb, i8 %196)
  br label %switch.end

if.end83:                                         ; preds = %lor.end81
  store i1 true, ptr %flag1, align 1
  store i1 false, ptr %flag2, align 1
  br label %for.start84

for.start84:                                      ; preds = %if.end83
  %197 = load i64, ptr %i28, align 8
  %198 = add i64 %197, 1
  store i64 %198, ptr %q, align 8
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc100, %for.start84
  %199 = load i64, ptr %q, align 8
  %200 = sub i64 %199, %offset
  %201 = icmp slt i64 %200, %length
  br i1 %201, label %for.body86, label %for.end101

for.body86:                                       ; preds = %for.cond85
  %202 = load i64, ptr %q, align 8
  %get__87 = call ptr @"?get____im@UCHK$StringView@System@bf@@QEAAAEADTint@@@Z"(ptr %format_mPtr, i64 %format_mLength, i64 %202)
  %203 = load i8, ptr %get__87, align 1
  %204 = icmp eq i8 %203, 48
  br i1 %204, label %if.then88, label %if.end89

if.then88:                                        ; preds = %for.body86
  store i1 true, ptr %flag2, align 1
  br label %for.inc100

if.end89:                                         ; preds = %for.body86
  %205 = load i64, ptr %q, align 8
  %206 = load i64, ptr %i28, align 8
  %207 = add i64 %206, 1
  %208 = icmp eq i64 %205, %207
  br i1 %208, label %land.rhs90, label %land.end95

land.rhs90:                                       ; preds = %if.end89
  %209 = load i64, ptr %q, align 8
  %get__91 = call ptr @"?get____im@UCHK$StringView@System@bf@@QEAAAEADTint@@@Z"(ptr %format_mPtr, i64 %format_mLength, i64 %209)
  %210 = load i8, ptr %get__91, align 1
  %211 = icmp eq i8 %210, 43
  br i1 %211, label %lor.end94, label %lor.rhs92

lor.rhs92:                                        ; preds = %land.rhs90
  %212 = load i64, ptr %q, align 8
  %get__93 = call ptr @"?get____im@UCHK$StringView@System@bf@@QEAAAEADTint@@@Z"(ptr %format_mPtr, i64 %format_mLength, i64 %212)
  %213 = load i8, ptr %get__93, align 1
  %214 = icmp eq i8 %213, 45
  br label %lor.end94

lor.end94:                                        ; preds = %lor.rhs92, %land.rhs90
  %215 = phi i1 [ true, %land.rhs90 ], [ %214, %lor.rhs92 ]
  br label %land.end95

land.end95:                                       ; preds = %lor.end94, %if.end89
  %216 = phi i1 [ false, %if.end89 ], [ %215, %lor.end94 ]
  br i1 %216, label %if.then96, label %if.end97

if.then96:                                        ; preds = %land.end95
  br label %for.inc100

if.end97:                                         ; preds = %land.end95
  %217 = load i1, ptr %flag2, align 1
  %218 = xor i1 %217, true
  br i1 %218, label %if.then98, label %if.end99

if.then98:                                        ; preds = %if.end97
  store i1 false, ptr %flag1, align 1
  br label %if.end99

if.end99:                                         ; preds = %if.then98, %if.end97
  br label %for.end101

for.inc100:                                       ; preds = %if.then96, %if.then88
  %219 = load i64, ptr %q, align 8
  %220 = add i64 %219, 1
  store i64 %220, ptr %q, align 8
  br label %for.cond85

for.end101:                                       ; preds = %if.end99, %for.cond85
  %221 = load i1, ptr %flag1, align 1
  br i1 %221, label %if.then102, label %if.else103

if.then102:                                       ; preds = %for.end101
  %222 = load i64, ptr %q, align 8
  %223 = sub i64 %222, 1
  store i64 %223, ptr %i28, align 8
  %224 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %9, i32 0, i32 2
  %225 = load i32, ptr %224, align 4
  %226 = icmp slt i32 %225, 0
  store i1 %226, ptr %integerArea, align 1
  %227 = load i1, ptr %integerArea, align 1
  %228 = xor i1 %227, true
  store i1 %228, ptr %decimalArea, align 1
  %229 = load i8, ptr %c, align 1
  call void @"?Append@String@System@bf@@QEAAXD@Z"(ptr %sb, i8 %229)
  %230 = load ptr, ptr %sb_exp1, align 8
  call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr %sb, ptr %230)
  store ptr null, ptr %sb_exp1, align 8
  br label %if.end104

if.else103:                                       ; preds = %for.end101
  %231 = load i8, ptr %c, align 1
  call void @"?Append@String@System@bf@@QEAAXD@Z"(ptr %sb, i8 %231)
  br label %if.end104

if.end104:                                        ; preds = %if.else103, %if.then102
  br label %switch.end

switch.7:                                         ; preds = %newScope39
  %232 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %9, i32 0, i32 2
  %233 = load i32, ptr %232, align 4
  %234 = load i64, ptr %i28, align 8
  %235 = sext i32 %233 to i64
  %236 = icmp eq i64 %235, %234
  br i1 %236, label %if.then105, label %if.end116

if.then105:                                       ; preds = %switch.7
  %237 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %9, i32 0, i32 1
  %238 = load i32, ptr %237, align 4
  %239 = icmp sgt i32 %238, 0
  br i1 %239, label %if.then106, label %if.end112

if.then106:                                       ; preds = %if.then105
  br label %while.cond107

while.cond107:                                    ; preds = %while.body109, %if.then106
  %240 = load i64, ptr %sb_int_index, align 8
  %get__Length108 = call i64 @"?get__Length@String@System@bf@@QEAATint@@XZ"(ptr %sb_int)
  %241 = icmp slt i64 %240, %get__Length108
  br i1 %241, label %while.body109, label %while.end111

while.body109:                                    ; preds = %while.cond107
  %242 = load i64, ptr %sb_int_index, align 8
  %243 = add i64 %242, 1
  store i64 %243, ptr %sb_int_index, align 8
  %get__110 = call ptr @"?get__@UCHK$String@System@bf@@QEAAAEADTint@@@Z"(ptr %sb_int, i64 %242)
  %244 = load i8, ptr %get__110, align 1
  call void @"?Append@String@System@bf@@QEAAXD@Z"(ptr %sb, i8 %244)
  br label %while.cond107

while.end111:                                     ; preds = %while.cond107
  br label %if.end112

if.end112:                                        ; preds = %while.end111, %if.then105
  %get__Length113 = call i64 @"?get__Length@String@System@bf@@QEAATint@@XZ"(ptr %sb_dec)
  %245 = icmp sgt i64 %get__Length113, 0
  br i1 %245, label %if.then114, label %if.end115

if.then114:                                       ; preds = %if.end112
  call void @"?get__NumberDecimalSeparator@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr %nfi, ptr sret(%"corlib.StringView@System@bf") %4)
  %246 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %4, i32 0, i32 0
  %247 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %246, i32 0, i32 1
  %248 = load ptr, ptr %247, align 8
  %249 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %246, i32 0, i32 2
  %250 = load i64, ptr %249, align 8
  call void @"?Append@String@System@bf@@QEAAXUStringView@23@@Z"(ptr %sb, ptr %248, i64 %250)
  br label %if.end115

if.end115:                                        ; preds = %if.then114, %if.end112
  br label %if.end116

if.end116:                                        ; preds = %if.end115, %switch.7
  store i1 false, ptr %integerArea, align 1
  store i1 true, ptr %decimalArea, align 1
  br label %switch.end

switch.8:                                         ; preds = %newScope39
  br label %switch.end

switch.9:                                         ; preds = %newScope39
  call void @"?get__PercentSymbol@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr %nfi, ptr sret(%"corlib.StringView@System@bf") %5)
  %251 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %5, i32 0, i32 0
  %252 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %251, i32 0, i32 1
  %253 = load ptr, ptr %252, align 8
  %254 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %251, i32 0, i32 2
  %255 = load i64, ptr %254, align 8
  call void @"?Append@String@System@bf@@QEAAXUStringView@23@@Z"(ptr %sb, ptr %253, i64 %255)
  br label %switch.end

default:                                          ; preds = %noSwitch
  %256 = load i8, ptr %c, align 1
  %257 = icmp uge i8 %256, -128
  br i1 %257, label %if.then117, label %if.end121

if.then117:                                       ; preds = %default
  %258 = load i64, ptr %i28, align 8
  call void @"?GetChar32__im@StringView@System@bf@@QEAA?AU?$__TUPLE_c_length@_UC@3@Tint@@@Z"(ptr sret(%"corlib.?$__TUPLE_c_length@_UC@bf") %6, ptr %format_mPtr, i64 %format_mLength, i64 %258)
  %259 = load %"corlib.?$__TUPLE_c_length@_UC@bf", ptr %6, align 4
  %260 = extractvalue %"corlib.?$__TUPLE_c_length@_UC@bf" %259, 1
  %261 = extractvalue %"corlib.?$__TUPLE_c_length@_UC@bf" %259, 2
  br label %newScope118

newScope118:                                      ; preds = %if.then117
  %262 = icmp eq i32 %260, 8240
  br i1 %262, label %if.then119, label %if.end120

if.then119:                                       ; preds = %newScope118
  call void @"?get__PerMilleSymbol@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr %nfi, ptr sret(%"corlib.StringView@System@bf") %7)
  %263 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %7, i32 0, i32 0
  %264 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %263, i32 0, i32 1
  %265 = load ptr, ptr %264, align 8
  %266 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %263, i32 0, i32 2
  %267 = load i64, ptr %266, align 8
  call void @"?Append@String@System@bf@@QEAAXUStringView@23@@Z"(ptr %sb, ptr %265, i64 %267)
  %268 = sext i8 %261 to i64
  %269 = sub i64 %268, 1
  %270 = load i64, ptr %i28, align 8
  %271 = add i64 %270, %269
  store i64 %271, ptr %i28, align 8
  br label %switch.end

if.end120:                                        ; preds = %newScope118
  br label %if.end121

if.end121:                                        ; preds = %if.end120, %default
  %272 = load i8, ptr %c, align 1
  call void @"?Append@String@System@bf@@QEAAXD@Z"(ptr %sb, i8 %272)
  br label %switch.end

switch.end:                                       ; preds = %if.end121, %if.then119, %switch.9, %switch.8, %if.end116, %if.end104, %if.then82, %switch.5, %if.end79, %if.end77, %if.end71, %switch.1
  br label %for.inc122

for.inc122:                                       ; preds = %switch.end, %if.end45, %if.end43, %if.then37, %if.then35
  %273 = load i64, ptr %i28, align 8
  %274 = add i64 %273, 1
  store i64 %274, ptr %i28, align 8
  br label %for.cond29

for.end123:                                       ; preds = %for.cond29
  %275 = xor i1 %positive, true
  br i1 %275, label %if.then124, label %if.end125

if.then124:                                       ; preds = %for.end123
  call void @"?get__NegativeSign@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr %nfi, ptr sret(%"corlib.StringView@System@bf") %8)
  %276 = load i64, ptr %startPos, align 8
  %277 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %8, i32 0, i32 0
  %278 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %277, i32 0, i32 1
  %279 = load ptr, ptr %278, align 8
  %280 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %277, i32 0, i32 2
  %281 = load i64, ptr %280, align 8
  call void @"?Insert@String@System@bf@@QEAAXTint@@UStringView@23@@Z"(ptr %sb, i64 %276, ptr %279, i64 %281)
  br label %if.end125

if.end125:                                        ; preds = %if.then124, %for.end123
  br label %exit

exit:                                             ; preds = %if.end125
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfCtorClear@CustomInfo@NumberFormatter@System@bf@@AEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 47, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@CustomInfo@NumberFormatter@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %1 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %0, i32 0, i32 12
  store i1 false, ptr %1, align 1
  %2 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %0, i32 0, i32 1
  store i32 0, ptr %2, align 4
  %3 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %0, i32 0, i32 2
  store i32 -1, ptr %3, align 4
  %4 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %0, i32 0, i32 3
  store i32 0, ptr %4, align 4
  %5 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %0, i32 0, i32 4
  store i32 0, ptr %5, align 4
  %6 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %0, i32 0, i32 5
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %0, i32 0, i32 6
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %0, i32 0, i32 13
  store i1 false, ptr %8, align 1
  %9 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %0, i32 0, i32 7
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %0, i32 0, i32 8
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %0, i32 0, i32 14
  store i1 true, ptr %11, align 1
  %12 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %0, i32 0, i32 9
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %0, i32 0, i32 10
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %"corlib.CustomInfo@NumberFormatter@System@bf", ptr %0, i32 0, i32 11
  store i32 0, ptr %14, align 4
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@CustomInfo@NumberFormatter@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@CustomInfo@NumberFormatter@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers@CustomInfo@NumberFormatter@System@bf@@IEAAXXZ"(ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @"?get__Length__im@?$Span@D@System@bf@@QEAATint@@XZ"(ptr %this_mPtr, i64 %this_mLength) #1 {
entry:
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  %__return = alloca i64, align 8
  store ptr %this_mPtr, ptr %0, align 8
  store i64 %this_mLength, ptr %1, align 8
  store i64 %this_mLength, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %2 = load i64, ptr %__return, align 8
  ret i64 %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @"?get____im@UCHK$StringView@System@bf@@QEAAAEADTint@@@Z"(ptr %this_mPtr, i64 %this_mLength, i64 %index) #1 {
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare void @"?GetChar32__im@StringView@System@bf@@QEAA?AU?$__TUPLE_c_length@_UC@3@Tint@@@Z"(ptr noalias sret(%"corlib.?$__TUPLE_c_length@_UC@bf"), ptr, i64, i64) #0

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @"?get__Length@String@System@bf@@QEAATint@@XZ"(ptr %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %2 = load i32, ptr %1, align 4
  %3 = sext i32 %2 to i64
  store i64 %3, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %4 = load i64, ptr %__return, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
declare void @"?get__NumberGroupSizes@NumberFormatInfo@Globalization@System@bf@@QEAA?AU?$Span@H@34@XZ"(ptr, ptr noalias sret(%"corlib.?$Span@H@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?get__NumberGroupSeparator@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr, ptr noalias sret(%"corlib.StringView@System@bf")) #0

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @"?get__Length__im@?$Span@H@System@bf@@QEAATint@@XZ"(ptr %this_mPtr, i64 %this_mLength) #1 {
entry:
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  %__return = alloca i64, align 8
  store ptr %this_mPtr, ptr %0, align 8
  store i64 %this_mLength, ptr %1, align 8
  store i64 %this_mLength, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %2 = load i64, ptr %__return, align 8
  ret i64 %2
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @"?get____im@UCHK$?$Span@H@System@bf@@QEAAAEAHTint@@@Z"(ptr %this_mPtr, i64 %this_mLength, i64 %index) #1 {
entry:
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  %__return = alloca ptr, align 8
  store ptr %this_mPtr, ptr %0, align 8
  store i64 %this_mLength, ptr %1, align 8
  %2 = getelementptr inbounds i32, ptr %this_mPtr, i64 %index
  store ptr %2, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %3 = load ptr, ptr %__return, align 8
  ret ptr %3
}

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAXD@Z"(ptr, i8) #0

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @"?get__@UCHK$String@System@bf@@QEAAAEADTint@@@Z"(ptr %this, i64 %index) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %get__Ptr = call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr %0)
  %1 = getelementptr inbounds i8, ptr %get__Ptr, i64 %index
  store ptr %1, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %2 = load ptr, ptr %__return, align 8
  ret ptr %2
}

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAXUStringView@23@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?get__NumberDecimalSeparator@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr, ptr noalias sret(%"corlib.StringView@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?get__PercentSymbol@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr, ptr noalias sret(%"corlib.StringView@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?get__PerMilleSymbol@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr, ptr noalias sret(%"corlib.StringView@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?get__NegativeSign@NumberFormatInfo@Globalization@System@bf@@QEAA?AUStringView@34@XZ"(ptr, ptr noalias sret(%"corlib.StringView@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?Insert@String@System@bf@@QEAAXTint@@UStringView@23@@Z"(ptr, i64, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr) #0

attributes #0 = { nounwind uwtable }
attributes #1 = { alwaysinline nounwind uwtable }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
