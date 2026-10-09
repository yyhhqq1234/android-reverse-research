package com.unity3d.ads.adplayer;

import android.view.InputEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import com.google.android.gms.ads.RequestConfiguration;
import com.unity3d.ads.adplayer.model.ErrorReason;
import com.unity3d.ads.adplayer.model.WebViewBridgeInterface;
import com.unity3d.ads.adplayer.model.WebViewClientError;
import com.unity3d.ads.core.domain.SendWebViewClientErrorDiagnostics;
import java.util.List;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.NonCancellable;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* JADX INFO: compiled from: AndroidWebViewContainer.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\b\u0007\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\f¢\u0006\u0002\u0010\rJ!\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\"J\u0011\u0010#\u001a\u00020\u001dH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010$J\u0019\u0010%\u001a\u00020\u001d2\u0006\u0010&\u001a\u00020!H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010'J\u0019\u0010(\u001a\u00020\u001d2\u0006\u0010)\u001a\u00020!H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010'J\u0011\u0010*\u001a\u00020\u001dH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010$R\u0019\u0010\u000e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u0014X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006+"}, d2 = {"Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;", "Lcom/unity3d/ads/adplayer/WebViewContainer;", "webView", "Landroid/webkit/WebView;", "webViewClient", "Lcom/unity3d/ads/adplayer/AndroidWebViewClient;", "sendWebViewClientErrorDiagnostics", "Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;", "mainDispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "defaultDispatcher", "adPlayerScope", "Lkotlinx/coroutines/CoroutineScope;", "(Landroid/webkit/WebView;Lcom/unity3d/ads/adplayer/AndroidWebViewClient;Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineDispatcher;Lkotlinx/coroutines/CoroutineScope;)V", "_lastInputEvent", "Lkotlinx/coroutines/flow/MutableStateFlow;", "Landroid/view/InputEvent;", "get_lastInputEvent", "()Lkotlinx/coroutines/flow/MutableStateFlow;", "lastInputEvent", "Lkotlinx/coroutines/flow/StateFlow;", "getLastInputEvent", "()Lkotlinx/coroutines/flow/StateFlow;", "scope", "getScope", "()Lkotlinx/coroutines/CoroutineScope;", "getWebView", "()Landroid/webkit/WebView;", "addJavascriptInterface", "", "webViewBridgeInterface", "Lcom/unity3d/ads/adplayer/WebViewBridge;", "name", "", "(Lcom/unity3d/ads/adplayer/WebViewBridge;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "destroy", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "evaluateJavascript", "script", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "loadUrl", "url", "onRenderProcessGone", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class AndroidWebViewContainer implements WebViewContainer {
    private final MutableStateFlow<InputEvent> _lastInputEvent;
    private final StateFlow<InputEvent> lastInputEvent;
    private final CoroutineScope scope;
    private final SendWebViewClientErrorDiagnostics sendWebViewClientErrorDiagnostics;
    private final WebView webView;
    private final AndroidWebViewClient webViewClient;

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.AndroidWebViewContainer$addJavascriptInterface$1, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidWebViewContainer.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.adplayer.AndroidWebViewContainer", f = "AndroidWebViewContainer.kt", i = {}, l = {91}, m = "addJavascriptInterface", n = {}, s = {})
    static final class AnonymousClass1 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidWebViewContainer.this.addJavascriptInterface(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.AndroidWebViewContainer$destroy$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidWebViewContainer.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.adplayer.AndroidWebViewContainer", f = "AndroidWebViewContainer.kt", i = {0}, l = {109}, m = "destroy", n = {"this"}, s = {"L$0"})
    static final class C03381 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C03381(Continuation<? super C03381> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidWebViewContainer.this.destroy(this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.AndroidWebViewContainer$evaluateJavascript$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidWebViewContainer.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.adplayer.AndroidWebViewContainer", f = "AndroidWebViewContainer.kt", i = {}, l = {81}, m = "evaluateJavascript", n = {}, s = {})
    static final class C03401 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C03401(Continuation<? super C03401> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidWebViewContainer.this.evaluateJavascript(null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.AndroidWebViewContainer$loadUrl$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidWebViewContainer.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.adplayer.AndroidWebViewContainer", f = "AndroidWebViewContainer.kt", i = {0, 1, 2, 2}, l = {67, 71, 73}, m = "loadUrl", n = {"this", "this", "this", "loadResult"}, s = {"L$0", "L$0", "L$0", "L$1"})
    static final class C03421 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C03421(Continuation<? super C03421> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidWebViewContainer.this.loadUrl(null, this);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.AndroidWebViewContainer$onRenderProcessGone$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidWebViewContainer.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.adplayer.AndroidWebViewContainer", f = "AndroidWebViewContainer.kt", i = {0}, l = {55}, m = "onRenderProcessGone", n = {"this"}, s = {"L$0"})
    static final class C03441 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C03441(Continuation<? super C03441> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return AndroidWebViewContainer.this.onRenderProcessGone(this);
        }
    }

    public AndroidWebViewContainer(WebView webView, AndroidWebViewClient webViewClient, SendWebViewClientErrorDiagnostics sendWebViewClientErrorDiagnostics, CoroutineDispatcher mainDispatcher, CoroutineDispatcher defaultDispatcher, CoroutineScope adPlayerScope) {
        Intrinsics.checkNotNullParameter(webView, "webView");
        Intrinsics.checkNotNullParameter(webViewClient, "webViewClient");
        Intrinsics.checkNotNullParameter(sendWebViewClientErrorDiagnostics, "sendWebViewClientErrorDiagnostics");
        Intrinsics.checkNotNullParameter(mainDispatcher, "mainDispatcher");
        Intrinsics.checkNotNullParameter(defaultDispatcher, "defaultDispatcher");
        Intrinsics.checkNotNullParameter(adPlayerScope, "adPlayerScope");
        this.webView = webView;
        this.webViewClient = webViewClient;
        this.sendWebViewClientErrorDiagnostics = sendWebViewClientErrorDiagnostics;
        CoroutineScope coroutineScopePlus = CoroutineScopeKt.plus(CoroutineScopeKt.plus(adPlayerScope, mainDispatcher), new CoroutineName("AndroidWebViewContainer"));
        this.scope = coroutineScopePlus;
        MutableStateFlow<InputEvent> MutableStateFlow = StateFlowKt.MutableStateFlow(null);
        this._lastInputEvent = MutableStateFlow;
        this.lastInputEvent = FlowKt.asStateFlow(MutableStateFlow);
        final StateFlow<Boolean> stateFlowIsRenderProcessGone = webViewClient.isRenderProcessGone();
        FlowKt.launchIn(FlowKt.onEach(new Flow<Boolean>() { // from class: com.unity3d.ads.adplayer.AndroidWebViewContainer$special$$inlined$filter$1
            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector<? super Boolean> flowCollector, Continuation continuation) {
                Object objCollect = stateFlowIsRenderProcessGone.collect(new AnonymousClass2(flowCollector), continuation);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: com.unity3d.ads.adplayer.AndroidWebViewContainer$special$$inlined$filter$1$2, reason: invalid class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, d2 = {"<anonymous>", "", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "R", "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$filter$$inlined$unsafeTransform$1$2"}, k = 3, mv = {1, 8, 0}, xi = 48)
            public static final class AnonymousClass2<T> implements FlowCollector {
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: com.unity3d.ads.adplayer.AndroidWebViewContainer$special$$inlined$filter$1$2$1, reason: invalid class name */
                /* JADX INFO: compiled from: Emitters.kt */
                @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
                @DebugMetadata(c = "com.unity3d.ads.adplayer.AndroidWebViewContainer$special$$inlined$filter$1$2", f = "AndroidWebViewContainer.kt", i = {}, l = {223}, m = "emit", n = {}, s = {})
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    Object L$1;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(FlowCollector flowCollector) {
                    this.$this_unsafeFlow = flowCollector;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0014  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object emit(Object obj, Continuation continuation) {
                    AnonymousClass1 anonymousClass1;
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
                    Object obj2 = anonymousClass1.result;
                    Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                    int i = anonymousClass1.label;
                    if (i == 0) {
                        ResultKt.throwOnFailure(obj2);
                        FlowCollector flowCollector = this.$this_unsafeFlow;
                        if (((Boolean) obj).booleanValue()) {
                            anonymousClass1.label = 1;
                            if (flowCollector.emit(obj, anonymousClass1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        }
                    } else {
                        if (i != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj2);
                    }
                    return Unit.INSTANCE;
                }
            }
        }, new AnonymousClass2(null)), CoroutineScopeKt.plus(coroutineScopePlus, defaultDispatcher));
        webView.setOnTouchListener(new View.OnTouchListener() { // from class: com.unity3d.ads.adplayer.AndroidWebViewContainer$$ExternalSyntheticLambda0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return AndroidWebViewContainer._init_$lambda$1(this.f$0, view, motionEvent);
            }
        });
    }

    public final WebView getWebView() {
        return this.webView;
    }

    public final CoroutineScope getScope() {
        return this.scope;
    }

    public final MutableStateFlow<InputEvent> get_lastInputEvent() {
        return this._lastInputEvent;
    }

    @Override // com.unity3d.ads.adplayer.WebViewContainer
    public StateFlow<InputEvent> getLastInputEvent() {
        return this.lastInputEvent;
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.AndroidWebViewContainer$2, reason: invalid class name */
    /* JADX INFO: compiled from: AndroidWebViewContainer.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "it", "", "<anonymous>"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.unity3d.ads.adplayer.AndroidWebViewContainer$2", f = "AndroidWebViewContainer.kt", i = {}, l = {37}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<Boolean, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidWebViewContainer.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(Boolean bool, Continuation<? super Unit> continuation) {
            return invoke(bool.booleanValue(), continuation);
        }

        public final Object invoke(boolean z, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(Boolean.valueOf(z), continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (AndroidWebViewContainer.this.onRenderProcessGone(this) == coroutine_suspended) {
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
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean _init_$lambda$1(AndroidWebViewContainer this$0, View view, MotionEvent motionEvent) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0 && actionMasked != 1 && actionMasked != 5 && actionMasked != 6) {
            return false;
        }
        this$0._lastInputEvent.setValue(motionEvent);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object onRenderProcessGone(Continuation<? super Unit> continuation) {
        C03441 c03441;
        AndroidWebViewContainer androidWebViewContainer;
        if (continuation instanceof C03441) {
            c03441 = (C03441) continuation;
            if ((c03441.label & Integer.MIN_VALUE) != 0) {
                c03441.label -= Integer.MIN_VALUE;
            } else {
                c03441 = new C03441(continuation);
            }
        } else {
            c03441 = new C03441(continuation);
        }
        Object obj = c03441.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c03441.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            c03441.L$0 = this;
            c03441.label = 1;
            if (destroy(c03441) == coroutine_suspended) {
                return coroutine_suspended;
            }
            androidWebViewContainer = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            androidWebViewContainer = (AndroidWebViewContainer) c03441.L$0;
            ResultKt.throwOnFailure(obj);
        }
        androidWebViewContainer.sendWebViewClientErrorDiagnostics.invoke(CollectionsKt.listOf(new WebViewClientError("Render process gone", ErrorReason.REASON_WEBVIEW_RENDER_PROCESS_GONE, null, 4, null)));
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.AndroidWebViewContainer$loadUrl$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidWebViewContainer.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.unity3d.ads.adplayer.AndroidWebViewContainer$loadUrl$2", f = "AndroidWebViewContainer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C03432 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $url;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03432(String str, Continuation<? super C03432> continuation) {
            super(2, continuation);
            this.$url = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidWebViewContainer.this.new C03432(this.$url, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C03432) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            AndroidWebViewContainer.this.getWebView().loadUrl(this.$url);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Code duplicated, block: B:27:0x008a  */
    /* JADX WARN: Code duplicated, block: B:29:0x0096 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:30:0x0097  */
    /* JADX WARN: Code duplicated, block: B:33:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.unity3d.ads.adplayer.WebViewContainer
    public Object loadUrl(String str, Continuation<? super Unit> continuation) throws LoadWebViewError {
        C03421 c03421;
        AndroidWebViewContainer androidWebViewContainer;
        List<WebViewClientError> list;
        AndroidWebViewContainer androidWebViewContainer2;
        List<WebViewClientError> list2;
        if (continuation instanceof C03421) {
            c03421 = (C03421) continuation;
            if ((c03421.label & Integer.MIN_VALUE) != 0) {
                c03421.label -= Integer.MIN_VALUE;
            } else {
                c03421 = new C03421(continuation);
            }
        } else {
            c03421 = new C03421(continuation);
        }
        Object objAwait = c03421.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c03421.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objAwait);
            CoroutineContext coroutineContext = this.scope.getCoroutineContext();
            C03432 c03432 = new C03432(str, null);
            c03421.L$0 = this;
            c03421.label = 1;
            if (BuildersKt.withContext(coroutineContext, c03432, c03421) == coroutine_suspended) {
                return coroutine_suspended;
            }
            androidWebViewContainer = this;
        } else {
            if (i == 1) {
                androidWebViewContainer = (AndroidWebViewContainer) c03421.L$0;
                ResultKt.throwOnFailure(objAwait);
            } else if (i == 2) {
                androidWebViewContainer = (AndroidWebViewContainer) c03421.L$0;
                ResultKt.throwOnFailure(objAwait);
                list = (List) objAwait;
                if (!list.isEmpty()) {
                    c03421.L$0 = androidWebViewContainer;
                    c03421.L$1 = list;
                    c03421.label = 3;
                    if (androidWebViewContainer.destroy(c03421) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    androidWebViewContainer2 = androidWebViewContainer;
                    list2 = list;
                } else {
                    return Unit.INSTANCE;
                }
            } else {
                if (i != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                list2 = (List) c03421.L$1;
                androidWebViewContainer2 = (AndroidWebViewContainer) c03421.L$0;
                ResultKt.throwOnFailure(objAwait);
            }
            androidWebViewContainer2.sendWebViewClientErrorDiagnostics.invoke(list2);
            throw new LoadWebViewError(list2);
        }
        Deferred<List<WebViewClientError>> onLoadFinished = androidWebViewContainer.webViewClient.getOnLoadFinished();
        c03421.L$0 = androidWebViewContainer;
        c03421.label = 2;
        objAwait = onLoadFinished.await(c03421);
        if (objAwait == coroutine_suspended) {
            return coroutine_suspended;
        }
        list = (List) objAwait;
        if (!list.isEmpty()) {
            c03421.L$0 = androidWebViewContainer;
            c03421.L$1 = list;
            c03421.label = 3;
            if (androidWebViewContainer.destroy(c03421) == coroutine_suspended) {
                return coroutine_suspended;
            }
            androidWebViewContainer2 = androidWebViewContainer;
            list2 = list;
            androidWebViewContainer2.sendWebViewClientErrorDiagnostics.invoke(list2);
            throw new LoadWebViewError(list2);
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.unity3d.ads.adplayer.WebViewContainer
    public Object evaluateJavascript(String str, Continuation<? super Unit> continuation) {
        C03401 c03401;
        if (continuation instanceof C03401) {
            c03401 = (C03401) continuation;
            if ((c03401.label & Integer.MIN_VALUE) != 0) {
                c03401.label -= Integer.MIN_VALUE;
            } else {
                c03401 = new C03401(continuation);
            }
        } else {
            c03401 = new C03401(continuation);
        }
        Object obj = c03401.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c03401.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineContext coroutineContext = this.scope.getCoroutineContext();
                C03412 c03412 = new C03412(str, null);
                c03401.label = 1;
                if (BuildersKt.withContext(coroutineContext, c03412, c03401) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
        } catch (CancellationException unused) {
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.AndroidWebViewContainer$evaluateJavascript$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidWebViewContainer.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.unity3d.ads.adplayer.AndroidWebViewContainer$evaluateJavascript$2", f = "AndroidWebViewContainer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C03412 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $script;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03412(String str, Continuation<? super C03412> continuation) {
            super(2, continuation);
            this.$script = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidWebViewContainer.this.new C03412(this.$script, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C03412) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            AndroidWebViewContainer.this.getWebView().evaluateJavascript("javascript:" + this.$script, null);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.unity3d.ads.adplayer.WebViewContainer
    public Object addJavascriptInterface(WebViewBridge webViewBridge, String str, Continuation<? super Unit> continuation) {
        AnonymousClass1 anonymousClass1;
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
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                CoroutineContext coroutineContext = this.scope.getCoroutineContext();
                C03372 c03372 = new C03372(str, webViewBridge, null);
                anonymousClass1.label = 1;
                if (BuildersKt.withContext(coroutineContext, c03372, anonymousClass1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
        } catch (CancellationException unused) {
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.AndroidWebViewContainer$addJavascriptInterface$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidWebViewContainer.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.unity3d.ads.adplayer.AndroidWebViewContainer$addJavascriptInterface$2", f = "AndroidWebViewContainer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C03372 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $name;
        final /* synthetic */ WebViewBridge $webViewBridgeInterface;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03372(String str, WebViewBridge webViewBridge, Continuation<? super C03372> continuation) {
            super(2, continuation);
            this.$name = str;
            this.$webViewBridgeInterface = webViewBridge;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidWebViewContainer.this.new C03372(this.$name, this.$webViewBridgeInterface, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C03372) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            final WebViewBridge webViewBridge = this.$webViewBridgeInterface;
            AndroidWebViewContainer.this.getWebView().addJavascriptInterface(new WebViewBridgeInterface() { // from class: com.unity3d.ads.adplayer.AndroidWebViewContainer$addJavascriptInterface$2$wrapper$1
                @Override // com.unity3d.ads.adplayer.model.WebViewBridgeInterface
                @JavascriptInterface
                public void handleInvocation(String message) {
                    Intrinsics.checkNotNullParameter(message, "message");
                    webViewBridge.handleInvocation(message);
                }

                @Override // com.unity3d.ads.adplayer.model.WebViewBridgeInterface
                @JavascriptInterface
                public void handleCallback(String callbackId, String callbackStatus, String rawParameters) {
                    Intrinsics.checkNotNullParameter(callbackId, "callbackId");
                    Intrinsics.checkNotNullParameter(callbackStatus, "callbackStatus");
                    Intrinsics.checkNotNullParameter(rawParameters, "rawParameters");
                    webViewBridge.handleCallback(callbackId, callbackStatus, rawParameters);
                }
            }, this.$name);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.AndroidWebViewContainer$destroy$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: AndroidWebViewContainer.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.unity3d.ads.adplayer.AndroidWebViewContainer$destroy$2", f = "AndroidWebViewContainer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C03392 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C03392(Continuation<? super C03392> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return AndroidWebViewContainer.this.new C03392(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C03392) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            ViewParent parent = AndroidWebViewContainer.this.getWebView().getParent();
            ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
            if (viewGroup != null) {
                viewGroup.removeView(AndroidWebViewContainer.this.getWebView());
            }
            AndroidWebViewContainer.this.getWebView().destroy();
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.unity3d.ads.adplayer.WebViewContainer
    public Object destroy(Continuation<? super Unit> continuation) {
        C03381 c03381;
        AndroidWebViewContainer androidWebViewContainer;
        if (continuation instanceof C03381) {
            c03381 = (C03381) continuation;
            if ((c03381.label & Integer.MIN_VALUE) != 0) {
                c03381.label -= Integer.MIN_VALUE;
            } else {
                c03381 = new C03381(continuation);
            }
        } else {
            c03381 = new C03381(continuation);
        }
        Object obj = c03381.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c03381.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            CoroutineContext coroutineContextPlus = this.scope.getCoroutineContext().plus(NonCancellable.INSTANCE);
            C03392 c03392 = new C03392(null);
            c03381.L$0 = this;
            c03381.label = 1;
            if (BuildersKt.withContext(coroutineContextPlus, c03392, c03381) == coroutine_suspended) {
                return coroutine_suspended;
            }
            androidWebViewContainer = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            androidWebViewContainer = (AndroidWebViewContainer) c03381.L$0;
            ResultKt.throwOnFailure(obj);
        }
        CoroutineScopeKt.cancel$default(androidWebViewContainer.scope, null, 1, null);
        return Unit.INSTANCE;
    }
}
