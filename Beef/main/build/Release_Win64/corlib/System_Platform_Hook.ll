; ModuleID = 'System_Platform_Hook'
source_filename = "System_Platform_Hook"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

@"?sBfpFile_Create@Hook@Platform@System@bf@@2V?$function_name_createKind_createFlags_createdFileAttrs_outResult@PEAUBfpFile@Platform@System@bf@@PEADW4BfpFileCreateKind@123@W4BfpFileCreateFlags@123@W4BfpFileAttributes@123@PEAW4BfpFileResult@123@@4@A" = global i64 0, align 8
@"?sBfpFile_GetStd@Hook@Platform@System@bf@@2V?$function_kind_outResult@PEAUBfpFile@Platform@System@bf@@W4BfpFileStdKind@123@PEAW4BfpFileResult@123@@4@A" = global i64 0, align 8
@"?sBfpFile_GetSystemHandle@Hook@Platform@System@bf@@2V?$function_file@Tint@@PEAUBfpFile@Platform@System@bf@@@4@A" = global i64 0, align 8
@"?sBfpFile_Release@Hook@Platform@System@bf@@2V?$function_file@XPEAUBfpFile@Platform@System@bf@@@4@A" = global i64 0, align 8
@"?sBfpFile_Write@Hook@Platform@System@bf@@2V?$function_file_buffer_size_timeoutMS_outResult@Tint@@PEAUBfpFile@Platform@System@bf@@PEAXTint@@Tint@@PEAW4BfpFileResult@123@@4@A" = global i64 0, align 8
@"?sBfpFile_Read@Hook@Platform@System@bf@@2V?$function_file_buffer_size_timeoutMS_outResult@Tint@@PEAUBfpFile@Platform@System@bf@@PEAXTint@@Tint@@PEAW4BfpFileResult@123@@4@A" = global i64 0, align 8
@"?sBfpFile_Flush@Hook@Platform@System@bf@@2V?$function_file@XPEAUBfpFile@Platform@System@bf@@@4@A" = global i64 0, align 8
@"?sBfpFile_GetFileSize@Hook@Platform@System@bf@@2V?$function_file@_JPEAUBfpFile@Platform@System@bf@@@4@A" = global i64 0, align 8
@"?sBfpFile_Seek@Hook@Platform@System@bf@@2V?$function_file_offset_seekKind@_JPEAUBfpFile@Platform@System@bf@@_JW4BfpFileSeekKind@123@@4@A" = global i64 0, align 8
@"?sBfpFile_Truncate@Hook@Platform@System@bf@@2V?$function_file_outResult@XPEAUBfpFile@Platform@System@bf@@PEAW4BfpFileResult@123@@4@A" = global i64 0, align 8
@"?sBfpFile_GetTime_LastWrite@Hook@Platform@System@bf@@2V?$function_path@VBfpTimeStamp@Platform@System@bf@@PEAD@4@A" = global i64 0, align 8
@"?sBfpFile_GetAttributes@Hook@Platform@System@bf@@2V?$function_path_outResult@W4BfpFileAttributes@Platform@System@bf@@PEADPEAW4BfpFileResult@123@@4@A" = global i64 0, align 8
@"?sBfpFile_SetAttributes@Hook@Platform@System@bf@@2V?$function_path_attribs_outResult@XPEADW4BfpFileAttributes@Platform@System@bf@@PEAW4BfpFileResult@123@@4@A" = global i64 0, align 8
@"?sBfpFile_Copy@Hook@Platform@System@bf@@2V?$function_oldPath_newPath_copyKind_outResult@XPEADPEADW4BfpFileCopyKind@Platform@System@bf@@PEAW4BfpFileResult@123@@4@A" = global i64 0, align 8
@"?sBfpFile_Rename@Hook@Platform@System@bf@@2V?$function_oldPath_newPath_outResult@XPEADPEADPEAW4BfpFileResult@Platform@System@bf@@@4@A" = global i64 0, align 8
@"?sBfpFile_Delete@Hook@Platform@System@bf@@2V?$function_path_outResult@XPEADPEAW4BfpFileResult@Platform@System@bf@@@4@A" = global i64 0, align 8
@"?sBfpFile_Exists@Hook@Platform@System@bf@@2V?$function_path@_NPEAD@4@A" = global i64 0, align 8
@"?sBfpFile_GetTempPath@Hook@Platform@System@bf@@2V?$function_outPath_inOutPathSize_outResult@XPEADPEAHPEAW4BfpFileResult@Platform@System@bf@@@4@A" = global i64 0, align 8
@"?sBfpFile_GetTempFileName@Hook@Platform@System@bf@@2V?$function_outName_inOutNameSize_outResult@XPEADPEAHPEAW4BfpFileResult@Platform@System@bf@@@4@A" = global i64 0, align 8
@"?sBfpFile_GetFullPath@Hook@Platform@System@bf@@2V?$function_inPath_outPath_inOutPathSize_outResult@XPEADPEADPEAHPEAW4BfpFileResult@Platform@System@bf@@@4@A" = global i64 0, align 8
@"?sBfpFile_GetActualPath@Hook@Platform@System@bf@@2V?$function_inPath_outPath_inOutPathSize_outResult@XPEADPEADPEAHPEAW4BfpFileResult@Platform@System@bf@@@4@A" = global i64 0, align 8
@"?sBfpFindFileData_FindFirstFile@Hook@Platform@System@bf@@2V?$function_path_flags_outResult@PEAUBfpFindFileData@Platform@System@bf@@PEADW4BfpFindFileFlags@123@PEAW4BfpFileResult@123@@4@A" = global i64 0, align 8
@"?sBfpFindFileData_FindNextFile@Hook@Platform@System@bf@@2V?$function_findData@_NPEAUBfpFindFileData@Platform@System@bf@@@4@A" = global i64 0, align 8
@"?sBfpFindFileData_GetFileName@Hook@Platform@System@bf@@2V?$function_findData_outName_inOutNameSize_outResult@XPEAUBfpFindFileData@Platform@System@bf@@PEADPEAHPEAW4BfpFileResult@123@@4@A" = global i64 0, align 8
@"?sBfpFindFileData_GetTime_LastWrite@Hook@Platform@System@bf@@2V?$function_findData@VBfpTimeStamp@Platform@System@bf@@PEAUBfpFindFileData@123@@4@A" = global i64 0, align 8
@"?sBfpFindFileData_GetTime_Created@Hook@Platform@System@bf@@2V?$function_findData@VBfpTimeStamp@Platform@System@bf@@PEAUBfpFindFileData@123@@4@A" = global i64 0, align 8
@"?sBfpFindFileData_GetTime_Access@Hook@Platform@System@bf@@2V?$function_findData@VBfpTimeStamp@Platform@System@bf@@PEAUBfpFindFileData@123@@4@A" = global i64 0, align 8
@"?sBfpFindFileData_GetFileAttributes@Hook@Platform@System@bf@@2V?$function_findData@W4BfpFileAttributes@Platform@System@bf@@PEAUBfpFindFileData@123@@4@A" = global i64 0, align 8
@"?sBfpFindFileData_GetFileSize@Hook@Platform@System@bf@@2V?$function_findData@_JPEAUBfpFindFileData@Platform@System@bf@@@4@A" = global i64 0, align 8
@"?sBfpFindFileData_Release@Hook@Platform@System@bf@@2V?$function_findData@XPEAUBfpFindFileData@Platform@System@bf@@@4@A" = global i64 0, align 8

