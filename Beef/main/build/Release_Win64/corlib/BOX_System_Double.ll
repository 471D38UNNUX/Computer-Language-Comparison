; ModuleID = 'BOX_System_Double'
source_filename = "BOX_System_Double"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Box@VDouble@System@bf" = type <{ %"corlib.Object@System@bf", double }>
%"corlib.Object@System@bf" = type <{ ptr }>

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@?$Box@VDouble@System@bf@@@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?ToString@?$Box@VDouble@System@bf@@@@QEAAXPEAVString@System@bf@@@Z"(ptr %this, ptr %strBuffer) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.?$Box@VDouble@System@bf", ptr %0, i32 0, i32 1
  %2 = load double, ptr %1, align 8
  tail call void @"?ToString__im@Double@System@bf@@SAXNPEAVString@23@@Z"(double %2, ptr %strBuffer)
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@?$Box@VDouble@System@bf@@@@IEAAPEAVObject@System@bf@@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@?$Box@VDouble@System@bf@@@@IEAAPEAVObject@System@bf@@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
define void @"?ToString@?$Box@VDouble@System@bf@@@@QEAAXPEAVString@System@bf@@0PEAVIFormatProvider@34@@Z"(ptr %this, ptr %outString, ptr %format, ptr %formatProvider) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.?$Box@VDouble@System@bf", ptr %0, i32 0, i32 1
  %2 = load double, ptr %1, align 8
  tail call void @"?ToString__im@Double@System@bf@@SAXNPEAVString@23@0PEAVIFormatProvider@23@@Z"(double %2, ptr %outString, ptr %format, ptr %formatProvider)
  ret void
}

; Function Attrs: nounwind uwtable
declare i64 @"?GetHashCode@?$Box@VDouble@System@bf@@@@QEAATint@@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
define i1 @"?get__IsNaN@?$Box@VDouble@System@bf@@@@QEAA_NXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.?$Box@VDouble@System@bf", ptr %0, i32 0, i32 1
  %2 = load double, ptr %1, align 8
  %get__IsNaN = tail call i1 @"?get__IsNaN__im@Double@System@bf@@SA_NN@Z"(double %2)
  ret i1 %get__IsNaN
}

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@Double@System@bf@@SAXNPEAVString@23@@Z"(double, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@Double@System@bf@@SAXNPEAVString@23@0PEAVIFormatProvider@23@@Z"(double, ptr, ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsNaN__im@Double@System@bf@@SA_NN@Z"(double) #0

attributes #0 = { nounwind uwtable }
