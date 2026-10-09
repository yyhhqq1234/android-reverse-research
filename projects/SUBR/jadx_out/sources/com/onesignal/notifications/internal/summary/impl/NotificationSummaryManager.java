package com.onesignal.notifications.internal.summary.impl;

import android.app.NotificationManager;
import com.onesignal.core.internal.application.IApplicationService;
import com.onesignal.core.internal.config.ConfigModelStore;
import com.onesignal.core.internal.database.impl.OneSignalDbContract;
import com.onesignal.core.internal.time.ITime;
import com.onesignal.notifications.BuildConfig;
import com.onesignal.notifications.internal.common.NotificationConstants;
import com.onesignal.notifications.internal.common.NotificationGenerationJob;
import com.onesignal.notifications.internal.common.NotificationHelper;
import com.onesignal.notifications.internal.data.INotificationRepository;
import com.onesignal.notifications.internal.display.ISummaryNotificationDisplayer;
import com.onesignal.notifications.internal.restoration.INotificationRestoreProcessor;
import com.onesignal.notifications.internal.summary.INotificationSummaryManager;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.j5;

/* JADX INFO: compiled from: NotificationSummaryManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0013J!\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0017J\u0019\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0013J\u0019\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u001bH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u001cJ!\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u0016H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0017R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001e"}, d2 = {"Lcom/onesignal/notifications/internal/summary/impl/NotificationSummaryManager;", "Lcom/onesignal/notifications/internal/summary/INotificationSummaryManager;", "_applicationService", "Lcom/onesignal/core/internal/application/IApplicationService;", "_dataController", "Lcom/onesignal/notifications/internal/data/INotificationRepository;", "_summaryNotificationDisplayer", "Lcom/onesignal/notifications/internal/display/ISummaryNotificationDisplayer;", "_configModelStore", "Lcom/onesignal/core/internal/config/ConfigModelStore;", "_notificationRestoreProcessor", "Lcom/onesignal/notifications/internal/restoration/INotificationRestoreProcessor;", "_time", "Lcom/onesignal/core/internal/time/ITime;", "(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/notifications/internal/data/INotificationRepository;Lcom/onesignal/notifications/internal/display/ISummaryNotificationDisplayer;Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/notifications/internal/restoration/INotificationRestoreProcessor;Lcom/onesignal/core/internal/time/ITime;)V", "clearNotificationOnSummaryClick", "", "group", "", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "internalUpdateSummaryNotificationAfterChildRemoved", OneSignalDbContract.NotificationTable.COLUMN_NAME_DISMISSED, "", "(Ljava/lang/String;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "restoreSummary", "updatePossibleDependentSummaryOnDismiss", NotificationConstants.BUNDLE_KEY_ANDROID_NOTIFICATION_ID, "", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "updateSummaryNotificationAfterChildRemoved", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class NotificationSummaryManager implements INotificationSummaryManager {
    private final IApplicationService _applicationService;
    private final ConfigModelStore _configModelStore;
    private final INotificationRepository _dataController;
    private final INotificationRestoreProcessor _notificationRestoreProcessor;
    private final ISummaryNotificationDisplayer _summaryNotificationDisplayer;
    private final ITime _time;

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.summary.impl.NotificationSummaryManager$clearNotificationOnSummaryClick$1, reason: invalid class name */
    /* JADX INFO: compiled from: NotificationSummaryManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.summary.impl.NotificationSummaryManager", f = "NotificationSummaryManager.kt", i = {0, 0, 0, 1}, l = {99, 109, 118}, m = "clearNotificationOnSummaryClick", n = {"this", "group", "notificationManager", "notificationManager"}, s = {"L$0", "L$1", "L$2", "L$0"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return NotificationSummaryManager.this.clearNotificationOnSummaryClick(null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.summary.impl.NotificationSummaryManager$internalUpdateSummaryNotificationAfterChildRemoved$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationSummaryManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.summary.impl.NotificationSummaryManager", f = "NotificationSummaryManager.kt", i = {0, 0, 0, 1, 1, 1, 1, 1}, l = {44, 48, 59, 67, 81}, m = "internalUpdateSummaryNotificationAfterChildRemoved", n = {"this", "group", OneSignalDbContract.NotificationTable.COLUMN_NAME_DISMISSED, "this", "group", j5.x, OneSignalDbContract.NotificationTable.COLUMN_NAME_DISMISSED, "notificationsInGroup"}, s = {"L$0", "L$1", "Z$0", "L$0", "L$1", "L$2", "Z$0", "I$0"})
    static final class C03031 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        Object L$2;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C03031(Continuation<? super C03031> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return NotificationSummaryManager.this.internalUpdateSummaryNotificationAfterChildRemoved(null, false, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.summary.impl.NotificationSummaryManager$restoreSummary$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationSummaryManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.summary.impl.NotificationSummaryManager", f = "NotificationSummaryManager.kt", i = {0, 1}, l = {88, 90}, m = "restoreSummary", n = {"this", "this"}, s = {"L$0", "L$0"})
    static final class C03041 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C03041(Continuation<? super C03041> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return NotificationSummaryManager.this.restoreSummary(null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.summary.impl.NotificationSummaryManager$updatePossibleDependentSummaryOnDismiss$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationSummaryManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.summary.impl.NotificationSummaryManager", f = "NotificationSummaryManager.kt", i = {0}, l = {25, 28}, m = "updatePossibleDependentSummaryOnDismiss", n = {"this"}, s = {"L$0"})
    static final class C03051 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C03051(Continuation<? super C03051> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return NotificationSummaryManager.this.updatePossibleDependentSummaryOnDismiss(0, this);
        }
    }

    public NotificationSummaryManager(IApplicationService _applicationService, INotificationRepository _dataController, ISummaryNotificationDisplayer _summaryNotificationDisplayer, ConfigModelStore _configModelStore, INotificationRestoreProcessor _notificationRestoreProcessor, ITime _time) {
        Intrinsics.checkNotNullParameter(_applicationService, "_applicationService");
        Intrinsics.checkNotNullParameter(_dataController, "_dataController");
        Intrinsics.checkNotNullParameter(_summaryNotificationDisplayer, "_summaryNotificationDisplayer");
        Intrinsics.checkNotNullParameter(_configModelStore, "_configModelStore");
        Intrinsics.checkNotNullParameter(_notificationRestoreProcessor, "_notificationRestoreProcessor");
        Intrinsics.checkNotNullParameter(_time, "_time");
        this._applicationService = _applicationService;
        this._dataController = _dataController;
        this._summaryNotificationDisplayer = _summaryNotificationDisplayer;
        this._configModelStore = _configModelStore;
        this._notificationRestoreProcessor = _notificationRestoreProcessor;
        this._time = _time;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.notifications.internal.summary.INotificationSummaryManager
    public Object updatePossibleDependentSummaryOnDismiss(int i, Continuation<? super Unit> continuation) {
        C03051 c03051;
        NotificationSummaryManager notificationSummaryManager;
        if (continuation instanceof C03051) {
            c03051 = (C03051) continuation;
            if ((c03051.label & Integer.MIN_VALUE) != 0) {
                c03051.label -= Integer.MIN_VALUE;
            } else {
                c03051 = new C03051(continuation);
            }
        } else {
            c03051 = new C03051(continuation);
        }
        Object groupId = c03051.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c03051.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(groupId);
            INotificationRepository iNotificationRepository = this._dataController;
            c03051.L$0 = this;
            c03051.label = 1;
            groupId = iNotificationRepository.getGroupId(i, c03051);
            if (groupId == coroutine_suspended) {
                return coroutine_suspended;
            }
            notificationSummaryManager = this;
        } else {
            if (i2 == 1) {
                notificationSummaryManager = (NotificationSummaryManager) c03051.L$0;
                ResultKt.throwOnFailure(groupId);
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(groupId);
            }
            return Unit.INSTANCE;
        }
        String str = (String) groupId;
        if (str == null) {
            return Unit.INSTANCE;
        }
        c03051.L$0 = null;
        c03051.label = 2;
        if (notificationSummaryManager.internalUpdateSummaryNotificationAfterChildRemoved(str, true, c03051) == coroutine_suspended) {
            return coroutine_suspended;
        }
        return Unit.INSTANCE;
    }

    @Override // com.onesignal.notifications.internal.summary.INotificationSummaryManager
    public Object updateSummaryNotificationAfterChildRemoved(String str, boolean z, Continuation<? super Unit> continuation) {
        Object objInternalUpdateSummaryNotificationAfterChildRemoved = internalUpdateSummaryNotificationAfterChildRemoved(str, z, continuation);
        return objInternalUpdateSummaryNotificationAfterChildRemoved == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInternalUpdateSummaryNotificationAfterChildRemoved : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:35:0x00ac  */
    /* JADX WARN: Code duplicated, block: B:37:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:39:0x00da A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:42:0x00de A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:43:0x00e0  */
    /* JADX WARN: Code duplicated, block: B:45:0x00ee A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:48:0x00f2 A[Catch: JSONException -> 0x0038, TRY_ENTER, TRY_LEAVE, TryCatch #0 {JSONException -> 0x0038, blocks: (B:15:0x0033, B:48:0x00f2), top: B:57:0x0027 }] */
    /* JADX WARN: Code duplicated, block: B:50:0x0126 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:54:0x012d  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object internalUpdateSummaryNotificationAfterChildRemoved(String str, boolean z, Continuation<? super Unit> continuation) {
        C03031 c03031;
        NotificationSummaryManager notificationSummaryManager;
        List list;
        String str2;
        int i;
        Integer num;
        int iIntValue;
        NotificationGenerationJob notificationGenerationJob;
        ISummaryNotificationDisplayer iSummaryNotificationDisplayer;
        INotificationRepository iNotificationRepository;
        if (continuation instanceof C03031) {
            c03031 = (C03031) continuation;
            if ((c03031.label & Integer.MIN_VALUE) != 0) {
                c03031.label -= Integer.MIN_VALUE;
            } else {
                c03031 = new C03031(continuation);
            }
        } else {
            c03031 = new C03031(continuation);
        }
        C03031 c03032 = c03031;
        Object objListNotificationsForGroup = c03032.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = c03032.label;
        try {
            if (i2 == 0) {
                ResultKt.throwOnFailure(objListNotificationsForGroup);
                INotificationRepository iNotificationRepository2 = this._dataController;
                c03032.L$0 = this;
                c03032.L$1 = str;
                c03032.Z$0 = z;
                c03032.label = 1;
                objListNotificationsForGroup = iNotificationRepository2.listNotificationsForGroup(str, c03032);
                if (objListNotificationsForGroup == coroutine_suspended) {
                    return coroutine_suspended;
                }
                notificationSummaryManager = this;
            } else {
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 == 3) {
                            ResultKt.throwOnFailure(objListNotificationsForGroup);
                            return Unit.INSTANCE;
                        }
                        if (i2 == 4) {
                            ResultKt.throwOnFailure(objListNotificationsForGroup);
                            return Unit.INSTANCE;
                        }
                        if (i2 == 5) {
                            ResultKt.throwOnFailure(objListNotificationsForGroup);
                            return Unit.INSTANCE;
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    i = c03032.I$0;
                    z = c03032.Z$0;
                    list = (List) c03032.L$2;
                    str2 = (String) c03032.L$1;
                    notificationSummaryManager = (NotificationSummaryManager) c03032.L$0;
                    ResultKt.throwOnFailure(objListNotificationsForGroup);
                    num = (Integer) objListNotificationsForGroup;
                    if (num != null) {
                        return Unit.INSTANCE;
                    }
                    iIntValue = num.intValue();
                    if (i == 0) {
                        NotificationHelper.INSTANCE.getNotificationManager(notificationSummaryManager._applicationService.getAppContext()).cancel(iIntValue);
                        iNotificationRepository = notificationSummaryManager._dataController;
                        c03032.L$0 = null;
                        c03032.L$1 = null;
                        c03032.L$2 = null;
                        c03032.label = 3;
                        if (INotificationRepository.DefaultImpls.markAsConsumed$default(iNotificationRepository, iIntValue, z, null, false, c03032, 12, null) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        return Unit.INSTANCE;
                    }
                    if (i == 1) {
                        c03032.L$0 = null;
                        c03032.L$1 = null;
                        c03032.L$2 = null;
                        c03032.label = 4;
                        if (notificationSummaryManager.restoreSummary(str2, c03032) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        return Unit.INSTANCE;
                    }
                    INotificationRepository.NotificationData notificationData = (INotificationRepository.NotificationData) CollectionsKt.first(list);
                    notificationGenerationJob = new NotificationGenerationJob(new JSONObject(notificationData.getFullData()), notificationSummaryManager._time);
                    notificationGenerationJob.setRestoring(true);
                    notificationGenerationJob.setShownTimeStamp(Boxing.boxLong(notificationData.getCreatedAt()));
                    iSummaryNotificationDisplayer = notificationSummaryManager._summaryNotificationDisplayer;
                    c03032.L$0 = null;
                    c03032.L$1 = null;
                    c03032.L$2 = null;
                    c03032.label = 5;
                    if (iSummaryNotificationDisplayer.updateSummaryNotification(notificationGenerationJob, c03032) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    return Unit.INSTANCE;
                }
                z = c03032.Z$0;
                str = (String) c03032.L$1;
                NotificationSummaryManager notificationSummaryManager2 = (NotificationSummaryManager) c03032.L$0;
                ResultKt.throwOnFailure(objListNotificationsForGroup);
                notificationSummaryManager = notificationSummaryManager2;
            }
            list = (List) objListNotificationsForGroup;
            int size = list.size();
            INotificationRepository iNotificationRepository3 = notificationSummaryManager._dataController;
            c03032.L$0 = notificationSummaryManager;
            c03032.L$1 = str;
            c03032.L$2 = list;
            c03032.Z$0 = z;
            c03032.I$0 = size;
            c03032.label = 2;
            Object androidIdForGroup = iNotificationRepository3.getAndroidIdForGroup(str, true, c03032);
            if (androidIdForGroup == coroutine_suspended) {
                return coroutine_suspended;
            }
            str2 = str;
            i = size;
            objListNotificationsForGroup = androidIdForGroup;
            num = (Integer) objListNotificationsForGroup;
            if (num != null) {
                return Unit.INSTANCE;
            }
            iIntValue = num.intValue();
            if (i == 0) {
                NotificationHelper.INSTANCE.getNotificationManager(notificationSummaryManager._applicationService.getAppContext()).cancel(iIntValue);
                iNotificationRepository = notificationSummaryManager._dataController;
                c03032.L$0 = null;
                c03032.L$1 = null;
                c03032.L$2 = null;
                c03032.label = 3;
                if (INotificationRepository.DefaultImpls.markAsConsumed$default(iNotificationRepository, iIntValue, z, null, false, c03032, 12, null) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            }
            if (i == 1) {
                c03032.L$0 = null;
                c03032.L$1 = null;
                c03032.L$2 = null;
                c03032.label = 4;
                if (notificationSummaryManager.restoreSummary(str2, c03032) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            }
            INotificationRepository.NotificationData notificationData2 = (INotificationRepository.NotificationData) CollectionsKt.first(list);
            notificationGenerationJob = new NotificationGenerationJob(new JSONObject(notificationData2.getFullData()), notificationSummaryManager._time);
            notificationGenerationJob.setRestoring(true);
            notificationGenerationJob.setShownTimeStamp(Boxing.boxLong(notificationData2.getCreatedAt()));
            iSummaryNotificationDisplayer = notificationSummaryManager._summaryNotificationDisplayer;
            c03032.L$0 = null;
            c03032.L$1 = null;
            c03032.L$2 = null;
            c03032.label = 5;
            if (iSummaryNotificationDisplayer.updateSummaryNotification(notificationGenerationJob, c03032) == coroutine_suspended) {
                return coroutine_suspended;
            }
            return Unit.INSTANCE;
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:23:0x0064  */
    /* JADX WARN: Code duplicated, block: B:29:0x007d A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:31:? A[LOOP:0: B:21:0x005e->B:31:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object restoreSummary(String str, Continuation<? super Unit> continuation) {
        C03041 c03041;
        NotificationSummaryManager notificationSummaryManager;
        NotificationSummaryManager notificationSummaryManager2;
        Iterator it;
        INotificationRepository.NotificationData notificationData;
        INotificationRestoreProcessor iNotificationRestoreProcessor;
        if (continuation instanceof C03041) {
            c03041 = (C03041) continuation;
            if ((c03041.label & Integer.MIN_VALUE) != 0) {
                c03041.label -= Integer.MIN_VALUE;
            } else {
                c03041 = new C03041(continuation);
            }
        } else {
            c03041 = new C03041(continuation);
        }
        Object objListNotificationsForGroup = c03041.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c03041.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objListNotificationsForGroup);
            INotificationRepository iNotificationRepository = this._dataController;
            c03041.L$0 = this;
            c03041.label = 1;
            objListNotificationsForGroup = iNotificationRepository.listNotificationsForGroup(str, c03041);
            if (objListNotificationsForGroup == coroutine_suspended) {
                return coroutine_suspended;
            }
            notificationSummaryManager = this;
        } else {
            if (i == 1) {
                notificationSummaryManager = (NotificationSummaryManager) c03041.L$0;
                ResultKt.throwOnFailure(objListNotificationsForGroup);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                it = (Iterator) c03041.L$1;
                notificationSummaryManager2 = (NotificationSummaryManager) c03041.L$0;
                ResultKt.throwOnFailure(objListNotificationsForGroup);
            }
            while (it.hasNext()) {
                notificationData = (INotificationRepository.NotificationData) it.next();
                iNotificationRestoreProcessor = notificationSummaryManager2._notificationRestoreProcessor;
                c03041.L$0 = notificationSummaryManager2;
                c03041.L$1 = it;
                c03041.label = 2;
                if (INotificationRestoreProcessor.DefaultImpls.processNotification$default(iNotificationRestoreProcessor, notificationData, 0, c03041, 2, null) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            return Unit.INSTANCE;
        }
        notificationSummaryManager2 = notificationSummaryManager;
        it = ((List) objListNotificationsForGroup).iterator();
        while (it.hasNext()) {
            notificationData = (INotificationRepository.NotificationData) it.next();
            iNotificationRestoreProcessor = notificationSummaryManager2._notificationRestoreProcessor;
            c03041.L$0 = notificationSummaryManager2;
            c03041.L$1 = it;
            c03041.label = 2;
            if (INotificationRestoreProcessor.DefaultImpls.processNotification$default(iNotificationRestoreProcessor, notificationData, 0, c03041, 2, null) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX WARN: Code duplicated, block: B:35:0x00b6  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.notifications.internal.summary.INotificationSummaryManager
    public Object clearNotificationOnSummaryClick(String str, Continuation<? super Unit> continuation) {
        AnonymousClass1 anonymousClass1;
        NotificationManager notificationManager;
        Object androidIdForGroup;
        NotificationSummaryManager notificationSummaryManager;
        NotificationManager notificationManager2;
        Integer numBoxInt;
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
            notificationManager = NotificationHelper.INSTANCE.getNotificationManager(this._applicationService.getAppContext());
            INotificationRepository iNotificationRepository = this._dataController;
            anonymousClass1.L$0 = this;
            anonymousClass1.L$1 = str;
            anonymousClass1.L$2 = notificationManager;
            anonymousClass1.label = 1;
            androidIdForGroup = iNotificationRepository.getAndroidIdForGroup(str, false, anonymousClass1);
            if (androidIdForGroup == coroutine_suspended) {
                return coroutine_suspended;
            }
            notificationSummaryManager = this;
        } else {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                    return Unit.INSTANCE;
                }
                notificationManager2 = (NotificationManager) anonymousClass1.L$0;
                ResultKt.throwOnFailure(obj);
                Integer num = (Integer) obj;
                notificationManager = notificationManager2;
                numBoxInt = num;
                if (numBoxInt != null) {
                    notificationManager.cancel(numBoxInt.intValue());
                }
                return Unit.INSTANCE;
            }
            NotificationManager notificationManager3 = (NotificationManager) anonymousClass1.L$2;
            String str2 = (String) anonymousClass1.L$1;
            notificationSummaryManager = (NotificationSummaryManager) anonymousClass1.L$0;
            ResultKt.throwOnFailure(obj);
            notificationManager = notificationManager3;
            str = str2;
            androidIdForGroup = obj;
        }
        Integer num2 = (Integer) androidIdForGroup;
        if (num2 != null) {
            if (!notificationSummaryManager._configModelStore.getModel().getClearGroupOnSummaryClick()) {
                INotificationRepository iNotificationRepository2 = notificationSummaryManager._dataController;
                int iIntValue = num2.intValue();
                anonymousClass1.L$0 = null;
                anonymousClass1.L$1 = null;
                anonymousClass1.L$2 = null;
                anonymousClass1.label = 3;
                if (iNotificationRepository2.markAsDismissed(iIntValue, anonymousClass1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            }
            if (Intrinsics.areEqual(str, NotificationHelper.GROUPLESS_SUMMARY_KEY)) {
                numBoxInt = Boxing.boxInt(NotificationHelper.GROUPLESS_SUMMARY_ID);
            } else {
                INotificationRepository iNotificationRepository3 = notificationSummaryManager._dataController;
                anonymousClass1.L$0 = notificationManager;
                anonymousClass1.L$1 = null;
                anonymousClass1.L$2 = null;
                anonymousClass1.label = 2;
                Object androidIdForGroup2 = iNotificationRepository3.getAndroidIdForGroup(str, true, anonymousClass1);
                if (androidIdForGroup2 == coroutine_suspended) {
                    return coroutine_suspended;
                }
                NotificationManager notificationManager4 = notificationManager;
                obj = androidIdForGroup2;
                notificationManager2 = notificationManager4;
                Integer num3 = (Integer) obj;
                notificationManager = notificationManager2;
                numBoxInt = num3;
            }
            if (numBoxInt != null) {
                notificationManager.cancel(numBoxInt.intValue());
            }
        }
        return Unit.INSTANCE;
    }
}
