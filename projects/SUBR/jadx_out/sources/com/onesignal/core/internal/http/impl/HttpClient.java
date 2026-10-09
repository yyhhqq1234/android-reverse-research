package com.onesignal.core.internal.http.impl;

import com.google.common.net.HttpHeaders;
import com.onesignal.common.JSONUtils;
import com.onesignal.core.BuildConfig;
import com.onesignal.core.internal.config.ConfigModelStore;
import com.onesignal.core.internal.device.IInstallIdService;
import com.onesignal.core.internal.http.HttpResponse;
import com.onesignal.core.internal.http.IHttpClient;
import com.onesignal.core.internal.preferences.IPreferencesService;
import com.onesignal.core.internal.time.ITime;
import com.onesignal.debug.internal.logging.Logging;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.TimeoutKt;
import org.json.JSONObject;
import org.json.y8;

/* JADX INFO: compiled from: HttpClient.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010 \n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000 /2\u00020\u0001:\u0001/B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ#\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0015J#\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0015J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0018H\u0002J>\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0011\u001a\u00020\u001d2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0018\u0010\u0013\u001a\u0014\u0012\u0004\u0012\u00020\u0012\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00120!0 H\u0002J?\u0010\"\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u001c\u001a\u0004\u0018\u00010\u00122\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010\u0019\u001a\u00020\u00182\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010#J?\u0010$\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\b\u0010\u001c\u001a\u0004\u0018\u00010\u00122\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\u0006\u0010\u0019\u001a\u00020\u00182\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010#J+\u0010%\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\u001f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010'J+\u0010(\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\u001f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010'J+\u0010)\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010&\u001a\u00020\u001f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010'J\u0017\u0010*\u001a\u0004\u0018\u00010\u00182\u0006\u0010+\u001a\u00020,H\u0002¢\u0006\u0002\u0010-J\u0017\u0010.\u001a\u0004\u0018\u00010\u00182\u0006\u0010+\u001a\u00020,H\u0002¢\u0006\u0002\u0010-R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u00060"}, d2 = {"Lcom/onesignal/core/internal/http/impl/HttpClient;", "Lcom/onesignal/core/internal/http/IHttpClient;", "_connectionFactory", "Lcom/onesignal/core/internal/http/impl/IHttpConnectionFactory;", "_prefs", "Lcom/onesignal/core/internal/preferences/IPreferencesService;", "_configModelStore", "Lcom/onesignal/core/internal/config/ConfigModelStore;", "_time", "Lcom/onesignal/core/internal/time/ITime;", "_installIdService", "Lcom/onesignal/core/internal/device/IInstallIdService;", "(Lcom/onesignal/core/internal/http/impl/IHttpConnectionFactory;Lcom/onesignal/core/internal/preferences/IPreferencesService;Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/core/internal/time/ITime;Lcom/onesignal/core/internal/device/IInstallIdService;)V", "delayNewRequestsUntil", "", "delete", "Lcom/onesignal/core/internal/http/HttpResponse;", "url", "", "headers", "Lcom/onesignal/core/internal/http/impl/OptionalHeaders;", "(Ljava/lang/String;Lcom/onesignal/core/internal/http/impl/OptionalHeaders;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "get", "getThreadTimeout", "", "timeout", "logHTTPSent", "", "method", "Ljava/net/URL;", "jsonBody", "Lorg/json/JSONObject;", "", "", "makeRequest", "(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;ILcom/onesignal/core/internal/http/impl/OptionalHeaders;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "makeRequestIODispatcher", "patch", y8.h.E0, "(Ljava/lang/String;Lorg/json/JSONObject;Lcom/onesignal/core/internal/http/impl/OptionalHeaders;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "post", "put", "retryAfterFromResponse", "con", "Ljava/net/HttpURLConnection;", "(Ljava/net/HttpURLConnection;)Ljava/lang/Integer;", "retryLimitFromResponse", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class HttpClient implements IHttpClient {
    private static final String OS_ACCEPT_HEADER = "application/vnd.onesignal.v1+json";
    private static final String OS_API_VERSION = "1";
    private static final int THREAD_ID = 10000;
    private final ConfigModelStore _configModelStore;
    private final IHttpConnectionFactory _connectionFactory;
    private final IInstallIdService _installIdService;
    private final IPreferencesService _prefs;
    private final ITime _time;
    private long delayNewRequestsUntil;

    /* JADX INFO: renamed from: com.onesignal.core.internal.http.impl.HttpClient$makeRequest$1, reason: invalid class name */
    /* JADX INFO: compiled from: HttpClient.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.core.internal.http.impl.HttpClient", f = "HttpClient.kt", i = {0, 0, 0, 0, 0, 0, 1}, l = {89, 92}, m = "makeRequest", n = {"this", "url", "method", "jsonBody", "headers", "timeout", "url"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "I$0", "L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        int I$0;
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
            return HttpClient.this.makeRequest(null, null, null, 0, null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.core.internal.http.impl.HttpClient$makeRequestIODispatcher$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: HttpClient.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.core.internal.http.impl.HttpClient", f = "HttpClient.kt", i = {0}, l = {286}, m = "makeRequestIODispatcher", n = {"retVal"}, s = {"L$0"})
    static final class C01881 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C01881(Continuation<? super C01881> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return HttpClient.this.makeRequestIODispatcher(null, null, null, 0, null, this);
        }
    }

    private final int getThreadTimeout(int timeout) {
        return timeout + 5000;
    }

    public HttpClient(IHttpConnectionFactory _connectionFactory, IPreferencesService _prefs, ConfigModelStore _configModelStore, ITime _time, IInstallIdService _installIdService) {
        Intrinsics.checkNotNullParameter(_connectionFactory, "_connectionFactory");
        Intrinsics.checkNotNullParameter(_prefs, "_prefs");
        Intrinsics.checkNotNullParameter(_configModelStore, "_configModelStore");
        Intrinsics.checkNotNullParameter(_time, "_time");
        Intrinsics.checkNotNullParameter(_installIdService, "_installIdService");
        this._connectionFactory = _connectionFactory;
        this._prefs = _prefs;
        this._configModelStore = _configModelStore;
        this._time = _time;
        this._installIdService = _installIdService;
    }

    @Override // com.onesignal.core.internal.http.IHttpClient
    public Object post(String str, JSONObject jSONObject, OptionalHeaders optionalHeaders, Continuation<? super HttpResponse> continuation) {
        return makeRequest(str, "POST", jSONObject, this._configModelStore.getModel().getHttpTimeout(), optionalHeaders, continuation);
    }

    @Override // com.onesignal.core.internal.http.IHttpClient
    public Object get(String str, OptionalHeaders optionalHeaders, Continuation<? super HttpResponse> continuation) {
        return makeRequest(str, null, null, this._configModelStore.getModel().getHttpGetTimeout(), optionalHeaders, continuation);
    }

    @Override // com.onesignal.core.internal.http.IHttpClient
    public Object put(String str, JSONObject jSONObject, OptionalHeaders optionalHeaders, Continuation<? super HttpResponse> continuation) {
        return makeRequest(str, "PUT", jSONObject, this._configModelStore.getModel().getHttpTimeout(), optionalHeaders, continuation);
    }

    @Override // com.onesignal.core.internal.http.IHttpClient
    public Object patch(String str, JSONObject jSONObject, OptionalHeaders optionalHeaders, Continuation<? super HttpResponse> continuation) {
        return makeRequest(str, "PATCH", jSONObject, this._configModelStore.getModel().getHttpTimeout(), optionalHeaders, continuation);
    }

    @Override // com.onesignal.core.internal.http.IHttpClient
    public Object delete(String str, OptionalHeaders optionalHeaders, Continuation<? super HttpResponse> continuation) {
        return makeRequest(str, "DELETE", null, this._configModelStore.getModel().getHttpTimeout(), optionalHeaders, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:40:0x012d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x001c  */
    public final Object makeRequest(String str, String str2, JSONObject jSONObject, int i, OptionalHeaders optionalHeaders, Continuation<? super HttpResponse> continuation) {
        AnonymousClass1 anonymousClass1;
        int i2;
        String str3;
        HttpClient httpClient;
        String str4;
        JSONObject jSONObject2;
        OptionalHeaders optionalHeaders2;
        JSONObject jSONObject3;
        OptionalHeaders optionalHeaders3;
        HttpClient httpClient2;
        String str5;
        String str6 = str2;
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
        Object objWithTimeout = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i3 = anonymousClass1.label;
        try {
            try {
                if (i3 == 0) {
                    ResultKt.throwOnFailure(objWithTimeout);
                    if (str6 != null && Intrinsics.areEqual(this._configModelStore.getModel().getConsentRequired(), Boxing.boxBoolean(true)) && !Intrinsics.areEqual(this._configModelStore.getModel().getConsentGiven(), Boxing.boxBoolean(true))) {
                        Logging.warn$default(str6 + " `" + str + "` was called before the user provided privacy consent. Your application is set to require the user's privacy consent before the OneSignal SDK can be initialized. Please ensure the user has provided consent before calling this method. You can check the latest OneSignal consent status by calling OneSignal.privacyConsent", null, 2, null);
                        return new HttpResponse(0, null, null, null, null, 24, null);
                    }
                    long currentTimeMillis = this.delayNewRequestsUntil - this._time.getCurrentTimeMillis();
                    if (currentTimeMillis > 0) {
                        anonymousClass1.L$0 = this;
                        anonymousClass1.L$1 = str;
                        anonymousClass1.L$2 = str6;
                        jSONObject3 = jSONObject;
                        anonymousClass1.L$3 = jSONObject3;
                        optionalHeaders3 = optionalHeaders;
                        anonymousClass1.L$4 = optionalHeaders3;
                        i2 = i;
                        anonymousClass1.I$0 = i2;
                        anonymousClass1.label = 1;
                        if (DelayKt.delay(currentTimeMillis, anonymousClass1) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        str3 = str;
                        httpClient2 = this;
                    } else {
                        i2 = i;
                        str3 = str;
                        httpClient = this;
                        str4 = str6;
                        jSONObject2 = jSONObject;
                        optionalHeaders2 = optionalHeaders;
                    }
                    long threadTimeout = httpClient.getThreadTimeout(i2);
                    AnonymousClass2 anonymousClass2 = httpClient.new AnonymousClass2(str3, str4, jSONObject2, i2, optionalHeaders2, null);
                    anonymousClass1.L$0 = str3;
                    anonymousClass1.L$1 = null;
                    anonymousClass1.L$2 = null;
                    anonymousClass1.L$3 = null;
                    anonymousClass1.L$4 = null;
                    anonymousClass1.label = 2;
                    objWithTimeout = TimeoutKt.withTimeout(threadTimeout, anonymousClass2, anonymousClass1);
                    if (objWithTimeout == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return objWithTimeout;
                }
                if (i3 != 1) {
                    if (i3 == 2) {
                        str5 = (String) anonymousClass1.L$0;
                        try {
                            ResultKt.throwOnFailure(objWithTimeout);
                            return objWithTimeout;
                        } catch (TimeoutCancellationException e) {
                            e = e;
                            TimeoutCancellationException timeoutCancellationException = e;
                            Logging.error("HttpClient: Request timed out: " + str5, timeoutCancellationException);
                            return new HttpResponse(0, null, timeoutCancellationException, null, null, 24, null);
                        }
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                int i4 = anonymousClass1.I$0;
                OptionalHeaders optionalHeaders4 = (OptionalHeaders) anonymousClass1.L$4;
                JSONObject jSONObject4 = (JSONObject) anonymousClass1.L$3;
                String str7 = (String) anonymousClass1.L$2;
                str3 = (String) anonymousClass1.L$1;
                httpClient2 = (HttpClient) anonymousClass1.L$0;
                ResultKt.throwOnFailure(objWithTimeout);
                i2 = i4;
                jSONObject3 = jSONObject4;
                optionalHeaders3 = optionalHeaders4;
                str6 = str7;
                long threadTimeout2 = httpClient.getThreadTimeout(i2);
                AnonymousClass2 anonymousClass3 = httpClient.new AnonymousClass2(str3, str4, jSONObject2, i2, optionalHeaders2, null);
                anonymousClass1.L$0 = str3;
                anonymousClass1.L$1 = null;
                anonymousClass1.L$2 = null;
                anonymousClass1.L$3 = null;
                anonymousClass1.L$4 = null;
                anonymousClass1.label = 2;
                objWithTimeout = TimeoutKt.withTimeout(threadTimeout2, anonymousClass3, anonymousClass1);
                if (objWithTimeout == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return objWithTimeout;
            } catch (TimeoutCancellationException e2) {
                e = e2;
                str5 = str3;
                TimeoutCancellationException timeoutCancellationException2 = e;
                Logging.error("HttpClient: Request timed out: " + str5, timeoutCancellationException2);
                return new HttpResponse(0, null, timeoutCancellationException2, null, null, 24, null);
            }
            str4 = str6;
            jSONObject2 = jSONObject3;
            optionalHeaders2 = optionalHeaders3;
            httpClient = httpClient2;
        } catch (Throwable th) {
            return new HttpResponse(0, null, th, null, null, 24, null);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.core.internal.http.impl.HttpClient$makeRequest$2, reason: invalid class name */
    /* JADX INFO: compiled from: HttpClient.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "Lcom/onesignal/core/internal/http/HttpResponse;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.core.internal.http.impl.HttpClient$makeRequest$2", f = "HttpClient.kt", i = {}, l = {93}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super HttpResponse>, Object> {
        final /* synthetic */ OptionalHeaders $headers;
        final /* synthetic */ JSONObject $jsonBody;
        final /* synthetic */ String $method;
        final /* synthetic */ int $timeout;
        final /* synthetic */ String $url;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(String str, String str2, JSONObject jSONObject, int i, OptionalHeaders optionalHeaders, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$url = str;
            this.$method = str2;
            this.$jsonBody = jSONObject;
            this.$timeout = i;
            this.$headers = optionalHeaders;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return HttpClient.this.new AnonymousClass2(this.$url, this.$method, this.$jsonBody, this.$timeout, this.$headers, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super HttpResponse> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = HttpClient.this.makeRequestIODispatcher(this.$url, this.$method, this.$jsonBody, this.$timeout, this.$headers, this);
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

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    public final Object makeRequestIODispatcher(String str, String str2, JSONObject jSONObject, int i, OptionalHeaders optionalHeaders, Continuation<? super HttpResponse> continuation) {
        C01881 c01881;
        Ref.ObjectRef objectRef;
        if (continuation instanceof C01881) {
            c01881 = (C01881) continuation;
            if ((c01881.label & Integer.MIN_VALUE) != 0) {
                c01881.label -= Integer.MIN_VALUE;
            } else {
                c01881 = new C01881(continuation);
            }
        } else {
            c01881 = new C01881(continuation);
        }
        Object obj = c01881.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c01881.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            Job jobLaunch$default = BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, Dispatchers.getIO(), null, new HttpClient$makeRequestIODispatcher$job$1(this, str, i, jSONObject, str2, optionalHeaders, objectRef2, null), 2, null);
            c01881.L$0 = objectRef2;
            c01881.label = 1;
            if (jobLaunch$default.join(c01881) == coroutine_suspended) {
                return coroutine_suspended;
            }
            objectRef = objectRef2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef = (Ref.ObjectRef) c01881.L$0;
            ResultKt.throwOnFailure(obj);
        }
        T t = objectRef.element;
        Intrinsics.checkNotNull(t);
        return t;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Integer retryAfterFromResponse(HttpURLConnection con) {
        String headerField = con.getHeaderField(HttpHeaders.RETRY_AFTER);
        if (headerField != null) {
            Logging.debug$default("HttpClient: Response Retry-After: " + headerField, null, 2, null);
            Integer intOrNull = StringsKt.toIntOrNull(headerField);
            return Integer.valueOf(intOrNull != null ? intOrNull.intValue() : this._configModelStore.getModel().getHttpRetryAfterParseFailFallback());
        }
        if (con.getResponseCode() == 429) {
            return Integer.valueOf(this._configModelStore.getModel().getHttpRetryAfterParseFailFallback());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Integer retryLimitFromResponse(HttpURLConnection con) {
        String headerField = con.getHeaderField("OneSignal-Retry-Limit");
        if (headerField != null) {
            Logging.debug$default("HttpClient: Response OneSignal-Retry-Limit: " + headerField, null, 2, null);
            return StringsKt.toIntOrNull(headerField);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void logHTTPSent(String method, URL url, JSONObject jsonBody, Map<String, ? extends List<String>> headers) {
        String strJoinToString$default = CollectionsKt.joinToString$default(headers.entrySet(), null, null, null, 0, null, null, 63, null);
        if (method == null) {
            method = "GET";
        }
        Logging.debug$default("HttpClient: Request Sent = " + method + ' ' + url + " - Body: " + (jsonBody != null ? JSONUtils.INSTANCE.toUnescapedEUIDString(jsonBody) : null) + " - Headers: " + strJoinToString$default, null, 2, null);
    }
}
