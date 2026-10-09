package com.onesignal.notifications.internal.display.impl;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import com.onesignal.common.JSONObjectExtensionsKt;
import com.onesignal.core.internal.application.IApplicationService;
import com.onesignal.notifications.BuildConfig;
import com.onesignal.notifications.internal.common.NotificationConstants;
import com.onesignal.notifications.internal.common.NotificationGenerationJob;
import com.onesignal.notifications.internal.common.NotificationHelper;
import com.onesignal.notifications.internal.data.INotificationRepository;
import com.onesignal.notifications.internal.display.INotificationDisplayBuilder;
import com.onesignal.notifications.internal.display.ISummaryNotificationDisplayer;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
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

/* JADX INFO: compiled from: SummaryNotificationDisplayer.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ(\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J2\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u0010H\u0016J1\u0010\u001d\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u00102\u0006\u0010!\u001a\u00020\u0010H\u0097@ø\u0001\u0000¢\u0006\u0002\u0010\"J\u001a\u0010#\u001a\u00020$2\u0006\u0010\u001e\u001a\u00020\u001f2\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0016J+\u0010%\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u001f2\b\u0010\u0019\u001a\u0004\u0018\u00010&2\u0006\u0010!\u001a\u00020\u0010H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010'J\u0019\u0010(\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u001fH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010)R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\n8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u000b\u0010\f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006*"}, d2 = {"Lcom/onesignal/notifications/internal/display/impl/SummaryNotificationDisplayer;", "Lcom/onesignal/notifications/internal/display/ISummaryNotificationDisplayer;", "_applicationService", "Lcom/onesignal/core/internal/application/IApplicationService;", "_dataController", "Lcom/onesignal/notifications/internal/data/INotificationRepository;", "_notificationDisplayBuilder", "Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;", "(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/notifications/internal/data/INotificationRepository;Lcom/onesignal/notifications/internal/display/INotificationDisplayBuilder;)V", "currentContext", "Landroid/content/Context;", "getCurrentContext", "()Landroid/content/Context;", "createBaseSummaryIntent", "Landroid/content/Intent;", "summaryNotificationId", "", "intentGenerator", "Lcom/onesignal/notifications/internal/display/impl/IntentGeneratorForAttachingToNotifications;", "fcmJson", "Lorg/json/JSONObject;", "group", "", "createGenericPendingIntentsForGroup", "", "notifBuilder", "Landroidx/core/app/NotificationCompat$Builder;", "gcmBundle", "notificationId", "createGrouplessSummaryNotification", "notificationJob", "Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;", "grouplessNotifCount", "groupAlertBehavior", "(Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;Lcom/onesignal/notifications/internal/display/impl/IntentGeneratorForAttachingToNotifications;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "createSingleNotificationBeforeSummaryBuilder", "Landroid/app/Notification;", "createSummaryNotification", "Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayBuilder$OneSignalNotificationBuilder;", "(Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;Lcom/onesignal/notifications/internal/display/impl/NotificationDisplayBuilder$OneSignalNotificationBuilder;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateSummaryNotification", "(Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class SummaryNotificationDisplayer implements ISummaryNotificationDisplayer {
    private final IApplicationService _applicationService;
    private final INotificationRepository _dataController;
    private final INotificationDisplayBuilder _notificationDisplayBuilder;

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.display.impl.SummaryNotificationDisplayer$createGrouplessSummaryNotification$1, reason: invalid class name */
    /* JADX INFO: compiled from: SummaryNotificationDisplayer.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.display.impl.SummaryNotificationDisplayer", f = "SummaryNotificationDisplayer.kt", i = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, l = {267}, m = "createGrouplessSummaryNotification", n = {"this", "notificationJob", "intentGenerator", "fcmJson", "random", "group", "summaryMessage", "grouplessNotifCount", "groupAlertBehavior", "summaryNotificationId"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "I$0", "I$1", "I$2"})
    static final class AnonymousClass1 extends ContinuationImpl {
        int I$0;
        int I$1;
        int I$2;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SummaryNotificationDisplayer.this.createGrouplessSummaryNotification(null, null, 0, 0, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.display.impl.SummaryNotificationDisplayer$createSummaryNotification$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SummaryNotificationDisplayer.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.display.impl.SummaryNotificationDisplayer", f = "SummaryNotificationDisplayer.kt", i = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2}, l = {111, 116, 119}, m = "createSummaryNotification", n = {"this", "notificationJob", "notifBuilder", "fcmJson", "intentGenerator", "group", "random", "summaryDeleteIntent", "groupAlertBehavior", "updateSummary", "this", "notificationJob", "notifBuilder", "fcmJson", "intentGenerator", "group", "random", "summaryDeleteIntent", "summaryNotificationId", "groupAlertBehavior", "updateSummary", "this", "notificationJob", "notifBuilder", "fcmJson", "intentGenerator", "group", "random", "summaryDeleteIntent", "summaryNotificationId", "groupAlertBehavior", "updateSummary"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "I$0", "Z$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "I$0", "Z$0", "L$0", "L$1", "L$2", "L$3", "L$4", "L$5", "L$6", "L$7", "L$8", "I$0", "Z$0"})
    static final class C02771 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        Object L$8;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C02771(Continuation<? super C02771> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return SummaryNotificationDisplayer.this.createSummaryNotification(null, null, 0, this);
        }
    }

    public SummaryNotificationDisplayer(IApplicationService _applicationService, INotificationRepository _dataController, INotificationDisplayBuilder _notificationDisplayBuilder) {
        Intrinsics.checkNotNullParameter(_applicationService, "_applicationService");
        Intrinsics.checkNotNullParameter(_dataController, "_dataController");
        Intrinsics.checkNotNullParameter(_notificationDisplayBuilder, "_notificationDisplayBuilder");
        this._applicationService = _applicationService;
        this._dataController = _dataController;
        this._notificationDisplayBuilder = _notificationDisplayBuilder;
    }

    private final Context getCurrentContext() {
        return this._applicationService.getAppContext();
    }

    @Override // com.onesignal.notifications.internal.display.ISummaryNotificationDisplayer
    public void createGenericPendingIntentsForGroup(NotificationCompat.Builder notifBuilder, IntentGeneratorForAttachingToNotifications intentGenerator, JSONObject gcmBundle, String group, int notificationId) {
        Intrinsics.checkNotNullParameter(intentGenerator, "intentGenerator");
        Intrinsics.checkNotNullParameter(gcmBundle, "gcmBundle");
        Intrinsics.checkNotNullParameter(group, "group");
        SecureRandom secureRandom = new SecureRandom();
        int iNextInt = secureRandom.nextInt();
        Intent intentPutExtra = intentGenerator.getNewBaseIntent(notificationId).putExtra(NotificationConstants.BUNDLE_KEY_ONESIGNAL_DATA, gcmBundle.toString()).putExtra("grp", group);
        Intrinsics.checkNotNullExpressionValue(intentPutExtra, "intentGenerator.getNewBa…)).putExtra(\"grp\", group)");
        PendingIntent newActionPendingIntent = intentGenerator.getNewActionPendingIntent(iNextInt, intentPutExtra);
        Intrinsics.checkNotNull(notifBuilder);
        notifBuilder.setContentIntent(newActionPendingIntent);
        INotificationDisplayBuilder iNotificationDisplayBuilder = this._notificationDisplayBuilder;
        int iNextInt2 = secureRandom.nextInt();
        Intent intentPutExtra2 = this._notificationDisplayBuilder.getNewBaseDismissIntent(notificationId).putExtra("grp", group);
        Intrinsics.checkNotNullExpressionValue(intentPutExtra2, "_notificationDisplayBuil…d).putExtra(\"grp\", group)");
        notifBuilder.setDeleteIntent(iNotificationDisplayBuilder.getNewDismissActionPendingIntent(iNextInt2, intentPutExtra2));
        notifBuilder.setGroup(group);
        try {
            notifBuilder.setGroupAlertBehavior(this._notificationDisplayBuilder.getGroupAlertBehavior());
        } catch (Throwable unused) {
        }
    }

    @Override // com.onesignal.notifications.internal.display.ISummaryNotificationDisplayer
    public Notification createSingleNotificationBeforeSummaryBuilder(NotificationGenerationJob notificationJob, NotificationCompat.Builder notifBuilder) {
        Intrinsics.checkNotNullParameter(notificationJob, "notificationJob");
        boolean z = Build.VERSION.SDK_INT < 24 && !notificationJob.getIsRestoring();
        if (z && notificationJob.getOverriddenSound() != null) {
            Uri overriddenSound = notificationJob.getOverriddenSound();
            Intrinsics.checkNotNull(overriddenSound);
            if (!overriddenSound.equals(notificationJob.getOrgSound())) {
                Intrinsics.checkNotNull(notifBuilder);
                notifBuilder.setSound(null);
            }
        }
        Intrinsics.checkNotNull(notifBuilder);
        Notification notificationBuild = notifBuilder.build();
        Intrinsics.checkNotNullExpressionValue(notificationBuild, "notifBuilder!!.build()");
        if (z) {
            notifBuilder.setSound(notificationJob.getOverriddenSound());
        }
        return notificationBuild;
    }

    @Override // com.onesignal.notifications.internal.display.ISummaryNotificationDisplayer
    public Object updateSummaryNotification(NotificationGenerationJob notificationGenerationJob, Continuation<? super Unit> continuation) {
        Object objCreateSummaryNotification = createSummaryNotification(notificationGenerationJob, null, this._notificationDisplayBuilder.getGroupAlertBehavior(), continuation);
        return objCreateSummaryNotification == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCreateSummaryNotification : Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:115:0x0257 A[EDGE_INSN: B:115:0x0257->B:54:0x0257 BREAK  A[LOOP:0: B:35:0x01d4->B:53:0x024d], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:118:0x024d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:32:0x01c0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:33:0x01c1  */
    /* JADX WARN: Code duplicated, block: B:37:0x01de  */
    /* JADX WARN: Code duplicated, block: B:39:0x01e8  */
    /* JADX WARN: Code duplicated, block: B:41:0x01f4  */
    /* JADX WARN: Code duplicated, block: B:42:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:46:0x0200  */
    /* JADX WARN: Code duplicated, block: B:49:0x0233  */
    /* JADX WARN: Code duplicated, block: B:52:0x0249  */
    /* JADX WARN: Code duplicated, block: B:65:0x02b5  */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    /* JADX WARN: Instruction removed from duplicated block: B:46:0x0200, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:65:0x02b5, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.onesignal.notifications.internal.display.ISummaryNotificationDisplayer
    public Object createSummaryNotification(NotificationGenerationJob notificationGenerationJob, NotificationDisplayBuilder.OneSignalNotificationBuilder oneSignalNotificationBuilder, int i, Continuation<? super Unit> continuation) {
        C02771 c02771;
        String group;
        NotificationGenerationJob notificationGenerationJob2;
        NotificationDisplayBuilder.OneSignalNotificationBuilder oneSignalNotificationBuilder2;
        int i2;
        JSONObject jSONObject;
        boolean z;
        PendingIntent pendingIntent;
        IntentGeneratorForAttachingToNotifications intentGeneratorForAttachingToNotifications;
        SecureRandom secureRandom;
        SummaryNotificationDisplayer summaryNotificationDisplayer;
        PendingIntent pendingIntent2;
        NotificationDisplayBuilder.OneSignalNotificationBuilder oneSignalNotificationBuilder3;
        SecureRandom secureRandom2;
        IntentGeneratorForAttachingToNotifications intentGeneratorForAttachingToNotifications2;
        NotificationGenerationJob notificationGenerationJob3;
        Integer num;
        String group2;
        int i3;
        IntentGeneratorForAttachingToNotifications intentGeneratorForAttachingToNotifications3;
        Integer num2;
        SecureRandom secureRandom3;
        NotificationDisplayBuilder.OneSignalNotificationBuilder oneSignalNotificationBuilder4;
        String str;
        NotificationGenerationJob notificationGenerationJob4;
        boolean z2;
        SummaryNotificationDisplayer summaryNotificationDisplayer2;
        int i4;
        JSONObject jSONObject2;
        NotificationDisplayBuilder.OneSignalNotificationBuilder oneSignalNotificationBuilder5;
        ArrayList arrayList;
        Iterator it;
        String fullData;
        NotificationDisplayBuilder.OneSignalNotificationBuilder oneSignalNotificationBuilder6;
        String str2;
        int i5;
        PendingIntent pendingIntent3;
        PendingIntent newActionPendingIntent;
        Notification notificationBuild;
        String strReplace$default;
        String str3;
        String string;
        INotificationRepository.NotificationData notificationData;
        int i6;
        String title;
        SpannableString spannableString;
        PendingIntent pendingIntent4;
        if (continuation instanceof C02771) {
            c02771 = (C02771) continuation;
            if ((c02771.label & Integer.MIN_VALUE) != 0) {
                c02771.label -= Integer.MIN_VALUE;
            } else {
                c02771 = new C02771(continuation);
            }
        } else {
            c02771 = new C02771(continuation);
        }
        Object objListNotificationsForGroup = c02771.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i7 = c02771.label;
        if (i7 != 0) {
            if (i7 == 1) {
                z = c02771.Z$0;
                int i8 = c02771.I$0;
                PendingIntent pendingIntent5 = (PendingIntent) c02771.L$7;
                SecureRandom secureRandom4 = (SecureRandom) c02771.L$6;
                String str4 = (String) c02771.L$5;
                IntentGeneratorForAttachingToNotifications intentGeneratorForAttachingToNotifications4 = (IntentGeneratorForAttachingToNotifications) c02771.L$4;
                JSONObject jSONObject3 = (JSONObject) c02771.L$3;
                oneSignalNotificationBuilder2 = (NotificationDisplayBuilder.OneSignalNotificationBuilder) c02771.L$2;
                NotificationGenerationJob notificationGenerationJob5 = (NotificationGenerationJob) c02771.L$1;
                SummaryNotificationDisplayer summaryNotificationDisplayer3 = (SummaryNotificationDisplayer) c02771.L$0;
                ResultKt.throwOnFailure(objListNotificationsForGroup);
                i2 = i8;
                secureRandom = secureRandom4;
                summaryNotificationDisplayer = summaryNotificationDisplayer3;
                jSONObject = jSONObject3;
                notificationGenerationJob2 = notificationGenerationJob5;
                pendingIntent = pendingIntent5;
                group = str4;
                intentGeneratorForAttachingToNotifications = intentGeneratorForAttachingToNotifications4;
            } else if (i7 == 2) {
                z = c02771.Z$0;
                i3 = c02771.I$0;
                num2 = (Integer) c02771.L$8;
                pendingIntent = (PendingIntent) c02771.L$7;
                secureRandom3 = (SecureRandom) c02771.L$6;
                str = (String) c02771.L$5;
                intentGeneratorForAttachingToNotifications3 = (IntentGeneratorForAttachingToNotifications) c02771.L$4;
                jSONObject = (JSONObject) c02771.L$3;
                oneSignalNotificationBuilder4 = (NotificationDisplayBuilder.OneSignalNotificationBuilder) c02771.L$2;
                notificationGenerationJob4 = (NotificationGenerationJob) c02771.L$1;
                summaryNotificationDisplayer = (SummaryNotificationDisplayer) c02771.L$0;
                ResultKt.throwOnFailure(objListNotificationsForGroup);
                oneSignalNotificationBuilder3 = oneSignalNotificationBuilder4;
                num = num2;
                notificationGenerationJob3 = notificationGenerationJob4;
                IntentGeneratorForAttachingToNotifications intentGeneratorForAttachingToNotifications5 = intentGeneratorForAttachingToNotifications3;
                i2 = i3;
                pendingIntent2 = pendingIntent;
                secureRandom2 = secureRandom3;
                group2 = str;
                intentGeneratorForAttachingToNotifications2 = intentGeneratorForAttachingToNotifications5;
                INotificationRepository iNotificationRepository = summaryNotificationDisplayer._dataController;
                Intrinsics.checkNotNullExpressionValue(group2, "group");
                c02771.L$0 = summaryNotificationDisplayer;
                c02771.L$1 = notificationGenerationJob3;
                c02771.L$2 = oneSignalNotificationBuilder3;
                c02771.L$3 = jSONObject;
                c02771.L$4 = intentGeneratorForAttachingToNotifications2;
                c02771.L$5 = group2;
                c02771.L$6 = secureRandom2;
                c02771.L$7 = pendingIntent2;
                c02771.L$8 = num;
                c02771.I$0 = i2;
                c02771.Z$0 = z;
                c02771.label = 3;
                objListNotificationsForGroup = iNotificationRepository.listNotificationsForGroup(group2, c02771);
                if (objListNotificationsForGroup == coroutine_suspended) {
                    return coroutine_suspended;
                }
                z2 = z;
                summaryNotificationDisplayer2 = summaryNotificationDisplayer;
                i4 = i2;
                jSONObject2 = jSONObject;
                oneSignalNotificationBuilder5 = oneSignalNotificationBuilder3;
            } else {
                if (i7 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                boolean z3 = c02771.Z$0;
                i4 = c02771.I$0;
                num = (Integer) c02771.L$8;
                pendingIntent2 = (PendingIntent) c02771.L$7;
                secureRandom2 = (SecureRandom) c02771.L$6;
                group2 = (String) c02771.L$5;
                intentGeneratorForAttachingToNotifications2 = (IntentGeneratorForAttachingToNotifications) c02771.L$4;
                jSONObject2 = (JSONObject) c02771.L$3;
                oneSignalNotificationBuilder5 = (NotificationDisplayBuilder.OneSignalNotificationBuilder) c02771.L$2;
                notificationGenerationJob3 = (NotificationGenerationJob) c02771.L$1;
                summaryNotificationDisplayer2 = (SummaryNotificationDisplayer) c02771.L$0;
                ResultKt.throwOnFailure(objListNotificationsForGroup);
                z2 = z3;
            }
            arrayList = new ArrayList();
            it = ((List) objListNotificationsForGroup).iterator();
            fullData = null;
            while (true) {
                oneSignalNotificationBuilder6 = oneSignalNotificationBuilder5;
                str2 = "";
                if (it.hasNext()) {
                    break;
                }
                notificationData = (INotificationRepository.NotificationData) it.next();
                Iterator it2 = it;
                if (z2 == 0) {
                    i6 = i4;
                    if (notificationData.getAndroidId() == notificationGenerationJob3.getAndroidId()) {
                        pendingIntent4 = pendingIntent2;
                    }
                    oneSignalNotificationBuilder5 = oneSignalNotificationBuilder6;
                    it = it2;
                    i4 = i6;
                    pendingIntent2 = pendingIntent4;
                } else {
                    i6 = i4;
                }
                title = notificationData.getTitle();
                if (title != null) {
                    str2 = title + ' ';
                }
                StringBuilder sb = new StringBuilder();
                sb.append(str2);
                pendingIntent4 = pendingIntent2;
                sb.append(notificationData.getMessage());
                spannableString = new SpannableString(sb.toString());
                if (str2.length() > 0) {
                    spannableString.setSpan(new StyleSpan(1), 0, str2.length(), 0);
                }
                arrayList.add(spannableString);
                if (fullData == null) {
                    fullData = notificationData.getFullData();
                }
                oneSignalNotificationBuilder5 = oneSignalNotificationBuilder6;
                it = it2;
                i4 = i6;
                pendingIntent2 = pendingIntent4;
            }
            i5 = i4;
            pendingIntent3 = pendingIntent2;
            int iNextInt = secureRandom2.nextInt();
            Intrinsics.checkNotNull(num);
            int iIntValue = num.intValue();
            Intrinsics.checkNotNullExpressionValue(group2, "group");
            newActionPendingIntent = intentGeneratorForAttachingToNotifications2.getNewActionPendingIntent(iNextInt, summaryNotificationDisplayer2.createBaseSummaryIntent(iIntValue, intentGeneratorForAttachingToNotifications2, jSONObject2, group2));
            if ((z2 != 0 || arrayList.size() <= 1) && (z2 != 0 || arrayList.size() <= 0)) {
                Intrinsics.checkNotNull(oneSignalNotificationBuilder6);
                NotificationCompat.Builder compatBuilder = oneSignalNotificationBuilder6.getCompatBuilder();
                Intrinsics.checkNotNull(compatBuilder);
                compatBuilder.mActions.clear();
                summaryNotificationDisplayer2._notificationDisplayBuilder.addNotificationActionButtons(jSONObject2, intentGeneratorForAttachingToNotifications2, compatBuilder, num.intValue(), group2);
                compatBuilder.setContentIntent(newActionPendingIntent).setDeleteIntent(pendingIntent3).setOnlyAlertOnce(z2).setAutoCancel(false).setGroup(group2).setGroupSummary(true);
                try {
                    compatBuilder.setGroupAlertBehavior(i5);
                } catch (Throwable unused) {
                }
                notificationBuild = compatBuilder.build();
                Intrinsics.checkNotNullExpressionValue(notificationBuild, "summaryBuilder.build()");
                summaryNotificationDisplayer2._notificationDisplayBuilder.addXiaomiSettings(oneSignalNotificationBuilder6, notificationBuild);
            } else {
                ArrayList arrayList2 = arrayList;
                int size = arrayList2.size() + (!z2);
                String strSafeString = JSONObjectExtensionsKt.safeString(jSONObject2, "grp_msg");
                if (strSafeString != null) {
                    strReplace$default = StringsKt.replace$default(strSafeString, "$[notif_count]", "" + size, false, 4, (Object) null);
                    if (strReplace$default == null) {
                        strReplace$default = size + " new messages";
                    }
                } else {
                    strReplace$default = size + " new messages";
                }
                NotificationCompat.Builder compatBuilder2 = summaryNotificationDisplayer2._notificationDisplayBuilder.getBaseOneSignalNotificationBuilder(notificationGenerationJob3).getCompatBuilder();
                if (z2 != 0) {
                    summaryNotificationDisplayer2._notificationDisplayBuilder.removeNotifyOptions(compatBuilder2);
                } else {
                    if (notificationGenerationJob3.getOverriddenSound() != null) {
                        Intrinsics.checkNotNull(compatBuilder2);
                        compatBuilder2.setSound(notificationGenerationJob3.getOverriddenSound());
                    }
                    if (notificationGenerationJob3.getOverriddenFlags() != null) {
                        Intrinsics.checkNotNull(compatBuilder2);
                        Integer overriddenFlags = notificationGenerationJob3.getOverriddenFlags();
                        Intrinsics.checkNotNull(overriddenFlags);
                        compatBuilder2.setDefaults(overriddenFlags.intValue());
                    }
                }
                Intrinsics.checkNotNull(compatBuilder2);
                NotificationCompat.Builder deleteIntent = compatBuilder2.setContentIntent(newActionPendingIntent).setDeleteIntent(pendingIntent3);
                Context currentContext = summaryNotificationDisplayer2.getCurrentContext();
                Intrinsics.checkNotNull(currentContext);
                PackageManager packageManager = currentContext.getPackageManager();
                Context currentContext2 = summaryNotificationDisplayer2.getCurrentContext();
                Intrinsics.checkNotNull(currentContext2);
                String str5 = strReplace$default;
                deleteIntent.setContentTitle(packageManager.getApplicationLabel(currentContext2.getApplicationInfo())).setContentText(str5).setNumber(size).setSmallIcon(summaryNotificationDisplayer2._notificationDisplayBuilder.getDefaultSmallIconId()).setLargeIcon(summaryNotificationDisplayer2._notificationDisplayBuilder.getDefaultLargeIcon()).setOnlyAlertOnce(z2).setAutoCancel(false).setGroup(group2).setGroupSummary(true);
                try {
                    compatBuilder2.setGroupAlertBehavior(i5);
                } catch (Throwable unused2) {
                }
                if (z2 == 0) {
                    compatBuilder2.setTicker(str5);
                }
                NotificationCompat.InboxStyle inboxStyle = new NotificationCompat.InboxStyle();
                if (z2 == 0) {
                    String strValueOf = notificationGenerationJob3.getTitle() != null ? String.valueOf(notificationGenerationJob3.getTitle()) : null;
                    if (strValueOf == null) {
                        str3 = "";
                    } else {
                        str3 = strValueOf + ' ';
                    }
                    CharSequence body = notificationGenerationJob3.getBody();
                    if (body != null && (string = body.toString()) != null) {
                        str2 = string;
                    }
                    SpannableString spannableString2 = new SpannableString(str3 + str2);
                    if (str3.length() > 0) {
                        spannableString2.setSpan(new StyleSpan(1), 0, str3.length(), 0);
                    }
                    inboxStyle.addLine(spannableString2);
                }
                Iterator it3 = arrayList2.iterator();
                while (it3.hasNext()) {
                    inboxStyle.addLine((SpannableString) it3.next());
                }
                inboxStyle.setBigContentTitle(str5);
                compatBuilder2.setStyle(inboxStyle);
                notificationBuild = compatBuilder2.build();
                Intrinsics.checkNotNullExpressionValue(notificationBuild, "summaryBuilder.build()");
            }
            Context currentContext3 = summaryNotificationDisplayer2.getCurrentContext();
            Intrinsics.checkNotNull(currentContext3);
            NotificationManagerCompat.from(currentContext3).notify(num.intValue(), notificationBuild);
            return Unit.INSTANCE;
        }
        ResultKt.throwOnFailure(objListNotificationsForGroup);
        boolean isRestoring = notificationGenerationJob.getIsRestoring();
        JSONObject jsonPayload = notificationGenerationJob.getJsonPayload();
        Intrinsics.checkNotNull(jsonPayload);
        Context currentContext4 = getCurrentContext();
        Intrinsics.checkNotNull(currentContext4);
        IntentGeneratorForAttachingToNotifications intentGeneratorForAttachingToNotifications6 = new IntentGeneratorForAttachingToNotifications(currentContext4);
        group = jsonPayload.optString("grp", null);
        SecureRandom secureRandom5 = new SecureRandom();
        INotificationDisplayBuilder iNotificationDisplayBuilder = this._notificationDisplayBuilder;
        int iNextInt2 = secureRandom5.nextInt();
        Intent intentPutExtra = this._notificationDisplayBuilder.getNewBaseDismissIntent(0).putExtra("summary", group);
        Intrinsics.checkNotNullExpressionValue(intentPutExtra, "_notificationDisplayBuil…utExtra(\"summary\", group)");
        PendingIntent newDismissActionPendingIntent = iNotificationDisplayBuilder.getNewDismissActionPendingIntent(iNextInt2, intentPutExtra);
        INotificationRepository iNotificationRepository2 = this._dataController;
        Intrinsics.checkNotNullExpressionValue(group, "group");
        c02771.L$0 = this;
        notificationGenerationJob2 = notificationGenerationJob;
        c02771.L$1 = notificationGenerationJob2;
        oneSignalNotificationBuilder2 = oneSignalNotificationBuilder;
        c02771.L$2 = oneSignalNotificationBuilder2;
        c02771.L$3 = jsonPayload;
        c02771.L$4 = intentGeneratorForAttachingToNotifications6;
        c02771.L$5 = group;
        c02771.L$6 = secureRandom5;
        c02771.L$7 = newDismissActionPendingIntent;
        i2 = i;
        c02771.I$0 = i2;
        c02771.Z$0 = isRestoring;
        c02771.label = 1;
        Object androidIdForGroup = iNotificationRepository2.getAndroidIdForGroup(group, true, c02771);
        if (androidIdForGroup == coroutine_suspended) {
            return coroutine_suspended;
        }
        jSONObject = jsonPayload;
        z = isRestoring;
        objListNotificationsForGroup = androidIdForGroup;
        pendingIntent = newDismissActionPendingIntent;
        intentGeneratorForAttachingToNotifications = intentGeneratorForAttachingToNotifications6;
        secureRandom = secureRandom5;
        summaryNotificationDisplayer = this;
        Integer num3 = (Integer) objListNotificationsForGroup;
        if (num3 == null) {
            Integer numBoxInt = Boxing.boxInt(secureRandom.nextInt());
            INotificationRepository iNotificationRepository3 = summaryNotificationDisplayer._dataController;
            int iIntValue2 = numBoxInt.intValue();
            Intrinsics.checkNotNullExpressionValue(group, "group");
            c02771.L$0 = summaryNotificationDisplayer;
            c02771.L$1 = notificationGenerationJob2;
            c02771.L$2 = oneSignalNotificationBuilder2;
            c02771.L$3 = jSONObject;
            c02771.L$4 = intentGeneratorForAttachingToNotifications;
            c02771.L$5 = group;
            c02771.L$6 = secureRandom;
            c02771.L$7 = pendingIntent;
            c02771.L$8 = numBoxInt;
            c02771.I$0 = i2;
            c02771.Z$0 = z;
            c02771.label = 2;
            if (iNotificationRepository3.createSummaryNotification(iIntValue2, group, c02771) == coroutine_suspended) {
                return coroutine_suspended;
            }
            i3 = i2;
            intentGeneratorForAttachingToNotifications3 = intentGeneratorForAttachingToNotifications;
            num2 = numBoxInt;
            NotificationGenerationJob notificationGenerationJob6 = notificationGenerationJob2;
            secureRandom3 = secureRandom;
            oneSignalNotificationBuilder4 = oneSignalNotificationBuilder2;
            str = group;
            notificationGenerationJob4 = notificationGenerationJob6;
            oneSignalNotificationBuilder3 = oneSignalNotificationBuilder4;
            num = num2;
            notificationGenerationJob3 = notificationGenerationJob4;
            IntentGeneratorForAttachingToNotifications intentGeneratorForAttachingToNotifications7 = intentGeneratorForAttachingToNotifications3;
            i2 = i3;
            pendingIntent2 = pendingIntent;
            secureRandom2 = secureRandom3;
            group2 = str;
            intentGeneratorForAttachingToNotifications2 = intentGeneratorForAttachingToNotifications7;
        } else {
            pendingIntent2 = pendingIntent;
            oneSignalNotificationBuilder3 = oneSignalNotificationBuilder2;
            secureRandom2 = secureRandom;
            intentGeneratorForAttachingToNotifications2 = intentGeneratorForAttachingToNotifications;
            notificationGenerationJob3 = notificationGenerationJob2;
            num = num3;
            group2 = group;
        }
        INotificationRepository iNotificationRepository4 = summaryNotificationDisplayer._dataController;
        Intrinsics.checkNotNullExpressionValue(group2, "group");
        c02771.L$0 = summaryNotificationDisplayer;
        c02771.L$1 = notificationGenerationJob3;
        c02771.L$2 = oneSignalNotificationBuilder3;
        c02771.L$3 = jSONObject;
        c02771.L$4 = intentGeneratorForAttachingToNotifications2;
        c02771.L$5 = group2;
        c02771.L$6 = secureRandom2;
        c02771.L$7 = pendingIntent2;
        c02771.L$8 = num;
        c02771.I$0 = i2;
        c02771.Z$0 = z;
        c02771.label = 3;
        objListNotificationsForGroup = iNotificationRepository4.listNotificationsForGroup(group2, c02771);
        if (objListNotificationsForGroup == coroutine_suspended) {
            return coroutine_suspended;
        }
        z2 = z;
        summaryNotificationDisplayer2 = summaryNotificationDisplayer;
        i4 = i2;
        jSONObject2 = jSONObject;
        oneSignalNotificationBuilder5 = oneSignalNotificationBuilder3;
        arrayList = new ArrayList();
        it = ((List) objListNotificationsForGroup).iterator();
        fullData = null;
        while (true) {
            oneSignalNotificationBuilder6 = oneSignalNotificationBuilder5;
            str2 = "";
            if (it.hasNext()) {
                break;
                break;
            }
            notificationData = (INotificationRepository.NotificationData) it.next();
            Iterator it4 = it;
            if (z2 == 0) {
                i6 = i4;
                if (notificationData.getAndroidId() == notificationGenerationJob3.getAndroidId()) {
                    pendingIntent4 = pendingIntent2;
                }
                oneSignalNotificationBuilder5 = oneSignalNotificationBuilder6;
                it = it4;
                i4 = i6;
                pendingIntent2 = pendingIntent4;
            } else {
                i6 = i4;
            }
            title = notificationData.getTitle();
            if (title != null) {
                str2 = title + ' ';
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str2);
            pendingIntent4 = pendingIntent2;
            sb2.append(notificationData.getMessage());
            spannableString = new SpannableString(sb2.toString());
            if (str2.length() > 0) {
                spannableString.setSpan(new StyleSpan(1), 0, str2.length(), 0);
            }
            arrayList.add(spannableString);
            if (fullData == null) {
                fullData = notificationData.getFullData();
            }
            oneSignalNotificationBuilder5 = oneSignalNotificationBuilder6;
            it = it4;
            i4 = i6;
            pendingIntent2 = pendingIntent4;
        }
        i5 = i4;
        pendingIntent3 = pendingIntent2;
        int iNextInt3 = secureRandom2.nextInt();
        Intrinsics.checkNotNull(num);
        int iIntValue3 = num.intValue();
        Intrinsics.checkNotNullExpressionValue(group2, "group");
        newActionPendingIntent = intentGeneratorForAttachingToNotifications2.getNewActionPendingIntent(iNextInt3, summaryNotificationDisplayer2.createBaseSummaryIntent(iIntValue3, intentGeneratorForAttachingToNotifications2, jSONObject2, group2));
        if (z2 != 0) {
            Intrinsics.checkNotNull(oneSignalNotificationBuilder6);
            NotificationCompat.Builder compatBuilder3 = oneSignalNotificationBuilder6.getCompatBuilder();
            Intrinsics.checkNotNull(compatBuilder3);
            compatBuilder3.mActions.clear();
            summaryNotificationDisplayer2._notificationDisplayBuilder.addNotificationActionButtons(jSONObject2, intentGeneratorForAttachingToNotifications2, compatBuilder3, num.intValue(), group2);
            compatBuilder3.setContentIntent(newActionPendingIntent).setDeleteIntent(pendingIntent3).setOnlyAlertOnce(z2).setAutoCancel(false).setGroup(group2).setGroupSummary(true);
            compatBuilder3.setGroupAlertBehavior(i5);
            notificationBuild = compatBuilder3.build();
            Intrinsics.checkNotNullExpressionValue(notificationBuild, "summaryBuilder.build()");
            summaryNotificationDisplayer2._notificationDisplayBuilder.addXiaomiSettings(oneSignalNotificationBuilder6, notificationBuild);
        } else {
            Intrinsics.checkNotNull(oneSignalNotificationBuilder6);
            NotificationCompat.Builder compatBuilder4 = oneSignalNotificationBuilder6.getCompatBuilder();
            Intrinsics.checkNotNull(compatBuilder4);
            compatBuilder4.mActions.clear();
            summaryNotificationDisplayer2._notificationDisplayBuilder.addNotificationActionButtons(jSONObject2, intentGeneratorForAttachingToNotifications2, compatBuilder4, num.intValue(), group2);
            compatBuilder4.setContentIntent(newActionPendingIntent).setDeleteIntent(pendingIntent3).setOnlyAlertOnce(z2).setAutoCancel(false).setGroup(group2).setGroupSummary(true);
            compatBuilder4.setGroupAlertBehavior(i5);
            notificationBuild = compatBuilder4.build();
            Intrinsics.checkNotNullExpressionValue(notificationBuild, "summaryBuilder.build()");
            summaryNotificationDisplayer2._notificationDisplayBuilder.addXiaomiSettings(oneSignalNotificationBuilder6, notificationBuild);
        }
        Context currentContext5 = summaryNotificationDisplayer2.getCurrentContext();
        Intrinsics.checkNotNull(currentContext5);
        NotificationManagerCompat.from(currentContext5).notify(num.intValue(), notificationBuild);
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.notifications.internal.display.ISummaryNotificationDisplayer
    public Object createGrouplessSummaryNotification(NotificationGenerationJob notificationGenerationJob, IntentGeneratorForAttachingToNotifications intentGeneratorForAttachingToNotifications, int i, int i2, Continuation<? super Unit> continuation) {
        AnonymousClass1 anonymousClass1;
        JSONObject jsonPayload;
        SecureRandom secureRandom;
        String str;
        SummaryNotificationDisplayer summaryNotificationDisplayer;
        String str2;
        NotificationGenerationJob notificationGenerationJob2;
        int i3;
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
        int i4 = anonymousClass1.label;
        if (i4 == 0) {
            ResultKt.throwOnFailure(obj);
            jsonPayload = notificationGenerationJob.getJsonPayload();
            Intrinsics.checkNotNull(jsonPayload);
            secureRandom = new SecureRandom();
            str = i + " new messages";
            INotificationRepository iNotificationRepository = this._dataController;
            anonymousClass1.L$0 = this;
            anonymousClass1.L$1 = notificationGenerationJob;
            anonymousClass1.L$2 = intentGeneratorForAttachingToNotifications;
            anonymousClass1.L$3 = jsonPayload;
            anonymousClass1.L$4 = secureRandom;
            anonymousClass1.L$5 = NotificationHelper.GROUPLESS_SUMMARY_KEY;
            anonymousClass1.L$6 = str;
            anonymousClass1.I$0 = i;
            anonymousClass1.I$1 = i2;
            anonymousClass1.I$2 = NotificationHelper.GROUPLESS_SUMMARY_ID;
            anonymousClass1.label = 1;
            if (iNotificationRepository.createSummaryNotification(NotificationHelper.GROUPLESS_SUMMARY_ID, NotificationHelper.GROUPLESS_SUMMARY_KEY, anonymousClass1) == coroutine_suspended) {
                return coroutine_suspended;
            }
            summaryNotificationDisplayer = this;
            str2 = NotificationHelper.GROUPLESS_SUMMARY_KEY;
            notificationGenerationJob2 = notificationGenerationJob;
            i3 = NotificationHelper.GROUPLESS_SUMMARY_ID;
        } else {
            if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i3 = anonymousClass1.I$2;
            i2 = anonymousClass1.I$1;
            i = anonymousClass1.I$0;
            String str3 = (String) anonymousClass1.L$6;
            str2 = (String) anonymousClass1.L$5;
            secureRandom = (SecureRandom) anonymousClass1.L$4;
            jsonPayload = (JSONObject) anonymousClass1.L$3;
            IntentGeneratorForAttachingToNotifications intentGeneratorForAttachingToNotifications2 = (IntentGeneratorForAttachingToNotifications) anonymousClass1.L$2;
            notificationGenerationJob2 = (NotificationGenerationJob) anonymousClass1.L$1;
            summaryNotificationDisplayer = (SummaryNotificationDisplayer) anonymousClass1.L$0;
            ResultKt.throwOnFailure(obj);
            str = str3;
            intentGeneratorForAttachingToNotifications = intentGeneratorForAttachingToNotifications2;
        }
        PendingIntent newActionPendingIntent = intentGeneratorForAttachingToNotifications.getNewActionPendingIntent(secureRandom.nextInt(), summaryNotificationDisplayer.createBaseSummaryIntent(i3, intentGeneratorForAttachingToNotifications, jsonPayload, str2));
        INotificationDisplayBuilder iNotificationDisplayBuilder = summaryNotificationDisplayer._notificationDisplayBuilder;
        int iNextInt = secureRandom.nextInt();
        Intent intentPutExtra = summaryNotificationDisplayer._notificationDisplayBuilder.getNewBaseDismissIntent(0).putExtra("summary", str2);
        Intrinsics.checkNotNullExpressionValue(intentPutExtra, "_notificationDisplayBuil…utExtra(\"summary\", group)");
        PendingIntent newDismissActionPendingIntent = iNotificationDisplayBuilder.getNewDismissActionPendingIntent(iNextInt, intentPutExtra);
        NotificationCompat.Builder compatBuilder = summaryNotificationDisplayer._notificationDisplayBuilder.getBaseOneSignalNotificationBuilder(notificationGenerationJob2).getCompatBuilder();
        if (notificationGenerationJob2.getOverriddenSound() != null) {
            Intrinsics.checkNotNull(compatBuilder);
            compatBuilder.setSound(notificationGenerationJob2.getOverriddenSound());
        }
        if (notificationGenerationJob2.getOverriddenFlags() != null) {
            Intrinsics.checkNotNull(compatBuilder);
            Integer overriddenFlags = notificationGenerationJob2.getOverriddenFlags();
            Intrinsics.checkNotNull(overriddenFlags);
            compatBuilder.setDefaults(overriddenFlags.intValue());
        }
        Intrinsics.checkNotNull(compatBuilder);
        NotificationCompat.Builder deleteIntent = compatBuilder.setContentIntent(newActionPendingIntent).setDeleteIntent(newDismissActionPendingIntent);
        Context currentContext = summaryNotificationDisplayer.getCurrentContext();
        Intrinsics.checkNotNull(currentContext);
        PackageManager packageManager = currentContext.getPackageManager();
        Context currentContext2 = summaryNotificationDisplayer.getCurrentContext();
        Intrinsics.checkNotNull(currentContext2);
        String str4 = str;
        deleteIntent.setContentTitle(packageManager.getApplicationLabel(currentContext2.getApplicationInfo())).setContentText(str4).setNumber(i).setSmallIcon(summaryNotificationDisplayer._notificationDisplayBuilder.getDefaultSmallIconId()).setLargeIcon(summaryNotificationDisplayer._notificationDisplayBuilder.getDefaultLargeIcon()).setOnlyAlertOnce(true).setAutoCancel(false).setGroup(str2).setGroupSummary(true);
        try {
            compatBuilder.setGroupAlertBehavior(i2);
        } catch (Throwable unused) {
        }
        NotificationCompat.InboxStyle inboxStyle = new NotificationCompat.InboxStyle();
        inboxStyle.setBigContentTitle(str4);
        compatBuilder.setStyle(inboxStyle);
        Notification notificationBuild = compatBuilder.build();
        Intrinsics.checkNotNullExpressionValue(notificationBuild, "summaryBuilder.build()");
        Context currentContext3 = summaryNotificationDisplayer.getCurrentContext();
        Intrinsics.checkNotNull(currentContext3);
        NotificationManagerCompat.from(currentContext3).notify(i3, notificationBuild);
        return Unit.INSTANCE;
    }

    private final Intent createBaseSummaryIntent(int summaryNotificationId, IntentGeneratorForAttachingToNotifications intentGenerator, JSONObject fcmJson, String group) {
        Intent intentPutExtra = intentGenerator.getNewBaseIntent(summaryNotificationId).putExtra(NotificationConstants.BUNDLE_KEY_ONESIGNAL_DATA, fcmJson.toString()).putExtra("summary", group);
        Intrinsics.checkNotNullExpressionValue(intentPutExtra, "intentGenerator.getNewBa…utExtra(\"summary\", group)");
        return intentPutExtra;
    }
}
