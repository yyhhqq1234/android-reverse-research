package com.onesignal.user.internal.backend.impl;

import com.onesignal.common.JSONObjectExtensionsKt;
import com.onesignal.common.exceptions.BackendException;
import com.onesignal.core.BuildConfig;
import com.onesignal.core.internal.http.HttpResponse;
import com.onesignal.core.internal.http.IHttpClient;
import com.onesignal.user.internal.backend.IIdentityBackendService;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
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

/* JADX INFO: compiled from: IdentityBackendService.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010$\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J1\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\bH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\fJI\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u000e2\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\b0\u000eH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0011"}, d2 = {"Lcom/onesignal/user/internal/backend/impl/IdentityBackendService;", "Lcom/onesignal/user/internal/backend/IIdentityBackendService;", "_httpClient", "Lcom/onesignal/core/internal/http/IHttpClient;", "(Lcom/onesignal/core/internal/http/IHttpClient;)V", "deleteAlias", "", "appId", "", "aliasLabel", "aliasValue", "aliasLabelToDelete", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setAlias", "", "identities", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class IdentityBackendService implements IIdentityBackendService {
    private final IHttpClient _httpClient;

    /* JADX INFO: renamed from: com.onesignal.user.internal.backend.impl.IdentityBackendService$deleteAlias$1, reason: invalid class name */
    /* JADX INFO: compiled from: IdentityBackendService.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.user.internal.backend.impl.IdentityBackendService", f = "IdentityBackendService.kt", i = {}, l = {40}, m = "deleteAlias", n = {}, s = {})
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
            return IdentityBackendService.this.deleteAlias(null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.user.internal.backend.impl.IdentityBackendService$setAlias$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: IdentityBackendService.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.user.internal.backend.impl.IdentityBackendService", f = "IdentityBackendService.kt", i = {}, l = {23}, m = "setAlias", n = {}, s = {})
    static final class C03221 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C03221(Continuation<? super C03221> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return IdentityBackendService.this.setAlias(null, null, null, null, this);
        }
    }

    public IdentityBackendService(IHttpClient _httpClient) {
        Intrinsics.checkNotNullParameter(_httpClient, "_httpClient");
        this._httpClient = _httpClient;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.user.internal.backend.IIdentityBackendService
    public Object setAlias(String str, String str2, String str3, Map<String, String> map, Continuation<? super Map<String, String>> continuation) throws BackendException, JSONException {
        C03221 c03221;
        if (continuation instanceof C03221) {
            c03221 = (C03221) continuation;
            if ((c03221.label & Integer.MIN_VALUE) != 0) {
                c03221.label -= Integer.MIN_VALUE;
            } else {
                c03221 = new C03221(continuation);
            }
        } else {
            c03221 = new C03221(continuation);
        }
        C03221 c03222 = c03221;
        Object objPatch$default = c03222.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c03222.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objPatch$default);
            JSONObject requestJSONObject = new JSONObject().put("identity", JSONObjectExtensionsKt.putMap(new JSONObject(), map));
            Intrinsics.checkNotNullExpressionValue(requestJSONObject, "requestJSONObject");
            c03222.label = 1;
            objPatch$default = IHttpClient.DefaultImpls.patch$default(this._httpClient, "apps/" + str + "/users/by/" + str2 + '/' + str3 + "/identity", requestJSONObject, null, c03222, 4, null);
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
        Intrinsics.checkNotNull(payload);
        JSONObject jSONObject = new JSONObject(payload).getJSONObject("identity");
        Intrinsics.checkNotNullExpressionValue(jSONObject, "responseJSON.getJSONObject(\"identity\")");
        Map<String, Object> map2 = JSONObjectExtensionsKt.toMap(jSONObject);
        LinkedHashMap linkedHashMap = new LinkedHashMap(MapsKt.mapCapacity(map2.size()));
        Iterator<T> it = map2.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            linkedHashMap.put(entry.getKey(), String.valueOf(entry.getValue()));
        }
        return linkedHashMap;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.user.internal.backend.IIdentityBackendService
    public Object deleteAlias(String str, String str2, String str3, String str4, Continuation<? super Unit> continuation) throws BackendException {
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
        Object objDelete$default = anonymousClass2.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass2.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objDelete$default);
            anonymousClass2.label = 1;
            objDelete$default = IHttpClient.DefaultImpls.delete$default(this._httpClient, "apps/" + str + "/users/by/" + str2 + '/' + str3 + "/identity/" + str4, null, anonymousClass2, 2, null);
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
}
