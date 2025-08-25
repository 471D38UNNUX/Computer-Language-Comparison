; ModuleID = 'System_String'
source_filename = "System_String"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.?$Span@D@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$Array1@D@System@bf" = type <{ %"corlib.Array@System@bf", i8 }>
%"corlib.Array@System@bf" = type <{ %"corlib.Object@System@bf", i32 }>
%"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf" = type <{ %"corlib.ValueType@System@bf", %"corlib.?$Span@UStringView@System@bf@@@System@bf", i64, ptr }>
%"corlib.?$Span@UStringView@System@bf@@@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%"corlib.?$Result@UStringView@System@bf@@@System@bf" = type <{ %"corlib.Enum@System@bf", %"corlib.?$__TUPLE_val@UStringView@System@bf@@@bf", i8 }>
%"corlib.Enum@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.?$__TUPLE_val@UStringView@System@bf@@@bf" = type <{ %"corlib.Tuple@System@bf", %"corlib.StringView@System@bf" }>
%"corlib.Tuple@System@bf" = type <{ %"corlib.ValueType@System@bf" }>
%"corlib.StringView@System@bf" = type <{ %"corlib.?$Span@D@System@bf" }>
%"corlib.?$Result@X@System@bf" = type <{ %"corlib.Enum@System@bf", [0 x i8], i8 }>
%"corlib.?$Span@PEAVObject@System@bf@@@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64 }>
%_BF_DeferredData_RvYbVfd = type { i64, ptr, ptr }
%"corlib.DeferredCall@System@bf" = type <{ %"corlib.ValueType@System@bf", i64, ptr }>

@"?sPrevInternLinkPtr@String@System@bf@@2PEAPEAV123@A" = local_unnamed_addr global ptr null, align 8
@"?sHexUpperChars@String@System@bf@@2PEAV123@A" = local_unnamed_addr global ptr null, align 8
@didStaticInit = internal unnamed_addr global i1 false
@"?sBfClassVData@String@System@bf@@2UClassVData@23@A" = external constant [8 x ptr]
@__bfStrObj59 = external constant %"corlib.String@System@bf"
@__bfStrObj1 = external constant %"corlib.String@System@bf"
@__bfStrObj61 = external constant %"corlib.String@System@bf"
@"?sBfSlotOfs@IFormattable@System@bf@@2HA" = external local_unnamed_addr constant i32
@__bfStrObj66 = external constant %"corlib.String@System@bf"
@__bfStrObj67 = external constant %"corlib.String@System@bf"
@__bfStrObj69 = external constant %"corlib.String@System@bf"
@__bfStrObj382 = external constant %"corlib.String@System@bf"
@__bfStrObj385 = external constant %"corlib.String@System@bf"
@__bfStrObj386 = external constant %"corlib.String@System@bf"
@__bfStrObj387 = external constant %"corlib.String@System@bf"
@__bfStrObj388 = external constant %"corlib.String@System@bf"
@__bfStrObj389 = external constant %"corlib.String@System@bf"
@__bfStrObj390 = external constant %"corlib.String@System@bf"
@__bfStrObj391 = external constant %"corlib.String@System@bf"
@__bfStrObj392 = external constant %"corlib.String@System@bf"
@__bfStrObj393 = external constant %"corlib.String@System@bf"
@__bfStrObj394 = external constant %"corlib.String@System@bf"
@__bfStrObj395 = external constant %"corlib.String@System@bf"
@__bfStrObj396 = external constant %"corlib.String@System@bf"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @"?__BfCtor@i0$String@System@bf@@QEAAXAEATint@@Tint@@@Z"(ptr nocapture writeonly %this, ptr nocapture dereferenceable(8) %__appendIdx, i64 %count) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  store ptr null, ptr %0, align 8
  %1 = icmp eq i64 %count, 0
  %2 = add i64 %count, -1
  %3 = and i64 %2, -8
  %4 = select i1 %1, i64 0, i64 %3
  %5 = load i64, ptr %__appendIdx, align 8
  %6 = add i64 %5, %4
  store i64 %6, ptr %__appendIdx, align 8
  %7 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 2
  %8 = trunc i64 %4 to i32
  %9 = add i32 %8, 8
  store i32 %9, ptr %7, align 4
  %10 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 1
  store i32 0, ptr %10, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define i64 @"?this$calcAppend@i1$String@System@bf@@SATint@@Tint@@@Z"(i64 %count) local_unnamed_addr #1 {
entry:
  %0 = icmp eq i64 %count, 0
  %1 = add i64 %count, -1
  %2 = and i64 %1, -8
  %3 = select i1 %0, i64 0, i64 %2
  ret i64 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @"?__BfCtor@i4$String@System@bf@@QEAAXAEATint@@@Z"(ptr nocapture writeonly %this, ptr nocapture dereferenceable(8) %__appendIdx) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  store ptr null, ptr %0, align 8
  %1 = load i64, ptr %__appendIdx, align 8
  %2 = add i64 %1, 8
  store i64 %2, ptr %__appendIdx, align 8
  %3 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 2
  store i32 16, ptr %3, align 4
  %4 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 1
  store i32 0, ptr %4, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @"?this$calcAppend@i5$String@System@bf@@SATint@@XZ"() local_unnamed_addr #1 {
entry:
  ret i64 8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"?__BfCtor@i8$String@System@bf@@QEAAXAEATint@@PEAV123@@Z"(ptr nocapture %this, ptr nocapture dereferenceable(8) %__appendIdx, ptr nocapture readonly %str) local_unnamed_addr #2 {
entry:
  %0 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  store ptr null, ptr %0, align 8
  %1 = getelementptr inbounds %"corlib.String@System@bf", ptr %str, i64 0, i32 1
  %2 = load i32, ptr %1, align 4
  %3 = icmp eq i32 %2, 0
  %4 = sext i32 %2 to i64
  %5 = add nsw i64 %4, -1
  %6 = and i64 %5, -8
  %7 = select i1 %3, i64 0, i64 %6
  %8 = load i64, ptr %__appendIdx, align 8
  %9 = add i64 %7, %8
  store i64 %9, ptr %__appendIdx, align 8
  %10 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1073741824
  %.not.i = icmp eq i32 %12, 0
  br i1 %.not.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit", label %cond.then.i

cond.then.i:                                      ; preds = %entry
  %13 = load ptr, ptr %0, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit":    ; preds = %entry, %cond.then.i
  %14 = phi ptr [ %13, %cond.then.i ], [ %0, %entry ]
  %15 = getelementptr inbounds %"corlib.String@System@bf", ptr %str, i64 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 1073741824
  %.not.i3 = icmp eq i32 %17, 0
  %18 = getelementptr inbounds %"corlib.String@System@bf", ptr %str, i64 0, i32 3
  br i1 %.not.i3, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit5", label %cond.then.i4

cond.then.i4:                                     ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"
  %19 = load ptr, ptr %18, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit5"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit5":   ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit", %cond.then.i4
  %20 = phi ptr [ %19, %cond.then.i4 ], [ %18, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit" ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %14, ptr align 1 %20, i64 %4, i1 false)
  %21 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 1
  store i32 %2, ptr %21, align 4
  %22 = trunc i64 %7 to i32
  %23 = add i32 %22, 8
  store i32 %23, ptr %10, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @"?this$calcAppend@i9$String@System@bf@@SATint@@PEAV123@@Z"(ptr nocapture readonly %str) local_unnamed_addr #3 {
entry:
  %0 = getelementptr inbounds %"corlib.String@System@bf", ptr %str, i64 0, i32 1
  %1 = load i32, ptr %0, align 4
  %2 = icmp eq i32 %1, 0
  %3 = sext i32 %1 to i64
  %4 = add nsw i64 %3, -1
  %5 = and i64 %4, -8
  %6 = select i1 %2, i64 0, i64 %5
  ret i64 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define void @"?__BfCtor@i26$String@System@bf@@QEAAXAEATint@@UStringView@23@@Z"(ptr nocapture %this, ptr nocapture dereferenceable(8) %__appendIdx, ptr nocapture readonly %strView) local_unnamed_addr #2 {
entry:
  %0 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  store ptr null, ptr %0, align 8
  %1 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %strView, i64 0, i32 2
  %2 = load i64, ptr %1, align 8
  %3 = icmp eq i64 %2, 0
  %4 = add i64 %2, -1
  %5 = and i64 %4, -8
  %6 = select i1 %3, i64 0, i64 %5
  %7 = load i64, ptr %__appendIdx, align 8
  %8 = add i64 %6, %7
  store i64 %8, ptr %__appendIdx, align 8
  %9 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 1073741824
  %.not.i = icmp eq i32 %11, 0
  br i1 %.not.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit", label %cond.then.i

cond.then.i:                                      ; preds = %entry
  %12 = load ptr, ptr %0, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit":    ; preds = %entry, %cond.then.i
  %13 = phi ptr [ %12, %cond.then.i ], [ %0, %entry ]
  %14 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %strView, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = load i64, ptr %1, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %13, ptr align 1 %15, i64 %16, i1 false)
  %17 = trunc i64 %6 to i32
  %18 = add i32 %17, 8
  store i32 %18, ptr %9, align 4
  %19 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 1
  %20 = load i64, ptr %1, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, ptr %19, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @"?this$calcAppend@i27$String@System@bf@@SATint@@UStringView@23@@Z"(ptr nocapture readonly %strView) local_unnamed_addr #3 {
entry:
  %0 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %strView, i64 0, i32 2
  %1 = load i64, ptr %0, align 8
  %2 = icmp eq i64 %1, 0
  %3 = add i64 %1, -1
  %4 = and i64 %3, -8
  %5 = select i1 %2, i64 0, i64 %4
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define ptr @"?Alloc@String@System@bf@@MEAAPEAXTint@@0@Z"(ptr nocapture readnone %this, i64 %size, i64 %align) local_unnamed_addr #4 {
entry:
  %0 = tail call ptr @tc_malloc(i64 %size) #15
  ret ptr %0
}

; Function Attrs: nounwind uwtable
define void @"?Free@String@System@bf@@MEAAXPEAX@Z"(ptr nocapture readnone %this, ptr %ptr) local_unnamed_addr #4 {
entry:
  %0 = icmp ugt ptr %ptr, inttoptr (i64 1 to ptr)
  br i1 %0, label %delete.body, label %exit

delete.body:                                      ; preds = %entry
  tail call void @tc_free(ptr nonnull %ptr) #15
  br label %exit

exit:                                             ; preds = %entry, %delete.body
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @"?get__Length@String@System@bf@@QEAATint@@XZ"(ptr nocapture readonly %this) local_unnamed_addr #5 {
entry:
  %0 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 1
  %1 = load i32, ptr %0, align 4
  %2 = sext i32 %1 to i64
  ret i64 %2
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @"?get__AllocSize@String@System@bf@@QEAATint@@XZ"(ptr nocapture readonly %this) local_unnamed_addr #5 {
entry:
  %0 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 2
  %1 = load i32, ptr %0, align 4
  %2 = and i32 %1, 1073741823
  %3 = zext nneg i32 %2 to i64
  ret i64 %3
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i1 @"?get__IsDynAlloc@String@System@bf@@QEAA_NXZ"(ptr nocapture readonly %this) local_unnamed_addr #5 {
entry:
  %0 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 2
  %1 = load i32, ptr %0, align 4
  %2 = icmp slt i32 %1, 0
  ret i1 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @"?get__Ptr@String@System@bf@@QEAAPEADXZ"(ptr readonly %this) local_unnamed_addr #3 {
entry:
  %0 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 2
  %1 = load i32, ptr %0, align 4
  %2 = and i32 %1, 1073741824
  %.not = icmp eq i32 %2, 0
  %3 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  br i1 %.not, label %cond.cont, label %cond.then

cond.then:                                        ; preds = %entry
  %4 = load ptr, ptr %3, align 8
  br label %cond.cont

cond.cont:                                        ; preds = %entry, %cond.then
  %5 = phi ptr [ %4, %cond.then ], [ %3, %entry ]
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i1 @"?get__IsEmpty@String@System@bf@@QEAA_NXZ"(ptr nocapture readonly %this) local_unnamed_addr #3 {
entry:
  %0 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 1
  %1 = load i32, ptr %0, align 4
  %2 = icmp eq i32 %1, 0
  ret i1 %2
}

; Function Attrs: nounwind uwtable
define ptr @"??BString@System@bf@@SAPEADPEAV012@@Z"(ptr %str) local_unnamed_addr #4 {
entry:
  %0 = icmp eq ptr %str, null
  br i1 %0, label %exit, label %if.end

if.end:                                           ; preds = %entry
  tail call void @"?EnsureNullTerminator@String@System@bf@@QEAAXXZ"(ptr nonnull %str)
  %1 = getelementptr inbounds %"corlib.String@System@bf", ptr %str, i64 0, i32 2
  %2 = load i32, ptr %1, align 4
  %3 = and i32 %2, 1073741824
  %.not.i = icmp eq i32 %3, 0
  %4 = getelementptr inbounds %"corlib.String@System@bf", ptr %str, i64 0, i32 3
  br i1 %.not.i, label %exit, label %cond.then.i

cond.then.i:                                      ; preds = %if.end
  %5 = load ptr, ptr %4, align 8
  br label %exit

exit:                                             ; preds = %cond.then.i, %if.end, %entry
  %__return.0 = phi ptr [ null, %entry ], [ %5, %cond.then.i ], [ %4, %if.end ]
  ret ptr %__return.0
}

; Function Attrs: nounwind uwtable
define void @"?Quote@String@System@bf@@SAXPEADTint@@PEAV123@@Z"(ptr nocapture readonly %ptr, i64 %length, ptr %outString) local_unnamed_addr #4 {
entry:
  %0 = getelementptr inbounds %"corlib.String@System@bf", ptr %outString, i64 0, i32 1
  %1 = load i32, ptr %0, align 4
  %2 = getelementptr inbounds %"corlib.String@System@bf", ptr %outString, i64 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1073741823
  %.not.i = icmp slt i32 %1, %4
  br i1 %.not.i, label %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i", label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  %5 = zext nneg i32 %4 to i64
  %6 = zext nneg i32 %1 to i64
  %7 = add nuw nsw i64 %6, 1
  %8 = lshr i64 %5, 1
  %9 = add nuw nsw i64 %8, %5
  %10 = tail call i64 @llvm.smax.i64(i64 %9, i64 %7)
  %11 = icmp ult i64 %10, 1073741824
  tail call void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext %11, ptr nonnull @__bfStrObj66, ptr nonnull @__bfStrObj67, i64 866)
  %12 = load ptr, ptr %outString, align 8
  %13 = getelementptr inbounds ptr, ptr %12, i64 6
  %14 = load ptr, ptr %13, align 8
  %Alloc.i.i = tail call ptr %14(ptr nonnull %outString, i64 %10, i64 1) #15
  %15 = load i32, ptr %2, align 4
  %16 = and i32 %15, 1073741824
  %.not.i.i.i = icmp eq i32 %16, 0
  %17 = getelementptr inbounds %"corlib.String@System@bf", ptr %outString, i64 0, i32 3
  br i1 %.not.i.i.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i", label %cond.then.i.i.i

cond.then.i.i.i:                                  ; preds = %if.then.i.i
  %18 = load ptr, ptr %17, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i": ; preds = %cond.then.i.i.i, %if.then.i.i
  %19 = phi ptr [ %18, %cond.then.i.i.i ], [ %17, %if.then.i.i ]
  %20 = load i32, ptr %0, align 4
  %21 = sext i32 %20 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %Alloc.i.i, ptr align 1 %19, i64 %21, i1 false)
  %22 = load i32, ptr %2, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %if.then.i1.i, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i"

if.then.i1.i:                                     ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i"
  %24 = load ptr, ptr %17, align 8
  %.not.i.i = icmp eq ptr %24, null
  br i1 %.not.i.i, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i", label %delete.body.i.i

delete.body.i.i:                                  ; preds = %if.then.i1.i
  %25 = load ptr, ptr %outString, align 8
  %26 = getelementptr inbounds ptr, ptr %25, i64 7
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr nonnull %outString, ptr nonnull %24) #15
  br label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i"

"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i": ; preds = %delete.body.i.i, %if.then.i1.i, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i"
  store ptr %Alloc.i.i, ptr %17, align 8
  %28 = trunc i64 %10 to i32
  %29 = or i32 %28, -1073741824
  store i32 %29, ptr %2, align 4
  br label %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i"

"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i": ; preds = %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i", %entry
  %30 = phi i32 [ %3, %entry ], [ %29, %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i" ]
  %31 = and i32 %30, 1073741824
  %.not.i2.i = icmp eq i32 %31, 0
  %32 = getelementptr inbounds %"corlib.String@System@bf", ptr %outString, i64 0, i32 3
  br i1 %.not.i2.i, label %"?Append@String@System@bf@@QEAAXD@Z.exit", label %cond.then.i.i

cond.then.i.i:                                    ; preds = %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i"
  %33 = load ptr, ptr %32, align 8
  br label %"?Append@String@System@bf@@QEAAXD@Z.exit"

"?Append@String@System@bf@@QEAAXD@Z.exit":        ; preds = %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i", %cond.then.i.i
  %34 = phi ptr [ %33, %cond.then.i.i ], [ %32, %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i" ]
  %35 = load i32, ptr %0, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %0, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, ptr %34, i64 %37
  store i8 34, ptr %38, align 1
  tail call void @"?Escape@String@System@bf@@SAXPEADTint@@PEAV123@@Z"(ptr %ptr, i64 %length, ptr nonnull %outString)
  %39 = load i32, ptr %0, align 4
  %40 = load i32, ptr %2, align 4
  %41 = and i32 %40, 1073741823
  %.not.i1 = icmp slt i32 %39, %41
  br i1 %.not.i1, label %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i8", label %if.then.i.i2

if.then.i.i2:                                     ; preds = %"?Append@String@System@bf@@QEAAXD@Z.exit"
  %42 = zext nneg i32 %41 to i64
  %43 = zext nneg i32 %39 to i64
  %44 = add nuw nsw i64 %43, 1
  %45 = lshr i64 %42, 1
  %46 = add nuw nsw i64 %45, %42
  %47 = tail call i64 @llvm.smax.i64(i64 %46, i64 %44)
  %48 = icmp ult i64 %47, 1073741824
  tail call void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext %48, ptr nonnull @__bfStrObj66, ptr nonnull @__bfStrObj67, i64 866)
  %49 = load ptr, ptr %outString, align 8
  %50 = getelementptr inbounds ptr, ptr %49, i64 6
  %51 = load ptr, ptr %50, align 8
  %Alloc.i.i3 = tail call ptr %51(ptr nonnull %outString, i64 %47, i64 1) #15
  %52 = load i32, ptr %2, align 4
  %53 = and i32 %52, 1073741824
  %.not.i.i.i4 = icmp eq i32 %53, 0
  br i1 %.not.i.i.i4, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i6", label %cond.then.i.i.i5

cond.then.i.i.i5:                                 ; preds = %if.then.i.i2
  %54 = load ptr, ptr %32, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i6"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i6": ; preds = %cond.then.i.i.i5, %if.then.i.i2
  %55 = phi ptr [ %54, %cond.then.i.i.i5 ], [ %32, %if.then.i.i2 ]
  %56 = load i32, ptr %0, align 4
  %57 = sext i32 %56 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %Alloc.i.i3, ptr align 1 %55, i64 %57, i1 false)
  %58 = load i32, ptr %2, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %if.then.i1.i11, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i7"

if.then.i1.i11:                                   ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i6"
  %60 = load ptr, ptr %32, align 8
  %.not.i.i12 = icmp eq ptr %60, null
  br i1 %.not.i.i12, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i7", label %delete.body.i.i13

delete.body.i.i13:                                ; preds = %if.then.i1.i11
  %61 = load ptr, ptr %outString, align 8
  %62 = getelementptr inbounds ptr, ptr %61, i64 7
  %63 = load ptr, ptr %62, align 8
  tail call void %63(ptr nonnull %outString, ptr nonnull %60) #15
  br label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i7"

"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i7": ; preds = %delete.body.i.i13, %if.then.i1.i11, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i6"
  store ptr %Alloc.i.i3, ptr %32, align 8
  %64 = trunc i64 %47 to i32
  %65 = or i32 %64, -1073741824
  store i32 %65, ptr %2, align 4
  br label %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i8"

"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i8": ; preds = %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i7", %"?Append@String@System@bf@@QEAAXD@Z.exit"
  %66 = phi i32 [ %40, %"?Append@String@System@bf@@QEAAXD@Z.exit" ], [ %65, %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i7" ]
  %67 = and i32 %66, 1073741824
  %.not.i2.i9 = icmp eq i32 %67, 0
  br i1 %.not.i2.i9, label %"?Append@String@System@bf@@QEAAXD@Z.exit14", label %cond.then.i.i10

cond.then.i.i10:                                  ; preds = %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i8"
  %68 = load ptr, ptr %32, align 8
  br label %"?Append@String@System@bf@@QEAAXD@Z.exit14"

"?Append@String@System@bf@@QEAAXD@Z.exit14":      ; preds = %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i8", %cond.then.i.i10
  %69 = phi ptr [ %68, %cond.then.i.i10 ], [ %32, %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i8" ]
  %70 = load i32, ptr %0, align 4
  %71 = add i32 %70, 1
  store i32 %71, ptr %0, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, ptr %69, i64 %72
  store i8 34, ptr %73, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Escape@String@System@bf@@SAXPEADTint@@PEAV123@@Z"(ptr nocapture readonly %ptr, i64 %length, ptr %outString) local_unnamed_addr #4 {
entry:
  %0 = icmp sgt i64 %length, 0
  br i1 %0, label %forless.body.lr.ph, label %exit

forless.body.lr.ph:                               ; preds = %entry
  %1 = getelementptr inbounds %"corlib.String@System@bf", ptr %outString, i64 0, i32 1
  %2 = getelementptr inbounds %"corlib.String@System@bf", ptr %outString, i64 0, i32 2
  %3 = getelementptr inbounds %"corlib.String@System@bf", ptr %outString, i64 0, i32 3
  br label %forless.body

forless.body:                                     ; preds = %forless.body.lr.ph, %forless.inc
  %.078 = phi i64 [ 0, %forless.body.lr.ph ], [ %205, %forless.inc ]
  %4 = getelementptr inbounds i8, ptr %ptr, i64 %.078
  %5 = load i8, ptr %4, align 1
  switch i8 %5, label %default [
    i8 39, label %switch.0
    i8 34, label %switch.1
    i8 92, label %switch.2
    i8 0, label %switch.3
    i8 7, label %switch.4
    i8 8, label %switch.5
    i8 12, label %switch.6
    i8 10, label %switch.7
    i8 13, label %switch.8
    i8 9, label %switch.9
    i8 11, label %switch.10
  ]

switch.0:                                         ; preds = %forless.body
  %6 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj385, i64 0, i32 2), align 4
  %7 = and i32 %6, 1073741824
  %.not.i.i = icmp eq i32 %7, 0
  br i1 %.not.i.i, label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit", label %cond.then.i.i

cond.then.i.i:                                    ; preds = %switch.0
  %8 = load ptr, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj385, i64 0, i32 3), align 8
  br label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit"

"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit": ; preds = %switch.0, %cond.then.i.i
  %9 = phi ptr [ %8, %cond.then.i.i ], [ getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj385, i64 0, i32 3), %switch.0 ]
  %10 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj385, i64 0, i32 1), align 4
  %11 = sext i32 %10 to i64
  tail call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %outString, ptr %9, i64 %11)
  br label %forless.inc

switch.1:                                         ; preds = %forless.body
  %12 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj386, i64 0, i32 2), align 4
  %13 = and i32 %12, 1073741824
  %.not.i.i11 = icmp eq i32 %13, 0
  br i1 %.not.i.i11, label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit13", label %cond.then.i.i12

cond.then.i.i12:                                  ; preds = %switch.1
  %14 = load ptr, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj386, i64 0, i32 3), align 8
  br label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit13"

"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit13": ; preds = %switch.1, %cond.then.i.i12
  %15 = phi ptr [ %14, %cond.then.i.i12 ], [ getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj386, i64 0, i32 3), %switch.1 ]
  %16 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj386, i64 0, i32 1), align 4
  %17 = sext i32 %16 to i64
  tail call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %outString, ptr %15, i64 %17)
  br label %forless.inc

switch.2:                                         ; preds = %forless.body
  %18 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj387, i64 0, i32 2), align 4
  %19 = and i32 %18, 1073741824
  %.not.i.i14 = icmp eq i32 %19, 0
  br i1 %.not.i.i14, label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit16", label %cond.then.i.i15

cond.then.i.i15:                                  ; preds = %switch.2
  %20 = load ptr, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj387, i64 0, i32 3), align 8
  br label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit16"

"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit16": ; preds = %switch.2, %cond.then.i.i15
  %21 = phi ptr [ %20, %cond.then.i.i15 ], [ getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj387, i64 0, i32 3), %switch.2 ]
  %22 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj387, i64 0, i32 1), align 4
  %23 = sext i32 %22 to i64
  tail call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %outString, ptr %21, i64 %23)
  br label %forless.inc

switch.3:                                         ; preds = %forless.body
  %24 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj388, i64 0, i32 2), align 4
  %25 = and i32 %24, 1073741824
  %.not.i.i17 = icmp eq i32 %25, 0
  br i1 %.not.i.i17, label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit19", label %cond.then.i.i18

cond.then.i.i18:                                  ; preds = %switch.3
  %26 = load ptr, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj388, i64 0, i32 3), align 8
  br label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit19"

"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit19": ; preds = %switch.3, %cond.then.i.i18
  %27 = phi ptr [ %26, %cond.then.i.i18 ], [ getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj388, i64 0, i32 3), %switch.3 ]
  %28 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj388, i64 0, i32 1), align 4
  %29 = sext i32 %28 to i64
  tail call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %outString, ptr %27, i64 %29)
  br label %forless.inc

switch.4:                                         ; preds = %forless.body
  %30 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj389, i64 0, i32 2), align 4
  %31 = and i32 %30, 1073741824
  %.not.i.i20 = icmp eq i32 %31, 0
  br i1 %.not.i.i20, label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit22", label %cond.then.i.i21

cond.then.i.i21:                                  ; preds = %switch.4
  %32 = load ptr, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj389, i64 0, i32 3), align 8
  br label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit22"

"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit22": ; preds = %switch.4, %cond.then.i.i21
  %33 = phi ptr [ %32, %cond.then.i.i21 ], [ getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj389, i64 0, i32 3), %switch.4 ]
  %34 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj389, i64 0, i32 1), align 4
  %35 = sext i32 %34 to i64
  tail call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %outString, ptr %33, i64 %35)
  br label %forless.inc

switch.5:                                         ; preds = %forless.body
  %36 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj390, i64 0, i32 2), align 4
  %37 = and i32 %36, 1073741824
  %.not.i.i23 = icmp eq i32 %37, 0
  br i1 %.not.i.i23, label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit25", label %cond.then.i.i24

cond.then.i.i24:                                  ; preds = %switch.5
  %38 = load ptr, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj390, i64 0, i32 3), align 8
  br label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit25"

"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit25": ; preds = %switch.5, %cond.then.i.i24
  %39 = phi ptr [ %38, %cond.then.i.i24 ], [ getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj390, i64 0, i32 3), %switch.5 ]
  %40 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj390, i64 0, i32 1), align 4
  %41 = sext i32 %40 to i64
  tail call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %outString, ptr %39, i64 %41)
  br label %forless.inc

switch.6:                                         ; preds = %forless.body
  %42 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj391, i64 0, i32 2), align 4
  %43 = and i32 %42, 1073741824
  %.not.i.i26 = icmp eq i32 %43, 0
  br i1 %.not.i.i26, label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit28", label %cond.then.i.i27

cond.then.i.i27:                                  ; preds = %switch.6
  %44 = load ptr, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj391, i64 0, i32 3), align 8
  br label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit28"

"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit28": ; preds = %switch.6, %cond.then.i.i27
  %45 = phi ptr [ %44, %cond.then.i.i27 ], [ getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj391, i64 0, i32 3), %switch.6 ]
  %46 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj391, i64 0, i32 1), align 4
  %47 = sext i32 %46 to i64
  tail call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %outString, ptr %45, i64 %47)
  br label %forless.inc

switch.7:                                         ; preds = %forless.body
  %48 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj392, i64 0, i32 2), align 4
  %49 = and i32 %48, 1073741824
  %.not.i.i29 = icmp eq i32 %49, 0
  br i1 %.not.i.i29, label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit31", label %cond.then.i.i30

cond.then.i.i30:                                  ; preds = %switch.7
  %50 = load ptr, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj392, i64 0, i32 3), align 8
  br label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit31"

"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit31": ; preds = %switch.7, %cond.then.i.i30
  %51 = phi ptr [ %50, %cond.then.i.i30 ], [ getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj392, i64 0, i32 3), %switch.7 ]
  %52 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj392, i64 0, i32 1), align 4
  %53 = sext i32 %52 to i64
  tail call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %outString, ptr %51, i64 %53)
  br label %forless.inc

switch.8:                                         ; preds = %forless.body
  %54 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj393, i64 0, i32 2), align 4
  %55 = and i32 %54, 1073741824
  %.not.i.i32 = icmp eq i32 %55, 0
  br i1 %.not.i.i32, label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit34", label %cond.then.i.i33

cond.then.i.i33:                                  ; preds = %switch.8
  %56 = load ptr, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj393, i64 0, i32 3), align 8
  br label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit34"

"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit34": ; preds = %switch.8, %cond.then.i.i33
  %57 = phi ptr [ %56, %cond.then.i.i33 ], [ getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj393, i64 0, i32 3), %switch.8 ]
  %58 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj393, i64 0, i32 1), align 4
  %59 = sext i32 %58 to i64
  tail call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %outString, ptr %57, i64 %59)
  br label %forless.inc

switch.9:                                         ; preds = %forless.body
  %60 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj394, i64 0, i32 2), align 4
  %61 = and i32 %60, 1073741824
  %.not.i.i35 = icmp eq i32 %61, 0
  br i1 %.not.i.i35, label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit37", label %cond.then.i.i36

cond.then.i.i36:                                  ; preds = %switch.9
  %62 = load ptr, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj394, i64 0, i32 3), align 8
  br label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit37"

"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit37": ; preds = %switch.9, %cond.then.i.i36
  %63 = phi ptr [ %62, %cond.then.i.i36 ], [ getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj394, i64 0, i32 3), %switch.9 ]
  %64 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj394, i64 0, i32 1), align 4
  %65 = sext i32 %64 to i64
  tail call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %outString, ptr %63, i64 %65)
  br label %forless.inc

switch.10:                                        ; preds = %forless.body
  %66 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj395, i64 0, i32 2), align 4
  %67 = and i32 %66, 1073741824
  %.not.i.i38 = icmp eq i32 %67, 0
  br i1 %.not.i.i38, label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit40", label %cond.then.i.i39

cond.then.i.i39:                                  ; preds = %switch.10
  %68 = load ptr, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj395, i64 0, i32 3), align 8
  br label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit40"

"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit40": ; preds = %switch.10, %cond.then.i.i39
  %69 = phi ptr [ %68, %cond.then.i.i39 ], [ getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj395, i64 0, i32 3), %switch.10 ]
  %70 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj395, i64 0, i32 1), align 4
  %71 = sext i32 %70 to i64
  tail call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %outString, ptr %69, i64 %71)
  br label %forless.inc

default:                                          ; preds = %forless.body
  %72 = icmp ult i8 %5, 32
  br i1 %72, label %if.then, label %if.end

if.then:                                          ; preds = %default
  %73 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj396, i64 0, i32 2), align 4
  %74 = and i32 %73, 1073741824
  %.not.i.i41 = icmp eq i32 %74, 0
  br i1 %.not.i.i41, label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit43", label %cond.then.i.i42

cond.then.i.i42:                                  ; preds = %if.then
  %75 = load ptr, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj396, i64 0, i32 3), align 8
  br label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit43"

"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit43": ; preds = %if.then, %cond.then.i.i42
  %76 = phi ptr [ %75, %cond.then.i.i42 ], [ getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj396, i64 0, i32 3), %if.then ]
  %77 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj396, i64 0, i32 1), align 4
  %78 = sext i32 %77 to i64
  tail call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %outString, ptr %76, i64 %78)
  %79 = load ptr, ptr @"?sHexUpperChars@String@System@bf@@2PEAV123@A", align 8
  %80 = zext nneg i8 %5 to i64
  %81 = lshr i64 %80, 4
  %82 = getelementptr inbounds %"corlib.String@System@bf", ptr %79, i64 0, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = and i32 %83, 1073741824
  %.not.i = icmp eq i32 %84, 0
  %85 = getelementptr inbounds %"corlib.String@System@bf", ptr %79, i64 0, i32 3
  br i1 %.not.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit", label %cond.then.i

cond.then.i:                                      ; preds = %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit43"
  %86 = load ptr, ptr %85, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit":    ; preds = %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit43", %cond.then.i
  %87 = phi ptr [ %86, %cond.then.i ], [ %85, %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit43" ]
  %88 = getelementptr inbounds i8, ptr %87, i64 %81
  %89 = load i8, ptr %88, align 1
  %90 = load i32, ptr %1, align 4
  %91 = load i32, ptr %2, align 4
  %92 = and i32 %91, 1073741823
  %.not.i44 = icmp slt i32 %90, %92
  br i1 %.not.i44, label %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i", label %if.then.i.i

if.then.i.i:                                      ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"
  %93 = zext nneg i32 %92 to i64
  %94 = zext nneg i32 %90 to i64
  %95 = add nuw nsw i64 %94, 1
  %96 = lshr i64 %93, 1
  %97 = add nuw nsw i64 %96, %93
  %98 = tail call i64 @llvm.smax.i64(i64 %97, i64 %95)
  %99 = icmp ult i64 %98, 1073741824
  tail call void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext %99, ptr nonnull @__bfStrObj66, ptr nonnull @__bfStrObj67, i64 866)
  %100 = load ptr, ptr %outString, align 8
  %101 = getelementptr inbounds ptr, ptr %100, i64 6
  %102 = load ptr, ptr %101, align 8
  %Alloc.i.i = tail call ptr %102(ptr nonnull %outString, i64 %98, i64 1) #15
  %103 = load i32, ptr %2, align 4
  %104 = and i32 %103, 1073741824
  %.not.i.i.i = icmp eq i32 %104, 0
  br i1 %.not.i.i.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i", label %cond.then.i.i.i

cond.then.i.i.i:                                  ; preds = %if.then.i.i
  %105 = load ptr, ptr %3, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i": ; preds = %cond.then.i.i.i, %if.then.i.i
  %106 = phi ptr [ %105, %cond.then.i.i.i ], [ %3, %if.then.i.i ]
  %107 = load i32, ptr %1, align 4
  %108 = sext i32 %107 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %Alloc.i.i, ptr align 1 %106, i64 %108, i1 false)
  %109 = load i32, ptr %2, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %if.then.i1.i, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i"

if.then.i1.i:                                     ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i"
  %111 = load ptr, ptr %3, align 8
  %.not.i.i46 = icmp eq ptr %111, null
  br i1 %.not.i.i46, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i", label %delete.body.i.i

delete.body.i.i:                                  ; preds = %if.then.i1.i
  %112 = load ptr, ptr %outString, align 8
  %113 = getelementptr inbounds ptr, ptr %112, i64 7
  %114 = load ptr, ptr %113, align 8
  tail call void %114(ptr nonnull %outString, ptr nonnull %111) #15
  br label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i"

"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i": ; preds = %delete.body.i.i, %if.then.i1.i, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i"
  store ptr %Alloc.i.i, ptr %3, align 8
  %115 = trunc i64 %98 to i32
  %116 = or i32 %115, -1073741824
  store i32 %116, ptr %2, align 4
  br label %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i"

"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i": ; preds = %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i", %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"
  %117 = phi i32 [ %91, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit" ], [ %116, %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i" ]
  %118 = and i32 %117, 1073741824
  %.not.i2.i = icmp eq i32 %118, 0
  br i1 %.not.i2.i, label %"?Append@String@System@bf@@QEAAXD@Z.exit", label %cond.then.i.i45

cond.then.i.i45:                                  ; preds = %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i"
  %119 = load ptr, ptr %3, align 8
  br label %"?Append@String@System@bf@@QEAAXD@Z.exit"

"?Append@String@System@bf@@QEAAXD@Z.exit":        ; preds = %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i", %cond.then.i.i45
  %120 = phi ptr [ %119, %cond.then.i.i45 ], [ %3, %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i" ]
  %121 = load i32, ptr %1, align 4
  %122 = add i32 %121, 1
  store i32 %122, ptr %1, align 4
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i8, ptr %120, i64 %123
  store i8 %89, ptr %124, align 1
  %125 = load ptr, ptr @"?sHexUpperChars@String@System@bf@@2PEAV123@A", align 8
  %126 = and i64 %80, 15
  %127 = getelementptr inbounds %"corlib.String@System@bf", ptr %125, i64 0, i32 2
  %128 = load i32, ptr %127, align 4
  %129 = and i32 %128, 1073741824
  %.not.i47 = icmp eq i32 %129, 0
  %130 = getelementptr inbounds %"corlib.String@System@bf", ptr %125, i64 0, i32 3
  br i1 %.not.i47, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit49", label %cond.then.i48

cond.then.i48:                                    ; preds = %"?Append@String@System@bf@@QEAAXD@Z.exit"
  %131 = load ptr, ptr %130, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit49"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit49":  ; preds = %"?Append@String@System@bf@@QEAAXD@Z.exit", %cond.then.i48
  %132 = phi ptr [ %131, %cond.then.i48 ], [ %130, %"?Append@String@System@bf@@QEAAXD@Z.exit" ]
  %133 = getelementptr inbounds i8, ptr %132, i64 %126
  %134 = load i8, ptr %133, align 1
  %135 = load i32, ptr %1, align 4
  %136 = load i32, ptr %2, align 4
  %137 = and i32 %136, 1073741823
  %.not.i50 = icmp slt i32 %135, %137
  br i1 %.not.i50, label %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i57", label %if.then.i.i51

if.then.i.i51:                                    ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit49"
  %138 = zext nneg i32 %137 to i64
  %139 = zext nneg i32 %135 to i64
  %140 = add nuw nsw i64 %139, 1
  %141 = lshr i64 %138, 1
  %142 = add nuw nsw i64 %141, %138
  %143 = tail call i64 @llvm.smax.i64(i64 %142, i64 %140)
  %144 = icmp ult i64 %143, 1073741824
  tail call void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext %144, ptr nonnull @__bfStrObj66, ptr nonnull @__bfStrObj67, i64 866)
  %145 = load ptr, ptr %outString, align 8
  %146 = getelementptr inbounds ptr, ptr %145, i64 6
  %147 = load ptr, ptr %146, align 8
  %Alloc.i.i52 = tail call ptr %147(ptr nonnull %outString, i64 %143, i64 1) #15
  %148 = load i32, ptr %2, align 4
  %149 = and i32 %148, 1073741824
  %.not.i.i.i53 = icmp eq i32 %149, 0
  br i1 %.not.i.i.i53, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i55", label %cond.then.i.i.i54

cond.then.i.i.i54:                                ; preds = %if.then.i.i51
  %150 = load ptr, ptr %3, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i55"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i55": ; preds = %cond.then.i.i.i54, %if.then.i.i51
  %151 = phi ptr [ %150, %cond.then.i.i.i54 ], [ %3, %if.then.i.i51 ]
  %152 = load i32, ptr %1, align 4
  %153 = sext i32 %152 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %Alloc.i.i52, ptr align 1 %151, i64 %153, i1 false)
  %154 = load i32, ptr %2, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %if.then.i1.i60, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i56"

if.then.i1.i60:                                   ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i55"
  %156 = load ptr, ptr %3, align 8
  %.not.i.i61 = icmp eq ptr %156, null
  br i1 %.not.i.i61, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i56", label %delete.body.i.i62

delete.body.i.i62:                                ; preds = %if.then.i1.i60
  %157 = load ptr, ptr %outString, align 8
  %158 = getelementptr inbounds ptr, ptr %157, i64 7
  %159 = load ptr, ptr %158, align 8
  tail call void %159(ptr nonnull %outString, ptr nonnull %156) #15
  br label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i56"

"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i56": ; preds = %delete.body.i.i62, %if.then.i1.i60, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i55"
  store ptr %Alloc.i.i52, ptr %3, align 8
  %160 = trunc i64 %143 to i32
  %161 = or i32 %160, -1073741824
  store i32 %161, ptr %2, align 4
  br label %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i57"

"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i57": ; preds = %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i56", %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit49"
  %162 = phi i32 [ %136, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit49" ], [ %161, %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i56" ]
  %163 = and i32 %162, 1073741824
  %.not.i2.i58 = icmp eq i32 %163, 0
  br i1 %.not.i2.i58, label %"?Append@String@System@bf@@QEAAXD@Z.exit63", label %cond.then.i.i59

cond.then.i.i59:                                  ; preds = %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i57"
  %164 = load ptr, ptr %3, align 8
  br label %"?Append@String@System@bf@@QEAAXD@Z.exit63"

"?Append@String@System@bf@@QEAAXD@Z.exit63":      ; preds = %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i57", %cond.then.i.i59
  %165 = phi ptr [ %164, %cond.then.i.i59 ], [ %3, %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i57" ]
  %166 = load i32, ptr %1, align 4
  %167 = add i32 %166, 1
  store i32 %167, ptr %1, align 4
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i8, ptr %165, i64 %168
  store i8 %134, ptr %169, align 1
  br label %forless.inc

if.end:                                           ; preds = %default
  %170 = load i32, ptr %1, align 4
  %171 = load i32, ptr %2, align 4
  %172 = and i32 %171, 1073741823
  %.not.i64 = icmp slt i32 %170, %172
  br i1 %.not.i64, label %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i71", label %if.then.i.i65

if.then.i.i65:                                    ; preds = %if.end
  %173 = zext nneg i32 %172 to i64
  %174 = zext nneg i32 %170 to i64
  %175 = add nuw nsw i64 %174, 1
  %176 = lshr i64 %173, 1
  %177 = add nuw nsw i64 %176, %173
  %178 = tail call i64 @llvm.smax.i64(i64 %177, i64 %175)
  %179 = icmp ult i64 %178, 1073741824
  tail call void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext %179, ptr nonnull @__bfStrObj66, ptr nonnull @__bfStrObj67, i64 866)
  %180 = load ptr, ptr %outString, align 8
  %181 = getelementptr inbounds ptr, ptr %180, i64 6
  %182 = load ptr, ptr %181, align 8
  %Alloc.i.i66 = tail call ptr %182(ptr nonnull %outString, i64 %178, i64 1) #15
  %183 = load i32, ptr %2, align 4
  %184 = and i32 %183, 1073741824
  %.not.i.i.i67 = icmp eq i32 %184, 0
  br i1 %.not.i.i.i67, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i69", label %cond.then.i.i.i68

cond.then.i.i.i68:                                ; preds = %if.then.i.i65
  %185 = load ptr, ptr %3, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i69"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i69": ; preds = %cond.then.i.i.i68, %if.then.i.i65
  %186 = phi ptr [ %185, %cond.then.i.i.i68 ], [ %3, %if.then.i.i65 ]
  %187 = load i32, ptr %1, align 4
  %188 = sext i32 %187 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %Alloc.i.i66, ptr align 1 %186, i64 %188, i1 false)
  %189 = load i32, ptr %2, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %if.then.i1.i74, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i70"

if.then.i1.i74:                                   ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i69"
  %191 = load ptr, ptr %3, align 8
  %.not.i.i75 = icmp eq ptr %191, null
  br i1 %.not.i.i75, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i70", label %delete.body.i.i76

delete.body.i.i76:                                ; preds = %if.then.i1.i74
  %192 = load ptr, ptr %outString, align 8
  %193 = getelementptr inbounds ptr, ptr %192, i64 7
  %194 = load ptr, ptr %193, align 8
  tail call void %194(ptr nonnull %outString, ptr nonnull %191) #15
  br label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i70"

"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i70": ; preds = %delete.body.i.i76, %if.then.i1.i74, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i69"
  store ptr %Alloc.i.i66, ptr %3, align 8
  %195 = trunc i64 %178 to i32
  %196 = or i32 %195, -1073741824
  store i32 %196, ptr %2, align 4
  br label %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i71"

"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i71": ; preds = %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i70", %if.end
  %197 = phi i32 [ %171, %if.end ], [ %196, %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i70" ]
  %198 = and i32 %197, 1073741824
  %.not.i2.i72 = icmp eq i32 %198, 0
  br i1 %.not.i2.i72, label %"?Append@String@System@bf@@QEAAXD@Z.exit77", label %cond.then.i.i73

cond.then.i.i73:                                  ; preds = %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i71"
  %199 = load ptr, ptr %3, align 8
  br label %"?Append@String@System@bf@@QEAAXD@Z.exit77"

"?Append@String@System@bf@@QEAAXD@Z.exit77":      ; preds = %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i71", %cond.then.i.i73
  %200 = phi ptr [ %199, %cond.then.i.i73 ], [ %3, %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i71" ]
  %201 = load i32, ptr %1, align 4
  %202 = add i32 %201, 1
  store i32 %202, ptr %1, align 4
  %203 = sext i32 %201 to i64
  %204 = getelementptr inbounds i8, ptr %200, i64 %203
  store i8 %5, ptr %204, align 1
  br label %forless.inc

forless.inc:                                      ; preds = %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit", %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit13", %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit16", %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit19", %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit22", %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit25", %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit28", %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit31", %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit34", %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit37", %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit40", %"?Append@String@System@bf@@QEAAXD@Z.exit63", %"?Append@String@System@bf@@QEAAXD@Z.exit77"
  %205 = add nuw nsw i64 %.078, 1
  %exitcond.not = icmp eq i64 %205, %length
  br i1 %exitcond.not, label %exit, label %forless.body

exit:                                             ; preds = %forless.inc, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?ToString@String@System@bf@@QEAAXPEAV123@0PEAVIFormatProvider@23@@Z"(ptr nocapture readonly %this, ptr %outString, ptr readonly %format, ptr nocapture readnone %formatProvider) local_unnamed_addr #4 {
entry:
  %0 = icmp eq ptr %format, @__bfStrObj382
  br i1 %0, label %if.then, label %if.end.i.i

if.end.i.i:                                       ; preds = %entry
  %1 = icmp eq ptr %format, null
  br i1 %1, label %if.end, label %if.end2.i.i

if.end2.i.i:                                      ; preds = %if.end.i.i
  %2 = getelementptr inbounds %"corlib.String@System@bf", ptr %format, i64 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj382, i64 0, i32 1), align 4
  %.not.i.i = icmp eq i32 %3, %4
  br i1 %.not.i.i, label %if.end4.i.i, label %if.end

if.end4.i.i:                                      ; preds = %if.end2.i.i
  %5 = getelementptr inbounds %"corlib.String@System@bf", ptr %format, i64 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1073741824
  %.not.i.i.i = icmp eq i32 %7, 0
  %8 = getelementptr inbounds %"corlib.String@System@bf", ptr %format, i64 0, i32 3
  br i1 %.not.i.i.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit16.i.i", label %cond.then.i15.i.i

cond.then.i15.i.i:                                ; preds = %if.end4.i.i
  %9 = load ptr, ptr %8, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit16.i.i"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit16.i.i": ; preds = %cond.then.i15.i.i, %if.end4.i.i
  %10 = phi ptr [ %9, %cond.then.i15.i.i ], [ %8, %if.end4.i.i ]
  %11 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj382, i64 0, i32 2), align 4
  %12 = and i32 %11, 1073741824
  %.not.i17.i.i = icmp eq i32 %12, 0
  br i1 %.not.i17.i.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit19.i.i", label %cond.then.i18.i.i

cond.then.i18.i.i:                                ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit16.i.i"
  %13 = load ptr, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj382, i64 0, i32 3), align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit19.i.i"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit19.i.i": ; preds = %cond.then.i18.i.i, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit16.i.i"
  %14 = phi ptr [ %13, %cond.then.i18.i.i ], [ getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj382, i64 0, i32 3), %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit16.i.i" ]
  %15 = sext i32 %3 to i64
  %16 = icmp slt i32 %3, 1
  br i1 %16, label %if.then, label %for.body.i.preheader.i.i

for.body.i.preheader.i.i:                         ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit19.i.i"
  %17 = load i8, ptr %10, align 1
  %18 = load i8, ptr %14, align 1
  %.not.i2023.i.i = icmp eq i8 %17, %18
  br i1 %.not.i2023.i.i, label %for.cond.i.i.i, label %if.end

for.cond.i.i.i:                                   ; preds = %for.body.i.preheader.i.i, %for.body.i.i.i
  %i.04.i24.i.i = phi i64 [ %19, %for.body.i.i.i ], [ 0, %for.body.i.preheader.i.i ]
  %19 = add nuw nsw i64 %i.04.i24.i.i, 1
  %exitcond.i.i.i = icmp eq i64 %19, %15
  br i1 %exitcond.i.i.i, label %if.then, label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %20 = getelementptr inbounds i8, ptr %10, i64 %19
  %21 = load i8, ptr %20, align 1
  %22 = getelementptr inbounds i8, ptr %14, i64 %19
  %23 = load i8, ptr %22, align 1
  %.not.i20.i.i = icmp eq i8 %21, %23
  br i1 %.not.i20.i.i, label %for.cond.i.i.i, label %"??8String@System@bf@@SA_NPEAV012@0@Z.exit"

"??8String@System@bf@@SA_NPEAV012@0@Z.exit":      ; preds = %for.body.i.i.i
  %.not = icmp slt i64 %19, %15
  br i1 %.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.cond.i.i.i, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit19.i.i", %entry, %"??8String@System@bf@@SA_NPEAV012@0@Z.exit"
  %24 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, 1073741824
  %.not.i = icmp eq i32 %26, 0
  %27 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  br i1 %.not.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit", label %cond.then.i

cond.then.i:                                      ; preds = %if.then
  %28 = load ptr, ptr %27, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit":    ; preds = %if.then, %cond.then.i
  %29 = phi ptr [ %28, %cond.then.i ], [ %27, %if.then ]
  %30 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = sext i32 %31 to i64
  tail call void @"?Quote@String@System@bf@@SAXPEADTint@@PEAV123@@Z"(ptr %29, i64 %32, ptr %outString)
  br label %exit

if.end:                                           ; preds = %for.body.i.preheader.i.i, %if.end2.i.i, %if.end.i.i, %"??8String@System@bf@@SA_NPEAV012@0@Z.exit"
  %33 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = and i32 %34, 1073741824
  %.not.i.i1 = icmp eq i32 %35, 0
  %36 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  br i1 %.not.i.i1, label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit", label %cond.then.i.i

cond.then.i.i:                                    ; preds = %if.end
  %37 = load ptr, ptr %36, align 8
  br label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit"

"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit": ; preds = %if.end, %cond.then.i.i
  %38 = phi ptr [ %37, %cond.then.i.i ], [ %36, %if.end ]
  %39 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = sext i32 %40 to i64
  tail call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %outString, ptr %38, i64 %41)
  br label %exit

exit:                                             ; preds = %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit", %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define i1 @"??8String@System@bf@@SA_NPEAV012@0@Z"(ptr readonly %s1, ptr readonly %s2) local_unnamed_addr #6 {
entry:
  %0 = icmp eq ptr %s1, %s2
  br i1 %0, label %"?Equals@String@System@bf@@SA_NPEAV123@0W4StringComparison@23@@Z.exit", label %if.end.i

if.end.i:                                         ; preds = %entry
  %1 = icmp eq ptr %s1, null
  %2 = icmp eq ptr %s2, null
  %spec.select.i = or i1 %1, %2
  br i1 %spec.select.i, label %"?Equals@String@System@bf@@SA_NPEAV123@0W4StringComparison@23@@Z.exit", label %if.end2.i

if.end2.i:                                        ; preds = %if.end.i
  %3 = getelementptr inbounds %"corlib.String@System@bf", ptr %s1, i64 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %"corlib.String@System@bf", ptr %s2, i64 0, i32 1
  %6 = load i32, ptr %5, align 4
  %.not.i = icmp eq i32 %4, %6
  br i1 %.not.i, label %if.end4.i, label %"?Equals@String@System@bf@@SA_NPEAV123@0W4StringComparison@23@@Z.exit"

if.end4.i:                                        ; preds = %if.end2.i
  %7 = getelementptr inbounds %"corlib.String@System@bf", ptr %s1, i64 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, 1073741824
  %.not.i.i = icmp eq i32 %9, 0
  %10 = getelementptr inbounds %"corlib.String@System@bf", ptr %s1, i64 0, i32 3
  br i1 %.not.i.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit16.i", label %cond.then.i15.i

cond.then.i15.i:                                  ; preds = %if.end4.i
  %11 = load ptr, ptr %10, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit16.i"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit16.i": ; preds = %cond.then.i15.i, %if.end4.i
  %12 = phi ptr [ %11, %cond.then.i15.i ], [ %10, %if.end4.i ]
  %13 = getelementptr inbounds %"corlib.String@System@bf", ptr %s2, i64 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 1073741824
  %.not.i17.i = icmp eq i32 %15, 0
  %16 = getelementptr inbounds %"corlib.String@System@bf", ptr %s2, i64 0, i32 3
  br i1 %.not.i17.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit19.i", label %cond.then.i18.i

cond.then.i18.i:                                  ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit16.i"
  %17 = load ptr, ptr %16, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit19.i"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit19.i": ; preds = %cond.then.i18.i, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit16.i"
  %18 = phi ptr [ %17, %cond.then.i18.i ], [ %16, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit16.i" ]
  %19 = sext i32 %4 to i64
  %20 = icmp slt i32 %4, 1
  br i1 %20, label %"?Equals@String@System@bf@@SA_NPEAV123@0W4StringComparison@23@@Z.exit", label %for.body.i.preheader.i

for.body.i.preheader.i:                           ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit19.i"
  %21 = load i8, ptr %12, align 1
  %22 = load i8, ptr %18, align 1
  %.not.i2023.i = icmp eq i8 %21, %22
  br i1 %.not.i2023.i, label %for.cond.i.i, label %"?Equals@String@System@bf@@SA_NPEAV123@0W4StringComparison@23@@Z.exit"

for.cond.i.i:                                     ; preds = %for.body.i.preheader.i, %for.body.i.i
  %i.04.i24.i = phi i64 [ %23, %for.body.i.i ], [ 0, %for.body.i.preheader.i ]
  %23 = add nuw nsw i64 %i.04.i24.i, 1
  %exitcond.i.i = icmp eq i64 %23, %19
  br i1 %exitcond.i.i, label %exit.loopexit27.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %24 = getelementptr inbounds i8, ptr %12, i64 %23
  %25 = load i8, ptr %24, align 1
  %26 = getelementptr inbounds i8, ptr %18, i64 %23
  %27 = load i8, ptr %26, align 1
  %.not.i20.i = icmp eq i8 %25, %27
  br i1 %.not.i20.i, label %for.cond.i.i, label %exit.loopexit27.i

exit.loopexit27.i:                                ; preds = %for.body.i.i, %for.cond.i.i
  %.lcssa = phi i64 [ %23, %for.body.i.i ], [ %19, %for.cond.i.i ]
  %28 = icmp sge i64 %.lcssa, %19
  br label %"?Equals@String@System@bf@@SA_NPEAV123@0W4StringComparison@23@@Z.exit"

"?Equals@String@System@bf@@SA_NPEAV123@0W4StringComparison@23@@Z.exit": ; preds = %entry, %if.end.i, %if.end2.i, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit19.i", %for.body.i.preheader.i, %exit.loopexit27.i
  %__return.0.i = phi i1 [ true, %entry ], [ false, %if.end.i ], [ false, %if.end2.i ], [ true, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit19.i" ], [ false, %for.body.i.preheader.i ], [ %28, %exit.loopexit27.i ]
  ret i1 %__return.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @"?Clear@String@System@bf@@QEAAXXZ"(ptr nocapture writeonly %this) local_unnamed_addr #7 {
entry:
  %0 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 1
  store i32 0, ptr %0, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @"?CalcNewSize@String@System@bf@@AEAATint@@Tint@@@Z"(ptr nocapture readonly %this, i64 %minSize) local_unnamed_addr #3 {
entry:
  %0 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 2
  %1 = load i32, ptr %0, align 4
  %2 = and i32 %1, 1073741823
  %3 = zext nneg i32 %2 to i64
  %4 = lshr i64 %3, 1
  %5 = add nuw nsw i64 %4, %3
  %6 = tail call i64 @llvm.smax.i64(i64 %5, i64 %minSize)
  ret i64 %6
}

; Function Attrs: alwaysinline nounwind uwtable
define void @"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z"(ptr %this, i64 %newSize) local_unnamed_addr #8 {
entry:
  %0 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 2
  %1 = load i32, ptr %0, align 4
  %2 = and i32 %1, 1073741823
  %3 = zext nneg i32 %2 to i64
  %4 = icmp slt i64 %3, %newSize
  br i1 %4, label %if.then, label %exit

if.then:                                          ; preds = %entry
  %5 = lshr i64 %3, 1
  %6 = add nuw nsw i64 %5, %3
  %7 = tail call i64 @llvm.smax.i64(i64 %6, i64 %newSize)
  %8 = icmp ult i64 %7, 1073741824
  tail call void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext %8, ptr nonnull @__bfStrObj66, ptr nonnull @__bfStrObj67, i64 866)
  %9 = load ptr, ptr %this, align 8
  %10 = getelementptr inbounds ptr, ptr %9, i64 6
  %11 = load ptr, ptr %10, align 8
  %Alloc.i = tail call ptr %11(ptr nonnull %this, i64 %7, i64 1) #15
  %12 = load i32, ptr %0, align 4
  %13 = and i32 %12, 1073741824
  %.not.i.i = icmp eq i32 %13, 0
  %14 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  br i1 %.not.i.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i", label %cond.then.i.i

cond.then.i.i:                                    ; preds = %if.then
  %15 = load ptr, ptr %14, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i":  ; preds = %cond.then.i.i, %if.then
  %16 = phi ptr [ %15, %cond.then.i.i ], [ %14, %if.then ]
  %17 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = sext i32 %18 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %Alloc.i, ptr align 1 %16, i64 %19, i1 false)
  %20 = load i32, ptr %0, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %if.then.i, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit"

if.then.i:                                        ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i"
  %22 = load ptr, ptr %14, align 8
  %.not.i = icmp eq ptr %22, null
  br i1 %.not.i, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit", label %delete.body.i

delete.body.i:                                    ; preds = %if.then.i
  %23 = load ptr, ptr %this, align 8
  %24 = getelementptr inbounds ptr, ptr %23, i64 7
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr nonnull %this, ptr nonnull %22) #15
  br label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit"

"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit":  ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i", %if.then.i, %delete.body.i
  store ptr %Alloc.i, ptr %14, align 8
  %26 = trunc i64 %7 to i32
  %27 = or i32 %26, -1073741824
  store i32 %27, ptr %0, align 4
  br label %exit

exit:                                             ; preds = %entry, %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit"
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Realloc@String@System@bf@@AEAAXTint@@@Z"(ptr %this, i64 %newSize) local_unnamed_addr #4 {
entry:
  %0 = icmp ult i64 %newSize, 1073741824
  tail call void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext %0, ptr nonnull @__bfStrObj66, ptr nonnull @__bfStrObj67, i64 866)
  %1 = load ptr, ptr %this, align 8
  %2 = getelementptr inbounds ptr, ptr %1, i64 6
  %3 = load ptr, ptr %2, align 8
  %Alloc = tail call ptr %3(ptr nonnull %this, i64 %newSize, i64 1) #15
  %4 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1073741824
  %.not.i = icmp eq i32 %6, 0
  %7 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  br i1 %.not.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit", label %cond.then.i

cond.then.i:                                      ; preds = %entry
  %8 = load ptr, ptr %7, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit":    ; preds = %entry, %cond.then.i
  %9 = phi ptr [ %8, %cond.then.i ], [ %7, %entry ]
  %10 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = sext i32 %11 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %Alloc, ptr align 1 %9, i64 %12, i1 false)
  %13 = load i32, ptr %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %if.then, label %if.end

if.then:                                          ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"
  %15 = load ptr, ptr %7, align 8
  %.not = icmp eq ptr %15, null
  br i1 %.not, label %if.end, label %delete.body

delete.body:                                      ; preds = %if.then
  %16 = load ptr, ptr %this, align 8
  %17 = getelementptr inbounds ptr, ptr %16, i64 7
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr nonnull %this, ptr nonnull %15) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %delete.body, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"
  store ptr %Alloc, ptr %7, align 8
  %19 = trunc i64 %newSize to i32
  %20 = or i32 %19, -1073741824
  store i32 %20, ptr %4, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Reserve@String@System@bf@@QEAAXTint@@@Z"(ptr %this, i64 %size) local_unnamed_addr #4 {
entry:
  %0 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 2
  %1 = load i32, ptr %0, align 4
  %2 = and i32 %1, 1073741823
  %3 = zext nneg i32 %2 to i64
  %4 = icmp slt i64 %3, %size
  br i1 %4, label %if.then, label %exit

if.then:                                          ; preds = %entry
  %5 = icmp ult i64 %size, 1073741824
  tail call void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext %5, ptr nonnull @__bfStrObj66, ptr nonnull @__bfStrObj67, i64 866)
  %6 = load ptr, ptr %this, align 8
  %7 = getelementptr inbounds ptr, ptr %6, i64 6
  %8 = load ptr, ptr %7, align 8
  %Alloc.i = tail call ptr %8(ptr nonnull %this, i64 %size, i64 1) #15
  %9 = load i32, ptr %0, align 4
  %10 = and i32 %9, 1073741824
  %.not.i.i = icmp eq i32 %10, 0
  %11 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  br i1 %.not.i.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i", label %cond.then.i.i

cond.then.i.i:                                    ; preds = %if.then
  %12 = load ptr, ptr %11, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i":  ; preds = %cond.then.i.i, %if.then
  %13 = phi ptr [ %12, %cond.then.i.i ], [ %11, %if.then ]
  %14 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = sext i32 %15 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %Alloc.i, ptr align 1 %13, i64 %16, i1 false)
  %17 = load i32, ptr %0, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %if.then.i, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit"

