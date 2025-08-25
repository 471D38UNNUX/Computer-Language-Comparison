; ModuleID = 'System_Internal'
source_filename = "System_Internal"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

@"?sModuleHandle@Internal@System@bf@@2PEAXA" = local_unnamed_addr global ptr null, align 8
@"?LibraryLoadCallback@Runtime@System@bf@@2V?$function_filePath@PEAXPEAD@3@A" = external local_unnamed_addr global i64
@"?sExtraFlags@Runtime@System@bf@@2W4RtFlags@123@A" = external local_unnamed_addr global i32

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define void @"?SetModuleHandle@Internal@System@bf@@CAXPEAX@Z"(ptr %handle) local_unnamed_addr #0 {
entry:
  store ptr %handle, ptr @"?sModuleHandle@Internal@System@bf@@2PEAXA", align 8
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?LoadSharedLibrary@Internal@System@bf@@SAPEAXPEAD@Z"(ptr) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @Beef_LoadSharedLibraryInto(ptr %filePath, ptr nocapture %libDest) local_unnamed_addr #1 {
entry:
  %0 = load ptr, ptr %libDest, align 8
  %1 = icmp eq ptr %0, null
  %2 = load i64, ptr @"?LibraryLoadCallback@Runtime@System@bf@@2V?$function_filePath@PEAXPEAD@3@A", align 8
  %3 = icmp ne i64 %2, 0
  %or.cond = select i1 %1, i1 %3, i1 false
  br i1 %or.cond, label %if.then1, label %if.end2

if.then1:                                         ; preds = %entry
  %4 = inttoptr i64 %2 to ptr
  %Invoke = tail call ptr %4(ptr %filePath) #3
  store ptr %Invoke, ptr %libDest, align 8
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %entry
  %5 = phi ptr [ %Invoke, %if.then1 ], [ %0, %entry ]
  %6 = icmp eq ptr %5, null
  br i1 %6, label %if.then3, label %exit

if.then3:                                         ; preds = %if.end2
  %LoadSharedLibrary = tail call ptr @"?LoadSharedLibrary@Internal@System@bf@@SAPEAXPEAD@Z"(ptr %filePath)
  store ptr %LoadSharedLibrary, ptr %libDest, align 8
  br label %exit

exit:                                             ; preds = %if.end2, %if.then3
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?Shutdown_Internal@Internal@System@bf@@CAXXZ"() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @"?Shutdown@Internal@System@bf@@CAXXZ"() local_unnamed_addr #1 {
entry:
  tail call void @"?Shutdown_Internal@Internal@System@bf@@CAXXZ"()
  tail call void @"?Shutdown@Runtime@System@bf@@SAXXZ"()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define void @"?AddRtFlags@Internal@System@bf@@CAXH@Z"(i32 %flags) local_unnamed_addr #2 {
entry:
  %0 = load i32, ptr @"?sExtraFlags@Runtime@System@bf@@2W4RtFlags@123@A", align 4
  %1 = or i32 %0, %flags
  store i32 %1, ptr @"?sExtraFlags@Runtime@System@bf@@2W4RtFlags@123@A", align 4
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?Shutdown@Runtime@System@bf@@SAXXZ"() local_unnamed_addr #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable }
attributes #1 = { nounwind uwtable }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable }
attributes #3 = { nounwind }
