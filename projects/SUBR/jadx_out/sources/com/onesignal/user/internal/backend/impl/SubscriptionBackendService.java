package com.onesignal.user.internal.backend.impl;

import com.onesignal.common.JSONObjectExtensionsKt;
import com.onesignal.common.consistency.RywData;
import com.onesignal.common.exceptions.BackendException;
import com.onesignal.core.BuildConfig;
import com.onesignal.core.internal.http.HttpResponse;
import com.onesignal.core.internal.http.IHttpClient;
import com.onesignal.user.internal.backend.ISubscriptionBackendService;
import com.onesignal.user.internal.backend.SubscriptionObject;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: SubscriptionBackendService.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004JA\u0010\u0005\u001a\u0012\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\rH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u000eJ!\u0010\u000f\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0007H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0012J-\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u00142\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0007H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0012J1\u0010\u0015\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0016J+\u0010\u0017\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\rH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0018R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0019"}, d2 = {"Lcom/onesignal/user/internal/backend/impl/SubscriptionBackendService;", "Lcom/onesignal/user/internal/backend/ISubscriptionBackendService;", "_httpClient", "Lcom/onesignal/core/internal/http/IHttpClient;", "(Lcom/onesignal/core/internal/http/IHttpClient;)V", "createSubscription", "Lkotlin/Pair;", "", "Lcom/onesignal/common/consistency/RywData;", "appId", "aliasLabel", "aliasValue", "subscription", "Lcom/onesignal/user/internal/backend/SubscriptionObject;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/user/internal/backend/SubscriptionObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteSubscription", "", "subscriptionId", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getIdentityFromSubscription", "", "transferSubscription", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateSubscription", "(Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/user/internal/backend/SubscriptionObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class SubscriptionBackendService implements ISubscriptionBackendService {
    private final IHttpClient _httpClient;

    /* JADX INFO: renamed from: com.onesignal.user.internal.backend.impl.SubscriptionBackendService$createSubscription$1, reason: invalid class name */
    /* JADX INFO: compiled from: SubscriptionBackendService.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.user.internal.backend.impl.SubscriptionBackendService", f = "SubscriptionBackendService.kt", i = {}, l = {27}, m = "createSubscription", n = {}, s = {})
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
            return SubscriptionBackendService.this.createSubscription(null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.user.internal.backend.impl.SubscriptionBackendService$deleteSubscription$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SubscriptionBackendService.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.user.internal.backend.impl.SubscriptionBackendService", f = "SubscriptionBackendService.kt", i = {}, l = {81}, m = "deleteSubscription", n = {}, s = {})
    static final class C03231 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C03231(Continuation<? super C03231> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SubscriptionBackendService.this.deleteSubscription(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.user.internal.backend.impl.SubscriptionBackendService$getIdentityFromSubscription$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SubscriptionBackendService.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.user.internal.backend.impl.SubscriptionBackendService", f = "SubscriptionBackendService.kt", i = {}, l = {109}, m = "getIdentityFromSubscription", n = {}, s = {})
    static final class C03241 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C03241(Continuation<? super C03241> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SubscriptionBackendService.this.getIdentityFromSubscription(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.user.internal.backend.impl.SubscriptionBackendService$transferSubscription$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SubscriptionBackendService.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.user.internal.backend.impl.SubscriptionBackendService", f = "SubscriptionBackendService.kt", i = {}, l = {98}, m = "transferSubscription", n = {}, s = {})
    static final class C03251 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C03251(Continuation<? super C03251> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SubscriptionBackendService.this.transferSubscription(null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.user.internal.backend.impl.SubscriptionBackendService$updateSubscription$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SubscriptionBackendService.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.user.internal.backend.impl.SubscriptionBackendService", f = "SubscriptionBackendService.kt", i = {}, l = {59}, m = "updateSubscription", n = {}, s = {})
    static final class C03261 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C03261(Continuation<? super C03261> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SubscriptionBackendService.this.updateSubscription(null, null, null, this);
        }
    }

    public SubscriptionBackendService(IHttpClient _httpClient) {
        Intrinsics.checkNotNullParameter(_httpClient, "_httpClient");
        this._httpClient = _httpClient;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.user.internal.backend.ISubscriptionBackendService
    public Object createSubscription(String str, String str2, String str3, SubscriptionObject subscriptionObject, Continuation<? super Pair<String, RywData>> continuation) throws BackendException, JSONException {
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
        AnonymousClass1 anonymousClass2 = anonymousClass1;
        Object objPost$default = anonymousClass2.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass2.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objPost$default);
            JSONObject jSONObjectConvertToJSON = JSONConverter.INSTANCE.convertToJSON(subscriptionObject);
            jSONObjectConvertToJSON.remove("id");
            JSONObject requestJSON = new JSONObject().put("subscription", jSONObjectConvertToJSON);
            Intrinsics.checkNotNullExpressionValue(requestJSON, "requestJSON");
            anonymousClass2.label = 1;
            objPost$default = IHttpClient.DefaultImpls.post$default(this._httpClient, "apps/" + str + "/users/by/" + str2 + '/' + str3 + "/subscriptions", requestJSON, null, anonymousClass2, 4, null);
            if (objPost$default == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objPost$default);
        }
        HttpResponse httpResponse = (HttpResponse) objPost$default;
        if (!httpResponse.isSuccess()) {
            throw new BackendException(httpResponse.getStatusCode(), httpResponse.getPayload(), httpResponse.getRetryAfterSeconds());
        }
        String payload = httpResponse.getPayload();
        JSONObject jSONObject = payload != null ? new JSONObject(payload) : null;
        JSONObject jSONObjectSafeJSONObject = jSONObject != null ? JSONObjectExtensionsKt.safeJSONObject(jSONObject, "subscription") : null;
        if (jSONObjectSafeJSONObject == null || !jSONObjectSafeJSONObject.has("id")) {
            return null;
        }
        String strSafeString = JSONObjectExtensionsKt.safeString(jSONObject, "ryw_token");
        return new Pair(jSONObjectSafeJSONObject.getString("id"), strSafeString != null ? new RywData(strSafeString, JSONObjectExtensionsKt.safeLong(jSONObject, "ryw_delay")) : null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.user.internal.backend.ISubscriptionBackendService
    public Object updateSubscription(String str, String str2, SubscriptionObject subscriptionObject, Continuation<? super RywData> continuation) throws BackendException, JSONException {
        C03261 c03261;
        if (continuation instanceof C03261) {
            c03261 = (C03261) continuation;
            if ((c03261.label & Integer.MIN_VALUE) != 0) {
                c03261.label -= Integer.MIN_VALUE;
            } else {
                c03261 = new C03261(continuation);
            }
        } else {
            c03261 = new C03261(continuation);
        }
        C03261 c03262 = c03261;
        Object objPatch$default = c03262.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c03262.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objPatch$default);
            JSONObject requestJSON = new JSONObject().put("subscription", JSONConverter.INSTANCE.convertToJSON(subscriptionObject));
            Intrinsics.checkNotNullExpressionValue(requestJSON, "requestJSON");
            c03262.label = 1;
            objPatch$default = IHttpClient.DefaultImpls.patch$default(this._httpClient, "apps/" + str + "/subscriptions/" + str2, requestJSON, null, c03262, 4, null);
            if (objPatch$default == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objPatch$default);
        }
        HttpResponse httpResponse = (HttpResponse) objPatch$default;
        if (!httpResponse.isSuccess()) {
            throw new BackendException(httpResponse.getStatusCode(), httpResponse.getPayload(), httpResponse.getRetryAfterSeconds());
        }
        String payload = httpResponse.getPayload();
        JSONObject jSONObject = payload != null ? new JSONObject(payload) : null;
        String strSafeString = jSONObject != null ? JSONObjectExtensionsKt.safeString(jSONObject, "ryw_token") : null;
        Long lSafeLong = jSONObject != null ? JSONObjectExtensionsKt.safeLong(jSONObject, "ryw_delay") : null;
        if (strSafeString != null) {
            return new RywData(strSafeString, lSafeLong);
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.user.internal.backend.ISubscriptionBackendService
    public Object deleteSubscription(String str, String str2, Continuation<? super Unit> continuation) throws BackendException {
        C03231 c03231;
        if (continuation instanceof C03231) {
            c03231 = (C03231) continuation;
            if ((c03231.label & Integer.MIN_VALUE) != 0) {
                c03231.label -= Integer.MIN_VALUE;
            } else {
                c03231 = new C03231(continuation);
            }
        } else {
            c03231 = new C03231(continuation);
        }
        C03231 c03232 = c03231;
        Object objDelete$default = c03232.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c03232.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objDelete$default);
            c03232.label = 1;
            objDelete$default = IHttpClient.DefaultImpls.delete$default(this._httpClient, "apps/" + str + "/subscriptions/" + str2, null, c03232, 2, null);
            if (objDelete$default == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objDelete$default);
        }
        HttpResponse httpResponse = (HttpResponse) objDelete$default;
        if (!httpResponse.isSuccess()) {
            throw new BackendException(httpResponse.getStatusCode(), httpResponse.getPayload(), httpResponse.getRetryAfterSeconds());
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.user.internal.backend.ISubscriptionBackendService
    public Object transferSubscription(String str, String str2, String str3, String str4, Continuation<? super Unit> continuation) throws BackendException, JSONException {
        C03251 c03251;
        if (continuation instanceof C03251) {
            c03251 = (C03251) continuation;
            if ((c03251.label & Integer.MIN_VALUE) != 0) {
                c03251.label -= Integer.MIN_VALUE;
            } else {
                c03251 = new C03251(continuation);
            }
        } else {
            c03251 = new C03251(continuation);
        }
        C03251 c03252 = c03251;
        Object objPatch$default = c03252.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c03252.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objPatch$default);
            JSONObject requestJSON = new JSONObject().put("identity", new JSONObject().put(str3, str4));
            Intrinsics.checkNotNullExpressionValue(requestJSON, "requestJSON");
            c03252.label = 1;
            objPatch$default = IHttpClient.DefaultImpls.patch$default(this._httpClient, "apps/" + str + "/subscriptions/" + str2 + "/owner", requestJSON, null, c03252, 4, null);
            if (objPatch$default == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objPatch$default);
        }
        HttpResponse httpResponse = (HttpResponse) objPatch$default;
        if (!httpResponse.isSuccess()) {
            throw new BackendException(httpResponse.getStatusCode(), httpResponse.getPayload(), httpResponse.getRetryAfterSeconds());
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.user.internal.backend.ISubscriptionBackendService
    public Object getIdentityFromSubscription(String str, String str2, Continuation<? super Map<String, String>> continuation) throws BackendException {
        C03241 c03241;
        Map<String, Object> map;
        if (continuation instanceof C03241) {
            c03241 = (C03241) continuation;
            if ((c03241.label & Integer.MIN_VALUE) != 0) {
                c03241.label -= Integer.MIN_VALUE;
            } else {
                c03241 = new C03241(continuation);
            }
        } else {
            c03241 = new C03241(continuation);
        }
        C03241 c03242 = c03241;
        Object obj = c03242.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c03242.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            c03242.label = 1;
            obj = IHttpClient.DefaultImpls.get$default(this._httpClient, "apps/" + str + "/subscriptions/" + str2 + "/user/identity", null, c03242, 2, null);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        HttpResponse httpResponse = (HttpResponse) obj;
        if (!httpResponse.isSuccess()) {
            throw new BackendException(httpResponse.getStatusCode(), httpResponse.getPayload(), httpResponse.getRetryAfterSeconds());
        }
        String payload = httpResponse.getPayload();
        Intrinsics.checkNotNull(payload);
        JSONObject jSONObjectSafeJSONObject = JSONObjectExtensionsKt.safeJSONObject(new JSONObject(payload), "identity");
        if (jSONObjectSafeJSONObject == null || (map = JSONObjectExtensionsKt.toMap(jSONObjectSafeJSONObject)) == null) {
            return MapsKt.emptyMap();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(map.size()));
        Iterator<T> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            linkedHashMap.put(entry.getKey(), String.valueOf(entry.getValue()));
        }
        return linkedHashMap;
    }
}
