package com.unity3d.ads.adplayer;

import androidx.core.app.NotificationCompat;
import com.onesignal.core.internal.database.impl.OneSignalDbContract;
import com.unity3d.ads.adplayer.model.WebViewEvent;
import com.unity3d.ads.core.extensions.JSONArrayExtensionsKt;
import com.unity3d.services.core.log.DeviceLog;
import java.util.Iterator;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineName;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableSharedFlow;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.SharedFlow;
import kotlinx.coroutines.flow.SharedFlowKt;
import kotlinx.coroutines.flow.StateFlowKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.y8;

/* JADX INFO: compiled from: CommonWebViewBridge.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ!\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u0010H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010 J \u0010!\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u0010H\u0016J\u0010\u0010%\u001a\u00020\u001c2\u0006\u0010&\u001a\u00020\u0010H\u0016J;\u0010'\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\u0006\u0010(\u001a\u00020\u00102\u0006\u0010)\u001a\u00020\u00102\u0012\u0010*\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00130\u0012\"\u00020\u0013H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010+J5\u0010,\u001a\u00020\u001c2\u0006\u0010\"\u001a\u00020\u00102\u0006\u0010-\u001a\u00020\u00102\u0012\u0010*\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00130\u0012\"\u00020\u0013H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010+J\u0019\u0010.\u001a\u00020\u001c2\u0006\u0010/\u001a\u000200H\u0096@ø\u0001\u0000¢\u0006\u0002\u00101R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R2\u0010\f\u001a&\u0012\"\u0012 \u0012\u001c\u0012\u001a\u0012\u0004\u0012\u00020\u0010\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00130\u00120\u00110\u000f0\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0015X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\u0018\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u00062"}, d2 = {"Lcom/unity3d/ads/adplayer/CommonWebViewBridge;", "Lcom/unity3d/ads/adplayer/WebViewBridge;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "webViewContainer", "Lcom/unity3d/ads/adplayer/WebViewContainer;", "adPlayerScope", "Lkotlinx/coroutines/CoroutineScope;", "(Lkotlinx/coroutines/CoroutineDispatcher;Lcom/unity3d/ads/adplayer/WebViewContainer;Lkotlinx/coroutines/CoroutineScope;)V", "_onInvocation", "Lkotlinx/coroutines/flow/MutableSharedFlow;", "Lcom/unity3d/ads/adplayer/Invocation;", "callbacks", "Lkotlinx/coroutines/flow/MutableStateFlow;", "", "Lkotlin/Pair;", "", "Lkotlinx/coroutines/CompletableDeferred;", "", "", "onInvocation", "Lkotlinx/coroutines/flow/SharedFlow;", "getOnInvocation", "()Lkotlinx/coroutines/flow/SharedFlow;", "scope", "getScope", "()Lkotlinx/coroutines/CoroutineScope;", "execute", "", "handlerType", "Lcom/unity3d/ads/adplayer/HandlerType;", "arguments", "(Lcom/unity3d/ads/adplayer/HandlerType;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "handleCallback", "callbackId", "callbackStatus", "rawParameters", "handleInvocation", OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE, "request", "className", "method", "params", "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "respond", "status", "sendEvent", NotificationCompat.CATEGORY_EVENT, "Lcom/unity3d/ads/adplayer/model/WebViewEvent;", "(Lcom/unity3d/ads/adplayer/model/WebViewEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class CommonWebViewBridge implements WebViewBridge {
    private final MutableSharedFlow<Invocation> _onInvocation;
    private final MutableStateFlow<Set<Pair<String, CompletableDeferred<Object[]>>>> callbacks;
    private final SharedFlow<Invocation> onInvocation;
    private final CoroutineScope scope;
    private final WebViewContainer webViewContainer;

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.CommonWebViewBridge$request$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CommonWebViewBridge.kt */
    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    @DebugMetadata(c = "com.unity3d.ads.adplayer.CommonWebViewBridge", f = "CommonWebViewBridge.kt", i = {0}, l = {61, 63}, m = "request", n = {"callback"}, s = {"L$0"})
    static final class C03461 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C03461(Continuation<? super C03461> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CommonWebViewBridge.this.request(null, null, null, this);
        }
    }

    public CommonWebViewBridge(CoroutineDispatcher dispatcher, WebViewContainer webViewContainer, CoroutineScope adPlayerScope) {
        Intrinsics.checkNotNullParameter(dispatcher, "dispatcher");
        Intrinsics.checkNotNullParameter(webViewContainer, "webViewContainer");
        Intrinsics.checkNotNullParameter(adPlayerScope, "adPlayerScope");
        this.webViewContainer = webViewContainer;
        CoroutineScope coroutineScopePlus = CoroutineScopeKt.plus(CoroutineScopeKt.plus(adPlayerScope, dispatcher), new CoroutineName("CommonWebViewBridge"));
        this.scope = coroutineScopePlus;
        this.callbacks = StateFlowKt.MutableStateFlow(SetsKt.emptySet());
        MutableSharedFlow<Invocation> mutableSharedFlowMutableSharedFlow$default = SharedFlowKt.MutableSharedFlow$default(0, 0, null, 7, null);
        this._onInvocation = mutableSharedFlowMutableSharedFlow$default;
        this.onInvocation = FlowKt.asSharedFlow(mutableSharedFlowMutableSharedFlow$default);
        BuildersKt__Builders_commonKt.launch$default(coroutineScopePlus, null, null, new AnonymousClass1(null), 3, null);
    }

    public final CoroutineScope getScope() {
        return this.scope;
    }

    @Override // com.unity3d.ads.adplayer.WebViewBridge
    public SharedFlow<Invocation> getOnInvocation() {
        return this.onInvocation;
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.CommonWebViewBridge$1, reason: invalid class name */
    /* JADX INFO: compiled from: CommonWebViewBridge.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.unity3d.ads.adplayer.CommonWebViewBridge$1", f = "CommonWebViewBridge.kt", i = {}, l = {28}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CommonWebViewBridge.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (CommonWebViewBridge.this.webViewContainer.addJavascriptInterface(CommonWebViewBridge.this, "webviewbridge", this) == coroutine_suspended) {
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
    public final Object execute(HandlerType handlerType, String str, Continuation<? super Unit> continuation) {
        Object objEvaluateJavascript = this.webViewContainer.evaluateJavascript("window.nativebridge." + handlerType.getJsPath() + '(' + str + ");", continuation);
        return objEvaluateJavascript == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objEvaluateJavascript : Unit.INSTANCE;
    }

    @Override // com.unity3d.ads.adplayer.WebViewBridge
    public Object sendEvent(WebViewEvent webViewEvent, Continuation<? super Unit> continuation) {
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(webViewEvent.getCategory());
        jSONArray.put(webViewEvent.getName());
        for (Object obj : webViewEvent.getParameters()) {
            jSONArray.put(obj);
        }
        HandlerType handlerType = HandlerType.EVENT;
        String string = jSONArray.toString();
        Intrinsics.checkNotNullExpressionValue(string, "arguments.toString()");
        Object objExecute = execute(handlerType, string, continuation);
        return objExecute == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objExecute : Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.unity3d.ads.adplayer.WebViewBridge
    public Object request(String str, String str2, Object[] objArr, Continuation<? super Object[]> continuation) {
        C03461 c03461;
        Set<Pair<String, CompletableDeferred<Object[]>>> value;
        CompletableDeferred completableDeferred;
        if (continuation instanceof C03461) {
            c03461 = (C03461) continuation;
            if ((c03461.label & Integer.MIN_VALUE) != 0) {
                c03461.label -= Integer.MIN_VALUE;
            } else {
                c03461 = new C03461(continuation);
            }
        } else {
            c03461 = new C03461(continuation);
        }
        Object objAwait = c03461.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c03461.label;
        if (i != 0) {
            if (i == 1) {
                completableDeferred = (CompletableDeferred) c03461.L$0;
                ResultKt.throwOnFailure(objAwait);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objAwait);
            }
        }
        ResultKt.throwOnFailure(objAwait);
        CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        String strValueOf = String.valueOf(completableDeferredCompletableDeferred$default.hashCode());
        MutableStateFlow<Set<Pair<String, CompletableDeferred<Object[]>>>> mutableStateFlow = this.callbacks;
        do {
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.compareAndSet(value, SetsKt.plus(value, TuplesKt.to(strValueOf, completableDeferredCompletableDeferred$default))));
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(str);
        jSONArray.put(str2);
        jSONArray.put(strValueOf);
        for (Object obj : objArr) {
            jSONArray.put(obj);
        }
        HandlerType handlerType = HandlerType.INVOCATION;
        String string = jSONArray.toString();
        Intrinsics.checkNotNullExpressionValue(string, "arguments.toString()");
        c03461.L$0 = completableDeferredCompletableDeferred$default;
        c03461.label = 1;
        if (execute(handlerType, string, c03461) == coroutine_suspended) {
            return coroutine_suspended;
        }
        completableDeferred = completableDeferredCompletableDeferred$default;
        c03461.L$0 = null;
        c03461.label = 2;
        objAwait = completableDeferred.await(c03461);
        return objAwait == coroutine_suspended ? coroutine_suspended : objAwait;
    }

    @Override // com.unity3d.ads.adplayer.WebViewBridge
    public void handleCallback(String callbackId, String callbackStatus, String rawParameters) {
        Object next;
        Set<Pair<String, CompletableDeferred<Object[]>>> value;
        Intrinsics.checkNotNullParameter(callbackId, "callbackId");
        Intrinsics.checkNotNullParameter(callbackStatus, "callbackStatus");
        Intrinsics.checkNotNullParameter(rawParameters, "rawParameters");
        Object[] typedArray = JSONArrayExtensionsKt.toTypedArray(new JSONArray(rawParameters));
        Iterator<T> it = this.callbacks.getValue().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!Intrinsics.areEqual((String) ((Pair) next).component1(), callbackId));
        Pair pair = (Pair) next;
        if (pair == null) {
            return;
        }
        CompletableDeferred completableDeferred = (CompletableDeferred) pair.component2();
        if (Intrinsics.areEqual(callbackStatus, "success")) {
            completableDeferred.complete(typedArray);
        } else if (Intrinsics.areEqual(callbackStatus, "error")) {
            Object obj = typedArray[0];
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
            completableDeferred.completeExceptionally(new Exception((String) obj));
        }
        MutableStateFlow<Set<Pair<String, CompletableDeferred<Object[]>>>> mutableStateFlow = this.callbacks;
        do {
            value = mutableStateFlow.getValue();
        } while (!mutableStateFlow.compareAndSet(value, SetsKt.minus(value, pair)));
    }

    @Override // com.unity3d.ads.adplayer.WebViewBridge
    public void handleInvocation(String message) throws JSONException {
        Intrinsics.checkNotNullParameter(message, "message");
        JSONArray jSONArray = new JSONArray(message);
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            Object obj = jSONArray.get(i);
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type org.json.JSONArray");
            JSONArray jSONArray2 = (JSONArray) obj;
            Object obj2 = jSONArray2.get(0);
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
            String str = (String) obj2;
            Object obj3 = jSONArray2.get(1);
            Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.String");
            String str2 = (String) obj3;
            Object obj4 = jSONArray2.get(2);
            Intrinsics.checkNotNull(obj4, "null cannot be cast to non-null type org.json.JSONArray");
            JSONArray jSONArray3 = (JSONArray) obj4;
            Object obj5 = jSONArray2.get(3);
            Intrinsics.checkNotNull(obj5, "null cannot be cast to non-null type kotlin.String");
            String str3 = (String) obj5;
            DeviceLog.debug("Unity Ads WebView calling for: " + str + '.' + str2 + '(' + jSONArray3 + ')');
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append('.');
            sb.append(str2);
            BuildersKt__Builders_commonKt.launch$default(this.scope, null, null, new C03451(sb.toString(), jSONArray3, this, str3, null), 3, null);
        }
    }

    /* JADX INFO: renamed from: com.unity3d.ads.adplayer.CommonWebViewBridge$handleInvocation$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CommonWebViewBridge.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 8, 0})
    @DebugMetadata(c = "com.unity3d.ads.adplayer.CommonWebViewBridge$handleInvocation$1", f = "CommonWebViewBridge.kt", i = {0, 1}, l = {103, 105, 106, 106, 112}, m = "invokeSuspend", n = {"invocation", "invocation"}, s = {"L$0", "L$0"})
    static final class C03451 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $callback;
        final /* synthetic */ String $location;
        final /* synthetic */ JSONArray $parameters;
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        final /* synthetic */ CommonWebViewBridge this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03451(String str, JSONArray jSONArray, CommonWebViewBridge commonWebViewBridge, String str2, Continuation<? super C03451> continuation) {
            super(2, continuation);
            this.$location = str;
            this.$parameters = jSONArray;
            this.this$0 = commonWebViewBridge;
            this.$callback = str2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C03451(this.$location, this.$parameters, this.this$0, this.$callback, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C03451) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:32:0x00b4 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:33:0x00b5  */
        /* JADX WARN: Code duplicated, block: B:36:0x00d0 A[RETURN] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String message;
            Invocation invocation;
            CommonWebViewBridge commonWebViewBridge;
            String str;
            String str2;
            Object[] objArr;
            Object result;
            Object[] objArr2;
            Object[] objArr3;
            int i;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i2 = this.label;
            try {
                if (i2 == 0) {
                    ResultKt.throwOnFailure(obj);
                    Invocation invocation2 = new Invocation(this.$location, JSONArrayExtensionsKt.toTypedArray(this.$parameters));
                    this.L$0 = invocation2;
                    this.label = 1;
                    if (this.this$0._onInvocation.emit(invocation2, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    invocation = invocation2;
                } else {
                    if (i2 == 1) {
                        invocation = (Invocation) this.L$0;
                        ResultKt.throwOnFailure(obj);
                    } else if (i2 == 2) {
                        invocation = (Invocation) this.L$0;
                        ResultKt.throwOnFailure(obj);
                        commonWebViewBridge = this.this$0;
                        str = this.$callback;
                        str2 = "OK";
                        objArr = new Object[1];
                        this.L$0 = objArr;
                        this.L$1 = commonWebViewBridge;
                        this.L$2 = str;
                        this.L$3 = "OK";
                        this.L$4 = objArr;
                        this.I$0 = 0;
                        this.label = 3;
                        result = invocation.getResult(this);
                        if (result == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        objArr2 = objArr;
                        objArr3 = objArr2;
                        obj = result;
                        i = 0;
                        objArr2[i] = obj;
                        this.L$0 = null;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.L$4 = null;
                        this.label = 4;
                        if (commonWebViewBridge.respond(str, str2, objArr3, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else if (i2 == 3) {
                        i = this.I$0;
                        objArr2 = (Object[]) this.L$4;
                        str2 = (String) this.L$3;
                        str = (String) this.L$2;
                        commonWebViewBridge = (CommonWebViewBridge) this.L$1;
                        objArr3 = (Object[]) this.L$0;
                        ResultKt.throwOnFailure(obj);
                        objArr2[i] = obj;
                        this.L$0 = null;
                        this.L$1 = null;
                        this.L$2 = null;
                        this.L$3 = null;
                        this.L$4 = null;
                        this.label = 4;
                        if (commonWebViewBridge.respond(str, str2, objArr3, this) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        if (i2 != 4 && i2 != 5) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    return Unit.INSTANCE;
                }
                this.L$0 = invocation;
                this.label = 2;
                if (TimeoutKt.withTimeout(5000L, new C01181(invocation, null), this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                commonWebViewBridge = this.this$0;
                str = this.$callback;
                str2 = "OK";
                objArr = new Object[1];
                this.L$0 = objArr;
                this.L$1 = commonWebViewBridge;
                this.L$2 = str;
                this.L$3 = "OK";
                this.L$4 = objArr;
                this.I$0 = 0;
                this.label = 3;
                result = invocation.getResult(this);
                if (result == coroutine_suspended) {
                    return coroutine_suspended;
                }
                objArr2 = objArr;
                objArr3 = objArr2;
                obj = result;
                i = 0;
                objArr2[i] = obj;
                this.L$0 = null;
                this.L$1 = null;
                this.L$2 = null;
                this.L$3 = null;
                this.L$4 = null;
                this.label = 4;
                if (commonWebViewBridge.respond(str, str2, objArr3, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            } catch (Exception e) {
                if (e instanceof TimeoutCancellationException) {
                    message = "Invocation(" + this.$location + ") is not handled";
                } else {
                    message = e.getMessage();
                    if (message == null) {
                        message = "Unknown error";
                    }
                }
                CommonWebViewBridge commonWebViewBridge2 = this.this$0;
                String str3 = this.$callback;
                Object[] objArr4 = {message};
                this.L$0 = null;
                this.L$1 = null;
                this.L$2 = null;
                this.L$3 = null;
                this.L$4 = null;
                this.label = 5;
                if (commonWebViewBridge2.respond(str3, "ERROR", objArr4, this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        }

        /* JADX INFO: renamed from: com.unity3d.ads.adplayer.CommonWebViewBridge$handleInvocation$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: CommonWebViewBridge.kt */
        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 8, 0})
        @DebugMetadata(c = "com.unity3d.ads.adplayer.CommonWebViewBridge$handleInvocation$1$1", f = "CommonWebViewBridge.kt", i = {}, l = {105}, m = "invokeSuspend", n = {}, s = {})
        static final class C01181 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ Invocation $invocation;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C01181(Invocation invocation, Continuation<? super C01181> continuation) {
                super(2, continuation);
                this.$invocation = invocation;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C01181(this.$invocation, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C01181) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.label = 1;
                    if (this.$invocation.isHandled().await(this) == coroutine_suspended) {
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
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object respond(String str, String str2, Object[] objArr, Continuation<? super Unit> continuation) {
        JSONArray jSONArray = new JSONArray();
        jSONArray.put(str);
        jSONArray.put(str2);
        jSONArray.put(new JSONArray(objArr));
        Object objExecute = execute(HandlerType.CALLBACK, y8.i.d + jSONArray + ']', continuation);
        return objExecute == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objExecute : Unit.INSTANCE;
    }
}
