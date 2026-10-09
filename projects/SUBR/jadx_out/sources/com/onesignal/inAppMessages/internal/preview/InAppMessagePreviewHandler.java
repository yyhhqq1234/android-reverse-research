package com.onesignal.inAppMessages.internal.preview;

import android.app.Activity;
import com.onesignal.core.internal.application.IApplicationService;
import com.onesignal.core.internal.startup.IStartableService;
import com.onesignal.core.internal.time.ITime;
import com.onesignal.inAppMessages.BuildConfig;
import com.onesignal.inAppMessages.internal.display.IInAppDisplayer;
import com.onesignal.inAppMessages.internal.state.InAppStateService;
import com.onesignal.notifications.internal.INotificationActivityOpener;
import com.onesignal.notifications.internal.common.NotificationConstants;
import com.onesignal.notifications.internal.common.NotificationGenerationJob;
import com.onesignal.notifications.internal.common.NotificationHelper;
import com.onesignal.notifications.internal.display.INotificationDisplayer;
import com.onesignal.notifications.internal.lifecycle.INotificationLifecycleCallback;
import com.onesignal.notifications.internal.lifecycle.INotificationLifecycleService;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: InAppMessagePreviewHandler.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B=\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010¢\u0006\u0002\u0010\u0011J!\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0018J\u0019\u0010\u0019\u001a\u00020\u00132\u0006\u0010\u001a\u001a\u00020\u0017H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u001bJ\u0012\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u0017H\u0002J\b\u0010\u001f\u001a\u00020 H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006!"}, d2 = {"Lcom/onesignal/inAppMessages/internal/preview/InAppMessagePreviewHandler;", "Lcom/onesignal/core/internal/startup/IStartableService;", "Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleCallback;", "_iamDisplayer", "Lcom/onesignal/inAppMessages/internal/display/IInAppDisplayer;", "_applicationService", "Lcom/onesignal/core/internal/application/IApplicationService;", "_notificationDisplayer", "Lcom/onesignal/notifications/internal/display/INotificationDisplayer;", "_notificationActivityOpener", "Lcom/onesignal/notifications/internal/INotificationActivityOpener;", "_notificationLifeCycle", "Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;", "_state", "Lcom/onesignal/inAppMessages/internal/state/InAppStateService;", "_time", "Lcom/onesignal/core/internal/time/ITime;", "(Lcom/onesignal/inAppMessages/internal/display/IInAppDisplayer;Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/notifications/internal/display/INotificationDisplayer;Lcom/onesignal/notifications/internal/INotificationActivityOpener;Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;Lcom/onesignal/inAppMessages/internal/state/InAppStateService;Lcom/onesignal/core/internal/time/ITime;)V", "canOpenNotification", "", "activity", "Landroid/app/Activity;", "jsonData", "Lorg/json/JSONObject;", "(Landroid/app/Activity;Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "canReceiveNotification", "jsonPayload", "(Lorg/json/JSONObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "inAppPreviewPushUUID", "", "payload", "start", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class InAppMessagePreviewHandler implements IStartableService, INotificationLifecycleCallback {
    private final IApplicationService _applicationService;
    private final IInAppDisplayer _iamDisplayer;
    private final INotificationActivityOpener _notificationActivityOpener;
    private final INotificationDisplayer _notificationDisplayer;
    private final INotificationLifecycleService _notificationLifeCycle;
    private final InAppStateService _state;
    private final ITime _time;

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.preview.InAppMessagePreviewHandler$canOpenNotification$1, reason: invalid class name */
    /* JADX INFO: compiled from: InAppMessagePreviewHandler.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.preview.InAppMessagePreviewHandler", f = "InAppMessagePreviewHandler.kt", i = {0, 0, 1}, l = {58, 61}, m = "canOpenNotification", n = {"this", "previewUUID", "this"}, s = {"L$0", "L$1", "L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return InAppMessagePreviewHandler.this.canOpenNotification(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.inAppMessages.internal.preview.InAppMessagePreviewHandler$canReceiveNotification$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: InAppMessagePreviewHandler.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.inAppMessages.internal.preview.InAppMessagePreviewHandler", f = "InAppMessagePreviewHandler.kt", i = {0}, l = {40, 46}, m = "canReceiveNotification", n = {"this"}, s = {"L$0"})
    static final class C02401 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02401(Continuation<? super C02401> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return InAppMessagePreviewHandler.this.canReceiveNotification(null, this);
        }
    }

    public InAppMessagePreviewHandler(IInAppDisplayer _iamDisplayer, IApplicationService _applicationService, INotificationDisplayer _notificationDisplayer, INotificationActivityOpener _notificationActivityOpener, INotificationLifecycleService _notificationLifeCycle, InAppStateService _state, ITime _time) {
        Intrinsics.checkNotNullParameter(_iamDisplayer, "_iamDisplayer");
        Intrinsics.checkNotNullParameter(_applicationService, "_applicationService");
        Intrinsics.checkNotNullParameter(_notificationDisplayer, "_notificationDisplayer");
        Intrinsics.checkNotNullParameter(_notificationActivityOpener, "_notificationActivityOpener");
        Intrinsics.checkNotNullParameter(_notificationLifeCycle, "_notificationLifeCycle");
        Intrinsics.checkNotNullParameter(_state, "_state");
        Intrinsics.checkNotNullParameter(_time, "_time");
        this._iamDisplayer = _iamDisplayer;
        this._applicationService = _applicationService;
        this._notificationDisplayer = _notificationDisplayer;
        this._notificationActivityOpener = _notificationActivityOpener;
        this._notificationLifeCycle = _notificationLifeCycle;
        this._state = _state;
        this._time = _time;
    }

    @Override // com.onesignal.core.internal.startup.IStartableService
    public void start() {
        this._notificationLifeCycle.setInternalNotificationLifecycleCallback(this);
    }

    /* JADX WARN: Code duplicated, block: B:28:0x006e  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.notifications.internal.lifecycle.INotificationLifecycleCallback
    public Object canReceiveNotification(JSONObject jSONObject, Continuation<? super Boolean> continuation) {
        C02401 c02401;
        InAppMessagePreviewHandler inAppMessagePreviewHandler;
        if (continuation instanceof C02401) {
            c02401 = (C02401) continuation;
            if ((c02401.label & Integer.MIN_VALUE) != 0) {
                c02401.label -= Integer.MIN_VALUE;
            } else {
                c02401 = new C02401(continuation);
            }
        } else {
            c02401 = new C02401(continuation);
        }
        Object objDisplayPreviewMessage = c02401.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02401.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objDisplayPreviewMessage);
            String strInAppPreviewPushUUID = inAppPreviewPushUUID(jSONObject);
            if (strInAppPreviewPushUUID == null) {
                return Boxing.boxBoolean(true);
            }
            if (this._applicationService.isInForeground()) {
                this._state.setInAppMessageIdShowing(strInAppPreviewPushUUID);
                IInAppDisplayer iInAppDisplayer = this._iamDisplayer;
                c02401.L$0 = this;
                c02401.label = 1;
                objDisplayPreviewMessage = iInAppDisplayer.displayPreviewMessage(strInAppPreviewPushUUID, c02401);
                if (objDisplayPreviewMessage == coroutine_suspended) {
                    return coroutine_suspended;
                }
                inAppMessagePreviewHandler = this;
                if (!((Boolean) objDisplayPreviewMessage).booleanValue()) {
                    inAppMessagePreviewHandler._state.setInAppMessageIdShowing(null);
                }
            } else {
                NotificationGenerationJob notificationGenerationJob = new NotificationGenerationJob(jSONObject, this._time);
                INotificationDisplayer iNotificationDisplayer = this._notificationDisplayer;
                c02401.label = 2;
                if (iNotificationDisplayer.displayNotification(notificationGenerationJob, c02401) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        } else if (i == 1) {
            inAppMessagePreviewHandler = (InAppMessagePreviewHandler) c02401.L$0;
            ResultKt.throwOnFailure(objDisplayPreviewMessage);
            if (!((Boolean) objDisplayPreviewMessage).booleanValue()) {
                inAppMessagePreviewHandler._state.setInAppMessageIdShowing(null);
            }
        } else {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objDisplayPreviewMessage);
        }
        return Boxing.boxBoolean(false);
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0090  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.notifications.internal.lifecycle.INotificationLifecycleCallback
    public Object canOpenNotification(Activity activity, JSONObject jSONObject, Continuation<? super Boolean> continuation) {
        AnonymousClass1 anonymousClass1;
        String strInAppPreviewPushUUID;
        InAppMessagePreviewHandler inAppMessagePreviewHandler;
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
        Object objDisplayPreviewMessage = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objDisplayPreviewMessage);
            strInAppPreviewPushUUID = inAppPreviewPushUUID(jSONObject);
            if (strInAppPreviewPushUUID == null) {
                return Boxing.boxBoolean(true);
            }
            INotificationActivityOpener iNotificationActivityOpener = this._notificationActivityOpener;
            JSONArray jSONArrayPut = new JSONArray().put(jSONObject);
            Intrinsics.checkNotNullExpressionValue(jSONArrayPut, "JSONArray().put(jsonData)");
            anonymousClass1.L$0 = this;
            anonymousClass1.L$1 = strInAppPreviewPushUUID;
            anonymousClass1.label = 1;
            if (iNotificationActivityOpener.openDestinationActivity(activity, jSONArrayPut, anonymousClass1) == coroutine_suspended) {
                return coroutine_suspended;
            }
            inAppMessagePreviewHandler = this;
        } else {
            if (i == 1) {
                String str = (String) anonymousClass1.L$1;
                InAppMessagePreviewHandler inAppMessagePreviewHandler2 = (InAppMessagePreviewHandler) anonymousClass1.L$0;
                ResultKt.throwOnFailure(objDisplayPreviewMessage);
                strInAppPreviewPushUUID = str;
                inAppMessagePreviewHandler = inAppMessagePreviewHandler2;
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                inAppMessagePreviewHandler = (InAppMessagePreviewHandler) anonymousClass1.L$0;
                ResultKt.throwOnFailure(objDisplayPreviewMessage);
            }
            if (!((Boolean) objDisplayPreviewMessage).booleanValue()) {
                inAppMessagePreviewHandler._state.setInAppMessageIdShowing(null);
            }
            return Boxing.boxBoolean(false);
        }
        inAppMessagePreviewHandler._state.setInAppMessageIdShowing(strInAppPreviewPushUUID);
        IInAppDisplayer iInAppDisplayer = inAppMessagePreviewHandler._iamDisplayer;
        anonymousClass1.L$0 = inAppMessagePreviewHandler;
        anonymousClass1.L$1 = null;
        anonymousClass1.label = 2;
        objDisplayPreviewMessage = iInAppDisplayer.displayPreviewMessage(strInAppPreviewPushUUID, anonymousClass1);
        if (objDisplayPreviewMessage == coroutine_suspended) {
            return coroutine_suspended;
        }
        if (!((Boolean) objDisplayPreviewMessage).booleanValue()) {
            inAppMessagePreviewHandler._state.setInAppMessageIdShowing(null);
        }
        return Boxing.boxBoolean(false);
    }

    private final String inAppPreviewPushUUID(JSONObject payload) {
        JSONObject jSONObjectOptJSONObject;
        try {
            JSONObject customJSONObject = NotificationHelper.INSTANCE.getCustomJSONObject(payload);
            if (!customJSONObject.has("a") || (jSONObjectOptJSONObject = customJSONObject.optJSONObject("a")) == null) {
                return null;
            }
            if (jSONObjectOptJSONObject.has(NotificationConstants.IAM_PREVIEW_KEY)) {
                return jSONObjectOptJSONObject.optString(NotificationConstants.IAM_PREVIEW_KEY);
            }
            return null;
        } catch (JSONException unused) {
            return null;
        }
    }
}
