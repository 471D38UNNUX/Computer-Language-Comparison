; ModuleID = 'System_String'
source_filename = "System_String"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.?$Span@D@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$Result@X@System@bf" = type <{ %"corlib.Enum@System@bf", [0 x i8], i8 }>
%"corlib.Enum@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.StringView@System@bf" = type <{ %"corlib.?$Span@D@System@bf" }>
%"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf" = type <{ %"corlib.ValueType@System@bf", %"corlib.?$Span@UStringView@System@bf@@@System@bf", i64, ptr }>
%"corlib.?$Span@UStringView@System@bf@@@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.?$Result@UStringView@System@bf@@@System@bf" = type <{ %"corlib.Enum@System@bf", %"corlib.?$__TUPLE_val@UStringView@System@bf@@@bf", i8 }>
%"corlib.?$__TUPLE_val@UStringView@System@bf@@@bf" = type <{ %"corlib.Tuple@System@bf", %"corlib.StringView@System@bf" }>
%"corlib.Tuple@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.?$Span@PEAVObject@System@bf@@@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%_BF_DeferredData_RvYbVfd = type { i64, ptr, ptr }
%"corlib.DeferredCall@System@bf" = type <{ %"corlib.ValueType@System@bf", i64, ptr }>
%"corlib.StringSplitEnumerator@System@bf" = type opaque
%"corlib.StringStringSplitEnumerator@System@bf" = type opaque
%"corlib.?$Span@_S@System@bf" = type opaque
%"corlib.RawEnumerator@String@System@bf" = type opaque
%"corlib.UTF8Enumerator@String@System@bf" = type opaque
%"corlib.?$__TUPLE_c_length@_UC@bf" = type opaque
%"corlib.?$__TUPLE_c_idx_length@_UTint@@C@bf" = type opaque
%"corlib.?$__TUPLE_startIdx_length@Tint@@C@bf" = type opaque
%"corlib.?$__TUPLE_startIdx_length@Tint@@Tint@@@bf" = type opaque
%"corlib.?$Array1@D@System@bf" = type <{ %"corlib.Array@System@bf", i8 }>
%"corlib.Array@System@bf" = type <{ %"corlib.Object@System@bf", i32 }>

@"?sStringLiterals@String@System@bf@@2PEAPEAV123@A" = external global ptr, align 8
@"?sIdStringLiterals@String@System@bf@@2PEAPEAV123@A" = external global ptr, align 8
@"?sPrevInternLinkPtr@String@System@bf@@2PEAPEAV123@A" = global ptr null, align 8
@"?sHexUpperChars@String@System@bf@@2PEAV123@A" = global ptr null, align 8
@didStaticInit = internal global i1 false
@"?sBfClassVData@String@System@bf@@2UClassVData@23@A" = external constant [8 x ptr]
@__bfStrObj59 = external constant %"corlib.String@System@bf"
@__bfStrObj1 = external constant %"corlib.String@System@bf"
@__bfStrObj61 = external constant %"corlib.String@System@bf"
@"?sBfSlotOfs@IFormattable@System@bf@@2HA" = external constant i32
@__bfStrObj66 = external constant %"corlib.String@System@bf"
@__bfStrObj67 = external constant %"corlib.String@System@bf"
@__bfStrObj69 = external constant %"corlib.String@System@bf"
@__bfStrObj382 = external constant %"corlib.String@System@bf"
@__bfStrObj385 = external constant %"corlib.String@System@bf"
@__bfStrObj386 = external constant %"corlib.String@System@bf"
@__bfStrObj387 = external constant %"corlib.String@System@bf"
@__bfStrObj388 = external constant %"corlib.String@System@bf"
@__bfStrObj389 = external constant %"corlib.String@System@bf"
@__bfStrObj390 = external constant %"corlib.String@System@bf"
@__bfStrObj391 = external constant %"corlib.String@System@bf"
@__bfStrObj392 = external constant %"corlib.String@System@bf"
@__bfStrObj393 = external constant %"corlib.String@System@bf"
@__bfStrObj394 = external constant %"corlib.String@System@bf"
@__bfStrObj395 = external constant %"corlib.String@System@bf"
@__bfStrObj396 = external constant %"corlib.String@System@bf"

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@i0$String@System@bf@@QEAAXAEATint@@Tint@@@Z"(ptr %this, ptr dereferenceable(8) %__appendIdx, i64 %count) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__appendIdx.addr = alloca ptr, align 8
  %bufferSize = alloca i64, align 8
  %addlPtr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  store ptr %__appendIdx, ptr %__appendIdx.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %1 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 3
  store ptr null, ptr %1, align 8
  %2 = icmp eq i64 %count, 0
  br i1 %2, label %cond.then, label %cond.else

cond.then:                                        ; preds = %newScope
  br label %cond.end

cond.else:                                        ; preds = %newScope
  %3 = sub i64 %count, 1
  %4 = and i64 %3, -8
  br label %cond.end

cond.end:                                         ; preds = %cond.else, %cond.then
  %5 = phi i64 [ 0, %cond.then ], [ %4, %cond.else ]
  br label %cond.cont

cond.cont:                                        ; preds = %cond.end
  store i64 %5, ptr %bufferSize, align 8
  %6 = load i64, ptr %bufferSize, align 8
  %7 = mul i64 1, %6
  %8 = load i64, ptr %__appendIdx, align 8
  %9 = add i64 %8, %7
  store i64 %9, ptr %__appendIdx, align 8
  %10 = inttoptr i64 %8 to ptr
  store ptr %10, ptr %addlPtr, align 8
  %11 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 2
  %12 = load i64, ptr %bufferSize, align 8
  %13 = trunc i64 %12 to i32
  %14 = add i32 %13, 8
  store i32 %14, ptr %11, align 4
  %15 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  store i32 0, ptr %15, align 4
  br label %exit

exit:                                             ; preds = %cond.cont
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @"?this$calcAppend@i1$String@System@bf@@SATint@@Tint@@@Z"(i64 %count) #0 {
entry:
  %__return = alloca i64, align 8
  %bufferSize = alloca i64, align 8
  store i64 0, ptr %__return, align 8
  %0 = icmp eq i64 %count, 0
  br i1 %0, label %cond.then, label %cond.else

cond.then:                                        ; preds = %entry
  br label %cond.end

cond.else:                                        ; preds = %entry
  %1 = sub i64 %count, 1
  %2 = and i64 %1, -8
  br label %cond.end

cond.end:                                         ; preds = %cond.else, %cond.then
  %3 = phi i64 [ 0, %cond.then ], [ %2, %cond.else ]
  br label %cond.cont

cond.cont:                                        ; preds = %cond.end
  store i64 %3, ptr %bufferSize, align 8
  %4 = load i64, ptr %bufferSize, align 8
  %5 = mul i64 1, %4
  %6 = load i64, ptr %__return, align 8
  %7 = add i64 %5, %6
  store i64 %7, ptr %__return, align 8
  %8 = load i64, ptr %__return, align 8
  ret i64 %8
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i2$String@System@bf@@QEAAXAEATint@@Tint@@@Z"(ptr, ptr dereferenceable(8), i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?this$calcAppend@i3$String@System@bf@@SATint@@Tint@@@Z"(i64) #0

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@i4$String@System@bf@@QEAAXAEATint@@@Z"(ptr %this, ptr dereferenceable(8) %__appendIdx) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__appendIdx.addr = alloca ptr, align 8
  %addlPtr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  store ptr %__appendIdx, ptr %__appendIdx.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %1 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 3
  store ptr null, ptr %1, align 8
  %2 = load i64, ptr %__appendIdx, align 8
  %3 = add i64 %2, 8
  store i64 %3, ptr %__appendIdx, align 8
  %4 = inttoptr i64 %2 to ptr
  store ptr %4, ptr %addlPtr, align 8
  %5 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 2
  store i32 16, ptr %5, align 4
  %6 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  store i32 0, ptr %6, align 4
  br label %exit

exit:                                             ; preds = %newScope
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @"?this$calcAppend@i5$String@System@bf@@SATint@@XZ"() #0 {
entry:
  %__return = alloca i64, align 8
  store i64 0, ptr %__return, align 8
  %0 = load i64, ptr %__return, align 8
  %1 = add i64 8, %0
  store i64 %1, ptr %__return, align 8
  %2 = load i64, ptr %__return, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i6$String@System@bf@@QEAAXAEATint@@@Z"(ptr, ptr dereferenceable(8)) #0

; Function Attrs: nounwind uwtable
declare i64 @"?this$calcAppend@i7$String@System@bf@@SATint@@XZ"() #0

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@i8$String@System@bf@@QEAAXAEATint@@PEAV123@@Z"(ptr %this, ptr dereferenceable(8) %__appendIdx, ptr %str) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__appendIdx.addr = alloca ptr, align 8
  %bufferSize = alloca i64, align 8
  %addlPtr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  store ptr %__appendIdx, ptr %__appendIdx.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %1 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 3
  store ptr null, ptr %1, align 8
  %2 = getelementptr inbounds %"corlib.String@System@bf", ptr %str, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %cond.then, label %cond.else

cond.then:                                        ; preds = %newScope
  br label %cond.end

cond.else:                                        ; preds = %newScope
  %5 = sext i32 %3 to i64
  %6 = sub i64 %5, 1
  %7 = and i64 %6, -8
  br label %cond.end

cond.end:                                         ; preds = %cond.else, %cond.then
  %8 = phi i64 [ 0, %cond.then ], [ %7, %cond.else ]
  br label %cond.cont

cond.cont:                                        ; preds = %cond.end
  store i64 %8, ptr %bufferSize, align 8
  %9 = load i64, ptr %bufferSize, align 8
  %10 = mul i64 1, %9
  %11 = load i64, ptr %__appendIdx, align 8
  %12 = add i64 %11, %10
  store i64 %12, ptr %__appendIdx, align 8
  %13 = inttoptr i64 %11 to ptr
  store ptr %13, ptr %addlPtr, align 8
  %get__Ptr = call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr %0)
  %get__Ptr1 = call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr %str)
  %14 = sext i32 %3 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %get__Ptr, ptr align 1 %get__Ptr1, i64 %14, i1 false)
  %15 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  store i32 %3, ptr %15, align 4
  %16 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 2
  %17 = load i64, ptr %bufferSize, align 8
  %18 = trunc i64 %17 to i32
  %19 = add i32 %18, 8
  store i32 %19, ptr %16, align 4
  br label %exit

exit:                                             ; preds = %cond.cont
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @"?this$calcAppend@i9$String@System@bf@@SATint@@PEAV123@@Z"(ptr %str) #0 {
entry:
  %__return = alloca i64, align 8
  %bufferSize = alloca i64, align 8
  store i64 0, ptr %__return, align 8
  %0 = getelementptr inbounds %"corlib.String@System@bf", ptr %str, i32 0, i32 1
  %1 = load i32, ptr %0, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %cond.then, label %cond.else

cond.then:                                        ; preds = %entry
  br label %cond.end

cond.else:                                        ; preds = %entry
  %3 = sext i32 %1 to i64
  %4 = sub i64 %3, 1
  %5 = and i64 %4, -8
  br label %cond.end

cond.end:                                         ; preds = %cond.else, %cond.then
  %6 = phi i64 [ 0, %cond.then ], [ %5, %cond.else ]
  br label %cond.cont

