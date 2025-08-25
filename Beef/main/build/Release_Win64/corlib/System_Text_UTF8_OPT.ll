; ModuleID = 'System_Text_UTF8'
source_filename = "System_Text_UTF8"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$__TUPLE_c_length@_UC@bf" = type <{ %"corlib.Tuple@System@bf", i32, i8 }>
%"corlib.Tuple@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.ValueType@System@bf" = type <{}>

@__constMem9792 = internal unnamed_addr constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\04\04\04\04\05\05\05\05"
@__constMem10608 = internal unnamed_addr constant [6 x i32] [i32 0, i32 12416, i32 925824, i32 63447168, i32 -100130688, i32 -2113396608]

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @"?Decode@UTF8@Text@System@bf@@SA?AU?$__TUPLE_c_length@_UC@4@PEADTint@@@Z"(ptr noalias nocapture writeonly sret(%"corlib.?$__TUPLE_c_length@_UC@bf") %0, ptr nocapture readonly %buf, i64 %bufSize) local_unnamed_addr #0 {
entry:
  %1 = load i8, ptr %buf, align 1
  %2 = zext i8 %1 to i32
  %3 = zext i8 %1 to i64
  %4 = getelementptr inbounds [256 x i8], ptr @__constMem9792, i64 0, i64 %3
  %5 = load i8, ptr %4, align 1
  %6 = sext i8 %5 to i64
  %7 = icmp sgt i64 %6, %bufSize
  br i1 %7, label %exit, label %if.end

if.end:                                           ; preds = %entry
  switch i8 %5, label %switch.end [
    i8 3, label %switch.0
    i8 2, label %switch.1
    i8 1, label %switch.2
  ]

switch.0:                                         ; preds = %if.end
  %8 = shl nuw nsw i32 %2, 6
  %9 = getelementptr inbounds i8, ptr %buf, i64 1
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %8, %11
  br label %switch.1

switch.1:                                         ; preds = %if.end, %switch.0
  %bufIdx.0 = phi i64 [ 1, %if.end ], [ 2, %switch.0 ]
  %c.0 = phi i32 [ %2, %if.end ], [ %12, %switch.0 ]
  %13 = shl nuw nsw i32 %c.0, 6
  %14 = add nuw nsw i64 %bufIdx.0, 1
  %15 = getelementptr inbounds i8, ptr %buf, i64 %bufIdx.0
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = add nuw nsw i32 %13, %17
  br label %switch.2

switch.2:                                         ; preds = %if.end, %switch.1
  %bufIdx.1 = phi i64 [ 1, %if.end ], [ %14, %switch.1 ]
  %c.1 = phi i32 [ %2, %if.end ], [ %18, %switch.1 ]
  %19 = shl nuw nsw i32 %c.1, 6
  %20 = getelementptr inbounds i8, ptr %buf, i64 %bufIdx.1
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = add nuw nsw i32 %19, %22
  br label %switch.end

switch.end:                                       ; preds = %switch.2, %if.end
  %c.2 = phi i32 [ %2, %if.end ], [ %23, %switch.2 ]
  %24 = getelementptr inbounds [6 x i32], ptr @__constMem10608, i64 0, i64 %6
  %25 = load i32, ptr %24, align 4
  %26 = sub i32 %c.2, %25
  br label %exit

exit:                                             ; preds = %entry, %switch.end
  %.sink30 = phi i32 [ %26, %switch.end ], [ -1, %entry ]
  %27 = add i8 %5, 1
  %.repack22 = getelementptr inbounds %"corlib.?$__TUPLE_c_length@_UC@bf", ptr %0, i64 0, i32 1
  store i32 %.sink30, ptr %.repack22, align 4
  %.repack24 = getelementptr inbounds %"corlib.?$__TUPLE_c_length@_UC@bf", ptr %0, i64 0, i32 2
  store i8 %27, ptr %.repack24, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable }
