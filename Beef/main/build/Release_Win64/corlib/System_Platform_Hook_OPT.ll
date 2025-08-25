; ModuleID = 'System_Platform_Hook'
source_filename = "System_Platform_Hook"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

@"?sBfpFile_Create@Hook@Platform@System@bf@@2V?$function_name_createKind_createFlags_createdFileAttrs_outResult@PEAUBfpFile@Platform@System@bf@@PEADW4BfpFileCreateKind@123@W4BfpFileCreateFlags@123@W4BfpFileAttributes@123@PEAW4BfpFileResult@123@@4@A" = local_unnamed_addr global i64 0, align 8
@"?sBfpFile_GetStd@Hook@Platform@System@bf@@2V?$function_kind_outResult@PEAUBfpFile@Platform@System@bf@@W4BfpFileStdKind@123@PEAW4BfpFileResult@123@@4@A" = local_unnamed_addr global i64 0, align 8
@"?sBfpFile_GetSystemHandle@Hook@Platform@System@bf@@2V?$function_file@Tint@@PEAUBfpFile@Platform@System@bf@@@4@A" = local_unnamed_addr global i64 0, align 8
@"?sBfpFile_Release@Hook@Platform@System@bf@@2V?$function_file@XPEAUBfpFile@Platform@System@bf@@@4@A" = local_unnamed_addr global i64 0, align 8
@"?sBfpFile_Write@Hook@Platform@System@bf@@2V?$function_file_buffer_size_timeoutMS_outResult@Tint@@PEAUBfpFile@Platform@System@bf@@PEAXTint@@Tint@@PEAW4BfpFileResult@123@@4@A" = local_unnamed_addr global i64 0, align 8
@"?sBfpFile_Read@Hook@Platform@System@bf@@2V?$function_file_buffer_size_timeoutMS_outResult@Tint@@PEAUBfpFile@Platform@System@bf@@PEAXTint@@Tint@@PEAW4BfpFileResult@123@@4@A" = local_unnamed_addr global i64 0, align 8
@"?sBfpFile_Flush@Hook@Platform@System@bf@@2V?$function_file@XPEAUBfpFile@Platform@System@bf@@@4@A" = local_unnamed_addr global i64 0, align 8
@"?sBfpFile_GetFileSize@Hook@Platform@System@bf@@2V?$function_file@_JPEAUBfpFile@Platform@System@bf@@@4@A" = local_unnamed_addr global i64 0, align 8
@"?sBfpFile_Seek@Hook@Platform@System@bf@@2V?$function_file_offset_seekKind@_JPEAUBfpFile@Platform@System@bf@@_JW4BfpFileSeekKind@123@@4@A" = local_unnamed_addr global i64 0, align 8
@"?sBfpFile_Truncate@Hook@Platform@System@bf@@2V?$function_file_outResult@XPEAUBfpFile@Platform@System@bf@@PEAW4BfpFileResult@123@@4@A" = local_unnamed_addr global i64 0, align 8
@"?sBfpFile_GetTime_LastWrite@Hook@Platform@System@bf@@2V?$function_path@VBfpTimeStamp@Platform@System@bf@@PEAD@4@A" = local_unnamed_addr global i64 0, align 8
@"?sBfpFile_GetAttributes@Hook@Platform@System@bf@@2V?$function_path_outResult@W4BfpFileAttributes@Platform@System@bf@@PEADPEAW4BfpFileResult@123@@4@A" = local_unnamed_addr global i64 0, align 8
@"?sBfpFile_SetAttributes@Hook@Platform@System@bf@@2V?$function_path_attribs_outResult@XPEADW4BfpFileAttributes@Platform@System@bf@@PEAW4BfpFileResult@123@@4@A" = local_unnamed_addr global i64 0, align 8
@"?sBfpFile_Copy@Hook@Platform@System@bf@@2V?$function_oldPath_newPath_copyKind_outResult@XPEADPEADW4BfpFileCopyKind@Platform@System@bf@@PEAW4BfpFileResult@123@@4@A" = local_unnamed_addr global i64 0, align 8
@"?sBfpFile_Rename@Hook@Platform@System@bf@@2V?$function_oldPath_newPath_outResult@XPEADPEADPEAW4BfpFileResult@Platform@System@bf@@@4@A" = local_unnamed_addr global i64 0, align 8
@"?sBfpFile_Delete@Hook@Platform@System@bf@@2V?$function_path_outResult@XPEADPEAW4BfpFileResult@Platform@System@bf@@@4@A" = local_unnamed_addr global i64 0, align 8
@"?sBfpFile_Exists@Hook@Platform@System@bf@@2V?$function_path@_NPEAD@4@A" = local_unnamed_addr global i64 0, align 8
@"?sBfpFile_GetTempPath@Hook@Platform@System@bf@@2V?$function_outPath_inOutPathSize_outResult@XPEADPEAHPEAW4BfpFileResult@Platform@System@bf@@@4@A" = local_unnamed_addr global i64 0, align 8
@"?sBfpFile_GetTempFileName@Hook@Platform@System@bf@@2V?$function_outName_inOutNameSize_outResult@XPEADPEAHPEAW4BfpFileResult@Platform@System@bf@@@4@A" = local_unnamed_addr global i64 0, align 8
@"?sBfpFile_GetFullPath@Hook@Platform@System@bf@@2V?$function_inPath_outPath_inOutPathSize_outResult@XPEADPEADPEAHPEAW4BfpFileResult@Platform@System@bf@@@4@A" = local_unnamed_addr global i64 0, align 8
@"?sBfpFile_GetActualPath@Hook@Platform@System@bf@@2V?$function_inPath_outPath_inOutPathSize_outResult@XPEADPEADPEAHPEAW4BfpFileResult@Platform@System@bf@@@4@A" = local_unnamed_addr global i64 0, align 8
@"?sBfpFindFileData_FindFirstFile@Hook@Platform@System@bf@@2V?$function_path_flags_outResult@PEAUBfpFindFileData@Platform@System@bf@@PEADW4BfpFindFileFlags@123@PEAW4BfpFileResult@123@@4@A" = local_unnamed_addr global i64 0, align 8
@"?sBfpFindFileData_FindNextFile@Hook@Platform@System@bf@@2V?$function_findData@_NPEAUBfpFindFileData@Platform@System@bf@@@4@A" = local_unnamed_addr global i64 0, align 8
@"?sBfpFindFileData_GetFileName@Hook@Platform@System@bf@@2V?$function_findData_outName_inOutNameSize_outResult@XPEAUBfpFindFileData@Platform@System@bf@@PEADPEAHPEAW4BfpFileResult@123@@4@A" = local_unnamed_addr global i64 0, align 8
@"?sBfpFindFileData_GetTime_LastWrite@Hook@Platform@System@bf@@2V?$function_findData@VBfpTimeStamp@Platform@System@bf@@PEAUBfpFindFileData@123@@4@A" = local_unnamed_addr global i64 0, align 8
@"?sBfpFindFileData_GetTime_Created@Hook@Platform@System@bf@@2V?$function_findData@VBfpTimeStamp@Platform@System@bf@@PEAUBfpFindFileData@123@@4@A" = local_unnamed_addr global i64 0, align 8
@"?sBfpFindFileData_GetTime_Access@Hook@Platform@System@bf@@2V?$function_findData@VBfpTimeStamp@Platform@System@bf@@PEAUBfpFindFileData@123@@4@A" = local_unnamed_addr global i64 0, align 8
@"?sBfpFindFileData_GetFileAttributes@Hook@Platform@System@bf@@2V?$function_findData@W4BfpFileAttributes@Platform@System@bf@@PEAUBfpFindFileData@123@@4@A" = local_unnamed_addr global i64 0, align 8
@"?sBfpFindFileData_GetFileSize@Hook@Platform@System@bf@@2V?$function_findData@_JPEAUBfpFindFileData@Platform@System@bf@@@4@A" = local_unnamed_addr global i64 0, align 8
@"?sBfpFindFileData_Release@Hook@Platform@System@bf@@2V?$function_findData@XPEAUBfpFindFileData@Platform@System@bf@@@4@A" = local_unnamed_addr global i64 0, align 8

