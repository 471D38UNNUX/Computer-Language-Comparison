; ModuleID = 'System_Double'
source_filename = "System_Double"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.StringView@System@bf" = type <{ %"corlib.?$Span@D@System@bf" }>
%"corlib.?$Span@D@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.ValueType@System@bf" = type <{}>

@__bfStrObj384 = external constant %"corlib.String@System@bf"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i1 @"?get__IsNaN__im@Double@System@bf@@SA_NN@Z"(double %this) local_unnamed_addr #0 {
entry:
  %0 = tail call double @llvm.fabs.f64(double %this)
  %1 = bitcast double %0 to i64
  %2 = icmp ugt i64 %1, 9218868437227405312
  ret i1 %2
}

; Function Attrs: nounwind uwtable
declare i32 @"?ToString@Double@System@bf@@CAHNPEAD_N@Z"(double, ptr, i1 zeroext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @"?ToString__im@Double@System@bf@@SAXNPEAVString@23@0PEAVIFormatProvider@23@@Z"(double %this, ptr %outString, ptr %format, ptr %formatProvider) local_unnamed_addr #1 {
entry:
  %outBuff.i = alloca [128 x i8], align 1
  %outBuff = alloca [128 x i8], align 1
  %0 = alloca %"corlib.StringView@System@bf", align 8
  %get__IsEmpty = tail call i1 @"?get__IsEmpty@String@System@bf@@QEAA_NXZ"(ptr %format)
  br i1 %get__IsEmpty, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %outBuff.i)
  %ToString.i = call i32 @"?ToString@Double@System@bf@@CAHNPEAD_N@Z"(double %this, ptr nonnull %outBuff.i, i1 zeroext false)
  %1 = sext i32 %ToString.i to i64
  call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %outString, ptr nonnull %outBuff.i, i64 %1)
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %outBuff.i)
  br label %exit

if.else:                                          ; preds = %entry
  %2 = tail call i1 @"??8String@System@bf@@SA_NPEAV012@0@Z"(ptr %format, ptr nonnull @__bfStrObj384)
  br i1 %2, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.else
  %ToString = call i32 @"?ToString@Double@System@bf@@CAHNPEAD_N@Z"(double %this, ptr nonnull %outBuff, i1 zeroext true)
  %3 = sext i32 %ToString to i64
  call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %outString, ptr nonnull %outBuff, i64 %3)
  br label %exit

if.end2:                                          ; preds = %if.else
  call void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr nonnull sret(%"corlib.StringView@System@bf") %0, ptr %format)
  %4 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8
  call void @"?NumberToString@NumberFormatter@System@bf@@SAXUStringView@23@NPEAVIFormatProvider@23@PEAVString@23@@Z"(ptr %5, i64 %7, double %this, ptr %formatProvider, ptr %outString)
  br label %exit

exit:                                             ; preds = %if.end2, %if.then1, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?ToString__im@Double@System@bf@@SAXNPEAVString@23@@Z"(double %this, ptr %strBuffer) local_unnamed_addr #1 {
entry:
  %outBuff = alloca [128 x i8], align 1
  %ToString = call i32 @"?ToString@Double@System@bf@@CAHNPEAD_N@Z"(double %this, ptr nonnull %outBuff, i1 zeroext false)
  %0 = sext i32 %ToString to i64
  call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %strBuffer, ptr nonnull %outBuff, i64 %0)
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr, ptr, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsEmpty@String@System@bf@@QEAA_NXZ"(ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare i1 @"??8String@System@bf@@SA_NPEAV012@0@Z"(ptr, ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?NumberToString@NumberFormatter@System@bf@@SAXUStringView@23@NPEAVIFormatProvider@23@PEAVString@23@@Z"(ptr, i64, double, ptr, ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"??BStringView@System@bf@@SA?AU012@PEAVString@12@@Z"(ptr noalias sret(%"corlib.StringView@System@bf"), ptr) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
attributes #1 = { nounwind uwtable }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
