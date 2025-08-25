; ModuleID = 'System_Array'
source_filename = "System_Array"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.Array@System@bf" = type <{ %"corlib.Object@System@bf", i32 }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.?$Array1@D@System@bf" = type <{ %"corlib.Array@System@bf", i8 }>

; Function Attrs: alwaysinline nounwind uwtable
declare void @"?set__Count@Array@System@bf@@QEAAXTint@@@Z"(ptr, i64) #0

; Function Attrs: alwaysinline nounwind uwtable
define i64 @"?get__Count@Array@System@bf@@QEAATint@@XZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.Array@System@bf", ptr %0, i32 0, i32 1
  %2 = load i32, ptr %1, align 4
  %3 = sext i32 %2 to i64
  store i64 %3, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %4 = load i64, ptr %__return, align 8
  ret i64 %4
}

; Function Attrs: alwaysinline nounwind uwtable
define i1 @"?get__IsEmpty@Array@System@bf@@QEAA_NXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca i1, align 1
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.Array@System@bf", ptr %0, i32 0, i32 1
  %2 = load i32, ptr %1, align 4
  %3 = icmp eq i32 %2, 0
  store i1 %3, ptr %__return, align 1
  br label %exit

exit:                                             ; preds = %entry
  %4 = load i1, ptr %__return, align 1
  ret i1 %4
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@Array@System@bf@@AEAAXXZ"(ptr) #1

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@Array@System@bf@@QEAAXXZ"(ptr %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@Array@System@bf@@IEAAPEAVObject@23@H@Z"(ptr, i32) #1

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@Array@System@bf@@IEAAPEAVObject@23@H@Z"(ptr, i32) #1

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers@Array@System@bf@@IEAAXXZ"(ptr) #1

; Function Attrs: nounwind uwtable
declare void @"??$Copy@U_M0@@U_M1@@@Array@System@bf@@SAXPEAV?$Array1@U_M0@@@System@bf@@Tint@@PEAV?$Array1@U_M1@@@12@11@Z"(ptr, i64, ptr, i64, i64) #1

; Function Attrs: nounwind uwtable
declare void @"??$Copy@U_M0@@U_M1@@@Array@System@bf@@SAXPEAV?$Array1@U_M0@@@System@bf@@PEAV?$Array1@U_M1@@@12@Tint@@@Z"(ptr, ptr, i64) #1

; Function Attrs: nounwind uwtable
define void @"??$Copy@DD@Array@System@bf@@SAXPEAV?$Array1@D@System@bf@@Tint@@011@Z"(ptr %arrayFrom, i64 %srcOffset, ptr %arrayTo, i64 %dstOffset, i64 %length) #1 {
entry:
  %i = alloca i64, align 8
  %i3 = alloca i64, align 8
  %0 = icmp eq ptr %arrayTo, %arrayFrom
  br i1 %0, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %1 = icmp sgt i64 %dstOffset, %srcOffset
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %1, %land.rhs ]
  br i1 %2, label %if.then, label %if.end

if.then:                                          ; preds = %land.end
  br label %for.start

for.start:                                        ; preds = %if.then
  %3 = sub i64 %length, 1
  store i64 %3, ptr %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %for.start
  %4 = load i64, ptr %i, align 8
  %5 = icmp sge i64 %4, 0
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i64, ptr %i, align 8
  %7 = add i64 %6, %dstOffset
  %GetRef = call ptr @"?GetRef@?$Array1@D@System@bf@@AEAAAEADTint@@@Z"(ptr %arrayTo, i64 %7)
  %8 = load i64, ptr %i, align 8
  %9 = add i64 %8, %srcOffset
  %GetRef1 = call ptr @"?GetRef@?$Array1@D@System@bf@@AEAAAEADTint@@@Z"(ptr %arrayFrom, i64 %9)
  %10 = load i8, ptr %GetRef1, align 1
  store i8 %10, ptr %GetRef, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i64, ptr %i, align 8
  %12 = sub i64 %11, 1
  store i64 %12, ptr %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %exit

if.end:                                           ; preds = %land.end
  br label %for.start2

for.start2:                                       ; preds = %if.end
  store i64 0, ptr %i3, align 8
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc8, %for.start2
  %13 = load i64, ptr %i3, align 8
  %14 = icmp slt i64 %13, %length
  br i1 %14, label %for.body5, label %for.end9

for.body5:                                        ; preds = %for.cond4
  %15 = load i64, ptr %i3, align 8
  %16 = add i64 %15, %dstOffset
  %GetRef6 = call ptr @"?GetRef@?$Array1@D@System@bf@@AEAAAEADTint@@@Z"(ptr %arrayTo, i64 %16)
  %17 = load i64, ptr %i3, align 8
  %18 = add i64 %17, %srcOffset
  %GetRef7 = call ptr @"?GetRef@?$Array1@D@System@bf@@AEAAAEADTint@@@Z"(ptr %arrayFrom, i64 %18)
  %19 = load i8, ptr %GetRef7, align 1
  store i8 %19, ptr %GetRef6, align 1
  br label %for.inc8

for.inc8:                                         ; preds = %for.body5
  %20 = load i64, ptr %i3, align 8
  %21 = add i64 %20, 1
  store i64 %21, ptr %i3, align 8
  br label %for.cond4

for.end9:                                         ; preds = %for.cond4
  br label %exit

exit:                                             ; preds = %for.end9, %for.end
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal ptr @"?GetRef@?$Array1@D@System@bf@@AEAAAEADTint@@@Z"(ptr %this, i64 %idx) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.?$Array1@D@System@bf", ptr %0, i32 0, i32 1
  %2 = getelementptr inbounds i8, ptr %1, i64 %idx
  store ptr %2, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %3 = load ptr, ptr %__return, align 8
  ret ptr %3
}

attributes #0 = { alwaysinline nounwind uwtable }
attributes #1 = { nounwind uwtable }
