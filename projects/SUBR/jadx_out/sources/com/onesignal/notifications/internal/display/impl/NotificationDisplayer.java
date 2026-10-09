package com.onesignal.notifications.internal.display.impl;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.service.notification.StatusBarNotification;
import android.widget.RemoteViews;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.content.ContextCompat;
import com.onesignal.common.AndroidUtils;
import com.onesignal.common.JSONObjectExtensionsKt;
import com.onesignal.common.exceptions.MainThreadException;
import com.onesignal.core.internal.application.IApplicationService;
import com.onesignal.core.internal.database.impl.OneSignalDbContract;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.inAppMessages.internal.prompt.InAppMessagePromptTypes;
import com.onesignal.notifications.BuildConfig;
import com.onesignal.notifications.R;
import com.onesignal.notifications.internal.common.NotificationConstants;
import com.onesignal.notifications.internal.common.NotificationGenerationJob;
import com.onesignal.notifications.internal.common.NotificationHelper;
import com.onesignal.notifications.internal.display.INotificationDisplayBuilder;
import com.onesignal.notifications.internal.display.INotificationDisplayer;
import com.onesignal.notifications.internal.display.ISummaryNotificationDisplayer;
import com.onesignal.notifications.internal.limiting.INotificationLimitManager;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.lang.reflect.Field;
import java.math.BigInteger;
import java.net.URL;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONObject;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.y8;

