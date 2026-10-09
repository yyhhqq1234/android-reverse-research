package com.onesignal.notifications.internal.receivereceipt.impl;

import android.content.Context;
import androidx.work.Constraints;
import androidx.work.CoroutineWorker;
import androidx.work.Data;
import androidx.work.ExistingWorkPolicy;
import androidx.work.ListenableWorker;
import androidx.work.NetworkType;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import androidx.work.WorkerParameters;
import com.onesignal.OneSignal;
import com.onesignal.common.AndroidUtils;
import com.onesignal.core.internal.application.IApplicationService;
import com.onesignal.core.internal.config.ConfigModelStore;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.notifications.BuildConfig;
import com.onesignal.notifications.internal.common.OSWorkManagerHelper;
import com.onesignal.notifications.internal.receivereceipt.IReceiveReceiptProcessor;
import com.onesignal.notifications.internal.receivereceipt.IReceiveReceiptWorkManager;
import com.onesignal.user.internal.subscriptions.ISubscriptionManager;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ReceiveReceiptWorkManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0000\u0018\u0000 \u00122\u00020\u0001:\u0002\u0012\u0013B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\f\u001a\u00020\rH\u0002J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082D¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082D¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcom/onesignal/notifications/internal/receivereceipt/impl/ReceiveReceiptWorkManager;", "Lcom/onesignal/notifications/internal/receivereceipt/IReceiveReceiptWorkManager;", "_applicationService", "Lcom/onesignal/core/internal/application/IApplicationService;", "_configModelStore", "Lcom/onesignal/core/internal/config/ConfigModelStore;", "_subscriptionManager", "Lcom/onesignal/user/internal/subscriptions/ISubscriptionManager;", "(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/user/internal/subscriptions/ISubscriptionManager;)V", "maxDelay", "", "minDelay", "buildConstraints", "Landroidx/work/Constraints;", "enqueueReceiveReceipt", "", "notificationId", "", "Companion", "ReceiveReceiptWorker", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ReceiveReceiptWorkManager implements IReceiveReceiptWorkManager {
    private static final String OS_APP_ID = "os_app_id";
    private static final String OS_NOTIFICATION_ID = "os_notification_id";
    private static final String OS_SUBSCRIPTION_ID = "os_subscription_id";
    private final IApplicationService _applicationService;
    private final ConfigModelStore _configModelStore;
    private final ISubscriptionManager _subscriptionManager;
    private final int maxDelay;
    private final int minDelay;

    public ReceiveReceiptWorkManager(IApplicationService _applicationService, ConfigModelStore _configModelStore, ISubscriptionManager _subscriptionManager) {
        Intrinsics.checkNotNullParameter(_applicationService, "_applicationService");
        Intrinsics.checkNotNullParameter(_configModelStore, "_configModelStore");
        Intrinsics.checkNotNullParameter(_subscriptionManager, "_subscriptionManager");
        this._applicationService = _applicationService;
        this._configModelStore = _configModelStore;
        this._subscriptionManager = _subscriptionManager;
        this.maxDelay = 25;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x0052  */
    @Override // com.onesignal.notifications.internal.receivereceipt.IReceiveReceiptWorkManager
    public void enqueueReceiveReceipt(String notificationId) throws Throwable {
        Intrinsics.checkNotNullParameter(notificationId, "notificationId");
        if (!this._configModelStore.getModel().getReceiveReceiptEnabled()) {
            Logging.debug$default("sendReceiveReceipt disabled", null, 2, null);
            return;
        }
        String appId = this._configModelStore.getModel().getAppId();
        String id = this._subscriptionManager.getSubscriptions().getPush().getId();
        if (id.length() == 0) {
            Logging.debug$default("ReceiveReceiptWorkManager: No push subscription or appId!", null, 2, null);
        } else {
            if (appId.length() == 0) {
                Logging.debug$default("ReceiveReceiptWorkManager: No push subscription or appId!", null, 2, null);
            }
        }
        int randomDelay = AndroidUtils.INSTANCE.getRandomDelay(this.minDelay, this.maxDelay);
        Data dataBuild = new Data.Builder().putString(OS_NOTIFICATION_ID, notificationId).putString(OS_APP_ID, appId).putString(OS_SUBSCRIPTION_ID, id).build();
        Intrinsics.checkNotNullExpressionValue(dataBuild, "Builder()\n              …\n                .build()");
        OneTimeWorkRequest oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(ReceiveReceiptWorker.class).setConstraints(buildConstraints()).setInitialDelay(randomDelay, TimeUnit.SECONDS).setInputData(dataBuild).build();
        Logging.debug$default("OSReceiveReceiptController enqueueing send receive receipt work with notificationId: " + notificationId + " and delay: " + randomDelay + " seconds", null, 2, null);
        WorkManager oSWorkManagerHelper = OSWorkManagerHelper.INSTANCE.getInstance(this._applicationService.getAppContext());
        StringBuilder sb = new StringBuilder();
        sb.append(notificationId);
        sb.append("_receive_receipt");
        oSWorkManagerHelper.enqueueUniqueWork(sb.toString(), ExistingWorkPolicy.KEEP, oneTimeWorkRequestBuild);
    }

    private final Constraints buildConstraints() {
        return new Constraints.Builder().setRequiredNetworkType(NetworkType.CONNECTED).build();
    }

    /* JADX INFO: compiled from: ReceiveReceiptWorkManager.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0011\u0010\u0007\u001a\u00020\bH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\n"}, d2 = {"Lcom/onesignal/notifications/internal/receivereceipt/impl/ReceiveReceiptWorkManager$ReceiveReceiptWorker;", "Landroidx/work/CoroutineWorker;", "context", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class ReceiveReceiptWorker extends CoroutineWorker {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ReceiveReceiptWorker(Context context, WorkerParameters workerParams) {
            super(context, workerParams);
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(workerParams, "workerParams");
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0014  */
        @Override // androidx.work.CoroutineWorker
        public Object doWork(Continuation<? super ListenableWorker.Result> continuation) {
            ReceiveReceiptWorkManager$ReceiveReceiptWorker$doWork$1 receiveReceiptWorkManager$ReceiveReceiptWorker$doWork$1;
            if (continuation instanceof ReceiveReceiptWorkManager$ReceiveReceiptWorker$doWork$1) {
                receiveReceiptWorkManager$ReceiveReceiptWorker$doWork$1 = (ReceiveReceiptWorkManager$ReceiveReceiptWorker$doWork$1) continuation;
                if ((receiveReceiptWorkManager$ReceiveReceiptWorker$doWork$1.label & Integer.MIN_VALUE) != 0) {
                    receiveReceiptWorkManager$ReceiveReceiptWorker$doWork$1.label -= Integer.MIN_VALUE;
                } else {
                    receiveReceiptWorkManager$ReceiveReceiptWorker$doWork$1 = new ReceiveReceiptWorkManager$ReceiveReceiptWorker$doWork$1(this, continuation);
                }
            } else {
                receiveReceiptWorkManager$ReceiveReceiptWorker$doWork$1 = new ReceiveReceiptWorkManager$ReceiveReceiptWorker$doWork$1(this, continuation);
            }
            Object obj = receiveReceiptWorkManager$ReceiveReceiptWorker$doWork$1.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = receiveReceiptWorkManager$ReceiveReceiptWorker$doWork$1.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Context applicationContext = getApplicationContext();
                Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
                if (!OneSignal.initWithContext(applicationContext)) {
                    ListenableWorker.Result resultSuccess = ListenableWorker.Result.success();
                    Intrinsics.checkNotNullExpressionValue(resultSuccess, "success()");
                    return resultSuccess;
                }
                String string = getInputData().getString(ReceiveReceiptWorkManager.OS_NOTIFICATION_ID);
                Intrinsics.checkNotNull(string);
                String string2 = getInputData().getString(ReceiveReceiptWorkManager.OS_APP_ID);
                Intrinsics.checkNotNull(string2);
                String string3 = getInputData().getString(ReceiveReceiptWorkManager.OS_SUBSCRIPTION_ID);
                Intrinsics.checkNotNull(string3);
                IReceiveReceiptProcessor iReceiveReceiptProcessor = (IReceiveReceiptProcessor) OneSignal.INSTANCE.getServices().getService(IReceiveReceiptProcessor.class);
                receiveReceiptWorkManager$ReceiveReceiptWorker$doWork$1.label = 1;
                if (iReceiveReceiptProcessor.sendReceiveReceipt(string2, string3, string, receiveReceiptWorkManager$ReceiveReceiptWorker$doWork$1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            ListenableWorker.Result resultSuccess2 = ListenableWorker.Result.success();
            Intrinsics.checkNotNullExpressionValue(resultSuccess2, "success()");
            return resultSuccess2;
        }
    }
}