if.then.i:                                        ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i"
  %19 = load ptr, ptr %11, align 8
  %.not.i = icmp eq ptr %19, null
  br i1 %.not.i, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit", label %delete.body.i

delete.body.i:                                    ; preds = %if.then.i
  %20 = load ptr, ptr %this, align 8
  %21 = getelementptr inbounds ptr, ptr %20, i64 7
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr nonnull %this, ptr nonnull %19) #15
  br label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit"

"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit":  ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i", %if.then.i, %delete.body.i
  store ptr %Alloc.i, ptr %11, align 8
  %23 = trunc i64 %size to i32
  %24 = or i32 %23, -1073741824
  store i32 %24, ptr %0, align 4
  br label %exit

exit:                                             ; preds = %entry, %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit"
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Realloc@String@System@bf@@AEAAXPEADTint@@@Z"(ptr %this, ptr %newPtr, i64 %newSize) local_unnamed_addr #4 {
entry:
  %0 = icmp slt i64 %newSize, 2147483648
  tail call void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext %0, ptr nonnull @__bfStrObj69, ptr nonnull @__bfStrObj67, i64 886)
  %1 = icmp ult i64 %newSize, 1073741824
  tail call void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext %1, ptr nonnull @__bfStrObj66, ptr nonnull @__bfStrObj67, i64 888)
  %2 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1073741824
  %.not.i = icmp eq i32 %4, 0
  %5 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  br i1 %.not.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit", label %cond.then.i

cond.then.i:                                      ; preds = %entry
  %6 = load ptr, ptr %5, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit":    ; preds = %entry, %cond.then.i
  %7 = phi ptr [ %6, %cond.then.i ], [ %5, %entry ]
  %8 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %9 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %newPtr, ptr align 1 %7, i64 %10, i1 false)
  %11 = load i32, ptr %2, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %if.then, label %if.end

if.then:                                          ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"
  %13 = load ptr, ptr %5, align 8
  %.not = icmp eq ptr %13, null
  br i1 %.not, label %if.end, label %delete.body

delete.body:                                      ; preds = %if.then
  %14 = load ptr, ptr %this, align 8
  %15 = getelementptr inbounds ptr, ptr %14, i64 7
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr nonnull %this, ptr nonnull %13) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %delete.body, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"
  store ptr %newPtr, ptr %5, align 8
  %17 = trunc i64 %newSize to i32
  %18 = or i32 %17, -1073741824
  store i32 %18, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Append@String@System@bf@@QEAAXUStringView@23@@Z"(ptr %this, ptr nocapture readonly %strView_mPtr, i64 %strView_mLength) local_unnamed_addr #4 {
entry:
  tail call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %this, ptr %strView_mPtr, i64 %strView_mLength)
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %this, ptr nocapture readonly %appendPtr, i64 %length) local_unnamed_addr #4 {
entry:
  %0 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 1
  %1 = load i32, ptr %0, align 4
  %2 = sext i32 %1 to i64
  %3 = add i64 %2, %length
  %4 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1073741823
  %7 = zext nneg i32 %6 to i64
  %8 = icmp sgt i64 %3, %7
  br i1 %8, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = lshr i64 %7, 1
  %10 = add nuw nsw i64 %9, %7
  %11 = tail call i64 @llvm.smax.i64(i64 %10, i64 %3)
  %12 = load ptr, ptr %this, align 8
  %13 = getelementptr inbounds ptr, ptr %12, i64 6
  %14 = load ptr, ptr %13, align 8
  %Alloc = tail call ptr %14(ptr nonnull %this, i64 %11, i64 1) #15
  %15 = load i32, ptr %0, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %Alloc, i64 %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %17, ptr align 1 %appendPtr, i64 %length, i1 false)
  %18 = icmp ult i64 %11, 2147483648
  tail call void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext %18, ptr nonnull @__bfStrObj69, ptr nonnull @__bfStrObj67, i64 886)
  %19 = icmp ult i64 %11, 1073741824
  tail call void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext %19, ptr nonnull @__bfStrObj66, ptr nonnull @__bfStrObj67, i64 888)
  %20 = load i32, ptr %4, align 4
  %21 = and i32 %20, 1073741824
  %.not.i.i = icmp eq i32 %21, 0
  %22 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  br i1 %.not.i.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i", label %cond.then.i.i

cond.then.i.i:                                    ; preds = %if.then
  %23 = load ptr, ptr %22, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i":  ; preds = %cond.then.i.i, %if.then
  %24 = phi ptr [ %23, %cond.then.i.i ], [ %22, %if.then ]
  %25 = load i32, ptr %0, align 4
  %26 = sext i32 %25 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %Alloc, ptr align 1 %24, i64 %26, i1 false)
  %27 = load i32, ptr %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %if.then.i, label %"?Realloc@String@System@bf@@AEAAXPEADTint@@@Z.exit"

if.then.i:                                        ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i"
  %29 = load ptr, ptr %22, align 8
  %.not.i = icmp eq ptr %29, null
  br i1 %.not.i, label %"?Realloc@String@System@bf@@AEAAXPEADTint@@@Z.exit", label %delete.body.i

delete.body.i:                                    ; preds = %if.then.i
  %30 = load ptr, ptr %this, align 8
  %31 = getelementptr inbounds ptr, ptr %30, i64 7
  %32 = load ptr, ptr %31, align 8
  tail call void %32(ptr nonnull %this, ptr nonnull %29) #15
  br label %"?Realloc@String@System@bf@@AEAAXPEADTint@@@Z.exit"

"?Realloc@String@System@bf@@AEAAXPEADTint@@@Z.exit": ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i", %if.then.i, %delete.body.i
  store ptr %Alloc, ptr %22, align 8
  %33 = trunc i64 %11 to i32
  %34 = or i32 %33, -1073741824
  store i32 %34, ptr %4, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %35 = and i32 %5, 1073741824
  %.not.i6 = icmp eq i32 %35, 0
  %36 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  br i1 %.not.i6, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit", label %cond.then.i

cond.then.i:                                      ; preds = %if.else
  %37 = load ptr, ptr %36, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit":    ; preds = %if.else, %cond.then.i
  %38 = phi ptr [ %37, %cond.then.i ], [ %36, %if.else ]
  %39 = getelementptr inbounds i8, ptr %38, i64 %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %39, ptr align 1 %appendPtr, i64 %length, i1 false)
  br label %if.end

if.end:                                           ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit", %"?Realloc@String@System@bf@@AEAAXPEADTint@@@Z.exit"
  %40 = trunc i64 %3 to i32
  store i32 %40, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Append@String@System@bf@@QEAAXPEAV?$Array1@D@23@Tint@@1@Z"(ptr %this, ptr nocapture readonly %arr, i64 %idx, i64 %length) local_unnamed_addr #4 {
entry:
  %0 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 1
  %1 = load i32, ptr %0, align 4
  %2 = sext i32 %1 to i64
  %3 = add i64 %2, %length
  %4 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1073741823
  %7 = zext nneg i32 %6 to i64
  %8 = icmp sgt i64 %3, %7
  br i1 %8, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %9 = lshr i64 %7, 1
  %10 = add nuw nsw i64 %9, %7
  %11 = tail call i64 @llvm.smax.i64(i64 %10, i64 %3)
  %12 = load ptr, ptr %this, align 8
  %13 = getelementptr inbounds ptr, ptr %12, i64 6
  %14 = load ptr, ptr %13, align 8
  %Alloc = tail call ptr %14(ptr nonnull %this, i64 %11, i64 1) #15
  %15 = load i32, ptr %0, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, ptr %Alloc, i64 %16
  %18 = getelementptr inbounds %"corlib.?$Array1@D@System@bf", ptr %arr, i64 0, i32 1
  %19 = getelementptr inbounds i8, ptr %18, i64 %idx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %17, ptr nonnull align 1 %19, i64 %length, i1 false)
  %20 = icmp ult i64 %11, 2147483648
  tail call void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext %20, ptr nonnull @__bfStrObj69, ptr nonnull @__bfStrObj67, i64 886)
  %21 = icmp ult i64 %11, 1073741824
  tail call void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext %21, ptr nonnull @__bfStrObj66, ptr nonnull @__bfStrObj67, i64 888)
  %22 = load i32, ptr %4, align 4
  %23 = and i32 %22, 1073741824
  %.not.i.i = icmp eq i32 %23, 0
  %24 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  br i1 %.not.i.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i", label %cond.then.i.i

cond.then.i.i:                                    ; preds = %if.then
  %25 = load ptr, ptr %24, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i":  ; preds = %cond.then.i.i, %if.then
  %26 = phi ptr [ %25, %cond.then.i.i ], [ %24, %if.then ]
  %27 = load i32, ptr %0, align 4
  %28 = sext i32 %27 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %Alloc, ptr align 1 %26, i64 %28, i1 false)
  %29 = load i32, ptr %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %if.then.i, label %"?Realloc@String@System@bf@@AEAAXPEADTint@@@Z.exit"

if.then.i:                                        ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i"
  %31 = load ptr, ptr %24, align 8
  %.not.i = icmp eq ptr %31, null
  br i1 %.not.i, label %"?Realloc@String@System@bf@@AEAAXPEADTint@@@Z.exit", label %delete.body.i

delete.body.i:                                    ; preds = %if.then.i
  %32 = load ptr, ptr %this, align 8
  %33 = getelementptr inbounds ptr, ptr %32, i64 7
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr nonnull %this, ptr nonnull %31) #15
  br label %"?Realloc@String@System@bf@@AEAAXPEADTint@@@Z.exit"

"?Realloc@String@System@bf@@AEAAXPEADTint@@@Z.exit": ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i", %if.then.i, %delete.body.i
  store ptr %Alloc, ptr %24, align 8
  %35 = trunc i64 %11 to i32
  %36 = or i32 %35, -1073741824
  store i32 %36, ptr %4, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  %37 = and i32 %5, 1073741824
  %.not.i7 = icmp eq i32 %37, 0
  %38 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  br i1 %.not.i7, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit", label %cond.then.i

cond.then.i:                                      ; preds = %if.else
  %39 = load ptr, ptr %38, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit":    ; preds = %if.else, %cond.then.i
  %40 = phi ptr [ %39, %cond.then.i ], [ %38, %if.else ]
  %41 = getelementptr inbounds i8, ptr %40, i64 %2
  %42 = getelementptr inbounds %"corlib.?$Array1@D@System@bf", ptr %arr, i64 0, i32 1
  %43 = getelementptr inbounds i8, ptr %42, i64 %idx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %41, ptr nonnull align 1 %43, i64 %length, i1 false)
  br label %if.end

if.end:                                           ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit", %"?Realloc@String@System@bf@@AEAAXPEADTint@@@Z.exit"
  %44 = trunc i64 %3 to i32
  store i32 %44, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @"?PrepareBuffer@String@System@bf@@QEAAPEADTint@@@Z"(ptr %this, i64 %bytes) local_unnamed_addr #4 {
entry:
  %0 = icmp slt i64 %bytes, 1
  br i1 %0, label %exit, label %if.end

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 1
  %2 = load i32, ptr %1, align 4
  %3 = sext i32 %2 to i64
  %4 = add nuw i64 %bytes, 1
  %5 = add i64 %4, %3
  %6 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1073741823
  %9 = zext nneg i32 %8 to i64
  %10 = icmp sgt i64 %5, %9
  br i1 %10, label %if.then.i, label %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit"

if.then.i:                                        ; preds = %if.end
  %11 = lshr i64 %9, 1
  %12 = add nuw nsw i64 %11, %9
  %13 = tail call i64 @llvm.smax.i64(i64 %12, i64 %5)
  %14 = icmp ult i64 %13, 1073741824
  tail call void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext %14, ptr nonnull @__bfStrObj66, ptr nonnull @__bfStrObj67, i64 866)
  %15 = load ptr, ptr %this, align 8
  %16 = getelementptr inbounds ptr, ptr %15, i64 6
  %17 = load ptr, ptr %16, align 8
  %Alloc.i = tail call ptr %17(ptr nonnull %this, i64 %13, i64 1) #15
  %18 = load i32, ptr %6, align 4
  %19 = and i32 %18, 1073741824
  %.not.i.i = icmp eq i32 %19, 0
  %20 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  br i1 %.not.i.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i", label %cond.then.i.i

cond.then.i.i:                                    ; preds = %if.then.i
  %21 = load ptr, ptr %20, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i":  ; preds = %cond.then.i.i, %if.then.i
  %22 = phi ptr [ %21, %cond.then.i.i ], [ %20, %if.then.i ]
  %23 = load i32, ptr %1, align 4
  %24 = sext i32 %23 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %Alloc.i, ptr align 1 %22, i64 %24, i1 false)
  %25 = load i32, ptr %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %if.then.i1, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit"

if.then.i1:                                       ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i"
  %27 = load ptr, ptr %20, align 8
  %.not.i = icmp eq ptr %27, null
  br i1 %.not.i, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit", label %delete.body.i

delete.body.i:                                    ; preds = %if.then.i1
  %28 = load ptr, ptr %this, align 8
  %29 = getelementptr inbounds ptr, ptr %28, i64 7
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr nonnull %this, ptr nonnull %27) #15
  br label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit"

"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit":  ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i", %if.then.i1, %delete.body.i
  store ptr %Alloc.i, ptr %20, align 8
  %31 = trunc i64 %13 to i32
  %32 = or i32 %31, -1073741824
  store i32 %32, ptr %6, align 4
  br label %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit"

"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit": ; preds = %if.end, %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit"
  %33 = phi i32 [ %7, %if.end ], [ %32, %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit" ]
  %34 = and i32 %33, 1073741824
  %.not.i2 = icmp eq i32 %34, 0
  %35 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  br i1 %.not.i2, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit", label %cond.then.i

cond.then.i:                                      ; preds = %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit"
  %36 = load ptr, ptr %35, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit":    ; preds = %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit", %cond.then.i
  %37 = phi ptr [ %36, %cond.then.i ], [ %35, %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit" ]
  %38 = load i32, ptr %1, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, ptr %37, i64 %39
  %41 = trunc i64 %bytes to i32
  %42 = add i32 %38, %41
  store i32 %42, ptr %1, align 4
  br label %exit

exit:                                             ; preds = %entry, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"
  %__return.0 = phi ptr [ %40, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit" ], [ null, %entry ]
  ret ptr %__return.0
}

; Function Attrs: nounwind uwtable
define void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr %this, ptr nocapture readonly %value) local_unnamed_addr #4 {
entry:
  %0 = getelementptr inbounds %"corlib.String@System@bf", ptr %value, i64 0, i32 2
  %1 = load i32, ptr %0, align 4
  %2 = and i32 %1, 1073741824
  %.not.i = icmp eq i32 %2, 0
  %3 = getelementptr inbounds %"corlib.String@System@bf", ptr %value, i64 0, i32 3
  br i1 %.not.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit", label %cond.then.i

cond.then.i:                                      ; preds = %entry
  %4 = load ptr, ptr %3, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit":    ; preds = %entry, %cond.then.i
  %5 = phi ptr [ %4, %cond.then.i ], [ %3, %entry ]
  %6 = getelementptr inbounds %"corlib.String@System@bf", ptr %value, i64 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  tail call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %this, ptr %5, i64 %8)
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Append@String@System@bf@@QEAAXTparams@@U?$Span@UStringView@System@bf@@@23@@Z"(ptr %this, ptr %strings_mPtr, i64 %strings_mLength) local_unnamed_addr #4 {
entry:
  %0 = alloca %"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf", align 8
  %1 = alloca %"corlib.?$Result@UStringView@System@bf@@@System@bf", align 8
  call void @"?GetEnumerator__im@?$Span@UStringView@System@bf@@@System@bf@@QEAA?AUEnumerator@123@XZ"(ptr nonnull sret(%"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf") %0, ptr %strings_mPtr, i64 %strings_mLength)
  %2 = getelementptr inbounds %"corlib.?$Result@UStringView@System@bf@@@System@bf", ptr %1, i64 0, i32 2
  %3 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %1, i64 0, i32 1
  %4 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %1, i64 0, i32 2
  br label %foreach.cond

foreach.cond:                                     ; preds = %foreach.body, %entry
  call void @"?GetNext@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@QEAA?AU?$Result@?AUStringView@System@bf@@@34@XZ"(ptr nonnull %0, ptr nonnull sret(%"corlib.?$Result@UStringView@System@bf@@@System@bf") %1)
  %5 = load i8, ptr %2, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %foreach.body, label %foreach.end

foreach.body:                                     ; preds = %foreach.cond
  %7 = load ptr, ptr %3, align 8
  %8 = load i64, ptr %4, align 8
  call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %this, ptr %7, i64 %8)
  br label %foreach.cond

foreach.end:                                      ; preds = %foreach.cond
  call void @"?Dispose__im@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@QEAAXXZ"(ptr nocapture nonnull dereferenceable(32) %0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Append@String@System@bf@@QEAAXD@Z"(ptr %this, i8 %c) local_unnamed_addr #4 {
entry:
  %0 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 1
  %1 = load i32, ptr %0, align 4
  %2 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = and i32 %3, 1073741823
  %.not = icmp slt i32 %1, %4
  br i1 %.not, label %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit", label %if.then.i

if.then.i:                                        ; preds = %entry
  %5 = zext nneg i32 %4 to i64
  %6 = zext nneg i32 %1 to i64
  %7 = add nuw nsw i64 %6, 1
  %8 = lshr i64 %5, 1
  %9 = add nuw nsw i64 %8, %5
  %10 = tail call i64 @llvm.smax.i64(i64 %9, i64 %7)
  %11 = icmp ult i64 %10, 1073741824
  tail call void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext %11, ptr nonnull @__bfStrObj66, ptr nonnull @__bfStrObj67, i64 866)
  %12 = load ptr, ptr %this, align 8
  %13 = getelementptr inbounds ptr, ptr %12, i64 6
  %14 = load ptr, ptr %13, align 8
  %Alloc.i = tail call ptr %14(ptr nonnull %this, i64 %10, i64 1) #15
  %15 = load i32, ptr %2, align 4
  %16 = and i32 %15, 1073741824
  %.not.i.i = icmp eq i32 %16, 0
  %17 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  br i1 %.not.i.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i", label %cond.then.i.i

cond.then.i.i:                                    ; preds = %if.then.i
  %18 = load ptr, ptr %17, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i":  ; preds = %cond.then.i.i, %if.then.i
  %19 = phi ptr [ %18, %cond.then.i.i ], [ %17, %if.then.i ]
  %20 = load i32, ptr %0, align 4
  %21 = sext i32 %20 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %Alloc.i, ptr align 1 %19, i64 %21, i1 false)
  %22 = load i32, ptr %2, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %if.then.i1, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit"

if.then.i1:                                       ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i"
  %24 = load ptr, ptr %17, align 8
  %.not.i = icmp eq ptr %24, null
  br i1 %.not.i, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit", label %delete.body.i

delete.body.i:                                    ; preds = %if.then.i1
  %25 = load ptr, ptr %this, align 8
  %26 = getelementptr inbounds ptr, ptr %25, i64 7
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr nonnull %this, ptr nonnull %24) #15
  br label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit"

"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit":  ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i", %if.then.i1, %delete.body.i
  store ptr %Alloc.i, ptr %17, align 8
  %28 = trunc i64 %10 to i32
  %29 = or i32 %28, -1073741824
  store i32 %29, ptr %2, align 4
  br label %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit"

"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit": ; preds = %entry, %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit"
  %30 = phi i32 [ %3, %entry ], [ %29, %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit" ]
  %31 = and i32 %30, 1073741824
  %.not.i2 = icmp eq i32 %31, 0
  %32 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  br i1 %.not.i2, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit", label %cond.then.i

cond.then.i:                                      ; preds = %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit"
  %33 = load ptr, ptr %32, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit":    ; preds = %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit", %cond.then.i
  %34 = phi ptr [ %33, %cond.then.i ], [ %32, %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit" ]
  %35 = load i32, ptr %0, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %0, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, ptr %34, i64 %37
  store i8 %c, ptr %38, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Append@String@System@bf@@QEAAXDTint@@@Z"(ptr %this, i8 %c, i64 %count) local_unnamed_addr #4 {
entry:
  %0 = icmp slt i64 %count, 1
  br i1 %0, label %exit, label %if.end

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 1
  %2 = load i32, ptr %1, align 4
  %3 = sext i32 %2 to i64
  %4 = add i64 %3, %count
  %5 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1073741823
  %8 = zext nneg i32 %7 to i64
  %9 = icmp sgt i64 %4, %8
  br i1 %9, label %if.then.i, label %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit"

if.then.i:                                        ; preds = %if.end
  %10 = lshr i64 %8, 1
  %11 = add nuw nsw i64 %10, %8
  %12 = tail call i64 @llvm.smax.i64(i64 %11, i64 %4)
  %13 = icmp ult i64 %12, 1073741824
  tail call void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext %13, ptr nonnull @__bfStrObj66, ptr nonnull @__bfStrObj67, i64 866)
  %14 = load ptr, ptr %this, align 8
  %15 = getelementptr inbounds ptr, ptr %14, i64 6
  %16 = load ptr, ptr %15, align 8
  %Alloc.i = tail call ptr %16(ptr nonnull %this, i64 %12, i64 1) #15
  %17 = load i32, ptr %5, align 4
  %18 = and i32 %17, 1073741824
  %.not.i.i = icmp eq i32 %18, 0
  %19 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  br i1 %.not.i.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i", label %cond.then.i.i

cond.then.i.i:                                    ; preds = %if.then.i
  %20 = load ptr, ptr %19, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i":  ; preds = %cond.then.i.i, %if.then.i
  %21 = phi ptr [ %20, %cond.then.i.i ], [ %19, %if.then.i ]
  %22 = load i32, ptr %1, align 4
  %23 = sext i32 %22 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %Alloc.i, ptr align 1 %21, i64 %23, i1 false)
  %24 = load i32, ptr %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %if.then.i2, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit"

if.then.i2:                                       ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i"
  %26 = load ptr, ptr %19, align 8
  %.not.i = icmp eq ptr %26, null
  br i1 %.not.i, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit", label %delete.body.i

delete.body.i:                                    ; preds = %if.then.i2
  %27 = load ptr, ptr %this, align 8
  %28 = getelementptr inbounds ptr, ptr %27, i64 7
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr nonnull %this, ptr nonnull %26) #15
  br label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit"

"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit":  ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i", %if.then.i2, %delete.body.i
  store ptr %Alloc.i, ptr %19, align 8
  %30 = trunc i64 %12 to i32
  %31 = or i32 %30, -1073741824
  store i32 %31, ptr %5, align 4
  br label %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit"

"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit": ; preds = %if.end, %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit"
  %32 = phi i32 [ %6, %if.end ], [ %31, %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit" ]
  %33 = and i32 %32, 1073741824
  %.not.i3 = icmp eq i32 %33, 0
  %34 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  br i1 %.not.i3, label %for.body.preheader, label %cond.then.i

cond.then.i:                                      ; preds = %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit"
  %35 = load ptr, ptr %34, align 8
  br label %for.body.preheader

for.body.preheader:                               ; preds = %cond.then.i, %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit"
  %36 = phi ptr [ %35, %cond.then.i ], [ %34, %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit" ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %i.04 = phi i32 [ %41, %for.body ], [ 0, %for.body.preheader ]
  %37 = load i32, ptr %1, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %1, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, ptr %36, i64 %39
  store i8 %c, ptr %40, align 1
  %41 = add i32 %i.04, 1
  %42 = sext i32 %41 to i64
  %43 = icmp slt i64 %42, %count
  br i1 %43, label %for.body, label %exit

exit:                                             ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?EnsureNullTerminator@String@System@bf@@QEAAXXZ"(ptr %this) local_unnamed_addr #4 {
entry:
  %0 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 2
  %1 = load i32, ptr %0, align 4
  %2 = and i32 %1, 1073741823
  %3 = zext nneg i32 %2 to i64
  %4 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = sext i32 %5 to i64
  %7 = icmp eq i32 %2, %5
  br i1 %7, label %if.then, label %lor.rhs

lor.rhs:                                          ; preds = %entry
  %8 = and i32 %1, 1073741824
  %.not.i = icmp eq i32 %8, 0
  %9 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  br i1 %.not.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit", label %cond.then.i

cond.then.i:                                      ; preds = %lor.rhs
  %10 = load ptr, ptr %9, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit":    ; preds = %lor.rhs, %cond.then.i
  %11 = phi ptr [ %10, %cond.then.i ], [ %9, %lor.rhs ]
  %12 = getelementptr inbounds i8, ptr %11, i64 %6
  %13 = load i8, ptr %12, align 1
  %.not = icmp eq i8 %13, 0
  br i1 %.not, label %exit, label %if.then

if.then:                                          ; preds = %entry, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"
  %.not7 = icmp slt i32 %5, %2
  br i1 %.not7, label %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit", label %if.then.i

if.then.i:                                        ; preds = %if.then
  %14 = add nsw i64 %6, 1
  %15 = lshr i64 %3, 1
  %16 = add nuw nsw i64 %15, %3
  %17 = tail call i64 @llvm.smax.i64(i64 %16, i64 %14)
  %18 = icmp ult i64 %17, 1073741824
  tail call void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext %18, ptr nonnull @__bfStrObj66, ptr nonnull @__bfStrObj67, i64 866)
  %19 = load ptr, ptr %this, align 8
  %20 = getelementptr inbounds ptr, ptr %19, i64 6
  %21 = load ptr, ptr %20, align 8
  %Alloc.i = tail call ptr %21(ptr nonnull %this, i64 %17, i64 1) #15
  %22 = load i32, ptr %0, align 4
  %23 = and i32 %22, 1073741824
  %.not.i.i = icmp eq i32 %23, 0
  %24 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  br i1 %.not.i.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i", label %cond.then.i.i

cond.then.i.i:                                    ; preds = %if.then.i
  %25 = load ptr, ptr %24, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i":  ; preds = %cond.then.i.i, %if.then.i
  %26 = phi ptr [ %25, %cond.then.i.i ], [ %24, %if.then.i ]
  %27 = load i32, ptr %4, align 4
  %28 = sext i32 %27 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %Alloc.i, ptr align 1 %26, i64 %28, i1 false)
  %29 = load i32, ptr %0, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %if.then.i2, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit"

if.then.i2:                                       ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i"
  %31 = load ptr, ptr %24, align 8
  %.not.i3 = icmp eq ptr %31, null
  br i1 %.not.i3, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit", label %delete.body.i

delete.body.i:                                    ; preds = %if.then.i2
  %32 = load ptr, ptr %this, align 8
  %33 = getelementptr inbounds ptr, ptr %32, i64 7
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr nonnull %this, ptr nonnull %31) #15
  br label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit"

"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit":  ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i", %if.then.i2, %delete.body.i
  store ptr %Alloc.i, ptr %24, align 8
  %35 = trunc i64 %17 to i32
  %36 = or i32 %35, -1073741824
  store i32 %36, ptr %0, align 4
  br label %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit"

"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit": ; preds = %if.then, %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit"
  %37 = phi i32 [ %1, %if.then ], [ %36, %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit" ]
  %38 = and i32 %37, 1073741824
  %.not.i4 = icmp eq i32 %38, 0
  %39 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  br i1 %.not.i4, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit6", label %cond.then.i5

cond.then.i5:                                     ; preds = %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit"
  %40 = load ptr, ptr %39, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit6"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit6":   ; preds = %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit", %cond.then.i5
  %41 = phi ptr [ %40, %cond.then.i5 ], [ %39, %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit" ]
  %42 = load i32, ptr %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, ptr %41, i64 %43
  store i8 0, ptr %44, align 1
  br label %exit

exit:                                             ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit", %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit6"
  ret void
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @"?get__@UCHK$String@System@bf@@QEAAAEADTint@@@Z"(ptr readonly %this, i64 %index) local_unnamed_addr #5 {
entry:
  %0 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 2
  %1 = load i32, ptr %0, align 4
  %2 = and i32 %1, 1073741824
  %.not.i = icmp eq i32 %2, 0
  %3 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  br i1 %.not.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit", label %cond.then.i

cond.then.i:                                      ; preds = %entry
  %4 = load ptr, ptr %3, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit":    ; preds = %entry, %cond.then.i
  %5 = phi ptr [ %4, %cond.then.i ], [ %3, %entry ]
  %6 = getelementptr inbounds i8, ptr %5, i64 %index
  ret ptr %6
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define void @"?set__@UCHK$String@System@bf@@QEAAXDTint@@@Z"(ptr nocapture %this, i8 %value, i64 %index) local_unnamed_addr #9 {
entry:
  %0 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 2
  %1 = load i32, ptr %0, align 4
  %2 = and i32 %1, 1073741824
  %.not.i = icmp eq i32 %2, 0
  %3 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  br i1 %.not.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit", label %cond.then.i

cond.then.i:                                      ; preds = %entry
  %4 = load ptr, ptr %3, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit":    ; preds = %entry, %cond.then.i
  %5 = phi ptr [ %4, %cond.then.i ], [ %3, %entry ]
  %6 = getelementptr inbounds i8, ptr %5, i64 %index
  store i8 %value, ptr %6, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @"?FormatError@String@System@bf@@AEAA?AU?$Result@X@23@XZ"(ptr nocapture readnone %this, ptr noalias nocapture writeonly sret(%"corlib.?$Result@X@System@bf") %0) local_unnamed_addr #7 {
entry:
  %.repack2 = getelementptr inbounds %"corlib.?$Result@X@System@bf", ptr %0, i64 0, i32 2
  store i8 1, ptr %.repack2, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?AppendF@String@System@bf@@QEAA?AU?$Result@X@23@PEAVIFormatProvider@23@UStringView@23@Tparams@@U?$Span@PEAVObject@System@bf@@@23@@Z"(ptr %this, ptr noalias nocapture writeonly sret(%"corlib.?$Result@X@System@bf") %0, ptr %provider, ptr nocapture readonly %format, ptr nocapture readonly %args) local_unnamed_addr #4 {
entry:
  %1 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %format, i64 0, i32 1
  %2 = load ptr, ptr %1, align 8
  %3 = icmp eq ptr %2, null
  br i1 %3, label %exit.sink.split, label %if.end

if.end:                                           ; preds = %entry
  %4 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %format, i64 0, i32 2
  %5 = load i64, ptr %4, align 8
  %6 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 1
  %7 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 2
  %8 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  %9 = getelementptr inbounds %"corlib.?$Span@PEAVObject@System@bf@@@System@bf", ptr %args, i64 0, i32 1
  %10 = getelementptr inbounds %"corlib.?$Span@PEAVObject@System@bf@@@System@bf", ptr %args, i64 0, i32 2
  %11 = icmp eq ptr %provider, null
  %12 = load i32, ptr @"?sBfSlotOfs@IFormattable@System@bf@@2HA", align 4
  %13 = shl i32 %12, 2
  %14 = zext i32 %13 to i64
  %15 = sext i32 %12 to i64
  br label %while.cond

while.cond:                                       ; preds = %if.end169, %if.end
  %autoArgIdx.0 = phi i64 [ 0, %if.end ], [ %autoArgIdx.1, %if.end169 ]
  %fmt.0 = phi ptr [ @__bfStrObj1, %if.end ], [ %fmt.4475, %if.end169 ]
  %s.0 = phi ptr [ null, %if.end ], [ %s.2, %if.end169 ]
  %deferredCallTail.0 = phi ptr [ null, %if.end ], [ %deferredCallTail.6, %if.end169 ]
  %ch.0 = phi i8 [ 0, %if.end ], [ 125, %if.end169 ]
  %pos.0 = phi i64 [ 0, %if.end ], [ %.pre-phi, %if.end169 ]
  %16 = sub i64 %5, %pos.0
  %17 = load i32, ptr %6, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 %16, %18
  %20 = load i32, ptr %7, align 4
  %21 = and i32 %20, 1073741823
  %22 = zext nneg i32 %21 to i64
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %if.then.i, label %"?Reserve@String@System@bf@@QEAAXTint@@@Z.exit"

if.then.i:                                        ; preds = %while.cond
  %24 = icmp ult i64 %19, 1073741824
  call void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext %24, ptr nonnull @__bfStrObj66, ptr nonnull @__bfStrObj67, i64 866)
  %25 = load ptr, ptr %this, align 8
  %26 = getelementptr inbounds ptr, ptr %25, i64 6
  %27 = load ptr, ptr %26, align 8
  %Alloc.i.i = call ptr %27(ptr nonnull %this, i64 %19, i64 1) #15
  %28 = load i32, ptr %7, align 4
  %29 = and i32 %28, 1073741824
  %.not.i.i.i = icmp eq i32 %29, 0
  br i1 %.not.i.i.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i", label %cond.then.i.i.i

cond.then.i.i.i:                                  ; preds = %if.then.i
  %30 = load ptr, ptr %8, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i": ; preds = %cond.then.i.i.i, %if.then.i
  %31 = phi ptr [ %30, %cond.then.i.i.i ], [ %8, %if.then.i ]
  %32 = load i32, ptr %6, align 4
  %33 = sext i32 %32 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %Alloc.i.i, ptr align 1 %31, i64 %33, i1 false)
  %34 = load i32, ptr %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %if.then.i.i, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i"

if.then.i.i:                                      ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i"
  %36 = load ptr, ptr %8, align 8
  %.not.i.i = icmp eq ptr %36, null
  br i1 %.not.i.i, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i", label %delete.body.i.i

delete.body.i.i:                                  ; preds = %if.then.i.i
  %37 = load ptr, ptr %this, align 8
  %38 = getelementptr inbounds ptr, ptr %37, i64 7
  %39 = load ptr, ptr %38, align 8
  call void %39(ptr nonnull %this, ptr nonnull %36) #15
  br label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i"

"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i": ; preds = %delete.body.i.i, %if.then.i.i, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i"
  store ptr %Alloc.i.i, ptr %8, align 8
  %40 = trunc i64 %19 to i32
  %41 = or i32 %40, -1073741824
  store i32 %41, ptr %7, align 4
  br label %"?Reserve@String@System@bf@@QEAAXTint@@@Z.exit"

