; ModuleID = 'System_Int64'
source_filename = "System_Int64"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.StringView@System@bf" = type <{ %"corlib.?$Span@D@System@bf" }>
%"corlib.?$Span@D@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.ValueType@System@bf" = type <{}>

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i1 @"?get__IsNaN__im@IIsNaN@System@bf@@Int64@23@CA_N_J@Z"(i64 %this) local_unnamed_addr #0 {
entry:
  ret i1 false
}

; Function Attrs: nounwind uwtable
define void @"?ToString__im@Int64@System@bf@@SAX_JPEAVString@23@1PEAVIFormatProvider@23@@Z"(i64 %this, ptr %outString, ptr %format, ptr %formatProvider) local_unnamed_addr #1 {
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
  %2 = icmp slt i64 %this, 0
  %3 = tail call i64 @llvm.abs.i64(i64 %this, i1 false)
  %notsub17.i = add i64 %3, -1
  %4 = icmp sgt i64 %notsub17.i, -1
  br i1 %4, label %while.body.i, label %if.then1.i

while.body.i:                                     ; preds = %if.then, %while.body.i
  %char8Idx.019.i = phi i32 [ %11, %while.body.i ], [ 20, %if.then ]
  %.pn18.i = phi i64 [ %10, %while.body.i ], [ %3, %if.then ]
  %5 = sext i32 %char8Idx.019.i to i64
  %6 = getelementptr inbounds [22 x i8], ptr %strChars.i, i64 0, i64 %5
  %7 = urem i64 %.pn18.i, 10
  %8 = trunc i64 %7 to i8
  %9 = or disjoint i8 %8, 48
  store i8 %9, ptr %6, align 1
  %10 = udiv i64 %.pn18.i, 10
  %11 = add i32 %char8Idx.019.i, -1
  %.not.i = icmp ult i64 %.pn18.i, 10
  br i1 %.not.i, label %while.end.i, label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  %12 = icmp eq i32 %11, 20
  br i1 %12, label %if.then1.i, label %if.end2.i

if.then1.i:                                       ; preds = %while.end.i, %if.then
  %13 = getelementptr inbounds [22 x i8], ptr %strChars.i, i64 0, i64 20
  store i8 48, ptr %13, align 1
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then1.i, %while.end.i
  %char8Idx.1.i = phi i32 [ 19, %if.then1.i ], [ %11, %while.end.i ]
  br i1 %2, label %if.then3.i, label %"?ToString__im@Int64@System@bf@@SAX_JPEAVString@23@@Z.exit"

if.then3.i:                                       ; preds = %if.end2.i
  %14 = add i32 %char8Idx.1.i, -1
  %15 = sext i32 %char8Idx.1.i to i64
  %16 = getelementptr inbounds [22 x i8], ptr %strChars.i, i64 0, i64 %15
  store i8 45, ptr %16, align 1
  br label %"?ToString__im@Int64@System@bf@@SAX_JPEAVString@23@@Z.exit"

"?ToString__im@Int64@System@bf@@SAX_JPEAVString@23@@Z.exit": ; preds = %if.end2.i, %if.then3.i
  %char8Idx.2.i = phi i32 [ %14, %if.then3.i ], [ %char8Idx.1.i, %if.end2.i ]
  %17 = sext i32 %char8Idx.2.i to i64
  %18 = add nsw i64 %17, 1
  %19 = getelementptr inbounds [22 x i8], ptr %strChars.i, i64 0, i64 %18
  %20 = sub nsw i64 20, %17
  call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %outString, ptr nonnull %19, i64 %20)
  call void @llvm.lifetime.end.p0(i64 22, ptr nonnull %strChars.i)
  br label %exit

if.else:                                          ; preds = %lor.rhs
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr nonnull sret(%"corlib.StringView@System@bf") %0, ptr nonnull %format)
  %21 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 2
  %24 = load i64, ptr %23, align 8
  call void @"?NumberToString@NumberFormatter@System@bf@@SAXUStringView@23@_JPEAVIFormatProvider@23@PEAVString@23@@Z"(ptr %22, i64 %24, i64 %this, ptr %formatProvider, ptr %outString)
  br label %exit

exit:                                             ; preds = %"?ToString__im@Int64@System@bf@@SAX_JPEAVString@23@@Z.exit", %if.else
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?ToString__im@Int64@System@bf@@SAX_JPEAVString@23@@Z"(i64 %this, ptr %strBuffer) local_unnamed_addr #1 {
entry:
  %strChars = alloca [22 x i8], align 1
  %0 = icmp slt i64 %this, 0
  %1 = tail call i64 @llvm.abs.i64(i64 %this, i1 false)
  %notsub17 = add i64 %1, -1
  %2 = icmp sgt i64 %notsub17, -1
  br i1 %2, label %while.body, label %if.then1

while.body:                                       ; preds = %entry, %while.body
  %char8Idx.019 = phi i32 [ %9, %while.body ], [ 20, %entry ]
  %.pn18 = phi i64 [ %8, %while.body ], [ %1, %entry ]
  %3 = sext i32 %char8Idx.019 to i64
  %4 = getelementptr inbounds [22 x i8], ptr %strChars, i64 0, i64 %3
  %5 = urem i64 %.pn18, 10
  %6 = trunc i64 %5 to i8
  %7 = or disjoint i8 %6, 48
  store i8 %7, ptr %4, align 1
  %8 = udiv i64 %.pn18, 10
  %9 = add i32 %char8Idx.019, -1
  %.not = icmp ult i64 %.pn18, 10
  br i1 %.not, label %while.end, label %while.body

while.end:                                        ; preds = %while.body
  %10 = icmp eq i32 %9, 20
  br i1 %10, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry, %while.end
  %11 = getelementptr inbounds [22 x i8], ptr %strChars, i64 0, i64 20
  store i8 48, ptr %11, align 1
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %while.end
  %char8Idx.1 = phi i32 [ 19, %if.then1 ], [ %9, %while.end ]
  br i1 %0, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end2
  %12 = add i32 %char8Idx.1, -1
  %13 = sext i32 %char8Idx.1 to i64
  %14 = getelementptr inbounds [22 x i8], ptr %strChars, i64 0, i64 %13
  store i8 45, ptr %14, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end2
  %char8Idx.2 = phi i32 [ %12, %if.then3 ], [ %char8Idx.1, %if.end2 ]
  %15 = sext i32 %char8Idx.2 to i64
  %16 = add nsw i64 %15, 1
  %17 = getelementptr inbounds [22 x i8], ptr %strChars, i64 0, i64 %16
  %18 = sub nsw i64 20, %15
  call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %strBuffer, ptr nonnull %17, i64 %18)
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr, ptr, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsEmpty@String@System@bf@@QEAA_NXZ"(ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?NumberToString@NumberFormatter@System@bf@@SAXUStringView@23@_JPEAVIFormatProvider@23@PEAVString@23@@Z"(ptr, i64, i64, ptr, ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr noalias sret(%"corlib.StringView@System@bf"), ptr) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
attributes #1 = { nounwind uwtable }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
