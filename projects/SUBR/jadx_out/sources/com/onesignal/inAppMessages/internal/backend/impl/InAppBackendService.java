package com.onesignal.inAppMessages.internal.backend.impl;

import com.onesignal.common.NetworkUtils;
import com.onesignal.common.consistency.RywData;
import com.onesignal.common.exceptions.BackendException;
import com.onesignal.core.internal.device.IDeviceService;
import com.onesignal.core.internal.http.HttpResponse;
import com.onesignal.core.internal.http.IHttpClient;
import com.onesignal.core.internal.http.impl.OptionalHeaders;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.inAppMessages.BuildConfig;
import com.onesignal.inAppMessages.internal.InAppMessage;
import com.onesignal.inAppMessages.internal.InAppMessageContent;
import com.onesignal.inAppMessages.internal.InAppMessagePage;
import com.onesignal.inAppMessages.internal.backend.GetIAMDataResponse;
import com.onesignal.inAppMessages.internal.backend.IInAppBackendService;
import com.onesignal.inAppMessages.internal.hydrators.InAppHydrator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DelayKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.gr;
import org.json.z8;

/* JADX INFO: compiled from: InAppBackendService.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ7\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0015J/\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f2\u0006\u0010\u0017\u001a\u00020\u000f2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0018J+\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u000f2\b\u0010\u001d\u001a\u0004\u0018\u00010\u000fH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u001eJ#\u0010\u001f\u001a\u0004\u0018\u00010 2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010!\u001a\u00020\u000fH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\"J$\u0010#\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u001c\u001a\u00020\u000f2\b\u0010\u001d\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u001b\u001a\u00020\u000fH\u0002J\u0018\u0010$\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f2\u0006\u0010%\u001a\u00020&H\u0002J?\u0010'\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\f2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010(\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010)J\"\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u000f2\u0006\u0010-\u001a\u00020\n2\b\u0010.\u001a\u0004\u0018\u00010\u000fH\u0002J\u0018\u0010/\u001a\u00020+2\u0006\u0010,\u001a\u00020\u000f2\u0006\u0010.\u001a\u00020\u000fH\u0002JE\u00100\u001a\u00020+2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010(\u001a\u00020\u000f2\b\u0010\u001d\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u001c\u001a\u00020\u000f2\b\u00101\u001a\u0004\u0018\u00010\u000f2\u0006\u00102\u001a\u000203H\u0096@ø\u0001\u0000¢\u0006\u0002\u00104J3\u00105\u001a\u00020+2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010(\u001a\u00020\u000f2\b\u0010\u001d\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u001c\u001a\u00020\u000fH\u0096@ø\u0001\u0000¢\u0006\u0002\u00106J=\u00107\u001a\u00020+2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010(\u001a\u00020\u000f2\b\u0010\u001d\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u001c\u001a\u00020\u000f2\b\u00108\u001a\u0004\u0018\u00010\u000fH\u0096@ø\u0001\u0000¢\u0006\u0002\u00109R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006:"}, d2 = {"Lcom/onesignal/inAppMessages/internal/backend/impl/InAppBackendService;", "Lcom/onesignal/inAppMessages/internal/backend/IInAppBackendService;", "_httpClient", "Lcom/onesignal/core/internal/http/IHttpClient;", "_deviceService", "Lcom/onesignal/core/internal/device/IDeviceService;", "_hydrator", "Lcom/onesignal/inAppMessages/internal/hydrators/InAppHydrator;", "(Lcom/onesignal/core/internal/http/IHttpClient;Lcom/onesignal/core/internal/device/IDeviceService;Lcom/onesignal/inAppMessages/internal/hydrators/InAppHydrator;)V", "htmlNetworkRequestAttemptCount", "", "attemptFetchWithRetries", "", "Lcom/onesignal/inAppMessages/internal/InAppMessage;", "baseUrl", "", "rywData", "Lcom/onesignal/common/consistency/RywData;", "sessionDurationProvider", "Lkotlin/Function0;", "", "(Ljava/lang/String;Lcom/onesignal/common/consistency/RywData;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "fetchInAppMessagesWithoutRywToken", "url", "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getIAMData", "Lcom/onesignal/inAppMessages/internal/backend/GetIAMDataResponse;", "appId", "messageId", "variantId", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getIAMPreviewData", "Lcom/onesignal/inAppMessages/internal/InAppMessageContent;", "previewUUID", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "htmlPathForMessage", "hydrateInAppMessages", "jsonResponse", "Lorg/json/JSONObject;", "listInAppMessages", "subscriptionId", "(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/common/consistency/RywData;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "printHttpErrorForInAppMessageRequest", "", "requestType", "statusCode", gr.n, "printHttpSuccessForInAppMessageRequest", "sendIAMClick", "clickId", "isFirstClick", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendIAMImpression", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "sendIAMPageImpression", InAppMessagePage.PAGE_ID, "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class InAppBackendService implements IInAppBackendService {
    private final IDeviceService _deviceService;
    private final IHttpClient _httpClient;
    private final InAppHydrator _hydrator;
    private int htmlNetworkRequestAttemptCount;

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.backend.impl.InAppBackendService$attemptFetchWithRetries$1, reason: invalid class name */
    /* JADX INFO: compiled from: InAppBackendService.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.backend.impl.InAppBackendService", f = "InAppBackendService.kt", i = {0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1}, l = {224, 235, 247}, m = "attemptFetchWithRetries", n = {"this", "baseUrl", "rywData", "sessionDurationProvider", "attempts", "retryLimit", "this", "baseUrl", "rywData", "sessionDurationProvider", "attempts", "retryLimit"}, s = {"L$0", "L$1", "L$2", "L$3", "I$0", "I$1", "L$0", "L$1", "L$2", "L$3", "I$0", "I$1"})
    static final class AnonymousClass1 extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return InAppBackendService.this.attemptFetchWithRetries(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.backend.impl.InAppBackendService$fetchInAppMessagesWithoutRywToken$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppBackendService.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.backend.impl.InAppBackendService", f = "InAppBackendService.kt", i = {0}, l = {255}, m = "fetchInAppMessagesWithoutRywToken", n = {"this"}, s = {"L$0"})
    static final class C02131 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02131(Continuation<? super C02131> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return InAppBackendService.this.fetchInAppMessagesWithoutRywToken(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.backend.impl.InAppBackendService$getIAMData$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppBackendService.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.backend.impl.InAppBackendService", f = "InAppBackendService.kt", i = {0}, l = {49}, m = "getIAMData", n = {"this"}, s = {"L$0"})
    static final class C02141 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02141(Continuation<? super C02141> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return InAppBackendService.this.getIAMData(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.backend.impl.InAppBackendService$getIAMPreviewData$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppBackendService.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.backend.impl.InAppBackendService", f = "InAppBackendService.kt", i = {0}, l = {79}, m = "getIAMPreviewData", n = {"this"}, s = {"L$0"})
    static final class C02151 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02151(Continuation<? super C02151> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return InAppBackendService.this.getIAMPreviewData(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.backend.impl.InAppBackendService$listInAppMessages$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppBackendService.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.backend.impl.InAppBackendService", f = "InAppBackendService.kt", i = {0, 0, 0, 0, 0}, l = {34, 37}, m = "listInAppMessages", n = {"this", "appId", "subscriptionId", "rywData", "sessionDurationProvider"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4"})
    static final class C02161 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        C02161(Continuation<? super C02161> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return InAppBackendService.this.listInAppMessages(null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.backend.impl.InAppBackendService$sendIAMClick$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppBackendService.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.backend.impl.InAppBackendService", f = "InAppBackendService.kt", i = {0}, l = {110}, m = "sendIAMClick", n = {"this"}, s = {"L$0"})
    static final class C02171 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02171(Continuation<? super C02171> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return InAppBackendService.this.sendIAMClick(null, null, null, null, null, false, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.backend.impl.InAppBackendService$sendIAMImpression$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppBackendService.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.backend.impl.InAppBackendService", f = "InAppBackendService.kt", i = {0}, l = {170}, m = "sendIAMImpression", n = {"this"}, s = {"L$0"})
    static final class C02181 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02181(Continuation<? super C02181> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return InAppBackendService.this.sendIAMImpression(null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.backend.impl.InAppBackendService$sendIAMPageImpression$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppBackendService.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.backend.impl.InAppBackendService", f = "InAppBackendService.kt", i = {0}, l = {143}, m = "sendIAMPageImpression", n = {"this"}, s = {"L$0"})
    static final class C02191 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02191(Continuation<? super C02191> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return InAppBackendService.this.sendIAMPageImpression(null, null, null, null, null, this);
        }
    }

    public InAppBackendService(IHttpClient _httpClient, IDeviceService _deviceService, InAppHydrator _hydrator) {
        Intrinsics.checkNotNullParameter(_httpClient, "_httpClient");
        Intrinsics.checkNotNullParameter(_deviceService, "_deviceService");
        Intrinsics.checkNotNullParameter(_hydrator, "_hydrator");
        this._httpClient = _httpClient;
        this._deviceService = _deviceService;
        this._hydrator = _hydrator;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.inAppMessages.internal.backend.IInAppBackendService
    public Object listInAppMessages(String str, String str2, RywData rywData, Function0<Long> function0, Continuation<? super List<InAppMessage>> continuation) {
        C02161 c02161;
        InAppBackendService inAppBackendService;
        if (continuation instanceof C02161) {
            c02161 = (C02161) continuation;
            if ((c02161.label & Integer.MIN_VALUE) != 0) {
                c02161.label -= Integer.MIN_VALUE;
            } else {
                c02161 = new C02161(continuation);
            }
        } else {
            c02161 = new C02161(continuation);
        }
        Object objAttemptFetchWithRetries = c02161.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02161.label;
        if (i != 0) {
            if (i == 1) {
                function0 = (Function0) c02161.L$4;
                rywData = (RywData) c02161.L$3;
                str2 = (String) c02161.L$2;
                str = (String) c02161.L$1;
                inAppBackendService = (InAppBackendService) c02161.L$0;
                ResultKt.throwOnFailure(objAttemptFetchWithRetries);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objAttemptFetchWithRetries);
            }
        }
        ResultKt.throwOnFailure(objAttemptFetchWithRetries);
        Long rywDelay = rywData.getRywDelay();
        long jLongValue = rywDelay != null ? rywDelay.longValue() : 500L;
        c02161.L$0 = this;
        c02161.L$1 = str;
        c02161.L$2 = str2;
        c02161.L$3 = rywData;
        c02161.L$4 = function0;
        c02161.label = 1;
        if (DelayKt.delay(jLongValue, c02161) == coroutine_suspended) {
            return coroutine_suspended;
        }
        inAppBackendService = this;
        c02161.L$0 = null;
        c02161.L$1 = null;
        c02161.L$2 = null;
        c02161.L$3 = null;
        c02161.L$4 = null;
        c02161.label = 2;
        objAttemptFetchWithRetries = inAppBackendService.attemptFetchWithRetries("apps/" + str + "/subscriptions/" + str2 + "/iams", rywData, function0, c02161);
        return objAttemptFetchWithRetries == coroutine_suspended ? coroutine_suspended : objAttemptFetchWithRetries;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.inAppMessages.internal.backend.IInAppBackendService
    public Object getIAMData(String str, String str2, String str3, Continuation<? super GetIAMDataResponse> continuation) {
        C02141 c02141;
        InAppBackendService inAppBackendService;
        if (continuation instanceof C02141) {
            c02141 = (C02141) continuation;
            if ((c02141.label & Integer.MIN_VALUE) != 0) {
                c02141.label -= Integer.MIN_VALUE;
            } else {
                c02141 = new C02141(continuation);
            }
        } else {
            c02141 = new C02141(continuation);
        }
        C02141 c02142 = c02141;
        Object obj = c02142.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02142.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            String strHtmlPathForMessage = htmlPathForMessage(str2, str3, str);
            if (strHtmlPathForMessage == null) {
                return new GetIAMDataResponse(null, false);
            }
            IHttpClient iHttpClient = this._httpClient;
            c02142.L$0 = this;
            c02142.label = 1;
            obj = IHttpClient.DefaultImpls.get$default(iHttpClient, strHtmlPathForMessage, null, c02142, 2, null);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
            inAppBackendService = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            inAppBackendService = (InAppBackendService) c02142.L$0;
            ResultKt.throwOnFailure(obj);
        }
        HttpResponse httpResponse = (HttpResponse) obj;
        if (httpResponse.isSuccess()) {
            inAppBackendService.htmlNetworkRequestAttemptCount = 0;
            String payload = httpResponse.getPayload();
            Intrinsics.checkNotNull(payload);
            return new GetIAMDataResponse(inAppBackendService._hydrator.hydrateIAMMessageContent(new JSONObject(payload)), false);
        }
        inAppBackendService.printHttpErrorForInAppMessageRequest(InAppMessageContent.HTML, httpResponse.getStatusCode(), httpResponse.getPayload());
        if (NetworkUtils.INSTANCE.getResponseStatusType(httpResponse.getStatusCode()) != NetworkUtils.ResponseStatusType.RETRYABLE || inAppBackendService.htmlNetworkRequestAttemptCount >= NetworkUtils.INSTANCE.getMaxNetworkRequestAttemptCount()) {
            inAppBackendService.htmlNetworkRequestAttemptCount = 0;
            return new GetIAMDataResponse(null, false);
        }
        inAppBackendService.htmlNetworkRequestAttemptCount++;
        return new GetIAMDataResponse(null, true);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.inAppMessages.internal.backend.IInAppBackendService
    public Object getIAMPreviewData(String str, String str2, Continuation<? super InAppMessageContent> continuation) {
        C02151 c02151;
        InAppBackendService inAppBackendService;
        if (continuation instanceof C02151) {
            c02151 = (C02151) continuation;
            if ((c02151.label & Integer.MIN_VALUE) != 0) {
                c02151.label -= Integer.MIN_VALUE;
            } else {
                c02151 = new C02151(continuation);
            }
        } else {
            c02151 = new C02151(continuation);
        }
        C02151 c02152 = c02151;
        Object obj = c02152.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02152.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            IHttpClient iHttpClient = this._httpClient;
            c02152.L$0 = this;
            c02152.label = 1;
            obj = IHttpClient.DefaultImpls.get$default(iHttpClient, "in_app_messages/device_preview?preview_id=" + str2 + "&app_id=" + str, null, c02152, 2, null);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
            inAppBackendService = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            inAppBackendService = (InAppBackendService) c02152.L$0;
            ResultKt.throwOnFailure(obj);
        }
        HttpResponse httpResponse = (HttpResponse) obj;
        if (httpResponse.isSuccess()) {
            String payload = httpResponse.getPayload();
            Intrinsics.checkNotNull(payload);
            return inAppBackendService._hydrator.hydrateIAMMessageContent(new JSONObject(payload));
        }
        inAppBackendService.printHttpErrorForInAppMessageRequest(InAppMessageContent.HTML, httpResponse.getStatusCode(), httpResponse.getPayload());
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    @Override // com.onesignal.inAppMessages.internal.backend.IInAppBackendService
    public Object sendIAMClick(final String str, final String str2, final String str3, String str4, final String str5, final boolean z, Continuation<? super Unit> continuation) throws BackendException {
        C02171 c02171;
        InAppBackendService inAppBackendService;
        if (continuation instanceof C02171) {
            c02171 = (C02171) continuation;
            if ((c02171.label & Integer.MIN_VALUE) != 0) {
                c02171.label -= Integer.MIN_VALUE;
            } else {
                c02171 = new C02171(continuation);
            }
        } else {
            c02171 = new C02171(continuation);
        }
        C02171 c02172 = c02171;
        Object objPost$default = c02172.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02172.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objPost$default);
            JSONObject jSONObject = new JSONObject(str, this, str2, str5, str3, z) { // from class: com.onesignal.inAppMessages.internal.backend.impl.InAppBackendService$sendIAMClick$json$1
                {
                    put("app_id", str);
                    put("device_type", this._deviceService.getDeviceType().getValue());
                    put("player_id", str2);
                    put("click_id", str5);
                    put("variant_id", str3);
                    if (z) {
                        put("first_click", true);
                    }
                }
            };
            c02172.L$0 = this;
            c02172.label = 1;
            objPost$default = IHttpClient.DefaultImpls.post$default(this._httpClient, "in_app_messages/" + str4 + "/click", jSONObject, null, c02172, 4, null);
            if (objPost$default == coroutine_suspended) {
                return coroutine_suspended;
            }
            inAppBackendService = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            inAppBackendService = (InAppBackendService) c02172.L$0;
            ResultKt.throwOnFailure(objPost$default);
        }
        HttpResponse httpResponse = (HttpResponse) objPost$default;
        if (httpResponse.isSuccess()) {
            String payload = httpResponse.getPayload();
            Intrinsics.checkNotNull(payload);
            inAppBackendService.printHttpSuccessForInAppMessageRequest("engagement", payload);
            return Unit.INSTANCE;
        }
        inAppBackendService.printHttpErrorForInAppMessageRequest("engagement", httpResponse.getStatusCode(), httpResponse.getPayload());
        throw new BackendException(httpResponse.getStatusCode(), httpResponse.getPayload(), httpResponse.getRetryAfterSeconds());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    @Override // com.onesignal.inAppMessages.internal.backend.IInAppBackendService
    public Object sendIAMPageImpression(final String str, final String str2, final String str3, String str4, final String str5, Continuation<? super Unit> continuation) throws BackendException {
        C02191 c02191;
        InAppBackendService inAppBackendService;
        if (continuation instanceof C02191) {
            c02191 = (C02191) continuation;
            if ((c02191.label & Integer.MIN_VALUE) != 0) {
                c02191.label -= Integer.MIN_VALUE;
            } else {
                c02191 = new C02191(continuation);
            }
        } else {
            c02191 = new C02191(continuation);
        }
        C02191 c02192 = c02191;
        Object objPost$default = c02192.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02192.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objPost$default);
            JSONObject jSONObject = new JSONObject(str, str2, str3, this, str5) { // from class: com.onesignal.inAppMessages.internal.backend.impl.InAppBackendService$sendIAMPageImpression$json$1
                {
                    put("app_id", str);
                    put("player_id", str2);
                    put("variant_id", str3);
                    put("device_type", this._deviceService.getDeviceType().getValue());
                    put("page_id", str5);
                }
            };
            c02192.L$0 = this;
            c02192.label = 1;
            objPost$default = IHttpClient.DefaultImpls.post$default(this._httpClient, "in_app_messages/" + str4 + "/pageImpression", jSONObject, null, c02192, 4, null);
            if (objPost$default == coroutine_suspended) {
                return coroutine_suspended;
            }
            inAppBackendService = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            inAppBackendService = (InAppBackendService) c02192.L$0;
            ResultKt.throwOnFailure(objPost$default);
        }
        HttpResponse httpResponse = (HttpResponse) objPost$default;
        if (httpResponse.isSuccess()) {
            String payload = httpResponse.getPayload();
            Intrinsics.checkNotNull(payload);
            inAppBackendService.printHttpSuccessForInAppMessageRequest("page impression", payload);
            return Unit.INSTANCE;
        }
        inAppBackendService.printHttpErrorForInAppMessageRequest("page impression", httpResponse.getStatusCode(), httpResponse.getPayload());
        throw new BackendException(httpResponse.getStatusCode(), httpResponse.getPayload(), httpResponse.getRetryAfterSeconds());
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.inAppMessages.internal.backend.IInAppBackendService
    public Object sendIAMImpression(final String str, final String str2, final String str3, String str4, Continuation<? super Unit> continuation) throws BackendException {
        C02181 c02181;
        InAppBackendService inAppBackendService;
        if (continuation instanceof C02181) {
            c02181 = (C02181) continuation;
            if ((c02181.label & Integer.MIN_VALUE) != 0) {
                c02181.label -= Integer.MIN_VALUE;
            } else {
                c02181 = new C02181(continuation);
            }
        } else {
            c02181 = new C02181(continuation);
        }
        C02181 c02182 = c02181;
        Object objPost$default = c02182.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02182.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objPost$default);
            JSONObject jSONObject = new JSONObject(str, str2, str3, this) { // from class: com.onesignal.inAppMessages.internal.backend.impl.InAppBackendService$sendIAMImpression$json$1
                {
                    put("app_id", str);
                    put("player_id", str2);
                    put("variant_id", str3);
                    put("device_type", this._deviceService.getDeviceType().getValue());
                    put("first_impression", true);
                }
            };
            c02182.L$0 = this;
            c02182.label = 1;
            objPost$default = IHttpClient.DefaultImpls.post$default(this._httpClient, "in_app_messages/" + str4 + "/impression", jSONObject, null, c02182, 4, null);
            if (objPost$default == coroutine_suspended) {
                return coroutine_suspended;
            }
            inAppBackendService = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            inAppBackendService = (InAppBackendService) c02182.L$0;
            ResultKt.throwOnFailure(objPost$default);
        }
        HttpResponse httpResponse = (HttpResponse) objPost$default;
        if (httpResponse.isSuccess()) {
            String payload = httpResponse.getPayload();
            Intrinsics.checkNotNull(payload);
            inAppBackendService.printHttpSuccessForInAppMessageRequest(z8.IMPRESSION, payload);
            return Unit.INSTANCE;
        }
        inAppBackendService.printHttpErrorForInAppMessageRequest(z8.IMPRESSION, httpResponse.getStatusCode(), httpResponse.getPayload());
        throw new BackendException(httpResponse.getStatusCode(), httpResponse.getPayload(), httpResponse.getRetryAfterSeconds());
    }

    private final String htmlPathForMessage(String messageId, String variantId, String appId) {
        if (variantId == null) {
            Logging.error$default("Unable to find a variant for in-app message " + messageId, null, 2, null);
            return null;
        }
        return "in_app_messages/" + messageId + "/variants/" + variantId + "/html?app_id=" + appId;
    }

    private final void printHttpSuccessForInAppMessageRequest(String requestType, String response) {
        Logging.debug$default("Successful post for in-app message " + requestType + " request: " + response, null, 2, null);
    }

    private final void printHttpErrorForInAppMessageRequest(String requestType, int statusCode, String response) {
        Logging.error$default("Encountered a " + statusCode + " error while attempting in-app message " + requestType + " request: " + response, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:20:0x0083  */
    /* JADX WARN: Code duplicated, block: B:21:0x008a  */
    /* JADX WARN: Code duplicated, block: B:24:0x00c5 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:25:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:35:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:37:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:44:0x010c  */
    /* JADX WARN: Code duplicated, block: B:47:0x0116  */
    /* JADX WARN: Code duplicated, block: B:49:0x0135 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:52:0x0147  */
    /* JADX WARN: Code duplicated, block: B:54:0x0158 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:56:0x015a  */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x0114 -> B:50:0x0136). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x0133 -> B:50:0x0136). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object attemptFetchWithRetries(java.lang.String r24, com.onesignal.common.consistency.RywData r25, kotlin.jvm.functions.Function0<java.lang.Long> r26, kotlin.coroutines.Continuation<? super java.util.List<com.onesignal.inAppMessages.internal.InAppMessage>> r27) {
        /*
            Method dump skipped, instruction units count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onesignal.inAppMessages.internal.backend.impl.InAppBackendService.attemptFetchWithRetries(java.lang.String, com.onesignal.common.consistency.RywData, kotlin.jvm.functions.Function0, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object fetchInAppMessagesWithoutRywToken(String str, Function0<Long> function0, Continuation<? super List<InAppMessage>> continuation) {
        C02131 c02131;
        InAppBackendService inAppBackendService;
        if (continuation instanceof C02131) {
            c02131 = (C02131) continuation;
            if ((c02131.label & Integer.MIN_VALUE) != 0) {
                c02131.label -= Integer.MIN_VALUE;
            } else {
                c02131 = new C02131(continuation);
            }
        } else {
            c02131 = new C02131(continuation);
        }
        Object obj = c02131.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02131.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            IHttpClient iHttpClient = this._httpClient;
            OptionalHeaders optionalHeaders = new OptionalHeaders(null, null, null, function0.invoke(), 7, null);
            c02131.L$0 = this;
            c02131.label = 1;
            obj = iHttpClient.get(str, optionalHeaders, c02131);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
            inAppBackendService = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            inAppBackendService = (InAppBackendService) c02131.L$0;
            ResultKt.throwOnFailure(obj);
        }
        HttpResponse httpResponse = (HttpResponse) obj;
        if (!httpResponse.isSuccess()) {
            return null;
        }
        String payload = httpResponse.getPayload();
        JSONObject jSONObject = payload != null ? new JSONObject(payload) : null;
        if (jSONObject != null) {
            return inAppBackendService.hydrateInAppMessages(jSONObject);
        }
        return null;
    }

    private final List<InAppMessage> hydrateInAppMessages(JSONObject jsonResponse) throws JSONException {
        if (jsonResponse.has("in_app_messages")) {
            JSONArray iamMessagesAsJSON = jsonResponse.getJSONArray("in_app_messages");
            InAppHydrator inAppHydrator = this._hydrator;
            Intrinsics.checkNotNullExpressionValue(iamMessagesAsJSON, "iamMessagesAsJSON");
            return inAppHydrator.hydrateIAMMessages(iamMessagesAsJSON);
        }
        return null;
    }
}
