; ModuleID = 'System_UInt64'
source_filename = "System_UInt64"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.StringView@System@bf" = type <{ %"corlib.?$Span@D@System@bf" }>
%"corlib.?$Span@D@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.ValueType@System@bf" = type <{}>

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i1 @"?get__IsNaN__im@IIsNaN@System@bf@@UInt64@23@CA_N_K@Z"(i64 %this) local_unnamed_addr #0 {
entry:
  ret i1 false
}

; Function Attrs: nounwind uwtable
define void @"?ToString__im@UInt64@System@bf@@SAX_KPEAVString@23@1PEAVIFormatProvider@23@@Z"(i64 %this, ptr %outString, ptr %format, ptr %formatProvider) local_unnamed_addr #1 {
entry:
  %strChars.i = alloca [22 x i8], align 1
  %0 = alloca %"corlib.StringView@System@bf", align 8
  %1 = icmp eq ptr %format, null
  br i1 %1, label %if.then, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %get__IsEmpty = tail call i1 @"?get__IsEmpty@String@System@bf@@QEAA_NXZ"(ptr nonnull %format)
  br i1 %get__IsEmpty, label %if.then, label %if.else

if.then:                                          ; preds = %entry, %lor.rhs
  call void @llvm.lifetime.start.p0(i64 22, ptr nonnull %strChars.i)
  %.not8.i = icmp eq i64 %this, 0
  br i1 %.not8.i, label %if.then.i, label %while.body.i

while.body.i:                                     ; preds = %if.then, %while.body.i
  %char8Idx.010.i = phi i32 [ %8, %while.body.i ], [ 20, %if.then ]
  %valLeft.09.i = phi i64 [ %7, %while.body.i ], [ %this, %if.then ]
  %2 = sext i32 %char8Idx.010.i to i64
  %3 = getelementptr inbounds [22 x i8], ptr %strChars.i, i64 0, i64 %2
  %4 = urem i64 %valLeft.09.i, 10
  %5 = trunc i64 %4 to i8
  %6 = or disjoint i8 %5, 48
  store i8 %6, ptr %3, align 1
  %7 = udiv i64 %valLeft.09.i, 10
  %8 = add i32 %char8Idx.010.i, -1
  %.not.i = icmp ult i64 %valLeft.09.i, 10
  br i1 %.not.i, label %while.end.i, label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  %9 = icmp eq i32 %8, 20
  br i1 %9, label %if.then.i, label %"?ToString__im@UInt64@System@bf@@SAX_KPEAVString@23@@Z.exit"

if.then.i:                                        ; preds = %while.end.i, %if.then
  %10 = getelementptr inbounds [22 x i8], ptr %strChars.i, i64 0, i64 20
  store i8 48, ptr %10, align 1
  br label %"?ToString__im@UInt64@System@bf@@SAX_KPEAVString@23@@Z.exit"

"?ToString__im@UInt64@System@bf@@SAX_KPEAVString@23@@Z.exit": ; preds = %while.end.i, %if.then.i
  %char8Idx.1.i = phi i32 [ 19, %if.then.i ], [ %8, %while.end.i ]
  %11 = sext i32 %char8Idx.1.i to i64
  %12 = add nsw i64 %11, 1
  %13 = getelementptr inbounds [22 x i8], ptr %strChars.i, i64 0, i64 %12
  %14 = sub nsw i64 20, %11
  call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %outString, ptr nonnull %13, i64 %14)
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %strChars.i)
  br label %exit

if.else:                                          ; preds = %lor.rhs
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr nonnull sret(%"corlib.StringView@System@bf") %0, ptr nonnull %format)
  %15 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 2
  %18 = load i64, ptr %17, align 8
  call void @"?NumberToString@NumberFormatter@System@bf@@SAXUStringView@23@_KPEAVIFormatProvider@23@PEAVString@23@@Z"(ptr %16, i64 %18, i64 %this, ptr %formatProvider, ptr %outString)
  br label %exit

exit:                                             ; preds = %"?ToString__im@UInt64@System@bf@@SAX_KPEAVString@23@@Z.exit", %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?ToString__im@UInt64@System@bf@@SAX_KPEAVString@23@@Z"(i64 %this, ptr %strBuffer) local_unnamed_addr #1 {
entry:
  %strChars = alloca [22 x i8], align 1
  %.not8 = icmp eq i64 %this, 0
  br i1 %.not8, label %if.then, label %while.body

while.body:                                       ; preds = %entry, %while.body
  %char8Idx.010 = phi i32 [ %6, %while.body ], [ 20, %entry ]
  %valLeft.09 = phi i64 [ %5, %while.body ], [ %this, %entry ]
  %0 = sext i32 %char8Idx.010 to i64
  %1 = getelementptr inbounds [22 x i8], ptr %strChars, i64 0, i64 %0
  %2 = urem i64 %valLeft.09, 10
  %3 = trunc i64 %2 to i8
  %4 = or disjoint i8 %3, 48
  store i8 %4, ptr %1, align 1
  %5 = udiv i64 %valLeft.09, 10
  %6 = add i32 %char8Idx.010, -1
  %.not = icmp ult i64 %valLeft.09, 10
  br i1 %.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body
  %7 = icmp eq i32 %6, 20
  br i1 %7, label %if.then, label %if.end

if.then:                                          ; preds = %entry, %while.end
  %8 = getelementptr inbounds [22 x i8], ptr %strChars, i64 0, i64 20
  store i8 48, ptr %8, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.end
  %char8Idx.1 = phi i32 [ 19, %if.then ], [ %6, %while.end ]
  %9 = sext i32 %char8Idx.1 to i64
  %10 = add nsw i64 %9, 1
  %11 = getelementptr inbounds [22 x i8], ptr %strChars, i64 0, i64 %10
  %12 = sub nsw i64 20, %9
  call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %strBuffer, ptr nonnull %11, i64 %12)
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr, ptr, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsEmpty@String@System@bf@@QEAA_NXZ"(ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?NumberToString@NumberFormatter@System@bf@@SAXUStringView@23@_KPEAVIFormatProvider@23@PEAVString@23@@Z"(ptr, i64, i64, ptr, ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr noalias sret(%"corlib.StringView@System@bf"), ptr) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
attributes #1 = { nounwind uwtable }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
