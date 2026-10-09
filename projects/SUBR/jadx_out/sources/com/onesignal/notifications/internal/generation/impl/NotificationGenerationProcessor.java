package com.onesignal.notifications.internal.generation.impl;

import android.content.Context;
import androidx.work.WorkRequest;
import com.google.firebase.messaging.Constants;
import com.onesignal.common.AndroidUtils;
import com.onesignal.common.JSONObjectExtensionsKt;
import com.onesignal.core.internal.application.IApplicationService;
import com.onesignal.core.internal.config.ConfigModelStore;
import com.onesignal.core.internal.database.impl.OneSignalDbContract;
import com.onesignal.core.internal.time.ITime;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.notifications.BuildConfig;
import com.onesignal.notifications.internal.Notification;
import com.onesignal.notifications.internal.NotificationReceivedEvent;
import com.onesignal.notifications.internal.NotificationWillDisplayEvent;
import com.onesignal.notifications.internal.common.NotificationConstants;
import com.onesignal.notifications.internal.common.NotificationFormatHelper;
import com.onesignal.notifications.internal.common.NotificationGenerationJob;
import com.onesignal.notifications.internal.data.INotificationRepository;
import com.onesignal.notifications.internal.display.INotificationDisplayer;
import com.onesignal.notifications.internal.generation.INotificationGenerationProcessor;
import com.onesignal.notifications.internal.lifecycle.INotificationLifecycleService;
import com.onesignal.notifications.internal.summary.INotificationSummaryManager;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.TimeoutCancellationException;
import kotlinx.coroutines.TimeoutKt;
import okhttp3.internal.http.StatusLine;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: NotificationGenerationProcessor.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\b\u0000\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012J\u0019\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0019\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001dH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u001eJ)\u0010\u001f\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001d2\u0006\u0010!\u001a\u00020\u00152\u0006\u0010\"\u001a\u00020\u0015H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010#J\u0019\u0010$\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001dH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u001eJ+\u0010%\u001a\u0004\u0018\u00010\u00152\u0006\u0010 \u001a\u00020\u001d2\u0006\u0010&\u001a\u00020\u00152\u0006\u0010'\u001a\u00020\u0015H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010#J9\u0010(\u001a\u00020\u001b2\u0006\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\u00122\u0006\u0010'\u001a\u00020\u00152\u0006\u0010.\u001a\u00020/H\u0096@ø\u0001\u0000¢\u0006\u0002\u00100J!\u00101\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u001d2\u0006\u00102\u001a\u00020\u0015H\u0082@ø\u0001\u0000¢\u0006\u0002\u00103J\u0010\u00104\u001a\u00020\u00152\u0006\u0010 \u001a\u00020\u001dH\u0002J\u0010\u00105\u001a\u00020\u00152\u0006\u0010 \u001a\u00020\u001dH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u00066"}, d2 = {"Lcom/onesignal/notifications/internal/generation/impl/NotificationGenerationProcessor;", "Lcom/onesignal/notifications/internal/generation/INotificationGenerationProcessor;", "_applicationService", "Lcom/onesignal/core/internal/application/IApplicationService;", "_notificationDisplayer", "Lcom/onesignal/notifications/internal/display/INotificationDisplayer;", "_configModelStore", "Lcom/onesignal/core/internal/config/ConfigModelStore;", "_dataController", "Lcom/onesignal/notifications/internal/data/INotificationRepository;", "_notificationSummaryManager", "Lcom/onesignal/notifications/internal/summary/INotificationSummaryManager;", "_lifecycleService", "Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;", "_time", "Lcom/onesignal/core/internal/time/ITime;", "(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/notifications/internal/display/INotificationDisplayer;Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/notifications/internal/data/INotificationRepository;Lcom/onesignal/notifications/internal/summary/INotificationSummaryManager;Lcom/onesignal/notifications/internal/lifecycle/INotificationLifecycleService;Lcom/onesignal/core/internal/time/ITime;)V", "getCustomJSONObject", "Lorg/json/JSONObject;", "jsonObject", "isDuplicateNotification", "", OneSignalDbContract.NotificationTable.TABLE_NAME, "Lcom/onesignal/notifications/internal/Notification;", "(Lcom/onesignal/notifications/internal/Notification;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "isNotificationWithinTTL", "markNotificationAsDismissed", "", "notifiJob", "Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;", "(Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "postProcessNotification", "notificationJob", "wasOpened", "wasDisplayed", "(Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "processCollapseKey", "processHandlerResponse", "wantsToDisplay", "isRestoring", "processNotificationData", "context", "Landroid/content/Context;", NotificationConstants.BUNDLE_KEY_ANDROID_NOTIFICATION_ID, "", "jsonPayload", "timestamp", "", "(Landroid/content/Context;ILorg/json/JSONObject;ZJLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "saveNotification", OneSignalDbContract.NotificationTable.COLUMN_NAME_OPENED, "(Lcom/onesignal/notifications/internal/common/NotificationGenerationJob;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "shouldDisplayNotification", "shouldFireForegroundHandlers", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class NotificationGenerationProcessor implements INotificationGenerationProcessor {
    private final IApplicationService _applicationService;
    private final ConfigModelStore _configModelStore;
    private final INotificationRepository _dataController;
    private final INotificationLifecycleService _lifecycleService;
    private final INotificationDisplayer _notificationDisplayer;
    private final INotificationSummaryManager _notificationSummaryManager;
    private final ITime _time;

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.generation.impl.NotificationGenerationProcessor$markNotificationAsDismissed$1, reason: invalid class name */
    /* JADX INFO: compiled from: NotificationGenerationProcessor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.generation.impl.NotificationGenerationProcessor", f = "NotificationGenerationProcessor.kt", i = {0, 0}, l = {304, StatusLine.HTTP_TEMP_REDIRECT}, m = "markNotificationAsDismissed", n = {"this", "notifiJob"}, s = {"L$0", "L$1"})
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
            return NotificationGenerationProcessor.this.markNotificationAsDismissed(null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.generation.impl.NotificationGenerationProcessor$postProcessNotification$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationGenerationProcessor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.generation.impl.NotificationGenerationProcessor", f = "NotificationGenerationProcessor.kt", i = {0, 0, 0}, l = {230, 234, 238}, m = "postProcessNotification", n = {"this", "notificationJob", "wasDisplayed"}, s = {"L$0", "L$1", "Z$0"})
    static final class C02781 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C02781(Continuation<? super C02781> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return NotificationGenerationProcessor.this.postProcessNotification(null, false, false, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.generation.impl.NotificationGenerationProcessor$processCollapseKey$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationGenerationProcessor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.generation.impl.NotificationGenerationProcessor", f = "NotificationGenerationProcessor.kt", i = {0}, l = {319}, m = "processCollapseKey", n = {"notificationJob"}, s = {"L$0"})
    static final class C02791 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02791(Continuation<? super C02791> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return NotificationGenerationProcessor.this.processCollapseKey(null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.generation.impl.NotificationGenerationProcessor$processHandlerResponse$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationGenerationProcessor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.generation.impl.NotificationGenerationProcessor", f = "NotificationGenerationProcessor.kt", i = {0, 0}, l = {171, 189, 194}, m = "processHandlerResponse", n = {"this", "notificationJob"}, s = {"L$0", "L$1"})
    static final class C02801 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C02801(Continuation<? super C02801> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return NotificationGenerationProcessor.this.processHandlerResponse(null, false, false, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.generation.impl.NotificationGenerationProcessor$processNotificationData$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationGenerationProcessor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.generation.impl.NotificationGenerationProcessor", f = "NotificationGenerationProcessor.kt", i = {0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 7}, l = {49, 57, 72, 94, 105, 129, 136, 142, 148}, m = "processNotificationData", n = {"this", "context", "jsonPayload", NotificationConstants.BUNDLE_KEY_ANDROID_NOTIFICATION_ID, "isRestoring", "timestamp", "this", "context", "jsonPayload", OneSignalDbContract.NotificationTable.TABLE_NAME, "isRestoring", "timestamp", "this", OneSignalDbContract.NotificationTable.TABLE_NAME, "notificationJob", "wantsToDisplay", "isRestoring", "didDisplay", "this", OneSignalDbContract.NotificationTable.TABLE_NAME, "notificationJob", "wantsToDisplay", "isRestoring", "didDisplay", "this", "notificationJob", "wantsToDisplay", "isRestoring", "didDisplay", "this", "notificationJob", "isRestoring", "didDisplay", "this", "notificationJob", "isRestoring", "isRestoring"}, s = {"L$0", "L$1", "L$2", "I$0", "Z$0", "J$0", "L$0", "L$1", "L$2", "L$3", "Z$0", "J$0", "L$0", "L$1", "L$2", "L$3", "Z$0", "I$0", "L$0", "L$1", "L$2", "L$3", "Z$0", "I$0", "L$0", "L$1", "L$2", "Z$0", "I$0", "L$0", "L$1", "Z$0", "I$0", "L$0", "L$1", "Z$0", "Z$0"})
    static final class C02811 extends ContinuationImpl {
        int I$0;
        long J$0;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C02811(Continuation<? super C02811> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return NotificationGenerationProcessor.this.processNotificationData(null, 0, null, false, 0L, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.generation.impl.NotificationGenerationProcessor$saveNotification$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationGenerationProcessor.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.generation.impl.NotificationGenerationProcessor", f = "NotificationGenerationProcessor.kt", i = {}, l = {279}, m = "saveNotification", n = {}, s = {})
    static final class C02821 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C02821(Continuation<? super C02821> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return NotificationGenerationProcessor.this.saveNotification(null, false, this);
        }
    }

    public NotificationGenerationProcessor(IApplicationService _applicationService, INotificationDisplayer _notificationDisplayer, ConfigModelStore _configModelStore, INotificationRepository _dataController, INotificationSummaryManager _notificationSummaryManager, INotificationLifecycleService _lifecycleService, ITime _time) {
        Intrinsics.checkNotNullParameter(_applicationService, "_applicationService");
        Intrinsics.checkNotNullParameter(_notificationDisplayer, "_notificationDisplayer");
        Intrinsics.checkNotNullParameter(_configModelStore, "_configModelStore");
        Intrinsics.checkNotNullParameter(_dataController, "_dataController");
        Intrinsics.checkNotNullParameter(_notificationSummaryManager, "_notificationSummaryManager");
        Intrinsics.checkNotNullParameter(_lifecycleService, "_lifecycleService");
        Intrinsics.checkNotNullParameter(_time, "_time");
        this._applicationService = _applicationService;
        this._notificationDisplayer = _notificationDisplayer;
        this._configModelStore = _configModelStore;
        this._dataController = _dataController;
        this._notificationSummaryManager = _notificationSummaryManager;
        this._lifecycleService = _lifecycleService;
        this._time = _time;
    }

    /* JADX WARN: Code duplicated, block: B:101:0x02ce  */
    /* JADX WARN: Code duplicated, block: B:102:0x02d0  */
    /* JADX WARN: Code duplicated, block: B:105:0x02d7 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:107:0x02da  */
    /* JADX WARN: Code duplicated, block: B:110:0x02f0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:112:0x02f3  */
    /* JADX WARN: Code duplicated, block: B:114:0x0307 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:117:0x030b  */
    /* JADX WARN: Code duplicated, block: B:119:0x030e  */
    /* JADX WARN: Code duplicated, block: B:39:0x012b  */
    /* JADX WARN: Code duplicated, block: B:41:0x012e  */
    /* JADX WARN: Code duplicated, block: B:43:0x0137  */
    /* JADX WARN: Code duplicated, block: B:45:0x014b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:46:0x014c  */
    /* JADX WARN: Code duplicated, block: B:49:0x015f  */
    /* JADX WARN: Code duplicated, block: B:51:0x0162  */
    /* JADX WARN: Code duplicated, block: B:52:0x0169  */
    /* JADX WARN: Code duplicated, block: B:56:0x01b7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:57:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:66:0x0201 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:67:0x0202  */
    /* JADX WARN: Code duplicated, block: B:70:0x0209  */
    /* JADX WARN: Code duplicated, block: B:72:0x020f  */
    /* JADX WARN: Code duplicated, block: B:74:0x0215  */
    /* JADX WARN: Code duplicated, block: B:77:0x0250 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:78:0x0251  */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    /* JADX WARN: Code duplicated, block: B:87:0x0293 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:90:0x0298  */
    /* JADX WARN: Code duplicated, block: B:91:0x02a4  */
    /* JADX WARN: Code duplicated, block: B:93:0x02a7  */
    /* JADX WARN: Code duplicated, block: B:95:0x02ac  */
    /* JADX WARN: Code duplicated, block: B:97:0x02c1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:98:0x02c2  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v44 */
    /* JADX WARN: Type inference failed for: r2v51 */
    /* JADX WARN: Type inference failed for: r2v52 */
    /* JADX WARN: Type inference failed for: r5v32 */
    /* JADX WARN: Type inference failed for: r5v33 */
    /* JADX WARN: Type inference failed for: r5v38 */
    @Override // com.onesignal.notifications.internal.generation.INotificationGenerationProcessor
    public Object processNotificationData(Context context, int i, JSONObject jSONObject, boolean z, long j, Continuation<? super Unit> continuation) {
        C02811 c02811;
        int i2;
        JSONObject jSONObject2;
        boolean z2;
        long j2;
        Context context2;
        NotificationGenerationProcessor notificationGenerationProcessor;
        Notification notification;
        NotificationGenerationProcessor notificationGenerationProcessor2;
        Notification notification2;
        boolean z3;
        Object objIsDuplicateNotification;
        Context context3;
        long j3;
        NotificationGenerationJob notificationGenerationJob;
        Ref.BooleanRef booleanRef;
        Notification notification3;
        NotificationGenerationJob notificationGenerationJob2;
        Ref.BooleanRef booleanRef2;
        int i3;
        boolean z4;
        int i4;
        AnonymousClass2 anonymousClass2;
        int i5;
        Ref.BooleanRef booleanRef3;
        NotificationGenerationProcessor notificationGenerationProcessor3;
        boolean z5;
        int i6;
        Boolean bool;
        boolean zBooleanValue;
        boolean z6;
        int i7;
        boolean z7;
        NotificationGenerationProcessor notificationGenerationProcessor4;
        NotificationGenerationJob notificationGenerationJob3;
        AnonymousClass3 anonymousClass3;
        int i8;
        NotificationGenerationJob notificationGenerationJob4;
        NotificationGenerationProcessor notificationGenerationProcessor5;
        NotificationGenerationJob notificationGenerationJob5;
        int i9;
        Boolean bool2;
        ?? r5;
        boolean z8;
        ?? BooleanValue;
        if (continuation instanceof C02811) {
            c02811 = (C02811) continuation;
            if ((c02811.label & Integer.MIN_VALUE) != 0) {
                c02811.label -= Integer.MIN_VALUE;
            } else {
                c02811 = new C02811(continuation);
            }
        } else {
            c02811 = new C02811(continuation);
        }
        Object objCanReceiveNotification = c02811.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        switch (c02811.label) {
            case 0:
                ResultKt.throwOnFailure(objCanReceiveNotification);
                INotificationLifecycleService iNotificationLifecycleService = this._lifecycleService;
                c02811.L$0 = this;
                c02811.L$1 = context;
                c02811.L$2 = jSONObject;
                i2 = i;
                c02811.I$0 = i2;
                c02811.Z$0 = z;
                c02811.J$0 = j;
                c02811.label = 1;
                objCanReceiveNotification = iNotificationLifecycleService.canReceiveNotification(jSONObject, c02811);
                if (objCanReceiveNotification == coroutine_suspended) {
                    return coroutine_suspended;
                }
                jSONObject2 = jSONObject;
                z2 = z;
                j2 = j;
                context2 = context;
                notificationGenerationProcessor = this;
                if (!((Boolean) objCanReceiveNotification).booleanValue()) {
                    return Unit.INSTANCE;
                }
                notification = new Notification(null, jSONObject2, i2, notificationGenerationProcessor._time);
                if (z2) {
                    notificationGenerationProcessor2 = notificationGenerationProcessor;
                    notification2 = notification;
                    z3 = z2;
                } else {
                    c02811.L$0 = notificationGenerationProcessor;
                    c02811.L$1 = context2;
                    c02811.L$2 = jSONObject2;
                    c02811.L$3 = notification;
                    c02811.Z$0 = z2;
                    c02811.J$0 = j2;
                    c02811.label = 2;
                    objIsDuplicateNotification = notificationGenerationProcessor.isDuplicateNotification(notification, c02811);
                    if (objIsDuplicateNotification == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    NotificationGenerationProcessor notificationGenerationProcessor6 = notificationGenerationProcessor;
                    notification2 = notification;
                    objCanReceiveNotification = objIsDuplicateNotification;
                    notificationGenerationProcessor2 = notificationGenerationProcessor6;
                    context3 = context2;
                    j3 = j2;
                    if (((Boolean) objCanReceiveNotification).booleanValue()) {
                        return Unit.INSTANCE;
                    }
                    z3 = z2;
                    long j4 = j3;
                    context2 = context3;
                    j2 = j4;
                }
                notificationGenerationJob = new NotificationGenerationJob(notification2, jSONObject2);
                notificationGenerationJob.setShownTimeStamp(Boxing.boxLong(j2));
                notificationGenerationJob.setRestoring(z3);
                booleanRef = new Ref.BooleanRef();
                booleanRef.element = true;
                Logging.info$default("Fire remoteNotificationReceived", null, 2, null);
                try {
                    anonymousClass2 = notificationGenerationProcessor2.new AnonymousClass2(new NotificationReceivedEvent(context2, notification2), booleanRef, notification2, null);
                    c02811.L$0 = notificationGenerationProcessor2;
                    c02811.L$1 = notification2;
                    c02811.L$2 = notificationGenerationJob;
                    c02811.L$3 = booleanRef;
                    c02811.Z$0 = z3;
                    c02811.I$0 = 0;
                    c02811.label = 3;
                    if (TimeoutKt.withTimeout(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, anonymousClass2, c02811) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    notification3 = notification2;
                    notificationGenerationJob2 = notificationGenerationJob;
                    booleanRef2 = booleanRef;
                    i5 = 0;
                    z4 = z3;
                    boolean z9 = booleanRef2.element;
                    c02811.L$0 = notificationGenerationProcessor2;
                    c02811.L$1 = notification3;
                    c02811.L$2 = notificationGenerationJob2;
                    c02811.L$3 = booleanRef2;
                    c02811.Z$0 = z4;
                    c02811.I$0 = i5 == true ? 1 : 0;
                    c02811.label = 4;
                    objCanReceiveNotification = notificationGenerationProcessor2.processHandlerResponse(notificationGenerationJob2, z9, z4, c02811);
                    if (objCanReceiveNotification == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    booleanRef3 = booleanRef2;
                    notificationGenerationProcessor3 = notificationGenerationProcessor2;
                    z5 = z4;
                    i6 = i5;
                    bool = (Boolean) objCanReceiveNotification;
                    if (bool == null) {
                        return Unit.INSTANCE;
                    }
                    zBooleanValue = bool.booleanValue();
                    if (zBooleanValue) {
                        if (notificationGenerationProcessor3.shouldFireForegroundHandlers(notificationGenerationJob2)) {
                            Logging.info$default("Fire notificationWillShowInForegroundHandler", null, 2, null);
                            booleanRef3.element = true;
                            try {
                                anonymousClass3 = notificationGenerationProcessor3.new AnonymousClass3(new NotificationWillDisplayEvent(notificationGenerationJob2.getNotification()), booleanRef3, notification3, null);
                                c02811.L$0 = notificationGenerationProcessor3;
                                c02811.L$1 = notificationGenerationJob2;
                                c02811.L$2 = booleanRef3;
                                c02811.L$3 = null;
                                c02811.Z$0 = z5;
                                c02811.I$0 = i6;
                                c02811.label = 5;
                                if (TimeoutKt.withTimeout(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, anonymousClass3, c02811) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                notificationGenerationJob3 = notificationGenerationJob2;
                                i8 = i6;
                                int i10 = i8;
                                z7 = z5;
                                Ref.BooleanRef booleanRef4 = booleanRef3;
                                notificationGenerationJob4 = notificationGenerationJob3;
                                notificationGenerationProcessor5 = notificationGenerationProcessor3;
                                boolean z10 = booleanRef4.element;
                                c02811.L$0 = notificationGenerationProcessor5;
                                c02811.L$1 = notificationGenerationJob4;
                                c02811.L$2 = null;
                                c02811.L$3 = null;
                                c02811.Z$0 = z7;
                                c02811.I$0 = i10;
                                c02811.label = 6;
                                objCanReceiveNotification = notificationGenerationProcessor5.processHandlerResponse(notificationGenerationJob4, z10, z7, c02811);
                                i9 = i10;
                                if (objCanReceiveNotification == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                                bool2 = (Boolean) objCanReceiveNotification;
                                if (bool2 == null) {
                                    return Unit.INSTANCE;
                                }
                                boolean zBooleanValue2 = bool2.booleanValue();
                                notificationGenerationJob2 = notificationGenerationJob4;
                                notificationGenerationProcessor4 = notificationGenerationProcessor5;
                                i7 = i9;
                                zBooleanValue = zBooleanValue2;
                            } catch (TimeoutCancellationException e) {
                                e = e;
                                notificationGenerationJob3 = notificationGenerationJob2;
                                Logging.info("notificationWillShowInForegroundHandler timed out, continuing with wantsToDisplay=" + booleanRef3.element + '.', e);
                                i8 = i6;
                            } catch (Throwable th) {
                                th = th;
                                notificationGenerationJob3 = notificationGenerationJob2;
                                Logging.error("notificationWillShowInForegroundHandler threw an exception. Displaying normal OneSignal notification.", th);
                                i8 = i6;
                            }
                        } else {
                            i7 = i6;
                            z7 = z5;
                            notificationGenerationProcessor4 = notificationGenerationProcessor3;
                        }
                        if (zBooleanValue) {
                            INotificationDisplayer iNotificationDisplayer = notificationGenerationProcessor4._notificationDisplayer;
                            c02811.L$0 = notificationGenerationProcessor4;
                            c02811.L$1 = notificationGenerationJob2;
                            c02811.L$2 = null;
                            c02811.L$3 = null;
                            c02811.Z$0 = z7;
                            c02811.label = 7;
                            objCanReceiveNotification = iNotificationDisplayer.displayNotification(notificationGenerationJob2, c02811);
                            if (objCanReceiveNotification == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            z6 = z7;
                            notificationGenerationJob5 = notificationGenerationJob2;
                            notificationGenerationJob2 = notificationGenerationJob5;
                            BooleanValue = ((Boolean) objCanReceiveNotification).booleanValue();
                        } else {
                            z6 = z7;
                            BooleanValue = i7;
                        }
                        notificationGenerationProcessor3 = notificationGenerationProcessor4;
                        r5 = BooleanValue;
                    } else {
                        z6 = z5;
                        r5 = i6;
                    }
                    if (!notificationGenerationJob2.getIsRestoring()) {
                        z8 = r5 != 0;
                        c02811.L$0 = null;
                        c02811.L$1 = null;
                        c02811.L$2 = null;
                        c02811.L$3 = null;
                        c02811.Z$0 = z6;
                        c02811.label = 8;
                        if (notificationGenerationProcessor3.postProcessNotification(notificationGenerationJob2, false, z8, c02811) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    }
                    if (!z6) {
                        return Unit.INSTANCE;
                    }
                    c02811.L$0 = null;
                    c02811.L$1 = null;
                    c02811.L$2 = null;
                    c02811.L$3 = null;
                    c02811.label = 9;
                    if (DelayKt.delay(100L, c02811) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                } catch (TimeoutCancellationException e2) {
                    e = e2;
                    notification3 = notification2;
                    notificationGenerationJob2 = notificationGenerationJob;
                    booleanRef2 = booleanRef;
                    i4 = 0;
                    z4 = z3;
                    Logging.error("remoteNotificationReceived timed out, continuing with wantsToDisplay=" + booleanRef2.element + '.', e);
                    i5 = i4;
                } catch (Throwable th2) {
                    th = th2;
                    notification3 = notification2;
                    notificationGenerationJob2 = notificationGenerationJob;
                    booleanRef2 = booleanRef;
                    i3 = 0;
                    z4 = z3;
                    Logging.error("remoteNotificationReceived threw an exception. Displaying normal OneSignal notification.", th);
                    i5 = i3;
                }
                break;
            case 1:
                long j5 = c02811.J$0;
                z2 = c02811.Z$0;
                int i11 = c02811.I$0;
                jSONObject2 = (JSONObject) c02811.L$2;
                context2 = (Context) c02811.L$1;
                NotificationGenerationProcessor notificationGenerationProcessor7 = (NotificationGenerationProcessor) c02811.L$0;
                ResultKt.throwOnFailure(objCanReceiveNotification);
                i2 = i11;
                notificationGenerationProcessor = notificationGenerationProcessor7;
                j2 = j5;
                if (!((Boolean) objCanReceiveNotification).booleanValue()) {
                    return Unit.INSTANCE;
                }
                notification = new Notification(null, jSONObject2, i2, notificationGenerationProcessor._time);
                if (z2) {
                    c02811.L$0 = notificationGenerationProcessor;
                    c02811.L$1 = context2;
                    c02811.L$2 = jSONObject2;
                    c02811.L$3 = notification;
                    c02811.Z$0 = z2;
                    c02811.J$0 = j2;
                    c02811.label = 2;
                    objIsDuplicateNotification = notificationGenerationProcessor.isDuplicateNotification(notification, c02811);
                    if (objIsDuplicateNotification == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    NotificationGenerationProcessor notificationGenerationProcessor8 = notificationGenerationProcessor;
                    notification2 = notification;
                    objCanReceiveNotification = objIsDuplicateNotification;
                    notificationGenerationProcessor2 = notificationGenerationProcessor8;
                    context3 = context2;
                    j3 = j2;
                    if (((Boolean) objCanReceiveNotification).booleanValue()) {
                        return Unit.INSTANCE;
                    }
                    z3 = z2;
                    long j6 = j3;
                    context2 = context3;
                    j2 = j6;
                } else {
                    notificationGenerationProcessor2 = notificationGenerationProcessor;
                    notification2 = notification;
                    z3 = z2;
                }
                notificationGenerationJob = new NotificationGenerationJob(notification2, jSONObject2);
                notificationGenerationJob.setShownTimeStamp(Boxing.boxLong(j2));
                notificationGenerationJob.setRestoring(z3);
                booleanRef = new Ref.BooleanRef();
                booleanRef.element = true;
                Logging.info$default("Fire remoteNotificationReceived", null, 2, null);
                anonymousClass2 = notificationGenerationProcessor2.new AnonymousClass2(new NotificationReceivedEvent(context2, notification2), booleanRef, notification2, null);
                c02811.L$0 = notificationGenerationProcessor2;
                c02811.L$1 = notification2;
                c02811.L$2 = notificationGenerationJob;
                c02811.L$3 = booleanRef;
                c02811.Z$0 = z3;
                c02811.I$0 = 0;
                c02811.label = 3;
                if (TimeoutKt.withTimeout(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, anonymousClass2, c02811) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                notification3 = notification2;
                notificationGenerationJob2 = notificationGenerationJob;
                booleanRef2 = booleanRef;
                i5 = 0;
                z4 = z3;
                boolean z11 = booleanRef2.element;
                c02811.L$0 = notificationGenerationProcessor2;
                c02811.L$1 = notification3;
                c02811.L$2 = notificationGenerationJob2;
                c02811.L$3 = booleanRef2;
                c02811.Z$0 = z4;
                c02811.I$0 = i5 == true ? 1 : 0;
                c02811.label = 4;
                objCanReceiveNotification = notificationGenerationProcessor2.processHandlerResponse(notificationGenerationJob2, z11, z4, c02811);
                if (objCanReceiveNotification == coroutine_suspended) {
                    return coroutine_suspended;
                }
                booleanRef3 = booleanRef2;
                notificationGenerationProcessor3 = notificationGenerationProcessor2;
                z5 = z4;
                i6 = i5;
                bool = (Boolean) objCanReceiveNotification;
                if (bool == null) {
                    return Unit.INSTANCE;
                }
                zBooleanValue = bool.booleanValue();
                if (zBooleanValue) {
                    if (notificationGenerationProcessor3.shouldFireForegroundHandlers(notificationGenerationJob2)) {
                        Logging.info$default("Fire notificationWillShowInForegroundHandler", null, 2, null);
                        booleanRef3.element = true;
                        anonymousClass3 = notificationGenerationProcessor3.new AnonymousClass3(new NotificationWillDisplayEvent(notificationGenerationJob2.getNotification()), booleanRef3, notification3, null);
                        c02811.L$0 = notificationGenerationProcessor3;
                        c02811.L$1 = notificationGenerationJob2;
                        c02811.L$2 = booleanRef3;
                        c02811.L$3 = null;
                        c02811.Z$0 = z5;
                        c02811.I$0 = i6;
                        c02811.label = 5;
                        if (TimeoutKt.withTimeout(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, anonymousClass3, c02811) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        notificationGenerationJob3 = notificationGenerationJob2;
                        i8 = i6;
                        int i12 = i8;
                        z7 = z5;
                        Ref.BooleanRef booleanRef5 = booleanRef3;
                        notificationGenerationJob4 = notificationGenerationJob3;
                        notificationGenerationProcessor5 = notificationGenerationProcessor3;
                        boolean z12 = booleanRef5.element;
                        c02811.L$0 = notificationGenerationProcessor5;
                        c02811.L$1 = notificationGenerationJob4;
                        c02811.L$2 = null;
                        c02811.L$3 = null;
                        c02811.Z$0 = z7;
                        c02811.I$0 = i12;
                        c02811.label = 6;
                        objCanReceiveNotification = notificationGenerationProcessor5.processHandlerResponse(notificationGenerationJob4, z12, z7, c02811);
                        i9 = i12;
                        if (objCanReceiveNotification == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        bool2 = (Boolean) objCanReceiveNotification;
                        if (bool2 == null) {
                            return Unit.INSTANCE;
                        }
                        boolean zBooleanValue3 = bool2.booleanValue();
                        notificationGenerationJob2 = notificationGenerationJob4;
                        notificationGenerationProcessor4 = notificationGenerationProcessor5;
                        i7 = i9;
                        zBooleanValue = zBooleanValue3;
                    } else {
                        i7 = i6;
                        z7 = z5;
                        notificationGenerationProcessor4 = notificationGenerationProcessor3;
                    }
                    if (zBooleanValue) {
                        INotificationDisplayer iNotificationDisplayer2 = notificationGenerationProcessor4._notificationDisplayer;
                        c02811.L$0 = notificationGenerationProcessor4;
                        c02811.L$1 = notificationGenerationJob2;
                        c02811.L$2 = null;
                        c02811.L$3 = null;
                        c02811.Z$0 = z7;
                        c02811.label = 7;
                        objCanReceiveNotification = iNotificationDisplayer2.displayNotification(notificationGenerationJob2, c02811);
                        if (objCanReceiveNotification == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        z6 = z7;
                        notificationGenerationJob5 = notificationGenerationJob2;
                        notificationGenerationJob2 = notificationGenerationJob5;
                        BooleanValue = ((Boolean) objCanReceiveNotification).booleanValue();
                    } else {
                        z6 = z7;
                        BooleanValue = i7;
                    }
                    notificationGenerationProcessor3 = notificationGenerationProcessor4;
                    r5 = BooleanValue;
                } else {
                    z6 = z5;
                    r5 = i6;
                }
                if (!notificationGenerationJob2.getIsRestoring()) {
                    if (r5 != 0) {
                    }
                    c02811.L$0 = null;
                    c02811.L$1 = null;
                    c02811.L$2 = null;
                    c02811.L$3 = null;
                    c02811.Z$0 = z6;
                    c02811.label = 8;
                    if (notificationGenerationProcessor3.postProcessNotification(notificationGenerationJob2, false, z8, c02811) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                if (!z6) {
                    return Unit.INSTANCE;
                }
                c02811.L$0 = null;
                c02811.L$1 = null;
                c02811.L$2 = null;
                c02811.L$3 = null;
                c02811.label = 9;
                if (DelayKt.delay(100L, c02811) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            case 2:
                j3 = c02811.J$0;
                z2 = c02811.Z$0;
                notification2 = (Notification) c02811.L$3;
                jSONObject2 = (JSONObject) c02811.L$2;
                context3 = (Context) c02811.L$1;
                notificationGenerationProcessor2 = (NotificationGenerationProcessor) c02811.L$0;
                ResultKt.throwOnFailure(objCanReceiveNotification);
                if (((Boolean) objCanReceiveNotification).booleanValue()) {
                    return Unit.INSTANCE;
                }
                z3 = z2;
                long j7 = j3;
                context2 = context3;
                j2 = j7;
                notificationGenerationJob = new NotificationGenerationJob(notification2, jSONObject2);
                notificationGenerationJob.setShownTimeStamp(Boxing.boxLong(j2));
                notificationGenerationJob.setRestoring(z3);
                booleanRef = new Ref.BooleanRef();
                booleanRef.element = true;
                Logging.info$default("Fire remoteNotificationReceived", null, 2, null);
                anonymousClass2 = notificationGenerationProcessor2.new AnonymousClass2(new NotificationReceivedEvent(context2, notification2), booleanRef, notification2, null);
                c02811.L$0 = notificationGenerationProcessor2;
                c02811.L$1 = notification2;
                c02811.L$2 = notificationGenerationJob;
                c02811.L$3 = booleanRef;
                c02811.Z$0 = z3;
                c02811.I$0 = 0;
                c02811.label = 3;
                if (TimeoutKt.withTimeout(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, anonymousClass2, c02811) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                notification3 = notification2;
                notificationGenerationJob2 = notificationGenerationJob;
                booleanRef2 = booleanRef;
                i5 = 0;
                z4 = z3;
                boolean z13 = booleanRef2.element;
                c02811.L$0 = notificationGenerationProcessor2;
                c02811.L$1 = notification3;
                c02811.L$2 = notificationGenerationJob2;
                c02811.L$3 = booleanRef2;
                c02811.Z$0 = z4;
                c02811.I$0 = i5 == true ? 1 : 0;
                c02811.label = 4;
                objCanReceiveNotification = notificationGenerationProcessor2.processHandlerResponse(notificationGenerationJob2, z13, z4, c02811);
                if (objCanReceiveNotification == coroutine_suspended) {
                    return coroutine_suspended;
                }
                booleanRef3 = booleanRef2;
                notificationGenerationProcessor3 = notificationGenerationProcessor2;
                z5 = z4;
                i6 = i5;
                bool = (Boolean) objCanReceiveNotification;
                if (bool == null) {
                    return Unit.INSTANCE;
                }
                zBooleanValue = bool.booleanValue();
                if (zBooleanValue) {
                    if (notificationGenerationProcessor3.shouldFireForegroundHandlers(notificationGenerationJob2)) {
                        Logging.info$default("Fire notificationWillShowInForegroundHandler", null, 2, null);
                        booleanRef3.element = true;
                        anonymousClass3 = notificationGenerationProcessor3.new AnonymousClass3(new NotificationWillDisplayEvent(notificationGenerationJob2.getNotification()), booleanRef3, notification3, null);
                        c02811.L$0 = notificationGenerationProcessor3;
                        c02811.L$1 = notificationGenerationJob2;
                        c02811.L$2 = booleanRef3;
                        c02811.L$3 = null;
                        c02811.Z$0 = z5;
                        c02811.I$0 = i6;
                        c02811.label = 5;
                        if (TimeoutKt.withTimeout(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, anonymousClass3, c02811) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        notificationGenerationJob3 = notificationGenerationJob2;
                        i8 = i6;
                        int i13 = i8;
                        z7 = z5;
                        Ref.BooleanRef booleanRef6 = booleanRef3;
                        notificationGenerationJob4 = notificationGenerationJob3;
                        notificationGenerationProcessor5 = notificationGenerationProcessor3;
                        boolean z14 = booleanRef6.element;
                        c02811.L$0 = notificationGenerationProcessor5;
                        c02811.L$1 = notificationGenerationJob4;
                        c02811.L$2 = null;
                        c02811.L$3 = null;
                        c02811.Z$0 = z7;
                        c02811.I$0 = i13;
                        c02811.label = 6;
                        objCanReceiveNotification = notificationGenerationProcessor5.processHandlerResponse(notificationGenerationJob4, z14, z7, c02811);
                        i9 = i13;
                        if (objCanReceiveNotification == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        bool2 = (Boolean) objCanReceiveNotification;
                        if (bool2 == null) {
                            return Unit.INSTANCE;
                        }
                        boolean zBooleanValue4 = bool2.booleanValue();
                        notificationGenerationJob2 = notificationGenerationJob4;
                        notificationGenerationProcessor4 = notificationGenerationProcessor5;
                        i7 = i9;
                        zBooleanValue = zBooleanValue4;
                    } else {
                        i7 = i6;
                        z7 = z5;
                        notificationGenerationProcessor4 = notificationGenerationProcessor3;
                    }
                    if (zBooleanValue) {
                        INotificationDisplayer iNotificationDisplayer3 = notificationGenerationProcessor4._notificationDisplayer;
                        c02811.L$0 = notificationGenerationProcessor4;
                        c02811.L$1 = notificationGenerationJob2;
                        c02811.L$2 = null;
                        c02811.L$3 = null;
                        c02811.Z$0 = z7;
                        c02811.label = 7;
                        objCanReceiveNotification = iNotificationDisplayer3.displayNotification(notificationGenerationJob2, c02811);
                        if (objCanReceiveNotification == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        z6 = z7;
                        notificationGenerationJob5 = notificationGenerationJob2;
                        notificationGenerationJob2 = notificationGenerationJob5;
                        BooleanValue = ((Boolean) objCanReceiveNotification).booleanValue();
                    } else {
                        z6 = z7;
                        BooleanValue = i7;
                    }
                    notificationGenerationProcessor3 = notificationGenerationProcessor4;
                    r5 = BooleanValue;
                } else {
                    z6 = z5;
                    r5 = i6;
                }
                if (!notificationGenerationJob2.getIsRestoring()) {
                    if (r5 != 0) {
                    }
                    c02811.L$0 = null;
                    c02811.L$1 = null;
                    c02811.L$2 = null;
                    c02811.L$3 = null;
                    c02811.Z$0 = z6;
                    c02811.label = 8;
                    if (notificationGenerationProcessor3.postProcessNotification(notificationGenerationJob2, false, z8, c02811) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                if (!z6) {
                    return Unit.INSTANCE;
                }
                c02811.L$0 = null;
                c02811.L$1 = null;
                c02811.L$2 = null;
                c02811.L$3 = null;
                c02811.label = 9;
                if (DelayKt.delay(100L, c02811) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            case 3:
                int i14 = c02811.I$0;
                z4 = c02811.Z$0;
                booleanRef2 = (Ref.BooleanRef) c02811.L$3;
                notificationGenerationJob2 = (NotificationGenerationJob) c02811.L$2;
                notification3 = (Notification) c02811.L$1;
                NotificationGenerationProcessor notificationGenerationProcessor9 = (NotificationGenerationProcessor) c02811.L$0;
                try {
                    ResultKt.throwOnFailure(objCanReceiveNotification);
                    notificationGenerationProcessor2 = notificationGenerationProcessor9;
                    i5 = i14;
                } catch (TimeoutCancellationException e3) {
                    e = e3;
                    notificationGenerationProcessor2 = notificationGenerationProcessor9;
                    i4 = i14;
                    Logging.error("remoteNotificationReceived timed out, continuing with wantsToDisplay=" + booleanRef2.element + '.', e);
                    i5 = i4;
                } catch (Throwable th3) {
                    th = th3;
                    notificationGenerationProcessor2 = notificationGenerationProcessor9;
                    i3 = i14;
                    Logging.error("remoteNotificationReceived threw an exception. Displaying normal OneSignal notification.", th);
                    i5 = i3;
                }
                boolean z15 = booleanRef2.element;
                c02811.L$0 = notificationGenerationProcessor2;
                c02811.L$1 = notification3;
                c02811.L$2 = notificationGenerationJob2;
                c02811.L$3 = booleanRef2;
                c02811.Z$0 = z4;
                c02811.I$0 = i5 == true ? 1 : 0;
                c02811.label = 4;
                objCanReceiveNotification = notificationGenerationProcessor2.processHandlerResponse(notificationGenerationJob2, z15, z4, c02811);
                if (objCanReceiveNotification == coroutine_suspended) {
                    return coroutine_suspended;
                }
                booleanRef3 = booleanRef2;
                notificationGenerationProcessor3 = notificationGenerationProcessor2;
                z5 = z4;
                i6 = i5;
                bool = (Boolean) objCanReceiveNotification;
                if (bool == null) {
                    return Unit.INSTANCE;
                }
                zBooleanValue = bool.booleanValue();
                if (zBooleanValue) {
                    if (notificationGenerationProcessor3.shouldFireForegroundHandlers(notificationGenerationJob2)) {
                        Logging.info$default("Fire notificationWillShowInForegroundHandler", null, 2, null);
                        booleanRef3.element = true;
                        anonymousClass3 = notificationGenerationProcessor3.new AnonymousClass3(new NotificationWillDisplayEvent(notificationGenerationJob2.getNotification()), booleanRef3, notification3, null);
                        c02811.L$0 = notificationGenerationProcessor3;
                        c02811.L$1 = notificationGenerationJob2;
                        c02811.L$2 = booleanRef3;
                        c02811.L$3 = null;
                        c02811.Z$0 = z5;
                        c02811.I$0 = i6;
                        c02811.label = 5;
                        if (TimeoutKt.withTimeout(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, anonymousClass3, c02811) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        notificationGenerationJob3 = notificationGenerationJob2;
                        i8 = i6;
                        int i15 = i8;
                        z7 = z5;
                        Ref.BooleanRef booleanRef7 = booleanRef3;
                        notificationGenerationJob4 = notificationGenerationJob3;
                        notificationGenerationProcessor5 = notificationGenerationProcessor3;
                        boolean z16 = booleanRef7.element;
                        c02811.L$0 = notificationGenerationProcessor5;
                        c02811.L$1 = notificationGenerationJob4;
                        c02811.L$2 = null;
                        c02811.L$3 = null;
                        c02811.Z$0 = z7;
                        c02811.I$0 = i15;
                        c02811.label = 6;
                        objCanReceiveNotification = notificationGenerationProcessor5.processHandlerResponse(notificationGenerationJob4, z16, z7, c02811);
                        i9 = i15;
                        if (objCanReceiveNotification == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        bool2 = (Boolean) objCanReceiveNotification;
                        if (bool2 == null) {
                            return Unit.INSTANCE;
                        }
                        boolean zBooleanValue5 = bool2.booleanValue();
                        notificationGenerationJob2 = notificationGenerationJob4;
                        notificationGenerationProcessor4 = notificationGenerationProcessor5;
                        i7 = i9;
                        zBooleanValue = zBooleanValue5;
                    } else {
                        i7 = i6;
                        z7 = z5;
                        notificationGenerationProcessor4 = notificationGenerationProcessor3;
                    }
                    if (zBooleanValue) {
                        INotificationDisplayer iNotificationDisplayer4 = notificationGenerationProcessor4._notificationDisplayer;
                        c02811.L$0 = notificationGenerationProcessor4;
                        c02811.L$1 = notificationGenerationJob2;
                        c02811.L$2 = null;
                        c02811.L$3 = null;
                        c02811.Z$0 = z7;
                        c02811.label = 7;
                        objCanReceiveNotification = iNotificationDisplayer4.displayNotification(notificationGenerationJob2, c02811);
                        if (objCanReceiveNotification == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        z6 = z7;
                        notificationGenerationJob5 = notificationGenerationJob2;
                        notificationGenerationJob2 = notificationGenerationJob5;
                        BooleanValue = ((Boolean) objCanReceiveNotification).booleanValue();
                    } else {
                        z6 = z7;
                        BooleanValue = i7;
                    }
                    notificationGenerationProcessor3 = notificationGenerationProcessor4;
                    r5 = BooleanValue;
                } else {
                    z6 = z5;
                    r5 = i6;
                }
                if (!notificationGenerationJob2.getIsRestoring()) {
                    if (r5 != 0) {
                    }
                    c02811.L$0 = null;
                    c02811.L$1 = null;
                    c02811.L$2 = null;
                    c02811.L$3 = null;
                    c02811.Z$0 = z6;
                    c02811.label = 8;
                    if (notificationGenerationProcessor3.postProcessNotification(notificationGenerationJob2, false, z8, c02811) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                if (!z6) {
                    return Unit.INSTANCE;
                }
                c02811.L$0 = null;
                c02811.L$1 = null;
                c02811.L$2 = null;
                c02811.L$3 = null;
                c02811.label = 9;
                if (DelayKt.delay(100L, c02811) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            case 4:
                int i16 = c02811.I$0;
                boolean z17 = c02811.Z$0;
                Ref.BooleanRef booleanRef8 = (Ref.BooleanRef) c02811.L$3;
                notificationGenerationJob2 = (NotificationGenerationJob) c02811.L$2;
                notification3 = (Notification) c02811.L$1;
                NotificationGenerationProcessor notificationGenerationProcessor10 = (NotificationGenerationProcessor) c02811.L$0;
                ResultKt.throwOnFailure(objCanReceiveNotification);
                z5 = z17;
                booleanRef3 = booleanRef8;
                i6 = i16;
                notificationGenerationProcessor3 = notificationGenerationProcessor10;
                bool = (Boolean) objCanReceiveNotification;
                if (bool == null) {
                    return Unit.INSTANCE;
                }
                zBooleanValue = bool.booleanValue();
                if (zBooleanValue) {
                    if (notificationGenerationProcessor3.shouldFireForegroundHandlers(notificationGenerationJob2)) {
                        Logging.info$default("Fire notificationWillShowInForegroundHandler", null, 2, null);
                        booleanRef3.element = true;
                        anonymousClass3 = notificationGenerationProcessor3.new AnonymousClass3(new NotificationWillDisplayEvent(notificationGenerationJob2.getNotification()), booleanRef3, notification3, null);
                        c02811.L$0 = notificationGenerationProcessor3;
                        c02811.L$1 = notificationGenerationJob2;
                        c02811.L$2 = booleanRef3;
                        c02811.L$3 = null;
                        c02811.Z$0 = z5;
                        c02811.I$0 = i6;
                        c02811.label = 5;
                        if (TimeoutKt.withTimeout(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, anonymousClass3, c02811) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        notificationGenerationJob3 = notificationGenerationJob2;
                        i8 = i6;
                        int i17 = i8;
                        z7 = z5;
                        Ref.BooleanRef booleanRef9 = booleanRef3;
                        notificationGenerationJob4 = notificationGenerationJob3;
                        notificationGenerationProcessor5 = notificationGenerationProcessor3;
                        boolean z18 = booleanRef9.element;
                        c02811.L$0 = notificationGenerationProcessor5;
                        c02811.L$1 = notificationGenerationJob4;
                        c02811.L$2 = null;
                        c02811.L$3 = null;
                        c02811.Z$0 = z7;
                        c02811.I$0 = i17;
                        c02811.label = 6;
                        objCanReceiveNotification = notificationGenerationProcessor5.processHandlerResponse(notificationGenerationJob4, z18, z7, c02811);
                        i9 = i17;
                        if (objCanReceiveNotification == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        bool2 = (Boolean) objCanReceiveNotification;
                        if (bool2 == null) {
                            return Unit.INSTANCE;
                        }
                        boolean zBooleanValue6 = bool2.booleanValue();
                        notificationGenerationJob2 = notificationGenerationJob4;
                        notificationGenerationProcessor4 = notificationGenerationProcessor5;
                        i7 = i9;
                        zBooleanValue = zBooleanValue6;
                    } else {
                        i7 = i6;
                        z7 = z5;
                        notificationGenerationProcessor4 = notificationGenerationProcessor3;
                    }
                    if (zBooleanValue) {
                        INotificationDisplayer iNotificationDisplayer5 = notificationGenerationProcessor4._notificationDisplayer;
                        c02811.L$0 = notificationGenerationProcessor4;
                        c02811.L$1 = notificationGenerationJob2;
                        c02811.L$2 = null;
                        c02811.L$3 = null;
                        c02811.Z$0 = z7;
                        c02811.label = 7;
                        objCanReceiveNotification = iNotificationDisplayer5.displayNotification(notificationGenerationJob2, c02811);
                        if (objCanReceiveNotification == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        z6 = z7;
                        notificationGenerationJob5 = notificationGenerationJob2;
                        notificationGenerationJob2 = notificationGenerationJob5;
                        BooleanValue = ((Boolean) objCanReceiveNotification).booleanValue();
                    } else {
                        z6 = z7;
                        BooleanValue = i7;
                    }
                    notificationGenerationProcessor3 = notificationGenerationProcessor4;
                    r5 = BooleanValue;
                } else {
                    z6 = z5;
                    r5 = i6;
                }
                if (!notificationGenerationJob2.getIsRestoring()) {
                    if (r5 != 0) {
                    }
                    c02811.L$0 = null;
                    c02811.L$1 = null;
                    c02811.L$2 = null;
                    c02811.L$3 = null;
                    c02811.Z$0 = z6;
                    c02811.label = 8;
                    if (notificationGenerationProcessor3.postProcessNotification(notificationGenerationJob2, false, z8, c02811) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                if (!z6) {
                    return Unit.INSTANCE;
                }
                c02811.L$0 = null;
                c02811.L$1 = null;
                c02811.L$2 = null;
                c02811.L$3 = null;
                c02811.label = 9;
                if (DelayKt.delay(100L, c02811) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            case 5:
                i6 = c02811.I$0;
                z5 = c02811.Z$0;
                booleanRef3 = (Ref.BooleanRef) c02811.L$2;
                notificationGenerationJob3 = (NotificationGenerationJob) c02811.L$1;
                notificationGenerationProcessor3 = (NotificationGenerationProcessor) c02811.L$0;
                try {
                    ResultKt.throwOnFailure(objCanReceiveNotification);
                    i8 = i6;
                    break;
                } catch (TimeoutCancellationException e4) {
                    e = e4;
                    Logging.info("notificationWillShowInForegroundHandler timed out, continuing with wantsToDisplay=" + booleanRef3.element + '.', e);
                    i8 = i6;
                } catch (Throwable th4) {
                    th = th4;
                    Logging.error("notificationWillShowInForegroundHandler threw an exception. Displaying normal OneSignal notification.", th);
                    i8 = i6;
                }
                int i18 = i8;
                z7 = z5;
                Ref.BooleanRef booleanRef10 = booleanRef3;
                notificationGenerationJob4 = notificationGenerationJob3;
                notificationGenerationProcessor5 = notificationGenerationProcessor3;
                boolean z19 = booleanRef10.element;
                c02811.L$0 = notificationGenerationProcessor5;
                c02811.L$1 = notificationGenerationJob4;
                c02811.L$2 = null;
                c02811.L$3 = null;
                c02811.Z$0 = z7;
                c02811.I$0 = i18;
                c02811.label = 6;
                objCanReceiveNotification = notificationGenerationProcessor5.processHandlerResponse(notificationGenerationJob4, z19, z7, c02811);
                i9 = i18;
                if (objCanReceiveNotification == coroutine_suspended) {
                    return coroutine_suspended;
                }
                bool2 = (Boolean) objCanReceiveNotification;
                if (bool2 == null) {
                    return Unit.INSTANCE;
                }
                boolean zBooleanValue7 = bool2.booleanValue();
                notificationGenerationJob2 = notificationGenerationJob4;
                notificationGenerationProcessor4 = notificationGenerationProcessor5;
                i7 = i9;
                zBooleanValue = zBooleanValue7;
                if (zBooleanValue) {
                    INotificationDisplayer iNotificationDisplayer6 = notificationGenerationProcessor4._notificationDisplayer;
                    c02811.L$0 = notificationGenerationProcessor4;
                    c02811.L$1 = notificationGenerationJob2;
                    c02811.L$2 = null;
                    c02811.L$3 = null;
                    c02811.Z$0 = z7;
                    c02811.label = 7;
                    objCanReceiveNotification = iNotificationDisplayer6.displayNotification(notificationGenerationJob2, c02811);
                    if (objCanReceiveNotification == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    z6 = z7;
                    notificationGenerationJob5 = notificationGenerationJob2;
                    notificationGenerationJob2 = notificationGenerationJob5;
                    BooleanValue = ((Boolean) objCanReceiveNotification).booleanValue();
                } else {
                    z6 = z7;
                    BooleanValue = i7;
                }
                notificationGenerationProcessor3 = notificationGenerationProcessor4;
                r5 = BooleanValue;
                if (!notificationGenerationJob2.getIsRestoring()) {
                    if (r5 != 0) {
                    }
                    c02811.L$0 = null;
                    c02811.L$1 = null;
                    c02811.L$2 = null;
                    c02811.L$3 = null;
                    c02811.Z$0 = z6;
                    c02811.label = 8;
                    if (notificationGenerationProcessor3.postProcessNotification(notificationGenerationJob2, false, z8, c02811) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                if (!z6) {
                    return Unit.INSTANCE;
                }
                c02811.L$0 = null;
                c02811.L$1 = null;
                c02811.L$2 = null;
                c02811.L$3 = null;
                c02811.label = 9;
                if (DelayKt.delay(100L, c02811) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            case 6:
                int i19 = c02811.I$0;
                z7 = c02811.Z$0;
                notificationGenerationJob4 = (NotificationGenerationJob) c02811.L$1;
                notificationGenerationProcessor5 = (NotificationGenerationProcessor) c02811.L$0;
                ResultKt.throwOnFailure(objCanReceiveNotification);
                i9 = i19;
                bool2 = (Boolean) objCanReceiveNotification;
                if (bool2 == null) {
                    return Unit.INSTANCE;
                }
                boolean zBooleanValue8 = bool2.booleanValue();
                notificationGenerationJob2 = notificationGenerationJob4;
                notificationGenerationProcessor4 = notificationGenerationProcessor5;
                i7 = i9;
                zBooleanValue = zBooleanValue8;
                if (zBooleanValue) {
                    INotificationDisplayer iNotificationDisplayer7 = notificationGenerationProcessor4._notificationDisplayer;
                    c02811.L$0 = notificationGenerationProcessor4;
                    c02811.L$1 = notificationGenerationJob2;
                    c02811.L$2 = null;
                    c02811.L$3 = null;
                    c02811.Z$0 = z7;
                    c02811.label = 7;
                    objCanReceiveNotification = iNotificationDisplayer7.displayNotification(notificationGenerationJob2, c02811);
                    if (objCanReceiveNotification == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    z6 = z7;
                    notificationGenerationJob5 = notificationGenerationJob2;
                    notificationGenerationJob2 = notificationGenerationJob5;
                    BooleanValue = ((Boolean) objCanReceiveNotification).booleanValue();
                } else {
                    z6 = z7;
                    BooleanValue = i7;
                }
                notificationGenerationProcessor3 = notificationGenerationProcessor4;
                r5 = BooleanValue;
                if (!notificationGenerationJob2.getIsRestoring()) {
                    if (r5 != 0) {
                    }
                    c02811.L$0 = null;
                    c02811.L$1 = null;
                    c02811.L$2 = null;
                    c02811.L$3 = null;
                    c02811.Z$0 = z6;
                    c02811.label = 8;
                    if (notificationGenerationProcessor3.postProcessNotification(notificationGenerationJob2, false, z8, c02811) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                if (!z6) {
                    return Unit.INSTANCE;
                }
                c02811.L$0 = null;
                c02811.L$1 = null;
                c02811.L$2 = null;
                c02811.L$3 = null;
                c02811.label = 9;
                if (DelayKt.delay(100L, c02811) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            case 7:
                z6 = c02811.Z$0;
                notificationGenerationJob5 = (NotificationGenerationJob) c02811.L$1;
                notificationGenerationProcessor4 = (NotificationGenerationProcessor) c02811.L$0;
                ResultKt.throwOnFailure(objCanReceiveNotification);
                notificationGenerationJob2 = notificationGenerationJob5;
                BooleanValue = ((Boolean) objCanReceiveNotification).booleanValue();
                notificationGenerationProcessor3 = notificationGenerationProcessor4;
                r5 = BooleanValue;
                if (!notificationGenerationJob2.getIsRestoring()) {
                    if (r5 != 0) {
                    }
                    c02811.L$0 = null;
                    c02811.L$1 = null;
                    c02811.L$2 = null;
                    c02811.L$3 = null;
                    c02811.Z$0 = z6;
                    c02811.label = 8;
                    if (notificationGenerationProcessor3.postProcessNotification(notificationGenerationJob2, false, z8, c02811) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                if (!z6) {
                    return Unit.INSTANCE;
                }
                c02811.L$0 = null;
                c02811.L$1 = null;
                c02811.L$2 = null;
                c02811.L$3 = null;
                c02811.label = 9;
                if (DelayKt.delay(100L, c02811) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            case 8:
                z6 = c02811.Z$0;
                ResultKt.throwOnFailure(objCanReceiveNotification);
                if (!z6) {
                    return Unit.INSTANCE;
                }
                c02811.L$0 = null;
                c02811.L$1 = null;
                c02811.L$2 = null;
                c02811.L$3 = null;
                c02811.label = 9;
                if (DelayKt.delay(100L, c02811) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            case 9:
                ResultKt.throwOnFailure(objCanReceiveNotification);
                return Unit.INSTANCE;
            default:
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.generation.impl.NotificationGenerationProcessor$processNotificationData$2, reason: invalid class name */
    /* JADX INFO: compiled from: NotificationGenerationProcessor.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.notifications.internal.generation.impl.NotificationGenerationProcessor$processNotificationData$2", f = "NotificationGenerationProcessor.kt", i = {}, l = {85}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Notification $notification;
        final /* synthetic */ NotificationReceivedEvent $notificationReceivedEvent;
        final /* synthetic */ Ref.BooleanRef $wantsToDisplay;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(NotificationReceivedEvent notificationReceivedEvent, Ref.BooleanRef booleanRef, Notification notification, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$notificationReceivedEvent = notificationReceivedEvent;
            this.$wantsToDisplay = booleanRef;
            this.$notification = notification;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return NotificationGenerationProcessor.this.new AnonymousClass2(this.$notificationReceivedEvent, this.$wantsToDisplay, this.$notification, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: com.onesignal.notifications.internal.generation.impl.NotificationGenerationProcessor$processNotificationData$2$1, reason: invalid class name */
        /* JADX INFO: compiled from: NotificationGenerationProcessor.kt */
        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.onesignal.notifications.internal.generation.impl.NotificationGenerationProcessor$processNotificationData$2$1", f = "NotificationGenerationProcessor.kt", i = {}, l = {83}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ Notification $notification;
            final /* synthetic */ NotificationReceivedEvent $notificationReceivedEvent;
            final /* synthetic */ Ref.BooleanRef $wantsToDisplay;
            Object L$0;
            int label;
            final /* synthetic */ NotificationGenerationProcessor this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(NotificationGenerationProcessor notificationGenerationProcessor, NotificationReceivedEvent notificationReceivedEvent, Ref.BooleanRef booleanRef, Notification notification, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = notificationGenerationProcessor;
                this.$notificationReceivedEvent = notificationReceivedEvent;
                this.$wantsToDisplay = booleanRef;
                this.$notification = notification;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, this.$notificationReceivedEvent, this.$wantsToDisplay, this.$notification, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Ref.BooleanRef booleanRef;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.this$0._lifecycleService.externalRemoteNotificationReceived(this.$notificationReceivedEvent);
                    if (this.$notificationReceivedEvent.getDiscard()) {
                        this.$wantsToDisplay.element = false;
                    } else if (this.$notificationReceivedEvent.getIsPreventDefault()) {
                        this.$wantsToDisplay.element = false;
                        Ref.BooleanRef booleanRef2 = this.$wantsToDisplay;
                        this.L$0 = booleanRef2;
                        this.label = 1;
                        Object objWaitForWake = this.$notification.getDisplayWaiter().waitForWake(this);
                        if (objWaitForWake == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        booleanRef = booleanRef2;
                        obj = objWaitForWake;
                    }
                    return Unit.INSTANCE;
                }
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                booleanRef = (Ref.BooleanRef) this.L$0;
                ResultKt.throwOnFailure(obj);
                booleanRef.element = ((Boolean) obj).booleanValue();
                return Unit.INSTANCE;
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, Dispatchers.getIO(), null, new AnonymousClass1(NotificationGenerationProcessor.this, this.$notificationReceivedEvent, this.$wantsToDisplay, this.$notification, null), 2, null).join(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.generation.impl.NotificationGenerationProcessor$processNotificationData$3, reason: invalid class name */
    /* JADX INFO: compiled from: NotificationGenerationProcessor.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.notifications.internal.generation.impl.NotificationGenerationProcessor$processNotificationData$3", f = "NotificationGenerationProcessor.kt", i = {}, l = {118}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Notification $notification;
        final /* synthetic */ NotificationWillDisplayEvent $notificationWillDisplayEvent;
        final /* synthetic */ Ref.BooleanRef $wantsToDisplay;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(NotificationWillDisplayEvent notificationWillDisplayEvent, Ref.BooleanRef booleanRef, Notification notification, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$notificationWillDisplayEvent = notificationWillDisplayEvent;
            this.$wantsToDisplay = booleanRef;
            this.$notification = notification;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return NotificationGenerationProcessor.this.new AnonymousClass3(this.$notificationWillDisplayEvent, this.$wantsToDisplay, this.$notification, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX INFO: renamed from: com.onesignal.notifications.internal.generation.impl.NotificationGenerationProcessor$processNotificationData$3$1, reason: invalid class name */
        /* JADX INFO: compiled from: NotificationGenerationProcessor.kt */
        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
        @DebugMetadata(c = "com.onesignal.notifications.internal.generation.impl.NotificationGenerationProcessor$processNotificationData$3$1", f = "NotificationGenerationProcessor.kt", i = {}, l = {116}, m = "invokeSuspend", n = {}, s = {})
        static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ Notification $notification;
            final /* synthetic */ NotificationWillDisplayEvent $notificationWillDisplayEvent;
            final /* synthetic */ Ref.BooleanRef $wantsToDisplay;
            Object L$0;
            int label;
            final /* synthetic */ NotificationGenerationProcessor this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            AnonymousClass1(NotificationGenerationProcessor notificationGenerationProcessor, NotificationWillDisplayEvent notificationWillDisplayEvent, Ref.BooleanRef booleanRef, Notification notification, Continuation<? super AnonymousClass1> continuation) {
                super(2, continuation);
                this.this$0 = notificationGenerationProcessor;
                this.$notificationWillDisplayEvent = notificationWillDisplayEvent;
                this.$wantsToDisplay = booleanRef;
                this.$notification = notification;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new AnonymousClass1(this.this$0, this.$notificationWillDisplayEvent, this.$wantsToDisplay, this.$notification, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                Ref.BooleanRef booleanRef;
                Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
                int i = this.label;
                if (i == 0) {
                    ResultKt.throwOnFailure(obj);
                    this.this$0._lifecycleService.externalNotificationWillShowInForeground(this.$notificationWillDisplayEvent);
                    if (this.$notificationWillDisplayEvent.getDiscard()) {
                        this.$wantsToDisplay.element = false;
                    } else if (this.$notificationWillDisplayEvent.getIsPreventDefault()) {
                        this.$wantsToDisplay.element = false;
                        Ref.BooleanRef booleanRef2 = this.$wantsToDisplay;
                        this.L$0 = booleanRef2;
                        this.label = 1;
                        Object objWaitForWake = this.$notification.getDisplayWaiter().waitForWake(this);
                        if (objWaitForWake == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        booleanRef = booleanRef2;
                        obj = objWaitForWake;
                    }
                    return Unit.INSTANCE;
                }
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                booleanRef = (Ref.BooleanRef) this.L$0;
                ResultKt.throwOnFailure(obj);
                booleanRef.element = ((Boolean) obj).booleanValue();
                return Unit.INSTANCE;
            }
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (BuildersKt__Builders_commonKt.launch$default(GlobalScope.INSTANCE, Dispatchers.getIO(), null, new AnonymousClass1(NotificationGenerationProcessor.this, this.$notificationWillDisplayEvent, this.$wantsToDisplay, this.$notification, null), 2, null).join(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object processHandlerResponse(NotificationGenerationJob notificationGenerationJob, boolean z, boolean z2, Continuation<? super Boolean> continuation) {
        C02801 c02801;
        NotificationGenerationProcessor notificationGenerationProcessor;
        if (continuation instanceof C02801) {
            c02801 = (C02801) continuation;
            if ((c02801.label & Integer.MIN_VALUE) != 0) {
                c02801.label -= Integer.MIN_VALUE;
            } else {
                c02801 = new C02801(continuation);
            }
        } else {
            c02801 = new C02801(continuation);
        }
        Object obj = c02801.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02801.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            if (z) {
                boolean zIsStringNotEmpty = AndroidUtils.INSTANCE.isStringNotEmpty(notificationGenerationJob.getNotification().getBody());
                boolean zIsNotificationWithinTTL = isNotificationWithinTTL(notificationGenerationJob.getNotification());
                if (zIsStringNotEmpty && zIsNotificationWithinTTL) {
                    c02801.L$0 = this;
                    c02801.L$1 = notificationGenerationJob;
                    c02801.label = 1;
                    if (processCollapseKey(notificationGenerationJob, c02801) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    notificationGenerationProcessor = this;
                }
            }
            if (z2) {
                c02801.label = 2;
                if (markNotificationAsDismissed(notificationGenerationJob, c02801) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return null;
            }
            notificationGenerationJob.setNotificationToDisplay(false);
            c02801.label = 3;
            if (postProcessNotification(notificationGenerationJob, true, false, c02801) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return null;
        }
        if (i != 1) {
            if (i == 2 || i == 3) {
                ResultKt.throwOnFailure(obj);
                return null;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        notificationGenerationJob = (NotificationGenerationJob) c02801.L$1;
        notificationGenerationProcessor = (NotificationGenerationProcessor) c02801.L$0;
        ResultKt.throwOnFailure(obj);
        if (notificationGenerationProcessor.shouldDisplayNotification(notificationGenerationJob)) {
            notificationGenerationJob.setNotificationToDisplay(true);
            return Boxing.boxBoolean(true);
        }
        return Boxing.boxBoolean(false);
    }

    private final boolean isNotificationWithinTTL(Notification notification) {
        if (this._configModelStore.getModel().getRestoreTTLFilter()) {
            return notification.getSentTime() + ((long) notification.getTtl()) > this._time.getCurrentTimeMillis() / ((long) 1000);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object isDuplicateNotification(Notification notification, Continuation<? super Boolean> continuation) {
        return this._dataController.doesNotificationExist(notification.getNotificationId(), continuation);
    }

    private final boolean shouldDisplayNotification(NotificationGenerationJob notificationJob) {
        return notificationJob.hasExtender() || AndroidUtils.INSTANCE.isStringNotEmpty(notificationJob.getJsonPayload().optString("alert"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object postProcessNotification(NotificationGenerationJob notificationGenerationJob, boolean z, boolean z2, Continuation<? super Unit> continuation) {
        C02781 c02781;
        NotificationGenerationProcessor notificationGenerationProcessor;
        if (continuation instanceof C02781) {
            c02781 = (C02781) continuation;
            if ((c02781.label & Integer.MIN_VALUE) != 0) {
                c02781.label -= Integer.MIN_VALUE;
            } else {
                c02781 = new C02781(continuation);
            }
        } else {
            c02781 = new C02781(continuation);
        }
        Object obj = c02781.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02781.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            c02781.L$0 = this;
            c02781.L$1 = notificationGenerationJob;
            c02781.Z$0 = z2;
            c02781.label = 1;
            if (saveNotification(notificationGenerationJob, z, c02781) == coroutine_suspended) {
                return coroutine_suspended;
            }
            notificationGenerationProcessor = this;
        } else {
            if (i != 1) {
                if (i == 2) {
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                }
                if (i == 3) {
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            z2 = c02781.Z$0;
            notificationGenerationJob = (NotificationGenerationJob) c02781.L$1;
            notificationGenerationProcessor = (NotificationGenerationProcessor) c02781.L$0;
            ResultKt.throwOnFailure(obj);
        }
        if (!z2) {
            c02781.L$0 = null;
            c02781.L$1 = null;
            c02781.label = 2;
            if (notificationGenerationProcessor.markNotificationAsDismissed(notificationGenerationJob, c02781) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        }
        INotificationLifecycleService iNotificationLifecycleService = notificationGenerationProcessor._lifecycleService;
        c02781.L$0 = null;
        c02781.L$1 = null;
        c02781.label = 3;
        if (iNotificationLifecycleService.notificationReceived(notificationGenerationJob, c02781) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    public final Object saveNotification(NotificationGenerationJob notificationGenerationJob, boolean z, Continuation<? super Unit> continuation) {
        C02821 c02821;
        String strOptString;
        if (continuation instanceof C02821) {
            c02821 = (C02821) continuation;
            if ((c02821.label & Integer.MIN_VALUE) != 0) {
                c02821.label -= Integer.MIN_VALUE;
            } else {
                c02821 = new C02821(continuation);
            }
        } else {
            c02821 = new C02821(continuation);
        }
        Object obj = c02821.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02821.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Logging.debug$default("Saving Notification job: " + notificationGenerationJob, null, 2, null);
                JSONObject jsonPayload = notificationGenerationJob.getJsonPayload();
                JSONObject customJSONObject = getCustomJSONObject(jsonPayload);
                if (jsonPayload.has(Constants.MessagePayloadKeys.COLLAPSE_KEY) && !Intrinsics.areEqual("do_not_collapse", jsonPayload.optString(Constants.MessagePayloadKeys.COLLAPSE_KEY))) {
                    strOptString = jsonPayload.optString(Constants.MessagePayloadKeys.COLLAPSE_KEY);
                } else {
                    strOptString = null;
                }
                long jOptLong = (jsonPayload.optLong("google.sent_time", this._time.getCurrentTimeMillis()) / 1000) + ((long) jsonPayload.optInt("google.ttl", 259200));
                INotificationRepository iNotificationRepository = this._dataController;
                String strOptString2 = customJSONObject.optString("i");
                Intrinsics.checkNotNullExpressionValue(strOptString2, "customJSON.optString(\"i\")");
                String strSafeString = JSONObjectExtensionsKt.safeString(jsonPayload, "grp");
                boolean isNotificationToDisplay = notificationGenerationJob.getIsNotificationToDisplay();
                boolean z2 = z;
                int androidId = notificationGenerationJob.getAndroidId();
                String strValueOf = notificationGenerationJob.getTitle() != null ? String.valueOf(notificationGenerationJob.getTitle()) : null;
                String strValueOf2 = notificationGenerationJob.getBody() != null ? String.valueOf(notificationGenerationJob.getBody()) : null;
                String string = jsonPayload.toString();
                Intrinsics.checkNotNullExpressionValue(string, "jsonPayload.toString()");
                c02821.label = 1;
                if (iNotificationRepository.createNotification(strOptString2, strSafeString, strOptString, isNotificationToDisplay, z2, androidId, strValueOf, strValueOf2, jOptLong, string, c02821) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object markNotificationAsDismissed(NotificationGenerationJob notificationGenerationJob, Continuation<? super Unit> continuation) {
        AnonymousClass1 anonymousClass1;
        NotificationGenerationProcessor notificationGenerationProcessor;
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
        Object objMarkAsDismissed = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objMarkAsDismissed);
            if (!notificationGenerationJob.getIsNotificationToDisplay()) {
                return Unit.INSTANCE;
            }
            Logging.debug$default("Marking restored or disabled notifications as dismissed: " + notificationGenerationJob, null, 2, null);
            INotificationRepository iNotificationRepository = this._dataController;
            int androidId = notificationGenerationJob.getAndroidId();
            anonymousClass1.L$0 = this;
            anonymousClass1.L$1 = notificationGenerationJob;
            anonymousClass1.label = 1;
            objMarkAsDismissed = iNotificationRepository.markAsDismissed(androidId, anonymousClass1);
            if (objMarkAsDismissed == coroutine_suspended) {
                return coroutine_suspended;
            }
            notificationGenerationProcessor = this;
        } else {
            if (i == 1) {
                notificationGenerationJob = (NotificationGenerationJob) anonymousClass1.L$1;
                notificationGenerationProcessor = (NotificationGenerationProcessor) anonymousClass1.L$0;
                ResultKt.throwOnFailure(objMarkAsDismissed);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objMarkAsDismissed);
            }
            return Unit.INSTANCE;
        }
        if (!((Boolean) objMarkAsDismissed).booleanValue()) {
            return Unit.INSTANCE;
        }
        INotificationSummaryManager iNotificationSummaryManager = notificationGenerationProcessor._notificationSummaryManager;
        int androidId2 = notificationGenerationJob.getAndroidId();
        anonymousClass1.L$0 = null;
        anonymousClass1.L$1 = null;
        anonymousClass1.label = 2;
        if (iNotificationSummaryManager.updatePossibleDependentSummaryOnDismiss(androidId2, anonymousClass1) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object processCollapseKey(NotificationGenerationJob notificationGenerationJob, Continuation<? super Unit> continuation) {
        C02791 c02791;
        if (continuation instanceof C02791) {
            c02791 = (C02791) continuation;
            if ((c02791.label & Integer.MIN_VALUE) != 0) {
                c02791.label -= Integer.MIN_VALUE;
            } else {
                c02791 = new C02791(continuation);
            }
        } else {
            c02791 = new C02791(continuation);
        }
        Object androidIdFromCollapseKey = c02791.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02791.label;
        if (i == 0) {
            ResultKt.throwOnFailure(androidIdFromCollapseKey);
            if (notificationGenerationJob.getIsRestoring()) {
                return Unit.INSTANCE;
            }
            if (!notificationGenerationJob.getJsonPayload().has(Constants.MessagePayloadKeys.COLLAPSE_KEY) || Intrinsics.areEqual("do_not_collapse", notificationGenerationJob.getJsonPayload().optString(Constants.MessagePayloadKeys.COLLAPSE_KEY))) {
                return Unit.INSTANCE;
            }
            String collapseId = notificationGenerationJob.getJsonPayload().optString(Constants.MessagePayloadKeys.COLLAPSE_KEY);
            INotificationRepository iNotificationRepository = this._dataController;
            Intrinsics.checkNotNullExpressionValue(collapseId, "collapseId");
            c02791.L$0 = notificationGenerationJob;
            c02791.label = 1;
            androidIdFromCollapseKey = iNotificationRepository.getAndroidIdFromCollapseKey(collapseId, c02791);
            if (androidIdFromCollapseKey == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            notificationGenerationJob = (NotificationGenerationJob) c02791.L$0;
            ResultKt.throwOnFailure(androidIdFromCollapseKey);
        }
        Integer num = (Integer) androidIdFromCollapseKey;
        if (num != null) {
            notificationGenerationJob.getNotification().setAndroidNotificationId(num.intValue());
        }
        return Unit.INSTANCE;
    }

    public final JSONObject getCustomJSONObject(JSONObject jsonObject) throws JSONException {
        Intrinsics.checkNotNullParameter(jsonObject, "jsonObject");
        return new JSONObject(jsonObject.optString(NotificationFormatHelper.PAYLOAD_OS_ROOT_CUSTOM));
    }

    private final boolean shouldFireForegroundHandlers(NotificationGenerationJob notificationJob) {
        if (!this._applicationService.isInForeground()) {
            Logging.info$default("App is in background, show notification", null, 2, null);
            return false;
        }
        if (!notificationJob.getIsRestoring()) {
            return true;
        }
        Logging.info$default("Not firing notificationWillShowInForegroundHandler for restored notifications", null, 2, null);
        return false;
    }
}
