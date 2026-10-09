package com.unity3d.services.core.domain.task;

import com.unity3d.services.core.configuration.Configuration;
import com.unity3d.services.core.configuration.ErrorState;
import com.unity3d.services.core.configuration.InitializeEventsMetricSender;
import com.unity3d.services.core.domain.ResultExtensionsKt;
import com.unity3d.services.core.lifecycle.CachedLifecycle;
import com.unity3d.services.core.log.DeviceLog;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: InitializeSDK.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/Result;", "", "<anonymous>"}, k = 3, mv = {1, 8, 0})
@DebugMetadata(c = "com.unity3d.services.core.domain.task.InitializeSDK$doWork$2", f = "InitializeSDK.kt", i = {0, 1, 1, 2, 3, 3, 4, 4, 4, 5, 5, 5, 6, 7, 8, 8, 9, 10}, l = {44, 49, 51, 56, 58, 62, 65, 80, 83, 91, 94, 97}, m = "invokeSuspend", n = {"$this$withContext", "$this$withContext", "configuration", "resetResult", "$this$withContext", "configuration", "$this$withContext", "configResult", "configuration", "$this$withContext", "configResult", "configuration", "loadCacheResult", "configResult", "configResult", "loadWebResult", "configResult", "configResult"}, s = {"L$0", "L$0", "L$2", "L$0", "L$0", "L$2", "L$0", "L$2", "L$3", "L$0", "L$2", "L$3", "L$0", "L$1", "L$1", "L$2", "L$1", "L$1"})
final class InitializeSDK$doWork$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends Unit>>, Object> {
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ InitializeSDK this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    InitializeSDK$doWork$2(InitializeSDK initializeSDK, Continuation<? super InitializeSDK$doWork$2> continuation) {
        super(2, continuation);
        this.this$0 = initializeSDK;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        InitializeSDK$doWork$2 initializeSDK$doWork$2 = new InitializeSDK$doWork$2(this.this$0, continuation);
        initializeSDK$doWork$2.L$0 = obj;
        return initializeSDK$doWork$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Result<? extends Unit>> continuation) {
        return invoke2(coroutineScope, (Continuation<? super Result<Unit>>) continuation);
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final Object invoke2(CoroutineScope coroutineScope, Continuation<? super Result<Unit>> continuation) {
        return ((InitializeSDK$doWork$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0298 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:102:0x02a3 A[Catch: all -> 0x031d, CancellationException -> 0x034a, TryCatch #2 {CancellationException -> 0x034a, all -> 0x031d, blocks: (B:6:0x0014, B:116:0x0307, B:9:0x0025, B:113:0x02e8, B:12:0x0030, B:108:0x02cf, B:110:0x02d5, B:15:0x0043, B:101:0x0299, B:104:0x02a9, B:18:0x004e, B:96:0x027e, B:98:0x0284, B:22:0x005e, B:82:0x020e, B:84:0x0214, B:85:0x0221, B:25:0x0076, B:77:0x01f0, B:79:0x01f6, B:86:0x0222, B:88:0x022d, B:90:0x0237, B:92:0x023d, B:93:0x025a, B:102:0x02a3, B:117:0x0311, B:118:0x031c, B:28:0x0092, B:74:0x01cd, B:31:0x00a3, B:69:0x01b1, B:71:0x01b7, B:34:0x00b3, B:61:0x017e, B:63:0x0184, B:64:0x0191, B:37:0x00c9, B:56:0x0162, B:58:0x0168, B:65:0x0192, B:40:0x00df, B:47:0x011f, B:49:0x0125, B:50:0x0138, B:53:0x0144, B:43:0x00f2), top: B:131:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:106:0x02cc A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:107:0x02cd  */
    /* JADX WARN: Code duplicated, block: B:110:0x02d5 A[Catch: all -> 0x031d, CancellationException -> 0x034a, TryCatch #2 {CancellationException -> 0x034a, all -> 0x031d, blocks: (B:6:0x0014, B:116:0x0307, B:9:0x0025, B:113:0x02e8, B:12:0x0030, B:108:0x02cf, B:110:0x02d5, B:15:0x0043, B:101:0x0299, B:104:0x02a9, B:18:0x004e, B:96:0x027e, B:98:0x0284, B:22:0x005e, B:82:0x020e, B:84:0x0214, B:85:0x0221, B:25:0x0076, B:77:0x01f0, B:79:0x01f6, B:86:0x0222, B:88:0x022d, B:90:0x0237, B:92:0x023d, B:93:0x025a, B:102:0x02a3, B:117:0x0311, B:118:0x031c, B:28:0x0092, B:74:0x01cd, B:31:0x00a3, B:69:0x01b1, B:71:0x01b7, B:34:0x00b3, B:61:0x017e, B:63:0x0184, B:64:0x0191, B:37:0x00c9, B:56:0x0162, B:58:0x0168, B:65:0x0192, B:40:0x00df, B:47:0x011f, B:49:0x0125, B:50:0x0138, B:53:0x0144, B:43:0x00f2), top: B:131:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:112:0x02e7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:115:0x0306 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:117:0x0311 A[Catch: all -> 0x031d, CancellationException -> 0x034a, TryCatch #2 {CancellationException -> 0x034a, all -> 0x031d, blocks: (B:6:0x0014, B:116:0x0307, B:9:0x0025, B:113:0x02e8, B:12:0x0030, B:108:0x02cf, B:110:0x02d5, B:15:0x0043, B:101:0x0299, B:104:0x02a9, B:18:0x004e, B:96:0x027e, B:98:0x0284, B:22:0x005e, B:82:0x020e, B:84:0x0214, B:85:0x0221, B:25:0x0076, B:77:0x01f0, B:79:0x01f6, B:86:0x0222, B:88:0x022d, B:90:0x0237, B:92:0x023d, B:93:0x025a, B:102:0x02a3, B:117:0x0311, B:118:0x031c, B:28:0x0092, B:74:0x01cd, B:31:0x00a3, B:69:0x01b1, B:71:0x01b7, B:34:0x00b3, B:61:0x017e, B:63:0x0184, B:64:0x0191, B:37:0x00c9, B:56:0x0162, B:58:0x0168, B:65:0x0192, B:40:0x00df, B:47:0x011f, B:49:0x0125, B:50:0x0138, B:53:0x0144, B:43:0x00f2), top: B:131:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:123:0x032e  */
    /* JADX WARN: Code duplicated, block: B:124:0x0335  */
    /* JADX WARN: Code duplicated, block: B:126:0x033b  */
    /* JADX WARN: Code duplicated, block: B:132:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:133:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x0125 A[Catch: all -> 0x031d, CancellationException -> 0x034a, TryCatch #2 {CancellationException -> 0x034a, all -> 0x031d, blocks: (B:6:0x0014, B:116:0x0307, B:9:0x0025, B:113:0x02e8, B:12:0x0030, B:108:0x02cf, B:110:0x02d5, B:15:0x0043, B:101:0x0299, B:104:0x02a9, B:18:0x004e, B:96:0x027e, B:98:0x0284, B:22:0x005e, B:82:0x020e, B:84:0x0214, B:85:0x0221, B:25:0x0076, B:77:0x01f0, B:79:0x01f6, B:86:0x0222, B:88:0x022d, B:90:0x0237, B:92:0x023d, B:93:0x025a, B:102:0x02a3, B:117:0x0311, B:118:0x031c, B:28:0x0092, B:74:0x01cd, B:31:0x00a3, B:69:0x01b1, B:71:0x01b7, B:34:0x00b3, B:61:0x017e, B:63:0x0184, B:64:0x0191, B:37:0x00c9, B:56:0x0162, B:58:0x0168, B:65:0x0192, B:40:0x00df, B:47:0x011f, B:49:0x0125, B:50:0x0138, B:53:0x0144, B:43:0x00f2), top: B:131:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:52:0x0143  */
    /* JADX WARN: Code duplicated, block: B:55:0x0161 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:58:0x0168 A[Catch: all -> 0x031d, CancellationException -> 0x034a, TryCatch #2 {CancellationException -> 0x034a, all -> 0x031d, blocks: (B:6:0x0014, B:116:0x0307, B:9:0x0025, B:113:0x02e8, B:12:0x0030, B:108:0x02cf, B:110:0x02d5, B:15:0x0043, B:101:0x0299, B:104:0x02a9, B:18:0x004e, B:96:0x027e, B:98:0x0284, B:22:0x005e, B:82:0x020e, B:84:0x0214, B:85:0x0221, B:25:0x0076, B:77:0x01f0, B:79:0x01f6, B:86:0x0222, B:88:0x022d, B:90:0x0237, B:92:0x023d, B:93:0x025a, B:102:0x02a3, B:117:0x0311, B:118:0x031c, B:28:0x0092, B:74:0x01cd, B:31:0x00a3, B:69:0x01b1, B:71:0x01b7, B:34:0x00b3, B:61:0x017e, B:63:0x0184, B:64:0x0191, B:37:0x00c9, B:56:0x0162, B:58:0x0168, B:65:0x0192, B:40:0x00df, B:47:0x011f, B:49:0x0125, B:50:0x0138, B:53:0x0144, B:43:0x00f2), top: B:131:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x017d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:63:0x0184 A[Catch: all -> 0x031d, CancellationException -> 0x034a, TryCatch #2 {CancellationException -> 0x034a, all -> 0x031d, blocks: (B:6:0x0014, B:116:0x0307, B:9:0x0025, B:113:0x02e8, B:12:0x0030, B:108:0x02cf, B:110:0x02d5, B:15:0x0043, B:101:0x0299, B:104:0x02a9, B:18:0x004e, B:96:0x027e, B:98:0x0284, B:22:0x005e, B:82:0x020e, B:84:0x0214, B:85:0x0221, B:25:0x0076, B:77:0x01f0, B:79:0x01f6, B:86:0x0222, B:88:0x022d, B:90:0x0237, B:92:0x023d, B:93:0x025a, B:102:0x02a3, B:117:0x0311, B:118:0x031c, B:28:0x0092, B:74:0x01cd, B:31:0x00a3, B:69:0x01b1, B:71:0x01b7, B:34:0x00b3, B:61:0x017e, B:63:0x0184, B:64:0x0191, B:37:0x00c9, B:56:0x0162, B:58:0x0168, B:65:0x0192, B:40:0x00df, B:47:0x011f, B:49:0x0125, B:50:0x0138, B:53:0x0144, B:43:0x00f2), top: B:131:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:65:0x0192 A[Catch: all -> 0x031d, CancellationException -> 0x034a, TryCatch #2 {CancellationException -> 0x034a, all -> 0x031d, blocks: (B:6:0x0014, B:116:0x0307, B:9:0x0025, B:113:0x02e8, B:12:0x0030, B:108:0x02cf, B:110:0x02d5, B:15:0x0043, B:101:0x0299, B:104:0x02a9, B:18:0x004e, B:96:0x027e, B:98:0x0284, B:22:0x005e, B:82:0x020e, B:84:0x0214, B:85:0x0221, B:25:0x0076, B:77:0x01f0, B:79:0x01f6, B:86:0x0222, B:88:0x022d, B:90:0x0237, B:92:0x023d, B:93:0x025a, B:102:0x02a3, B:117:0x0311, B:118:0x031c, B:28:0x0092, B:74:0x01cd, B:31:0x00a3, B:69:0x01b1, B:71:0x01b7, B:34:0x00b3, B:61:0x017e, B:63:0x0184, B:64:0x0191, B:37:0x00c9, B:56:0x0162, B:58:0x0168, B:65:0x0192, B:40:0x00df, B:47:0x011f, B:49:0x0125, B:50:0x0138, B:53:0x0144, B:43:0x00f2), top: B:131:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:67:0x01ac A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:68:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:71:0x01b7 A[Catch: all -> 0x031d, CancellationException -> 0x034a, TryCatch #2 {CancellationException -> 0x034a, all -> 0x031d, blocks: (B:6:0x0014, B:116:0x0307, B:9:0x0025, B:113:0x02e8, B:12:0x0030, B:108:0x02cf, B:110:0x02d5, B:15:0x0043, B:101:0x0299, B:104:0x02a9, B:18:0x004e, B:96:0x027e, B:98:0x0284, B:22:0x005e, B:82:0x020e, B:84:0x0214, B:85:0x0221, B:25:0x0076, B:77:0x01f0, B:79:0x01f6, B:86:0x0222, B:88:0x022d, B:90:0x0237, B:92:0x023d, B:93:0x025a, B:102:0x02a3, B:117:0x0311, B:118:0x031c, B:28:0x0092, B:74:0x01cd, B:31:0x00a3, B:69:0x01b1, B:71:0x01b7, B:34:0x00b3, B:61:0x017e, B:63:0x0184, B:64:0x0191, B:37:0x00c9, B:56:0x0162, B:58:0x0168, B:65:0x0192, B:40:0x00df, B:47:0x011f, B:49:0x0125, B:50:0x0138, B:53:0x0144, B:43:0x00f2), top: B:131:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x01cc A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:76:0x01ef A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:79:0x01f6 A[Catch: all -> 0x031d, CancellationException -> 0x034a, TryCatch #2 {CancellationException -> 0x034a, all -> 0x031d, blocks: (B:6:0x0014, B:116:0x0307, B:9:0x0025, B:113:0x02e8, B:12:0x0030, B:108:0x02cf, B:110:0x02d5, B:15:0x0043, B:101:0x0299, B:104:0x02a9, B:18:0x004e, B:96:0x027e, B:98:0x0284, B:22:0x005e, B:82:0x020e, B:84:0x0214, B:85:0x0221, B:25:0x0076, B:77:0x01f0, B:79:0x01f6, B:86:0x0222, B:88:0x022d, B:90:0x0237, B:92:0x023d, B:93:0x025a, B:102:0x02a3, B:117:0x0311, B:118:0x031c, B:28:0x0092, B:74:0x01cd, B:31:0x00a3, B:69:0x01b1, B:71:0x01b7, B:34:0x00b3, B:61:0x017e, B:63:0x0184, B:64:0x0191, B:37:0x00c9, B:56:0x0162, B:58:0x0168, B:65:0x0192, B:40:0x00df, B:47:0x011f, B:49:0x0125, B:50:0x0138, B:53:0x0144, B:43:0x00f2), top: B:131:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x020d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:84:0x0214 A[Catch: all -> 0x031d, CancellationException -> 0x034a, TryCatch #2 {CancellationException -> 0x034a, all -> 0x031d, blocks: (B:6:0x0014, B:116:0x0307, B:9:0x0025, B:113:0x02e8, B:12:0x0030, B:108:0x02cf, B:110:0x02d5, B:15:0x0043, B:101:0x0299, B:104:0x02a9, B:18:0x004e, B:96:0x027e, B:98:0x0284, B:22:0x005e, B:82:0x020e, B:84:0x0214, B:85:0x0221, B:25:0x0076, B:77:0x01f0, B:79:0x01f6, B:86:0x0222, B:88:0x022d, B:90:0x0237, B:92:0x023d, B:93:0x025a, B:102:0x02a3, B:117:0x0311, B:118:0x031c, B:28:0x0092, B:74:0x01cd, B:31:0x00a3, B:69:0x01b1, B:71:0x01b7, B:34:0x00b3, B:61:0x017e, B:63:0x0184, B:64:0x0191, B:37:0x00c9, B:56:0x0162, B:58:0x0168, B:65:0x0192, B:40:0x00df, B:47:0x011f, B:49:0x0125, B:50:0x0138, B:53:0x0144, B:43:0x00f2), top: B:131:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x0222 A[Catch: all -> 0x031d, CancellationException -> 0x034a, TryCatch #2 {CancellationException -> 0x034a, all -> 0x031d, blocks: (B:6:0x0014, B:116:0x0307, B:9:0x0025, B:113:0x02e8, B:12:0x0030, B:108:0x02cf, B:110:0x02d5, B:15:0x0043, B:101:0x0299, B:104:0x02a9, B:18:0x004e, B:96:0x027e, B:98:0x0284, B:22:0x005e, B:82:0x020e, B:84:0x0214, B:85:0x0221, B:25:0x0076, B:77:0x01f0, B:79:0x01f6, B:86:0x0222, B:88:0x022d, B:90:0x0237, B:92:0x023d, B:93:0x025a, B:102:0x02a3, B:117:0x0311, B:118:0x031c, B:28:0x0092, B:74:0x01cd, B:31:0x00a3, B:69:0x01b1, B:71:0x01b7, B:34:0x00b3, B:61:0x017e, B:63:0x0184, B:64:0x0191, B:37:0x00c9, B:56:0x0162, B:58:0x0168, B:65:0x0192, B:40:0x00df, B:47:0x011f, B:49:0x0125, B:50:0x0138, B:53:0x0144, B:43:0x00f2), top: B:131:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x022d A[Catch: all -> 0x031d, CancellationException -> 0x034a, TryCatch #2 {CancellationException -> 0x034a, all -> 0x031d, blocks: (B:6:0x0014, B:116:0x0307, B:9:0x0025, B:113:0x02e8, B:12:0x0030, B:108:0x02cf, B:110:0x02d5, B:15:0x0043, B:101:0x0299, B:104:0x02a9, B:18:0x004e, B:96:0x027e, B:98:0x0284, B:22:0x005e, B:82:0x020e, B:84:0x0214, B:85:0x0221, B:25:0x0076, B:77:0x01f0, B:79:0x01f6, B:86:0x0222, B:88:0x022d, B:90:0x0237, B:92:0x023d, B:93:0x025a, B:102:0x02a3, B:117:0x0311, B:118:0x031c, B:28:0x0092, B:74:0x01cd, B:31:0x00a3, B:69:0x01b1, B:71:0x01b7, B:34:0x00b3, B:61:0x017e, B:63:0x0184, B:64:0x0191, B:37:0x00c9, B:56:0x0162, B:58:0x0168, B:65:0x0192, B:40:0x00df, B:47:0x011f, B:49:0x0125, B:50:0x0138, B:53:0x0144, B:43:0x00f2), top: B:131:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:90:0x0237 A[Catch: all -> 0x031d, CancellationException -> 0x034a, TryCatch #2 {CancellationException -> 0x034a, all -> 0x031d, blocks: (B:6:0x0014, B:116:0x0307, B:9:0x0025, B:113:0x02e8, B:12:0x0030, B:108:0x02cf, B:110:0x02d5, B:15:0x0043, B:101:0x0299, B:104:0x02a9, B:18:0x004e, B:96:0x027e, B:98:0x0284, B:22:0x005e, B:82:0x020e, B:84:0x0214, B:85:0x0221, B:25:0x0076, B:77:0x01f0, B:79:0x01f6, B:86:0x0222, B:88:0x022d, B:90:0x0237, B:92:0x023d, B:93:0x025a, B:102:0x02a3, B:117:0x0311, B:118:0x031c, B:28:0x0092, B:74:0x01cd, B:31:0x00a3, B:69:0x01b1, B:71:0x01b7, B:34:0x00b3, B:61:0x017e, B:63:0x0184, B:64:0x0191, B:37:0x00c9, B:56:0x0162, B:58:0x0168, B:65:0x0192, B:40:0x00df, B:47:0x011f, B:49:0x0125, B:50:0x0138, B:53:0x0144, B:43:0x00f2), top: B:131:0x0009 }] */
    /* JADX WARN: Code duplicated, block: B:95:0x027d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:98:0x0284 A[Catch: all -> 0x031d, CancellationException -> 0x034a, TryCatch #2 {CancellationException -> 0x034a, all -> 0x031d, blocks: (B:6:0x0014, B:116:0x0307, B:9:0x0025, B:113:0x02e8, B:12:0x0030, B:108:0x02cf, B:110:0x02d5, B:15:0x0043, B:101:0x0299, B:104:0x02a9, B:18:0x004e, B:96:0x027e, B:98:0x0284, B:22:0x005e, B:82:0x020e, B:84:0x0214, B:85:0x0221, B:25:0x0076, B:77:0x01f0, B:79:0x01f6, B:86:0x0222, B:88:0x022d, B:90:0x0237, B:92:0x023d, B:93:0x025a, B:102:0x02a3, B:117:0x0311, B:118:0x031c, B:28:0x0092, B:74:0x01cd, B:31:0x00a3, B:69:0x01b1, B:71:0x01b7, B:34:0x00b3, B:61:0x017e, B:63:0x0184, B:64:0x0191, B:37:0x00c9, B:56:0x0162, B:58:0x0168, B:65:0x0192, B:40:0x00df, B:47:0x011f, B:49:0x0125, B:50:0x0138, B:53:0x0144, B:43:0x00f2), top: B:131:0x0009 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:49:0x0125, please report this as an issue */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        Object objM601constructorimpl;
        Throwable thM604exceptionOrNullimpl;
        InitializeSDK initializeSDK;
        CoroutineScope coroutineScope;
        Object value;
        Throwable thM604exceptionOrNullimpl2;
        Configuration configuration;
        Configuration configuration2;
        Object value2;
        Configuration configuration3;
        Object obj2;
        Object obj3;
        CoroutineScope coroutineScope2;
        InitializeSDK initializeSDK2;
        Object value3;
        Configuration configuration4;
        ErrorState errorState;
        Throwable thM604exceptionOrNullimpl3;
        Throwable thM604exceptionOrNullimpl4;
        InitializationException initializationExceptionOrThrow;
        Object value4;
        Configuration configuration5;
        Object obj4;
        InitializeStateLoadCache.LoadCacheResult loadCacheResult;
        String webViewData;
        Object value5;
        ErrorState errorState2;
        Throwable thM604exceptionOrNullimpl5;
        Throwable thM604exceptionOrNullimpl6;
        Object obj5;
        InitializationException initializationExceptionOrThrow2;
        Object value6;
        Object obj6;
        InitializeSDK initializeSDK3;
        InitializationException initializationExceptionOrThrow3;
        Object value7;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        try {
            switch (this.label) {
                case 0:
                    ResultKt.throwOnFailure(obj);
                    CoroutineScope coroutineScope3 = (CoroutineScope) this.L$0;
                    initializeSDK = this.this$0;
                    Result.Companion companion = Result.INSTANCE;
                    InitializeEventsMetricSender.getInstance().didInitStart();
                    CachedLifecycle.register();
                    DeviceLog.debug("Unity Ads Init: Loading Config File From Local Storage");
                    ConfigFileFromLocalStorage configFileFromLocalStorage = initializeSDK.configFileFromLocalStorage;
                    ConfigFileFromLocalStorage.Params params = new ConfigFileFromLocalStorage.Params(null, 1, null);
                    this.L$0 = coroutineScope3;
                    this.L$1 = initializeSDK;
                    this.label = 1;
                    Object obj7 = configFileFromLocalStorage.mo520invokegIAlus(params, this);
                    if (obj7 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    coroutineScope = coroutineScope3;
                    value = obj7;
                    thM604exceptionOrNullimpl2 = Result.m604exceptionOrNullimpl(value);
                    if (thM604exceptionOrNullimpl2 != null) {
                        DeviceLog.debug("Unity Ads Init: Could not load config file from local storage: " + thM604exceptionOrNullimpl2.getMessage());
                    }
                    configuration = new Configuration();
                    if (Result.m607isFailureimpl(value)) {
                        value = configuration;
                    }
                    configuration2 = (Configuration) value;
                    InitializeStateReset initializeStateReset = initializeSDK.initializeStateReset;
                    InitializeStateReset.Params params2 = new InitializeStateReset.Params(configuration2);
                    this.L$0 = coroutineScope;
                    this.L$1 = initializeSDK;
                    this.L$2 = configuration2;
                    this.label = 2;
                    value2 = initializeStateReset.mo520invokegIAlus(params2, this);
                    if (value2 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    configuration3 = configuration2;
                    obj2 = value2;
                    if (!Result.m607isFailureimpl(obj2)) {
                        InitializeStateConfig initializeStateConfig = initializeSDK.initializeStateConfig;
                        InitializeStateConfig.Params params3 = new InitializeStateConfig.Params(configuration3);
                        this.L$0 = coroutineScope;
                        this.L$1 = initializeSDK;
                        this.L$2 = configuration3;
                        this.label = 4;
                        obj3 = initializeStateConfig.mo520invokegIAlus(params3, this);
                        if (obj3 == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        coroutineScope2 = coroutineScope;
                        initializeSDK2 = initializeSDK;
                        value3 = obj3;
                        configuration4 = configuration3;
                        if (Result.m607isFailureimpl(value3)) {
                            initializationExceptionOrThrow = ResultExtensionsKt.getInitializationExceptionOrThrow(value3);
                            this.L$0 = coroutineScope2;
                            this.L$1 = initializeSDK2;
                            this.L$2 = value3;
                            this.L$3 = configuration4;
                            this.label = 5;
                            if (initializeSDK2.handleInitializationException(initializationExceptionOrThrow, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                        InitializeStateLoadCache initializeStateLoadCache = initializeSDK2.initializeStateLoadCache;
                        ResultKt.throwOnFailure(value3);
                        InitializeStateLoadCache.Params params4 = new InitializeStateLoadCache.Params((Configuration) value3);
                        this.L$0 = coroutineScope2;
                        this.L$1 = initializeSDK2;
                        this.L$2 = value3;
                        this.L$3 = configuration4;
                        this.label = 6;
                        value4 = initializeStateLoadCache.mo520invokegIAlus(params4, this);
                        if (value4 == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        configuration5 = configuration4;
                        obj4 = value4;
                        if (Result.m607isFailureimpl(obj4)) {
                            errorState2 = ErrorState.LoadCache;
                            thM604exceptionOrNullimpl5 = Result.m604exceptionOrNullimpl(obj4);
                            this.L$0 = obj4;
                            this.L$1 = null;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.label = 7;
                            if (initializeSDK2.m524executeErrorStateBWLJW6A(errorState2, thM604exceptionOrNullimpl5, configuration5, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            thM604exceptionOrNullimpl6 = Result.m604exceptionOrNullimpl(obj4);
                            if (thM604exceptionOrNullimpl6 == null) {
                                throw new Exception(ErrorState.LoadCache.toString());
                            }
                            throw thM604exceptionOrNullimpl6;
                        }
                        ResultKt.throwOnFailure(obj4);
                        loadCacheResult = (InitializeStateLoadCache.LoadCacheResult) obj4;
                        if (loadCacheResult.getHasHashMismatch()) {
                            if (!configuration5.getExperiments().isWebViewAsyncDownloadEnabled() && loadCacheResult.getWebViewData() != null) {
                                BuildersKt__Builders_commonKt.launch$default(coroutineScope2, new CoroutineName("LaunchLoadWeb"), null, new InitializeSDK$doWork$2$1$webViewData$1(initializeSDK2, value3, null), 2, null);
                                webViewData = loadCacheResult.getWebViewData();
                            } else {
                                InitializeStateLoadWeb initializeStateLoadWeb = initializeSDK2.initializeStateLoadWeb;
                                ResultKt.throwOnFailure(value3);
                                InitializeStateLoadWeb.Params params5 = new InitializeStateLoadWeb.Params((Configuration) value3);
                                this.L$0 = initializeSDK2;
                                this.L$1 = value3;
                                this.L$2 = null;
                                this.L$3 = null;
                                this.label = 8;
                                value5 = initializeStateLoadWeb.mo520invokegIAlus(params5, this);
                                if (value5 == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                obj5 = value5;
                                if (Result.m607isFailureimpl(obj5)) {
                                    initializationExceptionOrThrow2 = ResultExtensionsKt.getInitializationExceptionOrThrow(obj5);
                                    this.L$0 = initializeSDK2;
                                    this.L$1 = value3;
                                    this.L$2 = obj5;
                                    this.label = 9;
                                    if (initializeSDK2.handleInitializationException(initializationExceptionOrThrow2, this) == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                }
                                ResultKt.throwOnFailure(obj5);
                                webViewData = ((InitializeStateLoadWeb.LoadWebResult) obj5).getWebViewDataString();
                            }
                        } else {
                            webViewData = loadCacheResult.getWebViewData();
                            if (webViewData == null) {
                                throw new IllegalStateException("WebView is missing.".toString());
                            }
                        }
                        InitializeStateCreate initializeStateCreate = initializeSDK2.initializeStateCreate;
                        ResultKt.throwOnFailure(value3);
                        InitializeStateCreate.Params params6 = new InitializeStateCreate.Params((Configuration) value3, webViewData);
                        this.L$0 = initializeSDK2;
                        this.L$1 = value3;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.label = 10;
                        value6 = initializeStateCreate.mo520invokegIAlus(params6, this);
                        if (value6 == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        obj6 = value3;
                        initializeSDK3 = initializeSDK2;
                        if (Result.m607isFailureimpl(value6)) {
                            initializationExceptionOrThrow3 = ResultExtensionsKt.getInitializationExceptionOrThrow(value6);
                            this.L$0 = initializeSDK3;
                            this.L$1 = obj6;
                            this.label = 11;
                            if (initializeSDK3.handleInitializationException(initializationExceptionOrThrow3, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                        InitializeStateComplete initializeStateComplete = initializeSDK3.initializeStateComplete;
                        ResultKt.throwOnFailure(obj6);
                        InitializeStateComplete.Params params7 = new InitializeStateComplete.Params((Configuration) obj6);
                        this.L$0 = null;
                        this.L$1 = null;
                        this.label = 12;
                        value7 = initializeStateComplete.mo520invokegIAlus(params7, this);
                        if (value7 == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        ResultKt.throwOnFailure(value7);
                        objM601constructorimpl = Result.m601constructorimpl(Unit.INSTANCE);
                        if (Result.m608isSuccessimpl(objM601constructorimpl)) {
                            Result.Companion companion2 = Result.INSTANCE;
                            objM601constructorimpl = Result.m601constructorimpl(objM601constructorimpl);
                        } else {
                            thM604exceptionOrNullimpl = Result.m604exceptionOrNullimpl(objM601constructorimpl);
                            if (thM604exceptionOrNullimpl != null) {
                                Result.Companion companion3 = Result.INSTANCE;
                                objM601constructorimpl = Result.m601constructorimpl(ResultKt.createFailure(thM604exceptionOrNullimpl));
                            }
                        }
                        return Result.m600boximpl(objM601constructorimpl);
                    }
                    errorState = ErrorState.ResetWebApp;
                    thM604exceptionOrNullimpl3 = Result.m604exceptionOrNullimpl(obj2);
                    this.L$0 = obj2;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.label = 3;
                    if (initializeSDK.m524executeErrorStateBWLJW6A(errorState, thM604exceptionOrNullimpl3, configuration3, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    thM604exceptionOrNullimpl4 = Result.m604exceptionOrNullimpl(obj2);
                    if (thM604exceptionOrNullimpl4 == null) {
                        throw new Exception(ErrorState.ResetWebApp.toString());
                    }
                    throw thM604exceptionOrNullimpl4;
                case 1:
                    initializeSDK = (InitializeSDK) this.L$1;
                    coroutineScope = (CoroutineScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    value = ((Result) obj).getValue();
                    thM604exceptionOrNullimpl2 = Result.m604exceptionOrNullimpl(value);
                    if (thM604exceptionOrNullimpl2 != null) {
                        DeviceLog.debug("Unity Ads Init: Could not load config file from local storage: " + thM604exceptionOrNullimpl2.getMessage());
                    }
                    configuration = new Configuration();
                    if (Result.m607isFailureimpl(value)) {
                        value = configuration;
                    }
                    configuration2 = (Configuration) value;
                    InitializeStateReset initializeStateReset2 = initializeSDK.initializeStateReset;
                    InitializeStateReset.Params params8 = new InitializeStateReset.Params(configuration2);
                    this.L$0 = coroutineScope;
                    this.L$1 = initializeSDK;
                    this.L$2 = configuration2;
                    this.label = 2;
                    value2 = initializeStateReset2.mo520invokegIAlus(params8, this);
                    if (value2 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    configuration3 = configuration2;
                    obj2 = value2;
                    if (!Result.m607isFailureimpl(obj2)) {
                        InitializeStateConfig initializeStateConfig2 = initializeSDK.initializeStateConfig;
                        InitializeStateConfig.Params params9 = new InitializeStateConfig.Params(configuration3);
                        this.L$0 = coroutineScope;
                        this.L$1 = initializeSDK;
                        this.L$2 = configuration3;
                        this.label = 4;
                        obj3 = initializeStateConfig2.mo520invokegIAlus(params9, this);
                        if (obj3 == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        coroutineScope2 = coroutineScope;
                        initializeSDK2 = initializeSDK;
                        value3 = obj3;
                        configuration4 = configuration3;
                        if (Result.m607isFailureimpl(value3)) {
                            initializationExceptionOrThrow = ResultExtensionsKt.getInitializationExceptionOrThrow(value3);
                            this.L$0 = coroutineScope2;
                            this.L$1 = initializeSDK2;
                            this.L$2 = value3;
                            this.L$3 = configuration4;
                            this.label = 5;
                            if (initializeSDK2.handleInitializationException(initializationExceptionOrThrow, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                        InitializeStateLoadCache initializeStateLoadCache2 = initializeSDK2.initializeStateLoadCache;
                        ResultKt.throwOnFailure(value3);
                        InitializeStateLoadCache.Params params10 = new InitializeStateLoadCache.Params((Configuration) value3);
                        this.L$0 = coroutineScope2;
                        this.L$1 = initializeSDK2;
                        this.L$2 = value3;
                        this.L$3 = configuration4;
                        this.label = 6;
                        value4 = initializeStateLoadCache2.mo520invokegIAlus(params10, this);
                        if (value4 == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        configuration5 = configuration4;
                        obj4 = value4;
                        if (Result.m607isFailureimpl(obj4)) {
                            errorState2 = ErrorState.LoadCache;
                            thM604exceptionOrNullimpl5 = Result.m604exceptionOrNullimpl(obj4);
                            this.L$0 = obj4;
                            this.L$1 = null;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.label = 7;
                            if (initializeSDK2.m524executeErrorStateBWLJW6A(errorState2, thM604exceptionOrNullimpl5, configuration5, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            thM604exceptionOrNullimpl6 = Result.m604exceptionOrNullimpl(obj4);
                            if (thM604exceptionOrNullimpl6 == null) {
                                throw new Exception(ErrorState.LoadCache.toString());
                            }
                            throw thM604exceptionOrNullimpl6;
                        }
                        ResultKt.throwOnFailure(obj4);
                        loadCacheResult = (InitializeStateLoadCache.LoadCacheResult) obj4;
                        if (loadCacheResult.getHasHashMismatch()) {
                            if (!configuration5.getExperiments().isWebViewAsyncDownloadEnabled()) {
                            }
                            InitializeStateLoadWeb initializeStateLoadWeb2 = initializeSDK2.initializeStateLoadWeb;
                            ResultKt.throwOnFailure(value3);
                            InitializeStateLoadWeb.Params params11 = new InitializeStateLoadWeb.Params((Configuration) value3);
                            this.L$0 = initializeSDK2;
                            this.L$1 = value3;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.label = 8;
                            value5 = initializeStateLoadWeb2.mo520invokegIAlus(params11, this);
                            if (value5 == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            obj5 = value5;
                            if (Result.m607isFailureimpl(obj5)) {
                                initializationExceptionOrThrow2 = ResultExtensionsKt.getInitializationExceptionOrThrow(obj5);
                                this.L$0 = initializeSDK2;
                                this.L$1 = value3;
                                this.L$2 = obj5;
                                this.label = 9;
                                if (initializeSDK2.handleInitializationException(initializationExceptionOrThrow2, this) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                            }
                            ResultKt.throwOnFailure(obj5);
                            webViewData = ((InitializeStateLoadWeb.LoadWebResult) obj5).getWebViewDataString();
                            break;
                        } else {
                            webViewData = loadCacheResult.getWebViewData();
                            if (webViewData == null) {
                                throw new IllegalStateException("WebView is missing.".toString());
                            }
                        }
                        InitializeStateCreate initializeStateCreate2 = initializeSDK2.initializeStateCreate;
                        ResultKt.throwOnFailure(value3);
                        InitializeStateCreate.Params params12 = new InitializeStateCreate.Params((Configuration) value3, webViewData);
                        this.L$0 = initializeSDK2;
                        this.L$1 = value3;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.label = 10;
                        value6 = initializeStateCreate2.mo520invokegIAlus(params12, this);
                        if (value6 == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        obj6 = value3;
                        initializeSDK3 = initializeSDK2;
                        if (Result.m607isFailureimpl(value6)) {
                            initializationExceptionOrThrow3 = ResultExtensionsKt.getInitializationExceptionOrThrow(value6);
                            this.L$0 = initializeSDK3;
                            this.L$1 = obj6;
                            this.label = 11;
                            if (initializeSDK3.handleInitializationException(initializationExceptionOrThrow3, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                        InitializeStateComplete initializeStateComplete2 = initializeSDK3.initializeStateComplete;
                        ResultKt.throwOnFailure(obj6);
                        InitializeStateComplete.Params params13 = new InitializeStateComplete.Params((Configuration) obj6);
                        this.L$0 = null;
                        this.L$1 = null;
                        this.label = 12;
                        value7 = initializeStateComplete2.mo520invokegIAlus(params13, this);
                        if (value7 == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        ResultKt.throwOnFailure(value7);
                        objM601constructorimpl = Result.m601constructorimpl(Unit.INSTANCE);
                        if (Result.m608isSuccessimpl(objM601constructorimpl)) {
                            Result.Companion companion4 = Result.INSTANCE;
                            objM601constructorimpl = Result.m601constructorimpl(objM601constructorimpl);
                        } else {
                            thM604exceptionOrNullimpl = Result.m604exceptionOrNullimpl(objM601constructorimpl);
                            if (thM604exceptionOrNullimpl != null) {
                                Result.Companion companion5 = Result.INSTANCE;
                                objM601constructorimpl = Result.m601constructorimpl(ResultKt.createFailure(thM604exceptionOrNullimpl));
                            }
                        }
                        return Result.m600boximpl(objM601constructorimpl);
                    }
                    errorState = ErrorState.ResetWebApp;
                    thM604exceptionOrNullimpl3 = Result.m604exceptionOrNullimpl(obj2);
                    this.L$0 = obj2;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.label = 3;
                    if (initializeSDK.m524executeErrorStateBWLJW6A(errorState, thM604exceptionOrNullimpl3, configuration3, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    thM604exceptionOrNullimpl4 = Result.m604exceptionOrNullimpl(obj2);
                    if (thM604exceptionOrNullimpl4 == null) {
                        throw new Exception(ErrorState.ResetWebApp.toString());
                    }
                    throw thM604exceptionOrNullimpl4;
                case 2:
                    configuration2 = (Configuration) this.L$2;
                    initializeSDK = (InitializeSDK) this.L$1;
                    coroutineScope = (CoroutineScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    value2 = ((Result) obj).getValue();
                    configuration3 = configuration2;
                    obj2 = value2;
                    if (!Result.m607isFailureimpl(obj2)) {
                        InitializeStateConfig initializeStateConfig3 = initializeSDK.initializeStateConfig;
                        InitializeStateConfig.Params params14 = new InitializeStateConfig.Params(configuration3);
                        this.L$0 = coroutineScope;
                        this.L$1 = initializeSDK;
                        this.L$2 = configuration3;
                        this.label = 4;
                        obj3 = initializeStateConfig3.mo520invokegIAlus(params14, this);
                        if (obj3 == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        coroutineScope2 = coroutineScope;
                        initializeSDK2 = initializeSDK;
                        value3 = obj3;
                        configuration4 = configuration3;
                        if (Result.m607isFailureimpl(value3)) {
                            initializationExceptionOrThrow = ResultExtensionsKt.getInitializationExceptionOrThrow(value3);
                            this.L$0 = coroutineScope2;
                            this.L$1 = initializeSDK2;
                            this.L$2 = value3;
                            this.L$3 = configuration4;
                            this.label = 5;
                            if (initializeSDK2.handleInitializationException(initializationExceptionOrThrow, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                        InitializeStateLoadCache initializeStateLoadCache3 = initializeSDK2.initializeStateLoadCache;
                        ResultKt.throwOnFailure(value3);
                        InitializeStateLoadCache.Params params15 = new InitializeStateLoadCache.Params((Configuration) value3);
                        this.L$0 = coroutineScope2;
                        this.L$1 = initializeSDK2;
                        this.L$2 = value3;
                        this.L$3 = configuration4;
                        this.label = 6;
                        value4 = initializeStateLoadCache3.mo520invokegIAlus(params15, this);
                        if (value4 == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        configuration5 = configuration4;
                        obj4 = value4;
                        if (Result.m607isFailureimpl(obj4)) {
                            errorState2 = ErrorState.LoadCache;
                            thM604exceptionOrNullimpl5 = Result.m604exceptionOrNullimpl(obj4);
                            this.L$0 = obj4;
                            this.L$1 = null;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.label = 7;
                            if (initializeSDK2.m524executeErrorStateBWLJW6A(errorState2, thM604exceptionOrNullimpl5, configuration5, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            thM604exceptionOrNullimpl6 = Result.m604exceptionOrNullimpl(obj4);
                            if (thM604exceptionOrNullimpl6 == null) {
                                throw new Exception(ErrorState.LoadCache.toString());
                            }
                            throw thM604exceptionOrNullimpl6;
                        }
                        ResultKt.throwOnFailure(obj4);
                        loadCacheResult = (InitializeStateLoadCache.LoadCacheResult) obj4;
                        if (loadCacheResult.getHasHashMismatch()) {
                            if (!configuration5.getExperiments().isWebViewAsyncDownloadEnabled()) {
                            }
                            InitializeStateLoadWeb initializeStateLoadWeb3 = initializeSDK2.initializeStateLoadWeb;
                            ResultKt.throwOnFailure(value3);
                            InitializeStateLoadWeb.Params params16 = new InitializeStateLoadWeb.Params((Configuration) value3);
                            this.L$0 = initializeSDK2;
                            this.L$1 = value3;
                            this.L$2 = null;
                            this.L$3 = null;
                            this.label = 8;
                            value5 = initializeStateLoadWeb3.mo520invokegIAlus(params16, this);
                            if (value5 == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            obj5 = value5;
                            if (Result.m607isFailureimpl(obj5)) {
                                initializationExceptionOrThrow2 = ResultExtensionsKt.getInitializationExceptionOrThrow(obj5);
                                this.L$0 = initializeSDK2;
                                this.L$1 = value3;
                                this.L$2 = obj5;
                                this.label = 9;
                                if (initializeSDK2.handleInitializationException(initializationExceptionOrThrow2, this) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                            }
                            ResultKt.throwOnFailure(obj5);
                            webViewData = ((InitializeStateLoadWeb.LoadWebResult) obj5).getWebViewDataString();
                            break;
                        } else {
                            webViewData = loadCacheResult.getWebViewData();
                            if (webViewData == null) {
                                throw new IllegalStateException("WebView is missing.".toString());
                            }
                        }
                        InitializeStateCreate initializeStateCreate3 = initializeSDK2.initializeStateCreate;
                        ResultKt.throwOnFailure(value3);
                        InitializeStateCreate.Params params17 = new InitializeStateCreate.Params((Configuration) value3, webViewData);
                        this.L$0 = initializeSDK2;
                        this.L$1 = value3;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.label = 10;
                        value6 = initializeStateCreate3.mo520invokegIAlus(params17, this);
                        if (value6 == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        obj6 = value3;
                        initializeSDK3 = initializeSDK2;
                        if (Result.m607isFailureimpl(value6)) {
                            initializationExceptionOrThrow3 = ResultExtensionsKt.getInitializationExceptionOrThrow(value6);
                            this.L$0 = initializeSDK3;
                            this.L$1 = obj6;
                            this.label = 11;
                            if (initializeSDK3.handleInitializationException(initializationExceptionOrThrow3, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                        InitializeStateComplete initializeStateComplete3 = initializeSDK3.initializeStateComplete;
                        ResultKt.throwOnFailure(obj6);
                        InitializeStateComplete.Params params18 = new InitializeStateComplete.Params((Configuration) obj6);
                        this.L$0 = null;
                        this.L$1 = null;
                        this.label = 12;
                        value7 = initializeStateComplete3.mo520invokegIAlus(params18, this);
                        if (value7 == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        ResultKt.throwOnFailure(value7);
                        objM601constructorimpl = Result.m601constructorimpl(Unit.INSTANCE);
                        if (Result.m608isSuccessimpl(objM601constructorimpl)) {
                            Result.Companion companion6 = Result.INSTANCE;
                            objM601constructorimpl = Result.m601constructorimpl(objM601constructorimpl);
                        } else {
                            thM604exceptionOrNullimpl = Result.m604exceptionOrNullimpl(objM601constructorimpl);
                            if (thM604exceptionOrNullimpl != null) {
                                Result.Companion companion7 = Result.INSTANCE;
                                objM601constructorimpl = Result.m601constructorimpl(ResultKt.createFailure(thM604exceptionOrNullimpl));
                            }
                        }
                        return Result.m600boximpl(objM601constructorimpl);
                    }
                    errorState = ErrorState.ResetWebApp;
                    thM604exceptionOrNullimpl3 = Result.m604exceptionOrNullimpl(obj2);
                    this.L$0 = obj2;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.label = 3;
                    if (initializeSDK.m524executeErrorStateBWLJW6A(errorState, thM604exceptionOrNullimpl3, configuration3, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    thM604exceptionOrNullimpl4 = Result.m604exceptionOrNullimpl(obj2);
                    if (thM604exceptionOrNullimpl4 == null) {
                        throw new Exception(ErrorState.ResetWebApp.toString());
                    }
                    throw thM604exceptionOrNullimpl4;
                case 3:
                    obj2 = this.L$0;
                    ResultKt.throwOnFailure(obj);
                    ((Result) obj).getValue();
                    thM604exceptionOrNullimpl4 = Result.m604exceptionOrNullimpl(obj2);
                    if (thM604exceptionOrNullimpl4 == null) {
                        throw new Exception(ErrorState.ResetWebApp.toString());
                    }
                    throw thM604exceptionOrNullimpl4;
                case 4:
                    configuration4 = (Configuration) this.L$2;
                    InitializeSDK initializeSDK4 = (InitializeSDK) this.L$1;
                    CoroutineScope coroutineScope4 = (CoroutineScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    coroutineScope2 = coroutineScope4;
                    initializeSDK2 = initializeSDK4;
                    value3 = ((Result) obj).getValue();
                    if (Result.m607isFailureimpl(value3)) {
                        initializationExceptionOrThrow = ResultExtensionsKt.getInitializationExceptionOrThrow(value3);
                        this.L$0 = coroutineScope2;
                        this.L$1 = initializeSDK2;
                        this.L$2 = value3;
                        this.L$3 = configuration4;
                        this.label = 5;
                        if (initializeSDK2.handleInitializationException(initializationExceptionOrThrow, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    InitializeStateLoadCache initializeStateLoadCache4 = initializeSDK2.initializeStateLoadCache;
                    ResultKt.throwOnFailure(value3);
                    InitializeStateLoadCache.Params params19 = new InitializeStateLoadCache.Params((Configuration) value3);
                    this.L$0 = coroutineScope2;
                    this.L$1 = initializeSDK2;
                    this.L$2 = value3;
                    this.L$3 = configuration4;
                    this.label = 6;
                    value4 = initializeStateLoadCache4.mo520invokegIAlus(params19, this);
                    if (value4 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    configuration5 = configuration4;
                    obj4 = value4;
                    if (Result.m607isFailureimpl(obj4)) {
                        errorState2 = ErrorState.LoadCache;
                        thM604exceptionOrNullimpl5 = Result.m604exceptionOrNullimpl(obj4);
                        this.L$0 = obj4;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.label = 7;
                        if (initializeSDK2.m524executeErrorStateBWLJW6A(errorState2, thM604exceptionOrNullimpl5, configuration5, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        thM604exceptionOrNullimpl6 = Result.m604exceptionOrNullimpl(obj4);
                        if (thM604exceptionOrNullimpl6 == null) {
                            throw new Exception(ErrorState.LoadCache.toString());
                        }
                        throw thM604exceptionOrNullimpl6;
                    }
                    ResultKt.throwOnFailure(obj4);
                    loadCacheResult = (InitializeStateLoadCache.LoadCacheResult) obj4;
                    if (loadCacheResult.getHasHashMismatch()) {
                        if (!configuration5.getExperiments().isWebViewAsyncDownloadEnabled()) {
                        }
                        InitializeStateLoadWeb initializeStateLoadWeb4 = initializeSDK2.initializeStateLoadWeb;
                        ResultKt.throwOnFailure(value3);
                        InitializeStateLoadWeb.Params params110 = new InitializeStateLoadWeb.Params((Configuration) value3);
                        this.L$0 = initializeSDK2;
                        this.L$1 = value3;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.label = 8;
                        value5 = initializeStateLoadWeb4.mo520invokegIAlus(params110, this);
                        if (value5 == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        obj5 = value5;
                        if (Result.m607isFailureimpl(obj5)) {
                            initializationExceptionOrThrow2 = ResultExtensionsKt.getInitializationExceptionOrThrow(obj5);
                            this.L$0 = initializeSDK2;
                            this.L$1 = value3;
                            this.L$2 = obj5;
                            this.label = 9;
                            if (initializeSDK2.handleInitializationException(initializationExceptionOrThrow2, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                        ResultKt.throwOnFailure(obj5);
                        webViewData = ((InitializeStateLoadWeb.LoadWebResult) obj5).getWebViewDataString();
                        break;
                    } else {
                        webViewData = loadCacheResult.getWebViewData();
                        if (webViewData == null) {
                            throw new IllegalStateException("WebView is missing.".toString());
                        }
                    }
                    InitializeStateCreate initializeStateCreate4 = initializeSDK2.initializeStateCreate;
                    ResultKt.throwOnFailure(value3);
                    InitializeStateCreate.Params params111 = new InitializeStateCreate.Params((Configuration) value3, webViewData);
                    this.L$0 = initializeSDK2;
                    this.L$1 = value3;
                    this.L$2 = null;
                    this.L$3 = null;
                    this.label = 10;
                    value6 = initializeStateCreate4.mo520invokegIAlus(params111, this);
                    if (value6 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    obj6 = value3;
                    initializeSDK3 = initializeSDK2;
                    if (Result.m607isFailureimpl(value6)) {
                        initializationExceptionOrThrow3 = ResultExtensionsKt.getInitializationExceptionOrThrow(value6);
                        this.L$0 = initializeSDK3;
                        this.L$1 = obj6;
                        this.label = 11;
                        if (initializeSDK3.handleInitializationException(initializationExceptionOrThrow3, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    InitializeStateComplete initializeStateComplete4 = initializeSDK3.initializeStateComplete;
                    ResultKt.throwOnFailure(obj6);
                    InitializeStateComplete.Params params112 = new InitializeStateComplete.Params((Configuration) obj6);
                    this.L$0 = null;
                    this.L$1 = null;
                    this.label = 12;
                    value7 = initializeStateComplete4.mo520invokegIAlus(params112, this);
                    if (value7 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    ResultKt.throwOnFailure(value7);
                    objM601constructorimpl = Result.m601constructorimpl(Unit.INSTANCE);
                    if (Result.m608isSuccessimpl(objM601constructorimpl)) {
                        Result.Companion companion8 = Result.INSTANCE;
                        objM601constructorimpl = Result.m601constructorimpl(objM601constructorimpl);
                    } else {
                        thM604exceptionOrNullimpl = Result.m604exceptionOrNullimpl(objM601constructorimpl);
                        if (thM604exceptionOrNullimpl != null) {
                            Result.Companion companion9 = Result.INSTANCE;
                            objM601constructorimpl = Result.m601constructorimpl(ResultKt.createFailure(thM604exceptionOrNullimpl));
                        }
                    }
                    return Result.m600boximpl(objM601constructorimpl);
                case 5:
                    configuration4 = (Configuration) this.L$3;
                    value3 = this.L$2;
                    initializeSDK2 = (InitializeSDK) this.L$1;
                    coroutineScope2 = (CoroutineScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    InitializeStateLoadCache initializeStateLoadCache5 = initializeSDK2.initializeStateLoadCache;
                    ResultKt.throwOnFailure(value3);
                    InitializeStateLoadCache.Params params113 = new InitializeStateLoadCache.Params((Configuration) value3);
                    this.L$0 = coroutineScope2;
                    this.L$1 = initializeSDK2;
                    this.L$2 = value3;
                    this.L$3 = configuration4;
                    this.label = 6;
                    value4 = initializeStateLoadCache5.mo520invokegIAlus(params113, this);
                    if (value4 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    configuration5 = configuration4;
                    obj4 = value4;
                    if (Result.m607isFailureimpl(obj4)) {
                        errorState2 = ErrorState.LoadCache;
                        thM604exceptionOrNullimpl5 = Result.m604exceptionOrNullimpl(obj4);
                        this.L$0 = obj4;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.label = 7;
                        if (initializeSDK2.m524executeErrorStateBWLJW6A(errorState2, thM604exceptionOrNullimpl5, configuration5, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        thM604exceptionOrNullimpl6 = Result.m604exceptionOrNullimpl(obj4);
                        if (thM604exceptionOrNullimpl6 == null) {
                            throw new Exception(ErrorState.LoadCache.toString());
                        }
                        throw thM604exceptionOrNullimpl6;
                    }
                    ResultKt.throwOnFailure(obj4);
                    loadCacheResult = (InitializeStateLoadCache.LoadCacheResult) obj4;
                    if (loadCacheResult.getHasHashMismatch()) {
                        if (!configuration5.getExperiments().isWebViewAsyncDownloadEnabled()) {
                        }
                        InitializeStateLoadWeb initializeStateLoadWeb5 = initializeSDK2.initializeStateLoadWeb;
                        ResultKt.throwOnFailure(value3);
                        InitializeStateLoadWeb.Params params114 = new InitializeStateLoadWeb.Params((Configuration) value3);
                        this.L$0 = initializeSDK2;
                        this.L$1 = value3;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.label = 8;
                        value5 = initializeStateLoadWeb5.mo520invokegIAlus(params114, this);
                        if (value5 == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        obj5 = value5;
                        if (Result.m607isFailureimpl(obj5)) {
                            initializationExceptionOrThrow2 = ResultExtensionsKt.getInitializationExceptionOrThrow(obj5);
                            this.L$0 = initializeSDK2;
                            this.L$1 = value3;
                            this.L$2 = obj5;
                            this.label = 9;
                            if (initializeSDK2.handleInitializationException(initializationExceptionOrThrow2, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                        ResultKt.throwOnFailure(obj5);
                        webViewData = ((InitializeStateLoadWeb.LoadWebResult) obj5).getWebViewDataString();
                        break;
                    } else {
                        webViewData = loadCacheResult.getWebViewData();
                        if (webViewData == null) {
                            throw new IllegalStateException("WebView is missing.".toString());
                        }
                    }
                    InitializeStateCreate initializeStateCreate5 = initializeSDK2.initializeStateCreate;
                    ResultKt.throwOnFailure(value3);
                    InitializeStateCreate.Params params115 = new InitializeStateCreate.Params((Configuration) value3, webViewData);
                    this.L$0 = initializeSDK2;
                    this.L$1 = value3;
                    this.L$2 = null;
                    this.L$3 = null;
                    this.label = 10;
                    value6 = initializeStateCreate5.mo520invokegIAlus(params115, this);
                    if (value6 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    obj6 = value3;
                    initializeSDK3 = initializeSDK2;
                    if (Result.m607isFailureimpl(value6)) {
                        initializationExceptionOrThrow3 = ResultExtensionsKt.getInitializationExceptionOrThrow(value6);
                        this.L$0 = initializeSDK3;
                        this.L$1 = obj6;
                        this.label = 11;
                        if (initializeSDK3.handleInitializationException(initializationExceptionOrThrow3, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    InitializeStateComplete initializeStateComplete5 = initializeSDK3.initializeStateComplete;
                    ResultKt.throwOnFailure(obj6);
                    InitializeStateComplete.Params params116 = new InitializeStateComplete.Params((Configuration) obj6);
                    this.L$0 = null;
                    this.L$1 = null;
                    this.label = 12;
                    value7 = initializeStateComplete5.mo520invokegIAlus(params116, this);
                    if (value7 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    ResultKt.throwOnFailure(value7);
                    objM601constructorimpl = Result.m601constructorimpl(Unit.INSTANCE);
                    if (Result.m608isSuccessimpl(objM601constructorimpl)) {
                        Result.Companion companion10 = Result.INSTANCE;
                        objM601constructorimpl = Result.m601constructorimpl(objM601constructorimpl);
                    } else {
                        thM604exceptionOrNullimpl = Result.m604exceptionOrNullimpl(objM601constructorimpl);
                        if (thM604exceptionOrNullimpl != null) {
                            Result.Companion companion11 = Result.INSTANCE;
                            objM601constructorimpl = Result.m601constructorimpl(ResultKt.createFailure(thM604exceptionOrNullimpl));
                        }
                    }
                    return Result.m600boximpl(objM601constructorimpl);
                case 6:
                    configuration4 = (Configuration) this.L$3;
                    value3 = this.L$2;
                    initializeSDK2 = (InitializeSDK) this.L$1;
                    coroutineScope2 = (CoroutineScope) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    value4 = ((Result) obj).getValue();
                    configuration5 = configuration4;
                    obj4 = value4;
                    if (Result.m607isFailureimpl(obj4)) {
                        errorState2 = ErrorState.LoadCache;
                        thM604exceptionOrNullimpl5 = Result.m604exceptionOrNullimpl(obj4);
                        this.L$0 = obj4;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.label = 7;
                        if (initializeSDK2.m524executeErrorStateBWLJW6A(errorState2, thM604exceptionOrNullimpl5, configuration5, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        thM604exceptionOrNullimpl6 = Result.m604exceptionOrNullimpl(obj4);
                        if (thM604exceptionOrNullimpl6 == null) {
                            throw new Exception(ErrorState.LoadCache.toString());
                        }
                        throw thM604exceptionOrNullimpl6;
                    }
                    ResultKt.throwOnFailure(obj4);
                    loadCacheResult = (InitializeStateLoadCache.LoadCacheResult) obj4;
                    if (loadCacheResult.getHasHashMismatch()) {
                        if (!configuration5.getExperiments().isWebViewAsyncDownloadEnabled()) {
                        }
                        InitializeStateLoadWeb initializeStateLoadWeb6 = initializeSDK2.initializeStateLoadWeb;
                        ResultKt.throwOnFailure(value3);
                        InitializeStateLoadWeb.Params params117 = new InitializeStateLoadWeb.Params((Configuration) value3);
                        this.L$0 = initializeSDK2;
                        this.L$1 = value3;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.label = 8;
                        value5 = initializeStateLoadWeb6.mo520invokegIAlus(params117, this);
                        if (value5 == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        obj5 = value5;
                        if (Result.m607isFailureimpl(obj5)) {
                            initializationExceptionOrThrow2 = ResultExtensionsKt.getInitializationExceptionOrThrow(obj5);
                            this.L$0 = initializeSDK2;
                            this.L$1 = value3;
                            this.L$2 = obj5;
                            this.label = 9;
                            if (initializeSDK2.handleInitializationException(initializationExceptionOrThrow2, this) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                        ResultKt.throwOnFailure(obj5);
                        webViewData = ((InitializeStateLoadWeb.LoadWebResult) obj5).getWebViewDataString();
                        break;
                    } else {
                        webViewData = loadCacheResult.getWebViewData();
                        if (webViewData == null) {
                            throw new IllegalStateException("WebView is missing.".toString());
                        }
                    }
                    InitializeStateCreate initializeStateCreate6 = initializeSDK2.initializeStateCreate;
                    ResultKt.throwOnFailure(value3);
                    InitializeStateCreate.Params params118 = new InitializeStateCreate.Params((Configuration) value3, webViewData);
                    this.L$0 = initializeSDK2;
                    this.L$1 = value3;
                    this.L$2 = null;
                    this.L$3 = null;
                    this.label = 10;
                    value6 = initializeStateCreate6.mo520invokegIAlus(params118, this);
                    if (value6 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    obj6 = value3;
                    initializeSDK3 = initializeSDK2;
                    if (Result.m607isFailureimpl(value6)) {
                        initializationExceptionOrThrow3 = ResultExtensionsKt.getInitializationExceptionOrThrow(value6);
                        this.L$0 = initializeSDK3;
                        this.L$1 = obj6;
                        this.label = 11;
                        if (initializeSDK3.handleInitializationException(initializationExceptionOrThrow3, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    InitializeStateComplete initializeStateComplete6 = initializeSDK3.initializeStateComplete;
                    ResultKt.throwOnFailure(obj6);
                    InitializeStateComplete.Params params119 = new InitializeStateComplete.Params((Configuration) obj6);
                    this.L$0 = null;
                    this.L$1 = null;
                    this.label = 12;
                    value7 = initializeStateComplete6.mo520invokegIAlus(params119, this);
                    if (value7 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    ResultKt.throwOnFailure(value7);
                    objM601constructorimpl = Result.m601constructorimpl(Unit.INSTANCE);
                    if (Result.m608isSuccessimpl(objM601constructorimpl)) {
                        Result.Companion companion12 = Result.INSTANCE;
                        objM601constructorimpl = Result.m601constructorimpl(objM601constructorimpl);
                    } else {
                        thM604exceptionOrNullimpl = Result.m604exceptionOrNullimpl(objM601constructorimpl);
                        if (thM604exceptionOrNullimpl != null) {
                            Result.Companion companion13 = Result.INSTANCE;
                            objM601constructorimpl = Result.m601constructorimpl(ResultKt.createFailure(thM604exceptionOrNullimpl));
                        }
                    }
                    return Result.m600boximpl(objM601constructorimpl);
                case 7:
                    obj4 = this.L$0;
                    ResultKt.throwOnFailure(obj);
                    ((Result) obj).getValue();
                    thM604exceptionOrNullimpl6 = Result.m604exceptionOrNullimpl(obj4);
                    if (thM604exceptionOrNullimpl6 == null) {
                        throw new Exception(ErrorState.LoadCache.toString());
                    }
                    throw thM604exceptionOrNullimpl6;
                case 8:
                    Object obj8 = this.L$1;
                    InitializeSDK initializeSDK5 = (InitializeSDK) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    value5 = ((Result) obj).getValue();
                    initializeSDK2 = initializeSDK5;
                    value3 = obj8;
                    obj5 = value5;
                    if (Result.m607isFailureimpl(obj5)) {
                        initializationExceptionOrThrow2 = ResultExtensionsKt.getInitializationExceptionOrThrow(obj5);
                        this.L$0 = initializeSDK2;
                        this.L$1 = value3;
                        this.L$2 = obj5;
                        this.label = 9;
                        if (initializeSDK2.handleInitializationException(initializationExceptionOrThrow2, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    ResultKt.throwOnFailure(obj5);
                    webViewData = ((InitializeStateLoadWeb.LoadWebResult) obj5).getWebViewDataString();
                    InitializeStateCreate initializeStateCreate7 = initializeSDK2.initializeStateCreate;
                    ResultKt.throwOnFailure(value3);
                    InitializeStateCreate.Params params1110 = new InitializeStateCreate.Params((Configuration) value3, webViewData);
                    this.L$0 = initializeSDK2;
                    this.L$1 = value3;
                    this.L$2 = null;
                    this.L$3 = null;
                    this.label = 10;
                    value6 = initializeStateCreate7.mo520invokegIAlus(params1110, this);
                    if (value6 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    obj6 = value3;
                    initializeSDK3 = initializeSDK2;
                    if (Result.m607isFailureimpl(value6)) {
                        initializationExceptionOrThrow3 = ResultExtensionsKt.getInitializationExceptionOrThrow(value6);
                        this.L$0 = initializeSDK3;
                        this.L$1 = obj6;
                        this.label = 11;
                        if (initializeSDK3.handleInitializationException(initializationExceptionOrThrow3, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    InitializeStateComplete initializeStateComplete7 = initializeSDK3.initializeStateComplete;
                    ResultKt.throwOnFailure(obj6);
                    InitializeStateComplete.Params params1111 = new InitializeStateComplete.Params((Configuration) obj6);
                    this.L$0 = null;
                    this.L$1 = null;
                    this.label = 12;
                    value7 = initializeStateComplete7.mo520invokegIAlus(params1111, this);
                    if (value7 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    ResultKt.throwOnFailure(value7);
                    objM601constructorimpl = Result.m601constructorimpl(Unit.INSTANCE);
                    if (Result.m608isSuccessimpl(objM601constructorimpl)) {
                        Result.Companion companion14 = Result.INSTANCE;
                        objM601constructorimpl = Result.m601constructorimpl(objM601constructorimpl);
                    } else {
                        thM604exceptionOrNullimpl = Result.m604exceptionOrNullimpl(objM601constructorimpl);
                        if (thM604exceptionOrNullimpl != null) {
                            Result.Companion companion15 = Result.INSTANCE;
                            objM601constructorimpl = Result.m601constructorimpl(ResultKt.createFailure(thM604exceptionOrNullimpl));
                        }
                    }
                    return Result.m600boximpl(objM601constructorimpl);
                case 9:
                    obj5 = this.L$2;
                    value3 = this.L$1;
                    initializeSDK2 = (InitializeSDK) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    ResultKt.throwOnFailure(obj5);
                    webViewData = ((InitializeStateLoadWeb.LoadWebResult) obj5).getWebViewDataString();
                    InitializeStateCreate initializeStateCreate8 = initializeSDK2.initializeStateCreate;
                    ResultKt.throwOnFailure(value3);
                    InitializeStateCreate.Params params1112 = new InitializeStateCreate.Params((Configuration) value3, webViewData);
                    this.L$0 = initializeSDK2;
                    this.L$1 = value3;
                    this.L$2 = null;
                    this.L$3 = null;
                    this.label = 10;
                    value6 = initializeStateCreate8.mo520invokegIAlus(params1112, this);
                    if (value6 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    obj6 = value3;
                    initializeSDK3 = initializeSDK2;
                    if (Result.m607isFailureimpl(value6)) {
                        initializationExceptionOrThrow3 = ResultExtensionsKt.getInitializationExceptionOrThrow(value6);
                        this.L$0 = initializeSDK3;
                        this.L$1 = obj6;
                        this.label = 11;
                        if (initializeSDK3.handleInitializationException(initializationExceptionOrThrow3, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    InitializeStateComplete initializeStateComplete8 = initializeSDK3.initializeStateComplete;
                    ResultKt.throwOnFailure(obj6);
                    InitializeStateComplete.Params params1113 = new InitializeStateComplete.Params((Configuration) obj6);
                    this.L$0 = null;
                    this.L$1 = null;
                    this.label = 12;
                    value7 = initializeStateComplete8.mo520invokegIAlus(params1113, this);
                    if (value7 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    ResultKt.throwOnFailure(value7);
                    objM601constructorimpl = Result.m601constructorimpl(Unit.INSTANCE);
                    if (Result.m608isSuccessimpl(objM601constructorimpl)) {
                        Result.Companion companion16 = Result.INSTANCE;
                        objM601constructorimpl = Result.m601constructorimpl(objM601constructorimpl);
                    } else {
                        thM604exceptionOrNullimpl = Result.m604exceptionOrNullimpl(objM601constructorimpl);
                        if (thM604exceptionOrNullimpl != null) {
                            Result.Companion companion17 = Result.INSTANCE;
                            objM601constructorimpl = Result.m601constructorimpl(ResultKt.createFailure(thM604exceptionOrNullimpl));
                        }
                    }
                    return Result.m600boximpl(objM601constructorimpl);
                case 10:
                    obj6 = this.L$1;
                    initializeSDK3 = (InitializeSDK) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    value6 = ((Result) obj).getValue();
                    if (Result.m607isFailureimpl(value6)) {
                        initializationExceptionOrThrow3 = ResultExtensionsKt.getInitializationExceptionOrThrow(value6);
                        this.L$0 = initializeSDK3;
                        this.L$1 = obj6;
                        this.label = 11;
                        if (initializeSDK3.handleInitializationException(initializationExceptionOrThrow3, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    InitializeStateComplete initializeStateComplete9 = initializeSDK3.initializeStateComplete;
                    ResultKt.throwOnFailure(obj6);
                    InitializeStateComplete.Params params1114 = new InitializeStateComplete.Params((Configuration) obj6);
                    this.L$0 = null;
                    this.L$1 = null;
                    this.label = 12;
                    value7 = initializeStateComplete9.mo520invokegIAlus(params1114, this);
                    if (value7 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    ResultKt.throwOnFailure(value7);
                    objM601constructorimpl = Result.m601constructorimpl(Unit.INSTANCE);
                    if (Result.m608isSuccessimpl(objM601constructorimpl)) {
                        Result.Companion companion18 = Result.INSTANCE;
                        objM601constructorimpl = Result.m601constructorimpl(objM601constructorimpl);
                    } else {
                        thM604exceptionOrNullimpl = Result.m604exceptionOrNullimpl(objM601constructorimpl);
                        if (thM604exceptionOrNullimpl != null) {
                            Result.Companion companion19 = Result.INSTANCE;
                            objM601constructorimpl = Result.m601constructorimpl(ResultKt.createFailure(thM604exceptionOrNullimpl));
                        }
                    }
                    return Result.m600boximpl(objM601constructorimpl);
                case 11:
                    obj6 = this.L$1;
                    initializeSDK3 = (InitializeSDK) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    InitializeStateComplete initializeStateComplete10 = initializeSDK3.initializeStateComplete;
                    ResultKt.throwOnFailure(obj6);
                    InitializeStateComplete.Params params1115 = new InitializeStateComplete.Params((Configuration) obj6);
                    this.L$0 = null;
                    this.L$1 = null;
                    this.label = 12;
                    value7 = initializeStateComplete10.mo520invokegIAlus(params1115, this);
                    if (value7 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    ResultKt.throwOnFailure(value7);
                    objM601constructorimpl = Result.m601constructorimpl(Unit.INSTANCE);
                    if (Result.m608isSuccessimpl(objM601constructorimpl)) {
                        Result.Companion companion110 = Result.INSTANCE;
                        objM601constructorimpl = Result.m601constructorimpl(objM601constructorimpl);
                    } else {
                        thM604exceptionOrNullimpl = Result.m604exceptionOrNullimpl(objM601constructorimpl);
                        if (thM604exceptionOrNullimpl != null) {
                            Result.Companion companion111 = Result.INSTANCE;
                            objM601constructorimpl = Result.m601constructorimpl(ResultKt.createFailure(thM604exceptionOrNullimpl));
                        }
                    }
                    return Result.m600boximpl(objM601constructorimpl);
                case 12:
                    ResultKt.throwOnFailure(obj);
                    value7 = ((Result) obj).getValue();
                    ResultKt.throwOnFailure(value7);
                    objM601constructorimpl = Result.m601constructorimpl(Unit.INSTANCE);
                    if (Result.m608isSuccessimpl(objM601constructorimpl)) {
                        Result.Companion companion112 = Result.INSTANCE;
                        objM601constructorimpl = Result.m601constructorimpl(objM601constructorimpl);
                    } else {
                        thM604exceptionOrNullimpl = Result.m604exceptionOrNullimpl(objM601constructorimpl);
                        if (thM604exceptionOrNullimpl != null) {
                            Result.Companion companion113 = Result.INSTANCE;
                            objM601constructorimpl = Result.m601constructorimpl(ResultKt.createFailure(thM604exceptionOrNullimpl));
                        }
                    }
                    return Result.m600boximpl(objM601constructorimpl);
                default:
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } catch (CancellationException e) {
            throw e;
        } catch (Throwable th) {
            Result.Companion companion20 = Result.INSTANCE;
            objM601constructorimpl = Result.m601constructorimpl(ResultKt.createFailure(th));
        }
    }
}