cond.cont:                                        ; preds = %cond.end
  store i64 %6, ptr %bufferSize, align 8
  %7 = load i64, ptr %bufferSize, align 8
  %8 = mul i64 1, %7
  %9 = load i64, ptr %__return, align 8
  %10 = add i64 %8, %9
  store i64 %10, ptr %__return, align 8
  %11 = load i64, ptr %__return, align 8
  ret i64 %11
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i10$String@System@bf@@QEAAXAEATint@@PEAV123@@Z"(ptr, ptr dereferenceable(8), ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?this$calcAppend@i11$String@System@bf@@SATint@@PEAV123@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i12$String@System@bf@@QEAAXAEATint@@PEAV123@Tint@@@Z"(ptr, ptr dereferenceable(8), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?this$calcAppend@i13$String@System@bf@@SATint@@PEAV123@Tint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i14$String@System@bf@@QEAAXAEATint@@PEAV123@Tint@@2@Z"(ptr, ptr dereferenceable(8), ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?this$calcAppend@i15$String@System@bf@@SATint@@PEAV123@Tint@@1@Z"(ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i16$String@System@bf@@QEAAXAEATint@@DTint@@@Z"(ptr, ptr dereferenceable(8), i8, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?this$calcAppend@i17$String@System@bf@@SATint@@DTint@@@Z"(i8, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i18$String@System@bf@@QEAAXAEATint@@PEAD@Z"(ptr, ptr dereferenceable(8), ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?this$calcAppend@i19$String@System@bf@@SATint@@PEAD@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i20$String@System@bf@@QEAAXAEATint@@PEADTint@@@Z"(ptr, ptr dereferenceable(8), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?this$calcAppend@i21$String@System@bf@@SATint@@PEADTint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i22$String@System@bf@@QEAAXAEATint@@PEA_S@Z"(ptr, ptr dereferenceable(8), ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?this$calcAppend@i23$String@System@bf@@SATint@@PEA_S@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i24$String@System@bf@@QEAAXAEATint@@U?$Span@_S@23@@Z"(ptr, ptr dereferenceable(8), ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?this$calcAppend@i25$String@System@bf@@SATint@@U?$Span@_S@23@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@i26$String@System@bf@@QEAAXAEATint@@UStringView@23@@Z"(ptr %this, ptr dereferenceable(8) %__appendIdx, ptr %strView) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__appendIdx.addr = alloca ptr, align 8
  %bufferSize = alloca i64, align 8
  %addlPtr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  store ptr %__appendIdx, ptr %__appendIdx.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %1 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 3
  store ptr null, ptr %1, align 8
  %2 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %strView, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %strView, i32 0, i32 2
  %5 = load i64, ptr %4, align 8
  %get__Length = call i64 @"?get__Length__im@?$Span@D@System@bf@@QEAATint@@XZ"(ptr %3, i64 %5)
  %6 = icmp eq i64 %get__Length, 0
  br i1 %6, label %cond.then, label %cond.else

cond.then:                                        ; preds = %newScope
  br label %cond.end

cond.else:                                        ; preds = %newScope
  %7 = sub i64 %get__Length, 1
  %8 = and i64 %7, -8
  br label %cond.end

cond.end:                                         ; preds = %cond.else, %cond.then
  %9 = phi i64 [ 0, %cond.then ], [ %8, %cond.else ]
  br label %cond.cont

cond.cont:                                        ; preds = %cond.end
  store i64 %9, ptr %bufferSize, align 8
  %10 = load i64, ptr %bufferSize, align 8
  %11 = mul i64 1, %10
  %12 = load i64, ptr %__appendIdx, align 8
  %13 = add i64 %12, %11
  store i64 %13, ptr %__appendIdx, align 8
  %14 = inttoptr i64 %12 to ptr
  store ptr %14, ptr %addlPtr, align 8
  %get__Ptr = call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr %0)
  %15 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %strView, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %strView, i32 0, i32 2
  %18 = load i64, ptr %17, align 8
  %get__Ptr1 = call ptr @"?get__Ptr__im@?$Span@D@System@bf@@QEAAPEADXZ"(ptr %16, i64 %18)
  %19 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %strView, i32 0, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %strView, i32 0, i32 2
  %22 = load i64, ptr %21, align 8
  %get__Length2 = call i64 @"?get__Length__im@?$Span@D@System@bf@@QEAATint@@XZ"(ptr %20, i64 %22)
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %get__Ptr, ptr align 1 %get__Ptr1, i64 %get__Length2, i1 false)
  %23 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 2
  %24 = load i64, ptr %bufferSize, align 8
  %25 = trunc i64 %24 to i32
  %26 = add i32 %25, 8
  store i32 %26, ptr %23, align 4
  %27 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %28 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %strView, i32 0, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %strView, i32 0, i32 2
  %31 = load i64, ptr %30, align 8
  %get__Length3 = call i64 @"?get__Length__im@?$Span@D@System@bf@@QEAATint@@XZ"(ptr %29, i64 %31)
  %32 = trunc i64 %get__Length3 to i32
  store i32 %32, ptr %27, align 4
  br label %exit

exit:                                             ; preds = %cond.cont
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @"?this$calcAppend@i27$String@System@bf@@SATint@@UStringView@23@@Z"(ptr %strView) #0 {
entry:
  %__return = alloca i64, align 8
  %bufferSize = alloca i64, align 8
  store i64 0, ptr %__return, align 8
  %0 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %strView, i32 0, i32 1
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %strView, i32 0, i32 2
  %3 = load i64, ptr %2, align 8
  %get__Length = call i64 @"?get__Length__im@?$Span@D@System@bf@@QEAATint@@XZ"(ptr %1, i64 %3)
  %4 = icmp eq i64 %get__Length, 0
  br i1 %4, label %cond.then, label %cond.else

cond.then:                                        ; preds = %entry
  br label %cond.end

cond.else:                                        ; preds = %entry
  %5 = sub i64 %get__Length, 1
  %6 = and i64 %5, -8
  br label %cond.end

cond.end:                                         ; preds = %cond.else, %cond.then
  %7 = phi i64 [ 0, %cond.then ], [ %6, %cond.else ]
  br label %cond.cont

cond.cont:                                        ; preds = %cond.end
  store i64 %7, ptr %bufferSize, align 8
  %8 = load i64, ptr %bufferSize, align 8
  %9 = mul i64 1, %8
  %10 = load i64, ptr %__return, align 8
  %11 = add i64 %9, %10
  store i64 %11, ptr %__return, align 8
  %12 = load i64, ptr %__return, align 8
  ret i64 %12
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i28$String@System@bf@@QEAAXAEATint@@UStringView@23@@Z"(ptr, ptr dereferenceable(8), ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?this$calcAppend@i29$String@System@bf@@SATint@@UStringView@23@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i30$String@System@bf@@QEAAXAEATint@@UStringView@23@W4CreateFlags@123@@Z"(ptr, ptr dereferenceable(8), ptr, i8) #0

; Function Attrs: nounwind uwtable
declare i64 @"?this$calcAppend@i31$String@System@bf@@SATint@@UStringView@23@W4CreateFlags@123@@Z"(ptr, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i32$String@System@bf@@QEAAXAEATint@@UStringView@23@Tint@@@Z"(ptr, ptr dereferenceable(8), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?this$calcAppend@i33$String@System@bf@@SATint@@UStringView@23@Tint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i34$String@System@bf@@QEAAXAEATint@@UStringView@23@Tint@@2@Z"(ptr, ptr dereferenceable(8), ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?this$calcAppend@i35$String@System@bf@@SATint@@UStringView@23@Tint@@1@Z"(ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i36$String@System@bf@@QEAAXAEATint@@PEAV?$Array1@D@23@Tint@@2@Z"(ptr, ptr dereferenceable(8), ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?this$calcAppend@i37$String@System@bf@@SATint@@PEAV?$Array1@D@23@Tint@@1@Z"(ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?StrLengths@String@System@bf@@CATint@@U?$Span@UStringView@System@bf@@@23@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?StrLengths@String@System@bf@@CATint@@U?$Span@PEAVString@System@bf@@@23@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i40$String@System@bf@@QEAAXAEATint@@Tparams@@U?$Span@UStringView@System@bf@@@23@@Z"(ptr, ptr dereferenceable(8), ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?this$calcAppend@i41$String@System@bf@@SATint@@U?$Span@UStringView@System@bf@@@23@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i42$String@System@bf@@QEAAXAEATint@@U?$Span@PEAVString@System@bf@@@23@@Z"(ptr, ptr dereferenceable(8), ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?this$calcAppend@i43$String@System@bf@@SATint@@U?$Span@PEAVString@System@bf@@@23@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Init@String@System@bf@@AEAAXTint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?FakeMethod@String@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
define ptr @"?Alloc@String@System@bf@@MEAAPEAXTint@@0@Z"(ptr %this, i64 %size, i64 %align) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = mul i64 1, %size
  %2 = call ptr @tc_malloc(i64 %1)
  store ptr %2, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %3 = load ptr, ptr %__return, align 8
  ret ptr %3
}

; Function Attrs: nounwind uwtable
define void @"?Free@String@System@bf@@MEAAXPEAX@Z"(ptr %this, ptr %ptr) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = ptrtoint ptr %ptr to i64
  %2 = icmp ugt i64 %1, 1
  br i1 %2, label %delete.body, label %delete.end

delete.body:                                      ; preds = %entry
  call void @tc_free(ptr %ptr)
  br label %delete.end

delete.end:                                       ; preds = %delete.body, %entry
  br label %exit

exit:                                             ; preds = %delete.end
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define i64 @"?get__Length@String@System@bf@@QEAATint@@XZ"(ptr %this) #1 {
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
declare void @"?set__Length@String@System@bf@@QEAAXTint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?get__NumCodePoints@String@System@bf@@QEAATint@@XZ"(ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
define i64 @"?get__AllocSize@String@System@bf@@QEAATint@@XZ"(ptr %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 2
  %2 = load i32, ptr %1, align 4
  %3 = and i32 %2, 1073741823
  %4 = sext i32 %3 to i64
  store i64 %4, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %5 = load i64, ptr %__return, align 8
  ret i64 %5
}

; Function Attrs: alwaysinline nounwind uwtable
define i1 @"?get__IsDynAlloc@String@System@bf@@QEAA_NXZ"(ptr %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca i1, align 1
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 2
  %2 = load i32, ptr %1, align 4
  %3 = and i32 %2, -2147483648
  %4 = icmp ne i32 %3, 0
  store i1 %4, ptr %__return, align 1
  br label %exit

exit:                                             ; preds = %entry
  %5 = load i1, ptr %__return, align 1
  ret i1 %5
}

; Function Attrs: nounwind uwtable
declare i1 @"?get__HasExternalPtr@String@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
define ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 2
  %2 = load i32, ptr %1, align 4
  %3 = and i32 %2, 1073741824
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %cond.then, label %cond.else

cond.then:                                        ; preds = %entry
  %5 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 8
  br label %cond.end

cond.else:                                        ; preds = %entry
  %7 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 3
  br label %cond.end

cond.end:                                         ; preds = %cond.else, %cond.then
  %8 = phi ptr [ %6, %cond.then ], [ %7, %cond.else ]
  br label %cond.cont

cond.cont:                                        ; preds = %cond.end
  store ptr %8, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %cond.cont
  %9 = load ptr, ptr %__return, align 8
  ret ptr %9
}

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsWhiteSpace@String@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
define i1 @"?get__IsEmpty@String@System@bf@@QEAA_NXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca i1, align 1
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %2 = load i32, ptr %1, align 4
  %3 = icmp eq i32 %2, 0
  store i1 %3, ptr %__return, align 1
  br label %exit

exit:                                             ; preds = %entry
  %4 = load i1, ptr %__return, align 1
  ret i1 %4
}

; Function Attrs: nounwind uwtable
declare i64 @"?GetHashCode@String@System@bf@@CATint@@PEADTint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?GetHashCode@String@System@bf@@QEAATint@@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
define ptr @"??BString@System@bf@@SAPEADPEAV012@@Z"(ptr %str) #0 {
entry:
  %__return = alloca ptr, align 8
  %0 = icmp eq ptr %str, null
  br i1 %0, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store ptr null, ptr %__return, align 8
  br label %exit

if.end:                                           ; preds = %entry
  call void @"?EnsureNullTerminator@String@System@bf@@QEAAXXZ"(ptr %str)
  %get__Ptr = call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr %str)
  store ptr %get__Ptr, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %1 = load ptr, ptr %__return, align 8
  ret ptr %1
}

; Function Attrs: nounwind uwtable
declare void @"??BString@System@bf@@SA?AU?$Span@D@12@PEAV012@@Z"(ptr noalias sret(%"corlib.?$Span@D@System@bf"), ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?QuoteString@String@System@bf@@SAXPEADTint@@PEAV123@@Z"(ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
define void @"?Quote@String@System@bf@@SAXPEADTint@@PEAV123@@Z"(ptr %ptr, i64 %length, ptr %outString) #0 {
entry:
  call void @"?Append@String@System@bf@@QEAAXD@Z"(ptr %outString, i8 34)
  call void @"?Escape@String@System@bf@@SAXPEADTint@@PEAV123@@Z"(ptr %ptr, i64 %length, ptr %outString)
  call void @"?Append@String@System@bf@@QEAAXD@Z"(ptr %outString, i8 34)
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?Quote@String@System@bf@@QEAAXPEAV123@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
define void @"?Escape@String@System@bf@@SAXPEADTint@@PEAV123@@Z"(ptr %ptr, i64 %length, ptr %outString) #0 {
entry:
  %0 = alloca i64, align 8
  %c = alloca i8, align 1
  store i64 0, ptr %0, align 8
  br label %forless.cond

forless.cond:                                     ; preds = %forless.inc, %entry
  %1 = load i64, ptr %0, align 8
  %2 = icmp slt i64 %1, %length
  br i1 %2, label %forless.body, label %forless.end

forless.body:                                     ; preds = %forless.cond
  %3 = load i64, ptr %0, align 8
  %4 = getelementptr inbounds i8, ptr %ptr, i64 %3
  %5 = load i8, ptr %4, align 1
  store i8 %5, ptr %c, align 1
  br label %newScope

newScope:                                         ; preds = %forless.body
  %6 = load i8, ptr %c, align 1
  br label %newScope1

newScope1:                                        ; preds = %newScope
  switch i8 %6, label %noSwitch [
    i8 39, label %switch.0
    i8 34, label %switch.1
    i8 92, label %switch.2
    i8 0, label %switch.3
    i8 7, label %switch.4
    i8 8, label %switch.5
    i8 12, label %switch.6
    i8 10, label %switch.7
    i8 13, label %switch.8
    i8 9, label %switch.9
    i8 11, label %switch.10
  ]

noSwitch:                                         ; preds = %newScope1
  br label %default

switch.0:                                         ; preds = %newScope1
  call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr %outString, ptr @__bfStrObj385)
  br label %switch.end

switch.1:                                         ; preds = %newScope1
  call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr %outString, ptr @__bfStrObj386)
  br label %switch.end

switch.2:                                         ; preds = %newScope1
  call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr %outString, ptr @__bfStrObj387)
  br label %switch.end

switch.3:                                         ; preds = %newScope1
  call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr %outString, ptr @__bfStrObj388)
  br label %switch.end

switch.4:                                         ; preds = %newScope1
  call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr %outString, ptr @__bfStrObj389)
  br label %switch.end

switch.5:                                         ; preds = %newScope1
  call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr %outString, ptr @__bfStrObj390)
  br label %switch.end

switch.6:                                         ; preds = %newScope1
  call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr %outString, ptr @__bfStrObj391)
  br label %switch.end

switch.7:                                         ; preds = %newScope1
  call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr %outString, ptr @__bfStrObj392)
  br label %switch.end

switch.8:                                         ; preds = %newScope1
  call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr %outString, ptr @__bfStrObj393)
  br label %switch.end

switch.9:                                         ; preds = %newScope1
  call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr %outString, ptr @__bfStrObj394)
  br label %switch.end

switch.10:                                        ; preds = %newScope1
  call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr %outString, ptr @__bfStrObj395)
  br label %switch.end

default:                                          ; preds = %noSwitch
  %7 = load i8, ptr %c, align 1
  %8 = icmp ult i8 %7, 32
  br i1 %8, label %if.then, label %if.end

if.then:                                          ; preds = %default
  call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr %outString, ptr @__bfStrObj396)
  %9 = load ptr, ptr @"?sHexUpperChars@String@System@bf@@2PEAV123@A", align 8
  %10 = load i8, ptr %c, align 1
  %11 = zext i8 %10 to i64
  %12 = ashr i64 %11, 4
  %13 = and i64 %12, 15
  %get__ = call ptr @"?get__@UCHK$String@System@bf@@QEAAAEADTint@@@Z"(ptr %9, i64 %13)
  %14 = load i8, ptr %get__, align 1
  call void @"?Append@String@System@bf@@QEAAXD@Z"(ptr %outString, i8 %14)
  %15 = load ptr, ptr @"?sHexUpperChars@String@System@bf@@2PEAV123@A", align 8
  %16 = load i8, ptr %c, align 1
  %17 = zext i8 %16 to i64
  %18 = and i64 %17, 15
  %get__2 = call ptr @"?get__@UCHK$String@System@bf@@QEAAAEADTint@@@Z"(ptr %15, i64 %18)
  %19 = load i8, ptr %get__2, align 1
  call void @"?Append@String@System@bf@@QEAAXD@Z"(ptr %outString, i8 %19)
  br label %switch.end

if.end:                                           ; preds = %default
  %20 = load i8, ptr %c, align 1
  call void @"?Append@String@System@bf@@QEAAXD@Z"(ptr %outString, i8 %20)
  br label %switch.end

switch.end:                                       ; preds = %if.end, %if.then, %switch.10, %switch.9, %switch.8, %switch.7, %switch.6, %switch.5, %switch.4, %switch.3, %switch.2, %switch.1, %switch.0
  br label %forless.inc

forless.inc:                                      ; preds = %switch.end
  %21 = load i64, ptr %0, align 8
  %22 = add i64 %21, 1
  store i64 %22, ptr %0, align 8
  br label %forless.cond

forless.end:                                      ; preds = %forless.cond
  br label %exit

exit:                                             ; preds = %forless.end
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?Escape@String@System@bf@@QEAAXPEAV123@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?UnQuoteString@String@System@bf@@SA?AU?$Result@X@23@PEADTint@@PEAV123@@Z"(ptr noalias sret(%"corlib.?$Result@X@System@bf"), ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Unquote@String@System@bf@@SA?AU?$Result@X@23@PEADTint@@PEAV123@@Z"(ptr noalias sret(%"corlib.?$Result@X@System@bf"), ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Unquote@String@System@bf@@QEAA?AU?$Result@X@23@PEAV123@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf"), ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Unescape@String@System@bf@@SA?AU?$Result@X@23@PEADTint@@PEAV123@@Z"(ptr noalias sret(%"corlib.?$Result@X@System@bf"), ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Unescape@String@System@bf@@QEAA?AU?$Result@X@23@PEAV123@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf"), ptr) #0

; Function Attrs: nounwind uwtable
define void @"?ToString@String@System@bf@@QEAAXPEAV123@0PEAVIFormatProvider@23@@Z"(ptr %this, ptr %outString, ptr %format, ptr %formatProvider) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %1 = call i1 @"??8String@System@bf@@SA_NPEAV012@0@Z"(ptr %format, ptr @__bfStrObj382)
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  %get__Ptr = call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr %0)
  %2 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = sext i32 %3 to i64
  call void @"?Quote@String@System@bf@@SAXPEADTint@@PEAV123@@Z"(ptr %get__Ptr, i64 %4, ptr %outString)
  br label %exit

if.end:                                           ; preds = %newScope
  call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr %outString, ptr %0)
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?Print@IPrintable@System@bf@@String@23@AEAAXPEAV423@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?CStr@String@System@bf@@QEAAPEADXZ"(ptr) #0

; Function Attrs: nounwind uwtable
define i1 @"??8String@System@bf@@SA_NPEAV012@0@Z"(ptr %s1, ptr %s2) #0 {
entry:
  %__return = alloca i1, align 1
  %Equals = call i1 @"?Equals@String@System@bf@@SA_NPEAV123@0W4StringComparison@23@@Z"(ptr %s1, ptr %s2, i8 4)
  store i1 %Equals, ptr %__return, align 1
  br label %exit

exit:                                             ; preds = %entry
  %0 = load i1, ptr %__return, align 1
  ret i1 %0
}

; Function Attrs: nounwind uwtable
declare i64 @"?__cmp__String@System@bf@@SATint@@PEAV012@0@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
define void @"?Clear@String@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  store i32 0, ptr %1, align 4
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?Set@String@System@bf@@QEAAXPEAV123@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Set@String@System@bf@@QEAAXUStringView@23@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?MoveTo@String@System@bf@@QEAAXPEAV123@_N@Z"(ptr, ptr, i1 zeroext) #0

; Function Attrs: nounwind uwtable
declare void @"?Reference@String@System@bf@@QEAAXPEAV123@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Reference@String@System@bf@@QEAAXPEADTint@@1@Z"(ptr, ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Reference@String@System@bf@@QEAAXPEADTint@@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Reference@String@System@bf@@QEAAXUStringView@23@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Reference@String@System@bf@@QEAAXPEAD@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?AdjustPtr@String@System@bf@@QEAAXTint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
define i64 @"?CalcNewSize@String@System@bf@@AEAATint@@Tint@@@Z"(ptr %this, i64 %minSize) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca i64, align 8
  %bumpSize = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %get__AllocSize = call i64 @"?get__AllocSize@String@System@bf@@QEAATint@@XZ"(ptr %0)
  store i64 %get__AllocSize, ptr %bumpSize, align 8
  %1 = load i64, ptr %bumpSize, align 8
  %2 = sdiv i64 %1, 2
  %3 = load i64, ptr %bumpSize, align 8
  %4 = add i64 %3, %2
  store i64 %4, ptr %bumpSize, align 8
  %5 = load i64, ptr %bumpSize, align 8
  %6 = icmp sgt i64 %5, %minSize
  br i1 %6, label %cond.then, label %cond.else

cond.then:                                        ; preds = %entry
  %7 = load i64, ptr %bumpSize, align 8
  br label %cond.end

cond.else:                                        ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.else, %cond.then
  %8 = phi i64 [ %7, %cond.then ], [ %minSize, %cond.else ]
  br label %cond.cont

cond.cont:                                        ; preds = %cond.end
  store i64 %8, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %cond.cont
  %9 = load i64, ptr %__return, align 8
  ret i64 %9
}

; Function Attrs: alwaysinline nounwind uwtable
define void @"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z"(ptr %this, i64 %newSize) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %get__AllocSize = call i64 @"?get__AllocSize@String@System@bf@@QEAATint@@XZ"(ptr %0)
  %1 = icmp sgt i64 %newSize, %get__AllocSize
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  %CalcNewSize = call i64 @"?CalcNewSize@String@System@bf@@AEAATint@@Tint@@@Z"(ptr %0, i64 %newSize)
  call void @"?Realloc@String@System@bf@@AEAAXTint@@@Z"(ptr %0, i64 %CalcNewSize)
  br label %if.end

if.end:                                           ; preds = %if.then, %newScope
  br label %exit

exit:                                             ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Realloc@String@System@bf@@AEAAXTint@@@Z"(ptr %this, i64 %newSize) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %newPtr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = icmp ule i64 %newSize, 1073741823
  call void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext %1, ptr @__bfStrObj66, ptr @__bfStrObj67, i64 866)
  %2 = mul i64 1, %newSize
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds ptr, ptr %3, i32 6
  %5 = load ptr, ptr %4, align 8
  %Alloc = call ptr %5(ptr %0, i64 %2, i64 1)
  store ptr %Alloc, ptr %newPtr, align 8
  %get__Ptr = call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr %0)
  %6 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %newPtr, align 8
  %8 = load i32, ptr %6, align 4
  %9 = sext i32 %8 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %7, ptr align 1 %get__Ptr, i64 %9, i1 false)
  br label %newScope

