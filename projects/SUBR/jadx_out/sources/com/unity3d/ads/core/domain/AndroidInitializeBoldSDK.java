package com.unity3d.ads.core.domain;

import com.unity3d.ads.UnityAds;
import com.unity3d.ads.core.data.manager.SDKPropertiesManager;
import com.unity3d.ads.core.data.manager.StorageManager;
import com.unity3d.ads.core.data.model.InitializationState;
import com.unity3d.ads.core.data.model.OperationType;
import com.unity3d.ads.core.data.model.exception.InitializationException;
import com.unity3d.ads.core.data.repository.DiagnosticEventRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.events.EventObservers;
import com.unity3d.ads.core.domain.om.InitializeOMSDK;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import com.unity3d.ads.gatewayclient.GatewayClient;
import com.unity3d.ads.gatewayclient.RequestPolicy;
import com.unity3d.services.UnityAdsConstants;
import com.unity3d.services.core.configuration.ConfigurationReader;
import com.unity3d.services.core.log.DeviceLog;
import gatewayprotocol.v1.InitializationResponseOuterClass;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import gatewayprotocol.v1.UniversalResponseOuterClass;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.TimeMark;
import kotlin.time.TimeSource;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: compiled from: AndroidInitializeBoldSDK.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0000\u0018\u0000 12\u00020\u0001:\u00011B}\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0019\u0012\u0006\u0010\u001a\u001a\u00020\u001b\u0012\u0006\u0010\u001c\u001a\u00020\u001d\u0012\u0006\u0010\u001e\u001a\u00020\u001f¢\u0006\u0002\u0010 J\b\u0010!\u001a\u00020\"H\u0002J\u001c\u0010#\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%0$2\u0006\u0010&\u001a\u00020'H\u0002J\u0018\u0010(\u001a\u00020\"2\u0006\u0010)\u001a\u00020*2\u0006\u0010&\u001a\u00020'H\u0002J\u0011\u0010+\u001a\u00020\"H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010,J\u0019\u0010-\u001a\u00020\"2\u0006\u0010)\u001a\u00020*H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010.J\u0011\u0010/\u001a\u00020\"H\u0096Bø\u0001\u0000¢\u0006\u0002\u0010,J\b\u00100\u001a\u00020\"H\u0002R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u00062"}, d2 = {"Lcom/unity3d/ads/core/domain/AndroidInitializeBoldSDK;", "Lcom/unity3d/ads/core/domain/InitializeBoldSDK;", "defaultDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "initializeOM", "Lcom/unity3d/ads/core/domain/om/InitializeOMSDK;", "getInitializeRequest", "Lcom/unity3d/ads/core/domain/GetInitializationRequest;", "getRequestPolicy", "Lcom/unity3d/ads/core/domain/GetRequestPolicy;", "clearCache", "Lcom/unity3d/ads/core/domain/ClearCache;", "handleGatewayInitializationResponse", "Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;", "gatewayClient", "Lcom/unity3d/ads/gatewayclient/GatewayClient;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "eventObservers", "Lcom/unity3d/ads/core/domain/events/EventObservers;", "triggerInitializeListener", "Lcom/unity3d/ads/core/domain/TriggerInitializeListener;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "diagnosticEventRepository", "Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;", "storageManager", "Lcom/unity3d/ads/core/data/manager/StorageManager;", "legacyConfigurationReader", "Lcom/unity3d/services/core/configuration/ConfigurationReader;", "sdkPropertiesManager", "Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;", "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/core/domain/om/InitializeOMSDK;Lcom/unity3d/ads/core/domain/GetInitializationRequest;Lcom/unity3d/ads/core/domain/GetRequestPolicy;Lcom/unity3d/ads/core/domain/ClearCache;Lcom/unity3d/ads/core/domain/HandleGatewayInitializationResponse;Lcom/unity3d/ads/gatewayclient/GatewayClient;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lcom/unity3d/ads/core/domain/events/EventObservers;Lcom/unity3d/ads/core/domain/TriggerInitializeListener;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/core/data/repository/DiagnosticEventRepository;Lcom/unity3d/ads/core/data/manager/StorageManager;Lcom/unity3d/services/core/configuration/ConfigurationReader;Lcom/unity3d/ads/core/data/manager/SDKPropertiesManager;)V", "checkCanInitialize", "", "getTags", "", "", "e", "Lcom/unity3d/ads/core/data/model/exception/InitializationException;", "initializationFailure", "startTime", "Lkotlin/time/TimeMark;", "initializationStart", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "initializationSuccess", "(Lkotlin/time/TimeMark;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "invoke", "setupDiagnosticEvents", "Companion", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AndroidInitializeBoldSDK implements InitializeBoldSDK {
    public static final String MSG_GATEWAY_DENIED = "Gateway communication failure";
    public static final String MSG_NETWORK = "Network";
    public static final String MSG_TIMEOUT = "Timeout";
    public static final String MSG_UNKNOWN = "Initialization failure";
    private final ClearCache clearCache;
    private final CoroutineDispatcher defaultDispatcher;
    private final DiagnosticEventRepository diagnosticEventRepository;
    private final EventObservers eventObservers;
    private final GatewayClient gatewayClient;
    private final GetInitializationRequest getInitializeRequest;
    private final GetRequestPolicy getRequestPolicy;
    private final HandleGatewayInitializationResponse handleGatewayInitializationResponse;
    private final InitializeOMSDK initializeOM;
    private final ConfigurationReader legacyConfigurationReader;
    private final SDKPropertiesManager sdkPropertiesManager;
    private final SendDiagnosticEvent sendDiagnosticEvent;
    private final SessionRepository sessionRepository;
    private final StorageManager storageManager;
    private final TriggerInitializeListener triggerInitializeListener;

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$initializationSuccess$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidInitializeBoldSDK.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidInitializeBoldSDK", f = "AndroidInitializeBoldSDK.kt", i = {0, 1, 2}, l = {92, 93, 95}, m = "initializationSuccess", n = {"this", "this", "this"}, s = {"L$0", "L$0", "L$0"})
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
            return AndroidInitializeBoldSDK.this.initializationSuccess(null, this);
        }
    }

    public AndroidInitializeBoldSDK(CoroutineDispatcher defaultDispatcher, InitializeOMSDK initializeOM, GetInitializationRequest getInitializeRequest, GetRequestPolicy getRequestPolicy, ClearCache clearCache, HandleGatewayInitializationResponse handleGatewayInitializationResponse, GatewayClient gatewayClient, SessionRepository sessionRepository, EventObservers eventObservers, TriggerInitializeListener triggerInitializeListener, SendDiagnosticEvent sendDiagnosticEvent, DiagnosticEventRepository diagnosticEventRepository, StorageManager storageManager, ConfigurationReader legacyConfigurationReader, SDKPropertiesManager sdkPropertiesManager) {
        Intrinsics.checkNotNullParameter(defaultDispatcher, "defaultDispatcher");
        Intrinsics.checkNotNullParameter(initializeOM, "initializeOM");
        Intrinsics.checkNotNullParameter(getInitializeRequest, "getInitializeRequest");
        Intrinsics.checkNotNullParameter(getRequestPolicy, "getRequestPolicy");
        Intrinsics.checkNotNullParameter(clearCache, "clearCache");
        Intrinsics.checkNotNullParameter(handleGatewayInitializationResponse, "handleGatewayInitializationResponse");
        Intrinsics.checkNotNullParameter(gatewayClient, "gatewayClient");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(eventObservers, "eventObservers");
        Intrinsics.checkNotNullParameter(triggerInitializeListener, "triggerInitializeListener");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(diagnosticEventRepository, "diagnosticEventRepository");
        Intrinsics.checkNotNullParameter(storageManager, "storageManager");
        Intrinsics.checkNotNullParameter(legacyConfigurationReader, "legacyConfigurationReader");
        Intrinsics.checkNotNullParameter(sdkPropertiesManager, "sdkPropertiesManager");
        this.defaultDispatcher = defaultDispatcher;
        this.initializeOM = initializeOM;
        this.getInitializeRequest = getInitializeRequest;
        this.getRequestPolicy = getRequestPolicy;
        this.clearCache = clearCache;
        this.handleGatewayInitializationResponse = handleGatewayInitializationResponse;
        this.gatewayClient = gatewayClient;
        this.sessionRepository = sessionRepository;
        this.eventObservers = eventObservers;
        this.triggerInitializeListener = triggerInitializeListener;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.diagnosticEventRepository = diagnosticEventRepository;
        this.storageManager = storageManager;
        this.legacyConfigurationReader = legacyConfigurationReader;
        this.sdkPropertiesManager = sdkPropertiesManager;
    }

    /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$invoke$2, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidInitializeBoldSDK.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$invoke$2", f = "AndroidInitializeBoldSDK.kt", i = {0}, l = {58, 72}, m = "invokeSuspend", n = {"startTime"}, s = {"J$0"})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        long J$0;
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidInitializeBoldSDK.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:21:0x0058 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            long j;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                long jM2066markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m2066markNowz9LOYto();
                try {
                    this.J$0 = jM2066markNowz9LOYto;
                    this.label = 1;
                    if (TimeoutKt.withTimeout(UnityAdsConstants.Timeout.INIT_TIMEOUT_MS, new AnonymousClass1(AndroidInitializeBoldSDK.this, null), this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    j = jM2066markNowz9LOYto;
                    this.label = 2;
                    if (AndroidInitializeBoldSDK.this.initializationSuccess(TimeSource.Monotonic.ValueTimeMark.m2067boximpl(j), this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } catch (Exception e) {
                    e = e;
                    j = jM2066markNowz9LOYto;
                    AndroidInitializeBoldSDK.this.initializationFailure(TimeSource.Monotonic.ValueTimeMark.m2067boximpl(j), InitializationException.INSTANCE.parseFrom(e));
                    return Unit.INSTANCE;
                }
            } else if (i == 1) {
                j = this.J$0;
                try {
                    ResultKt.throwOnFailure(obj);
                    this.label = 2;
                    if (AndroidInitializeBoldSDK.this.initializationSuccess(TimeSource.Monotonic.ValueTimeMark.m2067boximpl(j), this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } catch (Exception e2) {
                    e = e2;
                    AndroidInitializeBoldSDK.this.initializationFailure(TimeSource.Monotonic.ValueTimeMark.m2067boximpl(j), InitializationException.INSTANCE.parseFrom(e));
                    return Unit.INSTANCE;
                }
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$invoke$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: AndroidInitializeBoldSDK.kt */
        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 8, 0})
        @DebugMetadata(c = "com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$invoke$2$1", f = "AndroidInitializeBoldSDK.kt", i = {}, l = {59, 61, 63, 64}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            int label;
            final /* synthetic */ AndroidInitializeBoldSDK this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(AndroidInitializeBoldSDK androidInitializeBoldSDK, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = androidInitializeBoldSDK;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            /* JADX WARN: Code duplicated, block: B:22:0x0078 A[RETURN] */
            /* JADX WARN: Code duplicated, block: B:25:0x0099 A[RETURN] */
            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) throws InitializationException {
                HandleGatewayInitializationResponse handleGatewayInitializationResponse;
                InitializationResponseOuterClass.InitializationResponse initializationResponse;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (this.this$0.initializationStart(this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    if (i == 1) {
                        ResultKt.throwOnFailure(obj);
                    } else if (i == 2) {
                        ResultKt.throwOnFailure(obj);
                        RequestPolicy requestPolicyInvoke = this.this$0.getRequestPolicy.invoke();
                        this.label = 3;
                        obj = GatewayClient.DefaultImpls.request$default(this.this$0.gatewayClient, null, (UniversalRequestOuterClass.UniversalRequest) obj, requestPolicyInvoke, OperationType.INITIALIZATION, this, 1, null);
                        if (obj == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        handleGatewayInitializationResponse = this.this$0.handleGatewayInitializationResponse;
                        initializationResponse = ((UniversalResponseOuterClass.UniversalResponse) obj).getPayload().getInitializationResponse();
                        Intrinsics.checkNotNullExpressionValue(initializationResponse, "response.payload.initializationResponse");
                        this.label = 4;
                        if (handleGatewayInitializationResponse.invoke(initializationResponse, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else if (i == 3) {
                        ResultKt.throwOnFailure(obj);
                        handleGatewayInitializationResponse = this.this$0.handleGatewayInitializationResponse;
                        initializationResponse = ((UniversalResponseOuterClass.UniversalResponse) obj).getPayload().getInitializationResponse();
                        Intrinsics.checkNotNullExpressionValue(initializationResponse, "response.payload.initializationResponse");
                        this.label = 4;
                        if (handleGatewayInitializationResponse.invoke(initializationResponse, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        if (i != 4) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    return Unit.INSTANCE;
                }
                this.this$0.checkCanInitialize();
                this.label = 2;
                obj = this.this$0.getInitializeRequest.invoke(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
                RequestPolicy requestPolicyInvoke2 = this.this$0.getRequestPolicy.invoke();
                this.label = 3;
                obj = GatewayClient.DefaultImpls.request$default(this.this$0.gatewayClient, null, (UniversalRequestOuterClass.UniversalRequest) obj, requestPolicyInvoke2, OperationType.INITIALIZATION, this, 1, null);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
                handleGatewayInitializationResponse = this.this$0.handleGatewayInitializationResponse;
                initializationResponse = ((UniversalResponseOuterClass.UniversalResponse) obj).getPayload().getInitializationResponse();
                Intrinsics.checkNotNullExpressionValue(initializationResponse, "response.payload.initializationResponse");
                this.label = 4;
                if (handleGatewayInitializationResponse.invoke(initializationResponse, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            }
        }
    }

    @Override // com.unity3d.ads.core.domain.InitializeBoldSDK
    public Object invoke(Continuation<? super Unit> continuation) throws Throwable {
        Object objWithContext = BuildersKt.withContext(this.defaultDispatcher, new AnonymousClass2(null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkCanInitialize() throws InitializationException {
        if (!this.sessionRepository.getShouldInitialize()) {
            throw new InitializationException(MSG_GATEWAY_DENIED, null, "gateway", "!sessionRepository.shouldInitialize", 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object initializationStart(Continuation<? super Unit> continuation) {
        DeviceLog.debug("Unity Ads Initialization Start");
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_initialization_started", null, null, null, null, 30, null);
        this.sessionRepository.setInitializationState(InitializationState.INITIALIZING);
        Object objInvoke = this.eventObservers.invoke(continuation);
        return objInvoke == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInvoke : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:27:0x0099 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:28:0x009a  */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    public final Object initializationSuccess(TimeMark timeMark, Continuation<? super Unit> continuation) {
        AnonymousClass1 anonymousClass1;
        AndroidInitializeBoldSDK androidInitializeBoldSDK;
        SessionRepository sessionRepository;
        AndroidInitializeBoldSDK androidInitializeBoldSDK2;
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
        Object obj = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            DeviceLog.debug("Unity Ads Initialization Success");
            SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_initialize_task_success_time", Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(timeMark)), null, null, null, 28, null);
            this.storageManager.hasInitialized();
            InitializeOMSDK initializeOMSDK = this.initializeOM;
            anonymousClass1.L$0 = this;
            anonymousClass1.label = 1;
            if (initializeOMSDK.invoke(anonymousClass1) == coroutine_suspended) {
                return coroutine_suspended;
            }
            androidInitializeBoldSDK = this;
        } else {
            if (i == 1) {
                androidInitializeBoldSDK = (AndroidInitializeBoldSDK) anonymousClass1.L$0;
                ResultKt.throwOnFailure(obj);
            } else if (i == 2) {
                androidInitializeBoldSDK = (AndroidInitializeBoldSDK) anonymousClass1.L$0;
                ResultKt.throwOnFailure(obj);
                sessionRepository = androidInitializeBoldSDK.sessionRepository;
                anonymousClass1.L$0 = androidInitializeBoldSDK;
                anonymousClass1.label = 3;
                if (sessionRepository.persistNativeConfiguration(anonymousClass1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                androidInitializeBoldSDK2 = androidInitializeBoldSDK;
            } else {
                if (i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                androidInitializeBoldSDK2 = (AndroidInitializeBoldSDK) anonymousClass1.L$0;
                ResultKt.throwOnFailure(obj);
            }
            androidInitializeBoldSDK2.legacyConfigurationReader.getCurrentConfiguration().deleteFromDisk();
            androidInitializeBoldSDK2.sessionRepository.setInitializationState(InitializationState.INITIALIZED);
            androidInitializeBoldSDK2.sdkPropertiesManager.setInitialized(true);
            androidInitializeBoldSDK2.triggerInitializeListener.success();
            androidInitializeBoldSDK2.setupDiagnosticEvents();
            return Unit.INSTANCE;
        }
        ClearCache clearCache = androidInitializeBoldSDK.clearCache;
        anonymousClass1.L$0 = androidInitializeBoldSDK;
        anonymousClass1.label = 2;
        if (clearCache.invoke(anonymousClass1) == coroutine_suspended) {
            return coroutine_suspended;
        }
        sessionRepository = androidInitializeBoldSDK.sessionRepository;
        anonymousClass1.L$0 = androidInitializeBoldSDK;
        anonymousClass1.label = 3;
        if (sessionRepository.persistNativeConfiguration(anonymousClass1) == coroutine_suspended) {
            return coroutine_suspended;
        }
        androidInitializeBoldSDK2 = androidInitializeBoldSDK;
        androidInitializeBoldSDK2.legacyConfigurationReader.getCurrentConfiguration().deleteFromDisk();
        androidInitializeBoldSDK2.sessionRepository.setInitializationState(InitializationState.INITIALIZED);
        androidInitializeBoldSDK2.sdkPropertiesManager.setInitialized(true);
        androidInitializeBoldSDK2.triggerInitializeListener.success();
        androidInitializeBoldSDK2.setupDiagnosticEvents();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void initializationFailure(TimeMark startTime, InitializationException e) {
        DeviceLog.debug("Unity Ads Initialization Failure: " + e.getMessage());
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_initialize_task_failure_time", Double.valueOf(TimeExtensionsKt.elapsedMillis(startTime)), getTags(e), null, null, 24, null);
        this.sessionRepository.setInitializationState(InitializationState.FAILED);
        this.sdkPropertiesManager.setInitialized(false);
        this.triggerInitializeListener.error(UnityAds.UnityAdsInitializationError.INTERNAL_ERROR, e.getMessage());
        setupDiagnosticEvents();
    }

    private final Map<String, String> getTags(InitializationException e) {
        Map mapCreateMapBuilder = MapsKt.createMapBuilder();
        mapCreateMapBuilder.put("operation", OperationType.INITIALIZATION.toString());
        mapCreateMapBuilder.put("reason", e.getReason());
        if (e.getReasonDebug() != null) {
            mapCreateMapBuilder.put("reason_debug", e.getReasonDebug());
        }
        return MapsKt.build(mapCreateMapBuilder);
    }

    private final void setupDiagnosticEvents() {
        NativeConfigurationOuterClass.DiagnosticEventsConfiguration config = this.sessionRepository.getNativeConfiguration().getDiagnosticEvents();
        DiagnosticEventRepository diagnosticEventRepository = this.diagnosticEventRepository;
        Intrinsics.checkNotNullExpressionValue(config, "config");
        diagnosticEventRepository.configure(config);
    }
}
