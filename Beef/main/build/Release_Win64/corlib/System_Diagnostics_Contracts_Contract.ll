; ModuleID = 'System_Diagnostics_Contracts_Contract'
source_filename = "System_Diagnostics_Contracts_Contract"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

; Function Attrs: nounwind uwtable
declare void @"?ReportFailure@Contract@Contracts@Diagnostics@System@bf@@CAXW4ContractFailureKind@12345@PEADH1H@Z"(i8, ptr, i32, ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?AssertMustUseRewriter@Contract@Contracts@Diagnostics@System@bf@@CAXW4ContractFailureKind@12345@PEAVString@45@@Z"(i8, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?Assume@Contract@Contracts@Diagnostics@System@bf@@SAX_NUStringView@45@@Z"(i1 zeroext, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Assert@Contract@Contracts@Diagnostics@System@bf@@SAX_N@Z"(i1 zeroext) #0

; Function Attrs: nounwind uwtable
declare void @"?Assert@Contract@Contracts@Diagnostics@System@bf@@SAX_NPEAVString@45@@Z"(i1 zeroext, ptr) #0

; Function Attrs: nounwind uwtable
define void @"?Requires@Contract@Contracts@Diagnostics@System@bf@@SAX_N@Z"(i1 zeroext %condition) #0 {
entry:
  %0 = xor i1 %condition, true
  br i1 %0, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @"?ReportFailure@Contract@Contracts@Diagnostics@System@bf@@CAXW4ContractFailureKind@12345@PEADH1H@Z"(i8 4, ptr null, i32 0, ptr null, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %exit

exit:                                             ; preds = %if.end
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?Requires@Contract@Contracts@Diagnostics@System@bf@@SAX_NUStringView@45@@Z"(i1 zeroext, ptr, i64) #0

; Function Attrs: nounwind uwtable
define void @"?EndContractBlock@Contract@Contracts@Diagnostics@System@bf@@SAXXZ"() #0 {
entry:
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

attributes #0 = { nounwind uwtable }
