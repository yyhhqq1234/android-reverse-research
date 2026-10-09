package com.onesignal.notifications.internal.open.impl;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.onesignal.common.JSONUtils;
import com.onesignal.notifications.BuildConfig;
import com.onesignal.notifications.internal.common.NotificationConstants;
import com.onesignal.notifications.internal.common.NotificationFormatHelper;
import com.onesignal.notifications.internal.common.NotificationHelper;
import com.onesignal.notifications.internal.lifecycle.INotificationLifecycleService;
import com.onesignal.notifications.internal.open.INotificationOpenedProcessorHMS;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: NotificationOpenedProcessorHMS.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0014\u0010\u0005\u001a\u0004\u0018\u00010\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0002J#\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\rJ!\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u0006H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0006H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0012"}, d2 = {"Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessorHMS;", "Lcom/onesignal/notifications/internal/open/INotificationOpenedProcessorHMS;", "_lifecycleService", "Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;", "(Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;)V", "covertHMSOpenIntentToJson", "Lorg/json/JSONObject;", "intent", "Landroid/content/Intent;", "handleHMSNotificationOpenIntent", "", "activity", "Landroid/app/Activity;", "(Landroid/app/Activity;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "handleProcessJsonOpenData", "jsonData", "(Landroid/app/Activity;Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "reformatButtonClickAction", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class NotificationOpenedProcessorHMS implements INotificationOpenedProcessorHMS {
    private final INotificationLifecycleService _lifecycleService;

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.open.impl.NotificationOpenedProcessorHMS$handleProcessJsonOpenData$1, reason: invalid class name */
    /* JADX INFO: compiled from: NotificationOpenedProcessorHMS.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.open.impl.NotificationOpenedProcessorHMS", f = "NotificationOpenedProcessorHMS.kt", i = {0, 0, 0}, l = {62, 66}, m = "handleProcessJsonOpenData", n = {"this", "activity", "jsonData"}, s = {"L$0", "L$1", "L$2"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return NotificationOpenedProcessorHMS.this.handleProcessJsonOpenData(null, null, this);
        }
    }

    public NotificationOpenedProcessorHMS(INotificationLifecycleService _lifecycleService) {
        Intrinsics.checkNotNullParameter(_lifecycleService, "_lifecycleService");
        this._lifecycleService = _lifecycleService;
    }

    @Override // com.onesignal.notifications.internal.open.INotificationOpenedProcessorHMS
    public Object handleHMSNotificationOpenIntent(Activity activity, Intent intent, Continuation<? super Unit> continuation) {
        if (intent == null) {
            return Unit.INSTANCE;
        }
        JSONObject jSONObjectCovertHMSOpenIntentToJson = covertHMSOpenIntentToJson(intent);
        if (jSONObjectCovertHMSOpenIntentToJson == null) {
            return Unit.INSTANCE;
        }
        Object objHandleProcessJsonOpenData = handleProcessJsonOpenData(activity, jSONObjectCovertHMSOpenIntentToJson, continuation);
        return objHandleProcessJsonOpenData == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objHandleProcessJsonOpenData : Unit.INSTANCE;
    }

    private final JSONObject covertHMSOpenIntentToJson(Intent intent) {
        if (!NotificationFormatHelper.INSTANCE.isOneSignalIntent(intent)) {
            return null;
        }
        Intrinsics.checkNotNull(intent);
        Bundle extras = intent.getExtras();
        JSONUtils jSONUtils = JSONUtils.INSTANCE;
        Intrinsics.checkNotNull(extras);
        JSONObject jSONObjectBundleAsJSONObject = jSONUtils.bundleAsJSONObject(extras);
        reformatButtonClickAction(jSONObjectBundleAsJSONObject);
        return jSONObjectBundleAsJSONObject;
    }

    private final void reformatButtonClickAction(JSONObject jsonData) {
        try {
            String str = (String) NotificationHelper.INSTANCE.getCustomJSONObject(jsonData).remove(NotificationConstants.GENERATE_NOTIFICATION_BUNDLE_KEY_ACTION_ID);
            if (str == null) {
                return;
            }
            jsonData.put(NotificationConstants.GENERATE_NOTIFICATION_BUNDLE_KEY_ACTION_ID, str);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object handleProcessJsonOpenData(Activity activity, JSONObject jSONObject, Continuation<? super Unit> continuation) {
        AnonymousClass1 anonymousClass1;
        NotificationOpenedProcessorHMS notificationOpenedProcessorHMS;
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
        Object objCanOpenNotification = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objCanOpenNotification);
            INotificationLifecycleService iNotificationLifecycleService = this._lifecycleService;
            anonymousClass1.L$0 = this;
            anonymousClass1.L$1 = activity;
            anonymousClass1.L$2 = jSONObject;
            anonymousClass1.label = 1;
            objCanOpenNotification = iNotificationLifecycleService.canOpenNotification(activity, jSONObject, anonymousClass1);
            if (objCanOpenNotification == coroutine_suspended) {
                return coroutine_suspended;
            }
            notificationOpenedProcessorHMS = this;
        } else {
            if (i == 1) {
                jSONObject = (JSONObject) anonymousClass1.L$2;
                activity = (Activity) anonymousClass1.L$1;
                notificationOpenedProcessorHMS = (NotificationOpenedProcessorHMS) anonymousClass1.L$0;
                ResultKt.throwOnFailure(objCanOpenNotification);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objCanOpenNotification);
            }
            return Unit.INSTANCE;
        }
        if (!((Boolean) objCanOpenNotification).booleanValue()) {
            return Unit.INSTANCE;
        }
        INotificationLifecycleService iNotificationLifecycleService2 = notificationOpenedProcessorHMS._lifecycleService;
        JSONArray jSONArrayWrapInJsonArray = JSONUtils.INSTANCE.wrapInJsonArray(jSONObject);
        anonymousClass1.L$0 = null;
        anonymousClass1.L$1 = null;
        anonymousClass1.L$2 = null;
        anonymousClass1.label = 2;
        if (iNotificationLifecycleService2.notificationOpened(activity, jSONArrayWrapInJsonArray, anonymousClass1) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }
}
