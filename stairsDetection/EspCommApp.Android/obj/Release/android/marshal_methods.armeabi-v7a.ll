; ModuleID = 'obj/Release/android/marshal_methods.armeabi-v7a.ll'
source_filename = "obj/Release/android/marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [120 x i32] [
	i32 34715100, ; 0: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 52
	i32 57263871, ; 1: Xamarin.Forms.Core.dll => 0x369c6ff => 47
	i32 182336117, ; 2: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 43
	i32 232815796, ; 3: System.Web.Services => 0xde07cb4 => 56
	i32 251168212, ; 4: Xamarin.TensorFlow.Lite.dll => 0xef885d4 => 53
	i32 318968648, ; 5: Xamarin.AndroidX.Activity.dll => 0x13031348 => 27
	i32 321597661, ; 6: System.Numerics => 0x132b30dd => 20
	i32 342366114, ; 7: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 37
	i32 383022788, ; 8: System.IO.Hashing.dll => 0x16d476c4 => 18
	i32 407704169, ; 9: EspCommApp.Android => 0x184d1269 => 0
	i32 442521989, ; 10: Xamarin.Essentials => 0x1a605985 => 46
	i32 450948140, ; 11: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 35
	i32 465846621, ; 12: mscorlib => 0x1bc4415d => 12
	i32 466650538, ; 13: Azure.Storage.Common => 0x1bd085aa => 5
	i32 469710990, ; 14: System.dll => 0x1bff388e => 17
	i32 548916678, ; 15: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 10
	i32 627609679, ; 16: Xamarin.AndroidX.CustomView => 0x2568904f => 33
	i32 662205335, ; 17: System.Text.Encodings.Web.dll => 0x27787397 => 22
	i32 690569205, ; 18: System.Xml.Linq.dll => 0x29293ff5 => 26
	i32 742762115, ; 19: EmbedIO.dll => 0x2c45a683 => 6
	i32 775507847, ; 20: System.IO.Compression => 0x2e394f87 => 55
	i32 809851609, ; 21: System.Drawing.Common.dll => 0x30455ad9 => 54
	i32 883101047, ; 22: System.IO.Hashing => 0x34a30d77 => 18
	i32 928116545, ; 23: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 52
	i32 967690846, ; 24: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 37
	i32 974778368, ; 25: FormsViewGroup.dll => 0x3a19f000 => 8
	i32 1012816738, ; 26: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 42
	i32 1035644815, ; 27: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 29
	i32 1042160112, ; 28: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 49
	i32 1052210849, ; 29: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 39
	i32 1098259244, ; 30: System => 0x41761b2c => 17
	i32 1245263771, ; 31: Azure.Storage.Blobs.dll => 0x4a39379b => 4
	i32 1251725941, ; 32: EmbedIO => 0x4a9bd275 => 6
	i32 1281496230, ; 33: Swan.Lite.dll => 0x4c6214a6 => 13
	i32 1293217323, ; 34: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 34
	i32 1365406463, ; 35: System.ServiceModel.Internals.dll => 0x516272ff => 57
	i32 1376866003, ; 36: Xamarin.AndroidX.SavedState => 0x52114ed3 => 42
	i32 1406073936, ; 37: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 31
	i32 1411638395, ; 38: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 21
	i32 1460219004, ; 39: Xamarin.Forms.Xaml => 0x57092c7c => 50
	i32 1462112819, ; 40: System.IO.Compression.dll => 0x57261233 => 55
	i32 1469204771, ; 41: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 28
	i32 1566207040, ; 42: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 24
	i32 1592978981, ; 43: System.Runtime.Serialization.dll => 0x5ef2ee25 => 2
	i32 1622152042, ; 44: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 40
	i32 1639515021, ; 45: System.Net.Http.dll => 0x61b9038d => 1
	i32 1658251792, ; 46: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 51
	i32 1729485958, ; 47: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 30
	i32 1766324549, ; 48: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 43
	i32 1776026572, ; 49: System.Core.dll => 0x69dc03cc => 15
	i32 1783465553, ; 50: EspCommApp.dll => 0x6a4d8651 => 7
	i32 1788241197, ; 51: Xamarin.AndroidX.Fragment => 0x6a96652d => 35
	i32 1796167890, ; 52: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 10
	i32 1808609942, ; 53: Xamarin.AndroidX.Loader => 0x6bcd3296 => 40
	i32 1813201214, ; 54: Xamarin.Google.Android.Material => 0x6c13413e => 51
	i32 1867746548, ; 55: Xamarin.Essentials.dll => 0x6f538cf4 => 46
	i32 1878053835, ; 56: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 50
	i32 2011961780, ; 57: System.Buffers.dll => 0x77ec19b4 => 14
	i32 2019465201, ; 58: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 39
	i32 2055257422, ; 59: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 38
	i32 2097448633, ; 60: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 36
	i32 2126786730, ; 61: Xamarin.Forms.Platform.Android => 0x7ec430aa => 48
	i32 2201231467, ; 62: System.Net.Http => 0x8334206b => 1
	i32 2224650153, ; 63: EspCommApp => 0x849977a9 => 7
	i32 2276822263, ; 64: EspCommApp.Android.dll => 0x87b58cf7 => 0
	i32 2279755925, ; 65: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 41
	i32 2421380589, ; 66: System.Threading.Tasks.Dataflow => 0x905355ed => 24
	i32 2475788418, ; 67: Java.Interop.dll => 0x93918882 => 9
	i32 2493473642, ; 68: Swan.Lite => 0x949f636a => 13
	i32 2570120770, ; 69: System.Text.Encodings.Web => 0x9930ee42 => 22
	i32 2628210652, ; 70: System.Memory.Data => 0x9ca74fdc => 19
	i32 2640706905, ; 71: Azure.Core => 0x9d65fd59 => 3
	i32 2732626843, ; 72: Xamarin.AndroidX.Activity => 0xa2e0939b => 27
	i32 2737747696, ; 73: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 28
	i32 2766581644, ; 74: Xamarin.Forms.Core => 0xa4e6af8c => 47
	i32 2778768386, ; 75: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 44
	i32 2810250172, ; 76: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 31
	i32 2819470561, ; 77: System.Xml.dll => 0xa80db4e1 => 25
	i32 2853208004, ; 78: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 44
	i32 2905242038, ; 79: mscorlib.dll => 0xad2a79b6 => 12
	i32 2978675010, ; 80: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 34
	i32 3033605958, ; 81: System.Memory.Data.dll => 0xb4d12746 => 19
	i32 3044182254, ; 82: FormsViewGroup => 0xb57288ee => 8
	i32 3111772706, ; 83: System.Runtime.Serialization => 0xb979e222 => 2
	i32 3124832203, ; 84: System.Threading.Tasks.Extensions => 0xba4127cb => 58
	i32 3247949154, ; 85: Mono.Security => 0xc197c562 => 59
	i32 3258312781, ; 86: Xamarin.AndroidX.CardView => 0xc235e84d => 30
	i32 3265893370, ; 87: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 58
	i32 3317135071, ; 88: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 33
	i32 3353484488, ; 89: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 36
	i32 3353544232, ; 90: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 45
	i32 3358260929, ; 91: System.Text.Json => 0xc82afec1 => 23
	i32 3362522851, ; 92: Xamarin.AndroidX.Core => 0xc86c06e3 => 32
	i32 3366347497, ; 93: Java.Interop => 0xc8a662e9 => 9
	i32 3374999561, ; 94: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 41
	i32 3395150330, ; 95: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 21
	i32 3404865022, ; 96: System.ServiceModel.Internals => 0xcaf21dfe => 57
	i32 3407215217, ; 97: Xamarin.CommunityToolkit => 0xcb15fa71 => 45
	i32 3429136800, ; 98: System.Xml => 0xcc6479a0 => 25
	i32 3476120550, ; 99: Mono.Android => 0xcf3163e6 => 11
	i32 3485117614, ; 100: System.Text.Json.dll => 0xcfbaacae => 23
	i32 3509114376, ; 101: System.Xml.Linq => 0xd128d608 => 26
	i32 3525936530, ; 102: Xamarin.TensorFlow.Lite => 0xd2298592 => 53
	i32 3536029504, ; 103: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 48
	i32 3561949811, ; 104: Azure.Core.dll => 0xd44f0a73 => 3
	i32 3632359727, ; 105: Xamarin.Forms.Platform => 0xd881692f => 49
	i32 3641597786, ; 106: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 38
	i32 3672681054, ; 107: Mono.Android.dll => 0xdae8aa5e => 11
	i32 3676310014, ; 108: System.Web.Services.dll => 0xdb2009fe => 56
	i32 3689375977, ; 109: System.Drawing.Common => 0xdbe768e9 => 54
	i32 3748608112, ; 110: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 16
	i32 3829621856, ; 111: System.Numerics.dll => 0xe4436460 => 20
	i32 3896760992, ; 112: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 32
	i32 3955647286, ; 113: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 29
	i32 4105002889, ; 114: Mono.Security.dll => 0xf4ad5f89 => 59
	i32 4151237749, ; 115: System.Core => 0xf76edc75 => 15
	i32 4170635297, ; 116: Azure.Storage.Blobs => 0xf896d821 => 4
	i32 4213026141, ; 117: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 16
	i32 4260525087, ; 118: System.Buffers => 0xfdf2741f => 14
	i32 4275986044 ; 119: Azure.Storage.Common.dll => 0xfede5e7c => 5
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [120 x i32] [
	i32 52, i32 47, i32 43, i32 56, i32 53, i32 27, i32 20, i32 37, ; 0..7
	i32 18, i32 0, i32 46, i32 35, i32 12, i32 5, i32 17, i32 10, ; 8..15
	i32 33, i32 22, i32 26, i32 6, i32 55, i32 54, i32 18, i32 52, ; 16..23
	i32 37, i32 8, i32 42, i32 29, i32 49, i32 39, i32 17, i32 4, ; 24..31
	i32 6, i32 13, i32 34, i32 57, i32 42, i32 31, i32 21, i32 50, ; 32..39
	i32 55, i32 28, i32 24, i32 2, i32 40, i32 1, i32 51, i32 30, ; 40..47
	i32 43, i32 15, i32 7, i32 35, i32 10, i32 40, i32 51, i32 46, ; 48..55
	i32 50, i32 14, i32 39, i32 38, i32 36, i32 48, i32 1, i32 7, ; 56..63
	i32 0, i32 41, i32 24, i32 9, i32 13, i32 22, i32 19, i32 3, ; 64..71
	i32 27, i32 28, i32 47, i32 44, i32 31, i32 25, i32 44, i32 12, ; 72..79
	i32 34, i32 19, i32 8, i32 2, i32 58, i32 59, i32 30, i32 58, ; 80..87
	i32 33, i32 36, i32 45, i32 23, i32 32, i32 9, i32 41, i32 21, ; 88..95
	i32 57, i32 45, i32 25, i32 11, i32 23, i32 26, i32 53, i32 48, ; 96..103
	i32 3, i32 49, i32 38, i32 11, i32 56, i32 54, i32 16, i32 20, ; 104..111
	i32 32, i32 29, i32 59, i32 15, i32 4, i32 16, i32 14, i32 5 ; 120..119
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