newScope:                                         ; preds = %entry
  %get__IsDynAlloc = call i1 @"?get__IsDynAlloc@String@System@bf@@QEAA_NXZ"(ptr %0)
  br i1 %get__IsDynAlloc, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  %10 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = icmp ne ptr %11, null
  br i1 %12, label %delete.body, label %delete.end

delete.body:                                      ; preds = %if.then
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds ptr, ptr %13, i32 7
  %15 = load ptr, ptr %14, align 8
  call void %15(ptr %0, ptr %11)
  br label %delete.end

delete.end:                                       ; preds = %delete.body, %if.then
  br label %if.end

if.end:                                           ; preds = %delete.end, %newScope
  %16 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %newPtr, align 8
  store ptr %17, ptr %16, align 8
  %18 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 2
  %19 = trunc i64 %newSize to i32
  %20 = or i32 %19, -2147483648
  %21 = or i32 %20, 1073741824
  store i32 %21, ptr %18, align 4
  br label %exit

exit:                                             ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Reserve@String@System@bf@@QEAAXTint@@@Z"(ptr %this, i64 %size) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %get__AllocSize = call i64 @"?get__AllocSize@String@System@bf@@QEAATint@@XZ"(ptr %0)
  %1 = icmp sgt i64 %size, %get__AllocSize
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  call void @"?Realloc@String@System@bf@@AEAAXTint@@@Z"(ptr %0, i64 %size)
  br label %if.end

if.end:                                           ; preds = %if.then, %newScope
  br label %exit

exit:                                             ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Realloc@String@System@bf@@AEAAXPEADTint@@@Z"(ptr %this, ptr %newPtr, i64 %newSize) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = icmp sle i64 %newSize, 2147483647
  call void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext %1, ptr @__bfStrObj69, ptr @__bfStrObj67, i64 886)
  %2 = icmp ule i64 %newSize, 1073741823
  call void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext %2, ptr @__bfStrObj66, ptr @__bfStrObj67, i64 888)
  %get__Ptr = call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr %0)
  %3 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = sext i32 %4 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %newPtr, ptr align 1 %get__Ptr, i64 %5, i1 false)
  br label %newScope

newScope:                                         ; preds = %entry
  %get__IsDynAlloc = call i1 @"?get__IsDynAlloc@String@System@bf@@QEAA_NXZ"(ptr %0)
  br i1 %get__IsDynAlloc, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  %6 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %delete.body, label %delete.end

delete.body:                                      ; preds = %if.then
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds ptr, ptr %9, i32 7
  %11 = load ptr, ptr %10, align 8
  call void %11(ptr %0, ptr %7)
  br label %delete.end

delete.end:                                       ; preds = %delete.body, %if.then
  br label %if.end

if.end:                                           ; preds = %delete.end, %newScope
  %12 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 3
  store ptr %newPtr, ptr %12, align 8
  %13 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 2
  %14 = trunc i64 %newSize to i32
  %15 = or i32 %14, -2147483648
  %16 = or i32 %15, 1073741824
  store i32 %16, ptr %13, align 4
  br label %exit

exit:                                             ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
declare i32 @"?StrLen@String@System@bf@@SAHPEAD@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Substring@String@System@bf@@QEAA?AUStringView@23@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.StringView@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Substring@String@System@bf@@QEAA?AUStringView@23@Tint@@0@Z"(ptr, ptr noalias sret(%"corlib.StringView@System@bf"), i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Substring@String@System@bf@@QEAA?AUStringView@23@UIndexRange@23@@Z"(ptr, ptr noalias sret(%"corlib.StringView@System@bf"), ptr) #0

; Function Attrs: nounwind uwtable
define void @"?Append@String@System@bf@@QEAAXUStringView@23@@Z"(ptr %this, ptr %strView_mPtr, i64 %strView_mLength) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  %2 = load ptr, ptr %this.addr, align 8
  store ptr %strView_mPtr, ptr %0, align 8
  store i64 %strView_mLength, ptr %1, align 8
  %get__Ptr = call ptr @"?get__Ptr__im@?$Span@D@System@bf@@QEAAPEADXZ"(ptr %strView_mPtr, i64 %strView_mLength)
  %get__Length = call i64 @"?get__Length__im@?$Span@D@System@bf@@QEAATint@@XZ"(ptr %strView_mPtr, i64 %strView_mLength)
  call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %2, ptr %get__Ptr, i64 %get__Length)
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAXU?$Span@_S@23@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAXPEA_S@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAXUStringView@23@Tint@@@Z"(ptr, ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAXUStringView@23@Tint@@1@Z"(ptr, ptr, i64, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAXPEAD@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
define void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %this, ptr %appendPtr, i64 %length) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %newCurrentIndex = alloca i64, align 8
  %ptr = alloca ptr, align 8
  %newSize = alloca i64, align 8
  %newPtr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %2 = load i32, ptr %1, align 4
  %3 = sext i32 %2 to i64
  %4 = add i64 %3, %length
  store i64 %4, ptr %newCurrentIndex, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %5 = load i64, ptr %newCurrentIndex, align 8
  %get__AllocSize = call i64 @"?get__AllocSize@String@System@bf@@QEAATint@@XZ"(ptr %0)
  %6 = icmp sgt i64 %5, %get__AllocSize
  br i1 %6, label %if.then, label %if.else

if.then:                                          ; preds = %newScope
  %7 = load i64, ptr %newCurrentIndex, align 8
  %CalcNewSize = call i64 @"?CalcNewSize@String@System@bf@@AEAATint@@Tint@@@Z"(ptr %0, i64 %7)
  store i64 %CalcNewSize, ptr %newSize, align 8
  %8 = load i64, ptr %newSize, align 8
  %9 = mul i64 1, %8
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds ptr, ptr %10, i32 6
  %12 = load ptr, ptr %11, align 8
  %Alloc = call ptr %12(ptr %0, i64 %9, i64 1)
  store ptr %Alloc, ptr %newPtr, align 8
  %13 = load ptr, ptr %newPtr, align 8
  %14 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds i8, ptr %13, i32 %15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 %appendPtr, i64 %length, i1 false)
  %17 = load ptr, ptr %newPtr, align 8
  %18 = load i64, ptr %newSize, align 8
  call void @"?Realloc@String@System@bf@@AEAAXPEADTint@@@Z"(ptr %0, ptr %17, i64 %18)
  %19 = load ptr, ptr %newPtr, align 8
  store ptr %19, ptr %ptr, align 8
  br label %if.end

if.else:                                          ; preds = %newScope
  %get__Ptr = call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr %0)
  store ptr %get__Ptr, ptr %ptr, align 8
  %20 = load ptr, ptr %ptr, align 8
  %21 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds i8, ptr %20, i32 %22
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %23, ptr align 1 %appendPtr, i64 %length, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %24 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %25 = load i64, ptr %newCurrentIndex, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, ptr %24, align 4
  br label %exit

exit:                                             ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Append@String@System@bf@@QEAAXPEAV?$Array1@D@23@Tint@@1@Z"(ptr %this, ptr %arr, i64 %idx, i64 %length) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %newCurrentIndex = alloca i64, align 8
  %ptr = alloca ptr, align 8
  %newSize = alloca i64, align 8
  %newPtr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %2 = load i32, ptr %1, align 4
  %3 = sext i32 %2 to i64
  %4 = add i64 %3, %length
  store i64 %4, ptr %newCurrentIndex, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %5 = load i64, ptr %newCurrentIndex, align 8
  %get__AllocSize = call i64 @"?get__AllocSize@String@System@bf@@QEAATint@@XZ"(ptr %0)
  %6 = icmp sgt i64 %5, %get__AllocSize
  br i1 %6, label %if.then, label %if.else

if.then:                                          ; preds = %newScope
  %7 = load i64, ptr %newCurrentIndex, align 8
  %CalcNewSize = call i64 @"?CalcNewSize@String@System@bf@@AEAATint@@Tint@@@Z"(ptr %0, i64 %7)
  store i64 %CalcNewSize, ptr %newSize, align 8
  %8 = load i64, ptr %newSize, align 8
  %9 = mul i64 1, %8
  %10 = load ptr, ptr %0, align 8
  %11 = getelementptr inbounds ptr, ptr %10, i32 6
  %12 = load ptr, ptr %11, align 8
  %Alloc = call ptr %12(ptr %0, i64 %9, i64 1)
  store ptr %Alloc, ptr %newPtr, align 8
  %13 = load ptr, ptr %newPtr, align 8
  %14 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds i8, ptr %13, i32 %15
  %CArray = call ptr @"?CArray@?$Array1@D@System@bf@@QEAAPEADXZ"(ptr %arr)
  %17 = getelementptr inbounds i8, ptr %CArray, i64 %idx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %16, ptr align 1 %17, i64 %length, i1 false)
  %18 = load ptr, ptr %newPtr, align 8
  %19 = load i64, ptr %newSize, align 8
  call void @"?Realloc@String@System@bf@@AEAAXPEADTint@@@Z"(ptr %0, ptr %18, i64 %19)
  %20 = load ptr, ptr %newPtr, align 8
  store ptr %20, ptr %ptr, align 8
  br label %if.end

if.else:                                          ; preds = %newScope
  %get__Ptr = call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr %0)
  store ptr %get__Ptr, ptr %ptr, align 8
  %21 = load ptr, ptr %ptr, align 8
  %22 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds i8, ptr %21, i32 %23
  %CArray1 = call ptr @"?CArray@?$Array1@D@System@bf@@QEAAPEADXZ"(ptr %arr)
  %25 = getelementptr inbounds i8, ptr %CArray1, i64 %idx
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %24, ptr align 1 %25, i64 %length, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %26 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %27 = load i64, ptr %newCurrentIndex, align 8
  %28 = trunc i64 %27 to i32
  store i32 %28, ptr %26, align 4
  br label %exit

exit:                                             ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @"?PrepareBuffer@String@System@bf@@QEAAPEADTint@@@Z"(ptr %this, i64 %bytes) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca ptr, align 8
  %count = alloca i64, align 8
  %ptr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %1 = icmp sle i64 %bytes, 0
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  store ptr null, ptr %__return, align 8
  br label %exit

if.end:                                           ; preds = %newScope
  store i64 %bytes, ptr %count, align 8
  %2 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = load i64, ptr %count, align 8
  %5 = sext i32 %3 to i64
  %6 = add i64 %5, %4
  %7 = add i64 %6, 1
  call void @"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z"(ptr %0, i64 %7)
  %get__Ptr = call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr %0)
  %8 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds i8, ptr %get__Ptr, i32 %9
  store ptr %10, ptr %ptr, align 8
  %11 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %12 = trunc i64 %bytes to i32
  %13 = load i32, ptr %11, align 4
  %14 = add i32 %13, %12
  store i32 %14, ptr %11, align 4
  %15 = load ptr, ptr %ptr, align 8
  store ptr %15, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %16 = load ptr, ptr %__return, align 8
  ret ptr %16
}

; Function Attrs: nounwind uwtable
define void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr %this, ptr %value) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %get__Ptr = call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr %value)
  %1 = getelementptr inbounds %"corlib.String@System@bf", ptr %value, i32 0, i32 1
  %2 = load i32, ptr %1, align 4
  %3 = sext i32 %2 to i64
  call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %0, ptr %get__Ptr, i64 %3)
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAXPEAV123@Tint@@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAXPEAV123@Tint@@1@Z"(ptr, ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
define void @"?Append@String@System@bf@@QEAAXTparams@@U?$Span@UStringView@System@bf@@@23@@Z"(ptr %this, ptr %strings_mPtr, i64 %strings_mLength) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  %2 = alloca %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", align 8
  %3 = alloca %"corlib.?$Result@UStringView@System@bf@@@System@bf", align 8
  %4 = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %5 = load ptr, ptr %this.addr, align 8
  store ptr %strings_mPtr, ptr %0, align 8
  store i64 %strings_mLength, ptr %1, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  call void @"?GetEnumerator__im@?$Span@UStringView@System@bf@@@System@bf@@QEAA?AUEnumerator@123@XZ"(ptr sret(%"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf") %2, ptr %strings_mPtr, i64 %strings_mLength)
  store ptr %3, ptr %4, align 8
  br label %newScope1

newScope1:                                        ; preds = %newScope
  br label %foreach.cond

foreach.cond:                                     ; preds = %foreach.inc, %newScope1
  call void @"?GetNext@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@QEAA?AU?$Result@?AUStringView@System@bf@@@34@XZ"(ptr %2, ptr sret(%"corlib.?$Result@UStringView@System@bf@@@System@bf") %3)
  %6 = getelementptr inbounds %"corlib.?$Result@UStringView@System@bf@@@System@bf", ptr %3, i32 0, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %foreach.body, label %foreach.end

foreach.body:                                     ; preds = %foreach.cond
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %9, i32 0, i32 0
  %11 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %10, i32 0, i32 2
  %14 = load i64, ptr %13, align 8
  call void @"?Append@String@System@bf@@QEAAXUStringView@23@@Z"(ptr %5, ptr %12, i64 %14)
  br label %foreach.inc

foreach.inc:                                      ; preds = %foreach.body
  br label %foreach.cond

foreach.end:                                      ; preds = %foreach.cond
  call void @"?Dispose__im@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(32) %2)
  br label %exit

exit:                                             ; preds = %foreach.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Append@String@System@bf@@QEAAXD@Z"(ptr %this, i8 %c) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %2 = load i32, ptr %1, align 4
  %3 = sext i32 %2 to i64
  %4 = add i64 %3, 1
  call void @"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z"(ptr %0, i64 %4)
  %get__Ptr = call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr %0)
  %5 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 1
  store i32 %7, ptr %5, align 4
  %8 = getelementptr inbounds i8, ptr %get__Ptr, i32 %6
  store i8 %c, ptr %8, align 1
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Append@String@System@bf@@QEAAXDTint@@@Z"(ptr %this, i8 %c, i64 %count) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %1 = icmp sle i64 %count, 0
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  br label %exit

if.end:                                           ; preds = %newScope
  %2 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = sext i32 %3 to i64
  %5 = add i64 %4, %count
  call void @"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z"(ptr %0, i64 %5)
  %get__Ptr = call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr %0)
  br label %for.start

for.start:                                        ; preds = %if.end
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %for.start
  %6 = load i32, ptr %i, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp slt i64 %7, %count
  br i1 %8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, 1
  store i32 %11, ptr %9, align 4
  %12 = getelementptr inbounds i8, ptr %get__Ptr, i32 %10
  store i8 %c, ptr %12, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load i32, ptr %i, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %exit

exit:                                             ; preds = %for.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAX_U@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAX_UTint@@@Z"(ptr, i32, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAXPEAVObject@23@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__a_add__@String@System@bf@@QEAAXPEAV123@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__a_add__@String@System@bf@@QEAAXUStringView@23@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?__a_add__@String@System@bf@@QEAAXD@Z"(ptr, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?__a_add__@String@System@bf@@QEAAX_U@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?__a_add__@String@System@bf@@QEAAXPEAVObject@23@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"??HString@System@bf@@SAPEAV012@PEAV012@0@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"??HString@System@bf@@SAPEAV012@PEAV012@UStringView@12@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare ptr @"??HString@System@bf@@SAPEAV012@PEAV012@_U@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
define void @"?EnsureNullTerminator@String@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %allocSize = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %get__AllocSize = call i64 @"?get__AllocSize@String@System@bf@@QEAATint@@XZ"(ptr %0)
  store i64 %get__AllocSize, ptr %allocSize, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %1 = load i64, ptr %allocSize, align 8
  %2 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = sext i32 %3 to i64
  %5 = icmp eq i64 %1, %4
  br i1 %5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %newScope
  %get__Ptr = call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr %0)
  %6 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds i8, ptr %get__Ptr, i32 %7
  %9 = load i8, ptr %8, align 1
  %10 = icmp ne i8 %9, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %newScope
  %11 = phi i1 [ true, %newScope ], [ %10, %lor.rhs ]
  br i1 %11, label %if.then, label %if.end

if.then:                                          ; preds = %lor.end
  %12 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 %14, 1
  call void @"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z"(ptr %0, i64 %15)
  %get__Ptr1 = call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr %0)
  %16 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds i8, ptr %get__Ptr1, i32 %17
  store i8 0, ptr %18, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.end
  br label %exit

exit:                                             ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?get__@CHK$String@System@bf@@QEAAAEADTint@@@Z"(ptr, i64) #0

; Function Attrs: alwaysinline nounwind uwtable
define ptr @"?get__@UCHK$String@System@bf@@QEAAAEADTint@@@Z"(ptr %this, i64 %index) #1 {
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
declare void @"?set__@CHK$String@System@bf@@QEAAXDTint@@@Z"(ptr, i8, i64) #0

; Function Attrs: alwaysinline nounwind uwtable
define void @"?set__@UCHK$String@System@bf@@QEAAXDTint@@@Z"(ptr %this, i8 %value, i64 %index) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %get__Ptr = call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr %0)
  %1 = getelementptr inbounds i8, ptr %get__Ptr, i64 %index
  store i8 %value, ptr %1, align 1
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?get__@CHK$String@System@bf@@QEAAAEADUIndex@23@@Z"(ptr, ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"?get__@UCHK$String@System@bf@@QEAAAEADUIndex@23@@Z"(ptr, ptr) #1

