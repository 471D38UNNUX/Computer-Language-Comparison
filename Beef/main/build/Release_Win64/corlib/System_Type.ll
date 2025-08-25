; ModuleID = 'System_Type'
source_filename = "System_Type"
target datalayout = "e-m:w-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-windows-msvc"

%"corlib.String@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, ptr }>
%"corlib.Object@System@bf" = type <{ ptr }>
%"corlib.Enumerator@Type@System@bf" = type opaque
%"corlib.Enumerator@TypeDeclaration@System@bf" = type opaque
%"corlib.InterfaceEnumerator@TypeInstance@Reflection@System@bf" = type opaque
%"corlib.ComptimeMethodData@Type@System@bf" = type opaque
%"corlib.ComptimeParamInfo@Type@System@bf" = type opaque
%"corlib.ComptimeFieldInfo@Type@System@bf" = type opaque
%"corlib.?$Result@PEAVType@System@bf@@@System@bf" = type opaque
%"corlib.?$Result@UFieldInfo@Reflection@System@bf@@@System@bf" = type opaque
%"corlib.Enumerator@FieldInfo@Reflection@System@bf" = type opaque
%"corlib.CustomAttributeEnumerator@AttributeInfo@Reflection@System@bf" = type opaque
%"corlib.ComptimeTypeCustomAttributeEnumerator@AttributeInfo@Reflection@System@bf" = type opaque
%"corlib.?$ComptimeTypeCustomAttributeEnumerator@U_M0@@@AttributeInfo@Reflection@System@bf" = type opaque
%"corlib.Enumerator@MethodInfo@Reflection@System@bf" = type opaque
%"corlib.?$Result@UMethodInfo@Reflection@System@bf@@W4MethodError@Type@23@@System@bf" = type opaque
%"corlib.?$Result@PEAVObject@System@bf@@@System@bf" = type opaque
%"corlib.?$Result@PEAX@System@bf" = type opaque
%"corlib.Type@System@bf" = type <{ %"corlib.Object@System@bf", i32, i32, i32, i32, i32, i8, i8, i8 }>
%"corlib.?$Result@U_M0@@@System@bf" = type opaque
%"corlib.?$Result@UStaticHookAttribute@System@bf@@@System@bf" = type opaque

@"?sTypes@Type@System@bf@@2PEAPEAV123@A" = external global ptr, align 8
@"?sTypeCount@Type@System@bf@@2HA" = external global i32, align 4
@"?sBfClassVData@String@System@bf@@2UClassVData@23@A" = external constant [8 x ptr]
@__bfStrObj95 = external constant %"corlib.String@System@bf"
@__bfStrObj96 = external constant %"corlib.String@System@bf"

; Function Attrs: nounwind uwtable
declare ptr @"?get__TypeDeclaration@Type@System@bf@@QEAAPEAVTypeDeclaration@23@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i32 @"?get__TypeIdEnd@Type@System@bf@@SAVTypeId@Reflection@23@XZ"() #0

