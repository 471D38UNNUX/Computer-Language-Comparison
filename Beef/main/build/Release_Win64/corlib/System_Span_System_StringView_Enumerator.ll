; ModuleID = 'System_Span_System_StringView_Enumerator'
source_filename = "System_Span_System_StringView_Enumerator"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Result@UStringView@System@bf@@@System@bf" = type <{ %"corlib.Enum@System@bf", %"corlib.?$__TUPLE_val@UStringView@System@bf@@@bf", i8 }>
%"corlib.Enum@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$__TUPLE_val@UStringView@System@bf@@@bf" = type <{ %"corlib.Tuple@System@bf", %"corlib.StringView@System@bf" }>
%"corlib.Tuple@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.StringView@System@bf" = type <{ %"corlib.?$Span@D@System@bf" }>
%"corlib.?$Span@D@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.?$Result@PEAUStringView@System@bf@@@System@bf" = type opaque
%"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf" = type <{ %"corlib.ValueType@System@bf", %"corlib.?$Span@UStringView@System@bf@@@System@bf", i64, ptr }>
%"corlib.?$Span@UStringView@System@bf@@@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>

; Function Attrs: nounwind uwtable
define void @"?GetNext@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@QEAA?AU?$Result@?AUStringView@System@bf@@@34@XZ"(ptr %this, ptr noalias sret(%"corlib.?$Result@UStringView@System@bf@@@System@bf") %0) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return.addr = alloca ptr, align 8
  %1 = alloca %"corlib.StringView@System@bf", align 8
  %2 = alloca %"corlib.?$Result@UStringView@System@bf@@@System@bf", align 8
  store ptr %this, ptr %this.addr, align 8
  %3 = load ptr, ptr %this.addr, align 8
  store ptr %0, ptr %__return.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %MoveNext = call i1 @"?MoveNext@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@QEAA_NXZ"(ptr %3)
  %4 = xor i1 %MoveNext, true
  br i1 %4, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  %5 = load ptr, ptr %__return.addr, align 8
  store %"corlib.?$Result@UStringView@System@bf@@@System@bf" <{ %"corlib.Enum@System@bf" zeroinitializer, %"corlib.?$__TUPLE_val@UStringView@System@bf@@@bf" zeroinitializer, i8 1 }>, ptr %5, align 8
  br label %exit

if.end:                                           ; preds = %newScope
  call void @"?get__Current__im@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@QEAA?AUStringView@34@XZ"(ptr nocapture dereferenceable(32) %3, ptr sret(%"corlib.StringView@System@bf") %1)
  %6 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %1, i32 0, i32 0
  %7 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %6, i32 0, i32 2
  %10 = load i64, ptr %9, align 8
  call void @"??B?$Result@UStringView@System@bf@@@System@bf@@SA?AU012@UStringView@12@@Z"(ptr sret(%"corlib.?$Result@UStringView@System@bf@@@System@bf") %2, ptr %8, i64 %10)
  %11 = load %"corlib.?$Result@UStringView@System@bf@@@System@bf", ptr %2, align 8
  %12 = load ptr, ptr %__return.addr, align 8
  store %"corlib.?$Result@UStringView@System@bf@@@System@bf" %11, ptr %12, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?GetNextRef@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@QEAA?AU?$Result@PEA?AUStringView@System@bf@@@34@XZ"(ptr, ptr noalias sret(%"corlib.?$Result@PEAUStringView@System@bf@@@System@bf")) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface__im@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@IEAAPEAVObject@34@H@Z"(ptr nocapture dereferenceable(32), i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers__im@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@IEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?Dispose__im@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(32) %this) #0 {
entry:
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@QEAAXU234@@Z"(ptr %this, ptr %list_mPtr, i64 %list_mLength) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %0 = alloca ptr, align 8
  %1 = alloca i64, align 8
  store ptr %this, ptr %this.addr, align 8
  %2 = load ptr, ptr %this.addr, align 8
  store ptr %list_mPtr, ptr %0, align 8
  store i64 %list_mLength, ptr %1, align 8
  %3 = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %2, i32 0, i32 1
  %4 = getelementptr inbounds %"corlib.?$Span@UStringView@System@bf@@@System@bf", ptr %3, i32 0, i32 0
  %5 = getelementptr inbounds %"corlib.?$Span@UStringView@System@bf@@@System@bf", ptr %3, i32 0, i32 1
  store ptr %list_mPtr, ptr %5, align 8
  %6 = getelementptr inbounds %"corlib.?$Span@UStringView@System@bf@@@System@bf", ptr %3, i32 0, i32 2
  store i64 %list_mLength, ptr %6, align 8
  %7 = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %2, i32 0, i32 2
  store i64 0, ptr %7, align 8
  %8 = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %2, i32 0, i32 3
  store ptr null, ptr %8, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i1 @"?MoveNext@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@QEAA_NXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca i1, align 1
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  br label %newScope

