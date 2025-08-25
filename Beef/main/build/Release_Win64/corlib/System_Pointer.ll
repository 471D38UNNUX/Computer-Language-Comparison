; ModuleID = 'System_Pointer'
source_filename = "System_Pointer"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.?$Box@UPointer@System@bf" = type <{ %"corlib.Object@System@bf", %"corlib.Pointer@System@bf" }>
%"corlib.Pointer@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr }>
%"corlib.ValueType@System@bf" = type <{}>

@"?sBfClassVData@?$Box@UPointer@System@bf@@@@2UClassVData@System@bf@@A" = external constant [5 x ptr]
@"?sBfClassVData@String@System@bf@@2UClassVData@23@A" = external constant [8 x ptr]
@__bfStrObj383 = external constant %"corlib.String@System@bf"

; Function Attrs: nounwind uwtable
declare i64 @"?GetHashCode__im@Pointer@System@bf@@QEAATint@@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
define ptr @"?GetBoxed__im@Pointer@System@bf@@AEAAPEAVObject@23@XZ"(ptr %this_mVal) #0 {
entry:
  %0 = alloca ptr, align 8
  %__return = alloca ptr, align 8
  store ptr %this_mVal, ptr %0, align 8
  %boxed.Pointer = call ptr @tc_malloc(i64 16)
  %1 = getelementptr inbounds %"corlib.Object@System@bf", ptr %boxed.Pointer, i32 0, i32 0
  store ptr @"?sBfClassVData@?$Box@UPointer@System@bf@@@@2UClassVData@System@bf@@A", ptr %1, align 8
  %2 = getelementptr inbounds %"corlib.?$Box@UPointer@System@bf", ptr %boxed.Pointer, i32 0, i32 1
  %3 = getelementptr inbounds %"corlib.Pointer@System@bf", ptr %2, i32 0, i32 0
  %4 = getelementptr inbounds %"corlib.Pointer@System@bf", ptr %2, i32 0, i32 1
  store ptr %this_mVal, ptr %4, align 8
  store ptr %boxed.Pointer, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %5 = load ptr, ptr %__return, align 8
  ret ptr %5
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@Pointer@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?ToString__im@Pointer@System@bf@@QEAAXPEAVString@23@@Z"(ptr %this_mVal, ptr %strBuffer) #0 {
entry:
  %0 = alloca ptr, align 8
  store ptr %this_mVal, ptr %0, align 8
  call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr %strBuffer, ptr @__bfStrObj383)
  %1 = ptrtoint ptr %this_mVal to i64
  call void @"?AddrToString@NumberFormatter@System@bf@@SAXTuint@@PEAVString@23@@Z"(i64 %1, ptr %strBuffer)
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface__im@Pointer@System@bf@@IEAAPEAVObject@23@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers__im@Pointer@System@bf@@IEAAXXZ"(ptr) #0

declare ptr @tc_malloc(i64)

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?AddrToString@NumberFormatter@System@bf@@SAXTuint@@PEAVString@23@@Z"(i64, ptr) #0

attributes #0 = { nounwind uwtable }
