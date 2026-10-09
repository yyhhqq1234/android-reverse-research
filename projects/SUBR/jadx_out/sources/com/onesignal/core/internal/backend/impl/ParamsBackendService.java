package com.onesignal.core.internal.backend.impl;

import com.google.firebase.messaging.Constants;
import com.onesignal.common.IDManager;
import com.onesignal.common.JSONObjectExtensionsKt;
import com.onesignal.common.exceptions.BackendException;
import com.onesignal.core.BuildConfig;
import com.onesignal.core.internal.backend.FCMParamsObject;
import com.onesignal.core.internal.backend.IParamsBackendService;
import com.onesignal.core.internal.backend.InfluenceParamsObject;
import com.onesignal.core.internal.backend.ParamsObject;
import com.onesignal.core.internal.http.CacheKeys;
import com.onesignal.core.internal.http.HttpResponse;
import com.onesignal.core.internal.http.IHttpClient;
import com.onesignal.core.internal.http.impl.OptionalHeaders;
import com.onesignal.debug.LogLevel;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.session.internal.outcomes.impl.OutcomeConstants;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.scheduling.WorkQueueKt;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: ParamsBackendService.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J#\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\nJ\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000f"}, d2 = {"Lcom/onesignal/core/internal/backend/impl/ParamsBackendService;", "Lcom/onesignal/core/internal/backend/IParamsBackendService;", "_http", "Lcom/onesignal/core/internal/http/IHttpClient;", "(Lcom/onesignal/core/internal/http/IHttpClient;)V", "fetchParams", "Lcom/onesignal/core/internal/backend/ParamsObject;", "appId", "", "subscriptionId", "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "processOutcomeJson", "Lcom/onesignal/core/internal/backend/InfluenceParamsObject;", "outcomeJson", "Lorg/json/JSONObject;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ParamsBackendService implements IParamsBackendService {
    private final IHttpClient _http;

    /* JADX INFO: renamed from: com.onesignal.core.internal.backend.impl.ParamsBackendService$fetchParams$1, reason: invalid class name */
    /* JADX INFO: compiled from: ParamsBackendService.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.core.internal.backend.impl.ParamsBackendService", f = "ParamsBackendService.kt", i = {0}, l = {35}, m = "fetchParams", n = {"this"}, s = {"L$0"})
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
            return ParamsBackendService.this.fetchParams(null, null, this);
        }
    }

    public ParamsBackendService(IHttpClient _http) {
        Intrinsics.checkNotNullParameter(_http, "_http");
        this._http = _http;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001c  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.onesignal.core.internal.backend.IParamsBackendService
    public Object fetchParams(String str, String str2, Continuation<? super ParamsObject> continuation) throws BackendException, JSONException {
        AnonymousClass1 anonymousClass1;
        final ParamsBackendService paramsBackendService;
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
            Logging.log(LogLevel.DEBUG, "ParamsBackendService.fetchParams(appId: " + str + ", subscriptionId: " + str2 + ')');
            StringBuilder sb = new StringBuilder("apps/");
            sb.append(str);
            sb.append("/android_params.js");
            String string = sb.toString();
            if (str2 != null && !IDManager.INSTANCE.isLocalId(str2)) {
                string = string + "?player_id=" + str2;
            }
            IHttpClient iHttpClient = this._http;
            OptionalHeaders optionalHeaders = new OptionalHeaders(CacheKeys.REMOTE_PARAMS, null, null, null, 14, null);
            anonymousClass1.L$0 = this;
            anonymousClass1.label = 1;
            obj = iHttpClient.get(string, optionalHeaders, anonymousClass1);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
            paramsBackendService = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            paramsBackendService = (ParamsBackendService) anonymousClass1.L$0;
            ResultKt.throwOnFailure(obj);
        }
        HttpResponse httpResponse = (HttpResponse) obj;
        if (!httpResponse.isSuccess()) {
            throw new BackendException(httpResponse.getStatusCode(), httpResponse.getPayload(), httpResponse.getRetryAfterSeconds());
        }
        String payload = httpResponse.getPayload();
        Intrinsics.checkNotNull(payload);
        JSONObject jSONObject = new JSONObject(payload);
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        JSONObjectExtensionsKt.expandJSONObject(jSONObject, "outcomes", new Function1<JSONObject, Unit>() { // from class: com.onesignal.core.internal.backend.impl.ParamsBackendService.fetchParams.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(JSONObject jSONObject2) {
                invoke2(jSONObject2);
                return Unit.INSTANCE;
            }

            /* JADX WARN: Type inference failed for: r3v1, types: [T, com.onesignal.core.internal.backend.InfluenceParamsObject] */
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(JSONObject it) {
                Intrinsics.checkNotNullParameter(it, "it");
                objectRef.element = paramsBackendService.processOutcomeJson(it);
            }
        });
        final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        JSONObjectExtensionsKt.expandJSONObject(jSONObject, Constants.ScionAnalytics.ORIGIN_FCM, new Function1<JSONObject, Unit>() { // from class: com.onesignal.core.internal.backend.impl.ParamsBackendService.fetchParams.3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(JSONObject jSONObject2) {
                invoke2(jSONObject2);
                return Unit.INSTANCE;
            }

            /* JADX WARN: Type inference failed for: r3v1, types: [T, com.onesignal.core.internal.backend.FCMParamsObject] */
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(JSONObject it) {
                Intrinsics.checkNotNullParameter(it, "it");
                Ref.ObjectRef<FCMParamsObject> objectRef3 = objectRef2;
                String strSafeString = JSONObjectExtensionsKt.safeString(it, "api_key");
                objectRef3.element = new FCMParamsObject(JSONObjectExtensionsKt.safeString(it, "project_id"), JSONObjectExtensionsKt.safeString(it, "app_id"), strSafeString);
            }
        });
        String strSafeString = JSONObjectExtensionsKt.safeString(jSONObject, "android_sender_id");
        Boolean boolSafeBool = JSONObjectExtensionsKt.safeBool(jSONObject, "enterp");
        Boolean boolSafeBool2 = JSONObjectExtensionsKt.safeBool(jSONObject, "require_ident_auth");
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("chnl_lst");
        Boolean boolSafeBool3 = JSONObjectExtensionsKt.safeBool(jSONObject, "fba");
        Boolean boolSafeBool4 = JSONObjectExtensionsKt.safeBool(jSONObject, "restore_ttl_filter");
        Boolean boolSafeBool5 = JSONObjectExtensionsKt.safeBool(jSONObject, "clear_group_on_summary_click");
        Boolean boolSafeBool6 = JSONObjectExtensionsKt.safeBool(jSONObject, "receive_receipts_enable");
        Boolean boolSafeBool7 = JSONObjectExtensionsKt.safeBool(jSONObject, "disable_gms_missing_prompt");
        Boolean boolSafeBool8 = JSONObjectExtensionsKt.safeBool(jSONObject, "unsubscribe_on_notifications_disabled");
        Boolean boolSafeBool9 = JSONObjectExtensionsKt.safeBool(jSONObject, "location_shared");
        Boolean boolSafeBool10 = JSONObjectExtensionsKt.safeBool(jSONObject, "requires_user_privacy_consent");
        Long lSafeLong = JSONObjectExtensionsKt.safeLong(jSONObject, "oprepo_execution_interval");
        InfluenceParamsObject influenceParamsObject = (InfluenceParamsObject) objectRef.element;
        InfluenceParamsObject influenceParamsObject2 = influenceParamsObject == null ? new InfluenceParamsObject(null, null, null, null, null, null, null, WorkQueueKt.MASK, null) : influenceParamsObject;
        FCMParamsObject fCMParamsObject = (FCMParamsObject) objectRef2.element;
        return new ParamsObject(strSafeString, boolSafeBool, boolSafeBool2, jSONArrayOptJSONArray, boolSafeBool3, boolSafeBool4, boolSafeBool5, boolSafeBool6, boolSafeBool7, boolSafeBool8, boolSafeBool9, boolSafeBool10, lSafeLong, influenceParamsObject2, fCMParamsObject == null ? new FCMParamsObject(null, null, null, 7, null) : fCMParamsObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final InfluenceParamsObject processOutcomeJson(JSONObject outcomeJson) throws JSONException {
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        final Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        final Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
        final Ref.ObjectRef objectRef4 = new Ref.ObjectRef();
        final Ref.ObjectRef objectRef5 = new Ref.ObjectRef();
        final Ref.ObjectRef objectRef6 = new Ref.ObjectRef();
        final Ref.ObjectRef objectRef7 = new Ref.ObjectRef();
        JSONObjectExtensionsKt.expandJSONObject(outcomeJson, "direct", new Function1<JSONObject, Unit>() { // from class: com.onesignal.core.internal.backend.impl.ParamsBackendService.processOutcomeJson.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(JSONObject jSONObject) {
                invoke2(jSONObject);
                return Unit.INSTANCE;
            }

            /* JADX WARN: Type inference failed for: r3v1, types: [T, java.lang.Boolean] */
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(JSONObject it) {
                Intrinsics.checkNotNullParameter(it, "it");
                objectRef5.element = JSONObjectExtensionsKt.safeBool(it, "enabled");
            }
        });
        JSONObjectExtensionsKt.expandJSONObject(outcomeJson, OutcomeConstants.INDIRECT, new Function1<JSONObject, Unit>() { // from class: com.onesignal.core.internal.backend.impl.ParamsBackendService.processOutcomeJson.2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(JSONObject jSONObject) throws JSONException {
                invoke2(jSONObject);
                return Unit.INSTANCE;
            }

            /* JADX WARN: Type inference failed for: r1v1, types: [T, java.lang.Boolean] */
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(JSONObject indirectJSON) throws JSONException {
                Intrinsics.checkNotNullParameter(indirectJSON, "indirectJSON");
                objectRef6.element = JSONObjectExtensionsKt.safeBool(indirectJSON, "enabled");
                final Ref.ObjectRef<Integer> objectRef8 = objectRef;
                final Ref.ObjectRef<Integer> objectRef9 = objectRef2;
                JSONObjectExtensionsKt.expandJSONObject(indirectJSON, "notification_attribution", new Function1<JSONObject, Unit>() { // from class: com.onesignal.core.internal.backend.impl.ParamsBackendService.processOutcomeJson.2.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(JSONObject jSONObject) {
                        invoke2(jSONObject);
                        return Unit.INSTANCE;
                    }

                    /* JADX WARN: Type inference failed for: r1v1, types: [T, java.lang.Integer] */
                    /* JADX WARN: Type inference failed for: r3v1, types: [T, java.lang.Integer] */
                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(JSONObject it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        objectRef8.element = JSONObjectExtensionsKt.safeInt(it, "minutes_since_displayed");
                        objectRef9.element = JSONObjectExtensionsKt.safeInt(it, "limit");
                    }
                });
                final Ref.ObjectRef<Integer> objectRef10 = objectRef3;
                final Ref.ObjectRef<Integer> objectRef11 = objectRef4;
                JSONObjectExtensionsKt.expandJSONObject(indirectJSON, "in_app_message_attribution", new Function1<JSONObject, Unit>() { // from class: com.onesignal.core.internal.backend.impl.ParamsBackendService.processOutcomeJson.2.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(JSONObject jSONObject) {
                        invoke2(jSONObject);
                        return Unit.INSTANCE;
                    }

                    /* JADX WARN: Type inference failed for: r1v1, types: [T, java.lang.Integer] */
                    /* JADX WARN: Type inference failed for: r3v1, types: [T, java.lang.Integer] */
                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(JSONObject it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        objectRef10.element = JSONObjectExtensionsKt.safeInt(it, "minutes_since_displayed");
                        objectRef11.element = JSONObjectExtensionsKt.safeInt(it, "limit");
                    }
                });
            }
        });
        JSONObjectExtensionsKt.expandJSONObject(outcomeJson, "unattributed", new Function1<JSONObject, Unit>() { // from class: com.onesignal.core.internal.backend.impl.ParamsBackendService.processOutcomeJson.3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(JSONObject jSONObject) {
                invoke2(jSONObject);
                return Unit.INSTANCE;
            }

            /* JADX WARN: Type inference failed for: r3v1, types: [T, java.lang.Boolean] */
            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(JSONObject it) {
                Intrinsics.checkNotNullParameter(it, "it");
                objectRef7.element = JSONObjectExtensionsKt.safeBool(it, "enabled");
            }
        });
        return new InfluenceParamsObject((Integer) objectRef.element, (Integer) objectRef2.element, (Integer) objectRef3.element, (Integer) objectRef4.element, (Boolean) objectRef5.element, (Boolean) objectRef6.element, (Boolean) objectRef7.element);
    }
}