/* JADX INFO: compiled from: NotificationDisplayer.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u001a\u0010\u001a\u001a\u00020\u00142\u0006\u0010\u001b\u001a\u00020\u001c2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0002J\u001a\u0010\u001f\u001a\u00020\u00142\u0006\u0010 \u001a\u00020!2\b\u0010\"\u001a\u0004\u0018\u00010\u001eH\u0002J*\u0010#\u001a\u00020$2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001e2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u001c2\u0006\u0010(\u001a\u00020)H\u0002J\u0019\u0010*\u001a\u00020+2\u0006\u0010 \u001a\u00020!H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010,J\u0014\u0010-\u001a\u0004\u0018\u00010.2\b\u0010/\u001a\u0004\u0018\u00010\u0017H\u0002J\u0012\u00100\u001a\u0004\u0018\u00010.2\u0006\u00101\u001a\u00020\u0017H\u0002J\u0012\u00102\u001a\u0004\u0018\u00010.2\u0006\u00103\u001a\u00020\u0017H\u0002J\u0010\u00104\u001a\u00020)2\u0006\u0010/\u001a\u00020\u0017H\u0002J\u0012\u00105\u001a\u00020)2\b\u00106\u001a\u0004\u0018\u00010\u0017H\u0002J!\u00107\u001a\u0004\u0018\u00010)2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u00108\u001a\u00020\u0017H\u0002¢\u0006\u0002\u00109J2\u0010:\u001a\u00020\u00142\u0006\u0010;\u001a\u00020<2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010=\u001a\u00020)2\u0006\u0010>\u001a\u00020\u00172\u0006\u0010?\u001a\u00020\u0017H\u0002J\u0019\u0010@\u001a\u00020+2\u0006\u0010 \u001a\u00020!H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010,R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\u0004\u0018\u00010\f8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u0014\u0010\u000f\u001a\u00020\u00108BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u00148F¢\u0006\u0006\u001a\u0004\b\u0013\u0010\u0015R\u0016\u0010\u0016\u001a\u0004\u0018\u00010\u00178BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006A"}, d2 = {"Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayer;", "Lcom/onesignal/notifications/internal/display/INotificationDisplayer;", "_applicationService", "Lcom/onesignal/core/internal/application/IApplicationService;", "_notificationLimitManager", "Lcom/onesignal/notifications/internal/limiting/INotificationLimitManager;", "_summaryNotificationDisplayer", "Lcom/onesignal/notifications/internal/display/ISummaryNotificationDisplayer;", "_notificationDisplayBuilder", "Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;", "(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/notifications/internal/limiting/INotificationLimitManager;Lcom/onesignal/notifications/internal/display/ISummaryNotificationDisplayer;Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;)V", "contextResources", "Landroid/content/res/Resources;", "getContextResources", "()Landroid/content/res/Resources;", "currentContext", "Landroid/content/Context;", "getCurrentContext", "()Landroid/content/Context;", "isRunningOnMainThreadCheck", "", "()Lkotlin/Unit;", HandleInvocationsFromAdViewer.KEY_PACKAGE_NAME, "", "getPackageName", "()Ljava/lang/String;", "addBackgroundImage", "fcmJson", "Lorg/json/JSONObject;", "notifBuilder", "Landroidx/core/app/NotificationCompat$Builder;", "applyNotificationExtender", "notificationJob", "Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;", "notificationBuilder", "createGenericPendingIntentsForNotif", "Landroid/app/Notification;", "intentGenerator", "Lcom/onesignal/notifications/internal/display/impl/IntentGeneratorForAttachingToNotifications;", "gcmBundle", "notificationId", "", "displayNotification", "", "(Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getBitmap", "Landroid/graphics/Bitmap;", "name", "getBitmapFromAssetsOrResourceName", "bitmapStr", "getBitmapFromURL", InAppMessagePromptTypes.LOCATION_PROMPT_KEY, "getDrawableId", "getResourceIcon", "iconName", "safeGetColorFromHex", "colorKey", "(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;", "setTextColor", "customView", "Landroid/widget/RemoteViews;", "viewId", "colorPayloadKey", "colorDefaultResource", "showNotification", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class NotificationDisplayer implements INotificationDisplayer {
    private final IApplicationService _applicationService;
    private final INotificationDisplayBuilder _notificationDisplayBuilder;
    private final INotificationLimitManager _notificationLimitManager;
    private final ISummaryNotificationDisplayer _summaryNotificationDisplayer;

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.display.impl.NotificationDisplayer$showNotification$1, reason: invalid class name */
    /* JADX INFO: compiled from: NotificationDisplayer.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.display.impl.NotificationDisplayer", f = "NotificationDisplayer.kt", i = {0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2}, l = {118, 133, IronSourceConstants.USING_CACHE_FOR_INIT_EVENT}, m = "showNotification", n = {"this", "notificationJob", "fcmJson", "group", "intentGenerator", "grouplessNotifs", "oneSignalNotificationBuilder", "notifBuilder", "notificationId", "this", "oneSignalNotificationBuilder", OneSignalDbContract.NotificationTable.TABLE_NAME, "notificationId", "this", "oneSignalNotificationBuilder", OneSignalDbContract.NotificationTable.TABLE_NAME, "notificationId"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "I$0", "L$0", "L$1", "L$2", "I$0", "L$0", "L$1", "L$2", "I$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return NotificationDisplayer.this.showNotification(null, this);
        }
    }

    public NotificationDisplayer(IApplicationService _applicationService, INotificationLimitManager _notificationLimitManager, ISummaryNotificationDisplayer _summaryNotificationDisplayer, INotificationDisplayBuilder _notificationDisplayBuilder) {
        Intrinsics.checkNotNullParameter(_applicationService, "_applicationService");
        Intrinsics.checkNotNullParameter(_notificationLimitManager, "_notificationLimitManager");
        Intrinsics.checkNotNullParameter(_summaryNotificationDisplayer, "_summaryNotificationDisplayer");
        Intrinsics.checkNotNullParameter(_notificationDisplayBuilder, "_notificationDisplayBuilder");
        this._applicationService = _applicationService;
        this._notificationLimitManager = _notificationLimitManager;
        this._summaryNotificationDisplayer = _summaryNotificationDisplayer;
        this._notificationDisplayBuilder = _notificationDisplayBuilder;
    }

    private final Resources getContextResources() {
        return this._applicationService.getAppContext().getResources();
    }

    private final Context getCurrentContext() {
        return this._applicationService.getAppContext();
    }

    private final String getPackageName() {
        return this._applicationService.getAppContext().getPackageName();
    }

    @Override // com.onesignal.notifications.internal.display.INotificationDisplayer
    public Object displayNotification(NotificationGenerationJob notificationGenerationJob, Continuation<? super Boolean> continuation) {
        isRunningOnMainThreadCheck();
        return showNotification(notificationGenerationJob, continuation);
    }

    public final Unit isRunningOnMainThreadCheck() {
        if (AndroidUtils.INSTANCE.isRunningOnMainThread()) {
            throw new MainThreadException("Process for showing a notification should never been done on Main Thread!");
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:25:0x00c0 A[PHI: r10
  0x00c0: PHI (r10v3 java.util.ArrayList<android.service.notification.StatusBarNotification>) = 
  (r10v2 java.util.ArrayList<android.service.notification.StatusBarNotification>)
  (r10v7 java.util.ArrayList<android.service.notification.StatusBarNotification>)
  (r10v7 java.util.ArrayList<android.service.notification.StatusBarNotification>)
 binds: [B:19:0x00a1, B:21:0x00ad, B:23:0x00b3] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:57:0x01ba  */
    /* JADX WARN: Code duplicated, block: B:58:0x01cc  */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    public final Object showNotification(NotificationGenerationJob notificationGenerationJob, Continuation<? super Boolean> continuation) {
        AnonymousClass1 anonymousClass1;
        JSONObject jsonPayload;
        String str;
        ArrayList<StatusBarNotification> arrayList;
        NotificationDisplayBuilder.OneSignalNotificationBuilder baseOneSignalNotificationBuilder;
        NotificationDisplayer notificationDisplayer;
        IntentGeneratorForAttachingToNotifications intentGeneratorForAttachingToNotifications;
        NotificationGenerationJob notificationGenerationJob2;
        int i;
        NotificationCompat.Builder builder;
        Notification notificationCreateGenericPendingIntentsForNotif;
        NotificationDisplayer notificationDisplayer2;
        NotificationDisplayBuilder.OneSignalNotificationBuilder oneSignalNotificationBuilder;
        boolean zAreNotificationsEnabled;
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
        Object obj = anonymousClass2.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = anonymousClass2.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            int androidId = notificationGenerationJob.getAndroidId();
            jsonPayload = notificationGenerationJob.getJsonPayload();
            Intrinsics.checkNotNull(jsonPayload);
            String strSafeString = JSONObjectExtensionsKt.safeString(jsonPayload, "grp");
            IntentGeneratorForAttachingToNotifications intentGeneratorForAttachingToNotifications2 = new IntentGeneratorForAttachingToNotifications(getCurrentContext());
            ArrayList<StatusBarNotification> arrayList2 = new ArrayList<>();
            if (Build.VERSION.SDK_INT >= 24) {
                arrayList2 = NotificationHelper.INSTANCE.getActiveGrouplessNotifications(getCurrentContext());
                if (strSafeString != null || arrayList2.size() < 3) {
                    str = strSafeString;
                } else {
                    NotificationHelper.INSTANCE.assignGrouplessNotifications(getCurrentContext(), arrayList2);
                    str = NotificationHelper.GROUPLESS_SUMMARY_KEY;
                }
            } else {
                str = strSafeString;
            }
            arrayList = arrayList2;
            baseOneSignalNotificationBuilder = this._notificationDisplayBuilder.getBaseOneSignalNotificationBuilder(notificationGenerationJob);
            NotificationCompat.Builder compatBuilder = baseOneSignalNotificationBuilder.getCompatBuilder();
            this._notificationDisplayBuilder.addNotificationActionButtons(jsonPayload, intentGeneratorForAttachingToNotifications2, compatBuilder, androidId, null);
            try {
                addBackgroundImage(jsonPayload, compatBuilder);
            } catch (Throwable th) {
                Logging.error("Could not set background notification image!", th);
            }
            applyNotificationExtender(notificationGenerationJob, compatBuilder);
            if (notificationGenerationJob.getIsRestoring()) {
                this._notificationDisplayBuilder.removeNotifyOptions(compatBuilder);
            }
            int i3 = str == null ? 1 : 2;
            INotificationLimitManager iNotificationLimitManager = this._notificationLimitManager;
            anonymousClass2.L$0 = this;
            anonymousClass2.L$1 = notificationGenerationJob;
            anonymousClass2.L$2 = jsonPayload;
            anonymousClass2.L$3 = str;
            anonymousClass2.L$4 = intentGeneratorForAttachingToNotifications2;
            anonymousClass2.L$5 = arrayList;
            anonymousClass2.L$6 = baseOneSignalNotificationBuilder;
            anonymousClass2.L$7 = compatBuilder;
            anonymousClass2.I$0 = androidId;
            anonymousClass2.label = 1;
            if (iNotificationLimitManager.clearOldestOverLimit(i3, anonymousClass2) == coroutine_suspended) {
                return coroutine_suspended;
            }
            notificationDisplayer = this;
            intentGeneratorForAttachingToNotifications = intentGeneratorForAttachingToNotifications2;
            notificationGenerationJob2 = notificationGenerationJob;
            i = androidId;
            builder = compatBuilder;
        } else {
            if (i2 == 1) {
                i = anonymousClass2.I$0;
                builder = (NotificationCompat.Builder) anonymousClass2.L$7;
                NotificationDisplayBuilder.OneSignalNotificationBuilder oneSignalNotificationBuilder2 = (NotificationDisplayBuilder.OneSignalNotificationBuilder) anonymousClass2.L$6;
                arrayList = (ArrayList) anonymousClass2.L$5;
                intentGeneratorForAttachingToNotifications = (IntentGeneratorForAttachingToNotifications) anonymousClass2.L$4;
                str = (String) anonymousClass2.L$3;
                jsonPayload = (JSONObject) anonymousClass2.L$2;
                notificationGenerationJob2 = (NotificationGenerationJob) anonymousClass2.L$1;
                NotificationDisplayer notificationDisplayer3 = (NotificationDisplayer) anonymousClass2.L$0;
                ResultKt.throwOnFailure(obj);
                notificationDisplayer = notificationDisplayer3;
                baseOneSignalNotificationBuilder = oneSignalNotificationBuilder2;
            } else if (i2 == 2 || i2 == 3) {
                i = anonymousClass2.I$0;
                notificationCreateGenericPendingIntentsForNotif = (Notification) anonymousClass2.L$2;
                oneSignalNotificationBuilder = (NotificationDisplayBuilder.OneSignalNotificationBuilder) anonymousClass2.L$1;
                notificationDisplayer2 = (NotificationDisplayer) anonymousClass2.L$0;
                ResultKt.throwOnFailure(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            baseOneSignalNotificationBuilder = oneSignalNotificationBuilder;
            notificationDisplayer = notificationDisplayer2;
            notificationDisplayer._notificationDisplayBuilder.addXiaomiSettings(baseOneSignalNotificationBuilder, notificationCreateGenericPendingIntentsForNotif);
            Context currentContext = notificationDisplayer.getCurrentContext();
            Intrinsics.checkNotNull(currentContext);
            NotificationManagerCompat.from(currentContext).notify(i, notificationCreateGenericPendingIntentsForNotif);
            if (Build.VERSION.SDK_INT >= 26) {
                NotificationHelper notificationHelper = NotificationHelper.INSTANCE;
                Context currentContext2 = notificationDisplayer.getCurrentContext();
                Intrinsics.checkNotNull(currentContext2);
                zAreNotificationsEnabled = notificationHelper.areNotificationsEnabled(currentContext2, notificationCreateGenericPendingIntentsForNotif.getChannelId());
            } else {
                zAreNotificationsEnabled = true;
            }
            return Boxing.boxBoolean(zAreNotificationsEnabled);
        }
        if (str != null) {
            notificationDisplayer._summaryNotificationDisplayer.createGenericPendingIntentsForGroup(builder, intentGeneratorForAttachingToNotifications, jsonPayload, str, i);
            Notification notificationCreateSingleNotificationBeforeSummaryBuilder = notificationDisplayer._summaryNotificationDisplayer.createSingleNotificationBeforeSummaryBuilder(notificationGenerationJob2, builder);
            if (Build.VERSION.SDK_INT >= 24 && Intrinsics.areEqual(str, NotificationHelper.GROUPLESS_SUMMARY_KEY)) {
                ISummaryNotificationDisplayer iSummaryNotificationDisplayer = notificationDisplayer._summaryNotificationDisplayer;
                int size = arrayList.size() + 1;
                int groupAlertBehavior = notificationDisplayer._notificationDisplayBuilder.getGroupAlertBehavior();
                anonymousClass2.L$0 = notificationDisplayer;
                anonymousClass2.L$1 = baseOneSignalNotificationBuilder;
                anonymousClass2.L$2 = notificationCreateSingleNotificationBeforeSummaryBuilder;
                anonymousClass2.L$3 = null;
                anonymousClass2.L$4 = null;
                anonymousClass2.L$5 = null;
                anonymousClass2.L$6 = null;
                anonymousClass2.L$7 = null;
                anonymousClass2.I$0 = i;
                anonymousClass2.label = 2;
                if (iSummaryNotificationDisplayer.createGrouplessSummaryNotification(notificationGenerationJob2, intentGeneratorForAttachingToNotifications, size, groupAlertBehavior, anonymousClass2) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                ISummaryNotificationDisplayer iSummaryNotificationDisplayer2 = notificationDisplayer._summaryNotificationDisplayer;
                int groupAlertBehavior2 = notificationDisplayer._notificationDisplayBuilder.getGroupAlertBehavior();
                anonymousClass2.L$0 = notificationDisplayer;
                anonymousClass2.L$1 = baseOneSignalNotificationBuilder;
                anonymousClass2.L$2 = notificationCreateSingleNotificationBeforeSummaryBuilder;
                anonymousClass2.L$3 = null;
                anonymousClass2.L$4 = null;
                anonymousClass2.L$5 = null;
                anonymousClass2.L$6 = null;
                anonymousClass2.L$7 = null;
                anonymousClass2.I$0 = i;
                anonymousClass2.label = 3;
                if (iSummaryNotificationDisplayer2.createSummaryNotification(notificationGenerationJob2, baseOneSignalNotificationBuilder, groupAlertBehavior2, anonymousClass2) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            notificationDisplayer2 = notificationDisplayer;
            oneSignalNotificationBuilder = baseOneSignalNotificationBuilder;
            notificationCreateGenericPendingIntentsForNotif = notificationCreateSingleNotificationBeforeSummaryBuilder;
            baseOneSignalNotificationBuilder = oneSignalNotificationBuilder;
            notificationDisplayer = notificationDisplayer2;
        } else {
            notificationCreateGenericPendingIntentsForNotif = notificationDisplayer.createGenericPendingIntentsForNotif(builder, intentGeneratorForAttachingToNotifications, jsonPayload, i);
        }
        notificationDisplayer._notificationDisplayBuilder.addXiaomiSettings(baseOneSignalNotificationBuilder, notificationCreateGenericPendingIntentsForNotif);
        Context currentContext3 = notificationDisplayer.getCurrentContext();
        Intrinsics.checkNotNull(currentContext3);
        NotificationManagerCompat.from(currentContext3).notify(i, notificationCreateGenericPendingIntentsForNotif);
        if (Build.VERSION.SDK_INT >= 26) {
            NotificationHelper notificationHelper2 = NotificationHelper.INSTANCE;
            Context currentContext4 = notificationDisplayer.getCurrentContext();
            Intrinsics.checkNotNull(currentContext4);
            zAreNotificationsEnabled = notificationHelper2.areNotificationsEnabled(currentContext4, notificationCreateGenericPendingIntentsForNotif.getChannelId());
        } else {
            zAreNotificationsEnabled = true;
        }
        return Boxing.boxBoolean(zAreNotificationsEnabled);
    }

    private final Notification createGenericPendingIntentsForNotif(NotificationCompat.Builder notifBuilder, IntentGeneratorForAttachingToNotifications intentGenerator, JSONObject gcmBundle, int notificationId) {
        SecureRandom secureRandom = new SecureRandom();
        int iNextInt = secureRandom.nextInt();
        Intent intentPutExtra = intentGenerator.getNewBaseIntent(notificationId).putExtra(NotificationConstants.BUNDLE_KEY_ONESIGNAL_DATA, gcmBundle.toString());
        Intrinsics.checkNotNullExpressionValue(intentPutExtra, "intentGenerator.getNewBa…TA, gcmBundle.toString())");
        PendingIntent newActionPendingIntent = intentGenerator.getNewActionPendingIntent(iNextInt, intentPutExtra);
        Intrinsics.checkNotNull(notifBuilder);
        notifBuilder.setContentIntent(newActionPendingIntent);
        notifBuilder.setDeleteIntent(this._notificationDisplayBuilder.getNewDismissActionPendingIntent(secureRandom.nextInt(), this._notificationDisplayBuilder.getNewBaseDismissIntent(notificationId)));
        Notification notificationBuild = notifBuilder.build();
        Intrinsics.checkNotNullExpressionValue(notificationBuild, "notifBuilder.build()");
        return notificationBuild;
    }

    private final void applyNotificationExtender(NotificationGenerationJob notificationJob, NotificationCompat.Builder notificationBuilder) {
        if (notificationJob.hasExtender()) {
            try {
                Field declaredField = NotificationCompat.Builder.class.getDeclaredField("mNotification");
                declaredField.setAccessible(true);
                Object obj = declaredField.get(notificationBuilder);
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type android.app.Notification");
                Notification notification = (Notification) obj;
                notificationJob.setOrgFlags(Integer.valueOf(notification.flags));
                notificationJob.setOrgSound(notification.sound);
                Intrinsics.checkNotNull(notificationBuilder);
                com.onesignal.notifications.internal.Notification notification2 = notificationJob.getNotification();
                Intrinsics.checkNotNull(notification2);
                NotificationCompat.Extender notificationExtender = notification2.getNotificationExtender();
                Intrinsics.checkNotNull(notificationExtender);
                notificationBuilder.extend(notificationExtender);
                Object obj2 = declaredField.get(notificationBuilder);
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type android.app.Notification");
                Notification notification3 = (Notification) obj2;
                Field declaredField2 = NotificationCompat.Builder.class.getDeclaredField("mContentText");
                declaredField2.setAccessible(true);
                CharSequence charSequence = (CharSequence) declaredField2.get(notificationBuilder);
                Field declaredField3 = NotificationCompat.Builder.class.getDeclaredField("mContentTitle");
                declaredField3.setAccessible(true);
                CharSequence charSequence2 = (CharSequence) declaredField3.get(notificationBuilder);
                notificationJob.setOverriddenBodyFromExtender(charSequence);
                notificationJob.setOverriddenTitleFromExtender(charSequence2);
                if (notificationJob.getIsRestoring()) {
                    return;
                }
                notificationJob.setOverriddenFlags(Integer.valueOf(notification3.flags));
                notificationJob.setOverriddenSound(notification3.sound);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private final void addBackgroundImage(JSONObject fcmJson, NotificationCompat.Builder notifBuilder) throws Throwable {
        Bitmap bitmapFromAssetsOrResourceName;
        JSONObject jSONObject;
        String string;
        if (Build.VERSION.SDK_INT >= 31) {
            Logging.verbose$default("Cannot use background images in notifications for device on version: " + Build.VERSION.SDK_INT, null, 2, null);
            return;
        }
        String strOptString = fcmJson.optString("bg_img", null);
        if (strOptString != null) {
            jSONObject = new JSONObject(strOptString);
            bitmapFromAssetsOrResourceName = getBitmap(jSONObject.optString("img", null));
        } else {
            bitmapFromAssetsOrResourceName = null;
            jSONObject = null;
        }
        if (bitmapFromAssetsOrResourceName == null) {
            bitmapFromAssetsOrResourceName = getBitmapFromAssetsOrResourceName("onesignal_bgimage_default_image");
        }
        if (bitmapFromAssetsOrResourceName != null) {
            Context currentContext = getCurrentContext();
            Intrinsics.checkNotNull(currentContext);
            RemoteViews remoteViews = new RemoteViews(currentContext.getPackageName(), R.layout.onesignal_bgimage_notif_layout);
            remoteViews.setTextViewText(R.id.os_bgimage_notif_title, this._notificationDisplayBuilder.getTitle(fcmJson));
            remoteViews.setTextViewText(R.id.os_bgimage_notif_body, fcmJson.optString("alert"));
            JSONObject jSONObject2 = jSONObject;
            setTextColor(remoteViews, jSONObject2, R.id.os_bgimage_notif_title, "tc", "onesignal_bgimage_notif_title_color");
            setTextColor(remoteViews, jSONObject2, R.id.os_bgimage_notif_body, "bc", "onesignal_bgimage_notif_body_color");
            if (jSONObject != null && jSONObject.has("img_align")) {
                string = jSONObject.getString("img_align");
            } else {
                Resources contextResources = getContextResources();
                Intrinsics.checkNotNull(contextResources);
                int identifier = contextResources.getIdentifier("onesignal_bgimage_notif_image_align", "string", getPackageName());
                if (identifier != 0) {
                    Resources contextResources2 = getContextResources();
                    Intrinsics.checkNotNull(contextResources2);
                    string = contextResources2.getString(identifier);
                } else {
                    string = null;
                }
            }
            if (Intrinsics.areEqual("right", string)) {
                remoteViews.setViewPadding(R.id.os_bgimage_notif_bgimage_align_layout, -5000, 0, 0, 0);
                remoteViews.setImageViewBitmap(R.id.os_bgimage_notif_bgimage_right_aligned, bitmapFromAssetsOrResourceName);
                remoteViews.setViewVisibility(R.id.os_bgimage_notif_bgimage_right_aligned, 0);
                remoteViews.setViewVisibility(R.id.os_bgimage_notif_bgimage, 8);
            } else {
                remoteViews.setImageViewBitmap(R.id.os_bgimage_notif_bgimage, bitmapFromAssetsOrResourceName);
            }
            Intrinsics.checkNotNull(notifBuilder);
            notifBuilder.setContent(remoteViews);
            notifBuilder.setStyle(null);
        }
    }

    private final void setTextColor(RemoteViews customView, JSONObject fcmJson, int viewId, String colorPayloadKey, String colorDefaultResource) {
        Integer numSafeGetColorFromHex = safeGetColorFromHex(fcmJson, colorPayloadKey);
        if (numSafeGetColorFromHex != null) {
            customView.setTextColor(viewId, numSafeGetColorFromHex.intValue());
            return;
        }
        Resources contextResources = getContextResources();
        Intrinsics.checkNotNull(contextResources);
        int identifier = contextResources.getIdentifier(colorDefaultResource, y8.h.S, getPackageName());
        if (identifier != 0) {
            customView.setTextColor(viewId, ContextCompat.getColor(getCurrentContext(), identifier));
        }
    }

    private final Integer safeGetColorFromHex(JSONObject fcmJson, String colorKey) {
        if (fcmJson == null) {
            return null;
        }
        try {
            if (fcmJson.has(colorKey)) {
                return Integer.valueOf(new BigInteger(fcmJson.optString(colorKey), 16).intValue());
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    private final Bitmap getBitmapFromAssetsOrResourceName(String bitmapStr) {
        Bitmap bitmapDecodeStream;
        try {
            Context currentContext = getCurrentContext();
            Intrinsics.checkNotNull(currentContext);
            bitmapDecodeStream = BitmapFactory.decodeStream(currentContext.getAssets().open(bitmapStr));
        } catch (Throwable unused) {
            bitmapDecodeStream = null;
        }
        if (bitmapDecodeStream != null) {
            return bitmapDecodeStream;
        }
        try {
            for (String str : Arrays.asList(".png", ".webp", ".jpg", ".gif", ".bmp")) {
                try {
                    Context currentContext2 = getCurrentContext();
                    Intrinsics.checkNotNull(currentContext2);
                    bitmapDecodeStream = BitmapFactory.decodeStream(currentContext2.getAssets().open(bitmapStr + str));
                } catch (Throwable unused2) {
                }
                if (bitmapDecodeStream != null) {
                    return bitmapDecodeStream;
                }
            }
            int resourceIcon = getResourceIcon(bitmapStr);
            if (resourceIcon != 0) {
                return BitmapFactory.decodeResource(getContextResources(), resourceIcon);
            }
        } catch (Throwable unused3) {
        }
        return null;
    }

    private final Bitmap getBitmapFromURL(String location) {
        try {
            return BitmapFactory.decodeStream(new URL(location).openConnection().getInputStream());
        } catch (Throwable th) {
            Logging.warn("Could not download image!", th);
            return null;
        }
    }

    private final int getDrawableId(String name) {
        Resources contextResources = getContextResources();
        Intrinsics.checkNotNull(contextResources);
        return contextResources.getIdentifier(name, "drawable", getPackageName());
    }

    private final Bitmap getBitmap(String name) {
        if (name == null) {
            return null;
        }
        String str = name;
        int length = str.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean z2 = Intrinsics.compare((int) str.charAt(!z ? i : length), 32) <= 0;
            if (z) {
                if (!z2) {
                    break;
                }
                length--;
            } else if (z2) {
                i++;
            } else {
                z = true;
            }
        }
        String string = str.subSequence(i, length + 1).toString();
        if (StringsKt.startsWith$default(string, "http://", false, 2, (Object) null) || StringsKt.startsWith$default(string, "https://", false, 2, (Object) null)) {
            return getBitmapFromURL(string);
        }
        return getBitmapFromAssetsOrResourceName(name);
    }

    private final int getResourceIcon(String iconName) {
        if (iconName == null) {
            return 0;
        }
        String str = iconName;
        int length = str.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean z2 = Intrinsics.compare((int) str.charAt(!z ? i : length), 32) <= 0;
            if (z) {
                if (!z2) {
                    break;
                }
                length--;
            } else if (z2) {
                i++;
            } else {
                z = true;
            }
        }
        String string = str.subSequence(i, length + 1).toString();
        if (!AndroidUtils.INSTANCE.isValidResourceName(string)) {
            return 0;
        }
        int drawableId = getDrawableId(string);
        if (drawableId != 0) {
            return drawableId;
        }
        try {
            return android.R.drawable.class.getField(iconName).getInt(null);
        } catch (Throwable unused) {
            return 0;
        }
    }
}