"?Reserve@String@System@bf@@QEAAXTint@@@Z.exit":  ; preds = %while.cond, %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i"
  %42 = phi i32 [ %20, %while.cond ], [ %41, %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i" ]
  %43 = and i32 %42, 1073741824
  %.not.i = icmp eq i32 %43, 0
  br i1 %.not.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit", label %cond.then.i

cond.then.i:                                      ; preds = %"?Reserve@String@System@bf@@QEAAXTint@@@Z.exit"
  %44 = load ptr, ptr %8, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit":    ; preds = %"?Reserve@String@System@bf@@QEAAXTint@@@Z.exit", %cond.then.i
  %45 = phi ptr [ %44, %cond.then.i ], [ %8, %"?Reserve@String@System@bf@@QEAAXTint@@@Z.exit" ]
  %46 = icmp slt i64 %pos.0, %5
  br i1 %46, label %while.body5, label %while.end

while.body5:                                      ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit", %if.end19
  %pos.1503 = phi i64 [ %pos.3, %if.end19 ], [ %pos.0, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit" ]
  %47 = load ptr, ptr %1, align 8
  %48 = getelementptr inbounds i8, ptr %47, i64 %pos.1503
  %49 = load i8, ptr %48, align 1
  %50 = add nsw i64 %pos.1503, 1
  switch i8 %49, label %if.end19 [
    i8 125, label %if.then7
    i8 123, label %if.then12
  ]

if.then7:                                         ; preds = %while.body5
  %51 = icmp slt i64 %50, %5
  br i1 %51, label %land.rhs, label %exit.sink.split

land.rhs:                                         ; preds = %if.then7
  %52 = getelementptr inbounds i8, ptr %47, i64 %50
  %53 = load i8, ptr %52, align 1
  %54 = icmp eq i8 %53, 125
  br i1 %54, label %if.end11.thread, label %exit.sink.split

if.end11.thread:                                  ; preds = %land.rhs
  %55 = add nsw i64 %pos.1503, 2
  br label %if.end19

if.then12:                                        ; preds = %while.body5
  %56 = icmp slt i64 %50, %5
  br i1 %56, label %land.rhs13, label %while.end

land.rhs13:                                       ; preds = %if.then12
  %57 = getelementptr inbounds i8, ptr %47, i64 %50
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 123
  br i1 %59, label %if.then16, label %while.end

if.then16:                                        ; preds = %land.rhs13
  %60 = add nsw i64 %pos.1503, 2
  br label %if.end19

if.end19:                                         ; preds = %while.body5, %if.end11.thread, %if.then16
  %pos.3 = phi i64 [ %60, %if.then16 ], [ %55, %if.end11.thread ], [ %50, %while.body5 ]
  %61 = load i32, ptr %6, align 4
  %62 = add i32 %61, 1
  store i32 %62, ptr %6, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, ptr %45, i64 %63
  store i8 %49, ptr %64, align 1
  %65 = icmp slt i64 %pos.3, %5
  br i1 %65, label %while.body5, label %while.end

while.end:                                        ; preds = %if.end19, %if.then12, %land.rhs13, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"
  %pos.1.lcssa = phi i64 [ %pos.0, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit" ], [ %pos.1503, %land.rhs13 ], [ %pos.1503, %if.then12 ], [ %pos.3, %if.end19 ]
  %ch.2 = phi i8 [ %ch.0, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit" ], [ 123, %land.rhs13 ], [ 123, %if.then12 ], [ %49, %if.end19 ]
  %66 = icmp eq i64 %pos.1.lcssa, %5
  br i1 %66, label %deferredCalls, label %if.end21

if.end21:                                         ; preds = %while.end
  %67 = add i64 %pos.1.lcssa, 1
  %68 = icmp eq i64 %67, %5
  br i1 %68, label %if.then26, label %lor.rhs

lor.rhs:                                          ; preds = %if.end21
  %69 = load ptr, ptr %1, align 8
  %70 = getelementptr inbounds i8, ptr %69, i64 %67
  %71 = load i8, ptr %70, align 1
  %72 = add i8 %71, -58
  %or.cond175 = icmp ult i8 %72, -10
  br i1 %or.cond175, label %if.then26, label %repeat.body

if.then26:                                        ; preds = %lor.rhs, %if.end21
  %ch.3 = phi i8 [ %ch.2, %if.end21 ], [ %71, %lor.rhs ]
  %73 = icmp slt i64 %67, %5
  br i1 %73, label %land.rhs27, label %exit.sink.split

land.rhs27:                                       ; preds = %if.then26
  switch i8 %ch.3, label %exit.sink.split [
    i8 125, label %if.then33
    i8 58, label %if.then33
    i8 44, label %if.then33
  ]

if.then33:                                        ; preds = %land.rhs27, %land.rhs27, %land.rhs27
  %74 = add i64 %autoArgIdx.0, 1
  br label %if.end45

repeat.body:                                      ; preds = %lor.rhs, %if.end39
  %index.0 = phi i16 [ %81, %if.end39 ], [ 0, %lor.rhs ]
  %ch.4 = phi i8 [ %83, %if.end39 ], [ %71, %lor.rhs ]
  %pos.5 = phi i64 [ %75, %if.end39 ], [ %67, %lor.rhs ]
  %75 = add i64 %pos.5, 1
  %76 = icmp eq i64 %75, %5
  br i1 %76, label %exit.sink.split, label %if.end39

if.end39:                                         ; preds = %repeat.body
  %77 = trunc i16 %index.0 to i8
  %78 = mul i8 %77, 10
  %79 = add i8 %78, %ch.4
  %80 = zext i8 %79 to i16
  %81 = add nsw i16 %80, -48
  %82 = getelementptr inbounds i8, ptr %69, i64 %75
  %83 = load i8, ptr %82, align 1
  %84 = add i8 %83, -48
  %85 = icmp ult i8 %84, 10
  br i1 %85, label %repeat.body, label %if.end45.loopexit

if.end45.loopexit:                                ; preds = %if.end39
  %86 = sext i16 %81 to i64
  br label %if.end45

if.end45:                                         ; preds = %if.end45.loopexit, %if.then33
  %autoArgIdx.1 = phi i64 [ %74, %if.then33 ], [ %autoArgIdx.0, %if.end45.loopexit ]
  %index.1 = phi i64 [ %autoArgIdx.0, %if.then33 ], [ %86, %if.end45.loopexit ]
  %ch.5 = phi i8 [ %ch.3, %if.then33 ], [ %83, %if.end45.loopexit ]
  %pos.6 = phi i64 [ %67, %if.then33 ], [ %75, %if.end45.loopexit ]
  %87 = load i64, ptr %10, align 8
  %.not = icmp slt i64 %index.1, %87
  br i1 %.not, label %while.cond49.preheader, label %exit.sink.split

while.cond49.preheader:                           ; preds = %if.end45
  %88 = icmp slt i64 %pos.6, %5
  br i1 %88, label %land.rhs50.lr.ph, label %while.end54

land.rhs50.lr.ph:                                 ; preds = %while.cond49.preheader
  %89 = load ptr, ptr %1, align 8
  br label %land.rhs50

land.rhs50:                                       ; preds = %land.rhs50.lr.ph, %while.body53
  %pos.7509 = phi i64 [ %pos.6, %land.rhs50.lr.ph ], [ %93, %while.body53 ]
  %90 = getelementptr inbounds i8, ptr %89, i64 %pos.7509
  %91 = load i8, ptr %90, align 1
  %92 = icmp eq i8 %91, 32
  br i1 %92, label %while.body53, label %while.end54

while.body53:                                     ; preds = %land.rhs50
  %93 = add i64 %pos.7509, 1
  %exitcond.not = icmp eq i64 %93, %5
  br i1 %exitcond.not, label %deferredCalls, label %land.rhs50

while.end54:                                      ; preds = %land.rhs50, %while.cond49.preheader
  %pos.7.lcssa = phi i64 [ %pos.6, %while.cond49.preheader ], [ %pos.7509, %land.rhs50 ]
  %ch.7 = phi i8 [ %ch.5, %while.cond49.preheader ], [ %91, %land.rhs50 ]
  %94 = icmp eq i8 %ch.7, 44
  br i1 %94, label %while.cond58.preheader, label %if.end89

while.cond58.preheader:                           ; preds = %while.end54
  %95 = add i64 %pos.7.lcssa, 1
  %smax = call i64 @llvm.smax.i64(i64 %5, i64 %95)
  %96 = add i64 %smax, -1
  br label %while.cond58

while.cond58:                                     ; preds = %while.cond58.preheader, %land.rhs59
  %pos.8.in = phi i64 [ %pos.8, %land.rhs59 ], [ %pos.7.lcssa, %while.cond58.preheader ]
  %exitcond551.not = icmp eq i64 %pos.8.in, %96
  br i1 %exitcond551.not, label %while.end63, label %land.rhs59

land.rhs59:                                       ; preds = %while.cond58
  %pos.8 = add i64 %pos.8.in, 1
  %97 = load ptr, ptr %1, align 8
  %98 = getelementptr inbounds i8, ptr %97, i64 %pos.8
  %99 = load i8, ptr %98, align 1
  %100 = icmp eq i8 %99, 32
  br i1 %100, label %while.cond58, label %while.end63

while.end63:                                      ; preds = %while.cond58, %land.rhs59
  %pos.8.in.lcssa = phi i64 [ %96, %while.cond58 ], [ %pos.8.in, %land.rhs59 ]
  %pos.8.lcssa = phi i64 [ %smax, %while.cond58 ], [ %pos.8, %land.rhs59 ]
  %101 = icmp eq i64 %pos.8.lcssa, %5
  br i1 %101, label %exit.sink.split, label %if.end65

if.end65:                                         ; preds = %while.end63
  %102 = load ptr, ptr %1, align 8
  %103 = getelementptr inbounds i8, ptr %102, i64 %pos.8.lcssa
  %104 = load i8, ptr %103, align 1
  %105 = icmp eq i8 %104, 45
  br i1 %105, label %if.then68, label %if.end73

if.then68:                                        ; preds = %if.end65
  %106 = add i64 %pos.8.in.lcssa, 2
  %107 = icmp eq i64 %106, %5
  br i1 %107, label %exit.sink.split, label %if.end71

if.end71:                                         ; preds = %if.then68
  %108 = getelementptr inbounds i8, ptr %102, i64 %106
  %109 = load i8, ptr %108, align 1
  br label %if.end73

if.end73:                                         ; preds = %if.end71, %if.end65
  %ch.8 = phi i8 [ %109, %if.end71 ], [ %104, %if.end65 ]
  %pos.9 = phi i64 [ %106, %if.end71 ], [ %pos.8.lcssa, %if.end65 ]
  %110 = add i8 %ch.8, -58
  %111 = icmp ult i8 %110, -10
  br i1 %111, label %exit.sink.split, label %repeat.body78

repeat.body78:                                    ; preds = %if.end73, %if.end81
  %width.0 = phi i16 [ %118, %if.end81 ], [ 0, %if.end73 ]
  %ch.9 = phi i8 [ %120, %if.end81 ], [ %ch.8, %if.end73 ]
  %pos.10 = phi i64 [ %112, %if.end81 ], [ %pos.9, %if.end73 ]
  %112 = add i64 %pos.10, 1
  %113 = icmp eq i64 %112, %5
  br i1 %113, label %exit.sink.split, label %if.end81

if.end81:                                         ; preds = %repeat.body78
  %114 = trunc i16 %width.0 to i8
  %115 = mul i8 %114, 10
  %116 = add i8 %115, %ch.9
  %117 = zext i8 %116 to i16
  %118 = add nsw i16 %117, -48
  %119 = getelementptr inbounds i8, ptr %102, i64 %112
  %120 = load i8, ptr %119, align 1
  %121 = add i8 %120, -48
  %122 = icmp ult i8 %121, 10
  br i1 %122, label %repeat.body78, label %if.end89.loopexit

if.end89.loopexit:                                ; preds = %if.end81
  %123 = sext i16 %118 to i64
  br label %if.end89

if.end89:                                         ; preds = %if.end89.loopexit, %while.end54
  %leftJustify.1 = phi i1 [ false, %while.end54 ], [ %105, %if.end89.loopexit ]
  %width.1 = phi i64 [ 0, %while.end54 ], [ %123, %if.end89.loopexit ]
  %ch.10 = phi i8 [ %ch.7, %while.end54 ], [ %120, %if.end89.loopexit ]
  %pos.11 = phi i64 [ %pos.7.lcssa, %while.end54 ], [ %112, %if.end89.loopexit ]
  %124 = icmp slt i64 %pos.11, %5
  br i1 %124, label %land.rhs91.lr.ph, label %while.end95

land.rhs91.lr.ph:                                 ; preds = %if.end89
  %125 = load ptr, ptr %1, align 8
  br label %land.rhs91

land.rhs91:                                       ; preds = %land.rhs91.lr.ph, %while.body94
  %pos.12515 = phi i64 [ %pos.11, %land.rhs91.lr.ph ], [ %129, %while.body94 ]
  %126 = getelementptr inbounds i8, ptr %125, i64 %pos.12515
  %127 = load i8, ptr %126, align 1
  %128 = icmp eq i8 %127, 32
  br i1 %128, label %while.body94, label %while.end95

while.body94:                                     ; preds = %land.rhs91
  %129 = add i64 %pos.12515, 1
  %exitcond552.not = icmp eq i64 %129, %5
  br i1 %exitcond552.not, label %deferredCalls, label %land.rhs91

while.end95:                                      ; preds = %land.rhs91, %if.end89
  %pos.12.lcssa = phi i64 [ %pos.11, %if.end89 ], [ %pos.12515, %land.rhs91 ]
  %ch.12 = phi i8 [ %ch.10, %if.end89 ], [ %127, %land.rhs91 ]
  %130 = load ptr, ptr %9, align 8
  %131 = getelementptr inbounds ptr, ptr %130, i64 %index.1
  %132 = load ptr, ptr %131, align 8
  switch i8 %ch.12, label %deferredCalls [
    i8 58, label %if.then98
    i8 125, label %while.end95.if.end134_crit_edge
  ]

while.end95.if.end134_crit_edge:                  ; preds = %while.end95
  %.pre = add i64 %pos.12.lcssa, 1
  br label %if.end134

if.then98:                                        ; preds = %while.end95
  %133 = icmp eq ptr %fmt.0, @__bfStrObj1
  br i1 %133, label %if.then99, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then98
  %134 = icmp eq ptr %fmt.0, null
  br i1 %134, label %if.else100, label %if.end2.i.i

if.end2.i.i:                                      ; preds = %if.end.i.i
  %135 = getelementptr inbounds %"corlib.String@System@bf", ptr %fmt.0, i64 0, i32 1
  %136 = load i32, ptr %135, align 4
  %137 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj1, i64 0, i32 1), align 4
  %.not.i.i427 = icmp eq i32 %136, %137
  br i1 %.not.i.i427, label %if.end4.i.i, label %if.else100

if.end4.i.i:                                      ; preds = %if.end2.i.i
  %138 = getelementptr inbounds %"corlib.String@System@bf", ptr %fmt.0, i64 0, i32 2
  %139 = load i32, ptr %138, align 4
  %140 = and i32 %139, 1073741824
  %.not.i.i.i428 = icmp eq i32 %140, 0
  %141 = getelementptr inbounds %"corlib.String@System@bf", ptr %fmt.0, i64 0, i32 3
  br i1 %.not.i.i.i428, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit16.i.i", label %cond.then.i15.i.i

cond.then.i15.i.i:                                ; preds = %if.end4.i.i
  %142 = load ptr, ptr %141, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit16.i.i"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit16.i.i": ; preds = %cond.then.i15.i.i, %if.end4.i.i
  %143 = phi ptr [ %142, %cond.then.i15.i.i ], [ %141, %if.end4.i.i ]
  %144 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj1, i64 0, i32 2), align 4
  %145 = and i32 %144, 1073741824
  %.not.i17.i.i = icmp eq i32 %145, 0
  br i1 %.not.i17.i.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit19.i.i", label %cond.then.i18.i.i

cond.then.i18.i.i:                                ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit16.i.i"
  %146 = load ptr, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj1, i64 0, i32 3), align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit19.i.i"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit19.i.i": ; preds = %cond.then.i18.i.i, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit16.i.i"
  %147 = phi ptr [ %146, %cond.then.i18.i.i ], [ getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj1, i64 0, i32 3), %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit16.i.i" ]
  %148 = sext i32 %136 to i64
  %149 = icmp slt i32 %136, 1
  br i1 %149, label %if.then99, label %for.body.i.preheader.i.i

for.body.i.preheader.i.i:                         ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit19.i.i"
  %150 = load i8, ptr %143, align 1
  %151 = load i8, ptr %147, align 1
  %.not.i2023.i.i = icmp eq i8 %150, %151
  br i1 %.not.i2023.i.i, label %for.cond.i.i.i, label %if.else100

for.cond.i.i.i:                                   ; preds = %for.body.i.preheader.i.i, %for.body.i.i.i
  %i.04.i24.i.i = phi i64 [ %152, %for.body.i.i.i ], [ 0, %for.body.i.preheader.i.i ]
  %152 = add nuw nsw i64 %i.04.i24.i.i, 1
  %exitcond.i.i.i = icmp eq i64 %152, %148
  br i1 %exitcond.i.i.i, label %if.then99, label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %153 = getelementptr inbounds i8, ptr %143, i64 %152
  %154 = load i8, ptr %153, align 1
  %155 = getelementptr inbounds i8, ptr %147, i64 %152
  %156 = load i8, ptr %155, align 1
  %.not.i20.i.i = icmp eq i8 %154, %156
  br i1 %.not.i20.i.i, label %for.cond.i.i.i, label %"??8String@System@bf@@SA_NPEAV012@0@Z.exit"

"??8String@System@bf@@SA_NPEAV012@0@Z.exit":      ; preds = %for.body.i.i.i
  %.not480 = icmp slt i64 %152, %148
  br i1 %.not480, label %if.else100, label %if.then99

if.then99:                                        ; preds = %for.cond.i.i.i, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit19.i.i", %if.then98, %"??8String@System@bf@@SA_NPEAV012@0@Z.exit"
  %157 = alloca [80 x i8], align 8
  %158 = alloca %_BF_DeferredData_RvYbVfd, align 8
  %159 = getelementptr inbounds %_BF_DeferredData_RvYbVfd, ptr %158, i64 0, i32 1
  store ptr %deferredCallTail.0, ptr %159, align 8
  store i64 193273528372, ptr %158, align 8
  %160 = getelementptr inbounds %_BF_DeferredData_RvYbVfd, ptr %158, i64 0, i32 2
  store ptr %157, ptr %160, align 8
  store ptr @"?sBfClassVData@String@System@bf@@2UClassVData@23@A", ptr %157, align 8
  %161 = getelementptr inbounds i8, ptr %157, i64 8
  %162 = getelementptr inbounds %"corlib.String@System@bf", ptr %157, i64 0, i32 2
  %163 = getelementptr inbounds i8, ptr %157, i64 16
  store i64 0, ptr %163, align 8
  store i32 64, ptr %162, align 4
  br label %if.end101

if.else100:                                       ; preds = %for.body.i.preheader.i.i, %if.end2.i.i, %if.end.i.i, %"??8String@System@bf@@SA_NPEAV012@0@Z.exit"
  %164 = getelementptr inbounds %"corlib.String@System@bf", ptr %fmt.0, i64 0, i32 1
  br label %if.end101

if.end101:                                        ; preds = %if.else100, %if.then99
  %.sink = phi ptr [ %164, %if.else100 ], [ %161, %if.then99 ]
  %fmt.1 = phi ptr [ %fmt.0, %if.else100 ], [ %157, %if.then99 ]
  %deferredCallTail.1 = phi ptr [ %deferredCallTail.0, %if.else100 ], [ %158, %if.then99 ]
  store i32 0, ptr %.sink, align 4
  %165 = add i64 %pos.12.lcssa, 1
  %166 = icmp eq i64 %165, %5
  br i1 %166, label %deferredCalls, label %if.end106.lr.ph

if.end106.lr.ph:                                  ; preds = %if.end101
  %167 = getelementptr inbounds %"corlib.String@System@bf", ptr %fmt.1, i64 0, i32 1
  %168 = getelementptr inbounds %"corlib.String@System@bf", ptr %fmt.1, i64 0, i32 2
  %169 = getelementptr inbounds %"corlib.String@System@bf", ptr %fmt.1, i64 0, i32 3
  br label %if.end106

if.end106:                                        ; preds = %if.end106.lr.ph, %"?Append@String@System@bf@@QEAAXD@Z.exit"
  %pos.13521 = phi i64 [ %165, %if.end106.lr.ph ], [ %pos.14, %"?Append@String@System@bf@@QEAAXD@Z.exit" ]
  %isFormatEx.0520 = phi i1 [ false, %if.end106.lr.ph ], [ %isFormatEx.1, %"?Append@String@System@bf@@QEAAXD@Z.exit" ]
  %170 = load ptr, ptr %1, align 8
  %171 = getelementptr inbounds i8, ptr %170, i64 %pos.13521
  %172 = load i8, ptr %171, align 1
  %173 = add i64 %pos.13521, 1
  switch i8 %172, label %if.end130 [
    i8 123, label %if.then109
    i8 125, label %if.then118
  ]

if.then109:                                       ; preds = %if.end106
  %174 = icmp slt i64 %173, %5
  br i1 %174, label %land.rhs111, label %deferredCalls

land.rhs111:                                      ; preds = %if.then109
  %175 = getelementptr inbounds i8, ptr %170, i64 %173
  %176 = load i8, ptr %175, align 1
  %177 = icmp eq i8 %176, 123
  br i1 %177, label %if.then114, label %deferredCalls

if.then114:                                       ; preds = %land.rhs111
  %178 = add i64 %pos.13521, 2
  br label %if.end130

if.then118:                                       ; preds = %if.end106
  %179 = icmp slt i64 %173, %5
  %or.cond419 = and i1 %isFormatEx.0520, %179
  br i1 %or.cond419, label %land.rhs120, label %if.end134

land.rhs120:                                      ; preds = %if.then118
  %180 = getelementptr inbounds i8, ptr %170, i64 %173
  %181 = load i8, ptr %180, align 1
  %182 = icmp eq i8 %181, 125
  br i1 %182, label %if.then124, label %if.end134

if.then124:                                       ; preds = %land.rhs120
  %183 = add i64 %pos.13521, 2
  br label %if.end130

if.end130:                                        ; preds = %if.then114, %if.then124, %if.end106
  %isFormatEx.1 = phi i1 [ true, %if.then114 ], [ true, %if.then124 ], [ %isFormatEx.0520, %if.end106 ]
  %pos.14 = phi i64 [ %178, %if.then114 ], [ %183, %if.then124 ], [ %173, %if.end106 ]
  %184 = load i32, ptr %167, align 4
  %185 = load i32, ptr %168, align 4
  %186 = and i32 %185, 1073741823
  %.not.i431 = icmp slt i32 %184, %186
  br i1 %.not.i431, label %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i", label %if.then.i.i432

if.then.i.i432:                                   ; preds = %if.end130
  %187 = zext nneg i32 %186 to i64
  %188 = zext nneg i32 %184 to i64
  %189 = add nuw nsw i64 %188, 1
  %190 = lshr i64 %187, 1
  %191 = add nuw nsw i64 %190, %187
  %192 = call i64 @llvm.smax.i64(i64 %191, i64 %189)
  %193 = icmp ult i64 %192, 1073741824
  call void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext %193, ptr nonnull @__bfStrObj66, ptr nonnull @__bfStrObj67, i64 866)
  %194 = load ptr, ptr %fmt.1, align 8
  %195 = getelementptr inbounds ptr, ptr %194, i64 6
  %196 = load ptr, ptr %195, align 8
  %Alloc.i.i433 = call ptr %196(ptr nonnull %fmt.1, i64 %192, i64 1) #15
  %197 = load i32, ptr %168, align 4
  %198 = and i32 %197, 1073741824
  %.not.i.i.i434 = icmp eq i32 %198, 0
  br i1 %.not.i.i.i434, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i436", label %cond.then.i.i.i435

cond.then.i.i.i435:                               ; preds = %if.then.i.i432
  %199 = load ptr, ptr %169, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i436"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i436": ; preds = %cond.then.i.i.i435, %if.then.i.i432
  %200 = phi ptr [ %199, %cond.then.i.i.i435 ], [ %169, %if.then.i.i432 ]
  %201 = load i32, ptr %167, align 4
  %202 = sext i32 %201 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %Alloc.i.i433, ptr align 1 %200, i64 %202, i1 false)
  %203 = load i32, ptr %168, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %if.then.i1.i, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i437"

if.then.i1.i:                                     ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i436"
  %205 = load ptr, ptr %169, align 8
  %.not.i.i438 = icmp eq ptr %205, null
  br i1 %.not.i.i438, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i437", label %delete.body.i.i439

delete.body.i.i439:                               ; preds = %if.then.i1.i
  %206 = load ptr, ptr %fmt.1, align 8
  %207 = getelementptr inbounds ptr, ptr %206, i64 7
  %208 = load ptr, ptr %207, align 8
  call void %208(ptr nonnull %fmt.1, ptr nonnull %205) #15
  br label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i437"

"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i437": ; preds = %delete.body.i.i439, %if.then.i1.i, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i.i436"
  store ptr %Alloc.i.i433, ptr %169, align 8
  %209 = trunc i64 %192 to i32
  %210 = or i32 %209, -1073741824
  store i32 %210, ptr %168, align 4
  br label %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i"

"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i": ; preds = %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i437", %if.end130
  %211 = phi i32 [ %185, %if.end130 ], [ %210, %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit.i437" ]
  %212 = and i32 %211, 1073741824
  %.not.i2.i = icmp eq i32 %212, 0
  br i1 %.not.i2.i, label %"?Append@String@System@bf@@QEAAXD@Z.exit", label %cond.then.i.i

cond.then.i.i:                                    ; preds = %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i"
  %213 = load ptr, ptr %169, align 8
  br label %"?Append@String@System@bf@@QEAAXD@Z.exit"

"?Append@String@System@bf@@QEAAXD@Z.exit":        ; preds = %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i", %cond.then.i.i
  %214 = phi ptr [ %213, %cond.then.i.i ], [ %169, %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit.i" ]
  %215 = load i32, ptr %167, align 4
  %216 = add i32 %215, 1
  store i32 %216, ptr %167, align 4
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i8, ptr %214, i64 %217
  store i8 %172, ptr %218, align 1
  %219 = icmp eq i64 %pos.14, %5
  br i1 %219, label %deferredCalls, label %if.end106

if.end134:                                        ; preds = %land.rhs120, %if.then118, %while.end95.if.end134_crit_edge
  %.pre-phi = phi i64 [ %.pre, %while.end95.if.end134_crit_edge ], [ %173, %if.then118 ], [ %173, %land.rhs120 ]
  %deferredCallTail.4476 = phi ptr [ %deferredCallTail.0, %while.end95.if.end134_crit_edge ], [ %deferredCallTail.1, %if.then118 ], [ %deferredCallTail.1, %land.rhs120 ]
  %fmt.4475 = phi ptr [ %fmt.0, %while.end95.if.end134_crit_edge ], [ %fmt.1, %if.then118 ], [ %fmt.1, %land.rhs120 ]
  br i1 %11, label %land.rhs136, label %if.else144

land.rhs136:                                      ; preds = %if.end134
  %220 = getelementptr inbounds %"corlib.String@System@bf", ptr %fmt.4475, i64 0, i32 1
  %221 = load i32, ptr %220, align 4
  %222 = icmp eq i32 %221, 0
  %223 = icmp eq i64 %width.1, 0
  %or.cond = select i1 %222, i1 %223, i1 false
  br i1 %or.cond, label %if.then140, label %if.else144

if.then140:                                       ; preds = %land.rhs136
  %224 = icmp eq ptr %132, null
  br i1 %224, label %if.then141, label %if.else142

if.then141:                                       ; preds = %if.then140
  %225 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj61, i64 0, i32 2), align 4
  %226 = and i32 %225, 1073741824
  %.not.i.i441 = icmp eq i32 %226, 0
  br i1 %.not.i.i441, label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit", label %cond.then.i.i442

cond.then.i.i442:                                 ; preds = %if.then141
  %227 = load ptr, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj61, i64 0, i32 3), align 8
  br label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit"

