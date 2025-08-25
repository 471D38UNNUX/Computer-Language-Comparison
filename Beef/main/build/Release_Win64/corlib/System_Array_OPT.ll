; ModuleID = 'System_Array'
source_filename = "System_Array"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.Array@System@bf" = type <{ %"corlib.Object@System@bf", i32 }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.?$Array1@D@System@bf" = type <{ %"corlib.Array@System@bf", i8 }>

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @"?get__Count@Array@System@bf@@QEAATint@@XZ"(ptr nocapture readonly %this) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %"corlib.Array@System@bf", ptr %this, i64 0, i32 1
  %1 = load i32, ptr %0, align 4
  %2 = sext i32 %1 to i64
  ret i64 %2
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i1 @"?get__IsEmpty@Array@System@bf@@QEAA_NXZ"(ptr nocapture readonly %this) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %"corlib.Array@System@bf", ptr %this, i64 0, i32 1
  %1 = load i32, ptr %0, align 4
  %2 = icmp eq i32 %1, 0
  ret i1 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @"?__BfCtor@Array@System@bf@@QEAAXXZ"(ptr nocapture readnone %this) local_unnamed_addr #1 {
entry:
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @"??$Copy@DD@Array@System@bf@@SAXPEAV?$Array1@D@System@bf@@Tint@@011@Z"(ptr readonly %arrayFrom, i64 %srcOffset, ptr writeonly %arrayTo, i64 %dstOffset, i64 %length) local_unnamed_addr #2 {
entry:
  %0 = icmp eq ptr %arrayTo, %arrayFrom
  %1 = icmp sgt i64 %dstOffset, %srcOffset
  %spec.select = select i1 %0, i1 %1, i1 false
  br i1 %spec.select, label %for.cond.preheader, label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %entry
  %2 = icmp sgt i64 %length, 0
  br i1 %2, label %for.body5.lr.ph, label %exit

for.body5.lr.ph:                                  ; preds = %for.cond4.preheader
  %3 = getelementptr inbounds %"corlib.?$Array1@D@System@bf", ptr %arrayTo, i64 0, i32 1
  %invariant.gep = getelementptr i8, ptr %3, i64 %dstOffset
  %4 = getelementptr inbounds %"corlib.?$Array1@D@System@bf", ptr %arrayFrom, i64 0, i32 1
  %invariant.gep18 = getelementptr i8, ptr %4, i64 %srcOffset
  br label %for.body5

for.cond.preheader:                               ; preds = %entry
  %i.020 = add i64 %length, -1
  %5 = icmp sgt i64 %i.020, -1
  br i1 %5, label %for.body.lr.ph, label %exit

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %6 = getelementptr inbounds %"corlib.?$Array1@D@System@bf", ptr %arrayTo, i64 0, i32 1
  %invariant.gep22 = getelementptr i8, ptr %6, i64 %dstOffset
  %invariant.gep24 = getelementptr i8, ptr %6, i64 %srcOffset
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %i.021 = phi i64 [ %i.020, %for.body.lr.ph ], [ %i.0, %for.body ]
  %gep23 = getelementptr i8, ptr %invariant.gep22, i64 %i.021
  %gep25 = getelementptr i8, ptr %invariant.gep24, i64 %i.021
  %7 = load i8, ptr %gep25, align 1
  store i8 %7, ptr %gep23, align 1
  %i.0 = add nsw i64 %i.021, -1
  %.not = icmp eq i64 %i.021, 0
  br i1 %.not, label %exit, label %for.body

for.body5:                                        ; preds = %for.body5.lr.ph, %for.body5
  %i3.017 = phi i64 [ 0, %for.body5.lr.ph ], [ %9, %for.body5 ]
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i3.017
  %gep19 = getelementptr i8, ptr %invariant.gep18, i64 %i3.017
  %8 = load i8, ptr %gep19, align 1
  store i8 %8, ptr %gep, align 1
  %9 = add nuw nsw i64 %i3.017, 1
  %exitcond.not = icmp eq i64 %9, %length
  br i1 %exitcond.not, label %exit, label %for.body5

exit:                                             ; preds = %for.body5, %for.body, %for.cond4.preheader, %for.cond.preheader
  ret void
}

attributes #0 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable }
