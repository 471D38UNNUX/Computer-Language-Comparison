; ModuleID = 'System_IO_FileFindEntry'
source_filename = "System_IO_FileFindEntry"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.FileFindEntry@IO@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, ptr }>
%"corlib.ValueType@System@bf" = type <{}>

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @"?__BfCtor@FileFindEntry@IO@System@bf@@QEAAXPEAVString@34@PEAUBfpFindFileData@Platform@34@@Z"(ptr nocapture writeonly %this, ptr %searchStr, ptr %findFileData) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %"corlib.FileFindEntry@IO@System@bf", ptr %this, i64 0, i32 1
  store ptr %searchStr, ptr %0, align 8
  %1 = getelementptr inbounds %"corlib.FileFindEntry@IO@System@bf", ptr %this, i64 0, i32 2
  store ptr %findFileData, ptr %1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @"?GetFileSize__im@FileFindEntry@IO@System@bf@@QEAA_JXZ"(ptr nocapture readnone %this_mSearchStr, ptr %this_mFindFileData) local_unnamed_addr #1 {
entry:
  %BfpFindFileData_GetFileSize = tail call i64 @"?BfpFindFileData_GetFileSize@Hook@Platform@System@bf@@SA_JPEAUBfpFindFileData@234@@Z"(ptr %this_mFindFileData)
  ret i64 %BfpFindFileData_GetFileSize
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i1 @"??BFileFindEntry@IO@System@bf@@SA_NU0123@@Z"(ptr nocapture readnone %self_mSearchStr, ptr readnone %self_mFindFileData) local_unnamed_addr #2 {
entry:
  %0 = icmp ne ptr %self_mFindFileData, null
  ret i1 %0
}

; Function Attrs: nounwind uwtable
declare i64 @"?BfpFindFileData_GetFileSize@Hook@Platform@System@bf@@SA_JPEAUBfpFindFileData@234@@Z"(ptr) local_unnamed_addr #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable }
attributes #1 = { nounwind uwtable }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
