; ModuleID = 'obj/Debug/android/marshal_methods.arm64-v8a.ll'
source_filename = "obj/Debug/android/marshal_methods.arm64-v8a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [224 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 56
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 17
	i64 210515253464952879, ; 2: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 46
	i64 232391251801502327, ; 3: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 78
	i64 295915112840604065, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 79
	i64 634308326490598313, ; 5: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 65
	i64 702024105029695270, ; 6: System.Drawing.Common => 0x9be17343c0e7726 => 100
	i64 720058930071658100, ; 7: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 59
	i64 872800313462103108, ; 8: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 55
	i64 940822596282819491, ; 9: System.Transactions => 0xd0e792aa81923a3 => 98
	i64 996343623809489702, ; 10: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 92
	i64 1000557547492888992, ; 11: Mono.Security.dll => 0xde2b1c9cba651a0 => 111
	i64 1060858978308751610, ; 12: Azure.Core.dll => 0xeb8ed9ebee080fa => 9
	i64 1120440138749646132, ; 13: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 94
	i64 1315114680217950157, ; 14: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 41
	i64 1365487165335285542, ; 15: Azure.Storage.Common => 0x12f32f579b2a2f26 => 11
	i64 1425944114962822056, ; 16: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 8
	i64 1624659445732251991, ; 17: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 39
	i64 1628611045998245443, ; 18: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 67
	i64 1636321030536304333, ; 19: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 60
	i64 1743969030606105336, ; 20: System.Memory.dll => 0x1833d297e88f2af8 => 26
	i64 1795316252682057001, ; 21: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 40
	i64 1836611346387731153, ; 22: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 78
	i64 1865037103900624886, ; 23: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 16
	i64 1875917498431009007, ; 24: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 37
	i64 1981742497975770890, ; 25: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 66
	i64 1986553961460820075, ; 26: Xamarin.CommunityToolkit => 0x1b91a84d8004686b => 88
	i64 2040001226662520565, ; 27: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 106
	i64 2062890601515140263, ; 28: System.Threading.Tasks.Dataflow => 0x1ca0dc1289cd44a7 => 33
	i64 2106033277907880740, ; 29: System.Threading.Tasks.Dataflow.dll => 0x1d3a221ba6d9cb24 => 33
	i64 2136356949452311481, ; 30: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 71
	i64 2165725771938924357, ; 31: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 44
	i64 2262844636196693701, ; 32: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 55
	i64 2284400282711631002, ; 33: System.Web.Services => 0x1fb3d1f42fd4249a => 104
	i64 2287834202362508563, ; 34: System.Collections.Concurrent => 0x1fc00515e8ce7513 => 3
	i64 2329709569556905518, ; 35: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 63
	i64 2335503487726329082, ; 36: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 31
	i64 2337758774805907496, ; 37: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 29
	i64 2470498323731680442, ; 38: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 50
	i64 2479423007379663237, ; 39: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 83
	i64 2497223385847772520, ; 40: System.Runtime => 0x22a7eb7046413568 => 30
	i64 2547086958574651984, ; 41: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 36
	i64 2592350477072141967, ; 42: System.Xml.dll => 0x23f9e10627330e8f => 34
	i64 2624866290265602282, ; 43: mscorlib.dll => 0x246d65fbde2db8ea => 18
	i64 2694427813909235223, ; 44: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 75
	i64 2783046991838674048, ; 45: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 29
	i64 2960931600190307745, ; 46: Xamarin.Forms.Core => 0x2917579a49927da1 => 90
	i64 3017704767998173186, ; 47: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 94
	i64 3289520064315143713, ; 48: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 62
	i64 3303437397778967116, ; 49: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 38
	i64 3311221304742556517, ; 50: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 28
	i64 3493805808809882663, ; 51: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 81
	i64 3522470458906976663, ; 52: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 80
	i64 3531994851595924923, ; 53: System.Numerics => 0x31042a9aade235bb => 27
	i64 3571415421602489686, ; 54: System.Runtime.dll => 0x319037675df7e556 => 30
	i64 3716579019761409177, ; 55: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 56: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 77
	i64 3772598417116884899, ; 57: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 56
	i64 3966267475168208030, ; 58: System.Memory => 0x370b03412596249e => 26
	i64 4525561845656915374, ; 59: System.ServiceModel.Internals => 0x3ece06856b710dae => 105
	i64 4636684751163556186, ; 60: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 85
	i64 4782108999019072045, ; 61: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 43
	i64 4794310189461587505, ; 62: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 36
	i64 4795410492532947900, ; 63: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 80
	i64 5081566143765835342, ; 64: System.Resources.ResourceManager.dll => 0x4685597c05d06e4e => 2
	i64 5099468265966638712, ; 65: System.Resources.ResourceManager => 0x46c4f35ea8519678 => 2
	i64 5142919913060024034, ; 66: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 91
	i64 5203618020066742981, ; 67: Xamarin.Essentials => 0x4836f704f0e652c5 => 89
	i64 5205316157927637098, ; 68: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 69
	i64 5348796042099802469, ; 69: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 70
	i64 5376510917114486089, ; 70: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 83
	i64 5408338804355907810, ; 71: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 82
	i64 5446034149219586269, ; 72: System.Diagnostics.Debug => 0x4b94333452e150dd => 6
	i64 5451019430259338467, ; 73: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 49
	i64 5507995362134886206, ; 74: System.Core.dll => 0x4c705499688c873e => 21
	i64 5692067934154308417, ; 75: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 87
	i64 5757522595884336624, ; 76: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 47
	i64 5814345312393086621, ; 77: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 75
	i64 5896680224035167651, ; 78: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 64
	i64 6085203216496545422, ; 79: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 92
	i64 6086316965293125504, ; 80: FormsViewGroup.dll => 0x5476f10882baef80 => 14
	i64 6222399776351216807, ; 81: System.Text.Json.dll => 0x565a67a0ffe264a7 => 32
	i64 6319713645133255417, ; 82: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 65
	i64 6400526741775627323, ; 83: Swan.Lite => 0x58d33d2902ecb43b => 19
	i64 6401687960814735282, ; 84: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 63
	i64 6504860066809920875, ; 85: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 44
	i64 6548213210057960872, ; 86: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 53
	i64 6591024623626361694, ; 87: System.Web.Services.dll => 0x5b7805f9751a1b5e => 104
	i64 6659513131007730089, ; 88: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 59
	i64 6876862101832370452, ; 89: System.Xml.Linq => 0x5f6f85a57d108914 => 35
	i64 6894844156784520562, ; 90: System.Numerics.Vectors => 0x5faf683aead1ad72 => 28
	i64 7036436454368433159, ; 91: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 61
	i64 7103753931438454322, ; 92: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 58
	i64 7338192458477945005, ; 93: System.Reflection => 0x65d67f295d0740ad => 109
	i64 7348123982286201829, ; 94: System.Memory.Data.dll => 0x65f9c7d471b2a3e5 => 25
	i64 7488575175965059935, ; 95: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 35
	i64 7635363394907363464, ; 96: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 90
	i64 7637365915383206639, ; 97: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 89
	i64 7654504624184590948, ; 98: System.Net.Http => 0x6a3a4366801b8264 => 7
	i64 7795584498878267886, ; 99: Azure.Storage.Blobs.dll => 0x6c2f7acc882e41ee => 10
	i64 7820441508502274321, ; 100: System.Data => 0x6c87ca1e14ff8111 => 97
	i64 7836164640616011524, ; 101: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 39
	i64 8044118961405839122, ; 102: System.ComponentModel.Composition => 0x6fa2739369944712 => 103
	i64 8064050204834738623, ; 103: System.Collections.dll => 0x6fe942efa61731bf => 4
	i64 8083354569033831015, ; 104: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 62
	i64 8087206902342787202, ; 105: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 22
	i64 8103644804370223335, ; 106: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 99
	i64 8167236081217502503, ; 107: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 15
	i64 8185542183669246576, ; 108: System.Collections => 0x7198e33f4794aa70 => 4
	i64 8290740647658429042, ; 109: System.Runtime.Extensions => 0x730ea0b15c929a72 => 110
	i64 8398329775253868912, ; 110: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 48
	i64 8400357532724379117, ; 111: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 74
	i64 8601935802264776013, ; 112: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 82
	i64 8626175481042262068, ; 113: Java.Interop => 0x77b654e585b55834 => 15
	i64 8639588376636138208, ; 114: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 73
	i64 8684531736582871431, ; 115: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 102
	i64 8725526185868997716, ; 116: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 22
	i64 9312692141327339315, ; 117: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 87
	i64 9324707631942237306, ; 118: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 40
	i64 9466251964451001139, ; 119: Azure.Storage.Common.dll => 0x835ee201df721333 => 11
	i64 9662334977499516867, ; 120: System.Numerics.dll => 0x8617827802b0cfc3 => 27
	i64 9678050649315576968, ; 121: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 50
	i64 9680125535200025837, ; 122: Swan.Lite.dll => 0x8656b6e302c91ced => 19
	i64 9711637524876806384, ; 123: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 70
	i64 9740481398286460699, ; 124: Xamarin.TensorFlow.Lite => 0x872d2439762a271b => 96
	i64 9808709177481450983, ; 125: Mono.Android.dll => 0x881f890734e555e7 => 17
	i64 9825649861376906464, ; 126: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 47
	i64 9834056768316610435, ; 127: System.Transactions.dll => 0x8879968718899783 => 98
	i64 9998632235833408227, ; 128: Mono.Security => 0x8ac2470b209ebae3 => 111
	i64 10038780035334861115, ; 129: System.Net.Http.dll => 0x8b50e941206af13b => 7
	i64 10229024438826829339, ; 130: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 53
	i64 10376576884623852283, ; 131: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 81
	i64 10405488732745759327, ; 132: EspCommApp.Android => 0x9067b8df2da3fa5f => 0
	i64 10430153318873392755, ; 133: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 51
	i64 10447083246144586668, ; 134: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 16
	i64 10714184849103829812, ; 135: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 110
	i64 10766900902023492410, ; 136: EspCommApp.dll => 0x956bb7532cf1733a => 13
	i64 10847732767863316357, ; 137: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 41
	i64 10964653383833615866, ; 138: System.Diagnostics.Tracing => 0x982a4628ccaffdfa => 108
	i64 11023048688141570732, ; 139: System.Core => 0x98f9bc61168392ac => 21
	i64 11037814507248023548, ; 140: System.Xml => 0x992e31d0412bf7fc => 34
	i64 11122995063473561350, ; 141: Xamarin.CommunityToolkit.dll => 0x9a5cd113fcc3df06 => 88
	i64 11162124722117608902, ; 142: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 86
	i64 11271030018705124707, ; 143: EmbedIO => 0x9c6abe15e5aeed63 => 12
	i64 11316027743246122076, ; 144: Xamarin.TensorFlow.Lite.dll => 0x9d0a9b4710a67c5c => 96
	i64 11340910727871153756, ; 145: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 52
	i64 11392833485892708388, ; 146: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 76
	i64 11485890710487134646, ; 147: System.Runtime.InteropServices => 0x9f6614bf0f8b71b6 => 107
	i64 11529969570048099689, ; 148: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 86
	i64 11578238080964724296, ; 149: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 61
	i64 11580057168383206117, ; 150: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 37
	i64 11597940890313164233, ; 151: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11610598810550245541, ; 152: EmbedIO.dll => 0xa121221a446b98a5 => 12
	i64 11672361001936329215, ; 153: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 58
	i64 12102847907131387746, ; 154: System.Buffers => 0xa7f5f40c43256f62 => 20
	i64 12137774235383566651, ; 155: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 84
	i64 12145679461940342714, ; 156: System.Text.Json => 0xa88e1f1ebcb62fba => 32
	i64 12451044538927396471, ; 157: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 57
	i64 12466513435562512481, ; 158: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 68
	i64 12487638416075308985, ; 159: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 54
	i64 12538491095302438457, ; 160: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 45
	i64 12550732019250633519, ; 161: System.IO.Compression => 0xae2d28465e8e1b2f => 101
	i64 12700543734426720211, ; 162: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 46
	i64 12963446364377008305, ; 163: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 100
	i64 13370592475155966277, ; 164: System.Runtime.Serialization => 0xb98de304062ea945 => 8
	i64 13401370062847626945, ; 165: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 84
	i64 13404347523447273790, ; 166: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 48
	i64 13454009404024712428, ; 167: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 95
	i64 13491513212026656886, ; 168: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 42
	i64 13572454107664307259, ; 169: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 77
	i64 13647894001087880694, ; 170: System.Data.dll => 0xbd670f48cb071df6 => 97
	i64 13959074834287824816, ; 171: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 57
	i64 13967638549803255703, ; 172: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 91
	i64 14124974489674258913, ; 173: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 45
	i64 14125464355221830302, ; 174: System.Threading.dll => 0xc407bafdbc707a9e => 5
	i64 14172845254133543601, ; 175: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 71
	i64 14261073672896646636, ; 176: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 76
	i64 14327695147300244862, ; 177: System.Reflection.dll => 0xc6d632d338eb4d7e => 109
	i64 14486659737292545672, ; 178: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 64
	i64 14551742072151931844, ; 179: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 31
	i64 14644440854989303794, ; 180: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 69
	i64 14728462717160557581, ; 181: Azure.Storage.Blobs => 0xcc6602ce77f08c0d => 10
	i64 14792063746108907174, ; 182: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 95
	i64 14852515768018889994, ; 183: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 52
	i64 14987728460634540364, ; 184: System.IO.Compression.dll => 0xcfff1ba06622494c => 101
	i64 14988210264188246988, ; 185: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 54
	i64 15370334346939861994, ; 186: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 51
	i64 15383240894167415497, ; 187: System.Memory.Data => 0xd57c4016df1c7ac9 => 25
	i64 15500948316419767622, ; 188: EspCommApp.Android.dll => 0xd71e6e5dc1e3bd46 => 0
	i64 15582737692548360875, ; 189: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 67
	i64 15609085926864131306, ; 190: System.dll => 0xd89e9cf3334914ea => 23
	i64 15777549416145007739, ; 191: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 79
	i64 15810740023422282496, ; 192: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 93
	i64 15963349826457351533, ; 193: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 106
	i64 16142336862036292109, ; 194: System.IO.Hashing => 0xe00519d9aa5df20d => 24
	i64 16154507427712707110, ; 195: System => 0xe03056ea4e39aa26 => 23
	i64 16427728525962151430, ; 196: System.IO.Hashing.dll => 0xe3fb040e78868606 => 24
	i64 16442093627123744618, ; 197: EspCommApp => 0xe42e0d0a386cbf6a => 13
	i64 16565028646146589191, ; 198: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 103
	i64 16621146507174665210, ; 199: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 49
	i64 16677317093839702854, ; 200: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 74
	i64 16822611501064131242, ; 201: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 99
	i64 16833383113903931215, ; 202: mscorlib => 0xe99c30c1484d7f4f => 18
	i64 16945858842201062480, ; 203: Azure.Core => 0xeb2bc8d57f4e7c50 => 9
	i64 17024911836938395553, ; 204: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 38
	i64 17031351772568316411, ; 205: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 72
	i64 17037200463775726619, ; 206: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 60
	i64 17333249706306540043, ; 207: System.Diagnostics.Tracing.dll => 0xf08c12c5bb8b920b => 108
	i64 17544493274320527064, ; 208: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 43
	i64 17685921127322830888, ; 209: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 6
	i64 17704177640604968747, ; 210: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 68
	i64 17710060891934109755, ; 211: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 66
	i64 17712670374920797664, ; 212: System.Runtime.InteropServices.dll => 0xf5d00bdc38bd3de0 => 107
	i64 17838668724098252521, ; 213: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 20
	i64 17882897186074144999, ; 214: FormsViewGroup => 0xf82cd03e3ac830e7 => 14
	i64 17892495832318972303, ; 215: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 93
	i64 17928294245072900555, ; 216: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 102
	i64 18025913125965088385, ; 217: System.Threading => 0xfa28e87b91334681 => 5
	i64 18116111925905154859, ; 218: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 42
	i64 18121036031235206392, ; 219: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 72
	i64 18129453464017766560, ; 220: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 105
	i64 18245806341561545090, ; 221: System.Collections.Concurrent.dll => 0xfd3620327d587182 => 3
	i64 18305135509493619199, ; 222: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 73
	i64 18380184030268848184 ; 223: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 85
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [224 x i32] [
	i32 56, i32 17, i32 46, i32 78, i32 79, i32 65, i32 100, i32 59, ; 0..7
	i32 55, i32 98, i32 92, i32 111, i32 9, i32 94, i32 41, i32 11, ; 8..15
	i32 8, i32 39, i32 67, i32 60, i32 26, i32 40, i32 78, i32 16, ; 16..23
	i32 37, i32 66, i32 88, i32 106, i32 33, i32 33, i32 71, i32 44, ; 24..31
	i32 55, i32 104, i32 3, i32 63, i32 31, i32 29, i32 50, i32 83, ; 32..39
	i32 30, i32 36, i32 34, i32 18, i32 75, i32 29, i32 90, i32 94, ; 40..47
	i32 62, i32 38, i32 28, i32 81, i32 80, i32 27, i32 30, i32 1, ; 48..55
	i32 77, i32 56, i32 26, i32 105, i32 85, i32 43, i32 36, i32 80, ; 56..63
	i32 2, i32 2, i32 91, i32 89, i32 69, i32 70, i32 83, i32 82, ; 64..71
	i32 6, i32 49, i32 21, i32 87, i32 47, i32 75, i32 64, i32 92, ; 72..79
	i32 14, i32 32, i32 65, i32 19, i32 63, i32 44, i32 53, i32 104, ; 80..87
	i32 59, i32 35, i32 28, i32 61, i32 58, i32 109, i32 25, i32 35, ; 88..95
	i32 90, i32 89, i32 7, i32 10, i32 97, i32 39, i32 103, i32 4, ; 96..103
	i32 62, i32 22, i32 99, i32 15, i32 4, i32 110, i32 48, i32 74, ; 104..111
	i32 82, i32 15, i32 73, i32 102, i32 22, i32 87, i32 40, i32 11, ; 112..119
	i32 27, i32 50, i32 19, i32 70, i32 96, i32 17, i32 47, i32 98, ; 120..127
	i32 111, i32 7, i32 53, i32 81, i32 0, i32 51, i32 16, i32 110, ; 128..135
	i32 13, i32 41, i32 108, i32 21, i32 34, i32 88, i32 86, i32 12, ; 136..143
	i32 96, i32 52, i32 76, i32 107, i32 86, i32 61, i32 37, i32 1, ; 144..151
	i32 12, i32 58, i32 20, i32 84, i32 32, i32 57, i32 68, i32 54, ; 152..159
	i32 45, i32 101, i32 46, i32 100, i32 8, i32 84, i32 48, i32 95, ; 160..167
	i32 42, i32 77, i32 97, i32 57, i32 91, i32 45, i32 5, i32 71, ; 168..175
	i32 76, i32 109, i32 64, i32 31, i32 69, i32 10, i32 95, i32 52, ; 176..183
	i32 101, i32 54, i32 51, i32 25, i32 0, i32 67, i32 23, i32 79, ; 184..191
	i32 93, i32 106, i32 24, i32 23, i32 24, i32 13, i32 103, i32 49, ; 192..199
	i32 74, i32 99, i32 18, i32 9, i32 38, i32 72, i32 60, i32 108, ; 200..207
	i32 43, i32 6, i32 68, i32 66, i32 107, i32 20, i32 14, i32 93, ; 208..215
	i32 102, i32 5, i32 42, i32 72, i32 105, i32 3, i32 73, i32 85 ; 224..223
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