; Function Attrs: nounwind uwtable
declare void @"?set__@CHK$String@System@bf@@QEAAXDUIndex@23@@Z"(ptr, i8, ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare void @"?set__@UCHK$String@System@bf@@QEAAXDUIndex@23@@Z"(ptr, i8, ptr) #1

; Function Attrs: alwaysinline nounwind uwtable
declare void @"?get__@String@System@bf@@QEAA?AUStringView@23@UIndexRange@23@@Z"(ptr, ptr noalias sret(%"corlib.StringView@System@bf"), ptr) #1

; Function Attrs: nounwind uwtable
declare void @"?Concat@String@System@bf@@QEAAXTparams@@PEAV?$Array1@PEAVObject@System@bf@@@23@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?GetStringOrEmpty@String@System@bf@@SAPEAV123@PEAV123@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?IsNullOrEmpty@String@System@bf@@SA_NPEAV123@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?IsNullOrWhiteSpace@String@System@bf@@SA_NPEAV123@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?FormatError@String@System@bf@@AEAA?AU?$Result@X@23@XZ"(ptr %this, ptr noalias sret(%"corlib.?$Result@X@System@bf") %0) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %1 = load ptr, ptr %this.addr, align 8
  store ptr %0, ptr %__return.addr, align 1
  %2 = load ptr, ptr %__return.addr, align 1
  store %"corlib.?$Result@X@System@bf" <{ %"corlib.Enum@System@bf" zeroinitializer, [0 x i8] zeroinitializer, i8 1 }>, ptr %2, align 1
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?AppendF@String@System@bf@@QEAA?AU?$Result@X@23@PEAVIFormatProvider@23@UStringView@23@Tparams@@U?$Span@PEAVObject@System@bf@@@23@@Z"(ptr %this, ptr noalias sret(%"corlib.?$Result@X@System@bf") %0, ptr %provider, ptr %format, ptr %args) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return.addr = alloca ptr, align 8
  %pos = alloca i64, align 8
  %len = alloca i64, align 8
  %ch = alloca i8, align 1
  %s = alloca ptr, align 8
  %fmt = alloca ptr, align 8
  %autoArgIdx = alloca i64, align 8
  %charsLeft = alloca i64, align 8
  %ptr = alloca ptr, align 8
  %p = alloca i64, align 8
  %i = alloca i64, align 8
  %1 = alloca %"corlib.?$Result@X@System@bf", align 1
  %index = alloca i64, align 8
  %2 = alloca %"corlib.?$Result@X@System@bf", align 1
  %3 = alloca %"corlib.?$Result@X@System@bf", align 1
  %4 = alloca %"corlib.?$Result@X@System@bf", align 1
  %leftJustify = alloca i1, align 1
  %width = alloca i64, align 8
  %5 = alloca %"corlib.?$Result@X@System@bf", align 1
  %6 = alloca %"corlib.?$Result@X@System@bf", align 1
  %7 = alloca %"corlib.?$Result@X@System@bf", align 1
  %8 = alloca %"corlib.?$Result@X@System@bf", align 1
  %arg = alloca ptr, align 8
  %deferredCallTail = alloca ptr, align 8
  %9 = alloca i64, align 8
  %isFormatEx = alloca i1, align 1
  %10 = alloca %"corlib.?$Result@X@System@bf", align 1
  %11 = alloca %"corlib.?$Result@X@System@bf", align 1
  %12 = alloca i64, align 8
  %13 = alloca %"corlib.?$Result@X@System@bf", align 1
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %formattableArg = alloca ptr, align 8
  %pad = alloca i64, align 8
  store ptr null, ptr %deferredCallTail, align 8
  store ptr %this, ptr %this.addr, align 8
  %16 = load ptr, ptr %this.addr, align 8
  store ptr %0, ptr %__return.addr, align 1
  br label %newScope

newScope:                                         ; preds = %entry
  %17 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %format, i32 0, i32 1
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %format, i32 0, i32 2
  %20 = load i64, ptr %19, align 8
  %get__Ptr = call ptr @"?get__Ptr__im@?$Span@D@System@bf@@QEAAPEADXZ"(ptr %18, i64 %20)
  %21 = icmp eq ptr %get__Ptr, null
  br i1 %21, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  %22 = load ptr, ptr %__return.addr, align 1
  store %"corlib.?$Result@X@System@bf" <{ %"corlib.Enum@System@bf" zeroinitializer, [0 x i8] zeroinitializer, i8 1 }>, ptr %22, align 1
  br label %exit

if.end:                                           ; preds = %newScope
  store i64 0, ptr %pos, align 8
  %23 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %format, i32 0, i32 1
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %format, i32 0, i32 2
  %26 = load i64, ptr %25, align 8
  %get__Length = call i64 @"?get__Length__im@?$Span@D@System@bf@@QEAATint@@XZ"(ptr %24, i64 %26)
  store i64 %get__Length, ptr %len, align 8
  store i8 0, ptr %ch, align 1
  store ptr null, ptr %s, align 8
  store ptr @__bfStrObj1, ptr %fmt, align 8
  store i64 0, ptr %autoArgIdx, align 8
  br label %newScope1

newScope1:                                        ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %if.end169, %newScope1
  br label %while.body

while.body:                                       ; preds = %while.cond
  %27 = load i64, ptr %len, align 8
  %28 = load i64, ptr %pos, align 8
  %29 = sub i64 %27, %28
  store i64 %29, ptr %charsLeft, align 8
  %30 = getelementptr inbounds %"corlib.String@System@bf", ptr %16, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = load i64, ptr %charsLeft, align 8
  %33 = sext i32 %31 to i64
  %34 = add i64 %33, %32
  call void @"?Reserve@String@System@bf@@QEAAXTint@@@Z"(ptr %16, i64 %34)
  %get__Ptr2 = call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr %16)
  store ptr %get__Ptr2, ptr %ptr, align 8
  %35 = load i64, ptr %pos, align 8
  store i64 %35, ptr %p, align 8
  %36 = load i64, ptr %pos, align 8
  store i64 %36, ptr %i, align 8
  br label %newScope3

newScope3:                                        ; preds = %while.body
  br label %while.cond4

while.cond4:                                      ; preds = %if.end19, %newScope3
  %37 = load i64, ptr %pos, align 8
  %38 = load i64, ptr %len, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %while.body5, label %while.end

while.body5:                                      ; preds = %while.cond4
  %40 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %format, i32 0, i32 0
  %41 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %40, i32 0, i32 2
  %44 = load i64, ptr %43, align 8
  %45 = load i64, ptr %pos, align 8
  %get__ = call ptr @"?get____im@UCHK$StringView@System@bf@@QEAAAEADTint@@@Z"(ptr %42, i64 %44, i64 %45)
  %46 = load i8, ptr %get__, align 1
  store i8 %46, ptr %ch, align 1
  %47 = load i64, ptr %pos, align 8
  %48 = add i64 %47, 1
  store i64 %48, ptr %pos, align 8
  br label %newScope6

newScope6:                                        ; preds = %while.body5
  %49 = load i8, ptr %ch, align 1
  %50 = icmp eq i8 %49, 125
  br i1 %50, label %if.then7, label %if.end11

if.then7:                                         ; preds = %newScope6
  %51 = load i64, ptr %pos, align 8
  %52 = load i64, ptr %len, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %if.then7
  %54 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %format, i32 0, i32 0
  %55 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %54, i32 0, i32 2
  %58 = load i64, ptr %57, align 8
  %59 = load i64, ptr %pos, align 8
  %get__8 = call ptr @"?get____im@UCHK$StringView@System@bf@@QEAAAEADTint@@@Z"(ptr %56, i64 %58, i64 %59)
  %60 = load i8, ptr %get__8, align 1
  %61 = icmp eq i8 %60, 125
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then7
  %62 = phi i1 [ false, %if.then7 ], [ %61, %land.rhs ]
  br i1 %62, label %if.then9, label %if.else

if.then9:                                         ; preds = %land.end
  %63 = load i64, ptr %pos, align 8
  %64 = add i64 %63, 1
  store i64 %64, ptr %pos, align 8
  br label %if.end10

if.else:                                          ; preds = %land.end
  call void @"?FormatError@String@System@bf@@AEAA?AU?$Result@X@23@XZ"(ptr %16, ptr sret(%"corlib.?$Result@X@System@bf") %1)
  %65 = load %"corlib.?$Result@X@System@bf", ptr %1, align 1
  %66 = load ptr, ptr %__return.addr, align 1
  store %"corlib.?$Result@X@System@bf" %65, ptr %66, align 1
  br label %exit

if.end10:                                         ; preds = %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %newScope6
  %67 = load i8, ptr %ch, align 1
  %68 = icmp eq i8 %67, 123
  br i1 %68, label %if.then12, label %if.end19

if.then12:                                        ; preds = %if.end11
  %69 = load i64, ptr %pos, align 8
  %70 = load i64, ptr %len, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %land.rhs13, label %land.end15

land.rhs13:                                       ; preds = %if.then12
  %72 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %format, i32 0, i32 0
  %73 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %72, i32 0, i32 1
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %72, i32 0, i32 2
  %76 = load i64, ptr %75, align 8
  %77 = load i64, ptr %pos, align 8
  %get__14 = call ptr @"?get____im@UCHK$StringView@System@bf@@QEAAAEADTint@@@Z"(ptr %74, i64 %76, i64 %77)
  %78 = load i8, ptr %get__14, align 1
  %79 = icmp eq i8 %78, 123
  br label %land.end15

land.end15:                                       ; preds = %land.rhs13, %if.then12
  %80 = phi i1 [ false, %if.then12 ], [ %79, %land.rhs13 ]
  br i1 %80, label %if.then16, label %if.else17

if.then16:                                        ; preds = %land.end15
  %81 = load i64, ptr %pos, align 8
  %82 = add i64 %81, 1
  store i64 %82, ptr %pos, align 8
  br label %if.end18

if.else17:                                        ; preds = %land.end15
  %83 = load i64, ptr %pos, align 8
  %84 = sub i64 %83, 1
  store i64 %84, ptr %pos, align 8
  br label %while.end

if.end18:                                         ; preds = %if.then16
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end11
  %85 = getelementptr inbounds %"corlib.String@System@bf", ptr %16, i32 0, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = add i32 %86, 1
  store i32 %87, ptr %85, align 4
  %88 = load ptr, ptr %ptr, align 8
  %89 = getelementptr inbounds i8, ptr %88, i32 %86
  %90 = load i8, ptr %ch, align 1
  store i8 %90, ptr %89, align 1
  br label %while.cond4

while.end:                                        ; preds = %if.else17, %while.cond4
  %91 = load i64, ptr %pos, align 8
  %92 = load i64, ptr %len, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %if.then20, label %if.end21

if.then20:                                        ; preds = %while.end
  br label %while.end170

if.end21:                                         ; preds = %while.end
  %94 = load i64, ptr %pos, align 8
  %95 = add i64 %94, 1
  store i64 %95, ptr %pos, align 8
  store i64 0, ptr %index, align 8
  br label %newScope22

newScope22:                                       ; preds = %if.end21
  %96 = load i64, ptr %pos, align 8
  %97 = load i64, ptr %len, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %newScope22
  %99 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %format, i32 0, i32 0
  %100 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %99, i32 0, i32 1
  %101 = load ptr, ptr %100, align 8
  %102 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %99, i32 0, i32 2
  %103 = load i64, ptr %102, align 8
  %104 = load i64, ptr %pos, align 8
  %get__23 = call ptr @"?get____im@UCHK$StringView@System@bf@@QEAAAEADTint@@@Z"(ptr %101, i64 %103, i64 %104)
  %105 = load i8, ptr %get__23, align 1
  store i8 %105, ptr %ch, align 1
  %106 = icmp ult i8 %105, 48
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %newScope22
  %107 = phi i1 [ true, %newScope22 ], [ %106, %lor.rhs ]
  br i1 %107, label %lor.end25, label %lor.rhs24

lor.rhs24:                                        ; preds = %lor.end
  %108 = load i8, ptr %ch, align 1
  %109 = icmp ugt i8 %108, 57
  br label %lor.end25

lor.end25:                                        ; preds = %lor.rhs24, %lor.end
  %110 = phi i1 [ true, %lor.end ], [ %109, %lor.rhs24 ]
  br i1 %110, label %if.then26, label %if.else36

if.then26:                                        ; preds = %lor.end25
  %111 = load i64, ptr %pos, align 8
  %112 = load i64, ptr %len, align 8
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %land.rhs27, label %land.end32

land.rhs27:                                       ; preds = %if.then26
  %114 = load i8, ptr %ch, align 1
  %115 = icmp eq i8 %114, 125
  br i1 %115, label %lor.end29, label %lor.rhs28

lor.rhs28:                                        ; preds = %land.rhs27
  %116 = load i8, ptr %ch, align 1
  %117 = icmp eq i8 %116, 58
  br label %lor.end29

lor.end29:                                        ; preds = %lor.rhs28, %land.rhs27
  %118 = phi i1 [ true, %land.rhs27 ], [ %117, %lor.rhs28 ]
  br i1 %118, label %lor.end31, label %lor.rhs30

lor.rhs30:                                        ; preds = %lor.end29
  %119 = load i8, ptr %ch, align 1
  %120 = icmp eq i8 %119, 44
  br label %lor.end31

lor.end31:                                        ; preds = %lor.rhs30, %lor.end29
  %121 = phi i1 [ true, %lor.end29 ], [ %120, %lor.rhs30 ]
  br label %land.end32

land.end32:                                       ; preds = %lor.end31, %if.then26
  %122 = phi i1 [ false, %if.then26 ], [ %121, %lor.end31 ]
  br i1 %122, label %if.then33, label %if.else34

if.then33:                                        ; preds = %land.end32
  %123 = load i64, ptr %autoArgIdx, align 8
  %124 = add i64 %123, 1
  store i64 %124, ptr %autoArgIdx, align 8
  store i64 %123, ptr %index, align 8
  br label %if.end35

if.else34:                                        ; preds = %land.end32
  call void @"?FormatError@String@System@bf@@AEAA?AU?$Result@X@23@XZ"(ptr %16, ptr sret(%"corlib.?$Result@X@System@bf") %2)
  %125 = load %"corlib.?$Result@X@System@bf", ptr %2, align 1
  %126 = load ptr, ptr %__return.addr, align 1
  store %"corlib.?$Result@X@System@bf" %125, ptr %126, align 1
  br label %exit

if.end35:                                         ; preds = %if.then33
  br label %if.end45

if.else36:                                        ; preds = %lor.end25
  br label %repeat.body

repeat.body:                                      ; preds = %land.end44, %if.else36
  %127 = load i64, ptr %index, align 8
  %128 = mul i64 %127, 10
  %129 = load i8, ptr %ch, align 1
  %130 = trunc i64 %128 to i8
  %131 = add i8 %130, %129
  %132 = zext i8 %131 to i16
  %133 = sub i16 %132, 48
  %134 = sext i16 %133 to i64
  store i64 %134, ptr %index, align 8
  %135 = load i64, ptr %pos, align 8
  %136 = add i64 %135, 1
  store i64 %136, ptr %pos, align 8
  br label %newScope37

newScope37:                                       ; preds = %repeat.body
  %137 = load i64, ptr %pos, align 8
  %138 = load i64, ptr %len, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %if.then38, label %if.end39

if.then38:                                        ; preds = %newScope37
  call void @"?FormatError@String@System@bf@@AEAA?AU?$Result@X@23@XZ"(ptr %16, ptr sret(%"corlib.?$Result@X@System@bf") %3)
  %140 = load %"corlib.?$Result@X@System@bf", ptr %3, align 1
  %141 = load ptr, ptr %__return.addr, align 1
  store %"corlib.?$Result@X@System@bf" %140, ptr %141, align 1
  br label %exit

if.end39:                                         ; preds = %newScope37
  %142 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %format, i32 0, i32 0
  %143 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %142, i32 0, i32 1
  %144 = load ptr, ptr %143, align 8
  %145 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %142, i32 0, i32 2
  %146 = load i64, ptr %145, align 8
  %147 = load i64, ptr %pos, align 8
  %get__40 = call ptr @"?get____im@UCHK$StringView@System@bf@@QEAAAEADTint@@@Z"(ptr %144, i64 %146, i64 %147)
  %148 = load i8, ptr %get__40, align 1
  store i8 %148, ptr %ch, align 1
  br label %repeat.cond

repeat.cond:                                      ; preds = %if.end39
  %149 = load i8, ptr %ch, align 1
  %150 = icmp uge i8 %149, 48
  br i1 %150, label %land.rhs41, label %land.end42

land.rhs41:                                       ; preds = %repeat.cond
  %151 = load i8, ptr %ch, align 1
  %152 = icmp ule i8 %151, 57
  br label %land.end42

land.end42:                                       ; preds = %land.rhs41, %repeat.cond
  %153 = phi i1 [ false, %repeat.cond ], [ %152, %land.rhs41 ]
  br i1 %153, label %land.rhs43, label %land.end44

land.rhs43:                                       ; preds = %land.end42
  %154 = load i64, ptr %index, align 8
  %155 = icmp slt i64 %154, 1000000
  br label %land.end44

land.end44:                                       ; preds = %land.rhs43, %land.end42
  %156 = phi i1 [ false, %land.end42 ], [ %155, %land.rhs43 ]
  br i1 %156, label %repeat.body, label %repeat.end

repeat.end:                                       ; preds = %land.end44
  br label %if.end45

if.end45:                                         ; preds = %repeat.end, %if.end35
  %157 = load i64, ptr %index, align 8
  %158 = getelementptr inbounds %"corlib.?$Span@PEAVObject@System@bf@@@System@bf", ptr %args, i32 0, i32 1
  %159 = load ptr, ptr %158, align 8
  %160 = getelementptr inbounds %"corlib.?$Span@PEAVObject@System@bf@@@System@bf", ptr %args, i32 0, i32 2
  %161 = load i64, ptr %160, align 8
  %get__Length46 = call i64 @"?get__Length__im@?$Span@PEAVObject@System@bf@@@System@bf@@QEAATint@@XZ"(ptr %159, i64 %161)
  %162 = icmp sge i64 %157, %get__Length46
  br i1 %162, label %if.then47, label %if.end48

