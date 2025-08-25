; ModuleID = 'System_Globalization_OwnedString'
source_filename = "System_Globalization_OwnedString"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.OwnedString@Globalization@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i1 }>
%"corlib.ValueType@System@bf" = type <{}>

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@@Z"(ptr %this, ptr %unownedString) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %0, i32 0, i32 1
  store ptr %unownedString, ptr %1, align 8
  %2 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %0, i32 0, i32 2
  store i1 false, ptr %2, align 1
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@OwnedString@Globalization@System@bf@@QEAAXPEAVString@34@_N@Z"(ptr, ptr, i1 zeroext) #0

; Function Attrs: nounwind uwtable
define void @"?Dispose@OwnedString@Globalization@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %1 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %0, i32 0, i32 2
  %2 = load i1, ptr %1, align 1
  br i1 %2, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  %3 = getelementptr inbounds %"corlib.OwnedString@Globalization@System@bf", ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %delete.body, label %delete.end

delete.body:                                      ; preds = %if.then
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds ptr, ptr %6, i32 3
  %8 = load ptr, ptr %7, align 8
  call void %8(ptr %4)
  call void @tc_free(ptr %4)
  br label %delete.end

delete.end:                                       ; preds = %delete.body, %if.then
  br label %if.end

if.end:                                           ; preds = %delete.end, %newScope
  br label %exit

exit:                                             ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?Set@OwnedString@Globalization@System@bf@@QEAAXUStringView@34@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@OwnedString@Globalization@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface__im@OwnedString@Globalization@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i1 zeroext, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers__im@OwnedString@Globalization@System@bf@@IEAAXXZ"(ptr) #0

declare void @tc_free(ptr)

attributes #0 = { nounwind uwtable }
