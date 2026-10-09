package com.onesignal.notifications.internal.restoration.impl;

import android.os.Build;
import android.service.notification.StatusBarNotification;
import com.onesignal.core.internal.application.IApplicationService;
import com.onesignal.core.internal.database.impl.OneSignalDbContract;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.notifications.BuildConfig;
import com.onesignal.notifications.internal.badges.IBadgeCountUpdater;
import com.onesignal.notifications.internal.common.NotificationHelper;
import com.onesignal.notifications.internal.data.INotificationRepository;
import com.onesignal.notifications.internal.generation.INotificationGenerationWorkManager;
import com.onesignal.notifications.internal.restoration.INotificationRestoreProcessor;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DelayKt;
import org.json.JSONObject;

/* JADX INFO: compiled from: NotificationRestoreProcessor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0010\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fH\u0002J\u0011\u0010\u000e\u001a\u00020\u000fH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0010J!\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\rH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0017"}, d2 = {"Lcom/onesignal/notifications/internal/restoration/impl/NotificationRestoreProcessor;", "Lcom/onesignal/notifications/internal/restoration/INotificationRestoreProcessor;", "_applicationService", "Lcom/onesignal/core/internal/application/IApplicationService;", "_workManager", "Lcom/onesignal/notifications/internal/generation/INotificationGenerationWorkManager;", "_dataController", "Lcom/onesignal/notifications/internal/data/INotificationRepository;", "_badgeCountUpdater", "Lcom/onesignal/notifications/internal/badges/IBadgeCountUpdater;", "(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/notifications/internal/generation/INotificationGenerationWorkManager;Lcom/onesignal/notifications/internal/data/INotificationRepository;Lcom/onesignal/notifications/internal/badges/IBadgeCountUpdater;)V", "getVisibleNotifications", "", "", "process", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "processNotification", OneSignalDbContract.NotificationTable.TABLE_NAME, "Lcom/onesignal/notifications/internal/data/INotificationRepository$NotificationData;", "delay", "(Lcom/onesignal/notifications/internal/data/INotificationRepository$NotificationData;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class NotificationRestoreProcessor implements INotificationRestoreProcessor {
    public static final int DEFAULT_TTL_IF_NOT_IN_PAYLOAD = 259200;
    private static final int DELAY_BETWEEN_NOTIFICATION_RESTORES_MS = 200;
    private final IApplicationService _applicationService;
    private final IBadgeCountUpdater _badgeCountUpdater;
    private final INotificationRepository _dataController;
    private final INotificationGenerationWorkManager _workManager;

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.restoration.impl.NotificationRestoreProcessor$process$1, reason: invalid class name */
    /* JADX INFO: compiled from: NotificationRestoreProcessor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.restoration.impl.NotificationRestoreProcessor", f = "NotificationRestoreProcessor.kt", i = {0, 1}, l = {25, 28}, m = "process", n = {"this", "this"}, s = {"L$0", "L$0"})
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
            return NotificationRestoreProcessor.this.process(this);
        }
    }

    public NotificationRestoreProcessor(IApplicationService _applicationService, INotificationGenerationWorkManager _workManager, INotificationRepository _dataController, IBadgeCountUpdater _badgeCountUpdater) {
        Intrinsics.checkNotNullParameter(_applicationService, "_applicationService");
        Intrinsics.checkNotNullParameter(_workManager, "_workManager");
        Intrinsics.checkNotNullParameter(_dataController, "_dataController");
        Intrinsics.checkNotNullParameter(_badgeCountUpdater, "_badgeCountUpdater");
        this._applicationService = _applicationService;
        this._workManager = _workManager;
        this._dataController = _dataController;
        this._badgeCountUpdater = _badgeCountUpdater;
    }

    /* JADX WARN: Code duplicated, block: B:28:0x006e A[Catch: all -> 0x0089, TryCatch #0 {all -> 0x0089, blocks: (B:13:0x0031, B:26:0x0068, B:28:0x006e, B:31:0x0083, B:18:0x0041, B:25:0x0060, B:21:0x004e), top: B:37:0x0023 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x0082 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:42:? A[LOOP:0: B:26:0x0068->B:42:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.notifications.internal.restoration.INotificationRestoreProcessor
    public Object process(Continuation<? super Unit> continuation) {
        AnonymousClass1 anonymousClass1;
        NotificationRestoreProcessor notificationRestoreProcessor;
        NotificationRestoreProcessor notificationRestoreProcessor2;
        Iterator it;
        INotificationRepository.NotificationData notificationData;
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
        Object objListNotificationsForOutstanding = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(objListNotificationsForOutstanding);
                Logging.info$default("Restoring notifications", null, 2, null);
                List<Integer> visibleNotifications = getVisibleNotifications();
                INotificationRepository iNotificationRepository = this._dataController;
                anonymousClass1.L$0 = this;
                anonymousClass1.label = 1;
                objListNotificationsForOutstanding = iNotificationRepository.listNotificationsForOutstanding(visibleNotifications, anonymousClass1);
                if (objListNotificationsForOutstanding == coroutine_suspended) {
                    return coroutine_suspended;
                }
                notificationRestoreProcessor = this;
            } else {
                if (i == 1) {
                    notificationRestoreProcessor = (NotificationRestoreProcessor) anonymousClass1.L$0;
                    ResultKt.throwOnFailure(objListNotificationsForOutstanding);
                } else {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    it = (Iterator) anonymousClass1.L$1;
                    notificationRestoreProcessor2 = (NotificationRestoreProcessor) anonymousClass1.L$0;
                    ResultKt.throwOnFailure(objListNotificationsForOutstanding);
                }
                while (it.hasNext()) {
                    notificationData = (INotificationRepository.NotificationData) it.next();
                    anonymousClass1.L$0 = notificationRestoreProcessor2;
                    anonymousClass1.L$1 = it;
                    anonymousClass1.label = 2;
                    if (notificationRestoreProcessor2.processNotification(notificationData, 200, anonymousClass1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                notificationRestoreProcessor2._badgeCountUpdater.update();
                return Unit.INSTANCE;
            }
            notificationRestoreProcessor2 = notificationRestoreProcessor;
            it = ((List) objListNotificationsForOutstanding).iterator();
            while (it.hasNext()) {
                notificationData = (INotificationRepository.NotificationData) it.next();
                anonymousClass1.L$0 = notificationRestoreProcessor2;
                anonymousClass1.L$1 = it;
                anonymousClass1.label = 2;
                if (notificationRestoreProcessor2.processNotification(notificationData, 200, anonymousClass1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            notificationRestoreProcessor2._badgeCountUpdater.update();
        } catch (Throwable th) {
            Logging.error("Error restoring notification records! ", th);
        }
        return Unit.INSTANCE;
    }

    @Override // com.onesignal.notifications.internal.restoration.INotificationRestoreProcessor
    public Object processNotification(INotificationRepository.NotificationData notificationData, int i, Continuation<? super Unit> continuation) {
        this._workManager.beginEnqueueingWork(this._applicationService.getAppContext(), notificationData.getId(), notificationData.getAndroidId(), new JSONObject(notificationData.getFullData()), notificationData.getCreatedAt(), true, false);
        if (i > 0) {
            Object objDelay = DelayKt.delay(i, continuation);
            return objDelay == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objDelay : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    private final List<Integer> getVisibleNotifications() {
        if (Build.VERSION.SDK_INT < 23) {
            return null;
        }
        StatusBarNotification[] activeNotifications = NotificationHelper.INSTANCE.getActiveNotifications(this._applicationService.getAppContext());
        if (activeNotifications.length == 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (StatusBarNotification statusBarNotification : activeNotifications) {
            arrayList.add(Integer.valueOf(statusBarNotification.getId()));
        }
        return arrayList;
    }
}
