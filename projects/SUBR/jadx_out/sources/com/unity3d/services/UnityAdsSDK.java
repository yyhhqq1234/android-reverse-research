package com.unity3d.services;

import android.content.Context;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.unity3d.ads.IUnityAdsLoadListener;
import com.unity3d.ads.IUnityAdsTokenListener;
import com.unity3d.ads.UnityAdsLoadOptions;
import com.unity3d.ads.UnityAdsShowOptions;
import com.unity3d.ads.core.configuration.AlternativeFlowReader;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.InitializationState;
import com.unity3d.ads.core.data.model.Listeners;
import com.unity3d.ads.core.domain.GetAdObject;
import com.unity3d.ads.core.domain.GetAsyncHeaderBiddingToken;
import com.unity3d.ads.core.domain.GetHeaderBiddingToken;
import com.unity3d.ads.core.domain.GetInitializationState;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import com.unity3d.ads.core.domain.InitializeBoldSDK;
import com.unity3d.ads.core.domain.LegacyLoadUseCase;
import com.unity3d.ads.core.domain.LegacyShowUseCase;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.domain.SetInitializationState;
import com.unity3d.ads.core.domain.om.OmFinishSession;
import com.unity3d.ads.core.extensions.ExceptionExtensionsKt;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import com.unity3d.services.banners.UnityBannerSize;
import com.unity3d.services.core.di.IServiceComponent;
import com.unity3d.services.core.di.IServiceProvider;
import com.unity3d.services.core.di.ServiceProvider;
import com.unity3d.services.core.domain.task.EmptyParams;
import com.unity3d.services.core.domain.task.InitializeSDK;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Result;
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
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.Reflection;
import kotlin.time.TimeSource;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import org.json.h6;
import org.json.j5;
import org.json.mediationsdk.metadata.a;
import org.json.y8;

/* JADX INFO: compiled from: UnityAdsSDK.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u0004J\b\u0010\n\u001a\u0004\u0018\u00010\u0004J\u0010\u0010\n\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\fJ\u0006\u0010\r\u001a\u00020\bJ\u0006\u0010\u000e\u001a\u00020\u000fJ.\u0010\u0010\u001a\u00020\b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0012\u001a\u00020\u00132\b\u0010\u000b\u001a\u0004\u0018\u00010\u00142\n\b\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016J\"\u0010\u0017\u001a\u00020\b2\b\u0010\u0011\u001a\u0004\u0018\u00010\u00042\b\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\u000b\u001a\u00020\u001a\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b²\u0006\n\u0010\u001c\u001a\u00020\u001dX\u008a\u0084\u0002²\u0006\n\u0010\u001e\u001a\u00020\u001fX\u008a\u0084\u0002²\u0006\n\u0010 \u001a\u00020!X\u008a\u0084\u0002²\u0006\n\u0010\"\u001a\u00020#X\u008a\u0084\u0002²\u0006\n\u0010\u001c\u001a\u00020\u001dX\u008a\u0084\u0002²\u0006\n\u0010$\u001a\u00020%X\u008a\u0084\u0002²\u0006\n\u0010$\u001a\u00020%X\u008a\u0084\u0002²\u0006\n\u0010&\u001a\u00020'X\u008a\u0084\u0002²\u0006\n\u0010(\u001a\u00020)X\u008a\u0084\u0002²\u0006\n\u0010*\u001a\u00020+X\u008a\u0084\u0002²\u0006\n\u0010,\u001a\u00020-X\u008a\u0084\u0002²\u0006\n\u0010.\u001a\u00020/X\u008a\u0084\u0002²\u0006\n\u00100\u001a\u000201X\u008a\u0084\u0002²\u0006\n\u0010\u001c\u001a\u00020\u001dX\u008a\u0084\u0002"}, d2 = {"Lcom/unity3d/services/UnityAdsSDK;", "Lcom/unity3d/services/core/di/IServiceComponent;", "()V", "fetchToken", "", "sync", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "finishOMIDSession", "Lkotlinx/coroutines/Job;", "opportunityId", "getToken", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcom/unity3d/ads/IUnityAdsTokenListener;", MobileAdsBridgeBase.initializeMethodName, "isAlternativeFlowEnabled", "", "load", y8.j, HandleInvocationsFromAdViewer.KEY_LOAD_OPTIONS, "Lcom/unity3d/ads/UnityAdsLoadOptions;", "Lcom/unity3d/ads/IUnityAdsLoadListener;", h6.u, "Lcom/unity3d/services/banners/UnityBannerSize;", j5.v, "showOptions", "Lcom/unity3d/ads/UnityAdsShowOptions;", "Lcom/unity3d/ads/core/data/model/Listeners;", "unity-ads_release", "alternativeFlowReader", "Lcom/unity3d/ads/core/configuration/AlternativeFlowReader;", "setInitializationState", "Lcom/unity3d/ads/core/domain/SetInitializationState;", "initializeSDK", "Lcom/unity3d/services/core/domain/task/InitializeSDK;", "initializeBoldSDK", "Lcom/unity3d/ads/core/domain/InitializeBoldSDK;", "context", "Landroid/content/Context;", "getAsyncHeaderBiddingToken", "Lcom/unity3d/ads/core/domain/GetAsyncHeaderBiddingToken;", "getHeaderBiddingToken", "Lcom/unity3d/ads/core/domain/GetHeaderBiddingToken;", "getInitializationState", "Lcom/unity3d/ads/core/domain/GetInitializationState;", "sendDiagnosticEvent", "Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;", "getAdObject", "Lcom/unity3d/ads/core/domain/GetAdObject;", "omFinishSession", "Lcom/unity3d/ads/core/domain/om/OmFinishSession;"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class UnityAdsSDK implements IServiceComponent {
    public static final UnityAdsSDK INSTANCE = new UnityAdsSDK();

    /* JADX INFO: renamed from: com.unity3d.services.UnityAdsSDK$fetchToken$1, reason: invalid class name */
    /* JADX INFO: compiled from: UnityAdsSDK.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.services.UnityAdsSDK", f = "UnityAdsSDK.kt", i = {0, 0, 0, 0, 0, 0}, l = {141}, m = "fetchToken", n = {"sync", "getInitializationState$delegate", "sendDiagnosticEvent$delegate", "reason", "reasonDebug", "startTime"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "J$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return UnityAdsSDK.this.fetchToken(null, this);
        }
    }

    private UnityAdsSDK() {
    }

    @Override // com.unity3d.services.core.di.IServiceComponent
    public IServiceProvider getServiceProvider() {
        return IServiceComponent.DefaultImpls.getServiceProvider(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AlternativeFlowReader initialize$lambda$0(Lazy<AlternativeFlowReader> lazy) {
        return lazy.getValue();
    }

    public final Job initialize() {
        final UnityAdsSDK unityAdsSDK = this;
        final String str = "";
        Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<AlternativeFlowReader>() { // from class: com.unity3d.services.UnityAdsSDK$initialize$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [com.unity3d.ads.core.configuration.AlternativeFlowReader, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final AlternativeFlowReader invoke() {
                IServiceComponent iServiceComponent = unityAdsSDK;
                return iServiceComponent.getServiceProvider().getRegistry().getService(str, Reflection.getOrCreateKotlinClass(AlternativeFlowReader.class));
            }
        });
        Lazy lazy2 = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<SetInitializationState>() { // from class: com.unity3d.services.UnityAdsSDK$initialize$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [com.unity3d.ads.core.domain.SetInitializationState, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final SetInitializationState invoke() {
                IServiceComponent iServiceComponent = unityAdsSDK;
                return iServiceComponent.getServiceProvider().getRegistry().getService(str, Reflection.getOrCreateKotlinClass(SetInitializationState.class));
            }
        });
        Lazy lazy3 = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<InitializeSDK>() { // from class: com.unity3d.services.UnityAdsSDK$initialize$$inlined$inject$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [com.unity3d.services.core.domain.task.InitializeSDK, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final InitializeSDK invoke() {
                IServiceComponent iServiceComponent = unityAdsSDK;
                return iServiceComponent.getServiceProvider().getRegistry().getService(str, Reflection.getOrCreateKotlinClass(InitializeSDK.class));
            }
        });
        Lazy lazy4 = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<InitializeBoldSDK>() { // from class: com.unity3d.services.UnityAdsSDK$initialize$$inlined$inject$default$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [com.unity3d.ads.core.domain.InitializeBoldSDK, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final InitializeBoldSDK invoke() {
                IServiceComponent iServiceComponent = unityAdsSDK;
                return iServiceComponent.getServiceProvider().getRegistry().getService(str, Reflection.getOrCreateKotlinClass(InitializeBoldSDK.class));
            }
        });
        initialize$lambda$1(lazy2).invoke(InitializationState.INITIALIZING);
        CoroutineScope coroutineScope = (CoroutineScope) unityAdsSDK.getServiceProvider().getRegistry().getService(ServiceProvider.NAMED_INIT_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class));
        return BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new C04291(coroutineScope, lazy, lazy4, lazy3, null), 3, null);
    }

    private static final SetInitializationState initialize$lambda$1(Lazy<? extends SetInitializationState> lazy) {
        return lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final InitializeSDK initialize$lambda$2(Lazy<InitializeSDK> lazy) {
        return lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final InitializeBoldSDK initialize$lambda$3(Lazy<? extends InitializeBoldSDK> lazy) {
        return lazy.getValue();
    }

    /* JADX INFO: renamed from: com.unity3d.services.UnityAdsSDK$initialize$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: UnityAdsSDK.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.unity3d.services.UnityAdsSDK$initialize$1", f = "UnityAdsSDK.kt", i = {}, l = {64, 66}, m = "invokeSuspend", n = {}, s = {})
    static final class C04291 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Lazy<AlternativeFlowReader> $alternativeFlowReader$delegate;
        final /* synthetic */ CoroutineScope $initScope;
        final /* synthetic */ Lazy<InitializeBoldSDK> $initializeBoldSDK$delegate;
        final /* synthetic */ Lazy<InitializeSDK> $initializeSDK$delegate;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C04291(CoroutineScope coroutineScope, Lazy<AlternativeFlowReader> lazy, Lazy<? extends InitializeBoldSDK> lazy2, Lazy<InitializeSDK> lazy3, Continuation<? super C04291> continuation) {
            super(2, continuation);
            this.$initScope = coroutineScope;
            this.$alternativeFlowReader$delegate = lazy;
            this.$initializeBoldSDK$delegate = lazy2;
            this.$initializeSDK$delegate = lazy3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C04291(this.$initScope, this.$alternativeFlowReader$delegate, this.$initializeBoldSDK$delegate, this.$initializeSDK$delegate, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04291) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                if (UnityAdsSDK.initialize$lambda$0(this.$alternativeFlowReader$delegate).invoke()) {
                    this.label = 1;
                    if (UnityAdsSDK.initialize$lambda$3(this.$initializeBoldSDK$delegate).invoke(this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                } else {
                    this.label = 2;
                    if (UnityAdsSDK.initialize$lambda$2(this.$initializeSDK$delegate).mo520invokegIAlus(EmptyParams.INSTANCE, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            } else if (i == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                ((Result) obj).getValue();
            }
            CoroutineScopeKt.cancel$default(this.$initScope, null, 1, null);
            return Unit.INSTANCE;
        }
    }

    private static final AlternativeFlowReader isAlternativeFlowEnabled$lambda$4(Lazy<AlternativeFlowReader> lazy) {
        return lazy.getValue();
    }

    public final boolean isAlternativeFlowEnabled() {
        final UnityAdsSDK unityAdsSDK = this;
        final String str = "";
        return isAlternativeFlowEnabled$lambda$4(LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<AlternativeFlowReader>() { // from class: com.unity3d.services.UnityAdsSDK$isAlternativeFlowEnabled$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [com.unity3d.ads.core.configuration.AlternativeFlowReader, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final AlternativeFlowReader invoke() {
                IServiceComponent iServiceComponent = unityAdsSDK;
                return iServiceComponent.getServiceProvider().getRegistry().getService(str, Reflection.getOrCreateKotlinClass(AlternativeFlowReader.class));
            }
        })).invoke();
    }

    public static /* synthetic */ Job load$default(UnityAdsSDK unityAdsSDK, String str, UnityAdsLoadOptions unityAdsLoadOptions, IUnityAdsLoadListener iUnityAdsLoadListener, UnityBannerSize unityBannerSize, int i, Object obj) {
        if ((i & 8) != 0) {
            unityBannerSize = null;
        }
        return unityAdsSDK.load(str, unityAdsLoadOptions, iUnityAdsLoadListener, unityBannerSize);
    }

    public final Job load(String placementId, UnityAdsLoadOptions loadOptions, IUnityAdsLoadListener listener, UnityBannerSize bannerSize) {
        Intrinsics.checkNotNullParameter(loadOptions, "loadOptions");
        final UnityAdsSDK unityAdsSDK = this;
        CoroutineScope coroutineScope = (CoroutineScope) unityAdsSDK.getServiceProvider().getRegistry().getService(ServiceProvider.NAMED_LOAD_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class));
        final String str = "";
        return BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new C04301(placementId, loadOptions, listener, bannerSize, coroutineScope, LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<Context>() { // from class: com.unity3d.services.UnityAdsSDK$load$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [android.content.Context, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final Context invoke() {
                IServiceComponent iServiceComponent = unityAdsSDK;
                return iServiceComponent.getServiceProvider().getRegistry().getService(str, Reflection.getOrCreateKotlinClass(Context.class));
            }
        }), null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Context load$lambda$5(Lazy<? extends Context> lazy) {
        return lazy.getValue();
    }

    /* JADX INFO: renamed from: com.unity3d.services.UnityAdsSDK$load$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: UnityAdsSDK.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.unity3d.services.UnityAdsSDK$load$1", f = "UnityAdsSDK.kt", i = {}, l = {89}, m = "invokeSuspend", n = {}, s = {})
    static final class C04301 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ UnityBannerSize $bannerSize;
        final /* synthetic */ Lazy<Context> $context$delegate;
        final /* synthetic */ IUnityAdsLoadListener $listener;
        final /* synthetic */ UnityAdsLoadOptions $loadOptions;
        final /* synthetic */ CoroutineScope $loadScope;
        final /* synthetic */ String $placementId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C04301(String str, UnityAdsLoadOptions unityAdsLoadOptions, IUnityAdsLoadListener iUnityAdsLoadListener, UnityBannerSize unityBannerSize, CoroutineScope coroutineScope, Lazy<? extends Context> lazy, Continuation<? super C04301> continuation) {
            super(2, continuation);
            this.$placementId = str;
            this.$loadOptions = unityAdsLoadOptions;
            this.$listener = iUnityAdsLoadListener;
            this.$bannerSize = unityBannerSize;
            this.$loadScope = coroutineScope;
            this.$context$delegate = lazy;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C04301(this.$placementId, this.$loadOptions, this.$listener, this.$bannerSize, this.$loadScope, this.$context$delegate, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04301) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (((LegacyLoadUseCase) UnityAdsSDK.INSTANCE.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(LegacyLoadUseCase.class))).invoke(UnityAdsSDK.load$lambda$5(this.$context$delegate), this.$placementId, this.$loadOptions, this.$listener, this.$bannerSize, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            CoroutineScopeKt.cancel$default(this.$loadScope, null, 1, null);
            return Unit.INSTANCE;
        }
    }

    public final Job show(String placementId, UnityAdsShowOptions showOptions, Listeners listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        final UnityAdsSDK unityAdsSDK = this;
        CoroutineScope coroutineScope = (CoroutineScope) unityAdsSDK.getServiceProvider().getRegistry().getService(ServiceProvider.NAMED_SHOW_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class));
        final String str = "";
        return BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new C04311((LegacyShowUseCase) unityAdsSDK.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(LegacyShowUseCase.class)), placementId, showOptions, listener, coroutineScope, LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<Context>() { // from class: com.unity3d.services.UnityAdsSDK$show$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [android.content.Context, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final Context invoke() {
                IServiceComponent iServiceComponent = unityAdsSDK;
                return iServiceComponent.getServiceProvider().getRegistry().getService(str, Reflection.getOrCreateKotlinClass(Context.class));
            }
        }), null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Context show$lambda$6(Lazy<? extends Context> lazy) {
        return lazy.getValue();
    }

    /* JADX INFO: renamed from: com.unity3d.services.UnityAdsSDK$show$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: UnityAdsSDK.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.unity3d.services.UnityAdsSDK$show$1", f = "UnityAdsSDK.kt", i = {}, l = {100}, m = "invokeSuspend", n = {}, s = {})
    static final class C04311 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Lazy<Context> $context$delegate;
        final /* synthetic */ Listeners $listener;
        final /* synthetic */ String $placementId;
        final /* synthetic */ LegacyShowUseCase $showBoldSDK;
        final /* synthetic */ UnityAdsShowOptions $showOptions;
        final /* synthetic */ CoroutineScope $showScope;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C04311(LegacyShowUseCase legacyShowUseCase, String str, UnityAdsShowOptions unityAdsShowOptions, Listeners listeners, CoroutineScope coroutineScope, Lazy<? extends Context> lazy, Continuation<? super C04311> continuation) {
            super(2, continuation);
            this.$showBoldSDK = legacyShowUseCase;
            this.$placementId = str;
            this.$showOptions = unityAdsShowOptions;
            this.$listener = listeners;
            this.$showScope = coroutineScope;
            this.$context$delegate = lazy;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C04311(this.$showBoldSDK, this.$placementId, this.$showOptions, this.$listener, this.$showScope, this.$context$delegate, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04311) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (this.$showBoldSDK.invoke(UnityAdsSDK.show$lambda$6(this.$context$delegate), this.$placementId, this.$showOptions, this.$listener, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            CoroutineScopeKt.cancel$default(this.$showScope, null, 1, null);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.services.UnityAdsSDK$getToken$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: UnityAdsSDK.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.unity3d.services.UnityAdsSDK$getToken$1", f = "UnityAdsSDK.kt", i = {}, l = {111}, m = "invokeSuspend", n = {}, s = {})
    static final class C04281 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super String>, Object> {
        int label;

        C04281(Continuation<? super C04281> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C04281(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super String> continuation) {
            return ((C04281) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = UnityAdsSDK.INSTANCE.fetchToken(a.g, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final String getToken() {
        return (String) BuildersKt__BuildersKt.runBlocking$default(null, new C04281(null), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetAsyncHeaderBiddingToken getToken$lambda$7(Lazy<? extends GetAsyncHeaderBiddingToken> lazy) {
        return lazy.getValue();
    }

    public final Job getToken(IUnityAdsTokenListener listener) {
        final UnityAdsSDK unityAdsSDK = this;
        final String str = "";
        Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<GetAsyncHeaderBiddingToken>() { // from class: com.unity3d.services.UnityAdsSDK$getToken$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [com.unity3d.ads.core.domain.GetAsyncHeaderBiddingToken, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final GetAsyncHeaderBiddingToken invoke() {
                IServiceComponent iServiceComponent = unityAdsSDK;
                return iServiceComponent.getServiceProvider().getRegistry().getService(str, Reflection.getOrCreateKotlinClass(GetAsyncHeaderBiddingToken.class));
            }
        });
        CoroutineScope coroutineScope = (CoroutineScope) unityAdsSDK.getServiceProvider().getRegistry().getService(ServiceProvider.NAMED_GET_TOKEN_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class));
        return BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new AnonymousClass2(listener, coroutineScope, lazy, null), 3, null);
    }

    /* JADX INFO: renamed from: com.unity3d.services.UnityAdsSDK$getToken$2, reason: invalid class name */
    /* JADX INFO: compiled from: UnityAdsSDK.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.unity3d.services.UnityAdsSDK$getToken$2", f = "UnityAdsSDK.kt", i = {}, l = {118}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Lazy<GetAsyncHeaderBiddingToken> $getAsyncHeaderBiddingToken$delegate;
        final /* synthetic */ CoroutineScope $getTokenScope;
        final /* synthetic */ IUnityAdsTokenListener $listener;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(IUnityAdsTokenListener iUnityAdsTokenListener, CoroutineScope coroutineScope, Lazy<? extends GetAsyncHeaderBiddingToken> lazy, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$listener = iUnityAdsTokenListener;
            this.$getTokenScope = coroutineScope;
            this.$getAsyncHeaderBiddingToken$delegate = lazy;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$listener, this.$getTokenScope, this.$getAsyncHeaderBiddingToken$delegate, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (UnityAdsSDK.getToken$lambda$7(this.$getAsyncHeaderBiddingToken$delegate).invoke(this.$listener, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            CoroutineScopeKt.cancel$default(this.$getTokenScope, null, 1, null);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:35:0x0128  */
    /* JADX WARN: Code duplicated, block: B:36:0x012b  */
    /* JADX WARN: Code duplicated, block: B:39:0x0157  */
    /* JADX WARN: Code duplicated, block: B:42:0x0167  */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [T, java.lang.String] */
    public final Object fetchToken(String str, Continuation<? super String> continuation) {
        AnonymousClass1 anonymousClass1;
        Lazy lazy;
        Lazy lazy2;
        long jM2066markNowz9LOYto;
        Ref.ObjectRef objectRef;
        Ref.ObjectRef objectRef2;
        long j;
        Lazy lazy3;
        Lazy lazy4;
        String str2;
        String str3;
        Map mapCreateMapBuilder;
        String str4 = str;
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
        Object objInvoke = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objInvoke);
            final UnityAdsSDK unityAdsSDK = this;
            final String str5 = "";
            Lazy lazy5 = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<GetHeaderBiddingToken>() { // from class: com.unity3d.services.UnityAdsSDK$fetchToken$$inlined$inject$default$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v3, types: [com.unity3d.ads.core.domain.GetHeaderBiddingToken, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                public final GetHeaderBiddingToken invoke() {
                    IServiceComponent iServiceComponent = unityAdsSDK;
                    return iServiceComponent.getServiceProvider().getRegistry().getService(str5, Reflection.getOrCreateKotlinClass(GetHeaderBiddingToken.class));
                }
            });
            lazy = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<GetInitializationState>() { // from class: com.unity3d.services.UnityAdsSDK$fetchToken$$inlined$inject$default$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v3, types: [com.unity3d.ads.core.domain.GetInitializationState, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                public final GetInitializationState invoke() {
                    IServiceComponent iServiceComponent = unityAdsSDK;
                    return iServiceComponent.getServiceProvider().getRegistry().getService(str5, Reflection.getOrCreateKotlinClass(GetInitializationState.class));
                }
            });
            lazy2 = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<SendDiagnosticEvent>() { // from class: com.unity3d.services.UnityAdsSDK$fetchToken$$inlined$inject$default$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v3, types: [com.unity3d.ads.core.domain.SendDiagnosticEvent, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                public final SendDiagnosticEvent invoke() {
                    IServiceComponent iServiceComponent = unityAdsSDK;
                    return iServiceComponent.getServiceProvider().getRegistry().getService(str5, Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class));
                }
            });
            jM2066markNowz9LOYto = TimeSource.Monotonic.INSTANCE.m2066markNowz9LOYto();
            SendDiagnosticEvent.DefaultImpls.invoke$default(fetchToken$lambda$10(lazy2), "native_gateway_token_started", null, MapsKt.mapOf(TuplesKt.to("sync", str4), TuplesKt.to("state", fetchToken$lambda$9(lazy).invoke().toString())), null, null, 26, null);
            Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
            objectRef = new Ref.ObjectRef();
            if (fetchToken$lambda$9(lazy).invoke() != InitializationState.INITIALIZED) {
                objectRef3.element = "not_initialized";
                objectRef2 = objectRef3;
                str2 = null;
            } else {
                try {
                    GetHeaderBiddingToken getHeaderBiddingTokenFetchToken$lambda$8 = fetchToken$lambda$8(lazy5);
                    anonymousClass1.L$0 = str4;
                    anonymousClass1.L$1 = lazy;
                    anonymousClass1.L$2 = lazy2;
                    anonymousClass1.L$3 = objectRef3;
                    anonymousClass1.L$4 = objectRef;
                    anonymousClass1.J$0 = jM2066markNowz9LOYto;
                    anonymousClass1.label = 1;
                    objInvoke = getHeaderBiddingTokenFetchToken$lambda$8.invoke(anonymousClass1);
                    if (objInvoke == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    objectRef2 = objectRef3;
                    j = jM2066markNowz9LOYto;
                    lazy3 = lazy;
                    lazy4 = lazy2;
                    str2 = (String) objInvoke;
                    jM2066markNowz9LOYto = j;
                    Lazy lazy6 = lazy3;
                    lazy2 = lazy4;
                    lazy = lazy6;
                } catch (Exception e) {
                    e = e;
                    objectRef2 = objectRef3;
                    j = jM2066markNowz9LOYto;
                    lazy3 = lazy;
                    lazy4 = lazy2;
                    objectRef2.element = "uncaught_exception";
                    objectRef.element = ExceptionExtensionsKt.retrieveUnityCrashValue(e);
                    jM2066markNowz9LOYto = j;
                    str2 = null;
                    Lazy lazy7 = lazy3;
                    lazy2 = lazy4;
                    lazy = lazy7;
                    SendDiagnosticEvent sendDiagnosticEventFetchToken$lambda$10 = fetchToken$lambda$10(lazy2);
                    if (str2 == null) {
                        str3 = "native_gateway_token_failure_time";
                    } else {
                        str3 = "native_gateway_token_success_time";
                    }
                    String str6 = str3;
                    Double dBoxDouble = Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m2067boximpl(jM2066markNowz9LOYto)));
                    mapCreateMapBuilder = MapsKt.createMapBuilder();
                    mapCreateMapBuilder.put("sync", str4);
                    mapCreateMapBuilder.put("state", fetchToken$lambda$9(lazy).invoke().toString());
                    if (((String) objectRef2.element) != null) {
                    }
                    if (((String) objectRef.element) != null) {
                        mapCreateMapBuilder.put("reason_debug", objectRef.element);
                    }
                    Unit unit = Unit.INSTANCE;
                    SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEventFetchToken$lambda$10, str6, dBoxDouble, MapsKt.build(mapCreateMapBuilder), null, null, 24, null);
                    return str2;
                }
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            j = anonymousClass1.J$0;
            Ref.ObjectRef objectRef4 = (Ref.ObjectRef) anonymousClass1.L$4;
            objectRef2 = (Ref.ObjectRef) anonymousClass1.L$3;
            lazy4 = (Lazy) anonymousClass1.L$2;
            lazy3 = (Lazy) anonymousClass1.L$1;
            String str7 = (String) anonymousClass1.L$0;
            try {
                ResultKt.throwOnFailure(objInvoke);
                objectRef = objectRef4;
                str4 = str7;
                try {
                    str2 = (String) objInvoke;
                    jM2066markNowz9LOYto = j;
                } catch (Exception e2) {
                    e = e2;
                    objectRef2.element = "uncaught_exception";
                    objectRef.element = ExceptionExtensionsKt.retrieveUnityCrashValue(e);
                    jM2066markNowz9LOYto = j;
                    str2 = null;
                }
            } catch (Exception e3) {
                e = e3;
                objectRef = objectRef4;
                str4 = str7;
                objectRef2.element = "uncaught_exception";
                objectRef.element = ExceptionExtensionsKt.retrieveUnityCrashValue(e);
                jM2066markNowz9LOYto = j;
                str2 = null;
                Lazy lazy8 = lazy3;
                lazy2 = lazy4;
                lazy = lazy8;
                SendDiagnosticEvent sendDiagnosticEventFetchToken$lambda$11 = fetchToken$lambda$10(lazy2);
                if (str2 == null) {
                    str3 = "native_gateway_token_failure_time";
                } else {
                    str3 = "native_gateway_token_success_time";
                }
                String str8 = str3;
                Double dBoxDouble2 = Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m2067boximpl(jM2066markNowz9LOYto)));
                mapCreateMapBuilder = MapsKt.createMapBuilder();
                mapCreateMapBuilder.put("sync", str4);
                mapCreateMapBuilder.put("state", fetchToken$lambda$9(lazy).invoke().toString());
                if (((String) objectRef2.element) != null) {
                }
                if (((String) objectRef.element) != null) {
                    mapCreateMapBuilder.put("reason_debug", objectRef.element);
                }
                Unit unit2 = Unit.INSTANCE;
                SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEventFetchToken$lambda$11, str8, dBoxDouble2, MapsKt.build(mapCreateMapBuilder), null, null, 24, null);
                return str2;
            }
            Lazy lazy9 = lazy3;
            lazy2 = lazy4;
            lazy = lazy9;
        }
        SendDiagnosticEvent sendDiagnosticEventFetchToken$lambda$12 = fetchToken$lambda$10(lazy2);
        if (str2 == null) {
            str3 = "native_gateway_token_failure_time";
        } else {
            str3 = "native_gateway_token_success_time";
        }
        String str9 = str3;
        Double dBoxDouble3 = Boxing.boxDouble(TimeExtensionsKt.elapsedMillis(TimeSource.Monotonic.ValueTimeMark.m2067boximpl(jM2066markNowz9LOYto)));
        mapCreateMapBuilder = MapsKt.createMapBuilder();
        mapCreateMapBuilder.put("sync", str4);
        mapCreateMapBuilder.put("state", fetchToken$lambda$9(lazy).invoke().toString());
        if (((String) objectRef2.element) != null) {
        }
        if (((String) objectRef.element) != null) {
            mapCreateMapBuilder.put("reason_debug", objectRef.element);
        }
        Unit unit3 = Unit.INSTANCE;
        SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEventFetchToken$lambda$12, str9, dBoxDouble3, MapsKt.build(mapCreateMapBuilder), null, null, 24, null);
        return str2;
    }

    private static final GetHeaderBiddingToken fetchToken$lambda$8(Lazy<? extends GetHeaderBiddingToken> lazy) {
        return lazy.getValue();
    }

    private static final GetInitializationState fetchToken$lambda$9(Lazy<? extends GetInitializationState> lazy) {
        return lazy.getValue();
    }

    private static final SendDiagnosticEvent fetchToken$lambda$10(Lazy<? extends SendDiagnosticEvent> lazy) {
        return lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GetAdObject finishOMIDSession$lambda$14(Lazy<? extends GetAdObject> lazy) {
        return lazy.getValue();
    }

    public final Job finishOMIDSession(String opportunityId) {
        Intrinsics.checkNotNullParameter(opportunityId, "opportunityId");
        final UnityAdsSDK unityAdsSDK = this;
        final String str = "";
        Lazy lazy = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<GetAdObject>() { // from class: com.unity3d.services.UnityAdsSDK$finishOMIDSession$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [com.unity3d.ads.core.domain.GetAdObject, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final GetAdObject invoke() {
                IServiceComponent iServiceComponent = unityAdsSDK;
                return iServiceComponent.getServiceProvider().getRegistry().getService(str, Reflection.getOrCreateKotlinClass(GetAdObject.class));
            }
        });
        Lazy lazy2 = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<OmFinishSession>() { // from class: com.unity3d.services.UnityAdsSDK$finishOMIDSession$$inlined$inject$default$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [com.unity3d.ads.core.domain.om.OmFinishSession, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final OmFinishSession invoke() {
                IServiceComponent iServiceComponent = unityAdsSDK;
                return iServiceComponent.getServiceProvider().getRegistry().getService(str, Reflection.getOrCreateKotlinClass(OmFinishSession.class));
            }
        });
        Lazy lazy3 = LazyKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new Function0<AlternativeFlowReader>() { // from class: com.unity3d.services.UnityAdsSDK$finishOMIDSession$$inlined$inject$default$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [com.unity3d.ads.core.configuration.AlternativeFlowReader, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final AlternativeFlowReader invoke() {
                IServiceComponent iServiceComponent = unityAdsSDK;
                return iServiceComponent.getServiceProvider().getRegistry().getService(str, Reflection.getOrCreateKotlinClass(AlternativeFlowReader.class));
            }
        });
        CoroutineScope coroutineScope = (CoroutineScope) unityAdsSDK.getServiceProvider().getRegistry().getService(ServiceProvider.NAMED_OMID_SCOPE, Reflection.getOrCreateKotlinClass(CoroutineScope.class));
        return BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new C04271(opportunityId, coroutineScope, lazy3, lazy, lazy2, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final OmFinishSession finishOMIDSession$lambda$15(Lazy<? extends OmFinishSession> lazy) {
        return lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AlternativeFlowReader finishOMIDSession$lambda$16(Lazy<AlternativeFlowReader> lazy) {
        return lazy.getValue();
    }

    /* JADX INFO: renamed from: com.unity3d.services.UnityAdsSDK$finishOMIDSession$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: UnityAdsSDK.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.unity3d.services.UnityAdsSDK$finishOMIDSession$1", f = "UnityAdsSDK.kt", i = {}, l = {171, 172}, m = "invokeSuspend", n = {}, s = {})
    static final class C04271 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Lazy<AlternativeFlowReader> $alternativeFlowReader$delegate;
        final /* synthetic */ Lazy<GetAdObject> $getAdObject$delegate;
        final /* synthetic */ Lazy<OmFinishSession> $omFinishSession$delegate;
        final /* synthetic */ CoroutineScope $omidScope;
        final /* synthetic */ String $opportunityId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        C04271(String str, CoroutineScope coroutineScope, Lazy<AlternativeFlowReader> lazy, Lazy<? extends GetAdObject> lazy2, Lazy<? extends OmFinishSession> lazy3, Continuation<? super C04271> continuation) {
            super(2, continuation);
            this.$opportunityId = str;
            this.$omidScope = coroutineScope;
            this.$alternativeFlowReader$delegate = lazy;
            this.$getAdObject$delegate = lazy2;
            this.$omFinishSession$delegate = lazy3;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C04271(this.$opportunityId, this.$omidScope, this.$alternativeFlowReader$delegate, this.$getAdObject$delegate, this.$omFinishSession$delegate, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C04271) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:17:0x0045  */
        /* JADX WARN: Code duplicated, block: B:19:0x0053 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            AdObject adObject;
            OmFinishSession omFinishSessionFinishOMIDSession$lambda$15;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                if (UnityAdsSDK.finishOMIDSession$lambda$16(this.$alternativeFlowReader$delegate).invoke()) {
                    this.label = 1;
                    obj = UnityAdsSDK.finishOMIDSession$lambda$14(this.$getAdObject$delegate).invoke(this.$opportunityId, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    adObject = (AdObject) obj;
                    if (adObject != null) {
                        omFinishSessionFinishOMIDSession$lambda$15 = UnityAdsSDK.finishOMIDSession$lambda$15(this.$omFinishSession$delegate);
                        this.label = 2;
                        if (omFinishSessionFinishOMIDSession$lambda$15.invoke(adObject, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                }
            } else if (i == 1) {
                ResultKt.throwOnFailure(obj);
                adObject = (AdObject) obj;
                if (adObject != null) {
                    omFinishSessionFinishOMIDSession$lambda$15 = UnityAdsSDK.finishOMIDSession$lambda$15(this.$omFinishSession$delegate);
                    this.label = 2;
                    if (omFinishSessionFinishOMIDSession$lambda$15.invoke(adObject, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            CoroutineScopeKt.cancel$default(this.$omidScope, null, 1, null);
            return Unit.INSTANCE;
        }
    }
}