"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit": ; preds = %if.then141, %cond.then.i.i442
  %228 = phi ptr [ %227, %cond.then.i.i442 ], [ getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj61, i64 0, i32 3), %if.then141 ]
  %229 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj61, i64 0, i32 1), align 4
  %230 = sext i32 %229 to i64
  call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %this, ptr %228, i64 %230)
  br label %if.end169

if.else142:                                       ; preds = %if.then140
  %231 = load ptr, ptr %132, align 8
  %232 = getelementptr inbounds ptr, ptr %231, i64 4
  %233 = load ptr, ptr %232, align 8
  call void %233(ptr nonnull %132, ptr %this) #15
  br label %if.end169

if.else144:                                       ; preds = %land.rhs136, %if.end134
  %234 = icmp eq ptr %s.0, null
  br i1 %234, label %if.then145, label %if.end146

if.then145:                                       ; preds = %if.else144
  %235 = alloca [144 x i8], align 8
  %236 = alloca %_BF_DeferredData_RvYbVfd, align 8
  %237 = getelementptr inbounds %_BF_DeferredData_RvYbVfd, ptr %236, i64 0, i32 1
  store ptr %deferredCallTail.4476, ptr %237, align 8
  store i64 193273528372, ptr %236, align 8
  %238 = getelementptr inbounds %_BF_DeferredData_RvYbVfd, ptr %236, i64 0, i32 2
  store ptr %235, ptr %238, align 8
  store ptr @"?sBfClassVData@String@System@bf@@2UClassVData@23@A", ptr %235, align 8
  %239 = getelementptr inbounds i8, ptr %235, i64 8
  %240 = getelementptr inbounds %"corlib.String@System@bf", ptr %235, i64 0, i32 2
  %241 = getelementptr inbounds i8, ptr %235, i64 16
  store i64 0, ptr %241, align 8
  store i32 128, ptr %240, align 4
  store i32 0, ptr %239, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.then145, %if.else144
  %s.1 = phi ptr [ %235, %if.then145 ], [ %s.0, %if.else144 ]
  %deferredCallTail.5 = phi ptr [ %236, %if.then145 ], [ %deferredCallTail.4476, %if.else144 ]
  %242 = getelementptr inbounds %"corlib.String@System@bf", ptr %s.1, i64 0, i32 1
  store i32 0, ptr %242, align 4
  %243 = icmp eq ptr %132, null
  br i1 %243, label %if.else151, label %as.check

as.check:                                         ; preds = %if.end146
  %244 = load i64, ptr %132, align 8
  %245 = add i64 %244, 4
  %246 = add i64 %245, %14
  %247 = inttoptr i64 %246 to ptr
  %248 = load i32, ptr %247, align 4
  %249 = icmp eq i32 %248, 73
  %250 = inttoptr i64 %244 to ptr
  br i1 %249, label %if.then148, label %if.then150

if.then148:                                       ; preds = %as.check
  %251 = getelementptr inbounds ptr, ptr %250, i64 %15
  %252 = load ptr, ptr %251, align 8
  %253 = load ptr, ptr %252, align 8
  call void %253(ptr nonnull %132, ptr nonnull %s.1, ptr %fmt.4475, ptr %provider) #15
  br label %if.end153

if.then150:                                       ; preds = %as.check
  %254 = getelementptr inbounds ptr, ptr %250, i64 4
  %255 = load ptr, ptr %254, align 8
  call void %255(ptr nonnull %132, ptr nonnull %s.1) #15
  br label %if.end153

if.else151:                                       ; preds = %if.end146
  %256 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj61, i64 0, i32 2), align 4
  %257 = and i32 %256, 1073741824
  %.not.i.i443 = icmp eq i32 %257, 0
  br i1 %.not.i.i443, label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit445", label %cond.then.i.i444

cond.then.i.i444:                                 ; preds = %if.else151
  %258 = load ptr, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj61, i64 0, i32 3), align 8
  br label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit445"

"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit445": ; preds = %if.else151, %cond.then.i.i444
  %259 = phi ptr [ %258, %cond.then.i.i444 ], [ getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj61, i64 0, i32 3), %if.else151 ]
  %260 = load i32, ptr getelementptr inbounds (%"corlib.String@System@bf", ptr @__bfStrObj61, i64 0, i32 1), align 4
  %261 = sext i32 %260 to i64
  call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr nonnull %s.1, ptr %259, i64 %261)
  br label %if.end153

if.end153:                                        ; preds = %if.then150, %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit445", %if.then148
  %.not381 = icmp eq ptr %fmt.4475, @__bfStrObj1
  br i1 %.not381, label %if.end155, label %if.then154

if.then154:                                       ; preds = %if.end153
  %262 = getelementptr inbounds %"corlib.String@System@bf", ptr %fmt.4475, i64 0, i32 1
  store i32 0, ptr %262, align 4
  br label %if.end155

if.end155:                                        ; preds = %if.then154, %if.end153
  %263 = load i32, ptr %242, align 4
  %264 = sext i32 %263 to i64
  %265 = sub nsw i64 %width.1, %264
  %266 = xor i1 %leftJustify.1, true
  %267 = icmp sgt i64 %265, 0
  %or.cond173 = select i1 %266, i1 %267, i1 false
  br i1 %or.cond173, label %if.then162, label %if.end163

if.then162:                                       ; preds = %if.end155
  call void @"?Append@String@System@bf@@QEAAXDTint@@@Z"(ptr %this, i8 32, i64 %265)
  br label %if.end163

if.end163:                                        ; preds = %if.end155, %if.then162
  %268 = getelementptr inbounds %"corlib.String@System@bf", ptr %s.1, i64 0, i32 2
  %269 = load i32, ptr %268, align 4
  %270 = and i32 %269, 1073741824
  %.not.i.i446 = icmp eq i32 %270, 0
  %271 = getelementptr inbounds %"corlib.String@System@bf", ptr %s.1, i64 0, i32 3
  br i1 %.not.i.i446, label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit448", label %cond.then.i.i447

cond.then.i.i447:                                 ; preds = %if.end163
  %272 = load ptr, ptr %271, align 8
  br label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit448"

"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit448": ; preds = %if.end163, %cond.then.i.i447
  %273 = phi ptr [ %272, %cond.then.i.i447 ], [ %271, %if.end163 ]
  %274 = load i32, ptr %242, align 4
  %275 = sext i32 %274 to i64
  call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %this, ptr %273, i64 %275)
  %276 = select i1 %leftJustify.1, i1 %267, i1 false
  br i1 %276, label %if.then167, label %if.end169

if.then167:                                       ; preds = %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit448"
  call void @"?Append@String@System@bf@@QEAAXDTint@@@Z"(ptr %this, i8 32, i64 %265)
  br label %if.end169

if.end169:                                        ; preds = %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit448", %if.then167, %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit", %if.else142
  %s.2 = phi ptr [ %s.0, %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit" ], [ %s.0, %if.else142 ], [ %s.1, %if.then167 ], [ %s.1, %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit448" ]
  %deferredCallTail.6 = phi ptr [ %deferredCallTail.4476, %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit" ], [ %deferredCallTail.4476, %if.else142 ], [ %deferredCallTail.5, %if.then167 ], [ %deferredCallTail.5, %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit448" ]
  br label %while.cond

deferCall.body:                                   ; preds = %deferredCalls, %"?~this@String@System@bf@@QEAAXXZ.exit"
  %deferredCallTail.7525 = phi ptr [ %278, %"?~this@String@System@bf@@QEAAXXZ.exit" ], [ %deferredCallTail.8, %deferredCalls ]
  %277 = getelementptr inbounds %"corlib.DeferredCall@System@bf", ptr %deferredCallTail.7525, i64 0, i32 2
  %278 = load ptr, ptr %277, align 8
  %279 = getelementptr inbounds %_BF_DeferredData_RvYbVfd, ptr %deferredCallTail.7525, i64 0, i32 2
  %280 = load ptr, ptr %279, align 8
  %281 = getelementptr inbounds %"corlib.String@System@bf", ptr %280, i64 0, i32 2
  %282 = load i32, ptr %281, align 4
  %283 = icmp slt i32 %282, 0
  br i1 %283, label %if.then.i449, label %"?~this@String@System@bf@@QEAAXXZ.exit"

if.then.i449:                                     ; preds = %deferCall.body
  %284 = getelementptr inbounds %"corlib.String@System@bf", ptr %280, i64 0, i32 3
  %285 = load ptr, ptr %284, align 8
  %.not.i450 = icmp eq ptr %285, null
  br i1 %.not.i450, label %"?~this@String@System@bf@@QEAAXXZ.exit", label %delete.body.i

delete.body.i:                                    ; preds = %if.then.i449
  %286 = load ptr, ptr %280, align 8
  %287 = getelementptr inbounds ptr, ptr %286, i64 7
  %288 = load ptr, ptr %287, align 8
  call void %288(ptr nonnull %280, ptr nonnull %285) #15
  br label %"?~this@String@System@bf@@QEAAXXZ.exit"

"?~this@String@System@bf@@QEAAXXZ.exit":          ; preds = %deferCall.body, %if.then.i449, %delete.body.i
  call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr nonnull %280)
  %.not416 = icmp eq ptr %278, null
  br i1 %.not416, label %exit, label %deferCall.body

deferredCalls:                                    ; preds = %while.end, %while.body94, %while.body53, %while.end95, %land.rhs111, %if.then109, %"?Append@String@System@bf@@QEAAXD@Z.exit", %if.end101
  %.sink603 = phi i8 [ 1, %if.end101 ], [ 1, %"?Append@String@System@bf@@QEAAXD@Z.exit" ], [ 1, %if.then109 ], [ 1, %land.rhs111 ], [ 1, %while.end95 ], [ 1, %while.body53 ], [ 1, %while.body94 ], [ 0, %while.end ]
  %deferredCallTail.8 = phi ptr [ %deferredCallTail.1, %if.end101 ], [ %deferredCallTail.1, %"?Append@String@System@bf@@QEAAXD@Z.exit" ], [ %deferredCallTail.1, %if.then109 ], [ %deferredCallTail.1, %land.rhs111 ], [ %deferredCallTail.0, %while.end95 ], [ %deferredCallTail.0, %while.body53 ], [ %deferredCallTail.0, %while.body94 ], [ %deferredCallTail.0, %while.end ]
  %.repack415 = getelementptr inbounds %"corlib.?$Result@X@System@bf", ptr %0, i64 0, i32 2
  store i8 %.sink603, ptr %.repack415, align 1
  %.not416524 = icmp eq ptr %deferredCallTail.8, null
  br i1 %.not416524, label %exit, label %deferCall.body

exit.sink.split:                                  ; preds = %repeat.body78, %if.end73, %if.then68, %while.end63, %if.end45, %repeat.body, %if.then26, %land.rhs27, %land.rhs, %if.then7, %entry
  %.repack396 = getelementptr inbounds %"corlib.?$Result@X@System@bf", ptr %0, i64 0, i32 2
  store i8 1, ptr %.repack396, align 1
  br label %exit

exit:                                             ; preds = %exit.sink.split, %"?~this@String@System@bf@@QEAAXXZ.exit", %deferredCalls
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?AppendF@String@System@bf@@QEAA?AU?$Result@X@23@UStringView@23@Tparams@@U?$Span@PEAVObject@System@bf@@@23@@Z"(ptr %this, ptr noalias nocapture writeonly sret(%"corlib.?$Result@X@System@bf") %0, ptr %format_mPtr, i64 %format_mLength, ptr nocapture readonly %args) local_unnamed_addr #4 {
entry:
  %1 = alloca %"corlib.StringView@System@bf", align 8
  %2 = alloca %"corlib.?$Span@PEAVObject@System@bf@@@System@bf", align 8
  %3 = alloca %"corlib.?$Result@X@System@bf", align 1
  %.elt2 = getelementptr inbounds %"corlib.?$Span@PEAVObject@System@bf@@@System@bf", ptr %args, i64 0, i32 1
  %.unpack3 = load ptr, ptr %.elt2, align 8
  %.elt4 = getelementptr inbounds %"corlib.?$Span@PEAVObject@System@bf@@@System@bf", ptr %args, i64 0, i32 2
  %.unpack5 = load i64, ptr %.elt4, align 8
  %4 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %1, i64 0, i32 1
  store ptr %format_mPtr, ptr %4, align 8
  %5 = getelementptr inbounds %"corlib.?$Span@D@System@bf", ptr %1, i64 0, i32 2
  store i64 %format_mLength, ptr %5, align 8
  %.fca.1.gep = getelementptr inbounds %"corlib.?$Span@PEAVObject@System@bf@@@System@bf", ptr %2, i64 0, i32 1
  store ptr %.unpack3, ptr %.fca.1.gep, align 8
  %.fca.2.gep1 = getelementptr inbounds %"corlib.?$Span@PEAVObject@System@bf@@@System@bf", ptr %2, i64 0, i32 2
  store i64 %.unpack5, ptr %.fca.2.gep1, align 8
  call void @"?AppendF@String@System@bf@@QEAA?AU?$Result@X@23@PEAVIFormatProvider@23@UStringView@23@Tparams@@U?$Span@PEAVObject@System@bf@@@23@@Z"(ptr %this, ptr nonnull sret(%"corlib.?$Result@X@System@bf") %3, ptr null, ptr nonnull %1, ptr nonnull %2)
  %.fca.2.gep = getelementptr inbounds %"corlib.?$Result@X@System@bf", ptr %3, i64 0, i32 2
  %.fca.2.load = load i8, ptr %.fca.2.gep, align 1
  %.repack8 = getelementptr inbounds %"corlib.?$Result@X@System@bf", ptr %0, i64 0, i32 2
  store i8 %.fca.2.load, ptr %.repack8, align 1
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Remove@String@System@bf@@QEAAXTint@@0@Z"(ptr nocapture %this, i64 %startIdx, i64 %length) local_unnamed_addr #4 {
entry:
  %0 = icmp sgt i64 %startIdx, -1
  %1 = icmp sgt i64 %length, -1
  %spec.select = select i1 %0, i1 %1, i1 false
  %2 = add i64 %length, %startIdx
  br i1 %spec.select, label %land.rhs1, label %land.end2

land.rhs1:                                        ; preds = %entry
  %3 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = sext i32 %4 to i64
  %6 = icmp sle i64 %2, %5
  br label %land.end2

land.end2:                                        ; preds = %entry, %land.rhs1
  %7 = phi i1 [ %6, %land.rhs1 ], [ false, %entry ]
  tail call void @"?Requires@Contract@Contracts@Diagnostics@System@bf@@SAX_N@Z"(i1 zeroext %7)
  %8 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = sext i32 %9 to i64
  %11 = sub i64 %10, %2
  %12 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1073741824
  %.not.i = icmp eq i32 %14, 0
  %15 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  br i1 %.not.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit", label %cond.then.i

cond.then.i:                                      ; preds = %land.end2
  %16 = load ptr, ptr %15, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit":    ; preds = %land.end2, %cond.then.i
  %17 = phi ptr [ %16, %cond.then.i ], [ %15, %land.end2 ]
  %18 = icmp sgt i64 %11, 0
  br i1 %18, label %if.then, label %if.end

if.then:                                          ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"
  %19 = getelementptr inbounds i8, ptr %17, i64 %startIdx
  %20 = getelementptr inbounds i8, ptr %19, i64 %length
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %19, ptr align 1 %20, i64 %11, i1 false)
  %.pre = load i32, ptr %8, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"
  %21 = phi i32 [ %.pre, %if.then ], [ %9, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit" ]
  %22 = trunc i64 %length to i32
  %23 = sub i32 %21, %22
  store i32 %23, ptr %8, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Insert@String@System@bf@@QEAAXTint@@UStringView@23@@Z"(ptr %this, i64 %idx, ptr nocapture readonly %addString_mPtr, i64 %addString_mLength) local_unnamed_addr #4 {
entry:
  %0 = icmp sgt i64 %idx, -1
  tail call void @"?Requires@Contract@Contracts@Diagnostics@System@bf@@SAX_N@Z"(i1 zeroext %0)
  %1 = trunc i64 %addString_mLength to i32
  %2 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, %1
  %5 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 1073741823
  %8 = icmp slt i32 %7, %4
  br i1 %8, label %if.then.i, label %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit"

if.then.i:                                        ; preds = %entry
  %9 = zext nneg i32 %4 to i64
  %10 = zext nneg i32 %7 to i64
  %11 = lshr i64 %10, 1
  %12 = add nuw nsw i64 %11, %10
  %13 = tail call i64 @llvm.smax.i64(i64 %12, i64 %9)
  %14 = icmp ult i64 %13, 1073741824
  tail call void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext %14, ptr nonnull @__bfStrObj66, ptr nonnull @__bfStrObj67, i64 866)
  %15 = load ptr, ptr %this, align 8
  %16 = getelementptr inbounds ptr, ptr %15, i64 6
  %17 = load ptr, ptr %16, align 8
  %Alloc.i = tail call ptr %17(ptr nonnull %this, i64 %13, i64 1) #15
  %18 = load i32, ptr %5, align 4
  %19 = and i32 %18, 1073741824
  %.not.i.i = icmp eq i32 %19, 0
  %20 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  br i1 %.not.i.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i", label %cond.then.i.i

cond.then.i.i:                                    ; preds = %if.then.i
  %21 = load ptr, ptr %20, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i":  ; preds = %cond.then.i.i, %if.then.i
  %22 = phi ptr [ %21, %cond.then.i.i ], [ %20, %if.then.i ]
  %23 = load i32, ptr %2, align 4
  %24 = sext i32 %23 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %Alloc.i, ptr align 1 %22, i64 %24, i1 false)
  %25 = load i32, ptr %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %if.then.i6, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit"

if.then.i6:                                       ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i"
  %27 = load ptr, ptr %20, align 8
  %.not.i = icmp eq ptr %27, null
  br i1 %.not.i, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit", label %delete.body.i

delete.body.i:                                    ; preds = %if.then.i6
  %28 = load ptr, ptr %this, align 8
  %29 = getelementptr inbounds ptr, ptr %28, i64 7
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr nonnull %this, ptr nonnull %27) #15
  br label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit"

"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit":  ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i", %if.then.i6, %delete.body.i
  store ptr %Alloc.i, ptr %20, align 8
  %31 = trunc i64 %13 to i32
  %32 = or i32 %31, -1073741824
  store i32 %32, ptr %5, align 4
  %.pre = load i32, ptr %2, align 4
  br label %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit"

"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit": ; preds = %entry, %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit"
  %33 = phi i32 [ %6, %entry ], [ %32, %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit" ]
  %34 = phi i32 [ %3, %entry ], [ %.pre, %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit" ]
  %35 = sext i32 %34 to i64
  %36 = sub i64 %35, %idx
  %37 = and i32 %33, 1073741824
  %.not.i7 = icmp eq i32 %37, 0
  %38 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  br i1 %.not.i7, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit", label %cond.then.i

cond.then.i:                                      ; preds = %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit"
  %39 = load ptr, ptr %38, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit":    ; preds = %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit", %cond.then.i
  %40 = phi ptr [ %39, %cond.then.i ], [ %38, %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit" ]
  %41 = icmp sgt i64 %36, 0
  br i1 %41, label %if.then, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.if.end_crit_edge"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.if.end_crit_edge": ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"
  %.pre8 = shl i64 %addString_mLength, 32
  %.pre9 = ashr exact i64 %.pre8, 32
  br label %if.end

if.then:                                          ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"
  %42 = getelementptr inbounds i8, ptr %40, i64 %idx
  %sext = shl i64 %addString_mLength, 32
  %43 = ashr exact i64 %sext, 32
  %44 = getelementptr inbounds i8, ptr %42, i64 %43
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %44, ptr align 1 %42, i64 %36, i1 false)
  br label %if.end

if.end:                                           ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.if.end_crit_edge", %if.then
  %.pre-phi = phi i64 [ %.pre9, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.if.end_crit_edge" ], [ %43, %if.then ]
  %45 = getelementptr inbounds i8, ptr %40, i64 %idx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %45, ptr align 1 %addString_mPtr, i64 %.pre-phi, i1 false)
  store i32 %4, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Insert@String@System@bf@@QEAAXTint@@D@Z"(ptr %this, i64 %idx, i8 %c) local_unnamed_addr #4 {
entry:
  %0 = icmp sgt i64 %idx, -1
  tail call void @"?Requires@Contract@Contracts@Diagnostics@System@bf@@SAX_N@Z"(i1 zeroext %0)
  %1 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 1
  %2 = load i32, ptr %1, align 4
  %3 = add i32 %2, 1
  %4 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1073741823
  %7 = icmp slt i32 %6, %3
  br i1 %7, label %if.then.i, label %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit"

if.then.i:                                        ; preds = %entry
  %8 = zext nneg i32 %3 to i64
  %9 = zext nneg i32 %6 to i64
  %10 = lshr i64 %9, 1
  %11 = add nuw nsw i64 %10, %9
  %12 = tail call i64 @llvm.smax.i64(i64 %11, i64 %8)
  %13 = icmp ult i64 %12, 1073741824
  tail call void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext %13, ptr nonnull @__bfStrObj66, ptr nonnull @__bfStrObj67, i64 866)
  %14 = load ptr, ptr %this, align 8
  %15 = getelementptr inbounds ptr, ptr %14, i64 6
  %16 = load ptr, ptr %15, align 8
  %Alloc.i = tail call ptr %16(ptr nonnull %this, i64 %12, i64 1) #15
  %17 = load i32, ptr %4, align 4
  %18 = and i32 %17, 1073741824
  %.not.i.i = icmp eq i32 %18, 0
  %19 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  br i1 %.not.i.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i", label %cond.then.i.i

cond.then.i.i:                                    ; preds = %if.then.i
  %20 = load ptr, ptr %19, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i":  ; preds = %cond.then.i.i, %if.then.i
  %21 = phi ptr [ %20, %cond.then.i.i ], [ %19, %if.then.i ]
  %22 = load i32, ptr %1, align 4
  %23 = sext i32 %22 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %Alloc.i, ptr align 1 %21, i64 %23, i1 false)
  %24 = load i32, ptr %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %if.then.i1, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit"

