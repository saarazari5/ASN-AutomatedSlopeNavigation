; ModuleID = 'obj\Debug\120\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\120\android\marshal_methods.armeabi-v7a.ll"
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
@assembly_image_cache_hashes = local_unnamed_addr constant [224 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 65
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 95
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 90
	i32 101534019, ; 3: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 79
	i32 117431740, ; 4: System.Runtime.InteropServices => 0x6ffddbc => 107
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 79
	i32 165246403, ; 6: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 46
	i32 182336117, ; 7: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 80
	i32 209399409, ; 8: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 44
	i32 220171995, ; 9: System.Diagnostics.Debug => 0xd1f8edb => 6
	i32 230216969, ; 10: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 60
	i32 232815796, ; 11: System.Web.Services => 0xde07cb4 => 104
	i32 251168212, ; 12: Xamarin.TensorFlow.Lite.dll => 0xef885d4 => 96
	i32 261689757, ; 13: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 49
	i32 278686392, ; 14: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 64
	i32 280482487, ; 15: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 58
	i32 318968648, ; 16: Xamarin.AndroidX.Activity.dll => 0x13031348 => 36
	i32 321597661, ; 17: System.Numerics => 0x132b30dd => 27
	i32 342366114, ; 18: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 62
	i32 383022788, ; 19: System.IO.Hashing.dll => 0x16d476c4 => 24
	i32 385762202, ; 20: System.Memory.dll => 0x16fe439a => 26
	i32 407704169, ; 21: EspCommApp.Android => 0x184d1269 => 0
	i32 441335492, ; 22: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 48
	i32 442521989, ; 23: Xamarin.Essentials => 0x1a605985 => 89
	i32 442565967, ; 24: System.Collections => 0x1a61054f => 4
	i32 450948140, ; 25: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 57
	i32 465846621, ; 26: mscorlib => 0x1bc4415d => 18
	i32 466650538, ; 27: Azure.Storage.Common => 0x1bd085aa => 11
	i32 469710990, ; 28: System.dll => 0x1bff388e => 23
	i32 476646585, ; 29: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 58
	i32 486930444, ; 30: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 69
	i32 526420162, ; 31: System.Transactions.dll => 0x1f6088c2 => 98
	i32 545304856, ; 32: System.Runtime.Extensions => 0x2080b118 => 110
	i32 548916678, ; 33: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 16
	i32 605376203, ; 34: System.IO.Compression.FileSystem => 0x24154ecb => 102
	i32 627609679, ; 35: Xamarin.AndroidX.CustomView => 0x2568904f => 53
	i32 662205335, ; 36: System.Text.Encodings.Web.dll => 0x27787397 => 31
	i32 663517072, ; 37: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 85
	i32 666292255, ; 38: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 41
	i32 672442732, ; 39: System.Collections.Concurrent => 0x2814a96c => 3
	i32 690569205, ; 40: System.Xml.Linq.dll => 0x29293ff5 => 35
	i32 742762115, ; 41: EmbedIO.dll => 0x2c45a683 => 12
	i32 775507847, ; 42: System.IO.Compression => 0x2e394f87 => 101
	i32 809851609, ; 43: System.Drawing.Common.dll => 0x30455ad9 => 100
	i32 843511501, ; 44: Xamarin.AndroidX.Print => 0x3246f6cd => 76
	i32 883101047, ; 45: System.IO.Hashing => 0x34a30d77 => 24
	i32 928116545, ; 46: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 95
	i32 967690846, ; 47: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 62
	i32 974778368, ; 48: FormsViewGroup.dll => 0x3a19f000 => 14
	i32 975236339, ; 49: System.Diagnostics.Tracing => 0x3a20ecf3 => 108
	i32 992768348, ; 50: System.Collections.dll => 0x3b2c715c => 4
	i32 1012816738, ; 51: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 78
	i32 1035644815, ; 52: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 40
	i32 1042160112, ; 53: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 92
	i32 1052210849, ; 54: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 66
	i32 1098259244, ; 55: System => 0x41761b2c => 23
	i32 1175144683, ; 56: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 83
	i32 1178241025, ; 57: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 73
	i32 1204270330, ; 58: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 41
	i32 1245263771, ; 59: Azure.Storage.Blobs.dll => 0x4a39379b => 10
	i32 1251725941, ; 60: EmbedIO => 0x4a9bd275 => 12
	i32 1267360935, ; 61: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 84
	i32 1281496230, ; 62: Swan.Lite.dll => 0x4c6214a6 => 19
	i32 1293217323, ; 63: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 55
	i32 1365406463, ; 64: System.ServiceModel.Internals.dll => 0x516272ff => 105
	i32 1376866003, ; 65: Xamarin.AndroidX.SavedState => 0x52114ed3 => 78
	i32 1379779777, ; 66: System.Resources.ResourceManager => 0x523dc4c1 => 2
	i32 1395857551, ; 67: Xamarin.AndroidX.Media.dll => 0x5333188f => 70
	i32 1406073936, ; 68: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 50
	i32 1411638395, ; 69: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 29
	i32 1457743152, ; 70: System.Runtime.Extensions.dll => 0x56e36530 => 110
	i32 1460219004, ; 71: Xamarin.Forms.Xaml => 0x57092c7c => 93
	i32 1462112819, ; 72: System.IO.Compression.dll => 0x57261233 => 101
	i32 1469204771, ; 73: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 39
	i32 1566207040, ; 74: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 33
	i32 1582372066, ; 75: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 54
	i32 1592978981, ; 76: System.Runtime.Serialization.dll => 0x5ef2ee25 => 8
	i32 1622152042, ; 77: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 68
	i32 1624863272, ; 78: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 87
	i32 1636350590, ; 79: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 52
	i32 1639515021, ; 80: System.Net.Http.dll => 0x61b9038d => 7
	i32 1657153582, ; 81: System.Runtime => 0x62c6282e => 30
	i32 1658241508, ; 82: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 81
	i32 1658251792, ; 83: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 94
	i32 1670060433, ; 84: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 49
	i32 1701541528, ; 85: System.Diagnostics.Debug.dll => 0x656b7698 => 6
	i32 1726116996, ; 86: System.Reflection.dll => 0x66e27484 => 109
	i32 1729485958, ; 87: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 45
	i32 1766324549, ; 88: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 80
	i32 1776026572, ; 89: System.Core.dll => 0x69dc03cc => 21
	i32 1783465553, ; 90: EspCommApp.dll => 0x6a4d8651 => 13
	i32 1788241197, ; 91: Xamarin.AndroidX.Fragment => 0x6a96652d => 57
	i32 1796167890, ; 92: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 16
	i32 1808609942, ; 93: Xamarin.AndroidX.Loader => 0x6bcd3296 => 68
	i32 1813201214, ; 94: Xamarin.Google.Android.Material => 0x6c13413e => 94
	i32 1818569960, ; 95: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 74
	i32 1867746548, ; 96: Xamarin.Essentials.dll => 0x6f538cf4 => 89
	i32 1878053835, ; 97: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 93
	i32 1885316902, ; 98: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 42
	i32 1900610850, ; 99: System.Resources.ResourceManager.dll => 0x71490522 => 2
	i32 1919157823, ; 100: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 71
	i32 2011961780, ; 101: System.Buffers.dll => 0x77ec19b4 => 20
	i32 2019465201, ; 102: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 66
	i32 2055257422, ; 103: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 63
	i32 2079903147, ; 104: System.Runtime.dll => 0x7bf8cdab => 30
	i32 2090596640, ; 105: System.Numerics.Vectors => 0x7c9bf920 => 28
	i32 2097448633, ; 106: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 59
	i32 2126786730, ; 107: Xamarin.Forms.Platform.Android => 0x7ec430aa => 91
	i32 2201231467, ; 108: System.Net.Http => 0x8334206b => 7
	i32 2217644978, ; 109: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 83
	i32 2224650153, ; 110: EspCommApp => 0x849977a9 => 13
	i32 2244775296, ; 111: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 69
	i32 2256548716, ; 112: Xamarin.AndroidX.MultiDex => 0x8680336c => 71
	i32 2261435625, ; 113: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 61
	i32 2276822263, ; 114: EspCommApp.Android.dll => 0x87b58cf7 => 0
	i32 2279755925, ; 115: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 77
	i32 2315684594, ; 116: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 37
	i32 2409053734, ; 117: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 75
	i32 2421380589, ; 118: System.Threading.Tasks.Dataflow => 0x905355ed => 33
	i32 2465532216, ; 119: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 48
	i32 2471841756, ; 120: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 121: Java.Interop.dll => 0x93918882 => 15
	i32 2493473642, ; 122: Swan.Lite => 0x949f636a => 19
	i32 2501346920, ; 123: System.Data.DataSetExtensions => 0x95178668 => 99
	i32 2505896520, ; 124: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 65
	i32 2570120770, ; 125: System.Text.Encodings.Web => 0x9930ee42 => 31
	i32 2581819634, ; 126: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 84
	i32 2620871830, ; 127: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 52
	i32 2624644809, ; 128: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 56
	i32 2628210652, ; 129: System.Memory.Data => 0x9ca74fdc => 25
	i32 2633051222, ; 130: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 64
	i32 2640706905, ; 131: Azure.Core => 0x9d65fd59 => 9
	i32 2701096212, ; 132: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 81
	i32 2732626843, ; 133: Xamarin.AndroidX.Activity => 0xa2e0939b => 36
	i32 2737747696, ; 134: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 39
	i32 2766581644, ; 135: Xamarin.Forms.Core => 0xa4e6af8c => 90
	i32 2778768386, ; 136: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 86
	i32 2810250172, ; 137: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 50
	i32 2819470561, ; 138: System.Xml.dll => 0xa80db4e1 => 34
	i32 2853208004, ; 139: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 86
	i32 2855708567, ; 140: Xamarin.AndroidX.Transition => 0xaa36a797 => 82
	i32 2901442782, ; 141: System.Reflection => 0xacf080de => 109
	i32 2903344695, ; 142: System.ComponentModel.Composition => 0xad0d8637 => 103
	i32 2905242038, ; 143: mscorlib.dll => 0xad2a79b6 => 18
	i32 2916838712, ; 144: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 87
	i32 2919462931, ; 145: System.Numerics.Vectors.dll => 0xae037813 => 28
	i32 2921128767, ; 146: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 38
	i32 2978675010, ; 147: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 55
	i32 3024354802, ; 148: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 60
	i32 3033605958, ; 149: System.Memory.Data.dll => 0xb4d12746 => 25
	i32 3044182254, ; 150: FormsViewGroup => 0xb57288ee => 14
	i32 3057625584, ; 151: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 72
	i32 3111772706, ; 152: System.Runtime.Serialization => 0xb979e222 => 8
	i32 3124832203, ; 153: System.Threading.Tasks.Extensions => 0xba4127cb => 106
	i32 3147165239, ; 154: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 108
	i32 3204380047, ; 155: System.Data.dll => 0xbefef58f => 97
	i32 3211777861, ; 156: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 54
	i32 3220365878, ; 157: System.Threading => 0xbff2e236 => 5
	i32 3247949154, ; 158: Mono.Security => 0xc197c562 => 111
	i32 3258312781, ; 159: Xamarin.AndroidX.CardView => 0xc235e84d => 45
	i32 3265893370, ; 160: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 106
	i32 3267021929, ; 161: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 43
	i32 3317135071, ; 162: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 53
	i32 3317144872, ; 163: System.Data => 0xc5b79d28 => 97
	i32 3340431453, ; 164: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 42
	i32 3346324047, ; 165: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 73
	i32 3353484488, ; 166: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 59
	i32 3353544232, ; 167: Xamarin.CommunityToolkit.dll => 0xc7e30628 => 88
	i32 3358260929, ; 168: System.Text.Json => 0xc82afec1 => 32
	i32 3362522851, ; 169: Xamarin.AndroidX.Core => 0xc86c06e3 => 51
	i32 3366347497, ; 170: Java.Interop => 0xc8a662e9 => 15
	i32 3374999561, ; 171: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 77
	i32 3395150330, ; 172: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 29
	i32 3404865022, ; 173: System.ServiceModel.Internals => 0xcaf21dfe => 105
	i32 3407215217, ; 174: Xamarin.CommunityToolkit => 0xcb15fa71 => 88
	i32 3429136800, ; 175: System.Xml => 0xcc6479a0 => 34
	i32 3430777524, ; 176: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 177: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 56
	i32 3476120550, ; 178: Mono.Android => 0xcf3163e6 => 17
	i32 3485117614, ; 179: System.Text.Json.dll => 0xcfbaacae => 32
	i32 3486566296, ; 180: System.Transactions => 0xcfd0c798 => 98
	i32 3493954962, ; 181: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 47
	i32 3501239056, ; 182: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 43
	i32 3509114376, ; 183: System.Xml.Linq => 0xd128d608 => 35
	i32 3525936530, ; 184: Xamarin.TensorFlow.Lite => 0xd2298592 => 96
	i32 3536029504, ; 185: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 91
	i32 3561949811, ; 186: Azure.Core.dll => 0xd44f0a73 => 9
	i32 3567349600, ; 187: System.ComponentModel.Composition.dll => 0xd4a16f60 => 103
	i32 3618140916, ; 188: Xamarin.AndroidX.Preference => 0xd7a872f4 => 75
	i32 3627220390, ; 189: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 76
	i32 3632359727, ; 190: Xamarin.Forms.Platform => 0xd881692f => 92
	i32 3633644679, ; 191: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 38
	i32 3641597786, ; 192: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 63
	i32 3672681054, ; 193: Mono.Android.dll => 0xdae8aa5e => 17
	i32 3676310014, ; 194: System.Web.Services.dll => 0xdb2009fe => 104
	i32 3682565725, ; 195: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 44
	i32 3684561358, ; 196: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 47
	i32 3689375977, ; 197: System.Drawing.Common => 0xdbe768e9 => 100
	i32 3718780102, ; 198: Xamarin.AndroidX.Annotation => 0xdda814c6 => 37
	i32 3724971120, ; 199: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 72
	i32 3748608112, ; 200: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 22
	i32 3758932259, ; 201: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 61
	i32 3786282454, ; 202: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 46
	i32 3822602673, ; 203: Xamarin.AndroidX.Media => 0xe3d849b1 => 70
	i32 3829621856, ; 204: System.Numerics.dll => 0xe4436460 => 27
	i32 3849253459, ; 205: System.Runtime.InteropServices.dll => 0xe56ef253 => 107
	i32 3885922214, ; 206: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 82
	i32 3896106733, ; 207: System.Collections.Concurrent.dll => 0xe839deed => 3
	i32 3896760992, ; 208: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 51
	i32 3920810846, ; 209: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 102
	i32 3921031405, ; 210: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 85
	i32 3931092270, ; 211: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 74
	i32 3945713374, ; 212: System.Data.DataSetExtensions.dll => 0xeb2ecede => 99
	i32 3955647286, ; 213: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 40
	i32 4025784931, ; 214: System.Memory => 0xeff49a63 => 26
	i32 4073602200, ; 215: System.Threading.dll => 0xf2ce3c98 => 5
	i32 4105002889, ; 216: Mono.Security.dll => 0xf4ad5f89 => 111
	i32 4151237749, ; 217: System.Core => 0xf76edc75 => 21
	i32 4170635297, ; 218: Azure.Storage.Blobs => 0xf896d821 => 10
	i32 4182413190, ; 219: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 67
	i32 4213026141, ; 220: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 22
	i32 4260525087, ; 221: System.Buffers => 0xfdf2741f => 20
	i32 4275986044, ; 222: Azure.Storage.Common.dll => 0xfede5e7c => 11
	i32 4292120959 ; 223: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 67
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [224 x i32] [
	i32 65, i32 95, i32 90, i32 79, i32 107, i32 79, i32 46, i32 80, ; 0..7
	i32 44, i32 6, i32 60, i32 104, i32 96, i32 49, i32 64, i32 58, ; 8..15
	i32 36, i32 27, i32 62, i32 24, i32 26, i32 0, i32 48, i32 89, ; 16..23
	i32 4, i32 57, i32 18, i32 11, i32 23, i32 58, i32 69, i32 98, ; 24..31
	i32 110, i32 16, i32 102, i32 53, i32 31, i32 85, i32 41, i32 3, ; 32..39
	i32 35, i32 12, i32 101, i32 100, i32 76, i32 24, i32 95, i32 62, ; 40..47
	i32 14, i32 108, i32 4, i32 78, i32 40, i32 92, i32 66, i32 23, ; 48..55
	i32 83, i32 73, i32 41, i32 10, i32 12, i32 84, i32 19, i32 55, ; 56..63
	i32 105, i32 78, i32 2, i32 70, i32 50, i32 29, i32 110, i32 93, ; 64..71
	i32 101, i32 39, i32 33, i32 54, i32 8, i32 68, i32 87, i32 52, ; 72..79
	i32 7, i32 30, i32 81, i32 94, i32 49, i32 6, i32 109, i32 45, ; 80..87
	i32 80, i32 21, i32 13, i32 57, i32 16, i32 68, i32 94, i32 74, ; 88..95
	i32 89, i32 93, i32 42, i32 2, i32 71, i32 20, i32 66, i32 63, ; 96..103
	i32 30, i32 28, i32 59, i32 91, i32 7, i32 83, i32 13, i32 69, ; 104..111
	i32 71, i32 61, i32 0, i32 77, i32 37, i32 75, i32 33, i32 48, ; 112..119
	i32 1, i32 15, i32 19, i32 99, i32 65, i32 31, i32 84, i32 52, ; 120..127
	i32 56, i32 25, i32 64, i32 9, i32 81, i32 36, i32 39, i32 90, ; 128..135
	i32 86, i32 50, i32 34, i32 86, i32 82, i32 109, i32 103, i32 18, ; 136..143
	i32 87, i32 28, i32 38, i32 55, i32 60, i32 25, i32 14, i32 72, ; 144..151
	i32 8, i32 106, i32 108, i32 97, i32 54, i32 5, i32 111, i32 45, ; 152..159
	i32 106, i32 43, i32 53, i32 97, i32 42, i32 73, i32 59, i32 88, ; 160..167
	i32 32, i32 51, i32 15, i32 77, i32 29, i32 105, i32 88, i32 34, ; 168..175
	i32 1, i32 56, i32 17, i32 32, i32 98, i32 47, i32 43, i32 35, ; 176..183
	i32 96, i32 91, i32 9, i32 103, i32 75, i32 76, i32 92, i32 38, ; 184..191
	i32 63, i32 17, i32 104, i32 44, i32 47, i32 100, i32 37, i32 72, ; 192..199
	i32 22, i32 61, i32 46, i32 70, i32 27, i32 107, i32 82, i32 3, ; 200..207
	i32 51, i32 102, i32 85, i32 74, i32 99, i32 40, i32 26, i32 5, ; 208..215
	i32 111, i32 21, i32 10, i32 67, i32 22, i32 20, i32 11, i32 67 ; 224..223
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
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a200af12c1e846626b8caebd926ac14c185f71ec"}
!llvm.linker.options = !{}
