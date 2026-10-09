package com.onesignal.notifications.internal.generation.impl;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.Data;
import androidx.work.ExistingWorkPolicy;
import androidx.work.ListenableWorker;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkerParameters;
import com.onesignal.OneSignal;
import com.onesignal.common.AndroidUtils;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.notifications.BuildConfig;
import com.onesignal.notifications.internal.common.NotificationConstants;
import com.onesignal.notifications.internal.common.NotificationFormatHelper;
import com.onesignal.notifications.internal.common.OSWorkManagerHelper;
import com.onesignal.notifications.internal.generation.INotificationGenerationProcessor;
import com.onesignal.notifications.internal.generation.INotificationGenerationWorkManager;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: NotificationGenerationWorkManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0005\b\u0000\u0018\u0000 \u00112\u00020\u0001:\u0002\u0011\u0012B\u0005¢\u0006\u0002\u0010\u0002JB\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004H\u0016¨\u0006\u0013"}, d2 = {"Lcom/onesignal/notifications/internal/generation/impl/NotificationGenerationWorkManager;", "Lcom/onesignal/notifications/internal/generation/INotificationGenerationWorkManager;", "()V", "beginEnqueueingWork", "", "context", "Landroid/content/Context;", "osNotificationId", "", NotificationConstants.BUNDLE_KEY_ANDROID_NOTIFICATION_ID, "", "jsonPayload", "Lorg/json/JSONObject;", "timestamp", "", "isRestoring", "isHighPriority", "Companion", "NotificationGenerationWorker", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class NotificationGenerationWorkManager implements INotificationGenerationWorkManager {
    private static final String ANDROID_NOTIF_ID_WORKER_DATA_PARAM = "android_notif_id";
    private static final String IS_RESTORING_WORKER_DATA_PARAM = "is_restoring";
    private static final String JSON_PAYLOAD_WORKER_DATA_PARAM = "json_payload";
    private static final String OS_ID_DATA_PARAM = "os_notif_id";
    private static final String TIMESTAMP_WORKER_DATA_PARAM = "timestamp";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final ConcurrentHashMap<String, Boolean> notificationIds = new ConcurrentHashMap<>();

    @Override // com.onesignal.notifications.internal.generation.INotificationGenerationWorkManager
    public boolean beginEnqueueingWork(Context context, String osNotificationId, int androidNotificationId, JSONObject jsonPayload, long timestamp, boolean isRestoring, boolean isHighPriority) throws Throwable {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(osNotificationId, "osNotificationId");
        String oSNotificationIdFromJson = NotificationFormatHelper.INSTANCE.getOSNotificationIdFromJson(jsonPayload);
        if (oSNotificationIdFromJson == null) {
            Logging.debug$default("Notification beginEnqueueingWork with id null", null, 2, null);
            return false;
        }
        if (!INSTANCE.addNotificationIdProcessed(oSNotificationIdFromJson)) {
            Logging.debug$default("Notification beginEnqueueingWork with id duplicated", null, 2, null);
            return true;
        }
        Data dataBuild = new Data.Builder().putString(OS_ID_DATA_PARAM, oSNotificationIdFromJson).putInt(ANDROID_NOTIF_ID_WORKER_DATA_PARAM, androidNotificationId).putString(JSON_PAYLOAD_WORKER_DATA_PARAM, String.valueOf(jsonPayload)).putLong("timestamp", timestamp).putBoolean(IS_RESTORING_WORKER_DATA_PARAM, isRestoring).build();
        Intrinsics.checkNotNullExpressionValue(dataBuild, "Builder()\n              …\n                .build()");
        OneTimeWorkRequest oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(NotificationGenerationWorker.class).setInputData(dataBuild).build();
        Logging.debug$default("NotificationWorkManager enqueueing notification work with notificationId: " + osNotificationId + " and jsonPayload: " + jsonPayload, null, 2, null);
        OSWorkManagerHelper.INSTANCE.getInstance(context).enqueueUniqueWork(osNotificationId, ExistingWorkPolicy.KEEP, oneTimeWorkRequestBuild);
        return true;
    }

    /* JADX INFO: compiled from: NotificationGenerationWorkManager.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0011\u0010\u0007\u001a\u00020\bH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\n"}, d2 = {"Lcom/onesignal/notifications/internal/generation/impl/NotificationGenerationWorkManager$NotificationGenerationWorker;", "Landroidx/work/CoroutineWorker;", "context", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class NotificationGenerationWorker extends CoroutineWorker {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NotificationGenerationWorker(Context context, WorkerParameters workerParams) {
            super(context, workerParams);
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(workerParams, "workerParams");
        }

        /* JADX WARN: Code duplicated, block: B:7:0x001c  */
        @Override // androidx.work.CoroutineWorker
        public Object doWork(Continuation<? super ListenableWorker.Result> continuation) throws Throwable {
            NotificationGenerationWorkManager$NotificationGenerationWorker$doWork$1 notificationGenerationWorkManager$NotificationGenerationWorker$doWork$1;
            String str;
            if (continuation instanceof NotificationGenerationWorkManager$NotificationGenerationWorker$doWork$1) {
                notificationGenerationWorkManager$NotificationGenerationWorker$doWork$1 = (NotificationGenerationWorkManager$NotificationGenerationWorker$doWork$1) continuation;
                if ((notificationGenerationWorkManager$NotificationGenerationWorker$doWork$1.label & Integer.MIN_VALUE) != 0) {
                    notificationGenerationWorkManager$NotificationGenerationWorker$doWork$1.label -= Integer.MIN_VALUE;
                } else {
                    notificationGenerationWorkManager$NotificationGenerationWorker$doWork$1 = new NotificationGenerationWorkManager$NotificationGenerationWorker$doWork$1(this, continuation);
                }
            } else {
                notificationGenerationWorkManager$NotificationGenerationWorker$doWork$1 = new NotificationGenerationWorkManager$NotificationGenerationWorker$doWork$1(this, continuation);
            }
            NotificationGenerationWorkManager$NotificationGenerationWorker$doWork$1 notificationGenerationWorkManager$NotificationGenerationWorker$doWork$2 = notificationGenerationWorkManager$NotificationGenerationWorker$doWork$1;
            Object obj = notificationGenerationWorkManager$NotificationGenerationWorker$doWork$2.result;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = notificationGenerationWorkManager$NotificationGenerationWorker$doWork$2.label;
            if (i != 0) {
                if (i == 1) {
                    str = (String) notificationGenerationWorkManager$NotificationGenerationWorker$doWork$2.L$0;
                    try {
                        try {
                            ResultKt.throwOnFailure(obj);
                            Companion companion = NotificationGenerationWorkManager.INSTANCE;
                            Intrinsics.checkNotNull(str);
                            companion.removeNotificationIdProcessed(str);
                            ListenableWorker.Result resultSuccess = ListenableWorker.Result.success();
                            Intrinsics.checkNotNullExpressionValue(resultSuccess, "success()");
                            return resultSuccess;
                        } catch (JSONException e) {
                            e = e;
                            Logging.error("Error occurred doing work for job with id: " + str, e);
                            ListenableWorker.Result resultFailure = ListenableWorker.Result.failure();
                            Intrinsics.checkNotNullExpressionValue(resultFailure, "failure()");
                            Companion companion2 = NotificationGenerationWorkManager.INSTANCE;
                            Intrinsics.checkNotNull(str);
                            companion2.removeNotificationIdProcessed(str);
                            return resultFailure;
                        }
                    } catch (Throwable th) {
                        th = th;
                        Companion companion3 = NotificationGenerationWorkManager.INSTANCE;
                        Intrinsics.checkNotNull(str);
                        companion3.removeNotificationIdProcessed(str);
                        throw th;
                    }
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            Context applicationContext = getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
            if (!OneSignal.initWithContext(applicationContext)) {
                ListenableWorker.Result resultSuccess2 = ListenableWorker.Result.success();
                Intrinsics.checkNotNullExpressionValue(resultSuccess2, "success()");
                return resultSuccess2;
            }
            INotificationGenerationProcessor iNotificationGenerationProcessor = (INotificationGenerationProcessor) OneSignal.INSTANCE.getServices().getService(INotificationGenerationProcessor.class);
            Data inputData = getInputData();
            Intrinsics.checkNotNullExpressionValue(inputData, "inputData");
            String string = inputData.getString(NotificationGenerationWorkManager.OS_ID_DATA_PARAM);
            if (string == null) {
                ListenableWorker.Result resultFailure2 = ListenableWorker.Result.failure();
                Intrinsics.checkNotNullExpressionValue(resultFailure2, "failure()");
                return resultFailure2;
            }
            try {
                Logging.debug$default("NotificationWorker running doWork with data: " + inputData, null, 2, null);
                int i2 = inputData.getInt(NotificationGenerationWorkManager.ANDROID_NOTIF_ID_WORKER_DATA_PARAM, 0);
                JSONObject jSONObject = new JSONObject(inputData.getString(NotificationGenerationWorkManager.JSON_PAYLOAD_WORKER_DATA_PARAM));
                long j = inputData.getLong("timestamp", System.currentTimeMillis() / 1000);
                boolean z = inputData.getBoolean(NotificationGenerationWorkManager.IS_RESTORING_WORKER_DATA_PARAM, false);
                Context applicationContext2 = getApplicationContext();
                Intrinsics.checkNotNullExpressionValue(applicationContext2, "applicationContext");
                boolean z2 = z;
                notificationGenerationWorkManager$NotificationGenerationWorker$doWork$2.L$0 = string;
                notificationGenerationWorkManager$NotificationGenerationWorker$doWork$2.label = 1;
                if (iNotificationGenerationProcessor.processNotificationData(applicationContext2, i2, jSONObject, z2, j, notificationGenerationWorkManager$NotificationGenerationWorker$doWork$2) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                str = string;
                Companion companion4 = NotificationGenerationWorkManager.INSTANCE;
                Intrinsics.checkNotNull(str);
                companion4.removeNotificationIdProcessed(str);
                ListenableWorker.Result resultSuccess3 = ListenableWorker.Result.success();
                Intrinsics.checkNotNullExpressionValue(resultSuccess3, "success()");
                return resultSuccess3;
            } catch (JSONException e2) {
                e = e2;
                str = string;
                Logging.error("Error occurred doing work for job with id: " + str, e);
                ListenableWorker.Result resultFailure3 = ListenableWorker.Result.failure();
                Intrinsics.checkNotNullExpressionValue(resultFailure3, "failure()");
                Companion companion5 = NotificationGenerationWorkManager.INSTANCE;
                Intrinsics.checkNotNull(str);
                companion5.removeNotificationIdProcessed(str);
                return resultFailure3;
            } catch (Throwable th2) {
                th = th2;
                str = string;
                Companion companion6 = NotificationGenerationWorkManager.INSTANCE;
                Intrinsics.checkNotNull(str);
                companion6.removeNotificationIdProcessed(str);
                throw th;
            }
        }
    }

    /* JADX INFO: compiled from: NotificationGenerationWorkManager.kt */
    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u0004J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcom/onesignal/notifications/internal/generation/impl/NotificationGenerationWorkManager$Companion;", "", "()V", "ANDROID_NOTIF_ID_WORKER_DATA_PARAM", "", "IS_RESTORING_WORKER_DATA_PARAM", "JSON_PAYLOAD_WORKER_DATA_PARAM", "OS_ID_DATA_PARAM", "TIMESTAMP_WORKER_DATA_PARAM", "notificationIds", "Ljava/util/concurrent/ConcurrentHashMap;", "", "addNotificationIdProcessed", "osNotificationId", "removeNotificationIdProcessed", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final boolean addNotificationIdProcessed(String osNotificationId) {
            Intrinsics.checkNotNullParameter(osNotificationId, "osNotificationId");
            if (AndroidUtils.INSTANCE.isStringNotEmpty(osNotificationId)) {
                if (!NotificationGenerationWorkManager.notificationIds.contains(osNotificationId)) {
                    NotificationGenerationWorkManager.notificationIds.put(osNotificationId, true);
                } else {
                    Logging.debug$default("OSNotificationWorkManager notification with notificationId: " + osNotificationId + " already queued", null, 2, null);
                    return false;
                }
            }
            return true;
        }

        public final void removeNotificationIdProcessed(String osNotificationId) {
            Intrinsics.checkNotNullParameter(osNotificationId, "osNotificationId");
            if (AndroidUtils.INSTANCE.isStringNotEmpty(osNotificationId)) {
                NotificationGenerationWorkManager.notificationIds.remove(osNotificationId);
            }
        }
    }
}
