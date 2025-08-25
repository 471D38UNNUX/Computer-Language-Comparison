; ModuleID = 'System_Text_Encoding'
source_filename = "System_Text_Encoding"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

@"?sASCII@Encoding@Text@System@bf@@2PEAV1234@A" = local_unnamed_addr global ptr null, align 8
@"?sUTF8@Encoding@Text@System@bf@@2PEAV1234@A" = local_unnamed_addr global ptr null, align 8
@"?sUTF8WithBOM@Encoding@Text@System@bf@@2PEAV1234@A" = local_unnamed_addr global ptr null, align 8
@"?sUTF16@Encoding@Text@System@bf@@2PEAV1234@A" = local_unnamed_addr global ptr null, align 8
@"?sUTF16WithBOM@Encoding@Text@System@bf@@2PEAV1234@A" = local_unnamed_addr global ptr null, align 8

; Function Attrs: nounwind uwtable
define void @"?__BfStaticDtor@Encoding@Text@System@bf@@SAXXZ"() local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @"?sUTF16WithBOM@Encoding@Text@System@bf@@2PEAV1234@A", align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %delete.end, label %delete.body

delete.body:                                      ; preds = %entry
  %1 = load ptr, ptr %0, align 8
  %2 = getelementptr inbounds ptr, ptr %1, i64 3
  %3 = load ptr, ptr %2, align 8
  tail call void %3(ptr nonnull %0) #1
  tail call void @tc_free(ptr nonnull %0) #1
  br label %delete.end

delete.end:                                       ; preds = %delete.body, %entry
  %4 = load ptr, ptr @"?sUTF16@Encoding@Text@System@bf@@2PEAV1234@A", align 8
  %.not13 = icmp eq ptr %4, null
  br i1 %.not13, label %delete.end2, label %delete.body1

delete.body1:                                     ; preds = %delete.end
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr nonnull %4) #1
  tail call void @tc_free(ptr nonnull %4) #1
  br label %delete.end2

delete.end2:                                      ; preds = %delete.body1, %delete.end
  %8 = load ptr, ptr @"?sUTF8WithBOM@Encoding@Text@System@bf@@2PEAV1234@A", align 8
  %.not14 = icmp eq ptr %8, null
  br i1 %.not14, label %delete.end4, label %delete.body3

delete.body3:                                     ; preds = %delete.end2
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr nonnull %8) #1
  tail call void @tc_free(ptr nonnull %8) #1
  br label %delete.end4

delete.end4:                                      ; preds = %delete.body3, %delete.end2
  %12 = load ptr, ptr @"?sUTF8@Encoding@Text@System@bf@@2PEAV1234@A", align 8
  %.not15 = icmp eq ptr %12, null
  br i1 %.not15, label %delete.end6, label %delete.body5

delete.body5:                                     ; preds = %delete.end4
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr nonnull %12) #1
  tail call void @tc_free(ptr nonnull %12) #1
  br label %delete.end6

delete.end6:                                      ; preds = %delete.body5, %delete.end4
  %16 = load ptr, ptr @"?sASCII@Encoding@Text@System@bf@@2PEAV1234@A", align 8
  %.not16 = icmp eq ptr %16, null
  br i1 %.not16, label %exit, label %delete.body7

delete.body7:                                     ; preds = %delete.end6
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr nonnull %16) #1
  tail call void @tc_free(ptr nonnull %16) #1
  br label %exit

exit:                                             ; preds = %delete.end6, %delete.body7
  ret void
}

declare void @tc_free(ptr) local_unnamed_addr

attributes #0 = { nounwind uwtable }
attributes #1 = { nounwind }
