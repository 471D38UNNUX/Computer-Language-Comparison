; ModuleID = 'BOX_System_Int'
source_filename = "BOX_System_Int"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Box@VInt@System@bf" = type <{ %"corlib.Object@System@bf", i64 }>
%"corlib.Object@System@bf" = type <{ ptr }>

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@?$Box@VInt@System@bf@@@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?ToString@?$Box@VInt@System@bf@@@@QEAAXPEAVString@System@bf@@@Z"(ptr %this, ptr %outString) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.?$Box@VInt@System@bf", ptr %0, i32 0, i32 1
  %2 = load i64, ptr %1, align 8
  tail call void @"?ToString__im@Int@System@bf@@SAXTint@@PEAVString@23@@Z"(i64 %2, ptr %outString)
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@?$Box@VInt@System@bf@@@@IEAAPEAVObject@System@bf@@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@?$Box@VInt@System@bf@@@@IEAAPEAVObject@System@bf@@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare i64 @"?GetHashCode@?$Box@VInt@System@bf@@@@QEAATint@@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?ToString@?$Box@VInt@System@bf@@@@QEAAXPEAVString@System@bf@@0PEAVIFormatProvider@34@@Z"(ptr %this, ptr %outString, ptr %format, ptr %formatProvider) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.?$Box@VInt@System@bf", ptr %0, i32 0, i32 1
  %2 = load i64, ptr %1, align 8
  tail call void @"?ToString__im@Int@System@bf@@SAXTint@@PEAVString@23@1PEAVIFormatProvider@23@@Z"(i64 %2, ptr %outString, ptr %format, ptr %formatProvider)
  ret void
}

; Function Attrs: nounwind uwtable
define i1 @"?get__IsNaN@IIsNaN@System@bf@@?$Box@VInt@System@bf@@@@AEAA_NXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  ret i1 false
}

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@Int@System@bf@@SAXTint@@PEAVString@23@@Z"(i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@Int@System@bf@@SAXTint@@PEAVString@23@1PEAVIFormatProvider@23@@Z"(i64, ptr, ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsNaN__im@IIsNaN@System@bf@@Int@23@CA_NTint@@@Z"(i64) #0

attributes #0 = { nounwind uwtable }
