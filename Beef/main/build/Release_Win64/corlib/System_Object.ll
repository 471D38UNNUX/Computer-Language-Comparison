; ModuleID = 'System_Object'
source_filename = "System_Object"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.ClassVData@System@bf" = type <{ %"corlib.ValueType@System@bf", i64 }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$Span@PEAVObject@System@bf@@@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.?$Box@VSimple@Int@System@bf" = type <{ %"corlib.Object@System@bf", i64 }>
%"corlib.?$Result@X@System@bf" = type <{ %"corlib.Enum@System@bf", [0 x i8], i8 }>
%"corlib.Enum@System@bf" = type <{ %"corlib.ValueType@System@bf" }>

@"?sBfClassVData@String@System@bf@@2UClassVData@23@A" = external constant [8 x ptr]
@__bfStrObj62 = external constant %"corlib.String@System@bf"
@__bfStrData62 = external constant [11 x i8]
@"?sBfClassVData@?$Box@VSimple@Int@System@bf@@@@2UClassVData@System@bf@@A" = external constant [4 x ptr]

; Function Attrs: nounwind uwtable
define void @"?~this@Object@System@bf@@UEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  br label %exit

exit:                                             ; preds = %newScope
  ret void
}

; Function Attrs: nounwind uwtable
declare i1 @"?IsDeleted@Object@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?Comptime_GetType@Object@System@bf@@AEAAPEAVType@23@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
define ptr @"?GetType@Object@System@bf@@QEAAPEAVType@23@XZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca ptr, align 8
  %classVData = alloca ptr, align 8
  %type = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  br label %if.end

if.end:                                           ; preds = %newScope
  %1 = getelementptr inbounds %"corlib.Object@System@bf", ptr %0, i32 0, i32 0
  %2 = load ptr, ptr %1, align 8
  store ptr %2, ptr %classVData, align 8
  %3 = load ptr, ptr %classVData, align 8
  %4 = getelementptr inbounds %"corlib.ClassVData@System@bf", ptr %3, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = ashr i64 %5, 32
  %7 = trunc i64 %6 to i32
  %GetType_ = call ptr @"?GetType_@Type@System@bf@@KAPEAV123@H@Z"(i32 %7)
  store ptr %GetType_, ptr %type, align 8
  %8 = load ptr, ptr %type, align 8
  store ptr %8, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %if.end
  %9 = load ptr, ptr %__return, align 8
  ret ptr %9
}

; Function Attrs: nounwind uwtable
define i32 @"?GetTypeId@Object@System@bf@@AEAAVTypeId@Reflection@23@XZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca i32, align 4
  %classVData = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.Object@System@bf", ptr %0, i32 0, i32 0
  %2 = load ptr, ptr %1, align 8
  store ptr %2, ptr %classVData, align 8
  %3 = load ptr, ptr %classVData, align 8
  %4 = getelementptr inbounds %"corlib.ClassVData@System@bf", ptr %3, i32 0, i32 1
  %5 = load i64, ptr %4, align 8
  %6 = ashr i64 %5, 32
  %7 = trunc i64 %6 to i32
  store i32 %7, ptr %__return, align 4
  br label %exit

exit:                                             ; preds = %entry
  %8 = load i32, ptr %__return, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
declare ptr @"?RawGetType@Object@System@bf@@AEAAPEAVType@23@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i32 @"?RawGetTypeId@Object@System@bf@@AEAAVTypeId@Reflection@23@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?GetHashCode@IHashable@System@bf@@Object@23@AEAATint@@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?ToString@Object@System@bf@@UEAAXPEAVString@23@@Z"(ptr %this, ptr %strBuffer) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %0 = alloca %"corlib.?$Span@PEAVObject@System@bf@@@System@bf", align 8
  %1 = alloca ptr, i64 1, align 8
  %boxed.Simple = alloca %"corlib.?$Box@VSimple@Int@System@bf", align 8
  %2 = alloca %"corlib.?$Result@X@System@bf", align 1
  store ptr %this, ptr %this.addr, align 8
  %3 = load ptr, ptr %this.addr, align 8
  %GetTypeId = call i32 @"?GetTypeId@Object@System@bf@@AEAAVTypeId@Reflection@23@XZ"(ptr %3)
  %4 = sext i32 %GetTypeId to i64
  %5 = getelementptr inbounds %"corlib.?$Span@PEAVObject@System@bf@@@System@bf", ptr %0, i32 0, i32 1
  store ptr %1, ptr %5, align 8
  %6 = getelementptr inbounds %"corlib.?$Span@PEAVObject@System@bf@@@System@bf", ptr %0, i32 0, i32 2
  store i64 1, ptr %6, align 8
  %7 = getelementptr inbounds %"corlib.?$Box@VSimple@Int@System@bf", ptr %boxed.Simple, i32 0, i32 0
  store ptr @"?sBfClassVData@?$Box@VSimple@Int@System@bf@@@@2UClassVData@System@bf@@A", ptr %7, align 8
  %8 = getelementptr inbounds %"corlib.?$Box@VSimple@Int@System@bf", ptr %boxed.Simple, i32 0, i32 1
  store volatile i64 %4, ptr %8, align 8
  %9 = getelementptr inbounds ptr, ptr %1, i32 0
  store ptr %boxed.Simple, ptr %9, align 8
  call void @"?AppendF@String@System@bf@@QEAA?AU?$Result@X@23@UStringView@23@Tparams@@U?$Span@PEAVObject@System@bf@@@23@@Z"(ptr %strBuffer, ptr sret(%"corlib.?$Result@X@System@bf") %2, ptr @__bfStrData62, i64 10, ptr %0)
  call void @"?ReturnValueDiscarded__im@?$Result@X@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(1) %2)
  %10 = ptrtoint ptr %3 to i64
  call void @"?AddrToString@NumberFormatter@System@bf@@SAXTuint@@PEAVString@23@@Z"(i64 %10, ptr %strBuffer)
  br label %deferredCalls

deferredCalls:                                    ; preds = %entry
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr %boxed.Simple)
  br label %exit

exit:                                             ; preds = %deferredCalls
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?ToString@Object@System@bf@@CAXPEAV123@PEAVString@23@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers@Object@System@bf@@MEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@Object@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@Object@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@Object@System@bf@@IEAAPEAV123@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@Object@System@bf@@IEAAPEAV123@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?AppendF@String@System@bf@@QEAA?AU?$Result@X@23@UStringView@23@Tparams@@U?$Span@PEAVObject@System@bf@@@23@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@X@System@bf"), ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?ReturnValueDiscarded__im@?$Result@X@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(1)) #0

; Function Attrs: nounwind uwtable
declare void @"?AddrToString@NumberFormatter@System@bf@@SAXTuint@@PEAVString@23@@Z"(i64, ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?GetType_@Type@System@bf@@KAPEAV123@H@Z"(i32) #0

attributes #0 = { nounwind uwtable }
