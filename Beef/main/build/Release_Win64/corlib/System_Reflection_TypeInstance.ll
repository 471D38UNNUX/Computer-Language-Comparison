; ModuleID = 'System_Reflection_TypeInstance'
source_filename = "System_Reflection_TypeInstance"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.CustomAttributeEnumerator@AttributeInfo@Reflection@System@bf" = type opaque
%"corlib.InterfaceEnumerator@TypeInstance@Reflection@System@bf" = type opaque
%"corlib.?$Result@UFieldInfo@Reflection@System@bf@@@System@bf" = type opaque
%"corlib.Enumerator@FieldInfo@Reflection@System@bf" = type opaque
%"corlib.Enumerator@MethodInfo@Reflection@System@bf" = type opaque
%"corlib.?$Result@UMethodInfo@Reflection@System@bf@@W4MethodError@Type@23@@System@bf" = type opaque
%"corlib.?$Result@PEAVObject@System@bf@@@System@bf" = type opaque
%"corlib.?$Result@PEAX@System@bf" = type opaque
%"corlib.?$Result@U_M0@@@System@bf" = type opaque

; Function Attrs: nounwind uwtable
declare void @"?GetCustomAttributes@TypeInstance@Reflection@System@bf@@AEAA?AUCustomAttributeEnumerator@AttributeInfo@234@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.CustomAttributeEnumerator@AttributeInfo@Reflection@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@TypeInstance@Reflection@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@TypeInstance@Reflection@System@bf@@QEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  call void @"?__BfCtor@Type@System@bf@@IEAAXXZ"(ptr %0)
  ret void
}

; Function Attrs: nounwind uwtable
declare i32 @"?get__InstanceSize@TypeInstance@Reflection@System@bf@@QEAAHXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i32 @"?get__InstanceAlign@TypeInstance@Reflection@System@bf@@QEAAHXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i32 @"?get__InstanceStride@TypeInstance@Reflection@System@bf@@QEAAHXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__BaseType@TypeInstance@Reflection@System@bf@@QEAAPEAV1234@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?get__Interfaces@TypeInstance@Reflection@System@bf@@QEAA?AUInterfaceEnumerator@1234@XZ"(ptr, ptr noalias sret(%"corlib.InterfaceEnumerator@TypeInstance@Reflection@System@bf")) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__OuterType@TypeInstance@Reflection@System@bf@@QEAAPEAV1234@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__UnderlyingType@TypeInstance@Reflection@System@bf@@QEAAPEAVType@34@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i32 @"?get__FieldCount@TypeInstance@Reflection@System@bf@@QEAAHXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?IsSubtypeOf@TypeInstance@Reflection@System@bf@@QEAA_NPEAVType@34@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?ImplementsInterface@TypeInstance@Reflection@System@bf@@QEAA_NPEAVType@34@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetFullName@TypeInstance@Reflection@System@bf@@QEAAXPEAVString@34@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetName@TypeInstance@Reflection@System@bf@@QEAAXPEAVString@34@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetField@TypeInstance@Reflection@System@bf@@QEAA?AU?$Result@?AUFieldInfo@Reflection@System@bf@@@34@PEAVString@34@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@UFieldInfo@Reflection@System@bf@@@System@bf"), ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetField@TypeInstance@Reflection@System@bf@@QEAA?AU?$Result@?AUFieldInfo@Reflection@System@bf@@@34@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@UFieldInfo@Reflection@System@bf@@@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetFields@TypeInstance@Reflection@System@bf@@QEAA?AUEnumerator@FieldInfo@234@W4BindingFlags@234@@Z"(ptr, ptr noalias sret(%"corlib.Enumerator@FieldInfo@Reflection@System@bf"), i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@TypeInstance@Reflection@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@TypeInstance@Reflection@System@bf@@IEAAPEAVObject@34@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers@TypeInstance@Reflection@System@bf@@IEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetMethods@TypeInstance@Reflection@System@bf@@QEAA?AUEnumerator@MethodInfo@234@W4BindingFlags@234@@Z"(ptr, ptr noalias sret(%"corlib.Enumerator@MethodInfo@Reflection@System@bf"), i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GetMethod@TypeInstance@Reflection@System@bf@@QEAA?AU?$Result@?AUMethodInfo@Reflection@System@bf@@?AW4MethodError@Type@23@@34@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@UMethodInfo@Reflection@System@bf@@W4MethodError@Type@23@@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?CreateObject@TypeInstance@Reflection@System@bf@@QEAA?AU?$Result@PEAVObject@System@bf@@@34@XZ"(ptr, ptr noalias sret(%"corlib.?$Result@PEAVObject@System@bf@@@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?CreateValue@TypeInstance@Reflection@System@bf@@QEAA?AU?$Result@PEAX@34@XZ"(ptr, ptr noalias sret(%"corlib.?$Result@PEAX@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?CreateValueDefault@TypeInstance@Reflection@System@bf@@QEAA?AU?$Result@PEAX@34@XZ"(ptr, ptr noalias sret(%"corlib.?$Result@PEAX@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtor@Type@System@bf@@IEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"??$HasCustomAttribute@U_M0@@@TypeInstance@Reflection@System@bf@@AEAA_NTint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i1 @"??$HasCustomAttribute@UStaticHookAttribute@System@bf@@@TypeInstance@Reflection@System@bf@@AEAA_NTint@@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"??$GetCustomAttribute@U_M0@@@TypeInstance@Reflection@System@bf@@AEAA?AU?$Result@U_M0@@@34@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@U_M0@@@System@bf"), i64) #0

attributes #0 = { nounwind uwtable }
