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
@__bfStrObj383 = external constant %"corlib.String@System@bf"

; Function Attrs: nounwind uwtable
define noundef ptr @"?GetBoxed__im@Pointer@System@bf@@AEAAPEAVObject@23@XZ"(ptr %this_mVal) local_unnamed_addr #0 {
entry:
  %boxed.Pointer = tail call ptr @tc_malloc(i64 16) #1
  store ptr @"?sBfClassVData@?$Box@UPointer@System@bf@@@@2UClassVData@System@bf@@A", ptr %boxed.Pointer, align 8
  %0 = getelementptr inbounds %"corlib.?$Box@UPointer@System@bf", ptr %boxed.Pointer, i64 0, i32 1
  store ptr %this_mVal, ptr %0, align 8
  ret ptr %boxed.Pointer
}

; Function Attrs: nounwind uwtable
define void @"?ToString__im@Pointer@System@bf@@QEAAXPEAVString@23@@Z"(ptr %this_mVal, ptr %strBuffer) local_unnamed_addr #0 {
entry:
  tail call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr %strBuffer, ptr nonnull @__bfStrObj383)
  %0 = ptrtoint ptr %this_mVal to i64
  tail call void @"?AddrToString@NumberFormatter@System@bf@@SAXTuint@@PEAVString@23@@Z"(i64 %0, ptr %strBuffer)
  ret void
}

declare ptr @tc_malloc(i64) local_unnamed_addr

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr, ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?AddrToString@NumberFormatter@System@bf@@SAXTuint@@PEAVString@23@@Z"(i64, ptr) local_unnamed_addr #0

attributes #0 = { nounwind uwtable }
attributes #1 = { nounwind }
