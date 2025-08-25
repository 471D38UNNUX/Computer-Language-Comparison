; ModuleID = 'System_Collections_List_System_Object'
source_filename = "System_Collections_List_System_Object"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.Variant@System@bf" = type opaque
%"corlib.?$Span@PEAVObject@System@bf@@@System@bf" = type opaque
%"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64, ptr }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$List@PEAVObject@System@bf@@@Collections@System@bf" = type <{ %"corlib.Object@System@bf", ptr, i32, i32 }>
%"corlib.Object@System@bf" = type <{ ptr }>

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i4$?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXAEATint@@U?$Span@PEAVObject@System@bf@@@34@@Z"(ptr, ptr dereferenceable(8), ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?this$calcAppend@i5$?$List@PEAVObject@System@bf@@@Collections@System@bf@@SATint@@U?$Span@PEAVObject@System@bf@@@34@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@i6$?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXAEATint@@Tint@@@Z"(ptr, ptr dereferenceable(8), i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?this$calcAppend@i7$?$List@PEAVObject@System@bf@@@Collections@System@bf@@SATint@@Tint@@@Z"(i64) #0

; Function Attrs: alwaysinline nounwind uwtable
declare i64 @"?get__Count@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAATint@@XZ"(ptr) #1

; Function Attrs: nounwind uwtable
declare ptr @"?get__@CHK$?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAAEAPEAVObject@34@Tint@@@Z"(ptr, i64) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"?get__@UCHK$?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAAEAPEAVObject@34@Tint@@@Z"(ptr, i64) #1

; Function Attrs: nounwind uwtable
declare void @"?set__@CHK$?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXPEAVObject@34@Tint@@@Z"(ptr, ptr, i64) #0

; Function Attrs: alwaysinline nounwind uwtable
declare void @"?set__@UCHK$?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXPEAVObject@34@Tint@@@Z"(ptr, ptr, i64) #1

; Function Attrs: nounwind uwtable
declare void @"?get__@IList@Collections@System@bf@@?$List@PEAVObject@System@bf@@@234@AEAA?AUVariant@34@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.Variant@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?set__@IList@Collections@System@bf@@?$List@PEAVObject@System@bf@@@234@AEAAXUVariant@34@Tint@@@Z"(ptr, i64, i64, i64) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__@CHK$?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAAEAPEAVObject@34@UIndex@34@@Z"(ptr, ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare ptr @"?get__@UCHK$?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAAEAPEAVObject@34@UIndex@34@@Z"(ptr, ptr) #1

; Function Attrs: nounwind uwtable
declare void @"?set__@CHK$?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXPEAVObject@34@UIndex@34@@Z"(ptr, ptr, ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
declare void @"?set__@UCHK$?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXPEAVObject@34@UIndex@34@@Z"(ptr, ptr, ptr) #1

; Function Attrs: alwaysinline nounwind uwtable
declare void @"?get__@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAA?AU?$Span@PEAVObject@System@bf@@@34@UIndexRange@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Span@PEAVObject@System@bf@@@System@bf"), ptr) #1

; Function Attrs: nounwind uwtable
declare ptr @"?Alloc@?$List@PEAVObject@System@bf@@@Collections@System@bf@@MEAAPEAPEAVObject@34@Tint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
define void @"?Free@?$List@PEAVObject@System@bf@@@Collections@System@bf@@MEAAXPEAPEAVObject@34@@Z"(ptr %this, ptr %val) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = ptrtoint ptr %val to i64
  %2 = icmp ugt i64 %1, 1
  br i1 %2, label %delete.body, label %delete.end

delete.body:                                      ; preds = %entry
  call void @tc_free(ptr %val)
  br label %delete.end

delete.end:                                       ; preds = %delete.body, %entry
  br label %exit

exit:                                             ; preds = %delete.end
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?Add@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXPEAVObject@34@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Add@IList@Collections@System@bf@@?$List@PEAVObject@System@bf@@@234@AEAAXUVariant@34@@Z"(ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
declare ptr @"?GrowUnitialized@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAPEAPEAVObject@34@Tint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Clear@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?Contains@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAA_NPEAVObject@34@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?Contains@IList@Collections@System@bf@@?$List@PEAVObject@System@bf@@@234@AEAA_NUVariant@34@@Z"(ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?CopyTo@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXPEAV?$Array1@PEAVObject@System@bf@@@34@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?CopyTo@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXPEAV1234@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?CopyTo@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXU?$Span@PEAVObject@System@bf@@@34@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?CopyTo@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXU?$Span@PEAVObject@System@bf@@@34@Tint@@@Z"(ptr, ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?CopyTo@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXTint@@U?$Span@PEAVObject@System@bf@@@34@00@Z"(ptr, i64, ptr, i64, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?CopyTo@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXPEAV?$Array1@PEAVObject@System@bf@@@34@Tint@@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?CopyTo@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXTint@@PEAV?$Array1@PEAVObject@System@bf@@@34@00@Z"(ptr, i64, ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
define void @"?GetEnumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAA?AUEnumerator@1234@XZ"(ptr %this, ptr noalias sret(%"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf") %0) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", align 8
  store ptr %this, ptr %this.addr, align 8
  %2 = load ptr, ptr %this.addr, align 8
  store ptr %0, ptr %__return.addr, align 8
  call void @"?__BfCtor@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXPEAV2345@@Z"(ptr %1, ptr %2)
  %3 = load %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %1, align 8
  %4 = load ptr, ptr %__return.addr, align 8
  store %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf" %3, ptr %4, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare i64 @"?IndexOf@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAATint@@PEAVObject@34@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?IndexOf@IList@Collections@System@bf@@?$List@PEAVObject@System@bf@@@234@AEAATint@@UVariant@34@@Z"(ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?IndexOf@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAATint@@PEAVObject@34@Tint@@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?IndexOf@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAATint@@PEAVObject@34@Tint@@1@Z"(ptr, ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Insert@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXTint@@PEAVObject@34@@Z"(ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Insert@IList@Collections@System@bf@@?$List@PEAVObject@System@bf@@@234@AEAAXTint@@UVariant@34@@Z"(ptr, i64, i64, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Insert@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXTint@@U?$Span@PEAVObject@System@bf@@@34@@Z"(ptr, i64, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?RemoveAt@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXTint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare ptr @"?PopBack@CHK$?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAPEAVObject@34@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?PopBack@UCHK$?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAPEAVObject@34@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?PopFront@CHK$?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAPEAVObject@34@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?PopFront@UCHK$?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAPEAVObject@34@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?Remove@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAA_NPEAVObject@34@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?Remove@IList@Collections@System@bf@@?$List@PEAVObject@System@bf@@@234@AEAA_NUVariant@34@@Z"(ptr, i64, i64) #0

; Function Attrs: nounwind uwtable
define void @"?~this@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %items = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %get__IsDynAlloc = call i1 @"?get__IsDynAlloc@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAA_NXZ"(ptr %0)
  br i1 %get__IsDynAlloc, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  %1 = getelementptr inbounds %"corlib.?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %0, i32 0, i32 1
  %2 = load ptr, ptr %1, align 8
  store ptr %2, ptr %items, align 8
  %3 = load ptr, ptr %items, align 8
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds ptr, ptr %4, i32 7
  %6 = load ptr, ptr %5, align 8
  call void %6(ptr %0, ptr %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %newScope
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr %0)
  br label %exit

exit:                                             ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers@?$List@PEAVObject@System@bf@@@Collections@System@bf@@IEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@?$List@PEAVObject@System@bf@@@Collections@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@?$List@PEAVObject@System@bf@@@Collections@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXPEAV?$IEnumerator@PEAVObject@System@bf@@@234@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfCtorClear@?$List@PEAVObject@System@bf@@@Collections@System@bf@@AEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nounwind uwtable
declare void @"??B?$List@PEAVObject@System@bf@@@Collections@System@bf@@SA?AU?$Span@PEAVObject@System@bf@@@23@PEAV0123@@Z"(ptr noalias sret(%"corlib.?$Span@PEAVObject@System@bf@@@System@bf"), ptr) #0

; Function Attrs: alwaysinline nounwind uwtable
define i1 @"?get__IsDynAlloc@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAA_NXZ"(ptr %this) #1 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca i1, align 1
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %0, i32 0, i32 3
  %2 = load i32, ptr %1, align 4
  %3 = and i32 %2, -2147483648
  %4 = icmp ne i32 %3, 0
  store i1 %4, ptr %__return, align 1
  br label %exit

exit:                                             ; preds = %entry
  %5 = load i1, ptr %__return, align 1
  ret i1 %5
}

; Function Attrs: nounwind uwtable
declare void @"?~this@Object@System@bf@@UEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXPEAV2345@@Z"(ptr, ptr) #0

declare void @tc_free(ptr)

attributes #0 = { nounwind uwtable }
attributes #1 = { alwaysinline nounwind uwtable }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
