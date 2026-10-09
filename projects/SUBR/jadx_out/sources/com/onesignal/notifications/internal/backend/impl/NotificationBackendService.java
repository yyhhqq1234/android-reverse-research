package com.onesignal.notifications.internal.backend.impl;

import com.onesignal.common.exceptions.BackendException;
import com.onesignal.core.internal.database.impl.OneSignalDbContract;
import com.onesignal.core.internal.device.IDeviceService;
import com.onesignal.core.internal.http.HttpResponse;
import com.onesignal.core.internal.http.IHttpClient;
import com.onesignal.notifications.BuildConfig;
import com.onesignal.notifications.internal.backend.INotificationBackendService;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: NotificationBackendService.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J1\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\rJ1\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\fH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\rR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000f"}, d2 = {"Lcom/onesignal/notifications/internal/backend/impl/NotificationBackendService;", "Lcom/onesignal/notifications/internal/backend/INotificationBackendService;", "_httpClient", "Lcom/onesignal/core/internal/http/IHttpClient;", "(Lcom/onesignal/core/internal/http/IHttpClient;)V", "updateNotificationAsOpened", "", "appId", "", "notificationId", "subscriptionId", "deviceType", "Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onesignal/core/internal/device/IDeviceService$DeviceType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateNotificationAsReceived", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class NotificationBackendService implements INotificationBackendService {
    private final IHttpClient _httpClient;

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.backend.impl.NotificationBackendService$updateNotificationAsOpened$1, reason: invalid class name */
    /* JADX INFO: compiled from: NotificationBackendService.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.backend.impl.NotificationBackendService", f = "NotificationBackendService.kt", i = {}, l = {43}, m = "updateNotificationAsOpened", n = {}, s = {})
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
            return NotificationBackendService.this.updateNotificationAsOpened(null, null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.backend.impl.NotificationBackendService$updateNotificationAsReceived$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationBackendService.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.backend.impl.NotificationBackendService", f = "NotificationBackendService.kt", i = {}, l = {24}, m = "updateNotificationAsReceived", n = {}, s = {})
    static final class C02571 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C02571(Continuation<? super C02571> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return NotificationBackendService.this.updateNotificationAsReceived(null, null, null, null, this);
        }
    }

    public NotificationBackendService(IHttpClient _httpClient) {
        Intrinsics.checkNotNullParameter(_httpClient, "_httpClient");
        this._httpClient = _httpClient;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.notifications.internal.backend.INotificationBackendService
    public Object updateNotificationAsReceived(String str, String str2, String str3, IDeviceService.DeviceType deviceType, Continuation<? super Unit> continuation) throws BackendException, JSONException {
        C02571 c02571;
        if (continuation instanceof C02571) {
            c02571 = (C02571) continuation;
            if ((c02571.label & Integer.MIN_VALUE) != 0) {
                c02571.label -= Integer.MIN_VALUE;
            } else {
                c02571 = new C02571(continuation);
            }
        } else {
            c02571 = new C02571(continuation);
        }
        C02571 c02572 = c02571;
        Object objPut$default = c02572.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02572.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objPut$default);
            JSONObject jSONObjectPut = new JSONObject().put("app_id", str).put("player_id", str3).put("device_type", deviceType.getValue());
            Intrinsics.checkNotNullExpressionValue(jSONObjectPut, "JSONObject()\n           …_type\", deviceType.value)");
            c02572.label = 1;
            objPut$default = IHttpClient.DefaultImpls.put$default(this._httpClient, "notifications/" + str2 + "/report_received", jSONObjectPut, null, c02572, 4, null);
            if (objPut$default == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objPut$default);
        }
        HttpResponse httpResponse = (HttpResponse) objPut$default;
        if (!httpResponse.isSuccess()) {
            throw new BackendException(httpResponse.getStatusCode(), httpResponse.getPayload(), httpResponse.getRetryAfterSeconds());
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.notifications.internal.backend.INotificationBackendService
    public Object updateNotificationAsOpened(String str, String str2, String str3, IDeviceService.DeviceType deviceType, Continuation<? super Unit> continuation) throws BackendException, JSONException {
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
        Object objPut$default = anonymousClass2.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass2.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objPut$default);
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("app_id", str);
            jSONObject.put("player_id", str3);
            jSONObject.put(OneSignalDbContract.NotificationTable.COLUMN_NAME_OPENED, true);
            jSONObject.put("device_type", deviceType.getValue());
            anonymousClass2.label = 1;
            objPut$default = IHttpClient.DefaultImpls.put$default(this._httpClient, "notifications/" + str2, jSONObject, null, anonymousClass2, 4, null);
            if (objPut$default == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objPut$default);
        }
        HttpResponse httpResponse = (HttpResponse) objPut$default;
        if (!httpResponse.isSuccess()) {
            throw new BackendException(httpResponse.getStatusCode(), httpResponse.getPayload(), httpResponse.getRetryAfterSeconds());
        }
        return Unit.INSTANCE;
    }
}