if.then.i1:                                       ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i"
  %26 = load ptr, ptr %19, align 8
  %.not.i = icmp eq ptr %26, null
  br i1 %.not.i, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit", label %delete.body.i

delete.body.i:                                    ; preds = %if.then.i1
  %27 = load ptr, ptr %this, align 8
  %28 = getelementptr inbounds ptr, ptr %27, i64 7
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr nonnull %this, ptr nonnull %26) #15
  br label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit"

"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit":  ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i", %if.then.i1, %delete.body.i
  store ptr %Alloc.i, ptr %19, align 8
  %30 = trunc i64 %12 to i32
  %31 = or i32 %30, -1073741824
  store i32 %31, ptr %4, align 4
  %.pre = load i32, ptr %1, align 4
  br label %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit"

"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit": ; preds = %entry, %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit"
  %32 = phi i32 [ %5, %entry ], [ %31, %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit" ]
  %33 = phi i32 [ %2, %entry ], [ %.pre, %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit" ]
  %34 = sext i32 %33 to i64
  %35 = sub i64 %34, %idx
  %36 = and i32 %32, 1073741824
  %.not.i2 = icmp eq i32 %36, 0
  %37 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  br i1 %.not.i2, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit", label %cond.then.i

cond.then.i:                                      ; preds = %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit"
  %38 = load ptr, ptr %37, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit":    ; preds = %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit", %cond.then.i
  %39 = phi ptr [ %38, %cond.then.i ], [ %37, %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit" ]
  %40 = icmp sgt i64 %35, 0
  br i1 %40, label %if.then, label %if.end

if.then:                                          ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"
  %41 = getelementptr inbounds i8, ptr %39, i64 %idx
  %42 = getelementptr inbounds i8, ptr %41, i64 1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %42, ptr align 1 %41, i64 %35, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.then, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"
  %43 = getelementptr inbounds i8, ptr %39, i64 %idx
  store i8 %c, ptr %43, align 1
  store i32 %3, ptr %1, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?Insert@String@System@bf@@QEAAXTint@@D0@Z"(ptr %this, i64 %idx, i8 %c, i64 %count) local_unnamed_addr #4 {
entry:
  %0 = icmp sgt i64 %idx, -1
  tail call void @"?Requires@Contract@Contracts@Diagnostics@System@bf@@SAX_N@Z"(i1 zeroext %0)
  %1 = icmp slt i64 %count, 1
  br i1 %1, label %exit, label %if.end

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = trunc i64 %count to i32
  %5 = add i32 %3, %4
  %6 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 1073741823
  %9 = icmp slt i32 %8, %5
  br i1 %9, label %if.then.i, label %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit"

if.then.i:                                        ; preds = %if.end
  %10 = zext nneg i32 %5 to i64
  %11 = zext nneg i32 %8 to i64
  %12 = lshr i64 %11, 1
  %13 = add nuw nsw i64 %12, %11
  %14 = tail call i64 @llvm.smax.i64(i64 %13, i64 %10)
  %15 = icmp ult i64 %14, 1073741824
  tail call void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext %15, ptr nonnull @__bfStrObj66, ptr nonnull @__bfStrObj67, i64 866)
  %16 = load ptr, ptr %this, align 8
  %17 = getelementptr inbounds ptr, ptr %16, i64 6
  %18 = load ptr, ptr %17, align 8
  %Alloc.i = tail call ptr %18(ptr nonnull %this, i64 %14, i64 1) #15
  %19 = load i32, ptr %6, align 4
  %20 = and i32 %19, 1073741824
  %.not.i.i = icmp eq i32 %20, 0
  %21 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  br i1 %.not.i.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i", label %cond.then.i.i

cond.then.i.i:                                    ; preds = %if.then.i
  %22 = load ptr, ptr %21, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i":  ; preds = %cond.then.i.i, %if.then.i
  %23 = phi ptr [ %22, %cond.then.i.i ], [ %21, %if.then.i ]
  %24 = load i32, ptr %2, align 4
  %25 = sext i32 %24 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %Alloc.i, ptr align 1 %23, i64 %25, i1 false)
  %26 = load i32, ptr %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %if.then.i7, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit"

if.then.i7:                                       ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i"
  %28 = load ptr, ptr %21, align 8
  %.not.i = icmp eq ptr %28, null
  br i1 %.not.i, label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit", label %delete.body.i

delete.body.i:                                    ; preds = %if.then.i7
  %29 = load ptr, ptr %this, align 8
  %30 = getelementptr inbounds ptr, ptr %29, i64 7
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr nonnull %this, ptr nonnull %28) #15
  br label %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit"

"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit":  ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit.i", %if.then.i7, %delete.body.i
  store ptr %Alloc.i, ptr %21, align 8
  %32 = trunc i64 %14 to i32
  %33 = or i32 %32, -1073741824
  store i32 %33, ptr %6, align 4
  %.pre = load i32, ptr %2, align 4
  br label %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit"

"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit": ; preds = %if.end, %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit"
  %34 = phi i32 [ %7, %if.end ], [ %33, %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit" ]
  %35 = phi i32 [ %3, %if.end ], [ %.pre, %"?Realloc@String@System@bf@@AEAAXTint@@@Z.exit" ]
  %36 = sext i32 %35 to i64
  %37 = sub i64 %36, %idx
  %38 = and i32 %34, 1073741824
  %.not.i8 = icmp eq i32 %38, 0
  %39 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  br i1 %.not.i8, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit", label %cond.then.i

cond.then.i:                                      ; preds = %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit"
  %40 = load ptr, ptr %39, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit":    ; preds = %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit", %cond.then.i
  %41 = phi ptr [ %40, %cond.then.i ], [ %39, %"?CalculatedReserve@String@System@bf@@AEAAXTint@@@Z.exit" ]
  %42 = icmp sgt i64 %37, 0
  br i1 %42, label %if.then2, label %forless.end

if.then2:                                         ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"
  %43 = getelementptr inbounds i8, ptr %41, i64 %idx
  %44 = getelementptr inbounds i8, ptr %43, i64 %count
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %44, ptr align 1 %43, i64 %37, i1 false)
  br label %forless.end

forless.end:                                      ; preds = %if.then2, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"
  %invariant.gep = getelementptr i8, ptr %41, i64 %idx
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %invariant.gep, i8 %c, i64 %count, i1 false)
  store i32 %5, ptr %2, align 4
  br label %exit

exit:                                             ; preds = %entry, %forless.end
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define i1 @"?EqualsHelper@String@System@bf@@CA_NPEAD0Tint@@@Z"(ptr nocapture readonly %a, ptr nocapture readonly %b, i64 %length) local_unnamed_addr #10 {
entry:
  %0 = icmp slt i64 %length, 1
  br i1 %0, label %exit, label %for.body

for.cond:                                         ; preds = %for.body
  %1 = add nuw nsw i64 %i.04, 1
  %2 = icmp sge i64 %1, %length
  %exitcond = icmp eq i64 %1, %length
  br i1 %exitcond, label %exit, label %for.body

for.body:                                         ; preds = %entry, %for.cond
  %3 = phi i1 [ %2, %for.cond ], [ false, %entry ]
  %i.04 = phi i64 [ %1, %for.cond ], [ 0, %entry ]
  %4 = getelementptr inbounds i8, ptr %a, i64 %i.04
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr inbounds i8, ptr %b, i64 %i.04
  %7 = load i8, ptr %6, align 1
  %.not = icmp eq i8 %5, %7
  br i1 %.not, label %for.cond, label %exit

exit:                                             ; preds = %for.body, %for.cond, %entry
  %.lcssa = phi i1 [ true, %entry ], [ %2, %for.cond ], [ %3, %for.body ]
  ret i1 %.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define noundef i1 @"?EqualsIgnoreCaseHelper@String@System@bf@@CA_NPEAD0Tint@@@Z"(ptr nocapture readonly %a, ptr nocapture readonly %b, i64 %length) local_unnamed_addr #6 {
entry:
  %.not14 = icmp eq i64 %length, 0
  br i1 %.not14, label %exit, label %while.body

while.body:                                       ; preds = %entry, %if.end5
  %curLength.017 = phi i64 [ %12, %if.end5 ], [ %length, %entry ]
  %curB.016 = phi ptr [ %11, %if.end5 ], [ %b, %entry ]
  %curA.015 = phi ptr [ %10, %if.end5 ], [ %a, %entry ]
  %0 = load i8, ptr %curA.015, align 1
  %1 = zext i8 %0 to i32
  %2 = load i8, ptr %curB.016, align 1
  %3 = zext i8 %2 to i32
  %4 = add i8 %0, -97
  %5 = icmp ult i8 %4, 26
  %6 = add nsw i32 %1, -32
  %spec.select = select i1 %5, i32 %6, i32 %1
  %7 = add i8 %2, -97
  %8 = icmp ult i8 %7, 26
  %9 = add nsw i32 %3, -32
  %charB.0 = select i1 %8, i32 %9, i32 %3
  %.not13 = icmp eq i32 %spec.select, %charB.0
  br i1 %.not13, label %if.end5, label %exit

if.end5:                                          ; preds = %while.body
  %10 = getelementptr inbounds i8, ptr %curA.015, i64 1
  %11 = getelementptr inbounds i8, ptr %curB.016, i64 1
  %12 = add i64 %curLength.017, -1
  %.not = icmp eq i64 %12, 0
  br i1 %.not, label %exit, label %while.body

exit:                                             ; preds = %while.body, %if.end5, %entry
  %.not.lcssa = phi i1 [ true, %entry ], [ false, %while.body ], [ true, %if.end5 ]
  ret i1 %.not.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define i1 @"?Equals@String@System@bf@@SA_NPEAV123@0W4StringComparison@23@@Z"(ptr readonly %a, ptr readonly %b, i8 %comparisonType) local_unnamed_addr #6 {
entry:
  %0 = icmp eq ptr %a, %b
  br i1 %0, label %exit, label %if.end

if.end:                                           ; preds = %entry
  %1 = icmp eq ptr %a, null
  %2 = icmp eq ptr %b, null
  %spec.select = or i1 %1, %2
  br i1 %spec.select, label %exit, label %if.end2

if.end2:                                          ; preds = %if.end
  %3 = getelementptr inbounds %"corlib.String@System@bf", ptr %a, i64 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %"corlib.String@System@bf", ptr %b, i64 0, i32 1
  %6 = load i32, ptr %5, align 4
  %.not = icmp eq i32 %4, %6
  br i1 %.not, label %if.end4, label %exit

if.end4:                                          ; preds = %if.end2
  %7 = icmp eq i8 %comparisonType, 5
  %8 = getelementptr inbounds %"corlib.String@System@bf", ptr %a, i64 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, 1073741824
  %.not.i = icmp eq i32 %10, 0
  %11 = getelementptr inbounds %"corlib.String@System@bf", ptr %a, i64 0, i32 3
  br i1 %7, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end4
  br i1 %.not.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit", label %cond.then.i

cond.then.i:                                      ; preds = %if.then5
  %12 = load ptr, ptr %11, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit":    ; preds = %if.then5, %cond.then.i
  %13 = phi ptr [ %12, %cond.then.i ], [ %11, %if.then5 ]
  %14 = getelementptr inbounds %"corlib.String@System@bf", ptr %b, i64 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1073741824
  %.not.i10 = icmp eq i32 %16, 0
  %17 = getelementptr inbounds %"corlib.String@System@bf", ptr %b, i64 0, i32 3
  br i1 %.not.i10, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit12", label %cond.then.i11

cond.then.i11:                                    ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit"
  %18 = load ptr, ptr %17, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit12"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit12":  ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit", %cond.then.i11
  %19 = phi ptr [ %18, %cond.then.i11 ], [ %17, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit" ]
  %.not14.i = icmp eq i32 %4, 0
  br i1 %.not14.i, label %exit, label %while.body.i.preheader

while.body.i.preheader:                           ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit12"
  %20 = sext i32 %4 to i64
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.preheader, %if.end5.i
  %curLength.017.i = phi i64 [ %33, %if.end5.i ], [ %20, %while.body.i.preheader ]
  %curB.016.i = phi ptr [ %32, %if.end5.i ], [ %19, %while.body.i.preheader ]
  %curA.015.i = phi ptr [ %31, %if.end5.i ], [ %13, %while.body.i.preheader ]
  %21 = load i8, ptr %curA.015.i, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, ptr %curB.016.i, align 1
  %24 = zext i8 %23 to i32
  %25 = add i8 %21, -97
  %26 = icmp ult i8 %25, 26
  %27 = add nsw i32 %22, -32
  %spec.select.i = select i1 %26, i32 %27, i32 %22
  %28 = add i8 %23, -97
  %29 = icmp ult i8 %28, 26
  %30 = add nsw i32 %24, -32
  %charB.0.i = select i1 %29, i32 %30, i32 %24
  %.not13.i = icmp eq i32 %spec.select.i, %charB.0.i
  br i1 %.not13.i, label %if.end5.i, label %exit

if.end5.i:                                        ; preds = %while.body.i
  %31 = getelementptr inbounds i8, ptr %curA.015.i, i64 1
  %32 = getelementptr inbounds i8, ptr %curB.016.i, i64 1
  %33 = add i64 %curLength.017.i, -1
  %.not.i13 = icmp eq i64 %33, 0
  br i1 %.not.i13, label %exit, label %while.body.i

if.end7:                                          ; preds = %if.end4
  br i1 %.not.i, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit16", label %cond.then.i15

cond.then.i15:                                    ; preds = %if.end7
  %34 = load ptr, ptr %11, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit16"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit16":  ; preds = %if.end7, %cond.then.i15
  %35 = phi ptr [ %34, %cond.then.i15 ], [ %11, %if.end7 ]
  %36 = getelementptr inbounds %"corlib.String@System@bf", ptr %b, i64 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = and i32 %37, 1073741824
  %.not.i17 = icmp eq i32 %38, 0
  %39 = getelementptr inbounds %"corlib.String@System@bf", ptr %b, i64 0, i32 3
  br i1 %.not.i17, label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit19", label %cond.then.i18

cond.then.i18:                                    ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit16"
  %40 = load ptr, ptr %39, align 8
  br label %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit19"

"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit19":  ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit16", %cond.then.i18
  %41 = phi ptr [ %40, %cond.then.i18 ], [ %39, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit16" ]
  %42 = sext i32 %4 to i64
  %43 = icmp slt i32 %4, 1
  br i1 %43, label %exit, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit19"
  %44 = load i8, ptr %35, align 1
  %45 = load i8, ptr %41, align 1
  %.not.i2023 = icmp eq i8 %44, %45
  br i1 %.not.i2023, label %for.cond.i, label %exit

for.cond.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %i.04.i24 = phi i64 [ %46, %for.body.i ], [ 0, %for.body.i.preheader ]
  %46 = add nuw nsw i64 %i.04.i24, 1
  %exitcond.i = icmp eq i64 %46, %42
  br i1 %exitcond.i, label %exit.loopexit27, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %47 = getelementptr inbounds i8, ptr %35, i64 %46
  %48 = load i8, ptr %47, align 1
  %49 = getelementptr inbounds i8, ptr %41, i64 %46
  %50 = load i8, ptr %49, align 1
  %.not.i20 = icmp eq i8 %48, %50
  br i1 %.not.i20, label %for.cond.i, label %exit.loopexit27

exit.loopexit27:                                  ; preds = %for.body.i, %for.cond.i
  %51 = icmp sge i64 %46, %42
  br label %exit

exit:                                             ; preds = %if.end5.i, %while.body.i, %exit.loopexit27, %for.body.i.preheader, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit19", %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit12", %if.end2, %if.end, %entry
  %__return.0 = phi i1 [ true, %entry ], [ false, %if.end ], [ false, %if.end2 ], [ true, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit12" ], [ true, %"?get__Ptr@String@System@bf@@QEAAPEADXZ.exit19" ], [ false, %for.body.i.preheader ], [ %51, %exit.loopexit27 ], [ true, %if.end5.i ], [ false, %while.body.i ]
  ret i1 %__return.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @"?__BfCtorClear@String@System@bf@@AEAAXXZ"(ptr nocapture writeonly %this) local_unnamed_addr #7 {
entry:
  %0 = getelementptr inbounds i8, ptr %this, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define void @"?__BfStaticCtor@String@System@bf@@SAXXZ"() local_unnamed_addr #11 {
entry:
  %0 = load i1, ptr @didStaticInit, align 1
  br i1 %0, label %exit, label %init1

init1:                                            ; preds = %entry
  store i1 true, ptr @didStaticInit, align 1
  store ptr @__bfStrObj59, ptr @"?sHexUpperChars@String@System@bf@@2PEAV123@A", align 8
  br label %exit

exit:                                             ; preds = %init1, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?~this@String@System@bf@@QEAAXXZ"(ptr %this) local_unnamed_addr #4 {
entry:
  %0 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 2
  %1 = load i32, ptr %0, align 4
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %if.end, label %delete.body

delete.body:                                      ; preds = %if.then
  %5 = load ptr, ptr %this, align 8
  %6 = getelementptr inbounds ptr, ptr %5, i64 7
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr nonnull %this, ptr nonnull %4) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %delete.body, %entry
  tail call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr nonnull %this)
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?ToString@String@System@bf@@QEAAXPEAV123@@Z"(ptr nocapture readonly %this, ptr %strBuffer) local_unnamed_addr #4 {
entry:
  %0 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 2
  %1 = load i32, ptr %0, align 4
  %2 = and i32 %1, 1073741824
  %.not.i.i = icmp eq i32 %2, 0
  %3 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 3
  br i1 %.not.i.i, label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit", label %cond.then.i.i

cond.then.i.i:                                    ; preds = %entry
  %4 = load ptr, ptr %3, align 8
  br label %"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit"

"?Append@String@System@bf@@QEAAXPEAV123@@Z.exit": ; preds = %entry, %cond.then.i.i
  %5 = phi ptr [ %4, %cond.then.i.i ], [ %3, %entry ]
  %6 = getelementptr inbounds %"corlib.String@System@bf", ptr %this, i64 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = sext i32 %7 to i64
  tail call void @"?Append@String@System@bf@@QEAAXPEADTint@@@Z"(ptr %strBuffer, ptr %5, i64 %8)
  ret void
}

; Function Attrs: nounwind uwtable
declare void @"?~this@Object@System@bf@@UEAAXXZ"(ptr) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

declare void @tc_free(ptr) local_unnamed_addr

; Function Attrs: nounwind uwtable
declare void @"?Assert@Runtime@System@bf@@SAX_NPEAVString@23@1Tint@@@Z"(i1 zeroext, ptr, ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

declare ptr @tc_malloc(i64) local_unnamed_addr

; Function Attrs: nounwind uwtable
declare void @"?Requires@Contract@Contracts@Diagnostics@System@bf@@SAX_N@Z"(i1 zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nounwind uwtable
declare void @"?GetEnumerator__im@?$Span@UStringView@System@bf@@@System@bf@@QEAA?AUEnumerator@123@XZ"(ptr noalias sret(%"corlib.Enumerator@?$Span@UStringView@System@bf@@@System@bf"), ptr, i64) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
declare void @"?Dispose__im@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@QEAAXXZ"(ptr nocapture dereferenceable(32)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
declare void @"?GetNext@Enumerator@?$Span@UStringView@System@bf@@@System@bf@@QEAA?AU?$Result@?AUStringView@System@bf@@@34@XZ"(ptr, ptr noalias sret(%"corlib.?$Result@UStringView@System@bf@@@System@bf")) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable }
attributes #4 = { nounwind uwtable }
attributes #5 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable }
attributes #6 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable }
attributes #8 = { alwaysinline nounwind uwtable }
attributes #9 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
