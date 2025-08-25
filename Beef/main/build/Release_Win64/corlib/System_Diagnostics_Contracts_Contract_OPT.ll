; ModuleID = 'System_Diagnostics_Contracts_Contract'
source_filename = "System_Diagnostics_Contracts_Contract"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: nounwind uwtable
declare void @"?ReportFailure@Contract@Contracts@Diagnostics@System@bf@@CAXW4ContractFailureKind@12345@PEADH1H@Z"(i8, ptr, i32, ptr, i32) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define void @"?Requires@Contract@Contracts@Diagnostics@System@bf@@SAX_N@Z"(i1 zeroext %condition) local_unnamed_addr #0 {
entry:
  br i1 %condition, label %exit, label %if.then

if.then:                                          ; preds = %entry
  tail call void @"?ReportFailure@Contract@Contracts@Diagnostics@System@bf@@CAXW4ContractFailureKind@12345@PEADH1H@Z"(i8 4, ptr null, i32 0, ptr null, i32 0)
  br label %exit

exit:                                             ; preds = %entry, %if.then
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @"?EndContractBlock@Contract@Contracts@Diagnostics@System@bf@@SAXXZ"() local_unnamed_addr #1 {
entry:
  ret void
}

attributes #0 = { nounwind uwtable }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
