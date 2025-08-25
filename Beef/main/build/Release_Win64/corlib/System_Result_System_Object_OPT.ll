; ModuleID = 'System_Result_System_Object'
source_filename = "System_Result_System_Object"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.?$Result@PEAVObject@System@bf@@@System@bf" = type <{ %"corlib.Enum@System@bf", %"corlib.?$__TUPLE_val@PEAVObject@System@bf@@@bf", i8 }>
%"corlib.Enum@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$__TUPLE_val@PEAVObject@System@bf@@@bf" = type <{ %"corlib.Tuple@System@bf", ptr }>
%"corlib.Tuple@System@bf" = type <{ %"corlib.ValueType@System@bf" }>

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @"??B?$Result@PEAVObject@System@bf@@@System@bf@@SA?AU012@PEAVObject@12@@Z"(ptr noalias nocapture writeonly sret(%"corlib.?$Result@PEAVObject@System@bf@@@System@bf") %0, ptr %value) local_unnamed_addr #0 {
entry:
  store ptr %value, ptr %0, align 8
  %.repack3 = getelementptr inbounds %"corlib.?$Result@PEAVObject@System@bf@@@System@bf", ptr %0, i64 0, i32 2
  store i8 0, ptr %.repack3, align 8
  ret void
}

attributes #0 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable }
