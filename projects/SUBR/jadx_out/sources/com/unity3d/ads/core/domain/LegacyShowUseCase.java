package com.unity3d.ads.core.domain;

import android.content.Context;
import com.google.protobuf.ByteString;
import com.onesignal.core.internal.database.impl.OneSignalDbContract;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.UnityAdsLoadOptions;
import com.unity3d.ads.UnityAdsShowOptions;
import com.unity3d.ads.adplayer.AdPlayer;
import com.unity3d.ads.adplayer.EmbeddableAdPlayer;
import com.unity3d.ads.adplayer.model.ShowStatus;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.InitializationState;
import com.unity3d.ads.core.data.model.Listeners;
import com.unity3d.ads.core.data.model.LoadResult;
import com.unity3d.ads.core.data.model.OperationType;
import com.unity3d.ads.core.data.model.ShowEvent;
import com.unity3d.ads.core.data.repository.AdRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.events.GetOperativeEventApi;
import com.unity3d.ads.core.extensions.FlowExtensionsKt;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import com.unity3d.ads.core.extensions.ShowStatusExtensionsKt;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import com.unity3d.services.core.log.DeviceLog;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.OperativeEventErrorDataKt;
import gatewayprotocol.v1.OperativeEventRequestOuterClass;
import java.util.Map;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function6;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.TimeMark;
import kotlin.time.TimeSource;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import org.json.JSONObject;
import org.json.j5;
import org.json.y8;

/* JADX INFO: compiled from: LegacyShowUseCase.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000 \u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000 B2\u00020\u0001:\u0001BB=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010J \u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020 H\u0002J\u0010\u0010!\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0002J\u0012\u0010\"\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J5\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170$2\u0006\u0010%\u001a\u00020\u00172\b\u0010&\u001a\u0004\u0018\u00010'2\b\u0010(\u001a\u0004\u0018\u00010\u0017H\u0002¢\u0006\u0002\u0010)J\u0011\u0010*\u001a\u00020\u0012H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010+J5\u0010,\u001a\u00020\u001c2\u0006\u0010-\u001a\u00020.2\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u001f\u001a\u00020 H\u0086Bø\u0001\u0000¢\u0006\u0002\u0010/J)\u00100\u001a\u00020\u001c2\u0006\u00101\u001a\u0002022\u0006\u00103\u001a\u00020\u00172\u0006\u0010\u0011\u001a\u00020\u0012H\u0082@ø\u0001\u0000¢\u0006\u0002\u00104J)\u00105\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020 H\u0082@ø\u0001\u0000¢\u0006\u0002\u00106J1\u00107\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u00108\u001a\u0002092\u0006\u0010\u001f\u001a\u00020 H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010:J`\u0010;\u001a:\b\u0001\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020=\u0012\u0004\u0012\u00020\u0017\u0012\u0006\u0012\u0004\u0018\u00010'\u0012\u0006\u0012\u0004\u0018\u00010\u0017\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u001c0>\u0012\u0006\u0012\u0004\u0018\u00010\u00010<2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020 H\u0002ø\u0001\u0000¢\u0006\u0002\u0010?J\u0011\u0010@\u001a\u00020\u001cH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010+J)\u0010A\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u001f\u001a\u00020 H\u0082@ø\u0001\u0000¢\u0006\u0002\u00106R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u001aX\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006C"}, d2 = {"Lcom/unity3d/ads/core/domain/LegacyShowUseCase;", "", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", j5.v, "Lcom/unity3d/ads/core/domain/Show;", "adRepository", "Lcom/unity3d/ads/core/data/repository/AdRepository;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "getOperativeEventApi", "Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;", "getInitializationState", "Lcom/unity3d/ads/core/domain/GetInitializationState;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/Show;Lcom/unity3d/ads/core/data/repository/AdRepository;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/domain/events/GetOperativeEventApi;Lcom/unity3d/ads/core/domain/GetInitializationState;Lcom/unity3d/ads/core/data/repository/SessionRepository;)V", "adObject", "Lcom/unity3d/ads/core/data/model/AdObject;", "hasStarted", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "placement", "", "timeoutCancellationRequested", "unityAdsShowOptions", "Lcom/unity3d/ads/UnityAdsShowOptions;", "bannerLeftApplication", "", "startTime", "Lkotlin/time/TimeMark;", "listeners", "Lcom/unity3d/ads/core/data/model/Listeners;", "cancelTimeout", "getOpportunityId", "getTags", "", "diagnosticReason", "code", "", "debugMessage", "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Map;", "getTmpAdObject", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "invoke", "context", "Landroid/content/Context;", "(Landroid/content/Context;Ljava/lang/String;Lcom/unity3d/ads/UnityAdsShowOptions;Lcom/unity3d/ads/core/data/model/Listeners;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendOperativeError", "operativeEvent", "Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorType;", "operativeMessage", "(Lgatewayprotocol/v1/OperativeEventRequestOuterClass$OperativeEventErrorType;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "showClicked", "(Lkotlin/time/TimeMark;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/Listeners;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "showCompleted", "status", "Lcom/unity3d/ads/adplayer/model/ShowStatus;", "(Lkotlin/time/TimeMark;Ljava/lang/String;Lcom/unity3d/ads/adplayer/model/ShowStatus;Lcom/unity3d/ads/core/data/model/Listeners;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "showError", "Lkotlin/Function6;", "Lcom/unity3d/ads/UnityAds$UnityAdsShowError;", "Lkotlin/coroutines/Continuation;", "(Lkotlin/time/TimeMark;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/Listeners;)Lkotlin/jvm/functions/Function6;", "showStart", "showStarted", "Companion", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class LegacyShowUseCase {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    public static final String KEY_OBJECT_ID = "objectId";
    public static final String MESSAGE_AD_PLAYER_UNAVAILABLE = "Ad player is unavailable.";
    public static final String MESSAGE_ALREADY_SHOWING = "Can't show a new ad unit when ad unit is already open";
    public static final String MESSAGE_NO_AD_OBJECT = "No ad object found for opportunity id: ";
    public static final String MESSAGE_OPPORTUNITY_ID = "No valid opportunity id provided";
    public static final String MESSAGE_OPT_TIMEOUT = "timeout";
    public static final String MESSAGE_TIMEOUT = "[UnityAds] Timeout while trying to show ";
    public static final String MSG_OPPORTUNITY_AND_PLACEMENT_NOT_MATCHING = "[UnityAds] Object ID and Placement ID provided does not match previously loaded ad";
    private static volatile boolean isFullscreenAdShowing;
    private AdObject adObject;
    private final AdRepository adRepository;
    private final CoroutineDispatcher dispatcher;
    private final GetInitializationState getInitializationState;
    private final GetOperativeEventApi getOperativeEventApi;
    private final MutableStateFlow<Boolean> hasStarted;
    private String placement;
    private final SendDiagnosticEvent sendDiagnosticEvent;
    private final SessionRepository sessionRepository;
    private final Show show;
    private final MutableStateFlow<Boolean> timeoutCancellationRequested;
    private UnityAdsShowOptions unityAdsShowOptions;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$getTmpAdObject$1, reason: invalid class name */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase", f = "LegacyShowUseCase.kt", i = {0}, l = {291}, m = "getTmpAdObject", n = {"this"}, s = {"L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return LegacyShowUseCase.this.getTmpAdObject(this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$invoke$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase", f = "LegacyShowUseCase.kt", i = {0, 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4, 9}, l = {80, 85, 90, 96, 101, 104, 109, 116, 121, 152}, m = "invoke", n = {"this", "context", "placement", "unityAdsShowOptions", "listeners", "startTime", "this", "context", "placement", "unityAdsShowOptions", "listeners", "reportShowError", "opportunityId", "startTime", y8.v}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "J$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "J$0", "I$0"})
    static final class C03811 extends ContinuationImpl {
        int I$0;
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        int label;
        /* synthetic */ Object result;

        C03811(Continuation<? super C03811> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return LegacyShowUseCase.this.invoke(null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$showStart$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase", f = "LegacyShowUseCase.kt", i = {}, l = {245}, m = "showStart", n = {}, s = {})
    static final class C03851 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C03851(Continuation<? super C03851> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return LegacyShowUseCase.this.showStart(this);
        }
    }

    public LegacyShowUseCase(CoroutineDispatcher dispatcher, Show show, AdRepository adRepository, SendDiagnosticEvent sendDiagnosticEvent, GetOperativeEventApi getOperativeEventApi, GetInitializationState getInitializationState, SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(show, "show");
        Intrinsics.checkNotNullParameter(adRepository, "adRepository");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(getOperativeEventApi, "getOperativeEventApi");
        Intrinsics.checkNotNullParameter(getInitializationState, "getInitializationState");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        this.dispatcher = dispatcher;
        this.show = show;
        this.adRepository = adRepository;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.getOperativeEventApi = getOperativeEventApi;
        this.getInitializationState = getInitializationState;
        this.sessionRepository = sessionRepository;
        this.hasStarted = StateFlowKt.MutableStateFlow(false);
        this.timeoutCancellationRequested = StateFlowKt.MutableStateFlow(false);
    }

    /* JADX WARN: Code duplicated, block: B:101:0x02fc A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:102:0x02fd  */
    /* JADX WARN: Code duplicated, block: B:104:0x0300  */
    /* JADX WARN: Code duplicated, block: B:28:0x00e6  */
    /* JADX WARN: Code duplicated, block: B:29:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:32:0x00f0  */
    /* JADX WARN: Code duplicated, block: B:34:0x010d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:37:0x0111  */
    /* JADX WARN: Code duplicated, block: B:39:0x011b  */
    /* JADX WARN: Code duplicated, block: B:41:0x0138 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:44:0x013c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:45:0x013e  */
    /* JADX WARN: Code duplicated, block: B:46:0x0143  */
    /* JADX WARN: Code duplicated, block: B:48:0x0146  */
    /* JADX WARN: Code duplicated, block: B:50:0x0163 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:53:0x0167  */
    /* JADX WARN: Code duplicated, block: B:55:0x018f A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:56:0x0190  */
    /* JADX WARN: Code duplicated, block: B:59:0x019f  */
    /* JADX WARN: Code duplicated, block: B:61:0x01cd A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:64:0x01d1  */
    /* JADX WARN: Code duplicated, block: B:66:0x01d7  */
    /* JADX WARN: Code duplicated, block: B:71:0x01e5  */
    /* JADX WARN: Code duplicated, block: B:73:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:75:0x020a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:78:0x020e  */
    /* JADX WARN: Code duplicated, block: B:7:0x001c  */
    /* JADX WARN: Code duplicated, block: B:80:0x0216  */
    /* JADX WARN: Code duplicated, block: B:89:0x0251  */
    /* JADX WARN: Code duplicated, block: B:98:0x0293  */
    /* JADX WARN: Instruction removed from duplicated block: B:59:0x019f, please report this as an issue */
    public final Object invoke(Context context, String str, UnityAdsShowOptions unityAdsShowOptions, Listeners listeners, Continuation<? super Unit> continuation) {
        C03811 c03811;
        Listeners listeners2;
        LegacyShowUseCase legacyShowUseCase;
        Context context2;
        long j;
        String str2;
        String str3;
        Function6<String, UnityAds.UnityAdsShowError, String, Integer, String, Continuation<? super Unit>, Object> function6ShowError;
        String opportunityId;
        Object ad;
        Function6<String, UnityAds.UnityAdsShowError, String, Integer, String, Continuation<? super Unit>, Object> function6;
        Listeners listeners3;
        long j2;
        String str4;
        Context context3;
        UnityAdsShowOptions unityAdsShowOptions2;
        UnityAds.UnityAdsShowError unityAdsShowError;
        UnityAds.UnityAdsShowError unityAdsShowError2;
        UnityAds.UnityAdsShowError unityAdsShowError3;
        AdObject adObject;
        AdPlayer adPlayer;
        boolean z;
        boolean z2;
        Flow flowM2134catch;
        AnonymousClass4 anonymousClass4;
        int i;
        UnityAds.UnityAdsShowError unityAdsShowError4;
        CoroutineScope scope;
        UnityAds.UnityAdsShowError unityAdsShowError5;
        String str5;
        UnityAdsShowOptions unityAdsShowOptions3 = unityAdsShowOptions;
        if (continuation instanceof C03811) {
            c03811 = (C03811) continuation;
            if ((c03811.label & Integer.MIN_VALUE) != 0) {
                c03811.label -= Integer.MIN_VALUE;
            } else {
                c03811 = new C03811(continuation);
            }
        } else {
            c03811 = new C03811(continuation);
        }
        C03811 c03812 = c03811;
        Object obj = c03812.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c03812.label) {
            case 0:
                ResultKt.throwOnFailure(obj);
                long jM2066markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m2066markNowz9LOYto();
                this.placement = str;
                this.unityAdsShowOptions = unityAdsShowOptions3;
                DeviceLog.debug("Unity Ads Show Start for placement " + str);
                c03812.L$0 = this;
                c03812.L$1 = context;
                c03812.L$2 = str;
                c03812.L$3 = unityAdsShowOptions3;
                listeners2 = listeners;
                c03812.L$4 = listeners2;
                c03812.J$0 = jM2066markNowz9LOYto;
                c03812.label = 1;
                if (showStart(c03812) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                legacyShowUseCase = this;
                context2 = context;
                j = jM2066markNowz9LOYto;
                str2 = str;
                TimeSource.Monotonic.ValueTimeMark valueTimeMarkM2067boximpl = TimeSource.Monotonic.ValueTimeMark.m2067boximpl(j);
                if (str2 == null) {
                    str3 = "";
                } else {
                    str3 = str2;
                }
                function6ShowError = legacyShowUseCase.showError(valueTimeMarkM2067boximpl, str3, listeners2);
                if (str2 == null) {
                    unityAdsShowError3 = UnityAds.UnityAdsShowError.INVALID_ARGUMENT;
                    c03812.L$0 = null;
                    c03812.L$1 = null;
                    c03812.L$2 = null;
                    c03812.L$3 = null;
                    c03812.L$4 = null;
                    c03812.label = 2;
                    if (function6ShowError.invoke("placement_null", unityAdsShowError3, LoadResult.MSG_PLACEMENT_NULL, null, null, c03812) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }
                if (legacyShowUseCase.getInitializationState.invoke() != InitializationState.INITIALIZED) {
                    unityAdsShowError2 = UnityAds.UnityAdsShowError.NOT_INITIALIZED;
                    c03812.L$0 = null;
                    c03812.L$1 = null;
                    c03812.L$2 = null;
                    c03812.L$3 = null;
                    c03812.L$4 = null;
                    c03812.label = 3;
                    if (function6ShowError.invoke("not_initialized", unityAdsShowError2, LoadResult.MSG_NOT_INITIALIZED, null, null, c03812) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }
                if (unityAdsShowOptions3 != null) {
                    opportunityId = legacyShowUseCase.getOpportunityId(unityAdsShowOptions3);
                } else {
                    opportunityId = null;
                }
                if (opportunityId == null) {
                    unityAdsShowError = UnityAds.UnityAdsShowError.INVALID_ARGUMENT;
                    c03812.L$0 = null;
                    c03812.L$1 = null;
                    c03812.L$2 = null;
                    c03812.L$3 = null;
                    c03812.L$4 = null;
                    c03812.label = 4;
                    if (function6ShowError.invoke("no_opportunity_id", unityAdsShowError, MESSAGE_OPPORTUNITY_ID, null, null, c03812) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }
                UUID uuidFromString = UUID.fromString(opportunityId);
                Intrinsics.checkNotNullExpressionValue(uuidFromString, "fromString(opportunityId)");
                ByteString byteString = ProtobufExtensionsKt.toByteString(uuidFromString);
                AdRepository adRepository = legacyShowUseCase.adRepository;
                c03812.L$0 = legacyShowUseCase;
                c03812.L$1 = context2;
                c03812.L$2 = str2;
                c03812.L$3 = unityAdsShowOptions3;
                c03812.L$4 = listeners2;
                c03812.L$5 = function6ShowError;
                c03812.L$6 = opportunityId;
                c03812.J$0 = j;
                c03812.label = 5;
                ad = adRepository.getAd(byteString, c03812);
                if (ad == coroutine_suspended) {
                    return coroutine_suspended;
                }
                function6 = function6ShowError;
                listeners3 = listeners2;
                j2 = j;
                str4 = opportunityId;
                obj = ad;
                context3 = context2;
                unityAdsShowOptions2 = unityAdsShowOptions3;
                adObject = (AdObject) obj;
                legacyShowUseCase.adObject = adObject;
                if (adObject == null) {
                    unityAdsShowError5 = UnityAds.UnityAdsShowError.INTERNAL_ERROR;
                    str5 = MESSAGE_NO_AD_OBJECT + str4;
                    c03812.L$0 = null;
                    c03812.L$1 = null;
                    c03812.L$2 = null;
                    c03812.L$3 = null;
                    c03812.L$4 = null;
                    c03812.L$5 = null;
                    c03812.L$6 = null;
                    c03812.label = 6;
                    if (function6.invoke("ad_object_not_found", unityAdsShowError5, str5, null, null, c03812) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }
                adPlayer = adObject.getAdPlayer();
                if (adPlayer != null || (scope = adPlayer.getScope()) == null || CoroutineScopeKt.isActive(scope)) {
                    z = false;
                } else {
                    z = true;
                }
                if (z) {
                    unityAdsShowError4 = UnityAds.UnityAdsShowError.INTERNAL_ERROR;
                    c03812.L$0 = null;
                    c03812.L$1 = null;
                    c03812.L$2 = null;
                    c03812.L$3 = null;
                    c03812.L$4 = null;
                    c03812.L$5 = null;
                    c03812.L$6 = null;
                    c03812.label = 7;
                    if (function6.invoke("ad_player_scope_not_active", unityAdsShowError4, MESSAGE_AD_PLAYER_UNAVAILABLE, null, null, c03812) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }
                z2 = adObject.getAdPlayer() instanceof EmbeddableAdPlayer;
                if (z2 && isFullscreenAdShowing) {
                    UnityAds.UnityAdsShowError unityAdsShowError6 = UnityAds.UnityAdsShowError.ALREADY_SHOWING;
                    c03812.L$0 = null;
                    c03812.L$1 = null;
                    c03812.L$2 = null;
                    c03812.L$3 = null;
                    c03812.L$4 = null;
                    c03812.L$5 = null;
                    c03812.L$6 = null;
                    c03812.label = 8;
                    if (function6.invoke("already_showing", unityAdsShowError6, MESSAGE_ALREADY_SHOWING, null, null, c03812) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }
                if (!legacyShowUseCase.sessionRepository.getNativeConfiguration().getFeatureFlags().getOpportunityIdPlacementValidation() && !Intrinsics.areEqual(adObject.getPlacementId(), str2)) {
                    UnityAds.UnityAdsShowError unityAdsShowError7 = UnityAds.UnityAdsShowError.INVALID_ARGUMENT;
                    c03812.L$0 = null;
                    c03812.L$1 = null;
                    c03812.L$2 = null;
                    c03812.L$3 = null;
                    c03812.L$4 = null;
                    c03812.L$5 = null;
                    c03812.L$6 = null;
                    c03812.label = 9;
                    if (function6.invoke("placement_validation", unityAdsShowError7, MSG_OPPORTUNITY_AND_PLACEMENT_NOT_MATCHING, null, null, c03812) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }
                long showTimeoutMs = legacyShowUseCase.sessionRepository.getNativeConfiguration().getAdOperations().getShowTimeoutMs();
                if (!z2) {
                    isFullscreenAdShowing = true;
                }
                flowM2134catch = FlowKt.m2134catch(FlowExtensionsKt.timeoutAfter$default(legacyShowUseCase.show.invoke(context3, adObject, unityAdsShowOptions2), showTimeoutMs, false, legacyShowUseCase.new AnonymousClass2(z2, adObject, true, function6, str2, null), 2, null), new AnonymousClass3(function6, z2, null));
                anonymousClass4 = legacyShowUseCase.new AnonymousClass4(j2, str2, listeners3, adObject, function6);
                c03812.L$0 = null;
                c03812.L$1 = null;
                c03812.L$2 = null;
                c03812.L$3 = null;
                c03812.L$4 = null;
                c03812.L$5 = null;
                c03812.L$6 = null;
                c03812.I$0 = z2 ? 1 : 0;
                c03812.label = 10;
                if (flowM2134catch.collect(anonymousClass4, c03812) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                i = z2 ? 1 : 0;
                if (i == 0) {
                    isFullscreenAdShowing = false;
                }
                return Unit.INSTANCE;
            case 1:
                long j3 = c03812.J$0;
                listeners2 = (Listeners) c03812.L$4;
                UnityAdsShowOptions unityAdsShowOptions4 = (UnityAdsShowOptions) c03812.L$3;
                str2 = (String) c03812.L$2;
                context2 = (Context) c03812.L$1;
                LegacyShowUseCase legacyShowUseCase2 = (LegacyShowUseCase) c03812.L$0;
                ResultKt.throwOnFailure(obj);
                legacyShowUseCase = legacyShowUseCase2;
                j = j3;
                unityAdsShowOptions3 = unityAdsShowOptions4;
                TimeSource.Monotonic.ValueTimeMark valueTimeMarkM2067boximpl2 = TimeSource.Monotonic.ValueTimeMark.m2067boximpl(j);
                if (str2 == null) {
                    str3 = "";
                } else {
                    str3 = str2;
                }
                function6ShowError = legacyShowUseCase.showError(valueTimeMarkM2067boximpl2, str3, listeners2);
                if (str2 == null) {
                    unityAdsShowError3 = UnityAds.UnityAdsShowError.INVALID_ARGUMENT;
                    c03812.L$0 = null;
                    c03812.L$1 = null;
                    c03812.L$2 = null;
                    c03812.L$3 = null;
                    c03812.L$4 = null;
                    c03812.label = 2;
                    if (function6ShowError.invoke("placement_null", unityAdsShowError3, LoadResult.MSG_PLACEMENT_NULL, null, null, c03812) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }
                if (legacyShowUseCase.getInitializationState.invoke() != InitializationState.INITIALIZED) {
                    unityAdsShowError2 = UnityAds.UnityAdsShowError.NOT_INITIALIZED;
                    c03812.L$0 = null;
                    c03812.L$1 = null;
                    c03812.L$2 = null;
                    c03812.L$3 = null;
                    c03812.L$4 = null;
                    c03812.label = 3;
                    if (function6ShowError.invoke("not_initialized", unityAdsShowError2, LoadResult.MSG_NOT_INITIALIZED, null, null, c03812) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }
                if (unityAdsShowOptions3 != null) {
                    opportunityId = legacyShowUseCase.getOpportunityId(unityAdsShowOptions3);
                } else {
                    opportunityId = null;
                }
                if (opportunityId == null) {
                    unityAdsShowError = UnityAds.UnityAdsShowError.INVALID_ARGUMENT;
                    c03812.L$0 = null;
                    c03812.L$1 = null;
                    c03812.L$2 = null;
                    c03812.L$3 = null;
                    c03812.L$4 = null;
                    c03812.label = 4;
                    if (function6ShowError.invoke("no_opportunity_id", unityAdsShowError, MESSAGE_OPPORTUNITY_ID, null, null, c03812) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }
                UUID uuidFromString2 = UUID.fromString(opportunityId);
                Intrinsics.checkNotNullExpressionValue(uuidFromString2, "fromString(opportunityId)");
                ByteString byteString2 = ProtobufExtensionsKt.toByteString(uuidFromString2);
                AdRepository adRepository2 = legacyShowUseCase.adRepository;
                c03812.L$0 = legacyShowUseCase;
                c03812.L$1 = context2;
                c03812.L$2 = str2;
                c03812.L$3 = unityAdsShowOptions3;
                c03812.L$4 = listeners2;
                c03812.L$5 = function6ShowError;
                c03812.L$6 = opportunityId;
                c03812.J$0 = j;
                c03812.label = 5;
                ad = adRepository2.getAd(byteString2, c03812);
                if (ad == coroutine_suspended) {
                    return coroutine_suspended;
                }
                function6 = function6ShowError;
                listeners3 = listeners2;
                j2 = j;
                str4 = opportunityId;
                obj = ad;
                context3 = context2;
                unityAdsShowOptions2 = unityAdsShowOptions3;
                adObject = (AdObject) obj;
                legacyShowUseCase.adObject = adObject;
                if (adObject == null) {
                    unityAdsShowError5 = UnityAds.UnityAdsShowError.INTERNAL_ERROR;
                    str5 = MESSAGE_NO_AD_OBJECT + str4;
                    c03812.L$0 = null;
                    c03812.L$1 = null;
                    c03812.L$2 = null;
                    c03812.L$3 = null;
                    c03812.L$4 = null;
                    c03812.L$5 = null;
                    c03812.L$6 = null;
                    c03812.label = 6;
                    if (function6.invoke("ad_object_not_found", unityAdsShowError5, str5, null, null, c03812) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }
                adPlayer = adObject.getAdPlayer();
                if (adPlayer != null) {
                    z = false;
                } else {
                    z = false;
                }
                if (z) {
                    unityAdsShowError4 = UnityAds.UnityAdsShowError.INTERNAL_ERROR;
                    c03812.L$0 = null;
                    c03812.L$1 = null;
                    c03812.L$2 = null;
                    c03812.L$3 = null;
                    c03812.L$4 = null;
                    c03812.L$5 = null;
                    c03812.L$6 = null;
                    c03812.label = 7;
                    if (function6.invoke("ad_player_scope_not_active", unityAdsShowError4, MESSAGE_AD_PLAYER_UNAVAILABLE, null, null, c03812) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }
                z2 = adObject.getAdPlayer() instanceof EmbeddableAdPlayer;
                if (z2) {
                    break;
                }
                if (!legacyShowUseCase.sessionRepository.getNativeConfiguration().getFeatureFlags().getOpportunityIdPlacementValidation()) {
                    break;
                }
                long showTimeoutMs2 = legacyShowUseCase.sessionRepository.getNativeConfiguration().getAdOperations().getShowTimeoutMs();
                if (!z2) {
                    isFullscreenAdShowing = true;
                }
                flowM2134catch = FlowKt.m2134catch(FlowExtensionsKt.timeoutAfter$default(legacyShowUseCase.show.invoke(context3, adObject, unityAdsShowOptions2), showTimeoutMs2, false, legacyShowUseCase.new AnonymousClass2(z2, adObject, true, function6, str2, null), 2, null), new AnonymousClass3(function6, z2, null));
                anonymousClass4 = legacyShowUseCase.new AnonymousClass4(j2, str2, listeners3, adObject, function6);
                c03812.L$0 = null;
                c03812.L$1 = null;
                c03812.L$2 = null;
                c03812.L$3 = null;
                c03812.L$4 = null;
                c03812.L$5 = null;
                c03812.L$6 = null;
                c03812.I$0 = z2 ? 1 : 0;
                c03812.label = 10;
                if (flowM2134catch.collect(anonymousClass4, c03812) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                i = z2 ? 1 : 0;
                if (i == 0) {
                    isFullscreenAdShowing = false;
                }
                return Unit.INSTANCE;
            case 2:
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            case 3:
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            case 4:
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            case 5:
                long j4 = c03812.J$0;
                str4 = (String) c03812.L$6;
                function6 = (Function6) c03812.L$5;
                Listeners listeners4 = (Listeners) c03812.L$4;
                unityAdsShowOptions2 = (UnityAdsShowOptions) c03812.L$3;
                String str6 = (String) c03812.L$2;
                context3 = (Context) c03812.L$1;
                legacyShowUseCase = (LegacyShowUseCase) c03812.L$0;
                ResultKt.throwOnFailure(obj);
                j2 = j4;
                listeners3 = listeners4;
                str2 = str6;
                adObject = (AdObject) obj;
                legacyShowUseCase.adObject = adObject;
                if (adObject == null) {
                    unityAdsShowError5 = UnityAds.UnityAdsShowError.INTERNAL_ERROR;
                    str5 = MESSAGE_NO_AD_OBJECT + str4;
                    c03812.L$0 = null;
                    c03812.L$1 = null;
                    c03812.L$2 = null;
                    c03812.L$3 = null;
                    c03812.L$4 = null;
                    c03812.L$5 = null;
                    c03812.L$6 = null;
                    c03812.label = 6;
                    if (function6.invoke("ad_object_not_found", unityAdsShowError5, str5, null, null, c03812) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }
                adPlayer = adObject.getAdPlayer();
                if (adPlayer != null) {
                    z = false;
                } else {
                    z = false;
                }
                if (z) {
                    unityAdsShowError4 = UnityAds.UnityAdsShowError.INTERNAL_ERROR;
                    c03812.L$0 = null;
                    c03812.L$1 = null;
                    c03812.L$2 = null;
                    c03812.L$3 = null;
                    c03812.L$4 = null;
                    c03812.L$5 = null;
                    c03812.L$6 = null;
                    c03812.label = 7;
                    if (function6.invoke("ad_player_scope_not_active", unityAdsShowError4, MESSAGE_AD_PLAYER_UNAVAILABLE, null, null, c03812) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }
                z2 = adObject.getAdPlayer() instanceof EmbeddableAdPlayer;
                if (z2) {
                    break;
                }
                if (!legacyShowUseCase.sessionRepository.getNativeConfiguration().getFeatureFlags().getOpportunityIdPlacementValidation()) {
                    break;
                }
                long showTimeoutMs3 = legacyShowUseCase.sessionRepository.getNativeConfiguration().getAdOperations().getShowTimeoutMs();
                if (!z2) {
                    isFullscreenAdShowing = true;
                }
                flowM2134catch = FlowKt.m2134catch(FlowExtensionsKt.timeoutAfter$default(legacyShowUseCase.show.invoke(context3, adObject, unityAdsShowOptions2), showTimeoutMs3, false, legacyShowUseCase.new AnonymousClass2(z2, adObject, true, function6, str2, null), 2, null), new AnonymousClass3(function6, z2, null));
                anonymousClass4 = legacyShowUseCase.new AnonymousClass4(j2, str2, listeners3, adObject, function6);
                c03812.L$0 = null;
                c03812.L$1 = null;
                c03812.L$2 = null;
                c03812.L$3 = null;
                c03812.L$4 = null;
                c03812.L$5 = null;
                c03812.L$6 = null;
                c03812.I$0 = z2 ? 1 : 0;
                c03812.label = 10;
                if (flowM2134catch.collect(anonymousClass4, c03812) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                i = z2 ? 1 : 0;
                if (i == 0) {
                    isFullscreenAdShowing = false;
                }
                return Unit.INSTANCE;
            case 6:
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            case 7:
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            case 8:
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            case 9:
                ResultKt.throwOnFailure(obj);
                return Unit.INSTANCE;
            case 10:
                i = c03812.I$0;
                ResultKt.throwOnFailure(obj);
                if (i == 0) {
                    isFullscreenAdShowing = false;
                }
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$invoke$2, reason: invalid class name */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Lkotlin/Function0;", "", "close", "<anonymous>"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase$invoke$2", f = "LegacyShowUseCase.kt", i = {0, 1, 2}, l = {135, 141, 142}, m = "invokeSuspend", n = {"close", "close", "close"}, s = {"L$0", "L$0", "L$0"})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<Function0<? extends Unit>, Continuation<? super Unit>, Object> {
        final /* synthetic */ AdObject $adObject;
        final /* synthetic */ boolean $isBanner;
        final /* synthetic */ String $placement;
        final /* synthetic */ Function6<String, UnityAds.UnityAdsShowError, String, Integer, String, Continuation<? super Unit>, Object> $reportShowError;
        final /* synthetic */ boolean $useTimeout;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(boolean z, AdObject adObject, boolean z2, Function6<? super String, ? super UnityAds.UnityAdsShowError, ? super String, ? super Integer, ? super String, ? super Continuation<? super Unit>, ? extends Object> function6, String str, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$isBanner = z;
            this.$adObject = adObject;
            this.$useTimeout = z2;
            this.$reportShowError = function6;
            this.$placement = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            AnonymousClass2 anonymousClass2 = LegacyShowUseCase.this.new AnonymousClass2(this.$isBanner, this.$adObject, this.$useTimeout, this.$reportShowError, this.$placement, continuation);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Function0<? extends Unit> function0, Continuation<? super Unit> continuation) {
            return invoke2((Function0<Unit>) function0, continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(Function0<Unit> function0, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(function0, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:29:0x00b6 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:30:0x00b7  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Function0 function0;
            Function6<String, UnityAds.UnityAdsShowError, String, Integer, String, Continuation<? super Unit>, Object> function6;
            UnityAds.UnityAdsShowError unityAdsShowError;
            String str;
            Function0 function1;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                function0 = (Function0) this.L$0;
                if (((Boolean) LegacyShowUseCase.this.hasStarted.getValue()).booleanValue() || ((Boolean) LegacyShowUseCase.this.timeoutCancellationRequested.getValue()).booleanValue() || this.$isBanner) {
                    return Unit.INSTANCE;
                }
                this.L$0 = function0;
                this.label = 1;
                if (LegacyShowUseCase.this.sendOperativeError(OperativeEventRequestOuterClass.OperativeEventErrorType.OPERATIVE_EVENT_ERROR_TYPE_TIMEOUT, "timeout", this.$adObject, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i == 1) {
                    function0 = (Function0) this.L$0;
                    ResultKt.throwOnFailure(obj);
                } else if (i == 2) {
                    function0 = (Function0) this.L$0;
                    ResultKt.throwOnFailure(obj);
                    function6 = this.$reportShowError;
                    unityAdsShowError = UnityAds.UnityAdsShowError.TIMEOUT;
                    str = LegacyShowUseCase.MESSAGE_TIMEOUT + this.$placement;
                    this.L$0 = function0;
                    this.label = 3;
                    if (function6.invoke("timeout", unityAdsShowError, str, null, null, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    function1 = function0;
                } else {
                    if (i != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    function1 = (Function0) this.L$0;
                    ResultKt.throwOnFailure(obj);
                }
                function1.invoke();
                return Unit.INSTANCE;
            }
            if (this.$useTimeout) {
                this.L$0 = function0;
                this.label = 2;
                if (LegacyShowUseCase.this.show.terminate(this.$adObject, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                function6 = this.$reportShowError;
                unityAdsShowError = UnityAds.UnityAdsShowError.TIMEOUT;
                str = LegacyShowUseCase.MESSAGE_TIMEOUT + this.$placement;
                this.L$0 = function0;
                this.label = 3;
                if (function6.invoke("timeout", unityAdsShowError, str, null, null, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                function1 = function0;
                function1.invoke();
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$invoke$3, reason: invalid class name */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0005\u001a\u00020\u0004*\b\u0012\u0004\u0012\u00020\u00010\u00002\u0006\u0010\u0003\u001a\u00020\u0002H\u008a@"}, d2 = {"Lkotlinx/coroutines/flow/FlowCollector;", "Lcom/unity3d/ads/core/data/model/ShowEvent;", "", "it", "", "<anonymous>"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase$invoke$3", f = "LegacyShowUseCase.kt", i = {}, l = {147}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function3<FlowCollector<? super ShowEvent>, Throwable, Continuation<? super Unit>, Object> {
        final /* synthetic */ boolean $isBanner;
        final /* synthetic */ Function6<String, UnityAds.UnityAdsShowError, String, Integer, String, Continuation<? super Unit>, Object> $reportShowError;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass3(Function6<? super String, ? super UnityAds.UnityAdsShowError, ? super String, ? super Integer, ? super String, ? super Continuation<? super Unit>, ? extends Object> function6, boolean z, Continuation<? super AnonymousClass3> continuation) {
            super(3, continuation);
            this.$reportShowError = function6;
            this.$isBanner = z;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(FlowCollector<? super ShowEvent> flowCollector, Throwable th, Continuation<? super Unit> continuation) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$reportShowError, this.$isBanner, continuation);
            anonymousClass3.L$0 = th;
            return anonymousClass3.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Throwable th = (Throwable) this.L$0;
                Function6<String, UnityAds.UnityAdsShowError, String, Integer, String, Continuation<? super Unit>, Object> function6 = this.$reportShowError;
                UnityAds.UnityAdsShowError unityAdsShowError = UnityAds.UnityAdsShowError.INTERNAL_ERROR;
                String message = th.getMessage();
                if (message == null) {
                    message = "";
                }
                this.label = 1;
                if (function6.invoke("uncaught_exception", unityAdsShowError, message, null, null, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            if (!this.$isBanner) {
                Companion companion = LegacyShowUseCase.INSTANCE;
                LegacyShowUseCase.isFullscreenAdShowing = false;
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$invoke$4, reason: invalid class name */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", "it", "Lcom/unity3d/ads/core/data/model/ShowEvent;", "emit", "(Lcom/unity3d/ads/core/data/model/ShowEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"}, k = 3, mv = {1, 8, 0}, xi = 48)
    static final class AnonymousClass4<T> implements FlowCollector {
        final /* synthetic */ AdObject $adObject;
        final /* synthetic */ Listeners $listeners;
        final /* synthetic */ String $placement;
        final /* synthetic */ Function6<String, UnityAds.UnityAdsShowError, String, Integer, String, Continuation<? super Unit>, Object> $reportShowError;
        final /* synthetic */ long $startTime;

        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass4(long j, String str, Listeners listeners, AdObject adObject, Function6<? super String, ? super UnityAds.UnityAdsShowError, ? super String, ? super Integer, ? super String, ? super Continuation<? super Unit>, ? extends Object> function6) {
            this.$startTime = j;
            this.$placement = str;
            this.$listeners = listeners;
            this.$adObject = adObject;
            this.$reportShowError = function6;
        }

        /* JADX WARN: Code duplicated, block: B:51:0x00ff A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:7:0x0014  */
        public final Object emit(ShowEvent showEvent, Continuation<? super Unit> continuation) {
            LegacyShowUseCase$invoke$4$emit$1 legacyShowUseCase$invoke$4$emit$1;
            AnonymousClass4<T> anonymousClass4;
            Function6<String, UnityAds.UnityAdsShowError, String, Integer, String, Continuation<? super Unit>, Object> function6;
            String reason;
            UnityAds.UnityAdsShowError unityAdsShowError;
            String message;
            Integer numBoxInt;
            String message2;
            if (continuation instanceof LegacyShowUseCase$invoke$4$emit$1) {
                legacyShowUseCase$invoke$4$emit$1 = (LegacyShowUseCase$invoke$4$emit$1) continuation;
                if ((legacyShowUseCase$invoke$4$emit$1.label & Integer.MIN_VALUE) != 0) {
                    legacyShowUseCase$invoke$4$emit$1.label -= Integer.MIN_VALUE;
                } else {
                    legacyShowUseCase$invoke$4$emit$1 = new LegacyShowUseCase$invoke$4$emit$1(this, continuation);
                }
            } else {
                legacyShowUseCase$invoke$4$emit$1 = new LegacyShowUseCase$invoke$4$emit$1(this, continuation);
            }
            LegacyShowUseCase$invoke$4$emit$1 legacyShowUseCase$invoke$4$emit$2 = legacyShowUseCase$invoke$4$emit$1;
            Object obj = legacyShowUseCase$invoke$4$emit$2.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = legacyShowUseCase$invoke$4$emit$2.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                if (showEvent instanceof ShowEvent.Started) {
                    LegacyShowUseCase legacyShowUseCase = LegacyShowUseCase.this;
                    TimeSource.Monotonic.ValueTimeMark valueTimeMarkM2067boximpl = TimeSource.Monotonic.ValueTimeMark.m2067boximpl(this.$startTime);
                    String str = this.$placement;
                    Listeners listeners = this.$listeners;
                    legacyShowUseCase$invoke$4$emit$2.label = 1;
                    if (legacyShowUseCase.showStarted(valueTimeMarkM2067boximpl, str, listeners, legacyShowUseCase$invoke$4$emit$2) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }
                if (showEvent instanceof ShowEvent.Clicked) {
                    LegacyShowUseCase legacyShowUseCase2 = LegacyShowUseCase.this;
                    TimeSource.Monotonic.ValueTimeMark valueTimeMarkM2067boximpl2 = TimeSource.Monotonic.ValueTimeMark.m2067boximpl(this.$startTime);
                    String str2 = this.$placement;
                    Listeners listeners2 = this.$listeners;
                    legacyShowUseCase$invoke$4$emit$2.label = 2;
                    if (legacyShowUseCase2.showClicked(valueTimeMarkM2067boximpl2, str2, listeners2, legacyShowUseCase$invoke$4$emit$2) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }
                if (showEvent instanceof ShowEvent.Completed) {
                    LegacyShowUseCase legacyShowUseCase3 = LegacyShowUseCase.this;
                    TimeSource.Monotonic.ValueTimeMark valueTimeMarkM2067boximpl3 = TimeSource.Monotonic.ValueTimeMark.m2067boximpl(this.$startTime);
                    String str3 = this.$placement;
                    ShowStatus status = ((ShowEvent.Completed) showEvent).getStatus();
                    Listeners listeners3 = this.$listeners;
                    legacyShowUseCase$invoke$4$emit$2.label = 3;
                    if (legacyShowUseCase3.showCompleted(valueTimeMarkM2067boximpl3, str3, status, listeners3, legacyShowUseCase$invoke$4$emit$2) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }
                if (!(showEvent instanceof ShowEvent.Error)) {
                    if (showEvent instanceof ShowEvent.CancelTimeout) {
                        LegacyShowUseCase.this.cancelTimeout(TimeSource.Monotonic.ValueTimeMark.m2067boximpl(this.$startTime));
                    } else if (showEvent instanceof ShowEvent.LeftApplication) {
                        LegacyShowUseCase.this.bannerLeftApplication(TimeSource.Monotonic.ValueTimeMark.m2067boximpl(this.$startTime), this.$placement, this.$listeners);
                    }
                    return Unit.INSTANCE;
                }
                LegacyShowUseCase legacyShowUseCase4 = LegacyShowUseCase.this;
                OperativeEventRequestOuterClass.OperativeEventErrorType operativeEventErrorType = OperativeEventRequestOuterClass.OperativeEventErrorType.OPERATIVE_EVENT_ERROR_TYPE_UNSPECIFIED;
                String message3 = ((ShowEvent.Error) showEvent).getMessage();
                AdObject adObject = this.$adObject;
                legacyShowUseCase$invoke$4$emit$2.L$0 = this;
                legacyShowUseCase$invoke$4$emit$2.L$1 = showEvent;
                legacyShowUseCase$invoke$4$emit$2.label = 4;
                if (legacyShowUseCase4.sendOperativeError(operativeEventErrorType, message3, adObject, legacyShowUseCase$invoke$4$emit$2) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                anonymousClass4 = this;
                function6 = anonymousClass4.$reportShowError;
                ShowEvent.Error error = (ShowEvent.Error) showEvent;
                reason = error.getReason();
                unityAdsShowError = UnityAds.UnityAdsShowError.INTERNAL_ERROR;
                message = error.getMessage();
                numBoxInt = Boxing.boxInt(error.getErrorCode());
                message2 = error.getMessage();
                legacyShowUseCase$invoke$4$emit$2.L$0 = null;
                legacyShowUseCase$invoke$4$emit$2.L$1 = null;
                legacyShowUseCase$invoke$4$emit$2.label = 5;
                if (function6.invoke(reason, unityAdsShowError, message, numBoxInt, message2, legacyShowUseCase$invoke$4$emit$2) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                }
                if (i == 2) {
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                }
                if (i == 3) {
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                }
                if (i == 4) {
                    showEvent = (ShowEvent) legacyShowUseCase$invoke$4$emit$2.L$1;
                    anonymousClass4 = (AnonymousClass4) legacyShowUseCase$invoke$4$emit$2.L$0;
                    ResultKt.throwOnFailure(obj);
                    function6 = anonymousClass4.$reportShowError;
                    ShowEvent.Error error2 = (ShowEvent.Error) showEvent;
                    reason = error2.getReason();
                    unityAdsShowError = UnityAds.UnityAdsShowError.INTERNAL_ERROR;
                    message = error2.getMessage();
                    numBoxInt = Boxing.boxInt(error2.getErrorCode());
                    message2 = error2.getMessage();
                    legacyShowUseCase$invoke$4$emit$2.L$0 = null;
                    legacyShowUseCase$invoke$4$emit$2.L$1 = null;
                    legacyShowUseCase$invoke$4$emit$2.label = 5;
                    if (function6.invoke(reason, unityAdsShowError, message, numBoxInt, message2, legacyShowUseCase$invoke$4$emit$2) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i != 5) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                }
            }
            return Unit.INSTANCE;
        }

        @Override // kotlinx.coroutines.flow.FlowCollector
        public /* bridge */ /* synthetic */ Object emit(Object obj, Continuation continuation) {
            return emit((ShowEvent) obj, (Continuation<? super Unit>) continuation);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void bannerLeftApplication(TimeMark startTime, String placement, Listeners listeners) {
        DeviceLog.debug("Unity Ads Show Left Application for placement " + placement);
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_show_left_app", Double.valueOf(TimeExtensionsKt.elapsedMillis(startTime)), null, null, this.adObject, 12, null);
        listeners.onLeftApplication(placement);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void cancelTimeout(TimeMark startTime) {
        this.timeoutCancellationRequested.setValue(true);
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_show_cancel_timeout", Double.valueOf(TimeExtensionsKt.elapsedMillis(startTime)), null, null, this.adObject, 12, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object showStarted(TimeMark timeMark, String str, Listeners listeners, Continuation<? super Unit> continuation) throws Throwable {
        DeviceLog.debug("Unity Ads Show WV Start for placement " + str);
        this.hasStarted.setValue(Boxing.boxBoolean(true));
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_show_wv_started", Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(timeMark)), null, null, this.adObject, 12, null);
        Object objWithContext = BuildersKt.withContext(this.dispatcher, new C03862(listeners, str, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$showStarted$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase$showStarted$2", f = "LegacyShowUseCase.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C03862 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Listeners $listeners;
        final /* synthetic */ String $placement;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03862(Listeners listeners, String str, Continuation<? super C03862> continuation) {
            super(2, continuation);
            this.$listeners = listeners;
            this.$placement = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C03862(this.$listeners, this.$placement, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C03862) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.$listeners.onStart(this.$placement);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object showClicked(TimeMark timeMark, String str, Listeners listeners, Continuation<? super Unit> continuation) throws Throwable {
        DeviceLog.debug("Unity Ads Show Clicked for placement " + str);
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_show_clicked", Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(timeMark)), null, null, this.adObject, 12, null);
        Object objWithContext = BuildersKt.withContext(this.dispatcher, new C03822(listeners, str, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$showClicked$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase$showClicked$2", f = "LegacyShowUseCase.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C03822 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Listeners $listeners;
        final /* synthetic */ String $placement;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03822(Listeners listeners, String str, Continuation<? super C03822> continuation) {
            super(2, continuation);
            this.$listeners = listeners;
            this.$placement = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C03822(this.$listeners, this.$placement, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C03822) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.$listeners.onClick(this.$placement);
            return Unit.INSTANCE;
        }
    }

    private final String getOpportunityId(UnityAdsShowOptions unityAdsShowOptions) {
        Object objOpt;
        JSONObject data = unityAdsShowOptions.getData();
        try {
            return UUID.fromString((data == null || (objOpt = data.opt("objectId")) == null) ? null : objOpt.toString()).toString();
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object showStart(Continuation<? super Unit> continuation) {
        C03851 c03851;
        String str;
        SendDiagnosticEvent sendDiagnosticEvent;
        if (continuation instanceof C03851) {
            c03851 = (C03851) continuation;
            if ((c03851.label & Integer.MIN_VALUE) != 0) {
                c03851.label -= Integer.MIN_VALUE;
            } else {
                c03851 = new C03851(continuation);
            }
        } else {
            c03851 = new C03851(continuation);
        }
        Object obj = c03851.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c03851.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            SendDiagnosticEvent sendDiagnosticEvent2 = this.sendDiagnosticEvent;
            c03851.L$0 = sendDiagnosticEvent2;
            c03851.L$1 = "native_show_started";
            c03851.label = 1;
            Object tmpAdObject = getTmpAdObject(c03851);
            if (tmpAdObject == coroutine_suspended) {
                return coroutine_suspended;
            }
            str = "native_show_started";
            sendDiagnosticEvent = sendDiagnosticEvent2;
            obj = tmpAdObject;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = (String) c03851.L$1;
            sendDiagnosticEvent = (SendDiagnosticEvent) c03851.L$0;
            ResultKt.throwOnFailure(obj);
        }
        SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, str, null, null, null, (AdObject) obj, 14, null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object showCompleted(TimeMark timeMark, String str, ShowStatus showStatus, Listeners listeners, Continuation<? super Unit> continuation) throws Throwable {
        DeviceLog.debug("Unity Ads Show Completed for placement " + str);
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_show_success_time", Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(timeMark)), null, null, this.adObject, 12, null);
        Object objWithContext = BuildersKt.withContext(this.dispatcher, new C03832(listeners, str, showStatus, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$showCompleted$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase$showCompleted$2", f = "LegacyShowUseCase.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C03832 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Listeners $listeners;
        final /* synthetic */ String $placement;
        final /* synthetic */ ShowStatus $status;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03832(Listeners listeners, String str, ShowStatus showStatus, Continuation<? super C03832> continuation) {
            super(2, continuation);
            this.$listeners = listeners;
            this.$placement = str;
            this.$status = showStatus;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C03832(this.$listeners, this.$placement, this.$status, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C03832) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.$listeners.onComplete(this.$placement, ShowStatusExtensionsKt.toUnityAdsShowCompletionState(this.$status));
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$showError$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\u0010\t\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020\u00002\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00002\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\u0000H\u008a@"}, d2 = {"", "diagnosticReason", "Lcom/unity3d/ads/UnityAds$UnityAdsShowError;", "reason", OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE, "", "code", "debugMessage", "", "<anonymous>"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase$showError$1", f = "LegacyShowUseCase.kt", i = {}, l = {272}, m = "invokeSuspend", n = {}, s = {})
    static final class C03841 extends SuspendLambda implements Function6<String, UnityAds.UnityAdsShowError, String, Integer, String, Continuation<? super Unit>, Object> {
        final /* synthetic */ Listeners $listeners;
        final /* synthetic */ String $placement;
        final /* synthetic */ TimeMark $startTime;
        /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        /* synthetic */ Object L$2;
        /* synthetic */ Object L$3;
        /* synthetic */ Object L$4;
        int label;
        final /* synthetic */ LegacyShowUseCase this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03841(String str, LegacyShowUseCase legacyShowUseCase, TimeMark timeMark, Listeners listeners, Continuation<? super C03841> continuation) {
            super(6, continuation);
            this.$placement = str;
            this.this$0 = legacyShowUseCase;
            this.$startTime = timeMark;
            this.$listeners = listeners;
        }

        @Override // kotlin.jvm.functions.Function6
        public final Object invoke(String str, UnityAds.UnityAdsShowError unityAdsShowError, String str2, Integer num, String str3, Continuation<? super Unit> continuation) {
            C03841 c03841 = new C03841(this.$placement, this.this$0, this.$startTime, this.$listeners, continuation);
            c03841.L$0 = str;
            c03841.L$1 = unityAdsShowError;
            c03841.L$2 = str2;
            c03841.L$3 = num;
            c03841.L$4 = str3;
            return c03841.invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                String str = (String) this.L$0;
                UnityAds.UnityAdsShowError unityAdsShowError = (UnityAds.UnityAdsShowError) this.L$1;
                String str2 = (String) this.L$2;
                Integer num = (Integer) this.L$3;
                String str3 = (String) this.L$4;
                DeviceLog.debug("Unity Ads Show Failed for placement " + this.$placement);
                SendDiagnosticEvent.DefaultImpls.invoke$default(this.this$0.sendDiagnosticEvent, "native_show_failure_time", Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(this.$startTime)), this.this$0.getTags(str, num, str3), null, this.this$0.adObject, 8, null);
                this.L$0 = null;
                this.L$1 = null;
                this.L$2 = null;
                this.L$3 = null;
                this.label = 1;
                if (BuildersKt.withContext(this.this$0.dispatcher, new C01191(this.$listeners, this.$placement, unityAdsShowError, str2, null), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.LegacyShowUseCase$showError$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: LegacyShowUseCase.kt */
        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 8, 0})
        @DebugMetadata(c = "com.unity3d.ads.core.domain.LegacyShowUseCase$showError$1$1", f = "LegacyShowUseCase.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
        static final class C01191 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ Listeners $listeners;
            final /* synthetic */ String $message;
            final /* synthetic */ String $placement;
            final /* synthetic */ UnityAds.UnityAdsShowError $reason;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C01191(Listeners listeners, String str, UnityAds.UnityAdsShowError unityAdsShowError, String str2, Continuation<? super C01191> continuation) {
                super(2, continuation);
                this.$listeners = listeners;
                this.$placement = str;
                this.$reason = unityAdsShowError;
                this.$message = str2;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C01191(this.$listeners, this.$placement, this.$reason, this.$message, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C01191) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                this.$listeners.onError(this.$placement, this.$reason, this.$message);
                return Unit.INSTANCE;
            }
        }
    }

    private final Function6<String, UnityAds.UnityAdsShowError, String, Integer, String, Continuation<? super Unit>, Object> showError(TimeMark startTime, String placement, Listeners listeners) {
        return new C03841(placement, this, startTime, listeners, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Map<String, String> getTags(String diagnosticReason, Integer code, String debugMessage) {
        Map<String, String> mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.to("operation", OperationType.SHOW.toString()), TuplesKt.to("reason", diagnosticReason), TuplesKt.to("show_has_started", String.valueOf(this.hasStarted.getValue().booleanValue())));
        if (code != null) {
            mapMutableMapOf.put("reason_code", String.valueOf(code.intValue()));
        }
        if (debugMessage != null) {
            mapMutableMapOf.put("reason_debug", debugMessage);
        }
        return mapMutableMapOf;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object getTmpAdObject(Continuation<? super AdObject> continuation) {
        AnonymousClass1 anonymousClass1;
        LegacyShowUseCase legacyShowUseCase;
        ByteString iSO8859ByteString;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            if ((anonymousClass1.label & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label -= Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object ad = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(ad);
            UnityAdsShowOptions unityAdsShowOptions = this.unityAdsShowOptions;
            UUID uuidFromString = UUID.fromString(unityAdsShowOptions != null ? getOpportunityId(unityAdsShowOptions) : null);
            Intrinsics.checkNotNullExpressionValue(uuidFromString, "fromString(opportunityId)");
            ByteString byteString = ProtobufExtensionsKt.toByteString(uuidFromString);
            AdRepository adRepository = this.adRepository;
            anonymousClass1.L$0 = this;
            anonymousClass1.label = 1;
            ad = adRepository.getAd(byteString, anonymousClass1);
            if (ad == coroutine_suspended) {
                return coroutine_suspended;
            }
            legacyShowUseCase = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            legacyShowUseCase = (LegacyShowUseCase) anonymousClass1.L$0;
            ResultKt.throwOnFailure(ad);
        }
        AdObject adObject = (AdObject) ad;
        if (adObject != null) {
            return adObject;
        }
        UnityAdsShowOptions unityAdsShowOptions2 = legacyShowUseCase.unityAdsShowOptions;
        if (unityAdsShowOptions2 == null) {
            unityAdsShowOptions2 = new UnityAdsShowOptions();
        }
        String opportunityId = legacyShowUseCase.getOpportunityId(unityAdsShowOptions2);
        if (opportunityId == null || (iSO8859ByteString = ProtobufExtensionsKt.toISO8859ByteString(opportunityId)) == null) {
            iSO8859ByteString = ByteString.EMPTY;
        }
        ByteString byteString2 = iSO8859ByteString;
        Intrinsics.checkNotNullExpressionValue(byteString2, "getOpportunityId(showOpt…ing() ?: ByteString.EMPTY");
        String str = legacyShowUseCase.placement;
        if (str == null) {
            str = "";
        }
        ByteString EMPTY = ByteString.EMPTY;
        Intrinsics.checkNotNullExpressionValue(EMPTY, "EMPTY");
        return new AdObject(byteString2, str, EMPTY, null, null, new UnityAdsLoadOptions(), Boxing.boxBoolean(false), DiagnosticEventRequestOuterClass.DiagnosticAdType.DIAGNOSTIC_AD_TYPE_UNSPECIFIED, 16, null);
    }

    /* JADX INFO: compiled from: LegacyShowUseCase.kt */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcom/unity3d/ads/core/domain/LegacyShowUseCase$Companion;", "", "()V", "KEY_OBJECT_ID", "", "MESSAGE_AD_PLAYER_UNAVAILABLE", "MESSAGE_ALREADY_SHOWING", "MESSAGE_NO_AD_OBJECT", "MESSAGE_OPPORTUNITY_ID", "MESSAGE_OPT_TIMEOUT", "MESSAGE_TIMEOUT", "MSG_OPPORTUNITY_AND_PLACEMENT_NOT_MATCHING", "isFullscreenAdShowing", "", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object sendOperativeError(OperativeEventRequestOuterClass.OperativeEventErrorType operativeEventErrorType, String str, AdObject adObject, Continuation<? super Unit> continuation) {
        OperativeEventErrorDataKt.Dsl.Companion companion = OperativeEventErrorDataKt.Dsl.INSTANCE;
        OperativeEventRequestOuterClass.OperativeEventErrorData.Builder builderNewBuilder = OperativeEventRequestOuterClass.OperativeEventErrorData.newBuilder();
        Intrinsics.checkNotNullExpressionValue(builderNewBuilder, "newBuilder()");
        OperativeEventErrorDataKt.Dsl dsl_create = companion._create(builderNewBuilder);
        dsl_create.setErrorType(operativeEventErrorType);
        dsl_create.setMessage(str);
        OperativeEventRequestOuterClass.OperativeEventErrorData operativeEventErrorData_build = dsl_create._build();
        GetOperativeEventApi getOperativeEventApi = this.getOperativeEventApi;
        OperativeEventRequestOuterClass.OperativeEventType operativeEventType = OperativeEventRequestOuterClass.OperativeEventType.OPERATIVE_EVENT_TYPE_SHOW_ERROR;
        ByteString byteString = operativeEventErrorData_build.toByteString();
        Intrinsics.checkNotNullExpressionValue(byteString, "errorData.toByteString()");
        Object objInvoke = getOperativeEventApi.invoke(operativeEventType, adObject, byteString, continuation);
        return objInvoke == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInvoke : Unit.INSTANCE;
    }
}
