; ModuleID = 'BOX_System_UInt64'
source_filename = "BOX_System_UInt64"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Box@VUInt64@System@bf" = type <{ %"corlib.Object@System@bf", i64 }>
%"corlib.Object@System@bf" = type <{ ptr }>

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@?$Box@VUInt64@System@bf@@@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?ToString@?$Box@VUInt64@System@bf@@@@QEAAXPEAVString@System@bf@@@Z"(ptr %this, ptr %strBuffer) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.?$Box@VUInt64@System@bf", ptr %0, i32 0, i32 1
  %2 = load i64, ptr %1, align 8
  tail call void @"?ToString__im@UInt64@System@bf@@SAX_KPEAVString@23@@Z"(i64 %2, ptr %strBuffer)
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@?$Box@VUInt64@System@bf@@@@IEAAPEAVObject@System@bf@@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@?$Box@VUInt64@System@bf@@@@IEAAPEAVObject@System@bf@@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare i64 @"?GetHashCode@?$Box@VUInt64@System@bf@@@@QEAATint@@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
define i1 @"?get__IsNaN@IIsNaN@System@bf@@?$Box@VUInt64@System@bf@@@@AEAA_NXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  ret i1 false
}

; Function Attrs: nounwind uwtable
define void @"?ToString@?$Box@VUInt64@System@bf@@@@QEAAXPEAVString@System@bf@@0PEAVIFormatProvider@34@@Z"(ptr %this, ptr %outString, ptr %format, ptr %formatProvider) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.?$Box@VUInt64@System@bf", ptr %0, i32 0, i32 1
  %2 = load i64, ptr %1, align 8
  tail call void @"?ToString__im@UInt64@System@bf@@SAX_KPEAVString@23@1PEAVIFormatProvider@23@@Z"(i64 %2, ptr %outString, ptr %format, ptr %formatProvider)
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@UInt64@System@bf@@SAX_KPEAVString@23@@Z"(i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@UInt64@System@bf@@SAX_KPEAVString@23@1PEAVIFormatProvider@23@@Z"(i64, ptr, ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsNaN__im@IIsNaN@System@bf@@UInt64@23@CA_N_K@Z"(i64) #0

attributes #0 = { nounwind uwtable }