newScope:                                         ; preds = %entry
  %1 = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %0, i32 0, i32 2
  %2 = load i64, ptr %1, align 8
  %3 = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %0, i32 0, i32 1
  %4 = getelementptr inbounds %"corlib.?$Span@UStringView@System@bf@@@System@bf", ptr %3, i32 0, i32 2
  %5 = load i64, ptr %4, align 8
  %6 = icmp ult i64 %2, %5
  br i1 %6, label %if.then, label %if.end

if.then:                                          ; preds = %newScope
  %7 = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %0, i32 0, i32 1
  %9 = getelementptr inbounds %"corlib.?$Span@UStringView@System@bf@@@System@bf", ptr %8, i32 0, i32 1
  %10 = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %0, i32 0, i32 2
  %11 = load i64, ptr %10, align 8
  %12 = load ptr, ptr %9, align 8
  %13 = getelementptr inbounds %"corlib.StringView@System@bf", ptr %12, i64 %11
  store ptr %13, ptr %7, align 8
  %14 = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %0, i32 0, i32 2
  %15 = load i64, ptr %14, align 8
  %16 = add i64 %15, 1
  store i64 %16, ptr %14, align 8
  store i1 true, ptr %__return, align 1
  br label %exit

if.end:                                           ; preds = %newScope
  %MoveNextRare = call i1 @"?MoveNextRare@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@AEAA_NXZ"(ptr %0)
  store i1 %MoveNextRare, ptr %__return, align 1
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %17 = load i1, ptr %__return, align 1
  ret i1 %17
}

; Function Attrs: nounwind uwtable
define void @"?get__Current__im@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@QEAA?AUStringView@34@XZ"(ptr nocapture dereferenceable(32) %this, ptr noalias sret(%"corlib.StringView@System@bf") %0) #0 {
entry:
  %__return.addr = alloca ptr, align 8
  store ptr %0, ptr %__return.addr, align 8
  %1 = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %this, i32 0, i32 3
  %2 = load ptr, ptr %1, align 8
  %3 = load %"corlib.StringView@System@bf", ptr %2, align 8
  %4 = load ptr, ptr %__return.addr, align 8
  store %"corlib.StringView@System@bf" %3, ptr %4, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @"??B?$Result@UStringView@System@bf@@@System@bf@@SA?AU012@UStringView@12@@Z"(ptr noalias sret(%"corlib.?$Result@UStringView@System@bf@@@System@bf") %0, ptr %value_mPtr, i64 %value_mLength) #1 {
entry:
  %1 = alloca ptr, align 8
  %2 = alloca i64, align 8
  %__return.addr = alloca ptr, align 8
  %3 = alloca %"corlib.?$Result@UStringView@System@bf@@@System@bf", align 8
  store ptr %value_mPtr, ptr %1, align 8
  store i64 %value_mLength, ptr %2, align 8
  store ptr %0, ptr %__return.addr, align 8
  %4 = getelementptr inbounds %"corlib.?$Result@UStringView@System@bf@@@System@bf", ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %"corlib.?$__TUPLE_val@UStringView@System@bf@@@bf", ptr %4, i32 0, i32 1
  %6 = insertvalue %"corlib.?$Span@D@System@bf" undef, ptr %value_mPtr, 1
  %7 = insertvalue %"corlib.?$Span@D@System@bf" %6, i64 %value_mLength, 2
  %8 = insertvalue %"corlib.StringView@System@bf" undef, %"corlib.?$Span@D@System@bf" %7, 0
  store %"corlib.StringView@System@bf" %8, ptr %5, align 8
  %9 = getelementptr inbounds %"corlib.?$Result@UStringView@System@bf@@@System@bf", ptr %3, i32 0, i32 2
  store i8 0, ptr %9, align 4
  %10 = load %"corlib.?$Result@UStringView@System@bf@@@System@bf", ptr %3, align 8
  %11 = load ptr, ptr %__return.addr, align 8
  store %"corlib.?$Result@UStringView@System@bf@@@System@bf" %10, ptr %11, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define i1 @"?MoveNextRare@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@AEAA_NXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  %__return = alloca i1, align 1
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %0, i32 0, i32 2
  %2 = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %0, i32 0, i32 1
  %3 = getelementptr inbounds %"corlib.?$Span@UStringView@System@bf@@@System@bf", ptr %2, i32 0, i32 2
  %4 = load i64, ptr %3, align 8
  %5 = add i64 %4, 1
  store i64 %5, ptr %1, align 8
  %6 = getelementptr inbounds %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", ptr %0, i32 0, i32 3
  store ptr null, ptr %6, align 8
  store i1 false, ptr %__return, align 1
  br label %exit

exit:                                             ; preds = %entry
  %7 = load i1, ptr %__return, align 1
  ret i1 %7
}

attributes #0 = { nounwind uwtable }
attributes #1 = { alwaysinline nounwind uwtable }