; Function Attrs: nounwind uwtable
define ptr @"?BfpFile_Create@Hook@Platform@System@bf@@SAPEA?AUBfpFile@234@PEADW4BfpFileCreateKind@234@W4BfpFileCreateFlags@234@W4BfpFileAttributes@234@PEAW4BfpFileResult@234@@Z"(ptr %name, i32 %createKind, i32 %createFlags, i32 %createdFileAttrs, ptr %outResult) local_unnamed_addr #0 {
entry:
  %0 = load i64, ptr @"?sBfpFile_Create@Hook@Platform@System@bf@@2V?$function_name_createKind_createFlags_createdFileAttrs_outResult@PEAUBfpFile@Platform@System@bf@@PEADW4BfpFileCreateKind@123@W4BfpFileCreateFlags@123@W4BfpFileAttributes@123@PEAW4BfpFileResult@123@@4@A", align 8
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = inttoptr i64 %0 to ptr
  %Invoke = tail call ptr %1(ptr %name, i32 %createKind, i32 %createFlags, i32 %createdFileAttrs, ptr %outResult) #1
  br label %exit

if.end:                                           ; preds = %entry
  %BfpFile_Create = tail call ptr @BfpFile_Create(ptr %name, i32 %createKind, i32 %createFlags, i32 %createdFileAttrs, ptr %outResult)
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %__return.0 = phi ptr [ %Invoke, %if.then ], [ %BfpFile_Create, %if.end ]
  ret ptr %__return.0
}

