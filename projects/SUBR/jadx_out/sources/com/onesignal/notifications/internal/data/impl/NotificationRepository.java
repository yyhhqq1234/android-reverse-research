package com.onesignal.notifications.internal.data.impl;

import android.app.NotificationManager;
import android.content.ContentValues;
import android.content.Context;
import android.text.TextUtils;
import com.onesignal.core.internal.application.IApplicationService;
import com.onesignal.core.internal.database.ICursor;
import com.onesignal.core.internal.database.IDatabase;
import com.onesignal.core.internal.database.IDatabaseProvider;
import com.onesignal.core.internal.database.impl.OneSignalDbContract;
import com.onesignal.core.internal.time.ITime;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.notifications.BuildConfig;
import com.onesignal.notifications.internal.badges.IBadgeCountUpdater;
import com.onesignal.notifications.internal.common.NotificationHelper;
import com.onesignal.notifications.internal.data.INotificationQueryHelper;
import com.onesignal.notifications.internal.data.INotificationRepository;
import com.onesignal.notifications.internal.limiting.INotificationLimitManager;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.scheduling.WorkQueueKt;
import org.json.JSONException;
import org.json.mediationsdk.utils.IronSourceConstants;
import org.json.y8;

/* JADX INFO: compiled from: NotificationRepository.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0011\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\r\b\u0000\u0018\u0000 >2\u00020\u0001:\u0001>B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ!\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0010H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0012Ji\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u00152\b\u0010\u0017\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00102\b\u0010\u001c\u001a\u0004\u0018\u00010\u00152\b\u0010\u001d\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u0015H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010!J!\u0010\"\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0015H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010#J\u0011\u0010$\u001a\u00020\u000eH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010%J\u001b\u0010&\u001a\u00020\u00192\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010'J#\u0010(\u001a\u0004\u0018\u00010\u00102\u0006\u0010)\u001a\u00020\u00152\u0006\u0010*\u001a\u00020\u0019H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010+J\u001b\u0010,\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0017\u001a\u00020\u0015H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010'J\u001b\u0010-\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u001b\u001a\u00020\u0010H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010.J\u0010\u0010/\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0010H\u0002J\u001f\u00100\u001a\b\u0012\u0004\u0012\u000202012\u0006\u00103\u001a\u00020\u0015H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010'J'\u00104\u001a\b\u0012\u0004\u0012\u000202012\u000e\u00105\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u000101H\u0096@ø\u0001\u0000¢\u0006\u0002\u00106J3\u00107\u001a\u00020\u000e2\u0006\u0010\u001b\u001a\u00020\u00102\u0006\u00108\u001a\u00020\u00192\b\u00103\u001a\u0004\u0018\u00010\u00152\u0006\u00109\u001a\u00020\u0019H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010:J\u0019\u0010;\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0010H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010.J\u0019\u0010<\u001a\u00020\u000e2\u0006\u0010)\u001a\u00020\u0015H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010'J\u0011\u0010=\u001a\u00020\u000eH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010%R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006?"}, d2 = {"Lcom/onesignal/notifications/internal/data/impl/NotificationRepository;", "Lcom/onesignal/notifications/internal/data/INotificationRepository;", "_applicationService", "Lcom/onesignal/core/internal/application/IApplicationService;", "_queryHelper", "Lcom/onesignal/notifications/internal/data/INotificationQueryHelper;", "_databaseProvider", "Lcom/onesignal/core/internal/database/IDatabaseProvider;", "_time", "Lcom/onesignal/core/internal/time/ITime;", "_badgeCountUpdater", "Lcom/onesignal/notifications/internal/badges/IBadgeCountUpdater;", "(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/notifications/internal/data/INotificationQueryHelper;Lcom/onesignal/core/internal/database/IDatabaseProvider;Lcom/onesignal/core/internal/time/ITime;Lcom/onesignal/notifications/internal/badges/IBadgeCountUpdater;)V", "clearOldestOverLimitFallback", "", "notificationsToMakeRoomFor", "", "maxNumberOfNotificationsInt", "(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "createNotification", "id", "", "groupId", "collapseKey", "shouldDismissIdenticals", "", "isOpened", "androidId", "title", y8.h.E0, "expireTime", "", "jsonPayload", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "createSummaryNotification", "(ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteExpiredNotifications", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "doesNotificationExist", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAndroidIdForGroup", "group", "getSummaryNotification", "(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getAndroidIdFromCollapseKey", "getGroupId", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "internalMarkAsDismissed", "listNotificationsForGroup", "", "Lcom/onesignal/notifications/internal/data/INotificationRepository$NotificationData;", "summaryGroup", "listNotificationsForOutstanding", "excludeAndroidIds", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "markAsConsumed", OneSignalDbContract.NotificationTable.COLUMN_NAME_DISMISSED, "clearGroupOnSummaryClick", "(IZLjava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "markAsDismissed", "markAsDismissedForGroup", "markAsDismissedForOutstanding", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class NotificationRepository implements INotificationRepository {
    private static final long NOTIFICATION_CACHE_DATA_LIFETIME = 604800;
    private final IApplicationService _applicationService;
    private final IBadgeCountUpdater _badgeCountUpdater;
    private final IDatabaseProvider _databaseProvider;
    private final INotificationQueryHelper _queryHelper;
    private final ITime _time;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String[] COLUMNS_FOR_LIST_NOTIFICATIONS = {"title", OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE, "notification_id", OneSignalDbContract.NotificationTable.COLUMN_NAME_ANDROID_NOTIFICATION_ID, OneSignalDbContract.NotificationTable.COLUMN_NAME_FULL_DATA, OneSignalDbContract.NotificationTable.COLUMN_NAME_CREATED_TIME};

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.data.impl.NotificationRepository$doesNotificationExist$1, reason: invalid class name */
    /* JADX INFO: compiled from: NotificationRepository.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.data.impl.NotificationRepository", f = "NotificationRepository.kt", i = {0}, l = {162}, m = "doesNotificationExist", n = {"result"}, s = {"L$0"})
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
            return NotificationRepository.this.doesNotificationExist(null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.data.impl.NotificationRepository$getAndroidIdForGroup$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationRepository.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.data.impl.NotificationRepository", f = "NotificationRepository.kt", i = {0}, l = {IronSourceConstants.SDK_INIT_FAILED}, m = "getAndroidIdForGroup", n = {"recentId"}, s = {"L$0"})
    static final class C02621 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02621(Continuation<? super C02621> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return NotificationRepository.this.getAndroidIdForGroup(null, false, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.data.impl.NotificationRepository$getAndroidIdFromCollapseKey$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationRepository.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.data.impl.NotificationRepository", f = "NotificationRepository.kt", i = {0}, l = {381}, m = "getAndroidIdFromCollapseKey", n = {"androidId"}, s = {"L$0"})
    static final class C02641 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02641(Continuation<? super C02641> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return NotificationRepository.this.getAndroidIdFromCollapseKey(null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.data.impl.NotificationRepository$getGroupId$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationRepository.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.data.impl.NotificationRepository", f = "NotificationRepository.kt", i = {0}, l = {361}, m = "getGroupId", n = {"groupId"}, s = {"L$0"})
    static final class C02661 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02661(Continuation<? super C02661> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return NotificationRepository.this.getGroupId(0, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.data.impl.NotificationRepository$listNotificationsForGroup$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationRepository.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.data.impl.NotificationRepository", f = "NotificationRepository.kt", i = {0}, l = {440}, m = "listNotificationsForGroup", n = {"listOfNotifications"}, s = {"L$0"})
    static final class C02681 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02681(Continuation<? super C02681> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return NotificationRepository.this.listNotificationsForGroup(null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.data.impl.NotificationRepository$listNotificationsForOutstanding$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationRepository.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.data.impl.NotificationRepository", f = "NotificationRepository.kt", i = {0}, l = {541}, m = "listNotificationsForOutstanding", n = {"listOfNotifications"}, s = {"L$0"})
    static final class C02701 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02701(Continuation<? super C02701> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return NotificationRepository.this.listNotificationsForOutstanding(null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.data.impl.NotificationRepository$markAsDismissed$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationRepository.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.data.impl.NotificationRepository", f = "NotificationRepository.kt", i = {0}, l = {WorkQueueKt.MASK}, m = "markAsDismissed", n = {"didDismiss"}, s = {"L$0"})
    static final class C02731 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02731(Continuation<? super C02731> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return NotificationRepository.this.markAsDismissed(0, this);
        }
    }

    public NotificationRepository(IApplicationService _applicationService, INotificationQueryHelper _queryHelper, IDatabaseProvider _databaseProvider, ITime _time, IBadgeCountUpdater _badgeCountUpdater) {
        Intrinsics.checkNotNullParameter(_applicationService, "_applicationService");
        Intrinsics.checkNotNullParameter(_queryHelper, "_queryHelper");
        Intrinsics.checkNotNullParameter(_databaseProvider, "_databaseProvider");
        Intrinsics.checkNotNullParameter(_time, "_time");
        Intrinsics.checkNotNullParameter(_badgeCountUpdater, "_badgeCountUpdater");
        this._applicationService = _applicationService;
        this._queryHelper = _queryHelper;
        this._databaseProvider = _databaseProvider;
        this._time = _time;
        this._badgeCountUpdater = _badgeCountUpdater;
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.data.impl.NotificationRepository$deleteExpiredNotifications$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.notifications.internal.data.impl.NotificationRepository$deleteExpiredNotifications$2", f = "NotificationRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02602 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C02602(Continuation<? super C02602> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return NotificationRepository.this.new C02602(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02602) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            String strValueOf = String.valueOf((NotificationRepository.this._time.getCurrentTimeMillis() / 1000) - NotificationRepository.NOTIFICATION_CACHE_DATA_LIFETIME);
            Intrinsics.checkNotNullExpressionValue(strValueOf, "valueOf(\n               …FETIME,\n                )");
            NotificationRepository.this._databaseProvider.getOs().delete(OneSignalDbContract.NotificationTable.TABLE_NAME, "created_time < ?", new String[]{strValueOf});
            return Unit.INSTANCE;
        }
    }

    @Override // com.onesignal.notifications.internal.data.INotificationRepository
    public Object deleteExpiredNotifications(Continuation<? super Unit> continuation) throws Throwable {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new C02602(null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.data.impl.NotificationRepository$markAsDismissedForOutstanding$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.notifications.internal.data.impl.NotificationRepository$markAsDismissedForOutstanding$2", f = "NotificationRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02762 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C02762(Continuation<? super C02762> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return NotificationRepository.this.new C02762(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02762) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            final NotificationManager notificationManager = NotificationHelper.INSTANCE.getNotificationManager(NotificationRepository.this._applicationService.getAppContext());
            IDatabase.DefaultImpls.query$default(NotificationRepository.this._databaseProvider.getOs(), OneSignalDbContract.NotificationTable.TABLE_NAME, new String[]{OneSignalDbContract.NotificationTable.COLUMN_NAME_ANDROID_NOTIFICATION_ID}, "dismissed = 0 AND opened = 0", null, null, null, null, null, new Function1<ICursor, Unit>() { // from class: com.onesignal.notifications.internal.data.impl.NotificationRepository.markAsDismissedForOutstanding.2.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ICursor iCursor) {
                    invoke2(iCursor);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ICursor it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    if (it.moveToFirst()) {
                        do {
                            notificationManager.cancel(it.getInt(OneSignalDbContract.NotificationTable.COLUMN_NAME_ANDROID_NOTIFICATION_ID));
                        } while (it.moveToNext());
                    }
                }
            }, 248, null);
            ContentValues contentValues = new ContentValues();
            contentValues.put(OneSignalDbContract.NotificationTable.COLUMN_NAME_DISMISSED, Boxing.boxInt(1));
            NotificationRepository.this._databaseProvider.getOs().update(OneSignalDbContract.NotificationTable.TABLE_NAME, contentValues, "opened = 0", null);
            NotificationRepository.this._badgeCountUpdater.updateCount(0);
            return Unit.INSTANCE;
        }
    }

    @Override // com.onesignal.notifications.internal.data.INotificationRepository
    public Object markAsDismissedForOutstanding(Continuation<? super Unit> continuation) throws Throwable {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new C02762(null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.data.impl.NotificationRepository$markAsDismissedForGroup$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.notifications.internal.data.impl.NotificationRepository$markAsDismissedForGroup$2", f = "NotificationRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02752 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $group;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02752(String str, Continuation<? super C02752> continuation) {
            super(2, continuation);
            this.$group = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return NotificationRepository.this.new C02752(this.$group, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02752) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            final NotificationManager notificationManager = NotificationHelper.INSTANCE.getNotificationManager(NotificationRepository.this._applicationService.getAppContext());
            String[] strArr = {OneSignalDbContract.NotificationTable.COLUMN_NAME_ANDROID_NOTIFICATION_ID};
            String[] strArr2 = {this.$group};
            IDatabase.DefaultImpls.query$default(NotificationRepository.this._databaseProvider.getOs(), OneSignalDbContract.NotificationTable.TABLE_NAME, strArr, "group_id = ? AND dismissed = 0 AND opened = 0", strArr2, null, null, null, null, new Function1<ICursor, Unit>() { // from class: com.onesignal.notifications.internal.data.impl.NotificationRepository.markAsDismissedForGroup.2.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ICursor iCursor) {
                    invoke2(iCursor);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ICursor it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    while (it.moveToNext()) {
                        int i = it.getInt(OneSignalDbContract.NotificationTable.COLUMN_NAME_ANDROID_NOTIFICATION_ID);
                        if (i != -1) {
                            notificationManager.cancel(i);
                        }
                    }
                }
            }, 240, null);
            ContentValues contentValues = new ContentValues();
            contentValues.put(OneSignalDbContract.NotificationTable.COLUMN_NAME_DISMISSED, Boxing.boxInt(1));
            NotificationRepository.this._databaseProvider.getOs().update(OneSignalDbContract.NotificationTable.TABLE_NAME, contentValues, "group_id = ? AND opened = 0 AND dismissed = 0", strArr2);
            NotificationRepository.this._badgeCountUpdater.update();
            return Unit.INSTANCE;
        }
    }

    @Override // com.onesignal.notifications.internal.data.INotificationRepository
    public Object markAsDismissedForGroup(String str, Continuation<? super Unit> continuation) throws Throwable {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new C02752(str, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.notifications.internal.data.INotificationRepository
    public Object markAsDismissed(int i, Continuation<? super Boolean> continuation) {
        C02731 c02731;
        Ref.BooleanRef booleanRef;
        if (continuation instanceof C02731) {
            c02731 = (C02731) continuation;
            if ((c02731.label & Integer.MIN_VALUE) != 0) {
                c02731.label -= Integer.MIN_VALUE;
            } else {
                c02731 = new C02731(continuation);
            }
        } else {
            c02731 = new C02731(continuation);
        }
        Object obj = c02731.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c02731.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
            CoroutineDispatcher io = Dispatchers.getIO();
            C02742 c02742 = new C02742(booleanRef2, this, i, null);
            c02731.L$0 = booleanRef2;
            c02731.label = 1;
            if (BuildersKt.withContext(io, c02742, c02731) == coroutine_suspended) {
                return coroutine_suspended;
            }
            booleanRef = booleanRef2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            booleanRef = (Ref.BooleanRef) c02731.L$0;
            ResultKt.throwOnFailure(obj);
        }
        return Boxing.boxBoolean(booleanRef.element);
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.data.impl.NotificationRepository$markAsDismissed$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.notifications.internal.data.impl.NotificationRepository$markAsDismissed$2", f = "NotificationRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02742 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $androidId;
        final /* synthetic */ Ref.BooleanRef $didDismiss;
        int label;
        final /* synthetic */ NotificationRepository this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02742(Ref.BooleanRef booleanRef, NotificationRepository notificationRepository, int i, Continuation<? super C02742> continuation) {
            super(2, continuation);
            this.$didDismiss = booleanRef;
            this.this$0 = notificationRepository;
            this.$androidId = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02742(this.$didDismiss, this.this$0, this.$androidId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02742) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.$didDismiss.element = this.this$0.internalMarkAsDismissed(this.$androidId);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean internalMarkAsDismissed(int androidId) {
        Context appContext = this._applicationService.getAppContext();
        String str = "android_notification_id = " + androidId + " AND opened = 0 AND dismissed = 0";
        ContentValues contentValues = new ContentValues();
        contentValues.put(OneSignalDbContract.NotificationTable.COLUMN_NAME_DISMISSED, (Integer) 1);
        boolean z = this._databaseProvider.getOs().update(OneSignalDbContract.NotificationTable.TABLE_NAME, contentValues, str, null) > 0;
        this._badgeCountUpdater.update();
        NotificationHelper.INSTANCE.getNotificationManager(appContext).cancel(androidId);
        return z;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.notifications.internal.data.INotificationRepository
    public Object doesNotificationExist(String str, Continuation<? super Boolean> continuation) {
        AnonymousClass1 anonymousClass1;
        Ref.BooleanRef booleanRef;
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
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            if (str == null || Intrinsics.areEqual("", str)) {
                return Boxing.boxBoolean(false);
            }
            Ref.BooleanRef booleanRef2 = new Ref.BooleanRef();
            CoroutineDispatcher io = Dispatchers.getIO();
            C02612 c02612 = new C02612(str, this, booleanRef2, null);
            anonymousClass1.L$0 = booleanRef2;
            anonymousClass1.label = 1;
            if (BuildersKt.withContext(io, c02612, anonymousClass1) == coroutine_suspended) {
                return coroutine_suspended;
            }
            booleanRef = booleanRef2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            booleanRef = (Ref.BooleanRef) anonymousClass1.L$0;
            ResultKt.throwOnFailure(obj);
        }
        return Boxing.boxBoolean(booleanRef.element);
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.data.impl.NotificationRepository$doesNotificationExist$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.notifications.internal.data.impl.NotificationRepository$doesNotificationExist$2", f = "NotificationRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02612 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $id;
        final /* synthetic */ Ref.BooleanRef $result;
        int label;
        final /* synthetic */ NotificationRepository this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02612(String str, NotificationRepository notificationRepository, Ref.BooleanRef booleanRef, Continuation<? super C02612> continuation) {
            super(2, continuation);
            this.$id = str;
            this.this$0 = notificationRepository;
            this.$result = booleanRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02612(this.$id, this.this$0, this.$result, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02612) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            String str = this.$id;
            Intrinsics.checkNotNull(str);
            IDatabase os = this.this$0._databaseProvider.getOs();
            final String str2 = this.$id;
            final Ref.BooleanRef booleanRef = this.$result;
            IDatabase.DefaultImpls.query$default(os, OneSignalDbContract.NotificationTable.TABLE_NAME, new String[]{"notification_id"}, "notification_id = ?", new String[]{str}, null, null, null, null, new Function1<ICursor, Unit>() { // from class: com.onesignal.notifications.internal.data.impl.NotificationRepository.doesNotificationExist.2.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ICursor iCursor) {
                    invoke2(iCursor);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ICursor it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    if (it.moveToFirst()) {
                        Logging.debug$default("Notification notValidOrDuplicated with id duplicated, duplicate FCM message received, skip processing of " + str2, null, 2, null);
                        booleanRef.element = true;
                    }
                }
            }, 240, null);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.data.impl.NotificationRepository$createSummaryNotification$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.notifications.internal.data.impl.NotificationRepository$createSummaryNotification$2", f = "NotificationRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02592 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $androidId;
        final /* synthetic */ String $groupId;
        int label;
        final /* synthetic */ NotificationRepository this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02592(int i, String str, NotificationRepository notificationRepository, Continuation<? super C02592> continuation) {
            super(2, continuation);
            this.$androidId = i;
            this.$groupId = str;
            this.this$0 = notificationRepository;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02592(this.$androidId, this.$groupId, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02592) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            ContentValues contentValues = new ContentValues();
            contentValues.put(OneSignalDbContract.NotificationTable.COLUMN_NAME_ANDROID_NOTIFICATION_ID, Boxing.boxInt(this.$androidId));
            contentValues.put(OneSignalDbContract.NotificationTable.COLUMN_NAME_GROUP_ID, this.$groupId);
            contentValues.put(OneSignalDbContract.NotificationTable.COLUMN_NAME_IS_SUMMARY, Boxing.boxInt(1));
            this.this$0._databaseProvider.getOs().insertOrThrow(OneSignalDbContract.NotificationTable.TABLE_NAME, null, contentValues);
            return Unit.INSTANCE;
        }
    }

    @Override // com.onesignal.notifications.internal.data.INotificationRepository
    public Object createSummaryNotification(int i, String str, Continuation<? super Unit> continuation) throws Throwable {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new C02592(i, str, this, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.data.impl.NotificationRepository$createNotification$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.notifications.internal.data.impl.NotificationRepository$createNotification$2", f = "NotificationRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02582 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $androidId;
        final /* synthetic */ String $body;
        final /* synthetic */ String $collapseKey;
        final /* synthetic */ long $expireTime;
        final /* synthetic */ String $groupId;
        final /* synthetic */ String $id;
        final /* synthetic */ boolean $isOpened;
        final /* synthetic */ String $jsonPayload;
        final /* synthetic */ boolean $shouldDismissIdenticals;
        final /* synthetic */ String $title;
        int label;
        final /* synthetic */ NotificationRepository this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02582(String str, boolean z, int i, NotificationRepository notificationRepository, String str2, String str3, boolean z2, String str4, String str5, long j, String str6, Continuation<? super C02582> continuation) {
            super(2, continuation);
            this.$id = str;
            this.$shouldDismissIdenticals = z;
            this.$androidId = i;
            this.this$0 = notificationRepository;
            this.$groupId = str2;
            this.$collapseKey = str3;
            this.$isOpened = z2;
            this.$title = str4;
            this.$body = str5;
            this.$expireTime = j;
            this.$jsonPayload = str6;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02582(this.$id, this.$shouldDismissIdenticals, this.$androidId, this.this$0, this.$groupId, this.$collapseKey, this.$isOpened, this.$title, this.$body, this.$expireTime, this.$jsonPayload, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02582) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            Logging.debug$default("Saving Notification id=" + this.$id, null, 2, null);
            try {
                int i = 1;
                if (this.$shouldDismissIdenticals) {
                    String str = "android_notification_id = " + this.$androidId;
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(OneSignalDbContract.NotificationTable.COLUMN_NAME_DISMISSED, Boxing.boxInt(1));
                    this.this$0._databaseProvider.getOs().update(OneSignalDbContract.NotificationTable.TABLE_NAME, contentValues, str, null);
                    this.this$0._badgeCountUpdater.update();
                }
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("notification_id", this.$id);
                String str2 = this.$groupId;
                if (str2 != null) {
                    contentValues2.put(OneSignalDbContract.NotificationTable.COLUMN_NAME_GROUP_ID, str2);
                }
                String str3 = this.$collapseKey;
                if (str3 != null) {
                    contentValues2.put(OneSignalDbContract.NotificationTable.COLUMN_NAME_COLLAPSE_ID, str3);
                }
                if (!this.$isOpened) {
                    i = 0;
                }
                contentValues2.put(OneSignalDbContract.NotificationTable.COLUMN_NAME_OPENED, Boxing.boxInt(i));
                if (!this.$isOpened) {
                    contentValues2.put(OneSignalDbContract.NotificationTable.COLUMN_NAME_ANDROID_NOTIFICATION_ID, Boxing.boxInt(this.$androidId));
                }
                String str4 = this.$title;
                if (str4 != null) {
                    contentValues2.put("title", str4);
                }
                String str5 = this.$body;
                if (str5 != null) {
                    contentValues2.put(OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE, str5);
                }
                contentValues2.put(OneSignalDbContract.NotificationTable.COLUMN_NAME_EXPIRE_TIME, Boxing.boxLong(this.$expireTime));
                contentValues2.put(OneSignalDbContract.NotificationTable.COLUMN_NAME_FULL_DATA, this.$jsonPayload);
                this.this$0._databaseProvider.getOs().insertOrThrow(OneSignalDbContract.NotificationTable.TABLE_NAME, null, contentValues2);
                Logging.debug$default("Notification saved values: " + contentValues2, null, 2, null);
                if (!this.$isOpened) {
                    this.this$0._badgeCountUpdater.update();
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.onesignal.notifications.internal.data.INotificationRepository
    public Object createNotification(String str, String str2, String str3, boolean z, boolean z2, int i, String str4, String str5, long j, String str6, Continuation<? super Unit> continuation) throws Throwable {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new C02582(str, z, i, this, str2, str3, z2, str4, str5, j, str6, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.data.impl.NotificationRepository$markAsConsumed$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.notifications.internal.data.impl.NotificationRepository$markAsConsumed$2", f = "NotificationRepository.kt", i = {0, 0}, l = {322}, m = "invokeSuspend", n = {"whereStr", "isGroupless"}, s = {"L$0", "Z$0"})
    static final class C02722 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $androidId;
        final /* synthetic */ boolean $clearGroupOnSummaryClick;
        final /* synthetic */ boolean $dismissed;
        final /* synthetic */ String $summaryGroup;
        Object L$0;
        boolean Z$0;
        int label;
        final /* synthetic */ NotificationRepository this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02722(String str, boolean z, boolean z2, NotificationRepository notificationRepository, int i, Continuation<? super C02722> continuation) {
            super(2, continuation);
            this.$summaryGroup = str;
            this.$dismissed = z;
            this.$clearGroupOnSummaryClick = z2;
            this.this$0 = notificationRepository;
            this.$androidId = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02722(this.$summaryGroup, this.$dismissed, this.$clearGroupOnSummaryClick, this.this$0, this.$androidId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02722) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:30:0x009a  */
        /* JADX WARN: Code duplicated, block: B:31:0x00a4  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            String[] strArr;
            String str;
            boolean z;
            String str2;
            ContentValues contentValues;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                strArr = null;
                String str3 = this.$summaryGroup;
                if (str3 != null) {
                    boolean zAreEqual = Intrinsics.areEqual(str3, NotificationHelper.GROUPLESS_SUMMARY_KEY);
                    if (zAreEqual) {
                        str = "group_id IS NULL";
                    } else {
                        strArr = new String[]{this.$summaryGroup};
                        str = "group_id = ?";
                    }
                    if (!this.$dismissed && !this.$clearGroupOnSummaryClick) {
                        this.L$0 = str;
                        this.Z$0 = zAreEqual;
                        this.label = 1;
                        obj = this.this$0.getAndroidIdForGroup(this.$summaryGroup, false, this);
                        if (obj == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        z = zAreEqual;
                        str2 = str;
                    }
                } else {
                    str = "android_notification_id = " + this.$androidId;
                }
                contentValues = new ContentValues();
                if (this.$dismissed) {
                    contentValues.put(OneSignalDbContract.NotificationTable.COLUMN_NAME_DISMISSED, Boxing.boxInt(1));
                } else {
                    contentValues.put(OneSignalDbContract.NotificationTable.COLUMN_NAME_OPENED, Boxing.boxInt(1));
                }
                this.this$0._databaseProvider.getOs().update(OneSignalDbContract.NotificationTable.TABLE_NAME, contentValues, str, strArr);
                this.this$0._badgeCountUpdater.update();
                return Unit.INSTANCE;
            }
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            z = this.Z$0;
            str2 = (String) this.L$0;
            ResultKt.throwOnFailure(obj);
            String strValueOf = String.valueOf(obj);
            str = str2 + " AND android_notification_id = ?";
            strArr = z ? new String[]{strValueOf} : new String[]{this.$summaryGroup, strValueOf};
            contentValues = new ContentValues();
            if (this.$dismissed) {
                contentValues.put(OneSignalDbContract.NotificationTable.COLUMN_NAME_DISMISSED, Boxing.boxInt(1));
            } else {
                contentValues.put(OneSignalDbContract.NotificationTable.COLUMN_NAME_OPENED, Boxing.boxInt(1));
            }
            this.this$0._databaseProvider.getOs().update(OneSignalDbContract.NotificationTable.TABLE_NAME, contentValues, str, strArr);
            this.this$0._badgeCountUpdater.update();
            return Unit.INSTANCE;
        }
    }

    @Override // com.onesignal.notifications.internal.data.INotificationRepository
    public Object markAsConsumed(int i, boolean z, String str, boolean z2, Continuation<? super Unit> continuation) throws Throwable {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new C02722(str, z, z2, this, i, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.notifications.internal.data.INotificationRepository
    public Object getGroupId(int i, Continuation<? super String> continuation) {
        C02661 c02661;
        Ref.ObjectRef objectRef;
        if (continuation instanceof C02661) {
            c02661 = (C02661) continuation;
            if ((c02661.label & Integer.MIN_VALUE) != 0) {
                c02661.label -= Integer.MIN_VALUE;
            } else {
                c02661 = new C02661(continuation);
            }
        } else {
            c02661 = new C02661(continuation);
        }
        Object obj = c02661.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c02661.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            CoroutineDispatcher io = Dispatchers.getIO();
            C02672 c02672 = new C02672(i, objectRef2, null);
            c02661.L$0 = objectRef2;
            c02661.label = 1;
            if (BuildersKt.withContext(io, c02672, c02661) == coroutine_suspended) {
                return coroutine_suspended;
            }
            objectRef = objectRef2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef = (Ref.ObjectRef) c02661.L$0;
            ResultKt.throwOnFailure(obj);
        }
        return objectRef.element;
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.data.impl.NotificationRepository$getGroupId$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.notifications.internal.data.impl.NotificationRepository$getGroupId$2", f = "NotificationRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02672 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $androidId;
        final /* synthetic */ Ref.ObjectRef<String> $groupId;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02672(int i, Ref.ObjectRef<String> objectRef, Continuation<? super C02672> continuation) {
            super(2, continuation);
            this.$androidId = i;
            this.$groupId = objectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return NotificationRepository.this.new C02672(this.$androidId, this.$groupId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02672) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            IDatabase os = NotificationRepository.this._databaseProvider.getOs();
            String[] strArr = {OneSignalDbContract.NotificationTable.COLUMN_NAME_GROUP_ID};
            String str = "android_notification_id = " + this.$androidId;
            final Ref.ObjectRef<String> objectRef = this.$groupId;
            IDatabase.DefaultImpls.query$default(os, OneSignalDbContract.NotificationTable.TABLE_NAME, strArr, str, null, null, null, null, null, new Function1<ICursor, Unit>() { // from class: com.onesignal.notifications.internal.data.impl.NotificationRepository.getGroupId.2.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ICursor iCursor) {
                    invoke2(iCursor);
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Type inference failed for: r3v1, types: [T, java.lang.String] */
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ICursor it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    if (it.moveToFirst()) {
                        objectRef.element = it.getOptString(OneSignalDbContract.NotificationTable.COLUMN_NAME_GROUP_ID);
                    }
                }
            }, 248, null);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.notifications.internal.data.INotificationRepository
    public Object getAndroidIdFromCollapseKey(String str, Continuation<? super Integer> continuation) {
        C02641 c02641;
        Ref.ObjectRef objectRef;
        if (continuation instanceof C02641) {
            c02641 = (C02641) continuation;
            if ((c02641.label & Integer.MIN_VALUE) != 0) {
                c02641.label -= Integer.MIN_VALUE;
            } else {
                c02641 = new C02641(continuation);
            }
        } else {
            c02641 = new C02641(continuation);
        }
        Object obj = c02641.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02641.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            CoroutineDispatcher io = Dispatchers.getIO();
            C02652 c02652 = new C02652(str, objectRef2, null);
            c02641.L$0 = objectRef2;
            c02641.label = 1;
            if (BuildersKt.withContext(io, c02652, c02641) == coroutine_suspended) {
                return coroutine_suspended;
            }
            objectRef = objectRef2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef = (Ref.ObjectRef) c02641.L$0;
            ResultKt.throwOnFailure(obj);
        }
        return objectRef.element;
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.data.impl.NotificationRepository$getAndroidIdFromCollapseKey$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.notifications.internal.data.impl.NotificationRepository$getAndroidIdFromCollapseKey$2", f = "NotificationRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02652 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.ObjectRef<Integer> $androidId;
        final /* synthetic */ String $collapseKey;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02652(String str, Ref.ObjectRef<Integer> objectRef, Continuation<? super C02652> continuation) {
            super(2, continuation);
            this.$collapseKey = str;
            this.$androidId = objectRef;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return NotificationRepository.this.new C02652(this.$collapseKey, this.$androidId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02652) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            IDatabase os = NotificationRepository.this._databaseProvider.getOs();
            String[] strArr = {OneSignalDbContract.NotificationTable.COLUMN_NAME_ANDROID_NOTIFICATION_ID};
            String[] strArr2 = {this.$collapseKey};
            final Ref.ObjectRef<Integer> objectRef = this.$androidId;
            IDatabase.DefaultImpls.query$default(os, OneSignalDbContract.NotificationTable.TABLE_NAME, strArr, "collapse_id = ? AND dismissed = 0 AND opened = 0 ", strArr2, null, null, null, null, new Function1<ICursor, Unit>() { // from class: com.onesignal.notifications.internal.data.impl.NotificationRepository.getAndroidIdFromCollapseKey.2.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ICursor iCursor) {
                    invoke2(iCursor);
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Type inference failed for: r3v2, types: [T, java.lang.Integer] */
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ICursor it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    if (it.moveToFirst()) {
                        objectRef.element = Integer.valueOf(it.getInt(OneSignalDbContract.NotificationTable.COLUMN_NAME_ANDROID_NOTIFICATION_ID));
                    }
                }
            }, 240, null);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.data.impl.NotificationRepository$clearOldestOverLimitFallback$2, reason: invalid class name */
    /* JADX INFO: compiled from: NotificationRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.notifications.internal.data.impl.NotificationRepository$clearOldestOverLimitFallback$2", f = "NotificationRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $maxNumberOfNotificationsInt;
        final /* synthetic */ int $notificationsToMakeRoomFor;
        int label;
        final /* synthetic */ NotificationRepository this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(int i, NotificationRepository notificationRepository, int i2, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$maxNumberOfNotificationsInt = i;
            this.this$0 = notificationRepository;
            this.$notificationsToMakeRoomFor = i2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$maxNumberOfNotificationsInt, this.this$0, this.$notificationsToMakeRoomFor, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            String strValueOf = String.valueOf(this.$maxNumberOfNotificationsInt);
            try {
                IDatabase os = this.this$0._databaseProvider.getOs();
                String[] strArr = {OneSignalDbContract.NotificationTable.COLUMN_NAME_ANDROID_NOTIFICATION_ID};
                String string = this.this$0._queryHelper.recentUninteractedWithNotificationsWhere().toString();
                String str = strValueOf + this.$notificationsToMakeRoomFor;
                final int i = this.$maxNumberOfNotificationsInt;
                final int i2 = this.$notificationsToMakeRoomFor;
                final NotificationRepository notificationRepository = this.this$0;
                IDatabase.DefaultImpls.query$default(os, OneSignalDbContract.NotificationTable.TABLE_NAME, strArr, string, null, null, null, "_id", str, new Function1<ICursor, Unit>() { // from class: com.onesignal.notifications.internal.data.impl.NotificationRepository.clearOldestOverLimitFallback.2.1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(ICursor iCursor) {
                        invoke2(iCursor);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(ICursor it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        int count = (it.getCount() - i) + i2;
                        if (count < 1) {
                            return;
                        }
                        while (it.moveToNext()) {
                            notificationRepository.internalMarkAsDismissed(it.getInt(OneSignalDbContract.NotificationTable.COLUMN_NAME_ANDROID_NOTIFICATION_ID));
                            count--;
                            if (count <= 0) {
                                return;
                            }
                        }
                    }
                }, 56, null);
            } catch (Throwable th) {
                Logging.error("Error clearing oldest notifications over limit! ", th);
            }
            return Unit.INSTANCE;
        }
    }

    @Override // com.onesignal.notifications.internal.data.INotificationRepository
    public Object clearOldestOverLimitFallback(int i, int i2, Continuation<? super Unit> continuation) throws Throwable {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getIO(), new AnonymousClass2(i2, this, i, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.notifications.internal.data.INotificationRepository
    public Object listNotificationsForGroup(String str, Continuation<? super List<INotificationRepository.NotificationData>> continuation) {
        C02681 c02681;
        if (continuation instanceof C02681) {
            c02681 = (C02681) continuation;
            if ((c02681.label & Integer.MIN_VALUE) != 0) {
                c02681.label -= Integer.MIN_VALUE;
            } else {
                c02681 = new C02681(continuation);
            }
        } else {
            c02681 = new C02681(continuation);
        }
        Object obj = c02681.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02681.label;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            List list = (List) c02681.L$0;
            ResultKt.throwOnFailure(obj);
            return list;
        }
        ResultKt.throwOnFailure(obj);
        ArrayList arrayList = new ArrayList();
        CoroutineDispatcher io = Dispatchers.getIO();
        C02692 c02692 = new C02692(str, this, arrayList, null);
        c02681.L$0 = arrayList;
        c02681.label = 1;
        return BuildersKt.withContext(io, c02692, c02681) == coroutine_suspended ? coroutine_suspended : arrayList;
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.data.impl.NotificationRepository$listNotificationsForGroup$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.notifications.internal.data.impl.NotificationRepository$listNotificationsForGroup$2", f = "NotificationRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02692 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ List<INotificationRepository.NotificationData> $listOfNotifications;
        final /* synthetic */ String $summaryGroup;
        int label;
        final /* synthetic */ NotificationRepository this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02692(String str, NotificationRepository notificationRepository, List<INotificationRepository.NotificationData> list, Continuation<? super C02692> continuation) {
            super(2, continuation);
            this.$summaryGroup = str;
            this.this$0 = notificationRepository;
            this.$listOfNotifications = list;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C02692(this.$summaryGroup, this.this$0, this.$listOfNotifications, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02692) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            String[] strArr = {this.$summaryGroup};
            IDatabase os = this.this$0._databaseProvider.getOs();
            String[] columns_for_list_notifications = NotificationRepository.INSTANCE.getCOLUMNS_FOR_LIST_NOTIFICATIONS();
            final List<INotificationRepository.NotificationData> list = this.$listOfNotifications;
            final String str = this.$summaryGroup;
            IDatabase.DefaultImpls.query$default(os, OneSignalDbContract.NotificationTable.TABLE_NAME, columns_for_list_notifications, "group_id = ? AND dismissed = 0 AND opened = 0 AND is_summary = 0", strArr, null, null, "_id DESC", null, new Function1<ICursor, Unit>() { // from class: com.onesignal.notifications.internal.data.impl.NotificationRepository.listNotificationsForGroup.2.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ICursor iCursor) {
                    invoke2(iCursor);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ICursor it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    if (it.moveToFirst()) {
                        do {
                            try {
                                String optString = it.getOptString("title");
                                String optString2 = it.getOptString(OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE);
                                list.add(new INotificationRepository.NotificationData(it.getInt(OneSignalDbContract.NotificationTable.COLUMN_NAME_ANDROID_NOTIFICATION_ID), it.getString("notification_id"), it.getString(OneSignalDbContract.NotificationTable.COLUMN_NAME_FULL_DATA), it.getLong(OneSignalDbContract.NotificationTable.COLUMN_NAME_CREATED_TIME), optString, optString2));
                            } catch (JSONException unused) {
                                Logging.error$default("Could not parse JSON of sub notification in group: " + str, null, 2, null);
                            }
                        } while (it.moveToNext());
                    }
                }
            }, 176, null);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v3, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v3, types: [T, java.lang.String] */
    @Override // com.onesignal.notifications.internal.data.INotificationRepository
    public Object getAndroidIdForGroup(String str, boolean z, Continuation<? super Integer> continuation) {
        C02621 c02621;
        Ref.ObjectRef objectRef;
        if (continuation instanceof C02621) {
            c02621 = (C02621) continuation;
            if ((c02621.label & Integer.MIN_VALUE) != 0) {
                c02621.label -= Integer.MIN_VALUE;
            } else {
                c02621 = new C02621(continuation);
            }
        } else {
            c02621 = new C02621(continuation);
        }
        Object obj = c02621.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02621.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            boolean zAreEqual = Intrinsics.areEqual(str, NotificationHelper.GROUPLESS_SUMMARY_KEY);
            Ref.ObjectRef objectRef3 = new Ref.ObjectRef();
            objectRef3.element = zAreEqual ? "group_id IS NULL" : "group_id = ?";
            objectRef3.element = ((String) objectRef3.element) + " AND dismissed = 0 AND opened = 0 AND ";
            StringBuilder sb = new StringBuilder();
            sb.append((String) objectRef3.element);
            sb.append(z ? "is_summary = 1" : "is_summary = 0");
            objectRef3.element = sb.toString();
            String[] strArr = zAreEqual ? null : new String[]{str};
            CoroutineDispatcher io = Dispatchers.getIO();
            C02632 c02632 = new C02632(objectRef3, strArr, objectRef2, null);
            c02621.L$0 = objectRef2;
            c02621.label = 1;
            if (BuildersKt.withContext(io, c02632, c02621) == coroutine_suspended) {
                return coroutine_suspended;
            }
            objectRef = objectRef2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef = (Ref.ObjectRef) c02621.L$0;
            ResultKt.throwOnFailure(obj);
        }
        return objectRef.element;
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.data.impl.NotificationRepository$getAndroidIdForGroup$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.notifications.internal.data.impl.NotificationRepository$getAndroidIdForGroup$2", f = "NotificationRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02632 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.ObjectRef<Integer> $recentId;
        final /* synthetic */ String[] $whereArgs;
        final /* synthetic */ Ref.ObjectRef<String> $whereStr;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02632(Ref.ObjectRef<String> objectRef, String[] strArr, Ref.ObjectRef<Integer> objectRef2, Continuation<? super C02632> continuation) {
            super(2, continuation);
            this.$whereStr = objectRef;
            this.$whereArgs = strArr;
            this.$recentId = objectRef2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return NotificationRepository.this.new C02632(this.$whereStr, this.$whereArgs, this.$recentId, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02632) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            IDatabase os = NotificationRepository.this._databaseProvider.getOs();
            String[] strArr = {OneSignalDbContract.NotificationTable.COLUMN_NAME_ANDROID_NOTIFICATION_ID};
            String str = this.$whereStr.element;
            String[] strArr2 = this.$whereArgs;
            final Ref.ObjectRef<Integer> objectRef = this.$recentId;
            IDatabase.DefaultImpls.query$default(os, OneSignalDbContract.NotificationTable.TABLE_NAME, strArr, str, strArr2, null, null, "created_time DESC", "1", new Function1<ICursor, Unit>() { // from class: com.onesignal.notifications.internal.data.impl.NotificationRepository.getAndroidIdForGroup.2.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ICursor iCursor) {
                    invoke2(iCursor);
                    return Unit.INSTANCE;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ICursor it) {
                    T tValueOf;
                    Intrinsics.checkNotNullParameter(it, "it");
                    boolean zMoveToFirst = it.moveToFirst();
                    Ref.ObjectRef<Integer> objectRef2 = objectRef;
                    if (!zMoveToFirst) {
                        tValueOf = 0;
                    } else {
                        tValueOf = Integer.valueOf(it.getInt(OneSignalDbContract.NotificationTable.COLUMN_NAME_ANDROID_NOTIFICATION_ID));
                    }
                    objectRef2.element = tValueOf;
                }
            }, 48, null);
            return Unit.INSTANCE;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.notifications.internal.data.INotificationRepository
    public Object listNotificationsForOutstanding(List<Integer> list, Continuation<? super List<INotificationRepository.NotificationData>> continuation) {
        C02701 c02701;
        if (continuation instanceof C02701) {
            c02701 = (C02701) continuation;
            if ((c02701.label & Integer.MIN_VALUE) != 0) {
                c02701.label -= Integer.MIN_VALUE;
            } else {
                c02701 = new C02701(continuation);
            }
        } else {
            c02701 = new C02701(continuation);
        }
        Object obj = c02701.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02701.label;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            List list2 = (List) c02701.L$0;
            ResultKt.throwOnFailure(obj);
            return list2;
        }
        ResultKt.throwOnFailure(obj);
        ArrayList arrayList = new ArrayList();
        CoroutineDispatcher io = Dispatchers.getIO();
        C02712 c02712 = new C02712(list, arrayList, null);
        c02701.L$0 = arrayList;
        c02701.label = 1;
        return BuildersKt.withContext(io, c02712, c02701) == coroutine_suspended ? coroutine_suspended : arrayList;
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.data.impl.NotificationRepository$listNotificationsForOutstanding$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationRepository.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.notifications.internal.data.impl.NotificationRepository$listNotificationsForOutstanding$2", f = "NotificationRepository.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class C02712 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ List<Integer> $excludeAndroidIds;
        final /* synthetic */ List<INotificationRepository.NotificationData> $listOfNotifications;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C02712(List<Integer> list, List<INotificationRepository.NotificationData> list2, Continuation<? super C02712> continuation) {
            super(2, continuation);
            this.$excludeAndroidIds = list;
            this.$listOfNotifications = list2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return NotificationRepository.this.new C02712(this.$excludeAndroidIds, this.$listOfNotifications, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C02712) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            StringBuilder sbRecentUninteractedWithNotificationsWhere = NotificationRepository.this._queryHelper.recentUninteractedWithNotificationsWhere();
            if (this.$excludeAndroidIds != null) {
                sbRecentUninteractedWithNotificationsWhere.append(" AND android_notification_id NOT IN (");
                sbRecentUninteractedWithNotificationsWhere.append(TextUtils.join(",", this.$excludeAndroidIds));
                sbRecentUninteractedWithNotificationsWhere.append(")");
            }
            IDatabase os = NotificationRepository.this._databaseProvider.getOs();
            String[] columns_for_list_notifications = NotificationRepository.INSTANCE.getCOLUMNS_FOR_LIST_NOTIFICATIONS();
            String string = sbRecentUninteractedWithNotificationsWhere.toString();
            String strValueOf = String.valueOf(INotificationLimitManager.Constants.INSTANCE.getMaxNumberOfNotifications());
            final List<INotificationRepository.NotificationData> list = this.$listOfNotifications;
            IDatabase.DefaultImpls.query$default(os, OneSignalDbContract.NotificationTable.TABLE_NAME, columns_for_list_notifications, string, null, null, null, "_id DESC", strValueOf, new Function1<ICursor, Unit>() { // from class: com.onesignal.notifications.internal.data.impl.NotificationRepository.listNotificationsForOutstanding.2.1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(ICursor iCursor) {
                    invoke2(iCursor);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(ICursor it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    while (it.moveToNext()) {
                        String optString = it.getOptString("title");
                        String optString2 = it.getOptString(OneSignalDbContract.NotificationTable.COLUMN_NAME_MESSAGE);
                        String string2 = it.getString("notification_id");
                        list.add(new INotificationRepository.NotificationData(it.getInt(OneSignalDbContract.NotificationTable.COLUMN_NAME_ANDROID_NOTIFICATION_ID), string2, it.getString(OneSignalDbContract.NotificationTable.COLUMN_NAME_FULL_DATA), it.getLong(OneSignalDbContract.NotificationTable.COLUMN_NAME_CREATED_TIME), optString, optString2));
                    }
                }
            }, 56, null);
            return Unit.INSTANCE;
        }
    }

    /* JADX INFO: compiled from: NotificationRepository.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0019\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\n\n\u0002\u0010\b\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\t\u001a\u00020\nX\u0082T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcom/onesignal/notifications/internal/data/impl/NotificationRepository$Companion;", "", "()V", "COLUMNS_FOR_LIST_NOTIFICATIONS", "", "", "getCOLUMNS_FOR_LIST_NOTIFICATIONS", "()[Ljava/lang/String;", "[Ljava/lang/String;", "NOTIFICATION_CACHE_DATA_LIFETIME", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String[] getCOLUMNS_FOR_LIST_NOTIFICATIONS() {
            return NotificationRepository.COLUMNS_FOR_LIST_NOTIFICATIONS;
        }
    }
}
