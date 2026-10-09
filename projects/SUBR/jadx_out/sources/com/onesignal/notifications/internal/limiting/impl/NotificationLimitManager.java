package com.onesignal.notifications.internal.limiting.impl;

import android.os.Build;
import com.onesignal.core.internal.application.IApplicationService;
import com.onesignal.notifications.BuildConfig;
import com.onesignal.notifications.internal.data.INotificationRepository;
import com.onesignal.notifications.internal.limiting.INotificationLimitManager;
import com.onesignal.notifications.internal.summary.INotificationSummaryManager;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: NotificationLimitManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0019\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\rJ\u0019\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0083@ø\u0001\u0000¢\u0006\u0002\u0010\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000f"}, d2 = {"Lcom/onesignal/notifications/internal/limiting/impl/NotificationLimitManager;", "Lcom/onesignal/notifications/internal/limiting/INotificationLimitManager;", "_dataController", "Lcom/onesignal/notifications/internal/data/INotificationRepository;", "_applicationService", "Lcom/onesignal/core/internal/application/IApplicationService;", "_notificationSummaryManager", "Lcom/onesignal/notifications/internal/summary/INotificationSummaryManager;", "(Lcom/onesignal/notifications/internal/data/INotificationRepository;Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/notifications/internal/summary/INotificationSummaryManager;)V", "clearOldestOverLimit", "", "notificationsToMakeRoomFor", "", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "clearOldestOverLimitStandard", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class NotificationLimitManager implements INotificationLimitManager {
    private final IApplicationService _applicationService;
    private final INotificationRepository _dataController;
    private final INotificationSummaryManager _notificationSummaryManager;

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.limiting.impl.NotificationLimitManager$clearOldestOverLimit$1, reason: invalid class name */
    /* JADX INFO: compiled from: NotificationLimitManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.limiting.impl.NotificationLimitManager", f = "NotificationLimitManager.kt", i = {0, 0, 1, 1}, l = {21, 23, 30}, m = "clearOldestOverLimit", n = {"this", "notificationsToMakeRoomFor", "this", "notificationsToMakeRoomFor"}, s = {"L$0", "I$0", "L$0", "I$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        int I$0;
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
            return NotificationLimitManager.this.clearOldestOverLimit(0, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.limiting.impl.NotificationLimitManager$clearOldestOverLimitStandard$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationLimitManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.limiting.impl.NotificationLimitManager", f = "NotificationLimitManager.kt", i = {0, 0, 0, 1, 1}, l = {57, 60}, m = "clearOldestOverLimitStandard", n = {"this", "value", "notificationsToClear", "this", "notificationsToClear"}, s = {"L$0", "L$2", "I$0", "L$0", "I$0"})
    static final class C02911 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C02911(Continuation<? super C02911> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return NotificationLimitManager.this.clearOldestOverLimitStandard(0, this);
        }
    }

    public NotificationLimitManager(INotificationRepository _dataController, IApplicationService _applicationService, INotificationSummaryManager _notificationSummaryManager) {
        Intrinsics.checkNotNullParameter(_dataController, "_dataController");
        Intrinsics.checkNotNullParameter(_applicationService, "_applicationService");
        Intrinsics.checkNotNullParameter(_notificationSummaryManager, "_notificationSummaryManager");
        this._dataController = _dataController;
        this._applicationService = _applicationService;
        this._notificationSummaryManager = _notificationSummaryManager;
    }

    /* JADX WARN: Code duplicated, block: B:33:0x008b A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.onesignal.notifications.internal.limiting.INotificationLimitManager
    public Object clearOldestOverLimit(int i, Continuation<? super Unit> continuation) {
        AnonymousClass1 anonymousClass1;
        NotificationLimitManager notificationLimitManager;
        Object objClearOldestOverLimitFallback;
        Object objClearOldestOverLimitStandard;
        int i2;
        INotificationRepository iNotificationRepository;
        int maxNumberOfNotifications;
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
            try {
                if (Build.VERSION.SDK_INT >= 23) {
                    anonymousClass1.L$0 = this;
                    anonymousClass1.I$0 = i;
                    anonymousClass1.label = 1;
                    objClearOldestOverLimitStandard = clearOldestOverLimitStandard(i, anonymousClass1);
                    if (objClearOldestOverLimitStandard == coroutine_suspended) {
                        i = objClearOldestOverLimitStandard;
                        return coroutine_suspended;
                    }
                } else {
                    INotificationRepository iNotificationRepository2 = this._dataController;
                    int maxNumberOfNotifications2 = INotificationLimitManager.Constants.INSTANCE.getMaxNumberOfNotifications();
                    anonymousClass1.L$0 = this;
                    anonymousClass1.I$0 = i;
                    anonymousClass1.label = 2;
                    objClearOldestOverLimitFallback = iNotificationRepository2.clearOldestOverLimitFallback(i, maxNumberOfNotifications2, anonymousClass1);
                    if (objClearOldestOverLimitFallback == coroutine_suspended) {
                        i = objClearOldestOverLimitFallback;
                        return coroutine_suspended;
                    }
                }
                i = objClearOldestOverLimitFallback;
                i = objClearOldestOverLimitStandard;
            } catch (Throwable unused) {
                notificationLimitManager = this;
                i2 = i;
                iNotificationRepository = notificationLimitManager._dataController;
                maxNumberOfNotifications = INotificationLimitManager.Constants.INSTANCE.getMaxNumberOfNotifications();
                anonymousClass1.L$0 = null;
                anonymousClass1.label = 3;
                if (iNotificationRepository.clearOldestOverLimitFallback(i2, maxNumberOfNotifications, anonymousClass1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        } else {
            if (i4 == 1) {
                int i5 = anonymousClass1.I$0;
                notificationLimitManager = (NotificationLimitManager) anonymousClass1.L$0;
                i3 = i5;
            } else if (i4 == 2) {
                int i6 = anonymousClass1.I$0;
                notificationLimitManager = (NotificationLimitManager) anonymousClass1.L$0;
                i3 = i6;
            } else {
                if (i4 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            try {
                ResultKt.throwOnFailure(obj);
            } catch (Throwable unused2) {
                i2 = i3;
                iNotificationRepository = notificationLimitManager._dataController;
                maxNumberOfNotifications = INotificationLimitManager.Constants.INSTANCE.getMaxNumberOfNotifications();
                anonymousClass1.L$0 = null;
                anonymousClass1.label = 3;
                if (iNotificationRepository.clearOldestOverLimitFallback(i2, maxNumberOfNotifications, anonymousClass1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:27:0x00b2 A[PHI: r1 r4 r8
  0x00b2: PHI (r1v14 java.util.Iterator) = (r1v5 java.util.Iterator), (r1v16 java.util.Iterator) binds: [B:26:0x00a7, B:42:0x010f] A[DONT_GENERATE, DONT_INLINE]
  0x00b2: PHI (r4v7 int) = (r4v5 int), (r4v9 int) binds: [B:26:0x00a7, B:42:0x010f] A[DONT_GENERATE, DONT_INLINE]
  0x00b2: PHI (r8v10 com.onesignal.notifications.internal.limiting.impl.NotificationLimitManager) = 
  (r8v5 com.onesignal.notifications.internal.limiting.impl.NotificationLimitManager)
  (r8v12 com.onesignal.notifications.internal.limiting.impl.NotificationLimitManager)
 binds: [B:26:0x00a7, B:42:0x010f] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:29:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:31:0x00dd A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:32:0x00de  */
    /* JADX WARN: Code duplicated, block: B:35:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:37:0x0105 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:38:0x0106  */
    /* JADX WARN: Code duplicated, block: B:40:0x010b  */
    /* JADX WARN: Code duplicated, block: B:7:0x0018  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0106 -> B:39:0x0108). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x010b -> B:41:0x010d). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object clearOldestOverLimitStandard(int r17, kotlin.coroutines.Continuation<? super kotlin.Unit> r18) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onesignal.notifications.internal.limiting.impl.NotificationLimitManager.clearOldestOverLimitStandard(int, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
