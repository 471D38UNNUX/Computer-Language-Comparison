; ModuleID = 'System_Object'
source_filename = "System_Object"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.ClassVData@System@bf" = type <{ %"corlib.ValueType@System@bf", i64 }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$Span@PEAVObject@System@bf@@@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.?$Box@VSimple@Int@System@bf" = type <{ %"corlib.Object@System@bf", i64 }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.?$Result@X@System@bf" = type <{ %"corlib.Enum@System@bf", [0 x i8], i8 }>
%"corlib.Enum@System@bf" = type <{ %"corlib.ValueType@System@bf" }>

@__bfStrData62 = external constant [11 x i8]
@"?sBfClassVData@?$Box@VSimple@Int@System@bf@@@@2UClassVData@System@bf@@A" = external constant [4 x ptr]

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @"?~this@Object@System@bf@@UEAAXXZ"(ptr nocapture readnone %this) local_unnamed_addr #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @"?GetType@Object@System@bf@@QEAAPEAVType@23@XZ"(ptr nocapture readonly %this) local_unnamed_addr #1 {
entry:
  %0 = load ptr, ptr %this, align 8
  %1 = getelementptr inbounds %"corlib.ClassVData@System@bf", ptr %0, i64 0, i32 1
  %2 = load i64, ptr %1, align 8
  %3 = lshr i64 %2, 32
  %4 = trunc i64 %3 to i32
  %GetType_ = tail call ptr @"?GetType_@Type@System@bf@@KAPEAV123@H@Z"(i32 %4)
  ret ptr %GetType_
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define i32 @"?GetTypeId@Object@System@bf@@AEAAVTypeId@Reflection@23@XZ"(ptr nocapture readonly %this) local_unnamed_addr #2 {
entry:
  %0 = load ptr, ptr %this, align 8
  %1 = getelementptr inbounds %"corlib.ClassVData@System@bf", ptr %0, i64 0, i32 1
  %2 = load i64, ptr %1, align 8
  %3 = lshr i64 %2, 32
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define void @"?ToString@Object@System@bf@@UEAAXPEAVString@23@@Z"(ptr %this, ptr %strBuffer) local_unnamed_addr #1 {
entry:
  %0 = alloca %"corlib.?$Span@PEAVObject@System@bf@@@System@bf", align 8
  %1 = alloca ptr, align 8
  %boxed.Simple = alloca %"corlib.?$Box@VSimple@Int@System@bf", align 8
  %2 = alloca %"corlib.?$Result@X@System@bf", align 1
  %3 = load ptr, ptr %this, align 8
  %4 = getelementptr inbounds %"corlib.ClassVData@System@bf", ptr %3, i64 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = ashr i64 %5, 32
  %7 = getelementptr inbounds %"corlib.?$Span@PEAVObject@System@bf@@@System@bf", ptr %0, i64 0, i32 1
  store ptr %1, ptr %7, align 8
  %8 = getelementptr inbounds %"corlib.?$Span@PEAVObject@System@bf@@@System@bf", ptr %0, i64 0, i32 2
  store i64 1, ptr %8, align 8
  store ptr @"?sBfClassVData@?$Box@VSimple@Int@System@bf@@@@2UClassVData@System@bf@@A", ptr %boxed.Simple, align 8
  %9 = getelementptr inbounds %"corlib.?$Box@VSimple@Int@System@bf", ptr %boxed.Simple, i64 0, i32 1
  store volatile i64 %6, ptr %9, align 8
  store ptr %boxed.Simple, ptr %1, align 8
  call void @"?AppendF@String@System@bf@@QEAA?AU?$Result@X@23@UStringView@23@Tparams@@U?$Span@PEAVObject@System@bf@@@23@@Z"(ptr %strBuffer, ptr nonnull sret(%"corlib.?$Result@X@System@bf") %2, ptr nonnull @__bfStrData62, i64 10, ptr nonnull %0)
  call void @"?ReturnValueDiscarded__im@?$Result@X@System@bf@@QEAAXXZ"(ptr nocapture nonnull dereferenceable(1) %2)
  %10 = ptrtoint ptr %this to i64
  call void @"?AddrToString@NumberFormatter@System@bf@@SAXTuint@@PEAVString@23@@Z"(i64 %10, ptr %strBuffer)
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?AppendF@String@System@bf@@QEAA?AU?$Result@X@23@UStringView@23@Tparams@@U?$Span@PEAVObject@System@bf@@@23@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf"), ptr, i64, ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?ReturnValueDiscarded__im@?$Result@X@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(1)) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare void @"?AddrToString@NumberFormatter@System@bf@@SAXTuint@@PEAVString@23@@Z"(i64, ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
declare ptr @"?GetType_@Type@System@bf@@KAPEAV123@H@Z"(i32) local_unnamed_addr #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
attributes #1 = { nounwind uwtable }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable }
