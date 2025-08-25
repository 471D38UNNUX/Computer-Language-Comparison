; ModuleID = 'System_Internal'
source_filename = "System_Internal"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

@"?sModuleHandle@Internal@System@bf@@2PEAXA" = global ptr null, align 8
@"?LibraryLoadCallback@Runtime@System@bf@@2V?$function_filePath@PEAXPEAD@3@A" = external global i64
@"?sExtraFlags@Runtime@System@bf@@2W4RtFlags@123@A" = external global i32
@didStaticInit = internal global i1 false

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #0

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i8.i64(ptr nocapture writeonly, i8, i8, i1 immarg) #1

declare ptr @tc_malloc(i64)

declare void @tc_free(ptr)

; Function Attrs: nounwind uwtable
declare ptr @malloc(i64) #2

; Function Attrs: nounwind uwtable
declare void @free(ptr) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: nounwind uwtable
declare void @"?Test_Init@Internal@System@bf@@CAXPEAD@Z"(ptr) #2

; Function Attrs: nounwind uwtable
declare void @"?Test_Error@Internal@System@bf@@CAXPEAD@Z"(ptr) #2

; Function Attrs: nounwind uwtable
declare void @"?Test_Write@Internal@System@bf@@CAXPEAD@Z"(ptr) #2

; Function Attrs: nounwind uwtable
declare i32 @"?Test_Query@Internal@System@bf@@CAHXZ"() #2

; Function Attrs: nounwind uwtable
declare void @"?Test_Finish@Internal@System@bf@@CAXXZ"() #2

; Function Attrs: nounwind uwtable
define void @"?SetModuleHandle@Internal@System@bf@@CAXPEAX@Z"(ptr %handle) #2 {
entry:
  store ptr %handle, ptr @"?sModuleHandle@Internal@System@bf@@2PEAXA", align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: noreturn nounwind uwtable
declare void @"?ThrowIndexOutOfRange@Internal@System@bf@@SAX_J@Z"(i64) #4

; Function Attrs: noreturn nounwind uwtable
declare void @"?ThrowObjectNotInitialized@Internal@System@bf@@SAX_J@Z"(i64) #4

; Function Attrs: noreturn nounwind uwtable
declare void @"?FatalError@Internal@System@bf@@SAXPEAVString@23@_J@Z"(ptr, i64) #4

; Function Attrs: nounwind uwtable
declare ptr @"?VirtualAlloc@Internal@System@bf@@SAPEAX_J_N1@Z"(i64, i1 zeroext, i1 zeroext) #2

; Function Attrs: nounwind uwtable
declare i32 @"?CStrLen@Internal@System@bf@@SAHPEAD@Z"(ptr) #2

; Function Attrs: nounwind uwtable
declare i64 @"?GetTickCountMicro@Internal@System@bf@@SA_JXZ"() #2

; Function Attrs: nounwind uwtable
declare void @"?BfDelegateTargetCheck@Internal@System@bf@@SAXPEAX@Z"(ptr) #2

; Function Attrs: nounwind uwtable
declare ptr @"?LoadSharedLibrary@Internal@System@bf@@SAPEAXPEAD@Z"(ptr) #2

; Function Attrs: nounwind uwtable
define void @Beef_LoadSharedLibraryInto(ptr %filePath, ptr %libDest) #2 {
entry:
  %0 = load ptr, ptr %libDest, align 8
  %1 = icmp eq ptr %0, null
  br i1 %1, label %if.then, label %if.end2

if.then:                                          ; preds = %entry
  %2 = load i64, ptr @"?LibraryLoadCallback@Runtime@System@bf@@2V?$function_filePath@PEAXPEAD@3@A", align 8
  %3 = icmp ne i64 0, %2
  br i1 %3, label %if.then1, label %if.end

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr @"?LibraryLoadCallback@Runtime@System@bf@@2V?$function_filePath@PEAXPEAD@3@A", align 8
  %5 = inttoptr i64 %4 to ptr
  %Invoke = call ptr %5(ptr %filePath)
  store ptr %Invoke, ptr %libDest, align 8
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end2

if.end2:                                          ; preds = %if.end, %entry
  %6 = load ptr, ptr %libDest, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end2
  %LoadSharedLibrary = call ptr @"?LoadSharedLibrary@Internal@System@bf@@SAPEAXPEAD@Z"(ptr %filePath)
  store ptr %LoadSharedLibrary, ptr %libDest, align 8
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end2
  br label %exit

exit:                                             ; preds = %if.end4
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?GetSharedProcAddress@Internal@System@bf@@SAPEAXPEAXPEAD@Z"(ptr, ptr) #2

; Function Attrs: nounwind uwtable
declare void @"?GetSharedProcAddressInto@Internal@System@bf@@SAXPEAXPEADPEAPEAX@Z"(ptr, ptr, ptr) #2

; Function Attrs: nounwind uwtable
declare ptr @"?GetCommandLineArgs@Internal@System@bf@@SAPEADXZ"() #2

; Function Attrs: nounwind uwtable
declare void @"?ProfilerCmd@Internal@System@bf@@SAXPEAD@Z"(ptr) #2

; Function Attrs: nounwind uwtable
declare void @"?ReportMemory@Internal@System@bf@@SAXXZ"() #2

; Function Attrs: nounwind uwtable
declare void @"?ObjectDynCheck@Internal@System@bf@@SAXPEAVObject@23@H_N@Z"(ptr, i32, i1 zeroext) #2

; Function Attrs: nounwind uwtable
declare void @"?ObjectDynCheckFailed@Internal@System@bf@@SAXPEAVObject@23@H@Z"(ptr, i32) #2

; Function Attrs: nounwind uwtable
declare void @"?Dbg_ObjectCreated@Internal@System@bf@@SAXPEAVObject@23@_JPEAUClassVData@23@@Z"(ptr, i64, ptr) #2

; Function Attrs: nounwind uwtable
declare void @"?Dbg_ObjectCreatedEx@Internal@System@bf@@SAXPEAVObject@23@_JPEAUClassVData@23@@Z"(ptr, i64, ptr) #2

; Function Attrs: nounwind uwtable
declare void @"?Dbg_ObjectAllocated@Internal@System@bf@@SAXPEAVObject@23@_JPEAUClassVData@23@@Z"(ptr, i64, ptr) #2

; Function Attrs: nounwind uwtable
declare void @"?Dbg_ObjectAllocatedEx@Internal@System@bf@@SAXPEAVObject@23@_JPEAUClassVData@23@@Z"(ptr, i64, ptr) #2

; Function Attrs: nounwind uwtable
declare i64 @"?Dbg_PrepareStackTrace@Internal@System@bf@@SA_J_J0@Z"(i64, i64) #2

; Function Attrs: nounwind uwtable
declare void @"?Dbg_ObjectStackInit@Internal@System@bf@@SAXPEAVObject@23@PEAUClassVData@23@_JE@Z"(ptr, ptr, i64, i8) #2

; Function Attrs: nounwind uwtable
declare ptr @"?Dbg_ObjectAlloc@Internal@System@bf@@SAPEAVObject@23@PEAVTypeInstance@Reflection@23@_J@Z"(ptr, i64) #2

; Function Attrs: nounwind uwtable
declare ptr @"?Dbg_ObjectAlloc@Internal@System@bf@@SAPEAVObject@23@PEAUClassVData@23@_J11E@Z"(ptr, i64, i64, i64, i8) #2

; Function Attrs: nounwind uwtable
declare void @"?Dbg_ObjectPreDelete@Internal@System@bf@@SAXPEAVObject@23@@Z"(ptr) #2

; Function Attrs: nounwind uwtable
declare void @"?Dbg_ObjectPreCustomDelete@Internal@System@bf@@SAXPEAVObject@23@@Z"(ptr) #2

; Function Attrs: nounwind uwtable
declare void @"?Dbg_MarkObjectDeleted@Internal@System@bf@@SAXPEAVObject@23@@Z"(ptr) #2

; Function Attrs: nounwind uwtable
declare ptr @"?Dbg_RawAlloc@Internal@System@bf@@SAPEAX_J@Z"(i64) #2

; Function Attrs: nounwind uwtable
declare ptr @"?Dbg_RawObjectAlloc@Internal@System@bf@@SAPEAX_J@Z"(i64) #2

; Function Attrs: nounwind uwtable
declare ptr @"?Dbg_RawAlloc@Internal@System@bf@@SAPEAX_JPEAUDbgRawAllocData@23@@Z"(i64, ptr) #2

; Function Attrs: nounwind uwtable
declare void @"?Dbg_RawFree@Internal@System@bf@@SAXPEAX@Z"(ptr) #2

; Function Attrs: nounwind uwtable
declare void @"?Dbg_ObjectAppended@Internal@System@bf@@SAXPEAVObject@23@0@Z"(ptr, ptr) #2

; Function Attrs: nounwind uwtable
declare void @"?Dbg_RawAppended@Internal@System@bf@@SAXPEAVObject@23@PEAXPEAUDbgRawAllocData@23@@Z"(ptr, ptr, ptr) #2

; Function Attrs: nounwind uwtable
declare void @"?Dbg_MarkAppended@Internal@System@bf@@SAXPEAVObject@23@@Z"(ptr) #2

; Function Attrs: nounwind uwtable
declare void @"?Dbg_AppendDeleted@Internal@System@bf@@SAXPEAVObject@23@_N@Z"(ptr, i1 zeroext) #2

; Function Attrs: nounwind uwtable
declare void @"?Shutdown_Internal@Internal@System@bf@@CAXXZ"() #2

; Function Attrs: nounwind uwtable
define void @"?Shutdown@Internal@System@bf@@CAXXZ"() #2 {
entry:
  call void @"?Shutdown_Internal@Internal@System@bf@@CAXXZ"()
  call void @"?Shutdown@Runtime@System@bf@@SAXXZ"()
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?AddRtFlags@Internal@System@bf@@CAXH@Z"(i32 %flags) #2 {
entry:
  %0 = load i32, ptr @"?sExtraFlags@Runtime@System@bf@@2W4RtFlags@123@A", align 4
  %1 = or i32 %0, %flags
  store i32 %1, ptr @"?sExtraFlags@Runtime@System@bf@@2W4RtFlags@123@A", align 4
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?ObjectAlloc@Internal@System@bf@@SAPEAVObject@23@PEAVTypeInstance@Reflection@23@Tint@@@Z"(ptr, i64) #2

; Function Attrs: nounwind uwtable
declare void @"?SetDeleted1@Internal@System@bf@@CAXPEAX@Z"(ptr) #2

; Function Attrs: nounwind uwtable
declare void @"?SetDeleted4@Internal@System@bf@@CAXPEAX@Z"(ptr) #2

; Function Attrs: nounwind uwtable
declare void @"?SetDeleted8@Internal@System@bf@@CAXPEAX@Z"(ptr) #2

; Function Attrs: nounwind uwtable
declare void @"?SetDeleted16@Internal@System@bf@@CAXPEAX@Z"(ptr) #2

; Function Attrs: nounwind uwtable
declare void @"?SetDeletedX@Internal@System@bf@@CAXPEAXTint@@@Z"(ptr, i64) #2

; Function Attrs: nounwind uwtable
declare void @"?SetDeleted@Internal@System@bf@@CAXPEAXTint@@H@Z"(ptr, i64, i32) #2

; Function Attrs: nounwind uwtable
declare void @"?SetDeletedArray@Internal@System@bf@@CAXPEAXTint@@H1@Z"(ptr, i64, i32, i64) #2

; Function Attrs: nounwind uwtable
declare i64 @"?MemCmp@Internal@System@bf@@SATint@@PEAX0Tint@@@Z"(ptr, ptr, i64) #2

; Function Attrs: alwaysinline nounwind uwtable
declare i64 @"??$GetArraySize@U_M0@@@Internal@System@bf@@SATint@@Tint@@@Z"(i64) #5

; Function Attrs: nounwind uwtable
declare ptr @"?CreateParamsArray@Internal@System@bf@@SAPEAV?$Array1@PEAVString@System@bf@@@23@XZ"() #2

; Function Attrs: nounwind uwtable
declare void @"?DeleteStringArray@Internal@System@bf@@SAXPEAV?$Array1@PEAVString@System@bf@@@23@@Z"(ptr) #2

; Function Attrs: nounwind uwtable
declare void @"?__BfStaticCtor@Internal@System@bf@@CAXXZ"() #2

; Function Attrs: nounwind uwtable
declare void @"?__BfStaticDtor@Internal@System@bf@@CAXXZ"() #2

; Function Attrs: nounwind uwtable
declare void @"?GCMarkStaticMembers@Internal@System@bf@@KAXXZ"() #2

; Function Attrs: nounwind uwtable
declare void @"?Shutdown@Runtime@System@bf@@SAXXZ"() #2

; Function Attrs: nounwind uwtable
declare ptr @"??$AllocRawArrayUnmarked@U_M0@@@Internal@System@bf@@SAPEAU_M0@@Tint@@@Z"(i64) #2

attributes #0 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind uwtable }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { noreturn nounwind uwtable }
attributes #5 = { alwaysinline nounwind uwtable }
