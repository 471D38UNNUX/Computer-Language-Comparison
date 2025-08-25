; ModuleID = 'System_Text_Encoding'
source_filename = "System_Text_Encoding"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Result@Tint@@UEncodeError@Encoding@Text@System@bf@@@System@bf" = type opaque
%"corlib.?$Result@Tint@@UDecodeError@Encoding@Text@System@bf@@@System@bf" = type opaque

@"?sASCII@Encoding@Text@System@bf@@2PEAV1234@A" = global ptr null, align 8
@"?sUTF8@Encoding@Text@System@bf@@2PEAV1234@A" = global ptr null, align 8
@"?sUTF8WithBOM@Encoding@Text@System@bf@@2PEAV1234@A" = global ptr null, align 8
@"?sUTF16@Encoding@Text@System@bf@@2PEAV1234@A" = global ptr null, align 8
@"?sUTF16WithBOM@Encoding@Text@System@bf@@2PEAV1234@A" = global ptr null, align 8

; Function Attrs: nounwind uwtable
declare ptr @"?get__ASCII@Encoding@Text@System@bf@@SAPEAVASCIIEncoding@234@XZ"() #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__UTF8@Encoding@Text@System@bf@@SAPEAVUTF8Encoding@234@XZ"() #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__UTF8WithBOM@Encoding@Text@System@bf@@SAPEAVUTF8EncodingWithBOM@234@XZ"() #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__UTF16@Encoding@Text@System@bf@@SAPEAVUTF16Encoding@234@XZ"() #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__UTF16WithBOM@Encoding@Text@System@bf@@SAPEAVUTF16EncodingWithBOM@234@XZ"() #0

; Function Attrs: nounwind uwtable
declare i64 @"?GetCharUnitSize@Encoding@Text@System@bf@@UEAATint@@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?GetEncodedLength@Encoding@Text@System@bf@@UEAATint@@_U@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare i64 @"?Encode@Encoding@Text@System@bf@@UEAATint@@_UU?$Span@E@34@@Z"(ptr, i32, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?GetMaxCharCount@Encoding@Text@System@bf@@UEAATint@@Tint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i64 @"?GetEncodedSize@Encoding@Text@System@bf@@UEAATint@@UStringView@34@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Encode@Encoding@Text@System@bf@@UEAA?AU?$Result@Tint@@?AUEncodeError@Encoding@Text@System@bf@@@34@UStringView@34@U?$Span@E@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@UEncodeError@Encoding@Text@System@bf@@@System@bf"), ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare i64 @"?GetDecodedUTF8Size@Encoding@Text@System@bf@@UEAATint@@U?$Span@E@34@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?DecodeToUTF8@Encoding@Text@System@bf@@UEAA?AU?$Result@Tint@@?AUDecodeError@Encoding@Text@System@bf@@@34@U?$Span@E@34@UStringView@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@UDecodeError@Encoding@Text@System@bf@@@System@bf"), ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?DecodeToUTF8@Encoding@Text@System@bf@@UEAA?AU?$Result@Tint@@?AUDecodeError@Encoding@Text@System@bf@@@34@U?$Span@E@34@PEAVString@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@Tint@@UDecodeError@Encoding@Text@System@bf@@@System@bf"), ptr, i64, ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DetectEncoding@Encoding@Text@System@bf@@SAPEAV1234@U?$Span@E@34@AEAout$Tint@@@Z"(ptr, i64, ptr dereferenceable(8)) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@Encoding@Text@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?__BfStaticDtor@Encoding@Text@System@bf@@SAXXZ"() #0 {
entry:
  %0 = load ptr, ptr @"?sUTF16WithBOM@Encoding@Text@System@bf@@2PEAV1234@A", align 8
  %1 = icmp ne ptr %0, null
  br i1 %1, label %delete.body, label %delete.end

delete.body:                                      ; preds = %entry
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds ptr, ptr %2, i32 3
  %4 = load ptr, ptr %3, align 8
  call void %4(ptr %0)
  call void @tc_free(ptr %0)
  br label %delete.end

delete.end:                                       ; preds = %delete.body, %entry
  %5 = load ptr, ptr @"?sUTF16@Encoding@Text@System@bf@@2PEAV1234@A", align 8
  %6 = icmp ne ptr %5, null
  br i1 %6, label %delete.body1, label %delete.end2

delete.body1:                                     ; preds = %delete.end
  %7 = load ptr, ptr %5, align 8
  %8 = getelementptr inbounds ptr, ptr %7, i32 3
  %9 = load ptr, ptr %8, align 8
  call void %9(ptr %5)
  call void @tc_free(ptr %5)
  br label %delete.end2

delete.end2:                                      ; preds = %delete.body1, %delete.end
  %10 = load ptr, ptr @"?sUTF8WithBOM@Encoding@Text@System@bf@@2PEAV1234@A", align 8
  %11 = icmp ne ptr %10, null
  br i1 %11, label %delete.body3, label %delete.end4

delete.body3:                                     ; preds = %delete.end2
  %12 = load ptr, ptr %10, align 8
  %13 = getelementptr inbounds ptr, ptr %12, i32 3
  %14 = load ptr, ptr %13, align 8
  call void %14(ptr %10)
  call void @tc_free(ptr %10)
  br label %delete.end4

delete.end4:                                      ; preds = %delete.body3, %delete.end2
  %15 = load ptr, ptr @"?sUTF8@Encoding@Text@System@bf@@2PEAV1234@A", align 8
  %16 = icmp ne ptr %15, null
  br i1 %16, label %delete.body5, label %delete.end6

delete.body5:                                     ; preds = %delete.end4
  %17 = load ptr, ptr %15, align 8
  %18 = getelementptr inbounds ptr, ptr %17, i32 3
  %19 = load ptr, ptr %18, align 8
  call void %19(ptr %15)
  call void @tc_free(ptr %15)
  br label %delete.end6

delete.end6:                                      ; preds = %delete.body5, %delete.end4
  %20 = load ptr, ptr @"?sASCII@Encoding@Text@System@bf@@2PEAV1234@A", align 8
  %21 = icmp ne ptr %20, null
  br i1 %21, label %delete.body7, label %delete.end8

delete.body7:                                     ; preds = %delete.end6
  %22 = load ptr, ptr %20, align 8
  %23 = getelementptr inbounds ptr, ptr %22, i32 3
  %24 = load ptr, ptr %23, align 8
  call void %24(ptr %20)
  call void @tc_free(ptr %20)
  br label %delete.end8

delete.end8:                                      ; preds = %delete.body7, %delete.end6
  br label %exit

exit:                                             ; preds = %delete.end8
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@Encoding@Text@System@bf@@QEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkStaticMembers@Encoding@Text@System@bf@@KAXXZ"() #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@Encoding@Text@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@Encoding@Text@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

declare void @tc_free(ptr)

attributes #0 = { nounwind uwtable }