; Function Attrs: nounwind uwtable
define ptr @"?BfpFile_Create@Hook@Platform@System@bf@@SAPEA?AUBfpFile@234@PEADW4BfpFileCreateKind@234@W4BfpFileCreateFlags@234@W4BfpFileAttributes@234@PEAW4BfpFileResult@234@@Z"(ptr %name, i32 %createKind, i32 %createFlags, i32 %createdFileAttrs, ptr %outResult) #0 {
entry:
  %__return = alloca ptr, align 8
  %0 = load i64, ptr @"?sBfpFile_Create@Hook@Platform@System@bf@@2V?$function_name_createKind_createFlags_createdFileAttrs_outResult@PEAUBfpFile@Platform@System@bf@@PEADW4BfpFileCreateKind@123@W4BfpFileCreateFlags@123@W4BfpFileAttributes@123@PEAW4BfpFileResult@123@@4@A", align 8
  %1 = icmp ne i64 0, %0
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr @"?sBfpFile_Create@Hook@Platform@System@bf@@2V?$function_name_createKind_createFlags_createdFileAttrs_outResult@PEAUBfpFile@Platform@System@bf@@PEADW4BfpFileCreateKind@123@W4BfpFileCreateFlags@123@W4BfpFileAttributes@123@PEAW4BfpFileResult@123@@4@A", align 8
  %3 = inttoptr i64 %2 to ptr
  %Invoke = call ptr %3(ptr %name, i32 %createKind, i32 %createFlags, i32 %createdFileAttrs, ptr %outResult)
  store ptr %Invoke, ptr %__return, align 8
  br label %exit

if.end:                                           ; preds = %entry
  %BfpFile_Create = call ptr @BfpFile_Create(ptr %name, i32 %createKind, i32 %createFlags, i32 %createdFileAttrs, ptr %outResult)
  store ptr %BfpFile_Create, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %4 = load ptr, ptr %__return, align 8
  ret ptr %4
}

; Function Attrs: nounwind uwtable
declare ptr @"?BfpFile_GetStd@Hook@Platform@System@bf@@SAPEA?AUBfpFile@234@W4BfpFileStdKind@234@PEAW4BfpFileResult@234@@Z"(i32, ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?BfpFile_GetSystemHandle@Hook@Platform@System@bf@@SATint@@PEAUBfpFile@234@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?BfpFile_Release@Hook@Platform@System@bf@@SAXPEAUBfpFile@234@@Z"(ptr %file) #0 {
entry:
  %0 = load i64, ptr @"?sBfpFile_Release@Hook@Platform@System@bf@@2V?$function_file@XPEAUBfpFile@Platform@System@bf@@@4@A", align 8
  %1 = icmp ne i64 0, %0
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr @"?sBfpFile_Release@Hook@Platform@System@bf@@2V?$function_file@XPEAUBfpFile@Platform@System@bf@@@4@A", align 8
  %3 = inttoptr i64 %2 to ptr
  call void %3(ptr %file)
  br label %exit

if.end:                                           ; preds = %entry
  call void @BfpFile_Release(ptr %file)
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @"?BfpFile_Write@Hook@Platform@System@bf@@SATint@@PEAUBfpFile@234@PEAXTint@@2PEAW4BfpFileResult@234@@Z"(ptr %file, ptr %buffer, i64 %size, i64 %timeoutMS, ptr %outResult) #0 {
entry:
  %__return = alloca i64, align 8
  %0 = load i64, ptr @"?sBfpFile_Write@Hook@Platform@System@bf@@2V?$function_file_buffer_size_timeoutMS_outResult@Tint@@PEAUBfpFile@Platform@System@bf@@PEAXTint@@Tint@@PEAW4BfpFileResult@123@@4@A", align 8
  %1 = icmp ne i64 0, %0
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr @"?sBfpFile_Write@Hook@Platform@System@bf@@2V?$function_file_buffer_size_timeoutMS_outResult@Tint@@PEAUBfpFile@Platform@System@bf@@PEAXTint@@Tint@@PEAW4BfpFileResult@123@@4@A", align 8
  %3 = inttoptr i64 %2 to ptr
  %Invoke = call i64 %3(ptr %file, ptr %buffer, i64 %size, i64 %timeoutMS, ptr %outResult)
  store i64 %Invoke, ptr %__return, align 8
  br label %exit

if.end:                                           ; preds = %entry
  %BfpFile_Write = call i64 @BfpFile_Write(ptr %file, ptr %buffer, i64 %size, i64 %timeoutMS, ptr %outResult)
  store i64 %BfpFile_Write, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %4 = load i64, ptr %__return, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
declare i64 @"?BfpFile_Read@Hook@Platform@System@bf@@SATint@@PEAUBfpFile@234@PEAXTint@@2PEAW4BfpFileResult@234@@Z"(ptr, ptr, i64, i64, ptr) #0

; Function Attrs: nounwind uwtable
define void @"?BfpFile_Flush@Hook@Platform@System@bf@@SAXPEAUBfpFile@234@@Z"(ptr %file) #0 {
entry:
  %0 = load i64, ptr @"?sBfpFile_Flush@Hook@Platform@System@bf@@2V?$function_file@XPEAUBfpFile@Platform@System@bf@@@4@A", align 8
  %1 = icmp ne i64 0, %0
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr @"?sBfpFile_Flush@Hook@Platform@System@bf@@2V?$function_file@XPEAUBfpFile@Platform@System@bf@@@4@A", align 8
  %3 = inttoptr i64 %2 to ptr
  call void %3(ptr %file)
  br label %exit

if.end:                                           ; preds = %entry
  call void @BfpFile_Flush(ptr %file)
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @"?BfpFile_GetFileSize@Hook@Platform@System@bf@@SA_JPEAUBfpFile@234@@Z"(ptr %file) #0 {
entry:
  %__return = alloca i64, align 8
  %0 = load i64, ptr @"?sBfpFile_GetFileSize@Hook@Platform@System@bf@@2V?$function_file@_JPEAUBfpFile@Platform@System@bf@@@4@A", align 8
  %1 = icmp ne i64 0, %0
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr @"?sBfpFile_GetFileSize@Hook@Platform@System@bf@@2V?$function_file@_JPEAUBfpFile@Platform@System@bf@@@4@A", align 8
  %3 = inttoptr i64 %2 to ptr
  %Invoke = call i64 %3(ptr %file)
  store i64 %Invoke, ptr %__return, align 8
  br label %exit

if.end:                                           ; preds = %entry
  %BfpFile_GetFileSize = call i64 @BfpFile_GetFileSize(ptr %file)
  store i64 %BfpFile_GetFileSize, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %4 = load i64, ptr %__return, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
define i64 @"?BfpFile_Seek@Hook@Platform@System@bf@@SA_JPEAUBfpFile@234@_JW4BfpFileSeekKind@234@@Z"(ptr %file, i64 %offset, i32 %seekKind) #0 {
entry:
  %__return = alloca i64, align 8
  %0 = load i64, ptr @"?sBfpFile_Seek@Hook@Platform@System@bf@@2V?$function_file_offset_seekKind@_JPEAUBfpFile@Platform@System@bf@@_JW4BfpFileSeekKind@123@@4@A", align 8
  %1 = icmp ne i64 0, %0
  br i1 %1, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i64, ptr @"?sBfpFile_Seek@Hook@Platform@System@bf@@2V?$function_file_offset_seekKind@_JPEAUBfpFile@Platform@System@bf@@_JW4BfpFileSeekKind@123@@4@A", align 8
  %3 = inttoptr i64 %2 to ptr
  %Invoke = call i64 %3(ptr %file, i64 %offset, i32 %seekKind)
  store i64 %Invoke, ptr %__return, align 8
  br label %exit

if.end:                                           ; preds = %entry
  %BfpFile_Seek = call i64 @BfpFile_Seek(ptr %file, i64 %offset, i32 %seekKind)
  store i64 %BfpFile_Seek, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %if.end, %if.then
  %4 = load i64, ptr %__return, align 8
  ret i64 %4
}

; Function Attrs: nounwind uwtable
declare void @"?BfpFile_Truncate@Hook@Platform@System@bf@@SAXPEAUBfpFile@234@PEAW4BfpFileResult@234@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?BfpFile_GetTime_LastWrite@Hook@Platform@System@bf@@SAVBfpTimeStamp@234@PEAD@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare i32 @"?BfpFile_GetAttributes@Hook@Platform@System@bf@@SA?AW4BfpFileAttributes@234@PEADPEAW4BfpFileResult@234@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?BfpFile_SetAttributes@Hook@Platform@System@bf@@SAXPEADW4BfpFileAttributes@234@PEAW4BfpFileResult@234@@Z"(ptr, i32, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?BfpFile_Copy@Hook@Platform@System@bf@@SAXPEAD0W4BfpFileCopyKind@234@PEAW4BfpFileResult@234@@Z"(ptr, ptr, i32, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?BfpFile_Rename@Hook@Platform@System@bf@@SAXPEAD0PEAW4BfpFileResult@234@@Z"(ptr, ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?BfpFile_Delete@Hook@Platform@System@bf@@SAXPEADPEAW4BfpFileResult@234@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?BfpFile_Exists@Hook@Platform@System@bf@@SA_NPEAD@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?BfpFile_GetTempPath@Hook@Platform@System@bf@@SAXPEADPEAHPEAW4BfpFileResult@234@@Z"(ptr, ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?BfpFile_GetTempFileName@Hook@Platform@System@bf@@SAXPEADPEAHPEAW4BfpFileResult@234@@Z"(ptr, ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?BfpFile_GetFullPath@Hook@Platform@System@bf@@SAXPEAD0PEAHPEAW4BfpFileResult@234@@Z"(ptr, ptr, ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?BfpFile_GetActualPath@Hook@Platform@System@bf@@SAXPEAD0PEAHPEAW4BfpFileResult@234@@Z"(ptr, ptr, ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?BfpFindFileData_FindFirstFile@Hook@Platform@System@bf@@SAPEA?AUBfpFindFileData@234@PEADW4BfpFindFileFlags@234@PEAW4BfpFileResult@234@@Z"(ptr, i32, ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?BfpFindFileData_FindNextFile@Hook@Platform@System@bf@@SA_NPEAUBfpFindFileData@234@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?BfpFindFileData_GetFileName@Hook@Platform@System@bf@@SAXPEAUBfpFindFileData@234@PEADPEAHPEAW4BfpFileResult@234@@Z"(ptr, ptr, ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?BfpFindFileData_GetTime_LastWrite@Hook@Platform@System@bf@@SAVBfpTimeStamp@234@PEAUBfpFindFileData@234@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?BfpFindFileData_GetTime_Created@Hook@Platform@System@bf@@SAVBfpTimeStamp@234@PEAUBfpFindFileData@234@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?BfpFindFileData_GetTime_Access@Hook@Platform@System@bf@@SAVBfpTimeStamp@234@PEAUBfpFindFileData@234@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare i32 @"?BfpFindFileData_GetFileAttributes@Hook@Platform@System@bf@@SA?AW4BfpFileAttributes@234@PEAUBfpFindFileData@234@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?BfpFindFileData_GetFileSize@Hook@Platform@System@bf@@SA_JPEAUBfpFindFileData@234@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?BfpFindFileData_Release@Hook@Platform@System@bf@@SAXPEAUBfpFindFileData@234@@Z"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkStaticMembers@Hook@Platform@System@bf@@KAXXZ"() #0

; Function Attrs: nounwind uwtable
declare void @BfpFile_Release(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @BfpFile_Create(ptr, i32, i32, i32, ptr) #0

; Function Attrs: nounwind uwtable
declare void @BfpFile_Flush(ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @BfpFile_GetFileSize(ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @BfpFile_Write(ptr, ptr, i64, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @BfpFile_Seek(ptr, i64, i32) #0

attributes #0 = { nounwind uwtable }