; Function Attrs: nounwind uwtable
define void @"?BfpFile_Release@Hook@Platform@System@bf@@SAXPEAUBfpFile@234@@Z"(ptr %file) local_unnamed_addr #0 {
entry:
  %0 = load i64, ptr @"?sBfpFile_Release@Hook@Platform@System@bf@@2V?$function_file@XPEAUBfpFile@Platform@System@bf@@@4@A", align 8
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = inttoptr i64 %0 to ptr
  tail call void %1(ptr %file) #1
  br label %exit

if.end:                                           ; preds = %entry
  tail call void @BfpFile_Release(ptr %file)
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @"?BfpFile_Write@Hook@Platform@System@bf@@SATint@@PEAUBfpFile@234@PEAXTint@@2PEAW4BfpFileResult@234@@Z"(ptr %file, ptr %buffer, i64 %size, i64 %timeoutMS, ptr %outResult) local_unnamed_addr #0 {
entry:
  %0 = load i64, ptr @"?sBfpFile_Write@Hook@Platform@System@bf@@2V?$function_file_buffer_size_timeoutMS_outResult@Tint@@PEAUBfpFile@Platform@System@bf@@PEAXTint@@Tint@@PEAW4BfpFileResult@123@@4@A", align 8
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = inttoptr i64 %0 to ptr
  %Invoke = tail call i64 %1(ptr %file, ptr %buffer, i64 %size, i64 %timeoutMS, ptr %outResult) #1
  br label %exit

if.end:                                           ; preds = %entry
  %BfpFile_Write = tail call i64 @BfpFile_Write(ptr %file, ptr %buffer, i64 %size, i64 %timeoutMS, ptr %outResult)
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %__return.0 = phi i64 [ %Invoke, %if.then ], [ %BfpFile_Write, %if.end ]
  ret i64 %__return.0
}

; Function Attrs: nounwind uwtable
define void @"?BfpFile_Flush@Hook@Platform@System@bf@@SAXPEAUBfpFile@234@@Z"(ptr %file) local_unnamed_addr #0 {
entry:
  %0 = load i64, ptr @"?sBfpFile_Flush@Hook@Platform@System@bf@@2V?$function_file@XPEAUBfpFile@Platform@System@bf@@@4@A", align 8
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = inttoptr i64 %0 to ptr
  tail call void %1(ptr %file) #1
  br label %exit

if.end:                                           ; preds = %entry
  tail call void @BfpFile_Flush(ptr %file)
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @"?BfpFile_GetFileSize@Hook@Platform@System@bf@@SA_JPEAUBfpFile@234@@Z"(ptr %file) local_unnamed_addr #0 {
entry:
  %0 = load i64, ptr @"?sBfpFile_GetFileSize@Hook@Platform@System@bf@@2V?$function_file@_JPEAUBfpFile@Platform@System@bf@@@4@A", align 8
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = inttoptr i64 %0 to ptr
  %Invoke = tail call i64 %1(ptr %file) #1
  br label %exit

if.end:                                           ; preds = %entry
  %BfpFile_GetFileSize = tail call i64 @BfpFile_GetFileSize(ptr %file)
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %__return.0 = phi i64 [ %Invoke, %if.then ], [ %BfpFile_GetFileSize, %if.end ]
  ret i64 %__return.0
}

; Function Attrs: nounwind uwtable
define i64 @"?BfpFile_Seek@Hook@Platform@System@bf@@SA_JPEAUBfpFile@234@_JW4BfpFileSeekKind@234@@Z"(ptr %file, i64 %offset, i32 %seekKind) local_unnamed_addr #0 {
entry:
  %0 = load i64, ptr @"?sBfpFile_Seek@Hook@Platform@System@bf@@2V?$function_file_offset_seekKind@_JPEAUBfpFile@Platform@System@bf@@_JW4BfpFileSeekKind@123@@4@A", align 8
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = inttoptr i64 %0 to ptr
  %Invoke = tail call i64 %1(ptr %file, i64 %offset, i32 %seekKind) #1
  br label %exit

if.end:                                           ; preds = %entry
  %BfpFile_Seek = tail call i64 @BfpFile_Seek(ptr %file, i64 %offset, i32 %seekKind)
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %__return.0 = phi i64 [ %Invoke, %if.then ], [ %BfpFile_Seek, %if.end ]
  ret i64 %__return.0
}

; Function Attrs: nounwind uwtable
declare void @BfpFile_Release(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare ptr @BfpFile_Create(ptr, i32, i32, i32, ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @BfpFile_Flush(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare i64 @BfpFile_GetFileSize(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare i64 @BfpFile_Write(ptr, ptr, i64, i64, ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare i64 @BfpFile_Seek(ptr, i64, i32) local_unnamed_addr #0

attributes #0 = { nounwind uwtable }
attributes #1 = { nounwind }
