package com.onesignal.notifications.internal.listeners;

import android.app.Activity;
import com.onesignal.common.JSONUtils;
import com.onesignal.core.internal.application.IApplicationService;
import com.onesignal.core.internal.config.ConfigModelStore;
import com.onesignal.core.internal.device.IDeviceService;
import com.onesignal.core.internal.startup.IStartableService;
import com.onesignal.core.internal.time.ITime;
import com.onesignal.notifications.BuildConfig;
import com.onesignal.notifications.internal.INotificationActivityOpener;
import com.onesignal.notifications.internal.NotificationClickEvent;
import com.onesignal.notifications.internal.analytics.IAnalyticsTracker;
import com.onesignal.notifications.internal.backend.INotificationBackendService;
import com.onesignal.notifications.internal.common.NotificationConstants;
import com.onesignal.notifications.internal.common.NotificationFormatHelper;
import com.onesignal.notifications.internal.common.NotificationGenerationJob;
import com.onesignal.notifications.internal.common.NotificationHelper;
import com.onesignal.notifications.internal.common.OSNotificationOpenAppSettings;
import com.onesignal.notifications.internal.lifecycle.INotificationLifecycleEventHandler;
import com.onesignal.notifications.internal.lifecycle.INotificationLifecycleService;
import com.onesignal.notifications.internal.receivereceipt.IReceiveReceiptWorkManager;
import com.onesignal.session.internal.influence.IInfluenceManager;
import com.onesignal.user.internal.subscriptions.ISubscriptionManager;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: NotificationListener.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010#\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002B]\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0006\u0010\r\u001a\u00020\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012\u0012\u0006\u0010\u0013\u001a\u00020\u0014\u0012\u0006\u0010\u0015\u001a\u00020\u0016\u0012\u0006\u0010\u0017\u001a\u00020\u0018¢\u0006\u0002\u0010\u0019J\u0012\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J!\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020#2\u0006\u0010\u001e\u001a\u00020\u001fH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010$J\u0019\u0010%\u001a\u00020!2\u0006\u0010&\u001a\u00020'H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010(J\u0010\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020#H\u0002J\b\u0010,\u001a\u00020!H\u0016R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001bX\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006-"}, d2 = {"Lcom/onesignal/notifications/internal/listeners/NotificationListener;", "Lcom/onesignal/core/internal/startup/IStartableService;", "Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleEventHandler;", "_applicationService", "Lcom/onesignal/core/internal/application/IApplicationService;", "_notificationLifecycleService", "Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;", "_configModelStore", "Lcom/onesignal/core/internal/config/ConfigModelStore;", "_influenceManager", "Lcom/onesignal/session/internal/influence/IInfluenceManager;", "_subscriptionManager", "Lcom/onesignal/user/internal/subscriptions/ISubscriptionManager;", "_deviceService", "Lcom/onesignal/core/internal/device/IDeviceService;", "_backend", "Lcom/onesignal/notifications/internal/backend/INotificationBackendService;", "_receiveReceiptWorkManager", "Lcom/onesignal/notifications/internal/receivereceipt/IReceiveReceiptWorkManager;", "_activityOpener", "Lcom/onesignal/notifications/internal/INotificationActivityOpener;", "_analyticsTracker", "Lcom/onesignal/notifications/internal/analytics/IAnalyticsTracker;", "_time", "Lcom/onesignal/core/internal/time/ITime;", "(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/session/internal/influence/IInfluenceManager;Lcom/onesignal/user/internal/subscriptions/ISubscriptionManager;Lcom/onesignal/core/internal/device/IDeviceService;Lcom/onesignal/notifications/internal/backend/INotificationBackendService;Lcom/onesignal/notifications/internal/receivereceipt/IReceiveReceiptWorkManager;Lcom/onesignal/notifications/internal/INotificationActivityOpener;Lcom/onesignal/notifications/internal/analytics/IAnalyticsTracker;Lcom/onesignal/core/internal/time/ITime;)V", "postedOpenedNotifIds", "", "", "getLatestNotificationId", "data", "Lorg/json/JSONArray;", "onNotificationOpened", "", "activity", "Landroid/app/Activity;", "(Landroid/app/Activity;Lorg/json/JSONArray;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onNotificationReceived", "notificationJob", "Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;", "(Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "shouldInitDirectSessionFromNotificationOpen", "", "context", "start", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class NotificationListener implements IStartableService, INotificationLifecycleEventHandler {
    private final INotificationActivityOpener _activityOpener;
    private final IAnalyticsTracker _analyticsTracker;
    private final IApplicationService _applicationService;
    private final INotificationBackendService _backend;
    private final ConfigModelStore _configModelStore;
    private final IDeviceService _deviceService;
    private final IInfluenceManager _influenceManager;
    private final INotificationLifecycleService _notificationLifecycleService;
    private final IReceiveReceiptWorkManager _receiveReceiptWorkManager;
    private final ISubscriptionManager _subscriptionManager;
    private final ITime _time;
    private final Set<String> postedOpenedNotifIds;

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.listeners.NotificationListener$onNotificationOpened$1, reason: invalid class name */
    /* JADX INFO: compiled from: NotificationListener.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.listeners.NotificationListener", f = "NotificationListener.kt", i = {0, 0, 0, 0, 0, 0, 0}, l = {87, 115}, m = "onNotificationOpened", n = {"this", "activity", "data", "appId", "subscriptionId", "deviceType", "i"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "I$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return NotificationListener.this.onNotificationOpened(null, null, this);
        }
    }

    public NotificationListener(IApplicationService _applicationService, INotificationLifecycleService _notificationLifecycleService, ConfigModelStore _configModelStore, IInfluenceManager _influenceManager, ISubscriptionManager _subscriptionManager, IDeviceService _deviceService, INotificationBackendService _backend, IReceiveReceiptWorkManager _receiveReceiptWorkManager, INotificationActivityOpener _activityOpener, IAnalyticsTracker _analyticsTracker, ITime _time) {
        Intrinsics.checkNotNullParameter(_applicationService, "_applicationService");
        Intrinsics.checkNotNullParameter(_notificationLifecycleService, "_notificationLifecycleService");
        Intrinsics.checkNotNullParameter(_configModelStore, "_configModelStore");
        Intrinsics.checkNotNullParameter(_influenceManager, "_influenceManager");
        Intrinsics.checkNotNullParameter(_subscriptionManager, "_subscriptionManager");
        Intrinsics.checkNotNullParameter(_deviceService, "_deviceService");
        Intrinsics.checkNotNullParameter(_backend, "_backend");
        Intrinsics.checkNotNullParameter(_receiveReceiptWorkManager, "_receiveReceiptWorkManager");
        Intrinsics.checkNotNullParameter(_activityOpener, "_activityOpener");
        Intrinsics.checkNotNullParameter(_analyticsTracker, "_analyticsTracker");
        Intrinsics.checkNotNullParameter(_time, "_time");
        this._applicationService = _applicationService;
        this._notificationLifecycleService = _notificationLifecycleService;
        this._configModelStore = _configModelStore;
        this._influenceManager = _influenceManager;
        this._subscriptionManager = _subscriptionManager;
        this._deviceService = _deviceService;
        this._backend = _backend;
        this._receiveReceiptWorkManager = _receiveReceiptWorkManager;
        this._activityOpener = _activityOpener;
        this._analyticsTracker = _analyticsTracker;
        this._time = _time;
        this.postedOpenedNotifIds = new LinkedHashSet();
    }

    @Override // com.onesignal.core.internal.startup.IStartableService
    public void start() {
        this._notificationLifecycleService.addInternalNotificationLifecycleEventHandler(this);
    }

    @Override // com.onesignal.notifications.internal.lifecycle.INotificationLifecycleEventHandler
    public Object onNotificationReceived(NotificationGenerationJob notificationGenerationJob, Continuation<? super Unit> continuation) {
        this._receiveReceiptWorkManager.enqueueReceiveReceipt(notificationGenerationJob.getApiNotificationId());
        this._influenceManager.onNotificationReceived(notificationGenerationJob.getApiNotificationId());
        try {
            JSONObject jSONObject = new JSONObject(notificationGenerationJob.getJsonPayload().toString());
            jSONObject.put(NotificationConstants.BUNDLE_KEY_ANDROID_NOTIFICATION_ID, notificationGenerationJob.getAndroidId());
            NotificationClickEvent notificationClickEventGenerateNotificationOpenedResult$com_onesignal_notifications = NotificationHelper.INSTANCE.generateNotificationOpenedResult$com_onesignal_notifications(JSONUtils.INSTANCE.wrapInJsonArray(jSONObject), this._time);
            IAnalyticsTracker iAnalyticsTracker = this._analyticsTracker;
            String notificationId = notificationClickEventGenerateNotificationOpenedResult$com_onesignal_notifications.getNotification().getNotificationId();
            Intrinsics.checkNotNull(notificationId);
            iAnalyticsTracker.trackReceivedEvent(notificationId, NotificationHelper.INSTANCE.getCampaignNameFromNotification(notificationClickEventGenerateNotificationOpenedResult$com_onesignal_notifications.getNotification()));
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0099  */
    /* JADX WARN: Code duplicated, block: B:28:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:36:0x00df A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:37:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:47:0x0142  */
    /* JADX WARN: Code duplicated, block: B:49:0x0170  */
    /* JADX WARN: Code duplicated, block: B:51:0x0179  */
    /* JADX WARN: Code duplicated, block: B:54:0x0194 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x00a5 -> B:46:0x013f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00af -> B:46:0x013f). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00e0 -> B:38:0x00ef). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:47:0x0142
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // com.onesignal.notifications.internal.lifecycle.INotificationLifecycleEventHandler
    public java.lang.Object onNotificationOpened(android.app.Activity r24, org.json.JSONArray r25, kotlin.coroutines.Continuation<? super kotlin.Unit> r26) {
        /*
            Method dump skipped, instruction units count: 408
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onesignal.notifications.internal.listeners.NotificationListener.onNotificationOpened(android.app.Activity, org.json.JSONArray, kotlin.coroutines.Continuation):java.lang.Object");
    }

    private final boolean shouldInitDirectSessionFromNotificationOpen(Activity context) {
        if (this._applicationService.isInForeground()) {
            return false;
        }
        try {
            return OSNotificationOpenAppSettings.INSTANCE.getShouldOpenActivity(context);
        } catch (JSONException e) {
            e.printStackTrace();
            return true;
        }
    }

    private final String getLatestNotificationId(JSONArray data) throws JSONException {
        JSONObject jSONObject;
        if (data.length() > 0) {
            Object obj = data.get(0);
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type org.json.JSONObject");
            jSONObject = (JSONObject) obj;
        } else {
            jSONObject = null;
        }
        return NotificationFormatHelper.INSTANCE.getOSNotificationIdFromJson(jSONObject);
    }
}
