package com.onesignal.notifications.internal.open.impl;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.core.app.NotificationManagerCompat;
import com.onesignal.common.JSONUtils;
import com.onesignal.core.internal.config.ConfigModelStore;
import com.onesignal.core.internal.database.impl.OneSignalDbContract;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.notifications.BuildConfig;
import com.onesignal.notifications.internal.common.NotificationConstants;
import com.onesignal.notifications.internal.common.NotificationHelper;
import com.onesignal.notifications.internal.data.INotificationRepository;
import com.onesignal.notifications.internal.lifecycle.INotificationLifecycleService;
import com.onesignal.notifications.internal.open.INotificationOpenedProcessor;
import com.onesignal.notifications.internal.summary.INotificationSummaryManager;
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
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.mediationsdk.utils.IronSourceConstants;

/* JADX INFO: compiled from: NotificationOpenedProcessor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ!\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0011J#\u0010\u0012\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u00142\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0015J\u001a\u0010\u0016\u001a\u00020\f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0017\u001a\u00020\u0018H\u0003J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J)\u0010\u001b\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001c\u001a\u00020\u001aH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u001dJ\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J!\u0010 \u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0018H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010!J!\u0010\"\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0018H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010!J/\u0010#\u001a\u0004\u0018\u00010$2\b\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010%R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006&"}, d2 = {"Lcom/onesignal/notifications/internal/open/impl/NotificationOpenedProcessor;", "Lcom/onesignal/notifications/internal/open/INotificationOpenedProcessor;", "_summaryManager", "Lcom/onesignal/notifications/internal/summary/INotificationSummaryManager;", "_dataController", "Lcom/onesignal/notifications/internal/data/INotificationRepository;", "_configModelStore", "Lcom/onesignal/core/internal/config/ConfigModelStore;", "_lifecycleService", "Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;", "(Lcom/onesignal/notifications/internal/summary/INotificationSummaryManager;Lcom/onesignal/notifications/internal/data/INotificationRepository;Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;)V", "addChildNotifications", "", "dataArray", "Lorg/json/JSONArray;", "summaryGroup", "", "(Lorg/json/JSONArray;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "clearStatusBarNotifications", "context", "Landroid/content/Context;", "(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "handleDismissFromActionButtonPress", "intent", "Landroid/content/Intent;", "isOneSignalIntent", "", "markNotificationsConsumed", OneSignalDbContract.NotificationTable.COLUMN_NAME_DISMISSED, "(Landroid/content/Context;Landroid/content/Intent;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "newContentValuesWithConsumed", "Landroid/content/ContentValues;", "processFromContext", "(Landroid/content/Context;Landroid/content/Intent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "processIntent", "processToOpenIntent", "Lcom/onesignal/notifications/internal/open/impl/NotificationIntentExtras;", "(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class NotificationOpenedProcessor implements INotificationOpenedProcessor {
    private final ConfigModelStore _configModelStore;
    private final INotificationRepository _dataController;
    private final INotificationLifecycleService _lifecycleService;
    private final INotificationSummaryManager _summaryManager;

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.open.impl.NotificationOpenedProcessor$addChildNotifications$1, reason: invalid class name */
    /* JADX INFO: compiled from: NotificationOpenedProcessor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.open.impl.NotificationOpenedProcessor", f = "NotificationOpenedProcessor.kt", i = {0}, l = {179}, m = "addChildNotifications", n = {"dataArray"}, s = {"L$0"})
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
            return NotificationOpenedProcessor.this.addChildNotifications(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.open.impl.NotificationOpenedProcessor$markNotificationsConsumed$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationOpenedProcessor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.open.impl.NotificationOpenedProcessor", f = "NotificationOpenedProcessor.kt", i = {0, 0, 0, 0}, l = {191, 192}, m = "markNotificationsConsumed", n = {"this", "intent", "summaryGroup", OneSignalDbContract.NotificationTable.COLUMN_NAME_DISMISSED}, s = {"L$0", "L$1", "L$2", "Z$0"})
    static final class C02921 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C02921(Continuation<? super C02921> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return NotificationOpenedProcessor.this.markNotificationsConsumed(null, null, false, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.open.impl.NotificationOpenedProcessor$processIntent$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationOpenedProcessor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.open.impl.NotificationOpenedProcessor", f = "NotificationOpenedProcessor.kt", i = {0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2}, l = {107, 113, 119, 130}, m = "processIntent", n = {"this", "context", "intent", "summaryGroup", OneSignalDbContract.NotificationTable.COLUMN_NAME_DISMISSED, "this", "context", "intent", "summaryGroup", "intentExtras", OneSignalDbContract.NotificationTable.COLUMN_NAME_DISMISSED, "this", "context", "intent", "intentExtras", OneSignalDbContract.NotificationTable.COLUMN_NAME_DISMISSED}, s = {"L$0", "L$1", "L$2", "L$3", "Z$0", "L$0", "L$1", "L$2", "L$3", "L$4", "Z$0", "L$0", "L$1", "L$2", "L$3", "Z$0"})
    static final class C02931 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C02931(Continuation<? super C02931> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return NotificationOpenedProcessor.this.processIntent(null, null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.open.impl.NotificationOpenedProcessor$processToOpenIntent$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationOpenedProcessor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.open.impl.NotificationOpenedProcessor", f = "NotificationOpenedProcessor.kt", i = {0, 0, 0, 0, 1, 1}, l = {IronSourceConstants.REWARDED_VIDEO_DAILY_CAPPED, 169}, m = "processToOpenIntent", n = {"this", "intent", "summaryGroup", "jsonData", "dataArray", "jsonData"}, s = {"L$0", "L$1", "L$2", "L$3", "L$0", "L$1"})
    static final class C02941 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        C02941(Continuation<? super C02941> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return NotificationOpenedProcessor.this.processToOpenIntent(null, null, null, this);
        }
    }

    public NotificationOpenedProcessor(INotificationSummaryManager _summaryManager, INotificationRepository _dataController, ConfigModelStore _configModelStore, INotificationLifecycleService _lifecycleService) {
        Intrinsics.checkNotNullParameter(_summaryManager, "_summaryManager");
        Intrinsics.checkNotNullParameter(_dataController, "_dataController");
        Intrinsics.checkNotNullParameter(_configModelStore, "_configModelStore");
        Intrinsics.checkNotNullParameter(_lifecycleService, "_lifecycleService");
        this._summaryManager = _summaryManager;
        this._dataController = _dataController;
        this._configModelStore = _configModelStore;
        this._lifecycleService = _lifecycleService;
    }

    @Override // com.onesignal.notifications.internal.open.INotificationOpenedProcessor
    public Object processFromContext(Context context, Intent intent, Continuation<? super Unit> continuation) {
        if (!isOneSignalIntent(intent)) {
            return Unit.INSTANCE;
        }
        handleDismissFromActionButtonPress(context, intent);
        Object objProcessIntent = processIntent(context, intent, continuation);
        return objProcessIntent == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objProcessIntent : Unit.INSTANCE;
    }

    private final boolean isOneSignalIntent(Intent intent) {
        return intent.hasExtra(NotificationConstants.BUNDLE_KEY_ONESIGNAL_DATA) || intent.hasExtra("summary") || intent.hasExtra(NotificationConstants.BUNDLE_KEY_ANDROID_NOTIFICATION_ID);
    }

    private final void handleDismissFromActionButtonPress(Context context, Intent intent) {
        if (intent.getBooleanExtra("action_button", false)) {
            Intrinsics.checkNotNull(context);
            NotificationManagerCompat.from(context).cancel(intent.getIntExtra(NotificationConstants.BUNDLE_KEY_ANDROID_NOTIFICATION_ID, 0));
            if (Build.VERSION.SDK_INT < 31) {
                context.sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:33:0x00d1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:34:0x00d2  */
    /* JADX WARN: Code duplicated, block: B:36:0x00db  */
    /* JADX WARN: Code duplicated, block: B:40:0x00f9 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:41:0x00fa  */
    /* JADX WARN: Code duplicated, block: B:45:0x011f  */
    /* JADX WARN: Code duplicated, block: B:47:0x0136  */
    /* JADX WARN: Code duplicated, block: B:49:0x013a  */
    /* JADX WARN: Code duplicated, block: B:50:0x014c  */
    /* JADX WARN: Code duplicated, block: B:52:0x0169 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Instruction removed from duplicated block: B:45:0x011f, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:49:0x013a, please report this as an issue */
    public final Object processIntent(Context context, Intent intent, Continuation<? super Unit> continuation) {
        C02931 c02931;
        String stringExtra;
        boolean booleanExtra;
        NotificationOpenedProcessor notificationOpenedProcessor;
        NotificationIntentExtras notificationIntentExtras;
        Object objProcessToOpenIntent;
        NotificationOpenedProcessor notificationOpenedProcessor2;
        Context context2;
        boolean z;
        String str;
        Intent intent2;
        NotificationIntentExtras notificationIntentExtras2;
        String stringExtra2;
        INotificationSummaryManager iNotificationSummaryManager;
        Intent intent3;
        Context context3;
        NotificationOpenedProcessor notificationOpenedProcessor3;
        JSONArray dataArray;
        if (continuation instanceof C02931) {
            c02931 = (C02931) continuation;
            if ((c02931.label & Integer.MIN_VALUE) != 0) {
                c02931.label -= Integer.MIN_VALUE;
            } else {
                c02931 = new C02931(continuation);
            }
        } else {
            c02931 = new C02931(continuation);
        }
        Object obj = c02931.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02931.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            stringExtra = intent.getStringExtra("summary");
            booleanExtra = intent.getBooleanExtra(OneSignalDbContract.NotificationTable.COLUMN_NAME_DISMISSED, false);
            if (booleanExtra) {
                notificationOpenedProcessor = this;
                notificationIntentExtras = null;
            } else {
                c02931.L$0 = this;
                c02931.L$1 = context;
                c02931.L$2 = intent;
                c02931.L$3 = stringExtra;
                c02931.Z$0 = booleanExtra;
                c02931.label = 1;
                objProcessToOpenIntent = processToOpenIntent(context, intent, stringExtra, c02931);
                if (objProcessToOpenIntent == coroutine_suspended) {
                    return coroutine_suspended;
                }
                notificationOpenedProcessor = this;
            }
            c02931.L$0 = notificationOpenedProcessor;
            c02931.L$1 = context;
            c02931.L$2 = intent;
            c02931.L$3 = stringExtra;
            c02931.L$4 = notificationIntentExtras;
            c02931.Z$0 = booleanExtra;
            c02931.label = 2;
            if (notificationOpenedProcessor.markNotificationsConsumed(context, intent, booleanExtra, c02931) == coroutine_suspended) {
                return coroutine_suspended;
            }
            notificationOpenedProcessor2 = notificationOpenedProcessor;
            context2 = context;
            z = booleanExtra;
            str = stringExtra;
            NotificationIntentExtras notificationIntentExtras3 = notificationIntentExtras;
            intent2 = intent;
            notificationIntentExtras2 = notificationIntentExtras3;
            if (str == null) {
                iNotificationSummaryManager = notificationOpenedProcessor2._summaryManager;
                c02931.L$0 = notificationOpenedProcessor2;
                c02931.L$1 = context2;
                c02931.L$2 = intent2;
                c02931.L$3 = notificationIntentExtras2;
                c02931.L$4 = null;
                c02931.Z$0 = z;
                c02931.label = 3;
                if (iNotificationSummaryManager.updateSummaryNotificationAfterChildRemoved(stringExtra2, z, c02931) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                intent3 = intent2;
                context3 = context2;
                notificationOpenedProcessor3 = notificationOpenedProcessor2;
                context2 = context3;
                notificationOpenedProcessor2 = notificationOpenedProcessor3;
                intent2 = intent3;
            }
            Logging.debug$default("processIntent from context: " + context2 + " and intent: " + intent2, null, 2, null);
            if (intent2.getExtras() != null) {
                Logging.debug$default("processIntent intent extras: " + intent2.getExtras(), null, 2, null);
            }
            if (!z) {
                if (!(context2 instanceof Activity)) {
                    Logging.error$default("NotificationOpenedProcessor processIntent from an non Activity context: " + context2, null, 2, null);
                } else {
                    Intrinsics.checkNotNull(notificationIntentExtras2);
                    dataArray = notificationIntentExtras2.getDataArray();
                    c02931.L$0 = null;
                    c02931.L$1 = null;
                    c02931.L$2 = null;
                    c02931.L$3 = null;
                    c02931.L$4 = null;
                    c02931.label = 4;
                    if (notificationOpenedProcessor2._lifecycleService.notificationOpened((Activity) context2, dataArray, c02931) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }
            }
            return Unit.INSTANCE;
        }
        if (i == 1) {
            boolean z2 = c02931.Z$0;
            String str2 = (String) c02931.L$3;
            Intent intent4 = (Intent) c02931.L$2;
            Context context4 = (Context) c02931.L$1;
            notificationOpenedProcessor = (NotificationOpenedProcessor) c02931.L$0;
            ResultKt.throwOnFailure(obj);
            booleanExtra = z2;
            context = context4;
            objProcessToOpenIntent = obj;
            stringExtra = str2;
            intent = intent4;
        } else {
            if (i == 2) {
                z = c02931.Z$0;
                notificationIntentExtras2 = (NotificationIntentExtras) c02931.L$4;
                str = (String) c02931.L$3;
                intent2 = (Intent) c02931.L$2;
                context2 = (Context) c02931.L$1;
                notificationOpenedProcessor2 = (NotificationOpenedProcessor) c02931.L$0;
                ResultKt.throwOnFailure(obj);
                if (str == null && (stringExtra2 = intent2.getStringExtra("grp")) != null) {
                    iNotificationSummaryManager = notificationOpenedProcessor2._summaryManager;
                    c02931.L$0 = notificationOpenedProcessor2;
                    c02931.L$1 = context2;
                    c02931.L$2 = intent2;
                    c02931.L$3 = notificationIntentExtras2;
                    c02931.L$4 = null;
                    c02931.Z$0 = z;
                    c02931.label = 3;
                    if (iNotificationSummaryManager.updateSummaryNotificationAfterChildRemoved(stringExtra2, z, c02931) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    intent3 = intent2;
                    context3 = context2;
                    notificationOpenedProcessor3 = notificationOpenedProcessor2;
                    context2 = context3;
                    notificationOpenedProcessor2 = notificationOpenedProcessor3;
                    intent2 = intent3;
                }
                Logging.debug$default("processIntent from context: " + context2 + " and intent: " + intent2, null, 2, null);
                if (intent2.getExtras() != null) {
                    Logging.debug$default("processIntent intent extras: " + intent2.getExtras(), null, 2, null);
                }
                if (!z) {
                    if (!(context2 instanceof Activity)) {
                        Logging.error$default("NotificationOpenedProcessor processIntent from an non Activity context: " + context2, null, 2, null);
                    } else {
                        Intrinsics.checkNotNull(notificationIntentExtras2);
                        dataArray = notificationIntentExtras2.getDataArray();
                        c02931.L$0 = null;
                        c02931.L$1 = null;
                        c02931.L$2 = null;
                        c02931.L$3 = null;
                        c02931.L$4 = null;
                        c02931.label = 4;
                        if (notificationOpenedProcessor2._lifecycleService.notificationOpened((Activity) context2, dataArray, c02931) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                }
                return Unit.INSTANCE;
            }
            if (i == 3) {
                z = c02931.Z$0;
                notificationIntentExtras2 = (NotificationIntentExtras) c02931.L$3;
                intent3 = (Intent) c02931.L$2;
                context3 = (Context) c02931.L$1;
                notificationOpenedProcessor3 = (NotificationOpenedProcessor) c02931.L$0;
                ResultKt.throwOnFailure(obj);
                context2 = context3;
                notificationOpenedProcessor2 = notificationOpenedProcessor3;
                intent2 = intent3;
                Logging.debug$default("processIntent from context: " + context2 + " and intent: " + intent2, null, 2, null);
                if (intent2.getExtras() != null) {
                    Logging.debug$default("processIntent intent extras: " + intent2.getExtras(), null, 2, null);
                }
                if (!z) {
                    if (!(context2 instanceof Activity)) {
                        Logging.error$default("NotificationOpenedProcessor processIntent from an non Activity context: " + context2, null, 2, null);
                    } else {
                        Intrinsics.checkNotNull(notificationIntentExtras2);
                        dataArray = notificationIntentExtras2.getDataArray();
                        c02931.L$0 = null;
                        c02931.L$1 = null;
                        c02931.L$2 = null;
                        c02931.L$3 = null;
                        c02931.L$4 = null;
                        c02931.label = 4;
                        if (notificationOpenedProcessor2._lifecycleService.notificationOpened((Activity) context2, dataArray, c02931) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                }
                return Unit.INSTANCE;
            }
            if (i != 4) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        return Unit.INSTANCE;
        notificationIntentExtras = (NotificationIntentExtras) objProcessToOpenIntent;
        if (notificationIntentExtras == null) {
            return Unit.INSTANCE;
        }
        c02931.L$0 = notificationOpenedProcessor;
        c02931.L$1 = context;
        c02931.L$2 = intent;
        c02931.L$3 = stringExtra;
        c02931.L$4 = notificationIntentExtras;
        c02931.Z$0 = booleanExtra;
        c02931.label = 2;
        if (notificationOpenedProcessor.markNotificationsConsumed(context, intent, booleanExtra, c02931) == coroutine_suspended) {
            return coroutine_suspended;
        }
        notificationOpenedProcessor2 = notificationOpenedProcessor;
        context2 = context;
        z = booleanExtra;
        str = stringExtra;
        NotificationIntentExtras notificationIntentExtras4 = notificationIntentExtras;
        intent2 = intent;
        notificationIntentExtras2 = notificationIntentExtras4;
        if (str == null) {
            iNotificationSummaryManager = notificationOpenedProcessor2._summaryManager;
            c02931.L$0 = notificationOpenedProcessor2;
            c02931.L$1 = context2;
            c02931.L$2 = intent2;
            c02931.L$3 = notificationIntentExtras2;
            c02931.L$4 = null;
            c02931.Z$0 = z;
            c02931.label = 3;
            if (iNotificationSummaryManager.updateSummaryNotificationAfterChildRemoved(stringExtra2, z, c02931) == coroutine_suspended) {
                return coroutine_suspended;
            }
            intent3 = intent2;
            context3 = context2;
            notificationOpenedProcessor3 = notificationOpenedProcessor2;
            context2 = context3;
            notificationOpenedProcessor2 = notificationOpenedProcessor3;
            intent2 = intent3;
        }
        Logging.debug$default("processIntent from context: " + context2 + " and intent: " + intent2, null, 2, null);
        if (intent2.getExtras() != null) {
            Logging.debug$default("processIntent intent extras: " + intent2.getExtras(), null, 2, null);
        }
        if (!z) {
            if (!(context2 instanceof Activity)) {
                Logging.error$default("NotificationOpenedProcessor processIntent from an non Activity context: " + context2, null, 2, null);
            } else {
                Intrinsics.checkNotNull(notificationIntentExtras2);
                dataArray = notificationIntentExtras2.getDataArray();
                c02931.L$0 = null;
                c02931.L$1 = null;
                c02931.L$2 = null;
                c02931.L$3 = null;
                c02931.L$4 = null;
                c02931.label = 4;
                if (notificationOpenedProcessor2._lifecycleService.notificationOpened((Activity) context2, dataArray, c02931) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:40:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:42:0x00e6 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    public final Object processToOpenIntent(Context context, Intent intent, String str, Continuation<? super NotificationIntentExtras> continuation) {
        C02941 c02941;
        NotificationOpenedProcessor notificationOpenedProcessor;
        JSONObject jSONObject;
        JSONArray jSONArrayWrapInJsonArray;
        if (continuation instanceof C02941) {
            c02941 = (C02941) continuation;
            if ((c02941.label & Integer.MIN_VALUE) != 0) {
                c02941.label -= Integer.MIN_VALUE;
            } else {
                c02941 = new C02941(continuation);
            }
        } else {
            c02941 = new C02941(continuation);
        }
        Object obj = c02941.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02941.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            try {
                JSONObject jSONObject2 = new JSONObject(intent.getStringExtra(NotificationConstants.BUNDLE_KEY_ONESIGNAL_DATA));
                try {
                    if (!(context instanceof Activity)) {
                        Logging.error$default("NotificationOpenedProcessor processIntent from an non Activity context: " + context, null, 2, null);
                        notificationOpenedProcessor = this;
                        jSONObject = jSONObject2;
                    } else {
                        c02941.L$0 = this;
                        c02941.L$1 = intent;
                        c02941.L$2 = str;
                        c02941.L$3 = jSONObject2;
                        c02941.label = 1;
                        Object objCanOpenNotification = this._lifecycleService.canOpenNotification((Activity) context, jSONObject2, c02941);
                        if (objCanOpenNotification == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        notificationOpenedProcessor = this;
                        obj = objCanOpenNotification;
                        jSONObject = jSONObject2;
                    }
                    jSONObject.put(NotificationConstants.BUNDLE_KEY_ANDROID_NOTIFICATION_ID, intent.getIntExtra(NotificationConstants.BUNDLE_KEY_ANDROID_NOTIFICATION_ID, 0));
                    intent.putExtra(NotificationConstants.BUNDLE_KEY_ONESIGNAL_DATA, jSONObject.toString());
                    jSONArrayWrapInJsonArray = JSONUtils.INSTANCE.wrapInJsonArray(new JSONObject(intent.getStringExtra(NotificationConstants.BUNDLE_KEY_ONESIGNAL_DATA)));
                } catch (JSONException e) {
                    e = e;
                    notificationOpenedProcessor = this;
                    jSONObject = jSONObject2;
                    e.printStackTrace();
                    jSONArrayWrapInJsonArray = null;
                }
            } catch (JSONException e2) {
                e = e2;
                notificationOpenedProcessor = this;
                jSONObject = null;
            }
            if (str != null) {
                Intrinsics.checkNotNull(jSONArrayWrapInJsonArray);
                c02941.L$0 = jSONArrayWrapInJsonArray;
                c02941.L$1 = jSONObject;
                c02941.L$2 = null;
                c02941.L$3 = null;
                c02941.label = 2;
                if (notificationOpenedProcessor.addChildNotifications(jSONArrayWrapInJsonArray, str, c02941) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            Intrinsics.checkNotNull(jSONArrayWrapInJsonArray);
            Intrinsics.checkNotNull(jSONObject);
            return new NotificationIntentExtras(jSONArrayWrapInJsonArray, jSONObject);
        }
        if (i == 1) {
            jSONObject = (JSONObject) c02941.L$3;
            str = (String) c02941.L$2;
            intent = (Intent) c02941.L$1;
            notificationOpenedProcessor = (NotificationOpenedProcessor) c02941.L$0;
            try {
                ResultKt.throwOnFailure(obj);
            } catch (JSONException e3) {
                e = e3;
                e.printStackTrace();
                jSONArrayWrapInJsonArray = null;
            }
        } else {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            jSONObject = (JSONObject) c02941.L$1;
            jSONArrayWrapInJsonArray = (JSONArray) c02941.L$0;
            ResultKt.throwOnFailure(obj);
        }
        Intrinsics.checkNotNull(jSONArrayWrapInJsonArray);
        Intrinsics.checkNotNull(jSONObject);
        return new NotificationIntentExtras(jSONArrayWrapInJsonArray, jSONObject);
        if (!((Boolean) obj).booleanValue()) {
            return null;
        }
        jSONObject.put(NotificationConstants.BUNDLE_KEY_ANDROID_NOTIFICATION_ID, intent.getIntExtra(NotificationConstants.BUNDLE_KEY_ANDROID_NOTIFICATION_ID, 0));
        intent.putExtra(NotificationConstants.BUNDLE_KEY_ONESIGNAL_DATA, jSONObject.toString());
        jSONArrayWrapInJsonArray = JSONUtils.INSTANCE.wrapInJsonArray(new JSONObject(intent.getStringExtra(NotificationConstants.BUNDLE_KEY_ONESIGNAL_DATA)));
        if (str != null) {
            Intrinsics.checkNotNull(jSONArrayWrapInJsonArray);
            c02941.L$0 = jSONArrayWrapInJsonArray;
            c02941.L$1 = jSONObject;
            c02941.L$2 = null;
            c02941.L$3 = null;
            c02941.label = 2;
            if (notificationOpenedProcessor.addChildNotifications(jSONArrayWrapInJsonArray, str, c02941) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        Intrinsics.checkNotNull(jSONArrayWrapInJsonArray);
        Intrinsics.checkNotNull(jSONObject);
        return new NotificationIntentExtras(jSONArrayWrapInJsonArray, jSONObject);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object addChildNotifications(JSONArray jSONArray, String str, Continuation<? super Unit> continuation) {
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
        Object objListNotificationsForGroup = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objListNotificationsForGroup);
            INotificationRepository iNotificationRepository = this._dataController;
            anonymousClass1.L$0 = jSONArray;
            anonymousClass1.label = 1;
            objListNotificationsForGroup = iNotificationRepository.listNotificationsForGroup(str, anonymousClass1);
            if (objListNotificationsForGroup == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            jSONArray = (JSONArray) anonymousClass1.L$0;
            ResultKt.throwOnFailure(objListNotificationsForGroup);
        }
        Iterator it = ((List) objListNotificationsForGroup).iterator();
        while (it.hasNext()) {
            jSONArray.put(new JSONObject(((INotificationRepository.NotificationData) it.next()).getFullData()));
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object markNotificationsConsumed(Context context, Intent intent, boolean z, Continuation<? super Unit> continuation) {
        C02921 c02921;
        NotificationOpenedProcessor notificationOpenedProcessor;
        boolean z2;
        String str;
        if (continuation instanceof C02921) {
            c02921 = (C02921) continuation;
            if ((c02921.label & Integer.MIN_VALUE) != 0) {
                c02921.label -= Integer.MIN_VALUE;
            } else {
                c02921 = new C02921(continuation);
            }
        } else {
            c02921 = new C02921(continuation);
        }
        C02921 c02922 = c02921;
        Object obj = c02922.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02922.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            String stringExtra = intent.getStringExtra("summary");
            c02922.L$0 = this;
            c02922.L$1 = intent;
            c02922.L$2 = stringExtra;
            c02922.Z$0 = z;
            c02922.label = 1;
            if (clearStatusBarNotifications(context, stringExtra, c02922) == coroutine_suspended) {
                return coroutine_suspended;
            }
            notificationOpenedProcessor = this;
            z2 = z;
            str = stringExtra;
        } else {
            if (i == 1) {
                boolean z3 = c02922.Z$0;
                String str2 = (String) c02922.L$2;
                intent = (Intent) c02922.L$1;
                notificationOpenedProcessor = (NotificationOpenedProcessor) c02922.L$0;
                ResultKt.throwOnFailure(obj);
                str = str2;
                z2 = z3;
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
        INotificationRepository iNotificationRepository = notificationOpenedProcessor._dataController;
        int intExtra = intent.getIntExtra(NotificationConstants.BUNDLE_KEY_ANDROID_NOTIFICATION_ID, 0);
        boolean clearGroupOnSummaryClick = notificationOpenedProcessor._configModelStore.getModel().getClearGroupOnSummaryClick();
        c02922.L$0 = null;
        c02922.L$1 = null;
        c02922.L$2 = null;
        c02922.label = 2;
        if (iNotificationRepository.markAsConsumed(intExtra, z2, str, clearGroupOnSummaryClick, c02922) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object clearStatusBarNotifications(Context context, String str, Continuation<? super Unit> continuation) {
        if (str != null) {
            Object objClearNotificationOnSummaryClick = this._summaryManager.clearNotificationOnSummaryClick(str, continuation);
            return objClearNotificationOnSummaryClick == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objClearNotificationOnSummaryClick : Unit.INSTANCE;
        }
        if (Build.VERSION.SDK_INT >= 23 && NotificationHelper.INSTANCE.getGrouplessNotifsCount(context) < 1) {
            NotificationHelper.INSTANCE.getNotificationManager(context).cancel(NotificationHelper.GROUPLESS_SUMMARY_ID);
        }
        return Unit.INSTANCE;
    }

    private final ContentValues newContentValuesWithConsumed(Intent intent) {
        ContentValues contentValues = new ContentValues();
        if (intent.getBooleanExtra(OneSignalDbContract.NotificationTable.COLUMN_NAME_DISMISSED, false)) {
            contentValues.put(OneSignalDbContract.NotificationTable.COLUMN_NAME_DISMISSED, (Integer) 1);
        } else {
            contentValues.put(OneSignalDbContract.NotificationTable.COLUMN_NAME_OPENED, (Integer) 1);
        }
        return contentValues;
    }
}
