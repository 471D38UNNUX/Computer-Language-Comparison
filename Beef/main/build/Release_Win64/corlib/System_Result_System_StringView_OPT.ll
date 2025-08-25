; ModuleID = 'System_Result_System_StringView'
source_filename = "System_Result_System_StringView"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Result@UStringView@System@bf@@@System@bf" = type <{ %"corlib.Enum@System@bf", %"corlib.?$__TUPLE_val@UStringView@System@bf@@@bf", i8 }>
%"corlib.Enum@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$__TUPLE_val@UStringView@System@bf@@@bf" = type <{ %"corlib.Tuple@System@bf", %"corlib.StringView@System@bf" }>
%"corlib.Tuple@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.StringView@System@bf" = type <{ %"corlib.?$Span@D@System@bf" }>
%"corlib.?$Span@D@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @"??B?$Result@UStringView@System@bf@@@System@bf@@SA?AU012@UStringView@12@@Z"(ptr noalias nocapture writeonly sret(%"corlib.?$Result@UStringView@System@bf@@@System@bf") %0, ptr %value_mPtr, i64 %value_mLength) local_unnamed_addr #0 {
entry:
  %.repack7 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 1
  store ptr %value_mPtr, ptr %.repack7, align 8
  %.repack9 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %0, i64 0, i32 2
  store i64 %value_mLength, ptr %.repack9, align 8
  %.repack3 = getelementptr inbounds %"corlib.?$Result@UStringView@System@bf@@@System@bf", ptr %0, i64 0, i32 2
  store i8 0, ptr %.repack3, align 8
  ret void
}

attributes #0 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable }
