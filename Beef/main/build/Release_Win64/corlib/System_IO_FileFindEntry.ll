; ModuleID = 'System_IO_FileFindEntry'
source_filename = "System_IO_FileFindEntry"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.FileFindEntry@IO@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, ptr }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.DateTime@System@bf" = type opaque

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@FileFindEntry@IO@System@bf@@QEAAXPEAVString@34@PEAUBfpFindFileData@Platform@34@@Z"(ptr %this, ptr %searchStr, ptr %findFileData) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  %1 = getelementptr inbounds %"corlib.FileFindEntry@IO@System@bf", ptr %0, i32 0, i32 1
  store ptr %searchStr, ptr %1, align 8
  %2 = getelementptr inbounds %"corlib.FileFindEntry@IO@System@bf", ptr %0, i32 0, i32 2
  store ptr %findFileData, ptr %2, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsDirectory__im@FileFindEntry@IO@System@bf@@QEAA_NXZ"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetFileName__im@FileFindEntry@IO@System@bf@@QEAAXPEAVString@34@@Z"(ptr, ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetFilePath__im@FileFindEntry@IO@System@bf@@QEAAXPEAVString@34@@Z"(ptr, ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetLastWriteTime__im@FileFindEntry@IO@System@bf@@QEAA?AUDateTime@34@XZ"(ptr noalias sret(%"corlib.DateTime@System@bf"), ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetLastWriteTimeUtc__im@FileFindEntry@IO@System@bf@@QEAA?AUDateTime@34@XZ"(ptr noalias sret(%"corlib.DateTime@System@bf"), ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetCreatedTime__im@FileFindEntry@IO@System@bf@@QEAA?AUDateTime@34@XZ"(ptr noalias sret(%"corlib.DateTime@System@bf"), ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetCreatedTimeUtc__im@FileFindEntry@IO@System@bf@@QEAA?AUDateTime@34@XZ"(ptr noalias sret(%"corlib.DateTime@System@bf"), ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetAccessedTime__im@FileFindEntry@IO@System@bf@@QEAA?AUDateTime@34@XZ"(ptr noalias sret(%"corlib.DateTime@System@bf"), ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetAccessedTimeUtc__im@FileFindEntry@IO@System@bf@@QEAA?AUDateTime@34@XZ"(ptr noalias sret(%"corlib.DateTime@System@bf"), ptr, ptr) #0

; Function Attrs: nounwind uwtable
define i64 @"?GetFileSize__im@FileFindEntry@IO@System@bf@@QEAA_JXZ"(ptr %this_mSearchStr, ptr %this_mFindFileData) #0 {
entry:
  %0 = alloca ptr, align 8
  %1 = alloca ptr, align 8
  %__return = alloca i64, align 8
  store ptr %this_mSearchStr, ptr %0, align 8
  store ptr %this_mFindFileData, ptr %1, align 8
  %BfpFindFileData_GetFileSize = call i64 @"?BfpFindFileData_GetFileSize@Hook@Platform@System@bf@@SA_JPEAUBfpFindFileData@234@@Z"(ptr %this_mFindFileData)
  store i64 %BfpFindFileData_GetFileSize, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %entry
  %2 = load i64, ptr %__return, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
declare i32 @"?GetFileAttributes__im@FileFindEntry@IO@System@bf@@QEAA?AW4BfpFileAttributes@Platform@34@XZ"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
define i1 @"??BFileFindEntry@IO@System@bf@@SA_NU0123@@Z"(ptr %self_mSearchStr, ptr %self_mFindFileData) #0 {
entry:
  %0 = alloca ptr, align 8
  %1 = alloca ptr, align 8
  %__return = alloca i1, align 1
  store ptr %self_mSearchStr, ptr %0, align 8
  store ptr %self_mFindFileData, ptr %1, align 8
  %2 = icmp ne ptr %self_mFindFileData, null
  store i1 %2, ptr %__return, align 1
  br label %exit

exit:                                             ; preds = %entry
  %3 = load i1, ptr %__return, align 1
  ret i1 %3
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@FileFindEntry@IO@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface__im@FileFindEntry@IO@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers__im@FileFindEntry@IO@System@bf@@IEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?BfpFindFileData_GetFileSize@Hook@Platform@System@bf@@SA_JPEAUBfpFindFileData@234@@Z"(ptr) #0

attributes #0 = { nounwind uwtable }
