; ModuleID = 'System_Collections_List_System_Object'
source_filename = "System_Collections_List_System_Object"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf" = type <{ %"corlib.ValueType@System@bf", ptr, i64, ptr }>
%"corlib.ValueType@System@bf" = type <{}>
%"corlib.?$List@PEAVObject@System@bf@@@Collections@System@bf" = type <{ %"corlib.Object@System@bf", ptr, i32, i32 }>
%"corlib.Object@System@bf" = type <{ ptr }>

; Function Attrs: nounwind uwtable
define void @"?Free@?$List@PEAVObject@System@bf@@@Collections@System@bf@@MEAAXPEAPEAVObject@34@@Z"(ptr nocapture readnone %this, ptr %val) local_unnamed_addr #0 {
entry:
  %0 = icmp ugt ptr %val, inttoptr (i64 1 to ptr)
  br i1 %0, label %delete.body, label %exit

delete.body:                                      ; preds = %entry
  tail call void @tc_free(ptr nonnull %val) #5
  br label %exit

exit:                                             ; preds = %entry, %delete.body
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?GetEnumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAA?AUEnumerator@1234@XZ"(ptr %this, ptr noalias nocapture writeonly sret(%"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf") %0) local_unnamed_addr #0 {
entry:
  %1 = alloca %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", align 8
  call void @"?__BfCtor@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXPEAV2345@@Z"(ptr nonnull %1, ptr %this)
  %.fca.1.gep = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %1, i64 0, i32 1
  %.fca.1.load = load ptr, ptr %.fca.1.gep, align 8
  %.fca.2.gep = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %1, i64 0, i32 2
  %.fca.2.load = load i64, ptr %.fca.2.gep, align 8
  %.fca.3.gep = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %1, i64 0, i32 3
  %.fca.3.load = load ptr, ptr %.fca.3.gep, align 8
  %.repack1 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %0, i64 0, i32 1
  store ptr %.fca.1.load, ptr %.repack1, align 8
  %.repack3 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %0, i64 0, i32 2
  store i64 %.fca.2.load, ptr %.repack3, align 8
  %.repack5 = getelementptr inbounds %"corlib.Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %0, i64 0, i32 3
  store ptr %.fca.3.load, ptr %.repack5, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @"?~this@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXXZ"(ptr %this) local_unnamed_addr #0 {
entry:
  %0 = getelementptr inbounds %"corlib.?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %this, i64 0, i32 3
  %1 = load i32, ptr %0, align 4
  %2 = icmp slt i32 %1, 0
  br i1 %2, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = getelementptr inbounds %"corlib.?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %this, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %this, align 8
  %6 = getelementptr inbounds ptr, ptr %5, i64 7
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr nonnull %this, ptr %4) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @"?~this@Object@System@bf@@UEAAXXZ"(ptr nonnull %this)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @"?__BfCtor@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXXZ"(ptr nocapture readnone %this) local_unnamed_addr #1 {
entry:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @"?__BfCtorClear@?$List@PEAVObject@System@bf@@@Collections@System@bf@@AEAAXXZ"(ptr nocapture writeonly %this) local_unnamed_addr #2 {
entry:
  %0 = getelementptr inbounds i8, ptr %this, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i1 @"?get__IsDynAlloc@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAA_NXZ"(ptr nocapture readonly %this) local_unnamed_addr #4 {
entry:
  %0 = getelementptr inbounds %"corlib.?$List@PEAVObject@System@bf@@@Collections@System@bf", ptr %this, i64 0, i32 3
  %1 = load i32, ptr %0, align 4
  %2 = icmp slt i32 %1, 0
  ret i1 %2
}

; Function Attrs: nounwind uwtable
declare void @"?~this@Object@System@bf@@UEAAXXZ"(ptr) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@Enumerator@?$List@PEAVObject@System@bf@@@Collections@System@bf@@QEAAXPEAV2345@@Z"(ptr, ptr) local_unnamed_addr #0

declare void @tc_free(ptr) local_unnamed_addr

attributes #0 = { nounwind uwtable }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { alwaysinline mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable }
attributes #5 = { nounwind }