if.then47:                                        ; preds = %if.end45
  call void @"?FormatError@String@System@bf@@AEAA?AU?$Result@X@23@XZ"(ptr %16, ptr sret(%"corlib.?$Result@X@System@bf") %4)
  %163 = load %"corlib.?$Result@X@System@bf", ptr %4, align 1
  %164 = load ptr, ptr %__return.addr, align 1
  store %"corlib.?$Result@X@System@bf" %163, ptr %164, align 1
  br label %exit

if.end48:                                         ; preds = %if.end45
  br label %while.cond49

while.cond49:                                     ; preds = %while.body53, %if.end48
  %165 = load i64, ptr %pos, align 8
  %166 = load i64, ptr %len, align 8
  %167 = icmp slt i64 %165, %166
  br i1 %167, label %land.rhs50, label %land.end52

land.rhs50:                                       ; preds = %while.cond49
  %168 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %format, i32 0, i32 0
  %169 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %168, i32 0, i32 1
  %170 = load ptr, ptr %169, align 8
  %171 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %168, i32 0, i32 2
  %172 = load i64, ptr %171, align 8
  %173 = load i64, ptr %pos, align 8
  %get__51 = call ptr @"?get____im@UCHK$StringView@System@bf@@QEAAAEADTint@@@Z"(ptr %170, i64 %172, i64 %173)
  %174 = load i8, ptr %get__51, align 1
  store i8 %174, ptr %ch, align 1
  %175 = icmp eq i8 %174, 32
  br label %land.end52

land.end52:                                       ; preds = %land.rhs50, %while.cond49
  %176 = phi i1 [ false, %while.cond49 ], [ %175, %land.rhs50 ]
  br i1 %176, label %while.body53, label %while.end54

while.body53:                                     ; preds = %land.end52
  %177 = load i64, ptr %pos, align 8
  %178 = add i64 %177, 1
  store i64 %178, ptr %pos, align 8
  br label %while.cond49

while.end54:                                      ; preds = %land.end52
  store i1 false, ptr %leftJustify, align 1
  store i64 0, ptr %width, align 8
  br label %newScope55

newScope55:                                       ; preds = %while.end54
  %179 = load i8, ptr %ch, align 1
  %180 = icmp eq i8 %179, 44
  br i1 %180, label %if.then56, label %if.end89

if.then56:                                        ; preds = %newScope55
  %181 = load i64, ptr %pos, align 8
  %182 = add i64 %181, 1
  store i64 %182, ptr %pos, align 8
  br label %newScope57

newScope57:                                       ; preds = %if.then56
  br label %while.cond58

while.cond58:                                     ; preds = %while.body62, %newScope57
  %183 = load i64, ptr %pos, align 8
  %184 = load i64, ptr %len, align 8
  %185 = icmp slt i64 %183, %184
  br i1 %185, label %land.rhs59, label %land.end61

land.rhs59:                                       ; preds = %while.cond58
  %186 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %format, i32 0, i32 0
  %187 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %186, i32 0, i32 1
  %188 = load ptr, ptr %187, align 8
  %189 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %186, i32 0, i32 2
  %190 = load i64, ptr %189, align 8
  %191 = load i64, ptr %pos, align 8
  %get__60 = call ptr @"?get____im@UCHK$StringView@System@bf@@QEAAAEADTint@@@Z"(ptr %188, i64 %190, i64 %191)
  %192 = load i8, ptr %get__60, align 1
  %193 = icmp eq i8 %192, 32
  br label %land.end61

land.end61:                                       ; preds = %land.rhs59, %while.cond58
  %194 = phi i1 [ false, %while.cond58 ], [ %193, %land.rhs59 ]
  br i1 %194, label %while.body62, label %while.end63

while.body62:                                     ; preds = %land.end61
  %195 = load i64, ptr %pos, align 8
  %196 = add i64 %195, 1
  store i64 %196, ptr %pos, align 8
  br label %while.cond58

while.end63:                                      ; preds = %land.end61
  %197 = load i64, ptr %pos, align 8
  %198 = load i64, ptr %len, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %if.then64, label %if.end65

if.then64:                                        ; preds = %while.end63
  call void @"?FormatError@String@System@bf@@AEAA?AU?$Result@X@23@XZ"(ptr %16, ptr sret(%"corlib.?$Result@X@System@bf") %5)
  %200 = load %"corlib.?$Result@X@System@bf", ptr %5, align 1
  %201 = load ptr, ptr %__return.addr, align 1
  store %"corlib.?$Result@X@System@bf" %200, ptr %201, align 1
  br label %exit

if.end65:                                         ; preds = %while.end63
  %202 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %format, i32 0, i32 0
  %203 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %202, i32 0, i32 1
  %204 = load ptr, ptr %203, align 8
  %205 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %202, i32 0, i32 2
  %206 = load i64, ptr %205, align 8
  %207 = load i64, ptr %pos, align 8
  %get__66 = call ptr @"?get____im@UCHK$StringView@System@bf@@QEAAAEADTint@@@Z"(ptr %204, i64 %206, i64 %207)
  %208 = load i8, ptr %get__66, align 1
  store i8 %208, ptr %ch, align 1
  br label %newScope67

newScope67:                                       ; preds = %if.end65
  %209 = load i8, ptr %ch, align 1
  %210 = icmp eq i8 %209, 45
  br i1 %210, label %if.then68, label %if.end73

if.then68:                                        ; preds = %newScope67
  store i1 true, ptr %leftJustify, align 1
  %211 = load i64, ptr %pos, align 8
  %212 = add i64 %211, 1
  store i64 %212, ptr %pos, align 8
  br label %newScope69

newScope69:                                       ; preds = %if.then68
  %213 = load i64, ptr %pos, align 8
  %214 = load i64, ptr %len, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %if.then70, label %if.end71

if.then70:                                        ; preds = %newScope69
  call void @"?FormatError@String@System@bf@@AEAA?AU?$Result@X@23@XZ"(ptr %16, ptr sret(%"corlib.?$Result@X@System@bf") %6)
  %216 = load %"corlib.?$Result@X@System@bf", ptr %6, align 1
  %217 = load ptr, ptr %__return.addr, align 1
  store %"corlib.?$Result@X@System@bf" %216, ptr %217, align 1
  br label %exit

if.end71:                                         ; preds = %newScope69
  %218 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %format, i32 0, i32 0
  %219 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %218, i32 0, i32 1
  %220 = load ptr, ptr %219, align 8
  %221 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %218, i32 0, i32 2
  %222 = load i64, ptr %221, align 8
  %223 = load i64, ptr %pos, align 8
  %get__72 = call ptr @"?get____im@UCHK$StringView@System@bf@@QEAAAEADTint@@@Z"(ptr %220, i64 %222, i64 %223)
  %224 = load i8, ptr %get__72, align 1
  store i8 %224, ptr %ch, align 1
  br label %if.end73

if.end73:                                         ; preds = %if.end71, %newScope67
  %225 = load i8, ptr %ch, align 1
  %226 = icmp ult i8 %225, 48
  br i1 %226, label %lor.end75, label %lor.rhs74

lor.rhs74:                                        ; preds = %if.end73
  %227 = load i8, ptr %ch, align 1
  %228 = icmp ugt i8 %227, 57
  br label %lor.end75

lor.end75:                                        ; preds = %lor.rhs74, %if.end73
  %229 = phi i1 [ true, %if.end73 ], [ %228, %lor.rhs74 ]
  br i1 %229, label %if.then76, label %if.end77

if.then76:                                        ; preds = %lor.end75
  call void @"?FormatError@String@System@bf@@AEAA?AU?$Result@X@23@XZ"(ptr %16, ptr sret(%"corlib.?$Result@X@System@bf") %7)
  %230 = load %"corlib.?$Result@X@System@bf", ptr %7, align 1
  %231 = load ptr, ptr %__return.addr, align 1
  store %"corlib.?$Result@X@System@bf" %230, ptr %231, align 1
  br label %exit

if.end77:                                         ; preds = %lor.end75
  br label %repeat.body78

repeat.body78:                                    ; preds = %land.end87, %if.end77
  %232 = load i64, ptr %width, align 8
  %233 = mul i64 %232, 10
  %234 = load i8, ptr %ch, align 1
  %235 = trunc i64 %233 to i8
  %236 = add i8 %235, %234
  %237 = zext i8 %236 to i16
  %238 = sub i16 %237, 48
  %239 = sext i16 %238 to i64
  store i64 %239, ptr %width, align 8
  %240 = load i64, ptr %pos, align 8
  %241 = add i64 %240, 1
  store i64 %241, ptr %pos, align 8
  br label %newScope79

newScope79:                                       ; preds = %repeat.body78
  %242 = load i64, ptr %pos, align 8
  %243 = load i64, ptr %len, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %if.then80, label %if.end81

if.then80:                                        ; preds = %newScope79
  call void @"?FormatError@String@System@bf@@AEAA?AU?$Result@X@23@XZ"(ptr %16, ptr sret(%"corlib.?$Result@X@System@bf") %8)
  %245 = load %"corlib.?$Result@X@System@bf", ptr %8, align 1
  %246 = load ptr, ptr %__return.addr, align 1
  store %"corlib.?$Result@X@System@bf" %245, ptr %246, align 1
  br label %exit

if.end81:                                         ; preds = %newScope79
  %247 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %format, i32 0, i32 0
  %248 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %247, i32 0, i32 1
  %249 = load ptr, ptr %248, align 8
  %250 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %247, i32 0, i32 2
  %251 = load i64, ptr %250, align 8
  %252 = load i64, ptr %pos, align 8
  %get__82 = call ptr @"?get____im@UCHK$StringView@System@bf@@QEAAAEADTint@@@Z"(ptr %249, i64 %251, i64 %252)
  %253 = load i8, ptr %get__82, align 1
  store i8 %253, ptr %ch, align 1
  br label %repeat.cond83

repeat.cond83:                                    ; preds = %if.end81
  %254 = load i8, ptr %ch, align 1
  %255 = icmp uge i8 %254, 48
  br i1 %255, label %land.rhs84, label %land.end85

land.rhs84:                                       ; preds = %repeat.cond83
  %256 = load i8, ptr %ch, align 1
  %257 = icmp ule i8 %256, 57
  br label %land.end85

land.end85:                                       ; preds = %land.rhs84, %repeat.cond83
  %258 = phi i1 [ false, %repeat.cond83 ], [ %257, %land.rhs84 ]
  br i1 %258, label %land.rhs86, label %land.end87

land.rhs86:                                       ; preds = %land.end85
  %259 = load i64, ptr %width, align 8
  %260 = icmp slt i64 %259, 1000000
  br label %land.end87

land.end87:                                       ; preds = %land.rhs86, %land.end85
  %261 = phi i1 [ false, %land.end85 ], [ %260, %land.rhs86 ]
  br i1 %261, label %repeat.body78, label %repeat.end88

repeat.end88:                                     ; preds = %land.end87
  br label %if.end89

if.end89:                                         ; preds = %repeat.end88, %newScope55
  br label %while.cond90

while.cond90:                                     ; preds = %while.body94, %if.end89
  %262 = load i64, ptr %pos, align 8
  %263 = load i64, ptr %len, align 8
  %264 = icmp slt i64 %262, %263
  br i1 %264, label %land.rhs91, label %land.end93

land.rhs91:                                       ; preds = %while.cond90
  %265 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %format, i32 0, i32 0
  %266 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %265, i32 0, i32 1
  %267 = load ptr, ptr %266, align 8
  %268 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %265, i32 0, i32 2
  %269 = load i64, ptr %268, align 8
  %270 = load i64, ptr %pos, align 8
  %get__92 = call ptr @"?get____im@UCHK$StringView@System@bf@@QEAAAEADTint@@@Z"(ptr %267, i64 %269, i64 %270)
  %271 = load i8, ptr %get__92, align 1
  store i8 %271, ptr %ch, align 1
  %272 = icmp eq i8 %271, 32
  br label %land.end93

land.end93:                                       ; preds = %land.rhs91, %while.cond90
  %273 = phi i1 [ false, %while.cond90 ], [ %272, %land.rhs91 ]
  br i1 %273, label %while.body94, label %while.end95

while.body94:                                     ; preds = %land.end93
  %274 = load i64, ptr %pos, align 8
  %275 = add i64 %274, 1
  store i64 %275, ptr %pos, align 8
  br label %while.cond90

while.end95:                                      ; preds = %land.end93
  %276 = getelementptr inbounds %"corlib.?$Span@PEAVObject@System@bf@@@System@bf", ptr %args, i32 0, i32 1
  %277 = load ptr, ptr %276, align 8
  %278 = getelementptr inbounds %"corlib.?$Span@PEAVObject@System@bf@@@System@bf", ptr %args, i32 0, i32 2
  %279 = load i64, ptr %278, align 8
  %280 = load i64, ptr %index, align 8
  %get__96 = call ptr @"?get____im@UCHK$?$Span@PEAVObject@System@bf@@@System@bf@@QEAAAEAPEAVObject@23@Tint@@@Z"(ptr %277, i64 %279, i64 %280)
  %281 = load ptr, ptr %get__96, align 8
  store ptr %281, ptr %arg, align 8
  br label %newScope97

newScope97:                                       ; preds = %while.end95
  %282 = load i8, ptr %ch, align 1
  %283 = icmp eq i8 %282, 58
  br i1 %283, label %if.then98, label %if.end132

if.then98:                                        ; preds = %newScope97
  %284 = load ptr, ptr %fmt, align 8
  %285 = call i1 @"??8String@System@bf@@SA_NPEAV012@0@Z"(ptr %284, ptr @__bfStrObj1)
  br i1 %285, label %if.then99, label %if.else100

if.then99:                                        ; preds = %if.then98
  %286 = alloca i8, i64 80, align 8
  %287 = alloca %_BF_DeferredData_RvYbVfd, align 8
  %288 = getelementptr inbounds %_BF_DeferredData_RvYbVfd, ptr %287, i32 0, i32 1
  %289 = load ptr, ptr %deferredCallTail, align 8
  store ptr %289, ptr %288, align 8
  %290 = getelementptr inbounds %_BF_DeferredData_RvYbVfd, ptr %287, i32 0, i32 0
  store i64 193273528372, ptr %290, align 8
  %291 = getelementptr inbounds %_BF_DeferredData_RvYbVfd, ptr %287, i32 0, i32 2
  store ptr %286, ptr %291, align 8
  store ptr %287, ptr %deferredCallTail, align 8
  %292 = getelementptr inbounds %"corlib.String@System@bf", ptr %286, i32 0, i32 0
  store ptr @"?sBfClassVData@String@System@bf@@2UClassVData@23@A", ptr %292, align 8
  call void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr %286)
  %293 = ptrtoint ptr %286 to i64
  %294 = add i64 %293, 24
  store i64 %294, ptr %9, align 8
  call void @"?__BfCtor@i0$String@System@bf@@QEAAXAEATint@@Tint@@@Z"(ptr %286, ptr dereferenceable(8) %9, i64 64)
  store ptr %286, ptr %fmt, align 8
  br label %if.end101

if.else100:                                       ; preds = %if.then98
  %295 = load ptr, ptr %fmt, align 8
  call void @"?Clear@String@System@bf@@QEAAXXZ"(ptr %295)
  br label %if.end101

if.end101:                                        ; preds = %if.else100, %if.then99
  store i1 false, ptr %isFormatEx, align 1
  %296 = load i64, ptr %pos, align 8
  %297 = add i64 %296, 1
  store i64 %297, ptr %pos, align 8
  %298 = load i64, ptr %pos, align 8
  store i64 %298, ptr %p, align 8
  %299 = load i64, ptr %pos, align 8
  store i64 %299, ptr %i, align 8
  br label %newScope102

newScope102:                                      ; preds = %if.end101
  br label %while.cond103

while.cond103:                                    ; preds = %if.end130, %newScope102
  br label %while.body104

while.body104:                                    ; preds = %while.cond103
  %300 = load i64, ptr %pos, align 8
  %301 = load i64, ptr %len, align 8
  %302 = icmp eq i64 %300, %301
  br i1 %302, label %if.then105, label %if.end106

if.then105:                                       ; preds = %while.body104
  call void @"?FormatError@String@System@bf@@AEAA?AU?$Result@X@23@XZ"(ptr %16, ptr sret(%"corlib.?$Result@X@System@bf") %10)
  %303 = load %"corlib.?$Result@X@System@bf", ptr %10, align 1
  %304 = load ptr, ptr %__return.addr, align 1
  store %"corlib.?$Result@X@System@bf" %303, ptr %304, align 1
  br label %deferredCalls

dyn.continue:                                     ; preds = %deferCall.end
  br label %exit

if.end106:                                        ; preds = %while.body104
  %305 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %format, i32 0, i32 0
  %306 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %305, i32 0, i32 1
  %307 = load ptr, ptr %306, align 8
  %308 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %305, i32 0, i32 2
  %309 = load i64, ptr %308, align 8
  %310 = load i64, ptr %pos, align 8
  %get__107 = call ptr @"?get____im@UCHK$StringView@System@bf@@QEAAAEADTint@@@Z"(ptr %307, i64 %309, i64 %310)
  %311 = load i8, ptr %get__107, align 1
  store i8 %311, ptr %ch, align 1
  %312 = load i64, ptr %pos, align 8
  %313 = add i64 %312, 1
  store i64 %313, ptr %pos, align 8
  br label %newScope108

newScope108:                                      ; preds = %if.end106
  %314 = load i8, ptr %ch, align 1
  %315 = icmp eq i8 %314, 123
  br i1 %315, label %if.then109, label %if.else117

if.then109:                                       ; preds = %newScope108
  store i1 true, ptr %isFormatEx, align 1
  br label %newScope110

newScope110:                                      ; preds = %if.then109
  %316 = load i64, ptr %pos, align 8
  %317 = load i64, ptr %len, align 8
  %318 = icmp slt i64 %316, %317
  br i1 %318, label %land.rhs111, label %land.end113

land.rhs111:                                      ; preds = %newScope110
  %319 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %format, i32 0, i32 0
  %320 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %319, i32 0, i32 1
  %321 = load ptr, ptr %320, align 8
  %322 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %319, i32 0, i32 2
  %323 = load i64, ptr %322, align 8
  %324 = load i64, ptr %pos, align 8
  %get__112 = call ptr @"?get____im@UCHK$StringView@System@bf@@QEAAAEADTint@@@Z"(ptr %321, i64 %323, i64 %324)
  %325 = load i8, ptr %get__112, align 1
  %326 = icmp eq i8 %325, 123
  br label %land.end113

land.end113:                                      ; preds = %land.rhs111, %newScope110
  %327 = phi i1 [ false, %newScope110 ], [ %326, %land.rhs111 ]
  br i1 %327, label %if.then114, label %if.else115

if.then114:                                       ; preds = %land.end113
  %328 = load i64, ptr %pos, align 8
  %329 = add i64 %328, 1
  store i64 %329, ptr %pos, align 8
  br label %if.end116

if.else115:                                       ; preds = %land.end113
  call void @"?FormatError@String@System@bf@@AEAA?AU?$Result@X@23@XZ"(ptr %16, ptr sret(%"corlib.?$Result@X@System@bf") %11)
  %330 = load %"corlib.?$Result@X@System@bf", ptr %11, align 1
  %331 = load ptr, ptr %__return.addr, align 1
  store %"corlib.?$Result@X@System@bf" %330, ptr %331, align 1
  br label %deferredCalls

if.end116:                                        ; preds = %if.then114
  br label %if.end128

if.else117:                                       ; preds = %newScope108
  %332 = load i8, ptr %ch, align 1
  %333 = icmp eq i8 %332, 125
  br i1 %333, label %if.then118, label %if.end127

if.then118:                                       ; preds = %if.else117
  %334 = load i1, ptr %isFormatEx, align 1
  br i1 %334, label %land.rhs119, label %land.end123

land.rhs119:                                      ; preds = %if.then118
  %335 = load i64, ptr %pos, align 8
  %336 = load i64, ptr %len, align 8
  %337 = icmp slt i64 %335, %336
  br i1 %337, label %land.rhs120, label %land.end122

land.rhs120:                                      ; preds = %land.rhs119
  %338 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %format, i32 0, i32 0
  %339 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %338, i32 0, i32 1
  %340 = load ptr, ptr %339, align 8
  %341 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %338, i32 0, i32 2
  %342 = load i64, ptr %341, align 8
  %343 = load i64, ptr %pos, align 8
  %get__121 = call ptr @"?get____im@UCHK$StringView@System@bf@@QEAAAEADTint@@@Z"(ptr %340, i64 %342, i64 %343)
  %344 = load i8, ptr %get__121, align 1
  %345 = icmp eq i8 %344, 125
  br label %land.end122

land.end122:                                      ; preds = %land.rhs120, %land.rhs119
  %346 = phi i1 [ false, %land.rhs119 ], [ %345, %land.rhs120 ]
  br label %land.end123

land.end123:                                      ; preds = %land.end122, %if.then118
  %347 = phi i1 [ false, %if.then118 ], [ %346, %land.end122 ]
  br i1 %347, label %if.then124, label %if.else125

if.then124:                                       ; preds = %land.end123
  %348 = load i64, ptr %pos, align 8
  %349 = add i64 %348, 1
  store i64 %349, ptr %pos, align 8
  br label %if.end126

if.else125:                                       ; preds = %land.end123
  %350 = load i64, ptr %pos, align 8
  %351 = sub i64 %350, 1
  store i64 %351, ptr %pos, align 8
  br label %while.end131

if.end126:                                        ; preds = %if.then124
  br label %if.end127

if.end127:                                        ; preds = %if.end126, %if.else117
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %if.end116
  %352 = load ptr, ptr %fmt, align 8
  %353 = icmp eq ptr %352, null
  br i1 %353, label %if.then129, label %if.end130

if.then129:                                       ; preds = %if.end128
  %354 = alloca i8, i64 272, align 8
  %355 = alloca %_BF_DeferredData_RvYbVfd, align 8
  %356 = getelementptr inbounds %_BF_DeferredData_RvYbVfd, ptr %355, i32 0, i32 1
  %357 = load ptr, ptr %deferredCallTail, align 8
  store ptr %357, ptr %356, align 8
  %358 = getelementptr inbounds %_BF_DeferredData_RvYbVfd, ptr %355, i32 0, i32 0
  store i64 193273528372, ptr %358, align 8
  %359 = getelementptr inbounds %_BF_DeferredData_RvYbVfd, ptr %355, i32 0, i32 2
  store ptr %354, ptr %359, align 8
  store ptr %355, ptr %deferredCallTail, align 8
  %360 = getelementptr inbounds %"corlib.String@System@bf", ptr %354, i32 0, i32 0
  store ptr @"?sBfClassVData@String@System@bf@@2UClassVData@23@A", ptr %360, align 8
  call void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr %354)
  %361 = ptrtoint ptr %354 to i64
  %362 = add i64 %361, 24
  store i64 %362, ptr %12, align 8
  call void @"?__BfCtor@i0$String@System@bf@@QEAAXAEATint@@Tint@@@Z"(ptr %354, ptr dereferenceable(8) %12, i64 256)
  store ptr %354, ptr %fmt, align 8
  br label %if.end130

if.end130:                                        ; preds = %if.then129, %if.end128
  %363 = load ptr, ptr %fmt, align 8
  %364 = load i8, ptr %ch, align 1
  call void @"?Append@String@System@bf@@QEAAXD@Z"(ptr %363, i8 %364)
  br label %while.cond103

while.end131:                                     ; preds = %if.else125
  br label %if.end132

if.end132:                                        ; preds = %while.end131, %newScope97
  %365 = load i8, ptr %ch, align 1
  %366 = icmp ne i8 %365, 125
  br i1 %366, label %if.then133, label %if.end134

if.then133:                                       ; preds = %if.end132
  call void @"?FormatError@String@System@bf@@AEAA?AU?$Result@X@23@XZ"(ptr %16, ptr sret(%"corlib.?$Result@X@System@bf") %13)
  %367 = load %"corlib.?$Result@X@System@bf", ptr %13, align 1
  %368 = load ptr, ptr %__return.addr, align 1
  store %"corlib.?$Result@X@System@bf" %367, ptr %368, align 1
  br label %deferredCalls

if.end134:                                        ; preds = %if.end132
  %369 = load i64, ptr %pos, align 8
  %370 = add i64 %369, 1
  store i64 %370, ptr %pos, align 8
  br label %newScope135

newScope135:                                      ; preds = %if.end134
  %371 = icmp eq ptr %provider, null
  br i1 %371, label %land.rhs136, label %land.end137

land.rhs136:                                      ; preds = %newScope135
  %372 = load ptr, ptr %fmt, align 8
  %get__IsEmpty = call i1 @"?get__IsEmpty@String@System@bf@@QEAA_NXZ"(ptr %372)
  br label %land.end137

land.end137:                                      ; preds = %land.rhs136, %newScope135
  %373 = phi i1 [ false, %newScope135 ], [ %get__IsEmpty, %land.rhs136 ]
  br i1 %373, label %land.rhs138, label %land.end139

land.rhs138:                                      ; preds = %land.end137
  %374 = load i64, ptr %width, align 8
  %375 = icmp eq i64 %374, 0
  br label %land.end139

land.end139:                                      ; preds = %land.rhs138, %land.end137
  %376 = phi i1 [ false, %land.end137 ], [ %375, %land.rhs138 ]
  br i1 %376, label %if.then140, label %if.else144

if.then140:                                       ; preds = %land.end139
  %377 = load ptr, ptr %arg, align 8
  %378 = icmp eq ptr %377, null
  br i1 %378, label %if.then141, label %if.else142

if.then141:                                       ; preds = %if.then140
  call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr %16, ptr @__bfStrObj61)
  br label %if.end143

if.else142:                                       ; preds = %if.then140
  %379 = load ptr, ptr %arg, align 8
  %380 = load ptr, ptr %379, align 8
  %381 = getelementptr inbounds ptr, ptr %380, i32 4
  %382 = load ptr, ptr %381, align 8
  call void %382(ptr %379, ptr %16)
  br label %if.end143

if.end143:                                        ; preds = %if.else142, %if.then141
  br label %if.end169

if.else144:                                       ; preds = %land.end139
  %383 = load ptr, ptr %s, align 8
  %384 = icmp eq ptr %383, null
  br i1 %384, label %if.then145, label %if.end146

if.then145:                                       ; preds = %if.else144
  %385 = alloca i8, i64 144, align 8
  %386 = alloca %_BF_DeferredData_RvYbVfd, align 8
  %387 = getelementptr inbounds %_BF_DeferredData_RvYbVfd, ptr %386, i32 0, i32 1
  %388 = load ptr, ptr %deferredCallTail, align 8
  store ptr %388, ptr %387, align 8
  %389 = getelementptr inbounds %_BF_DeferredData_RvYbVfd, ptr %386, i32 0, i32 0
  store i64 193273528372, ptr %389, align 8
  %390 = getelementptr inbounds %_BF_DeferredData_RvYbVfd, ptr %386, i32 0, i32 2
  store ptr %385, ptr %390, align 8
  store ptr %386, ptr %deferredCallTail, align 8
  %391 = getelementptr inbounds %"corlib.String@System@bf", ptr %385, i32 0, i32 0
  store ptr @"?sBfClassVData@String@System@bf@@2UClassVData@23@A", ptr %391, align 8
  call void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr %385)
  %392 = ptrtoint ptr %385 to i64
  %393 = add i64 %392, 24
  store i64 %393, ptr %14, align 8
  call void @"?__BfCtor@i0$String@System@bf@@QEAAXAEATint@@Tint@@@Z"(ptr %385, ptr dereferenceable(8) %14, i64 128)
  store ptr %385, ptr %s, align 8
  br label %if.end146

if.end146:                                        ; preds = %if.then145, %if.else144
  %394 = load ptr, ptr %s, align 8
  call void @"?Clear@String@System@bf@@QEAAXXZ"(ptr %394)
  %395 = load ptr, ptr %arg, align 8
  store ptr null, ptr %15, align 8
  %396 = icmp eq ptr %395, null
  br i1 %396, label %as.end, label %as.check

as.check:                                         ; preds = %if.end146
  %397 = load i64, ptr %395, align 8
  %398 = add i64 %397, 4
  %399 = load i32, ptr @"?sBfSlotOfs@IFormattable@System@bf@@2HA", align 4
  %400 = mul i32 %399, 4
  %401 = zext i32 %400 to i64
  %402 = add i64 %398, %401
  %403 = inttoptr i64 %402 to ptr
  %404 = load i32, ptr %403, align 4
  %405 = icmp eq i32 %404, 73
  br i1 %405, label %as.match, label %as.end

as.match:                                         ; preds = %as.check
  store ptr %395, ptr %15, align 8
  br label %as.end

as.end:                                           ; preds = %as.match, %as.check, %if.end146
  %406 = load ptr, ptr %15, align 8
  store ptr %406, ptr %formattableArg, align 8
  br label %newScope147

newScope147:                                      ; preds = %as.end
  %407 = load ptr, ptr %formattableArg, align 8
  %408 = icmp ne ptr %407, null
  br i1 %408, label %if.then148, label %if.else149

if.then148:                                       ; preds = %newScope147
  %409 = load ptr, ptr %formattableArg, align 8
  %410 = load ptr, ptr %s, align 8
  %411 = load ptr, ptr %fmt, align 8
  %412 = load i32, ptr @"?sBfSlotOfs@IFormattable@System@bf@@2HA", align 4
  %413 = load ptr, ptr %409, align 8
  %414 = getelementptr inbounds ptr, ptr %413, i32 %412
  %415 = load ptr, ptr %414, align 8
  %416 = getelementptr inbounds ptr, ptr %415, i32 0
  %417 = load ptr, ptr %416, align 8
  call void %417(ptr %409, ptr %410, ptr %411, ptr %provider)
  br label %if.end153

if.else149:                                       ; preds = %newScope147
  %418 = load ptr, ptr %arg, align 8
  %419 = icmp ne ptr %418, null
  br i1 %419, label %if.then150, label %if.else151

if.then150:                                       ; preds = %if.else149
  %420 = load ptr, ptr %arg, align 8
  %421 = load ptr, ptr %s, align 8
  %422 = load ptr, ptr %420, align 8
  %423 = getelementptr inbounds ptr, ptr %422, i32 4
  %424 = load ptr, ptr %423, align 8
  call void %424(ptr %420, ptr %421)
  br label %if.end152

if.else151:                                       ; preds = %if.else149
  %425 = load ptr, ptr %s, align 8
  call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr %425, ptr @__bfStrObj61)
  br label %if.end152

if.end152:                                        ; preds = %if.else151, %if.then150
  br label %if.end153

if.end153:                                        ; preds = %if.end152, %if.then148
  %426 = load ptr, ptr %fmt, align 8
  %427 = icmp ne ptr @__bfStrObj1, %426
  br i1 %427, label %if.then154, label %if.end155

if.then154:                                       ; preds = %if.end153
  %428 = load ptr, ptr %fmt, align 8
  call void @"?Clear@String@System@bf@@QEAAXXZ"(ptr %428)
  br label %if.end155

if.end155:                                        ; preds = %if.then154, %if.end153
  %429 = load ptr, ptr %s, align 8
  %430 = icmp eq ptr %429, null
  br i1 %430, label %if.then156, label %if.end157

if.then156:                                       ; preds = %if.end155
  store ptr @__bfStrObj1, ptr %s, align 8
  br label %if.end157

if.end157:                                        ; preds = %if.then156, %if.end155
  %431 = load i64, ptr %width, align 8
  %432 = load ptr, ptr %s, align 8
  %get__Length158 = call i64 @"?get__Length@String@System@bf@@QEAATint@@XZ"(ptr %432)
  %433 = sub i64 %431, %get__Length158
  store i64 %433, ptr %pad, align 8
  br label %newScope159

newScope159:                                      ; preds = %if.end157
  %434 = load i1, ptr %leftJustify, align 1
  %435 = xor i1 %434, true
  br i1 %435, label %land.rhs160, label %land.end161

land.rhs160:                                      ; preds = %newScope159
  %436 = load i64, ptr %pad, align 8
  %437 = icmp sgt i64 %436, 0
  br label %land.end161

land.end161:                                      ; preds = %land.rhs160, %newScope159
  %438 = phi i1 [ false, %newScope159 ], [ %437, %land.rhs160 ]
  br i1 %438, label %if.then162, label %if.end163

if.then162:                                       ; preds = %land.end161
  %439 = load i64, ptr %pad, align 8
  call void @"?Append@String@System@bf@@QEAAXDTint@@@Z"(ptr %16, i8 32, i64 %439)
  br label %if.end163

if.end163:                                        ; preds = %if.then162, %land.end161
  %440 = load ptr, ptr %s, align 8
  call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr %16, ptr %440)
  br label %newScope164

newScope164:                                      ; preds = %if.end163
  %441 = load i1, ptr %leftJustify, align 1
  br i1 %441, label %land.rhs165, label %land.end166

land.rhs165:                                      ; preds = %newScope164
  %442 = load i64, ptr %pad, align 8
  %443 = icmp sgt i64 %442, 0
  br label %land.end166

land.end166:                                      ; preds = %land.rhs165, %newScope164
  %444 = phi i1 [ false, %newScope164 ], [ %443, %land.rhs165 ]
  br i1 %444, label %if.then167, label %if.end168

if.then167:                                       ; preds = %land.end166
  %445 = load i64, ptr %pad, align 8
  call void @"?Append@String@System@bf@@QEAAXDTint@@@Z"(ptr %16, i8 32, i64 %445)
  br label %if.end168

if.end168:                                        ; preds = %if.then167, %land.end166
  br label %if.end169

if.end169:                                        ; preds = %if.end168, %if.end143
  br label %while.cond

while.end170:                                     ; preds = %if.then20
  %446 = load ptr, ptr %__return.addr, align 1
  store %"corlib.?$Result@X@System@bf" zeroinitializer, ptr %446, align 1
  br label %deferredCalls

dyn.processor:                                    ; preds = %deferredCalls
  br label %deferCall.cond

deferCall.cond:                                   ; preds = %deferCall.body, %dyn.processor
  %447 = load ptr, ptr %deferredCallTail, align 8
  %448 = icmp ne ptr %447, null
  br i1 %448, label %deferCall.body, label %deferCall.end

deferCall.body:                                   ; preds = %deferCall.cond
  %449 = getelementptr inbounds %"corlib.DeferredCall@System@bf", ptr %447, i32 0, i32 2
  %450 = load ptr, ptr %449, align 8
  store ptr %450, ptr %deferredCallTail, align 8
  %451 = getelementptr inbounds %_BF_DeferredData_RvYbVfd, ptr %447, i32 0, i32 2
  %452 = load ptr, ptr %451, align 8
  call void @"?~this@String@System@bf@@QEAAXXZ"(ptr %452)
  br label %deferCall.cond