; Function Attrs: nounwind uwtable
declare void @"?get__Types@Type@System@bf@@SA?AUEnumerator@123@XZ"(ptr noalias sret(%"corlib.Enumerator@Type@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?get__TypeDeclarations@Type@System@bf@@SA?AUEnumerator@TypeDeclaration@23@XZ"(ptr noalias sret(%"corlib.Enumerator@TypeDeclaration@System@bf")) #0

; Function Attrs: nounwind uwtable
declare i32 @"?get__Size@Type@System@bf@@QEAAHXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i32 @"?get__Align@Type@System@bf@@QEAAHXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i32 @"?get__Stride@Type@System@bf@@QEAAHXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i32 @"?get__TypeId@Type@System@bf@@QEAAVTypeId@Reflection@23@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsPrimitive@Type@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsInteger@Type@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsIntegral@Type@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsFloatingPoint@Type@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsSigned@Type@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsChar@Type@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsTypedPrimitive@Type@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsArray@Type@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsSizedArray@Type@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsConstExpr@Type@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsObject@Type@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsInterface@Type@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsValueType@Type@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsStruct@Type@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsSplattable@Type@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsUnion@Type@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsPointer@Type@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsBoxed@Type@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsBoxedStructPtr@Type@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsBoxedPrimitivePtr@Type@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__BoxedPtrType@Type@System@bf@@QEAAPEAV123@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__BoxedType@Type@System@bf@@QEAAPEAVTypeInstance@Reflection@23@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsEnum@Type@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsTuple@Type@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsNullable@Type@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__WantsMark@Type@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__HasDestructor@Type@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsGenericType@Type@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsGenericParam@Type@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsStatic@Type@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?get__IsAbstract@Type@System@bf@@QEAA_NXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i32 @"?get__GenericParamCount@Type@System@bf@@UEAAHXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i32 @"?get__InstanceSize@Type@System@bf@@UEAAHXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i32 @"?get__InstanceAlign@Type@System@bf@@UEAAHXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i32 @"?get__InstanceStride@Type@System@bf@@UEAAHXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__BaseType@Type@System@bf@@UEAAPEAVTypeInstance@Reflection@23@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__WrappedType@Type@System@bf@@UEAAPEAVTypeInstance@Reflection@23@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?get__Interfaces@Type@System@bf@@UEAA?AUInterfaceEnumerator@TypeInstance@Reflection@23@XZ"(ptr, ptr noalias sret(%"corlib.InterfaceEnumerator@TypeInstance@Reflection@System@bf")) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__OuterType@Type@System@bf@@UEAAPEAVTypeInstance@Reflection@23@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?get__UnderlyingType@Type@System@bf@@UEAAPEAV123@XZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i32 @"?get__FieldCount@Type@System@bf@@UEAAHXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i32 @"?get__MinValue@Type@System@bf@@UEAAHXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i32 @"?get__MaxValue@Type@System@bf@@UEAAHXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i32 @"?get__BitSize@Type@System@bf@@UEAAHXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare i32 @"?GetTypeId@Type@System@bf@@QEAAHXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?Comptime_GetTypeDeclarationById@Type@System@bf@@CAPEAVTypeDeclaration@23@H@Z"(i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?Comptime_GetTypeDeclarationByName@Type@System@bf@@CAPEAVTypeDeclaration@23@UStringView@23@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare ptr @"?Comptime_GetNextTypeDeclaration@Type@System@bf@@CAPEAVTypeDeclaration@23@H@Z"(i32) #0

; Function Attrs: nounwind uwtable
declare i32 @"?Comptime_Type_GetBaseType@Type@System@bf@@CAHH@Z"(i32) #0

; Function Attrs: nounwind uwtable
declare i1 @"?Comptime_Type_HasDeclaredMember@Type@System@bf@@CA_NHHUStringView@23@@Z"(i32, i32, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare ptr @"?Comptime_GetTypeById@Type@System@bf@@CAPEAV123@H@Z"(i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?Comptime_GetWrappedType@Type@System@bf@@CAPEAV123@H@Z"(i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?Comptime_GetTypeByName@Type@System@bf@@CAPEAV123@UStringView@23@@Z"(ptr, i64) #0

; Function Attrs: nounwind uwtable
declare ptr @"?Comptime_Type_ToString@Type@System@bf@@CAPEAVString@23@H@Z"(i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?Comptime_TypeName_ToString@Type@System@bf@@CAPEAVString@23@H@Z"(i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?Comptime_Namespace_ToString@Type@System@bf@@CAPEAVString@23@H@Z"(i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?Comptime_GetSpecializedType@Type@System@bf@@CAPEAV123@PEAV123@U?$Span@PEAVType@System@bf@@@23@@Z"(ptr, ptr, i64) #0

; Function Attrs: nounwind uwtable
declare i1 @"?Comptime_Type_GetCustomAttribute@Type@System@bf@@CA_NHHPEAX@Z"(i32, i32, ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?Comptime_Field_GetCustomAttribute@Type@System@bf@@CA_NHHHPEAX@Z"(i32, i32, i32, ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?Comptime_Method_GetCustomAttribute@Type@System@bf@@CA_N_JHPEAX@Z"(i64, i32, ptr) #0

; Function Attrs: nounwind uwtable
declare ptr @"?Comptime_Type_GetCustomAttributeType@Type@System@bf@@CAPEAV123@HH@Z"(i32, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?Comptime_Field_GetCustomAttributeType@Type@System@bf@@CAPEAV123@HHH@Z"(i32, i32, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?Comptime_Method_GetCustomAttributeType@Type@System@bf@@CAPEAV123@_JH@Z"(i64, i32) #0

; Function Attrs: nounwind uwtable
declare i32 @"?Comptime_GetMethodCount@Type@System@bf@@CAHH@Z"(i32) #0

; Function Attrs: nounwind uwtable
declare i64 @"?Comptime_GetMethod@Type@System@bf@@CA_JHH@Z"(i32, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?Comptime_Method_ToString@Type@System@bf@@CAPEAVString@23@_J@Z"(i64) #0

; Function Attrs: nounwind uwtable
declare ptr @"?Comptime_Method_GetName@Type@System@bf@@CAPEAVString@23@_J@Z"(i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Comptime_Method_GetInfo@Type@System@bf@@CA?AUComptimeMethodData@123@_J@Z"(ptr noalias sret(%"corlib.ComptimeMethodData@Type@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Comptime_Method_GetParamInfo@Type@System@bf@@CA?AUComptimeParamInfo@123@_JH@Z"(ptr noalias sret(%"corlib.ComptimeParamInfo@Type@System@bf"), i64, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?Comptime_Method_GetGenericArg@Type@System@bf@@CAPEAV123@_JH@Z"(i64, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?Comptime_Field_GetName@Type@System@bf@@CAPEAVString@23@_J@Z"(i64) #0

; Function Attrs: nounwind uwtable
declare void @"?Comptime_Field_GetInfo@Type@System@bf@@CA?AUComptimeFieldInfo@123@_J@Z"(ptr noalias sret(%"corlib.ComptimeFieldInfo@Type@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare ptr @"?Comptime_Field_GetStatic@Type@System@bf@@CAPEAXHH@Z"(i32, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?GetType@Type@System@bf@@KAPEAV123@VTypeId@Reflection@23@@Z"(i32) #0

; Function Attrs: nounwind uwtable
define ptr @"?GetType_@Type@System@bf@@KAPEAV123@H@Z"(i32 %typeId) #0 {
entry:
  %__return = alloca ptr, align 8
  br label %if.end

if.end:                                           ; preds = %entry
  %0 = getelementptr inbounds ptr, ptr @"?sTypes@Type@System@bf@@2PEAPEAV123@A", i32 %typeId
  %1 = load ptr, ptr %0, align 8
  store ptr %1, ptr %__return, align 8
  br label %exit

exit:                                             ; preds = %if.end
  %2 = load ptr, ptr %__return, align 8
  ret ptr %2
}

; Function Attrs: nounwind uwtable
declare void @"?GetTypeByName@Type@System@bf@@SA?AU?$Result@PEAVType@System@bf@@@23@UStringView@23@@Z"(ptr noalias sret(%"corlib.?$Result@PEAVType@System@bf@@@System@bf"), ptr, i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetBasicName@Type@System@bf@@AEAAXPEAVString@23@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?ComptimeToString@Type@System@bf@@AEAAXPEAVString@23@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetFullName@Type@System@bf@@UEAAXPEAVString@23@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetName@Type@System@bf@@UEAAXPEAVString@23@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
define void @"?__BfCtor@Type@System@bf@@IEAAXXZ"(ptr %this) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare i1 @"?IsSubtypeOf@Type@System@bf@@UEAA_NPEAV123@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare i1 @"?ImplementsInterface@Type@System@bf@@UEAA_NPEAV123@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetField@Type@System@bf@@UEAA?AU?$Result@?AUFieldInfo@Reflection@System@bf@@@23@PEAVString@23@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@UFieldInfo@Reflection@System@bf@@@System@bf"), ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GetField@Type@System@bf@@UEAA?AU?$Result@?AUFieldInfo@Reflection@System@bf@@@23@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@UFieldInfo@Reflection@System@bf@@@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?GetFields@Type@System@bf@@UEAA?AUEnumerator@FieldInfo@Reflection@23@W4BindingFlags@623@@Z"(ptr, ptr noalias sret(%"corlib.Enumerator@FieldInfo@Reflection@System@bf"), i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GetCustomAttributes@Type@System@bf@@QEAA?AUCustomAttributeEnumerator@AttributeInfo@Reflection@23@XZ"(ptr, ptr noalias sret(%"corlib.CustomAttributeEnumerator@AttributeInfo@Reflection@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?GetCustomAttributes@COMPTIME$Type@System@bf@@QEAA?AUComptimeTypeCustomAttributeEnumerator@AttributeInfo@Reflection@23@XZ"(ptr, ptr noalias sret(%"corlib.ComptimeTypeCustomAttributeEnumerator@AttributeInfo@Reflection@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"??$GetCustomAttributes@U_M0@@@COMPTIME$Type@System@bf@@QEAA?AU?$ComptimeTypeCustomAttributeEnumerator@U_M0@@@AttributeInfo@Reflection@23@XZ"(ptr, ptr noalias sret(%"corlib.?$ComptimeTypeCustomAttributeEnumerator@U_M0@@@AttributeInfo@Reflection@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?__BfCtorClear@Type@System@bf@@AEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkStaticMembers@Type@System@bf@@KAXXZ"() #0

; Function Attrs: nounwind uwtable
declare void @"?GetMethods@1$Type@System@bf@@UEAA?AUEnumerator@MethodInfo@Reflection@23@W4BindingFlags@623@@Z"(ptr, ptr noalias sret(%"corlib.Enumerator@MethodInfo@Reflection@System@bf"), i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GetMethod@1$Type@System@bf@@UEAA?AU?$Result@?AUMethodInfo@Reflection@System@bf@@?AW4MethodError@Type@23@@23@UStringView@23@W4BindingFlags@Reflection@23@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@UMethodInfo@Reflection@System@bf@@W4MethodError@Type@23@@System@bf"), ptr, i64, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GetMethod@1$Type@System@bf@@UEAA?AU?$Result@?AUMethodInfo@Reflection@System@bf@@?AW4MethodError@Type@23@@23@Tint@@@Z"(ptr, ptr noalias sret(%"corlib.?$Result@UMethodInfo@Reflection@System@bf@@W4MethodError@Type@23@@System@bf"), i64) #0

; Function Attrs: nounwind uwtable
declare void @"?CreateObject@1$Type@System@bf@@UEAA?AU?$Result@PEAVObject@System@bf@@@23@XZ"(ptr, ptr noalias sret(%"corlib.?$Result@PEAVObject@System@bf@@@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?CreateValue@1$Type@System@bf@@UEAA?AU?$Result@PEAX@23@XZ"(ptr, ptr noalias sret(%"corlib.?$Result@PEAX@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?CreateValueDefault@1$Type@System@bf@@UEAA?AU?$Result@PEAX@23@XZ"(ptr, ptr noalias sret(%"corlib.?$Result@PEAX@System@bf")) #0

; Function Attrs: nounwind uwtable
define void @"?ToString@Type@System@bf@@QEAAXPEAVString@23@@Z"(ptr %this, ptr %strBuffer) #0 {
entry:
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8
  %0 = load ptr, ptr %this.addr, align 8
  call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr %strBuffer, ptr @__bfStrObj95)
  %1 = getelementptr inbounds %"corlib.Type@System@bf", ptr %0, i32 0, i32 2
  %2 = load i32, ptr %1, align 4
  call void @"?ToString__im@Int32@System@bf@@SAXHPEAVString@23@@Z"(i32 %2, ptr %strBuffer)
  call void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr %strBuffer, ptr @__bfStrObj96)
  br label %exit

exit:                                             ; preds = %entry
  ret void
}

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToTypeId@Type@System@bf@@IEAAPEAVObject@23@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare ptr @"?DynamicCastToInterface@Type@System@bf@@IEAAPEAVObject@23@H@Z"(ptr, i32) #0

; Function Attrs: nounwind uwtable
declare void @"?GCMarkMembers@Type@System@bf@@IEAAXXZ"(ptr) #0

; Function Attrs: nounwind uwtable
declare void @"??$GetCustomAttribute@U_M0@@@Type@System@bf@@QEAA?AU?$Result@U_M0@@@23@XZ"(ptr, ptr noalias sret(%"corlib.?$Result@U_M0@@@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"??$GetCustomAttribute@UStaticHookAttribute@System@bf@@@Type@System@bf@@QEAA?AU?$Result@?AUStaticHookAttribute@System@bf@@@23@XZ"(ptr, ptr noalias sret(%"corlib.?$Result@UStaticHookAttribute@System@bf@@@System@bf")) #0

; Function Attrs: nounwind uwtable
declare void @"?Append@String@System@bf@@QEAAXPEAV123@@Z"(ptr, ptr) #0

; Function Attrs: nounwind uwtable
declare void @"?ToString__im@Int32@System@bf@@SAXHPEAVString@23@@Z"(i32, ptr) #0

attributes #0 = { nounwind uwtable }
