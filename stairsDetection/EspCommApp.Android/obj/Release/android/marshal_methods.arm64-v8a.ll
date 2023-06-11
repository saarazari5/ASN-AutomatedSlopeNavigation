; ModuleID = 'obj/Release/android/marshal_methods.arm64-v8a.ll'
source_filename = "obj/Release/android/marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [120 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 11
	i64 232391251801502327, ; 1: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 42
	i64 702024105029695270, ; 2: System.Drawing.Common => 0x9be17343c0e7726 => 54
	i64 720058930071658100, ; 3: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 36
	i64 872800313462103108, ; 4: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 34
	i64 996343623809489702, ; 5: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 49
	i64 1000557547492888992, ; 6: Mono.Security.dll => 0xde2b1c9cba651a0 => 59
	i64 1060858978308751610, ; 7: Azure.Core.dll => 0xeb8ed9ebee080fa => 3
	i64 1120440138749646132, ; 8: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 51
	i64 1365487165335285542, ; 9: Azure.Storage.Common => 0x12f32f579b2a2f26 => 5
	i64 1425944114962822056, ; 10: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 2
	i64 1624659445732251991, ; 11: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 28
	i64 1795316252682057001, ; 12: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 29
	i64 1836611346387731153, ; 13: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 42
	i64 1865037103900624886, ; 14: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 10
	i64 1981742497975770890, ; 15: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 39
	i64 1986553961460820075, ; 16: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 45
	i64 2040001226662520565, ; 17: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 58
	i64 2062890601515140263, ; 18: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 24
	i64 2106033277907880740, ; 19: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 24
	i64 2262844636196693701, ; 20: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 34
	i64 2284400282711631002, ; 21: System.Web.Services => 0x1fb3d1f42fd4249a => 56
	i64 2329709569556905518, ; 22: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 38
	i64 2335503487726329082, ; 23: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 22
	i64 2337758774805907496, ; 24: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 21
	i64 2470498323731680442, ; 25: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 31
	i64 2547086958574651984, ; 26: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 27
	i64 2592350477072141967, ; 27: System.Xml.dll => 0x23f9e10627330e8f => 25
	i64 2624866290265602282, ; 28: mscorlib.dll => 0x246d65fbde2db8ea => 12
	i64 2783046991838674048, ; 29: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 21
	i64 2960931600190307745, ; 30: Xamarin.Forms.Core => 0x2917579a49927da1 => 47
	i64 3017704767998173186, ; 31: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 51
	i64 3289520064315143713, ; 32: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 37
	i64 3522470458906976663, ; 33: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 43
	i64 3531994851595924923, ; 34: System.Numerics => 0x31042a9aade235bb => 20
	i64 3727469159507183293, ; 35: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 41
	i64 4525561845656915374, ; 36: System.ServiceModel.Internals => 0x3ece06856b710dae => 57
	i64 4794310189461587505, ; 37: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 27
	i64 4795410492532947900, ; 38: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 43
	i64 5142919913060024034, ; 39: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 48
	i64 5203618020066742981, ; 40: Xamarin.Essentials => 0x4836f704f0e652c5 => 46
	i64 5507995362134886206, ; 41: System.Core.dll => 0x4c705499688c873e => 15
	i64 6085203216496545422, ; 42: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 49
	i64 6086316965293125504, ; 43: FormsViewGroup.dll => 0x5476f10882baef80 => 8
	i64 6222399776351216807, ; 44: System.Text.Json.dll => 0x565a67a0ffe264a7 => 23
	i64 6400526741775627323, ; 45: Swan.Lite => 0x58d33d2902ecb43b => 13
	i64 6401687960814735282, ; 46: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 38
	i64 6548213210057960872, ; 47: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 33
	i64 6591024623626361694, ; 48: System.Web.Services.dll => 0x5b7805f9751a1b5e => 56
	i64 6659513131007730089, ; 49: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 36
	i64 6876862101832370452, ; 50: System.Xml.Linq => 0x5f6f85a57d108914 => 26
	i64 7348123982286201829, ; 51: System.Memory.Data.dll => 0x65f9c7d471b2a3e5 => 19
	i64 7488575175965059935, ; 52: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 26
	i64 7635363394907363464, ; 53: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 47
	i64 7637365915383206639, ; 54: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 46
	i64 7654504624184590948, ; 55: System.Net.Http => 0x6a3a4366801b8264 => 1
	i64 7795584498878267886, ; 56: Azure.Storage.Blobs.dll => 0x6c2f7acc882e41ee => 4
	i64 7836164640616011524, ; 57: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 28
	i64 8083354569033831015, ; 58: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 37
	i64 8087206902342787202, ; 59: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 16
	i64 8167236081217502503, ; 60: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 9
	i64 8626175481042262068, ; 61: Java.Interop => 0x77b654e585b55834 => 9
	i64 8725526185868997716, ; 62: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 16
	i64 9324707631942237306, ; 63: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 29
	i64 9466251964451001139, ; 64: Azure.Storage.Common.dll => 0x835ee201df721333 => 5
	i64 9662334977499516867, ; 65: System.Numerics.dll => 0x8617827802b0cfc3 => 20
	i64 9678050649315576968, ; 66: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 31
	i64 9680125535200025837, ; 67: Swan.Lite.dll => 0x8656b6e302c91ced => 13
	i64 9740481398286460699, ; 68: Xamarin.TensorFlow.Lite => 0x872d2439762a271b => 53
	i64 9808709177481450983, ; 69: Mono.Android.dll => 0x881f890734e555e7 => 11
	i64 9998632235833408227, ; 70: Mono.Security => 0x8ac2470b209ebae3 => 59
	i64 10038780035334861115, ; 71: System.Net.Http.dll => 0x8b50e941206af13b => 1
	i64 10229024438826829339, ; 72: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 33
	i64 10405488732745759327, ; 73: EspCommApp.Android => 0x9067b8df2da3fa5f => 0
	i64 10430153318873392755, ; 74: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 32
	i64 10447083246144586668, ; 75: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 10
	i64 10766900902023492410, ; 76: EspCommApp.dll => 0x956bb7532cf1733a => 7
	i64 11023048688141570732, ; 77: System.Core => 0x98f9bc61168392ac => 15
	i64 11037814507248023548, ; 78: System.Xml => 0x992e31d0412bf7fc => 25
	i64 11122995063473561350, ; 79: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 45
	i64 11162124722117608902, ; 80: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 44
	i64 11271030018705124707, ; 81: EmbedIO => 0x9c6abe15e5aeed63 => 6
	i64 11316027743246122076, ; 82: Xamarin.TensorFlow.Lite.dll => 0x9d0a9b4710a67c5c => 53
	i64 11529969570048099689, ; 83: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 44
	i64 11610598810550245541, ; 84: EmbedIO.dll => 0xa121221a446b98a5 => 6
	i64 12102847907131387746, ; 85: System.Buffers => 0xa7f5f40c43256f62 => 14
	i64 12145679461940342714, ; 86: System.Text.Json => 0xa88e1f1ebcb62fba => 23
	i64 12451044538927396471, ; 87: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 35
	i64 12466513435562512481, ; 88: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 40
	i64 12538491095302438457, ; 89: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 30
	i64 12550732019250633519, ; 90: System.IO.Compression => 0xae2d28465e8e1b2f => 55
	i64 12963446364377008305, ; 91: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 54
	i64 13370592475155966277, ; 92: System.Runtime.Serialization => 0xb98de304062ea945 => 2
	i64 13454009404024712428, ; 93: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 52
	i64 13572454107664307259, ; 94: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 41
	i64 13959074834287824816, ; 95: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 35
	i64 13967638549803255703, ; 96: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 48
	i64 14124974489674258913, ; 97: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 30
	i64 14551742072151931844, ; 98: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 22
	i64 14728462717160557581, ; 99: Azure.Storage.Blobs => 0xcc6602ce77f08c0d => 4
	i64 14792063746108907174, ; 100: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 52
	i64 14987728460634540364, ; 101: System.IO.Compression.dll => 0xcfff1ba06622494c => 55
	i64 15370334346939861994, ; 102: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 32
	i64 15383240894167415497, ; 103: System.Memory.Data => 0xd57c4016df1c7ac9 => 19
	i64 15500948316419767622, ; 104: EspCommApp.Android.dll => 0xd71e6e5dc1e3bd46 => 0
	i64 15609085926864131306, ; 105: System.dll => 0xd89e9cf3334914ea => 17
	i64 15810740023422282496, ; 106: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 50
	i64 15963349826457351533, ; 107: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 58
	i64 16142336862036292109, ; 108: System.IO.Hashing => 0xe00519d9aa5df20d => 18
	i64 16154507427712707110, ; 109: System => 0xe03056ea4e39aa26 => 17
	i64 16427728525962151430, ; 110: System.IO.Hashing.dll => 0xe3fb040e78868606 => 18
	i64 16442093627123744618, ; 111: EspCommApp => 0xe42e0d0a386cbf6a => 7
	i64 16833383113903931215, ; 112: mscorlib => 0xe99c30c1484d7f4f => 12
	i64 16945858842201062480, ; 113: Azure.Core => 0xeb2bc8d57f4e7c50 => 3
	i64 17704177640604968747, ; 114: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 40
	i64 17710060891934109755, ; 115: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 39
	i64 17838668724098252521, ; 116: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 14
	i64 17882897186074144999, ; 117: FormsViewGroup => 0xf82cd03e3ac830e7 => 8
	i64 17892495832318972303, ; 118: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 50
	i64 18129453464017766560 ; 119: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 57
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [120 x i32] [
	i32 11, i32 42, i32 54, i32 36, i32 34, i32 49, i32 59, i32 3, ; 0..7
	i32 51, i32 5, i32 2, i32 28, i32 29, i32 42, i32 10, i32 39, ; 8..15
	i32 45, i32 58, i32 24, i32 24, i32 34, i32 56, i32 38, i32 22, ; 16..23
	i32 21, i32 31, i32 27, i32 25, i32 12, i32 21, i32 47, i32 51, ; 24..31
	i32 37, i32 43, i32 20, i32 41, i32 57, i32 27, i32 43, i32 48, ; 32..39
	i32 46, i32 15, i32 49, i32 8, i32 23, i32 13, i32 38, i32 33, ; 40..47
	i32 56, i32 36, i32 26, i32 19, i32 26, i32 47, i32 46, i32 1, ; 48..55
	i32 4, i32 28, i32 37, i32 16, i32 9, i32 9, i32 16, i32 29, ; 56..63
	i32 5, i32 20, i32 31, i32 13, i32 53, i32 11, i32 59, i32 1, ; 64..71
	i32 33, i32 0, i32 32, i32 10, i32 7, i32 15, i32 25, i32 45, ; 72..79
	i32 44, i32 6, i32 53, i32 44, i32 6, i32 14, i32 23, i32 35, ; 80..87
	i32 40, i32 30, i32 55, i32 54, i32 2, i32 52, i32 41, i32 35, ; 88..95
	i32 48, i32 30, i32 22, i32 4, i32 52, i32 55, i32 32, i32 19, ; 96..103
	i32 0, i32 17, i32 50, i32 58, i32 18, i32 17, i32 18, i32 7, ; 104..111
	i32 12, i32 3, i32 40, i32 39, i32 14, i32 8, i32 50, i32 57 ; 120..119
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