deferCall.end:                                    ; preds = %deferCall.cond
  br label %dyn.continue

deferredCalls:                                    ; preds = %while.end170, %if.then133, %if.else115, %if.then105
  br label %dyn.processor

exit:                                             ; preds = %dyn.continue, %if.then80, %if.then76, %if.then70, %if.then64, %if.then47, %if.then38, %if.else34, %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?AppendF@String@System@bf@@QEAA?AU?$Result@X@23@UStringView@23@Tparams@@U?$Span@PEAVObject@System@bf@@@23@@Z"(ptr %this, ptr noalias sret(%"corlib.?$Result@X@System@bf") %0, ptr %format_mPtr, i64 %format_mLength, ptr %args) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %1 = alloca ptr, align 8
  %2 = alloca i64, align 8
  %__return.addr = alloca ptr, align 8
  %3 = alloca %"corlib.StringView@System@bf", align 8
  %4 = alloca %"corlib.?$Span@PEAVObject@System@bf@@@System@bf", align 8
  %5 = alloca %"corlib.?$Result@X@System@bf", align 1
  store ptr %this, ptr %this.addr, align 8
  %6 = load ptr, ptr %this.addr, align 8
  store ptr %format_mPtr, ptr %1, align 8
  store i64 %format_mLength, ptr %2, align 8
  store ptr %0, ptr %__return.addr, align 1
  %7 = load %"corlib.?$Span@PEAVObject@System@bf@@@System@bf", ptr %args, align 8
  %8 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %3, i32 0, i32 0
  %9 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %8, i32 0, i32 0
  %10 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %8, i32 0, i32 1
  store ptr %format_mPtr, ptr %10, align 8
  %11 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %8, i32 0, i32 2
  store i64 %format_mLength, ptr %11, align 8
  store %"corlib.?$Span@PEAVObject@System@bf@@@System@bf" %7, ptr %4, align 8
  call void @"?AppendF@String@System@bf@@QEAA?AU?$Result@X@23@PEAVIFormatProvider@23@UStringView@23@Tparams@@U?$Span@PEAVObject@System@bf@@@23@@Z"(ptr %6, ptr sret(%"corlib.?$Result@X@System@bf") %5, ptr null, ptr %3, ptr %4)
  %12 = load %"corlib.?$Result@X@System@bf", ptr %5, align 1
  %13 = load ptr, ptr %__return.addr, align 1
  store %"corlib.?$Result@X@System@bf" %12, ptr %13, align 1
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare i64 @"?IndexOf@String@System@bf@@QEAATint@@UStringView@23@_N@Z"(ptr, ptr, i64, i1 zeroext) #0

; Function Attrs: nounwind uwtable
declare i64 @"?IndexOf@String@System@bf@@QEAATint@@UStringView@23@Tint@@_N@Z"(ptr, ptr, i64, i64, i1 zeroext) #0

; Function Attrs: nounwind uwtable
declare i64 @"?Count@String@System@bf@@QEAATint@@D@Z"(ptr, i8) #0

; Function Attrs: nounwind uwtable
declare i64 @"?IndexOf@String@System@bf@@QEAATint@@DTint@@@Z"(ptr, i8, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?LastIndexOf@String@System@bf@@QEAATint@@D@Z"(ptr, i8) #0

; Function Attrs: nounwind uwtable
declare i64 @"?LastIndexOf@String@System@bf@@QEAATint@@DTint@@@Z"(ptr, i8, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?IndexOfAny@String@System@bf@@QEAATint@@PEAV?$Array1@D@23@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?IndexOfAny@String@System@bf@@QEAATint@@PEAV?$Array1@D@23@Tint@@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?IndexOfAny@String@System@bf@@QEAATint@@PEAV?$Array1@D@23@Tint@@1@Z"(ptr, ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
declare i1 @"?Contains@String@System@bf@@QEAA_NUStringView@23@_N@Z"(ptr, ptr, i64, i1 zeroext) #0

; Function Attrs: nounwind uwtable
declare i1 @"?Contains@String@System@bf@@QEAA_ND@Z"(ptr, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?Replace@String@System@bf@@QEAAXDD@Z"(ptr, i8, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?CaseConv@String@System@bf@@AEAAX_N@Z"(ptr, i1 zeroext) #0

; Function Attrs: nounwind uwtable
declare void @"?ToUpper@String@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?ToLower@String@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?UTF8GetAllocSize@String@System@bf@@CA_JPEAD_JH@Z"(ptr, i64, i32) #0

; Function Attrs: nounwind uwtable
declare i64 @"?UTF8Map@String@System@bf@@CA_JPEAD_J01H@Z"(ptr, i64, ptr, i64, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?Normalize@String@System@bf@@QEAA?AU?$Result@X@23@W4UnicodeNormalizationOptions@23@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf"), i16) #0

; Function Attrs: nounwind uwtable
declare void @"?Normalize@String@System@bf@@QEAA?AU?$Result@X@23@PEAV123@W4UnicodeNormalizationOptions@23@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf"), ptr, i16) #0

; Function Attrs: nounwind uwtable
define void @"?Remove@String@System@bf@@QEAAXTint@@0@Z"(ptr %this, i64 %startIdx, i64 %length) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %moveCount = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = icmp sge i64 %startIdx, 0
  br i1 %1, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %2 = icmp sge i64 %length, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %2, %land.rhs ]
  br i1 %3, label %land.rhs1, label %land.end2

land.rhs1:                                        ; preds = %land.end
  %4 = add i64 %startIdx, %length
  %5 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp sle i64 %4, %7
  br label %land.end2

land.end2:                                        ; preds = %land.rhs1, %land.end
  %9 = phi i1 [ false, %land.end ], [ %8, %land.rhs1 ]
  call void @"?Requires@Contract@Contracts@Diagnostics@System@bf@@SAX_N@Z"(i1 zeroext %9)
  %10 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = sext i32 %11 to i64
  %13 = sub i64 %12, %startIdx
  %14 = sub i64 %13, %length
  store i64 %14, ptr %moveCount, align 8
  %get__Ptr = call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr %0)
  br label %newScope

newScope:                                         ; preds = %land.end2
  %15 = load i64, ptr %moveCount, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  %17 = getelementptr inbounds i8, ptr %get__Ptr, i64 %startIdx
  %18 = getelementptr inbounds i8, ptr %get__Ptr, i64 %startIdx
  %19 = getelementptr inbounds i8, ptr %18, i64 %length
  %20 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = sext i32 %21 to i64
  %23 = sub i64 %22, %startIdx
  %24 = sub i64 %23, %length
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %17, ptr align 1 %19, i64 %24, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %newScope
  %25 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %26 = trunc i64 %length to i32
  %27 = load i32, ptr %25, align 4
  %28 = sub i32 %27, %26
  store i32 %28, ptr %25, align 4
  br label %exit

exit:                                             ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?Remove@String@System@bf@@QEAAXTint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?RemoveToEnd@String@System@bf@@QEAAXTint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?RemoveFromEnd@String@System@bf@@QEAAXTint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
define void @"?Insert@String@System@bf@@QEAAXTint@@UStringView@23@@Z"(ptr %this, i64 %idx, ptr %addString_mPtr, i64 %addString_mLength) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  %length = alloca i32, align 4
  %newLength = alloca i32, align 4
  store ptr %this, ptr %this.addr, align 8
  %2 = load ptr, ptr %this.addr, align 8
  store ptr %addString_mPtr, ptr %0, align 8
  store i64 %addString_mLength, ptr %1, align 8
  %3 = icmp sge i64 %idx, 0
  call void @"?Requires@Contract@Contracts@Diagnostics@System@bf@@SAX_N@Z"(i1 zeroext %3)
  %get__Length = call i64 @"?get__Length__im@?$Span@D@System@bf@@QEAATint@@XZ"(ptr %addString_mPtr, i64 %addString_mLength)
  %4 = trunc i64 %get__Length to i32
  store i32 %4, ptr %length, align 4
  %5 = getelementptr inbounds %"corlib.String@System@bf", ptr %2, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %length, align 4
  %8 = add i32 %6, %7
  store i32 %8, ptr %newLength, align 4
  %9 = load i32, ptr %newLength, align 4
  %10 = sext i32 %9 to i64
  call void @"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z"(ptr %2, i64 %10)
  %11 = getelementptr inbounds %"corlib.String@System@bf", ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = sext i32 %12 to i64
  %14 = sub i64 %13, %idx
  %get__Ptr = call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr %2)
  br label %newScope

newScope:                                         ; preds = %entry
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  %16 = getelementptr inbounds i8, ptr %get__Ptr, i64 %idx
  %17 = load i32, ptr %length, align 4
  %18 = getelementptr inbounds i8, ptr %16, i32 %17
  %19 = getelementptr inbounds i8, ptr %get__Ptr, i64 %idx
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %18, ptr align 1 %19, i64 %14, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %newScope
  %20 = getelementptr inbounds i8, ptr %get__Ptr, i64 %idx
  %get__Ptr1 = call ptr @"?get__Ptr__im@?$Span@D@System@bf@@QEAAPEADXZ"(ptr %addString_mPtr, i64 %addString_mLength)
  %21 = load i32, ptr %length, align 4
  %22 = sext i32 %21 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %20, ptr align 1 %get__Ptr1, i64 %22, i1 false)
  %23 = getelementptr inbounds %"corlib.String@System@bf", ptr %2, i32 0, i32 1
  %24 = load i32, ptr %newLength, align 4
  store i32 %24, ptr %23, align 4
  br label %exit

exit:                                             ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Insert@String@System@bf@@QEAAXTint@@D@Z"(ptr %this, i64 %idx, i8 %c) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = icmp sge i64 %idx, 0
  call void @"?Requires@Contract@Contracts@Diagnostics@System@bf@@SAX_N@Z"(i1 zeroext %1)
  %2 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, 1
  %5 = sext i32 %4 to i64
  call void @"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z"(ptr %0, i64 %5)
  %6 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  %9 = sub i64 %8, %idx
  %get__Ptr = call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr %0)
  br label %newScope

newScope:                                         ; preds = %entry
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  %11 = getelementptr inbounds i8, ptr %get__Ptr, i64 %idx
  %12 = getelementptr inbounds i8, ptr %get__Ptr, i64 %idx
  %13 = getelementptr inbounds i8, ptr %12, i64 1
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %13, ptr align 1 %11, i64 %9, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %newScope
  %14 = getelementptr inbounds i8, ptr %get__Ptr, i64 %idx
  store i8 %c, ptr %14, align 1
  %15 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 1
  store i32 %4, ptr %15, align 4
  br label %exit

exit:                                             ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Insert@String@System@bf@@QEAAXTint@@D0@Z"(ptr %this, i64 %idx, i8 %c, i64 %count) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %0 = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  %1 = load ptr, ptr %this.addr, align 8
  %2 = icmp sge i64 %idx, 0
  call void @"?Requires@Contract@Contracts@Diagnostics@System@bf@@SAX_N@Z"(i1 zeroext %2)
  br label %newScope

newScope:                                         ; preds = %entry
  %3 = icmp sle i64 %count, 0
  br i1 %3, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  br label %exit

if.end:                                           ; preds = %newScope
  %4 = getelementptr inbounds %"corlib.String@System@bf", ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = trunc i64 %count to i32
  %7 = add i32 %5, %6
  %8 = sext i32 %7 to i64
  call void @"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z"(ptr %1, i64 %8)
  %9 = getelementptr inbounds %"corlib.String@System@bf", ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = sext i32 %10 to i64
  %12 = sub i64 %11, %idx
  %get__Ptr = call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr %1)
  br label %newScope1

newScope1:                                        ; preds = %if.end
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %if.then2, label %if.end3

if.then2:                                         ; preds = %newScope1
  %14 = getelementptr inbounds i8, ptr %get__Ptr, i64 %idx
  %15 = getelementptr inbounds i8, ptr %14, i64 %count
  %16 = getelementptr inbounds i8, ptr %get__Ptr, i64 %idx
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %15, ptr align 1 %16, i64 %12, i1 false)
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %newScope1
  store i64 0, ptr %0, align 8
  br label %forless.cond

forless.cond:                                     ; preds = %forless.inc, %if.end3
  %17 = load i64, ptr %0, align 8
  %18 = icmp slt i64 %17, %count
  br i1 %18, label %forless.body, label %forless.end

forless.body:                                     ; preds = %forless.cond
  %19 = load i64, ptr %0, align 8
  %20 = add i64 %idx, %19
  %21 = getelementptr inbounds i8, ptr %get__Ptr, i64 %20
  store i8 %c, ptr %21, align 1
  br label %forless.inc

forless.inc:                                      ; preds = %forless.body
  %22 = load i64, ptr %0, align 8
  %23 = add i64 %22, 1
  store i64 %23, ptr %0, align 8
  br label %forless.cond

forless.end:                                      ; preds = %forless.cond
  %24 = getelementptr inbounds %"corlib.String@System@bf", ptr %1, i32 0, i32 1
  store i32 %7, ptr %24, align 4
  br label %exit

exit:                                             ; preds = %forless.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?Insert@String@System@bf@@QEAAXTint@@_U@Z"(ptr, i64, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?Insert@String@System@bf@@QEAAXTint@@_U0@Z"(ptr, i64, i32, i64) #0

; Function Attrs: nounwind uwtable
define i1 @"?EqualsHelper@String@System@bf@@CA_NPEAD0Tint@@@Z"(ptr %a, ptr %b, i64 %length) #0 {
entry:
  %__return = alloca i1, align 1
  %i = alloca i64, align 8
  br label %for.start

for.start:                                        ; preds = %entry
  store i64 0, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %for.start
  %0 = load i64, ptr %i, align 8
  %1 = icmp slt i64 %0, %length
  br i1 %1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, ptr %i, align 8
  %3 = getelementptr inbounds i8, ptr %a, i64 %2
  %4 = load i8, ptr %3, align 1
  %5 = load i64, ptr %i, align 8
  %6 = getelementptr inbounds i8, ptr %b, i64 %5
  %7 = load i8, ptr %6, align 1
  %8 = icmp ne i8 %4, %7
  br i1 %8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i1 false, ptr %__return, align 1
  br label %exit

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i64, ptr %i, align 8
  %10 = add i64 %9, 1
  store i64 %10, ptr %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i1 true, ptr %__return, align 1
  br label %exit

exit:                                             ; preds = %for.end, %if.then
  %11 = load i1, ptr %__return, align 1
  ret i1 %11
}

; Function Attrs: nounwind uwtable
define i1 @"?EqualsIgnoreCaseHelper@String@System@bf@@CA_NPEAD0Tint@@@Z"(ptr %a, ptr %b, i64 %length) #0 {
entry:
  %__return = alloca i1, align 1
  %curA = alloca ptr, align 8
  %curB = alloca ptr, align 8
  %curLength = alloca i64, align 8
  %charA = alloca i32, align 4
  %charB = alloca i32, align 4
  store ptr %a, ptr %curA, align 8
  store ptr %b, ptr %curB, align 8
  store i64 %length, ptr %curLength, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end5, %newScope
  %0 = load i64, ptr %curLength, align 8
  %1 = icmp ne i64 %0, 0
  br i1 %1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %curA, align 8
  %3 = load i8, ptr %2, align 1
  %4 = zext i8 %3 to i32
  store i32 %4, ptr %charA, align 4
  %5 = load ptr, ptr %curB, align 8
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  store i32 %7, ptr %charB, align 4
  br label %newScope1

newScope1:                                        ; preds = %while.body
  %8 = load i32, ptr %charA, align 4
  %9 = trunc i32 %8 to i8
  %10 = sub i8 %9, 97
  %11 = zext i8 %10 to i32
  %12 = icmp ule i32 %11, 25
  br i1 %12, label %if.then, label %if.end

if.then:                                          ; preds = %newScope1
  %13 = load i32, ptr %charA, align 4
  %14 = sub i32 %13, 32
  store i32 %14, ptr %charA, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %newScope1
  %15 = load i32, ptr %charB, align 4
  %16 = trunc i32 %15 to i8
  %17 = sub i8 %16, 97
  %18 = zext i8 %17 to i32
  %19 = icmp ule i32 %18, 25
  br i1 %19, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  %20 = load i32, ptr %charB, align 4
  %21 = sub i32 %20, 32
  store i32 %21, ptr %charB, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %22 = load i32, ptr %charA, align 4
  %23 = load i32, ptr %charB, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end3
  store i1 false, ptr %__return, align 1
  br label %exit

if.end5:                                          ; preds = %if.end3
  %25 = load ptr, ptr %curA, align 8
  %26 = getelementptr inbounds i8, ptr %25, i64 1
  store ptr %26, ptr %curA, align 8
  %27 = load ptr, ptr %curB, align 8
  %28 = getelementptr inbounds i8, ptr %27, i64 1
  store ptr %28, ptr %curB, align 8
  %29 = load i64, ptr %curLength, align 8
  %30 = sub i64 %29, 1
  store i64 %30, ptr %curLength, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i1 true, ptr %__return, align 1
  br label %exit

exit:                                             ; preds = %while.end, %if.then4
  %31 = load i1, ptr %__return, align 1
  ret i1 %31
}

; Function Attrs: nounwind uwtable
declare i64 @"?CompareOrdinalIgnoreCaseHelper@String@System@bf@@CATint@@PEAV123@0@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?CompareOrdinalIgnoreCaseHelper@String@System@bf@@CATint@@PEADTint@@01@Z"(ptr, i64, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?CompareOrdinalIgnoreCaseHelper@String@System@bf@@CATint@@PEAV123@Tint@@1011@Z"(ptr, i64, i64, ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?CompareOrdinalHelper@String@System@bf@@CATint@@PEADTint@@01@Z"(ptr, i64, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?Compare@String@System@bf@@SATint@@PEADTint@@01_N@Z"(ptr, i64, ptr, i64, i1 zeroext) #0

; Function Attrs: nounwind uwtable
declare i64 @"?CompareOrdinalHelper@String@System@bf@@CATint@@PEAV123@Tint@@1011@Z"(ptr, i64, i64, ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?CompareTo@String@System@bf@@QEAATint@@PEAV123@_N@Z"(ptr, ptr, i1 zeroext) #0

; Function Attrs: nounwind uwtable
declare i64 @"?Compare@String@System@bf@@SATint@@PEAV123@0_N@Z"(ptr, ptr, i1 zeroext) #0

; Function Attrs: nounwind uwtable
declare i64 @"?Compare@String@System@bf@@SATint@@PEAV123@Tint@@011_N@Z"(ptr, i64, ptr, i64, i64, i1 zeroext) #0

; Function Attrs: nounwind uwtable
declare i1 @"?Equals@String@System@bf@@QEAA_NPEAV123@W4StringComparison@23@@Z"(ptr, ptr, i8) #0

; Function Attrs: nounwind uwtable
define i1 @"?Equals@String@System@bf@@SA_NPEAV123@0W4StringComparison@23@@Z"(ptr %a, ptr %b, i8 %comparisonType) #0 {
entry:
  %__return = alloca i1, align 1
  %0 = icmp eq ptr %a, %b
  br i1 %0, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i1 true, ptr %__return, align 1
  br label %exit

if.end:                                           ; preds = %entry
  %1 = icmp eq ptr %a, null
  br i1 %1, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.end
  %2 = icmp eq ptr %b, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end
  %3 = phi i1 [ true, %if.end ], [ %2, %lor.rhs ]
  br i1 %3, label %if.then1, label %if.end2

if.then1:                                         ; preds = %lor.end
  store i1 false, ptr %__return, align 1
  br label %exit

if.end2:                                          ; preds = %lor.end
  %4 = getelementptr inbounds %"corlib.String@System@bf", ptr %a, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %"corlib.String@System@bf", ptr %b, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp ne i32 %5, %7
  br i1 %8, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end2
  store i1 false, ptr %__return, align 1
  br label %exit

if.end4:                                          ; preds = %if.end2
  %9 = icmp eq i8 %comparisonType, 5
  br i1 %9, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end4
  %get__Ptr = call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr %a)
  %get__Ptr6 = call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr %b)
  %10 = getelementptr inbounds %"corlib.String@System@bf", ptr %a, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = sext i32 %11 to i64
  %EqualsIgnoreCaseHelper = call i1 @"?EqualsIgnoreCaseHelper@String@System@bf@@CA_NPEAD0Tint@@@Z"(ptr %get__Ptr, ptr %get__Ptr6, i64 %12)
  store i1 %EqualsIgnoreCaseHelper, ptr %__return, align 1
  br label %exit

if.end7:                                          ; preds = %if.end4
  %get__Ptr8 = call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr %a)
  %get__Ptr9 = call ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr %b)
  %13 = getelementptr inbounds %"corlib.String@System@bf", ptr %a, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = sext i32 %14 to i64
  %EqualsHelper = call i1 @"?EqualsHelper@String@System@bf@@CA_NPEAD0Tint@@@Z"(ptr %get__Ptr8, ptr %get__Ptr9, i64 %15)
  store i1 %EqualsHelper, ptr %__return, align 1
  br label %exit

exit:                                             ; preds = %if.end7, %if.then5, %if.then3, %if.then1, %if.then
  %16 = load i1, ptr %__return, align 1
  ret i1 %16
}

; Function Attrs: nounwind uwtable
declare i1 @"?Equals@String@System@bf@@QEAA_NUStringView@23@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i1 @"?Equals@String@System@bf@@QEAA_NUStringView@23@W4StringComparison@23@@Z"(ptr, ptr, i64, i8) #0

; Function Attrs: nounwind uwtable
declare i1 @"?StartsWith@String@System@bf@@QEAA_NUStringView@23@W4StringComparison@23@@Z"(ptr, ptr, i64, i8) #0

; Function Attrs: nounwind uwtable
declare i1 @"?EndsWith@String@System@bf@@QEAA_NUStringView@23@W4StringComparison@23@@Z"(ptr, ptr, i64, i8) #0

; Function Attrs: nounwind uwtable
declare i1 @"?StartsWith@String@System@bf@@QEAA_ND@Z"(ptr, i8) #0

; Function Attrs: nounwind uwtable
declare i1 @"?StartsWith@String@System@bf@@QEAA_N_U@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare i1 @"?EndsWith@String@System@bf@@QEAA_ND@Z"(ptr, i8) #0

; Function Attrs: nounwind uwtable
declare i1 @"?EndsWith@String@System@bf@@QEAA_N_U@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?ReplaceLargerHelper@String@System@bf@@AEAAXUStringView@23@0@Z"(ptr, ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Replace@String@System@bf@@QEAAXUStringView@23@0@Z"(ptr, ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Replace@String@System@bf@@QEAAXTint@@0UStringView@23@@Z"(ptr, i64, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Replace@String@System@bf@@QEAAXUIndexRange@23@UStringView@23@@Z"(ptr, ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?TrimEnd@String@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?TrimStart@String@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Trim@String@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?TrimEnd@String@System@bf@@QEAAX_U@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?TrimEnd@String@System@bf@@QEAAXD@Z"(ptr, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?TrimStart@String@System@bf@@QEAAX_U@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?TrimStart@String@System@bf@@QEAAXD@Z"(ptr, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?Trim@String@System@bf@@QEAAX_U@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?Trim@String@System@bf@@QEAAXD@Z"(ptr, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?PadLeft@String@System@bf@@QEAAXTint@@D@Z"(ptr, i64, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?PadLeft@String@System@bf@@QEAAXTint@@_U@Z"(ptr, i64, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?PadLeft@String@System@bf@@QEAAXTint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?PadRight@String@System@bf@@QEAAXTint@@D@Z"(ptr, i64, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?PadRight@String@System@bf@@QEAAXTint@@_U@Z"(ptr, i64, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?PadRight@String@System@bf@@QEAAXTint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Join@String@System@bf@@QEAAXUStringView@23@PEAV?$IEnumerator@PEAVString@System@bf@@@Collections@23@@Z"(ptr, ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Join@String@System@bf@@QEAAXUStringView@23@PEAV?$IEnumerator@UStringView@System@bf@@@Collections@23@@Z"(ptr, ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Join@String@System@bf@@QEAAXUStringView@23@U?$Span@PEAVString@System@bf@@@23@@Z"(ptr, ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Join@String@System@bf@@QEAAXUStringView@23@Tparams@@U?$Span@UStringView@System@bf@@@23@@Z"(ptr, ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Split@String@System@bf@@QEAA?AUStringSplitEnumerator@23@D@Z"(ptr, ptr noalias sret(%"corlib.StringSplitEnumerator@System@bf"), i8) #0

; Function Attrs: nounwind uwtable
declare void @"?Split@String@System@bf@@QEAA?AUStringSplitEnumerator@23@DTint@@@Z"(ptr, ptr noalias sret(%"corlib.StringSplitEnumerator@System@bf"), i8, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Split@String@System@bf@@QEAA?AUStringSplitEnumerator@23@DW4StringSplitOptions@23@@Z"(ptr, ptr noalias sret(%"corlib.StringSplitEnumerator@System@bf"), i8, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?Split@String@System@bf@@QEAA?AUStringSplitEnumerator@23@DTint@@W4StringSplitOptions@23@@Z"(ptr, ptr noalias sret(%"corlib.StringSplitEnumerator@System@bf"), i8, i64, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?Split@String@System@bf@@QEAA?AUStringSplitEnumerator@23@Tparams@@U?$Span@D@23@@Z"(ptr, ptr noalias sret(%"corlib.StringSplitEnumerator@System@bf"), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Split@String@System@bf@@QEAA?AUStringSplitEnumerator@23@U?$Span@D@23@@Z"(ptr, ptr noalias sret(%"corlib.StringSplitEnumerator@System@bf"), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Split@String@System@bf@@QEAA?AUStringSplitEnumerator@23@U?$Span@D@23@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.StringSplitEnumerator@System@bf"), ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Split@String@System@bf@@QEAA?AUStringSplitEnumerator@23@U?$Span@D@23@Tint@@W4StringSplitOptions@23@@Z"(ptr, ptr noalias sret(%"corlib.StringSplitEnumerator@System@bf"), ptr, i64, i64, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?Split@String@System@bf@@QEAA?AUStringSplitEnumerator@23@U?$Span@D@23@W4StringSplitOptions@23@@Z"(ptr, ptr noalias sret(%"corlib.StringSplitEnumerator@System@bf"), ptr, i64, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?Split@String@System@bf@@QEAA?AUStringStringSplitEnumerator@23@UStringView@23@@Z"(ptr, ptr noalias sret(%"corlib.StringStringSplitEnumerator@System@bf"), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Split@String@System@bf@@QEAA?AUStringStringSplitEnumerator@23@UStringView@23@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.StringStringSplitEnumerator@System@bf"), ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Split@String@System@bf@@QEAA?AUStringStringSplitEnumerator@23@UStringView@23@W4StringSplitOptions@23@@Z"(ptr, ptr noalias sret(%"corlib.StringStringSplitEnumerator@System@bf"), ptr, i64, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?Split@String@System@bf@@QEAA?AUStringStringSplitEnumerator@23@UStringView@23@Tint@@W4StringSplitOptions@23@@Z"(ptr, ptr noalias sret(%"corlib.StringStringSplitEnumerator@System@bf"), ptr, i64, i64, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?Split@String@System@bf@@QEAA?AUStringStringSplitEnumerator@23@Tparams@@PEAV?$Array1@UStringView@System@bf@@@23@@Z"(ptr, ptr noalias sret(%"corlib.StringStringSplitEnumerator@System@bf"), ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Split@String@System@bf@@QEAA?AUStringStringSplitEnumerator@23@PEAV?$Array1@UStringView@System@bf@@@23@@Z"(ptr, ptr noalias sret(%"corlib.StringStringSplitEnumerator@System@bf"), ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Split@String@System@bf@@QEAA?AUStringStringSplitEnumerator@23@PEAV?$Array1@UStringView@System@bf@@@23@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.StringStringSplitEnumerator@System@bf"), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Split@String@System@bf@@QEAA?AUStringStringSplitEnumerator@23@PEAV?$Array1@UStringView@System@bf@@@23@Tint@@W4StringSplitOptions@23@@Z"(ptr, ptr noalias sret(%"corlib.StringStringSplitEnumerator@System@bf"), ptr, i64, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?Split@String@System@bf@@QEAA?AUStringStringSplitEnumerator@23@PEAV?$Array1@UStringView@System@bf@@@23@W4StringSplitOptions@23@@Z"(ptr, ptr noalias sret(%"corlib.StringStringSplitEnumerator@System@bf"), ptr, i8) #0

; Function Attrs: nounwind uwtable
declare void @"?NewOrSet@String@System@bf@@SAXXX@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?DupIfReferenceEqual@String@System@bf@@SAXXX@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?StackSplit@String@System@bf@@SAXXX@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Split@String@System@bf@@QEAAXX@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?ToScopedNativeWChar@String@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?ToConstNativeW@COMPTIME$String@System@bf@@QEAA?AU?$Span@_S@23@XZ"(ptr, ptr noalias sret(%"corlib.?$Span@_S@System@bf")) #0

; Function Attrs: nounwind uwtable
declare ptr @"?ConstF@COMPTIME$String@System@bf@@SAPEAV123@PEAV123@Tparams@@U?$Span@PEAVObject@System@bf@@@23@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i1 @"?Equals@String@System@bf@@SA_NPEAD0@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?Equals@String@System@bf@@SA_NPEAD0Tint@@@Z"(ptr, ptr, i64) #0

; Function Attrs: alwaysinline nounwind uwtable
declare void @"?get__RawChars@String@System@bf@@QEAA?AURawEnumerator@123@XZ"(ptr, ptr noalias sret(%"corlib.RawEnumerator@String@System@bf")) #1

; Function Attrs: alwaysinline nounwind uwtable
declare void @"?get__DecodedChars@String@System@bf@@QEAA?AUUTF8Enumerator@123@XZ"(ptr, ptr noalias sret(%"corlib.UTF8Enumerator@String@System@bf")) #1

; Function Attrs: nounwind uwtable
declare void @"?DecodedChars@String@System@bf@@QEAA?AUUTF8Enumerator@123@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.UTF8Enumerator@String@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__HasMultibyteChars@String@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?HasMultibyteChars@String@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetChar32@String@System@bf@@QEAA?AU?$__TUPLE_c_length@_UC@3@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.?$__TUPLE_c_length@_UC@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetChar32WithBacktrack@String@System@bf@@QEAA?AU?$__TUPLE_c_idx_length@_UTint@@C@3@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.?$__TUPLE_c_idx_length@_UTint@@C@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetCodePointSpan@String@System@bf@@QEAA?AU?$__TUPLE_startIdx_length@Tint@@C@3@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.?$__TUPLE_startIdx_length@Tint@@C@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetGraphemeClusterSpan@String@System@bf@@QEAA?AU?$__TUPLE_startIdx_length@Tint@@Tint@@@3@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.?$__TUPLE_startIdx_length@Tint@@Tint@@@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?CheckLiterals@String@System@bf@@CAXPEAPEAV123@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?Intern@String@System@bf@@QEAAPEAV123@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?GetById@String@System@bf@@SAPEAV123@Tint@@@Z"(i64) #0

; Function Attrs: nounwind uwtable
define void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfStaticCtor@String@System@bf@@SAXXZ"() #0 {
entry:
  %0 = load i1, ptr @didStaticInit, align 1
  br i1 %0, label %exit, label %init1

init1:                                            ; preds = %entry
  store i1 true, ptr @didStaticInit, align 1
  store ptr @__bfStrObj59, ptr @"?sHexUpperChars@String@System@bf@@2PEAV123@A", align 8
  br label %exit

exit:                                             ; preds = %init1, %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?GCMarkStaticMembers@String@System@bf@@KAXXZ"() #0

; Function Attrs: nounwind uwtable
define void @"?~this@String@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %get__IsDynAlloc = call i1 @"?get__IsDynAlloc@String@System@bf@@QEAA_NXZ"(ptr %0)
  br i1 %get__IsDynAlloc, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  %1 = getelementptr inbounds %"corlib.String@System@bf", ptr %0, i32 0, i32 3
  %2 = load ptr, ptr %1, align 8
  %3 = icmp ne ptr %2, null
  br i1 %3, label %delete.body, label %delete.end

delete.body:                                      ; preds = %if.then
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds ptr, ptr %4, i32 7
  %6 = load ptr, ptr %5, align 8
  call void %6(ptr %0, ptr %2)
  br label %delete.end

delete.end:                                       ; preds = %delete.body, %if.then
  br label %if.end

if.end:                                           ; preds = %delete.end, %newScope
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr %0)
  br label %exit

exit:                                             ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?ToString@String@System@bf@@QEAAXPEAV123@@Z"(ptr %this, ptr %strBuffer) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr %strBuffer, ptr %0)
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@String@System@bf@@IEAAPEAVObject@23@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@String@System@bf@@IEAAPEAVObject@23@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers@String@System@bf@@IEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?~this@Object@System@bf@@UEAAXXZ"(ptr) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare void @tc_free(ptr)

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

; Function Attrs: alwaysinline nounwind uwtable
define internal i64 @"?get__Length__im@?$Span@PEAVObject@System@bf@@@System@bf@@QEAATint@@XZ"(ptr %this_mPtr, i64 %this_mLength) #1 {
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
define internal ptr @"?get____im@UCHK$?$Span@PEAVObject@System@bf@@@System@bf@@QEAAAEAPEAVObject@23@Tint@@@Z"(ptr %this_mPtr, i64 %this_mLength, i64 %index) #1 {
entry:
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  %__return = alloca ptr, align 8
  store ptr %this_mPtr, ptr %0, align 8
  store i64 %this_mLength, ptr %1, align 8
  %2 = getelementptr inbounds ptr, ptr %this_mPtr, i64 %index
  store ptr %2, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %3 = load ptr, ptr %__return, align 8
  ret ptr %3
}

; Function Attrs: nounwind uwtable
declare void @"?ToString@Object@System@bf@@UEAAXPEAVString@23@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Assert@Debug@Diagnostics@System@bf@@SAX_NPEAVString@34@1Tint@@@Z"(i1 zeroext, ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext, ptr, ptr, i64) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

declare ptr @tc_malloc(i64)

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @"?CArray@?$Array1@D@System@bf@@QEAAPEADXZ"(ptr %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.?$Array1@D@System@bf", ptr %0, i32 0, i32 1
  store ptr %1, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %2 = load ptr, ptr %__return, align 8
  ret ptr %2
}

; Function Attrs: nounwind uwtable
declare void @"?Requires@Contract@Contracts@Diagnostics@System@bf@@SAX_N@Z"(i1 zeroext) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
declare void @"?GetEnumerator__im@?$Span@UStringView@System@bf@@@System@bf@@QEAA?AUEnumerator@123@XZ"(ptr noalias sret(%"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf"), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Dispose__im@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(32)) #0

; Function Attrs: nounwind uwtable
declare void @"?GetNext@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@QEAA?AU?$Result@?AUStringView@System@bf@@@34@XZ"(ptr, ptr noalias sret(%"corlib.?$Result@UStringView@System@bf@@@System@bf")) #0

attributes #0 = { nounwind uwtable }
attributes #1 = { alwaysinline nounwind uwtable }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
