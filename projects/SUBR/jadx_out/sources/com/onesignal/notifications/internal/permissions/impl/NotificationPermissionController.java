package com.onesignal.notifications.internal.permissions.impl;

import android.app.Activity;
import android.os.Build;
import com.onesignal.common.AndroidUtils;
import com.onesignal.common.events.EventProducer;
import com.onesignal.common.threading.Waiter;
import com.onesignal.common.threading.WaiterWithValue;
import com.onesignal.core.internal.application.ApplicationLifecycleHandlerBase;
import com.onesignal.core.internal.application.IApplicationService;
import com.onesignal.core.internal.config.ConfigModelStore;
import com.onesignal.core.internal.permissions.AlertDialogPrepromptForAndroidSettings;
import com.onesignal.core.internal.permissions.IRequestPermissionService;
import com.onesignal.core.internal.preferences.IPreferencesService;
import com.onesignal.core.internal.preferences.PreferenceStores;
import com.onesignal.notifications.BuildConfig;
import com.onesignal.notifications.R;
import com.onesignal.notifications.internal.common.NotificationHelper;
import com.onesignal.notifications.internal.permissions.INotificationPermissionChangedHandler;
import com.onesignal.notifications.internal.permissions.INotificationPermissionController;
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
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.ThreadPoolDispatcherKt;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.YieldKt;

/* JADX INFO: compiled from: NotificationPermissionController.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u000e\b\u0000\u0018\u0000 02\u00020\u00012\u00020\u0002:\u00010B-\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b¢\u0006\u0002\u0010\fJ\b\u0010!\u001a\u00020\u000eH\u0002J\b\u0010\"\u001a\u00020#H\u0016J\u0010\u0010$\u001a\u00020#2\u0006\u0010%\u001a\u00020\u000eH\u0016J\u0010\u0010&\u001a\u00020#2\u0006\u0010\u0013\u001a\u00020\u000eH\u0002J\u0011\u0010'\u001a\u00020#H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010(J\u0019\u0010)\u001a\u00020\u000e2\u0006\u0010%\u001a\u00020\u000eH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010*J\b\u0010+\u001a\u00020#H\u0002J\b\u0010,\u001a\u00020\u000eH\u0002J\u0010\u0010-\u001a\u00020#2\u0006\u0010.\u001a\u00020\u0016H\u0016J\u0010\u0010/\u001a\u00020#2\u0006\u0010.\u001a\u00020\u0016H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0010R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\u001d\u001a\u00020\u000e8\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0010R\u0014\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u000e0 X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u00061"}, d2 = {"Lcom/onesignal/notifications/internal/permissions/impl/NotificationPermissionController;", "Lcom/onesignal/core/internal/permissions/IRequestPermissionService$PermissionCallback;", "Lcom/onesignal/notifications/internal/permissions/INotificationPermissionController;", "_application", "Lcom/onesignal/core/internal/application/IApplicationService;", "_requestPermission", "Lcom/onesignal/core/internal/permissions/IRequestPermissionService;", "_applicationService", "_preferenceService", "Lcom/onesignal/core/internal/preferences/IPreferencesService;", "_configModelStore", "Lcom/onesignal/core/internal/config/ConfigModelStore;", "(Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/core/internal/permissions/IRequestPermissionService;Lcom/onesignal/core/internal/application/IApplicationService;Lcom/onesignal/core/internal/preferences/IPreferencesService;Lcom/onesignal/core/internal/config/ConfigModelStore;)V", "canRequestPermission", "", "getCanRequestPermission", "()Z", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "enabled", "events", "Lcom/onesignal/common/events/EventProducer;", "Lcom/onesignal/notifications/internal/permissions/INotificationPermissionChangedHandler;", "hasSubscribers", "getHasSubscribers", "pollingWaitInterval", "", "pollingWaiter", "Lcom/onesignal/common/threading/Waiter;", "supportsNativePrompt", "getSupportsNativePrompt", "waiter", "Lcom/onesignal/common/threading/WaiterWithValue;", "notificationsEnabled", "onAccept", "", "onReject", "fallbackToSettings", "permissionPromptCompleted", "pollForPermission", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "prompt", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "registerPollingLifecycleListener", "showFallbackAlertDialog", "subscribe", "handler", "unsubscribe", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class NotificationPermissionController implements IRequestPermissionService.PermissionCallback, INotificationPermissionController {
    private static final String ANDROID_PERMISSION_STRING = "android.permission.POST_NOTIFICATIONS";
    private static final String PERMISSION_TYPE = "NOTIFICATION";
    private final IApplicationService _application;
    private final IApplicationService _applicationService;
    private final ConfigModelStore _configModelStore;
    private final IPreferencesService _preferenceService;
    private final IRequestPermissionService _requestPermission;
    private final CoroutineScope coroutineScope;
    private boolean enabled;
    private final EventProducer<INotificationPermissionChangedHandler> events;
    private long pollingWaitInterval;
    private final Waiter pollingWaiter;
    private final boolean supportsNativePrompt;
    private final WaiterWithValue<Boolean> waiter;

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.permissions.impl.NotificationPermissionController$pollForPermission$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationPermissionController.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.permissions.impl.NotificationPermissionController", f = "NotificationPermissionController.kt", i = {0}, l = {112}, m = "pollForPermission", n = {"this"}, s = {"L$0"})
    static final class C02961 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C02961(Continuation<? super C02961> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return NotificationPermissionController.this.pollForPermission(this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.permissions.impl.NotificationPermissionController$prompt$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: NotificationPermissionController.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.permissions.impl.NotificationPermissionController", f = "NotificationPermissionController.kt", i = {0, 0}, l = {144, 165}, m = "prompt", n = {"this", "fallbackToSettings"}, s = {"L$0", "Z$0"})
    static final class C02971 extends ContinuationImpl {
        Object L$0;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C02971(Continuation<? super C02971> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return NotificationPermissionController.this.prompt(false, this);
        }
    }

    public NotificationPermissionController(IApplicationService _application, IRequestPermissionService _requestPermission, IApplicationService _applicationService, IPreferencesService _preferenceService, ConfigModelStore _configModelStore) {
        Intrinsics.checkNotNullParameter(_application, "_application");
        Intrinsics.checkNotNullParameter(_requestPermission, "_requestPermission");
        Intrinsics.checkNotNullParameter(_applicationService, "_applicationService");
        Intrinsics.checkNotNullParameter(_preferenceService, "_preferenceService");
        Intrinsics.checkNotNullParameter(_configModelStore, "_configModelStore");
        this._application = _application;
        this._requestPermission = _requestPermission;
        this._applicationService = _applicationService;
        this._preferenceService = _preferenceService;
        this._configModelStore = _configModelStore;
        this.waiter = new WaiterWithValue<>();
        this.pollingWaiter = new Waiter();
        this.events = new EventProducer<>();
        CoroutineScope CoroutineScope = CoroutineScopeKt.CoroutineScope(ThreadPoolDispatcherKt.newSingleThreadContext("NotificationPermissionController"));
        this.coroutineScope = CoroutineScope;
        this.enabled = notificationsEnabled();
        _requestPermission.registerAsCallback(PERMISSION_TYPE, this);
        this.pollingWaitInterval = _configModelStore.getModel().getBackgroundFetchNotificationPermissionInterval();
        registerPollingLifecycleListener();
        BuildersKt__Builders_commonKt.launch$default(CoroutineScope, null, null, new AnonymousClass1(null), 3, null);
        this.supportsNativePrompt = Build.VERSION.SDK_INT > 32 && AndroidUtils.INSTANCE.getTargetSdkVersion(_application.getAppContext()) > 32;
    }

    @Override // com.onesignal.notifications.internal.permissions.INotificationPermissionController
    public boolean getCanRequestPermission() {
        Boolean bool = this._preferenceService.getBool(PreferenceStores.ONESIGNAL, "USER_RESOLVED_PERMISSION_android.permission.POST_NOTIFICATIONS", false);
        Intrinsics.checkNotNull(bool);
        return !bool.booleanValue();
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.permissions.impl.NotificationPermissionController$1, reason: invalid class name */
    /* JADX INFO: compiled from: NotificationPermissionController.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.notifications.internal.permissions.impl.NotificationPermissionController$1", f = "NotificationPermissionController.kt", i = {}, l = {83}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return NotificationPermissionController.this.new AnonymousClass1(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (NotificationPermissionController.this.pollForPermission(this) == coroutine_suspended) {
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

    private final void registerPollingLifecycleListener() {
        this._applicationService.addApplicationLifecycleHandler(new ApplicationLifecycleHandlerBase() { // from class: com.onesignal.notifications.internal.permissions.impl.NotificationPermissionController.registerPollingLifecycleListener.1
            @Override // com.onesignal.core.internal.application.ApplicationLifecycleHandlerBase, com.onesignal.core.internal.application.IApplicationLifecycleHandler
            public void onFocus(boolean firedOnSubscribe) throws Exception {
                super.onFocus(firedOnSubscribe);
                NotificationPermissionController notificationPermissionController = NotificationPermissionController.this;
                notificationPermissionController.pollingWaitInterval = notificationPermissionController._configModelStore.getModel().getForegroundFetchNotificationPermissionInterval();
                NotificationPermissionController.this.pollingWaiter.wake();
            }

            @Override // com.onesignal.core.internal.application.ApplicationLifecycleHandlerBase, com.onesignal.core.internal.application.IApplicationLifecycleHandler
            public void onUnfocused() {
                super.onUnfocused();
                NotificationPermissionController notificationPermissionController = NotificationPermissionController.this;
                notificationPermissionController.pollingWaitInterval = notificationPermissionController._configModelStore.getModel().getBackgroundFetchNotificationPermissionInterval();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object pollForPermission(Continuation<? super Unit> continuation) {
        C02961 c02961;
        NotificationPermissionController notificationPermissionController;
        long j;
        AnonymousClass3 anonymousClass3;
        if (continuation instanceof C02961) {
            c02961 = (C02961) continuation;
            if ((c02961.label & Integer.MIN_VALUE) != 0) {
                c02961.label -= Integer.MIN_VALUE;
            } else {
                c02961 = new C02961(continuation);
            }
        } else {
            c02961 = new C02961(continuation);
        }
        Object obj = c02961.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02961.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            notificationPermissionController = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            notificationPermissionController = (NotificationPermissionController) c02961.L$0;
            ResultKt.throwOnFailure(obj);
        }
        do {
            final boolean zNotificationsEnabled = notificationPermissionController.notificationsEnabled();
            if (notificationPermissionController.enabled != zNotificationsEnabled) {
                notificationPermissionController.enabled = zNotificationsEnabled;
                notificationPermissionController.events.fire(new Function1<INotificationPermissionChangedHandler, Unit>() { // from class: com.onesignal.notifications.internal.permissions.impl.NotificationPermissionController.pollForPermission.2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(INotificationPermissionChangedHandler iNotificationPermissionChangedHandler) {
                        invoke2(iNotificationPermissionChangedHandler);
                        return Unit.INSTANCE;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(INotificationPermissionChangedHandler it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                        it.onNotificationPermissionChanged(zNotificationsEnabled);
                    }
                });
            }
            j = notificationPermissionController.pollingWaitInterval;
            anonymousClass3 = notificationPermissionController.new AnonymousClass3(null);
            c02961.L$0 = notificationPermissionController;
            c02961.label = 1;
        } while (TimeoutKt.withTimeoutOrNull(j, anonymousClass3, c02961) != coroutine_suspended);
        return coroutine_suspended;
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.permissions.impl.NotificationPermissionController$pollForPermission$3, reason: invalid class name */
    /* JADX INFO: compiled from: NotificationPermissionController.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.notifications.internal.permissions.impl.NotificationPermissionController$pollForPermission$3", f = "NotificationPermissionController.kt", i = {}, l = {113}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Object>, Object> {
        int label;

        AnonymousClass3(Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return NotificationPermissionController.this.new AnonymousClass3(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public /* bridge */ /* synthetic */ Object invoke(CoroutineScope coroutineScope, Continuation<? super Object> continuation) {
            return invoke2(coroutineScope, (Continuation<Object>) continuation);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final Object invoke2(CoroutineScope coroutineScope, Continuation<Object> continuation) {
            return ((AnonymousClass3) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = NotificationPermissionController.this.pollingWaiter.waitForWake(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final boolean getSupportsNativePrompt() {
        return this.supportsNativePrompt;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void permissionPromptCompleted(final boolean enabled) {
        this.enabled = enabled;
        this.waiter.wake(Boolean.valueOf(enabled));
        this.events.fire(new Function1<INotificationPermissionChangedHandler, Unit>() { // from class: com.onesignal.notifications.internal.permissions.impl.NotificationPermissionController.permissionPromptCompleted.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(INotificationPermissionChangedHandler iNotificationPermissionChangedHandler) {
                invoke2(iNotificationPermissionChangedHandler);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(INotificationPermissionChangedHandler it) {
                Intrinsics.checkNotNullParameter(it, "it");
                it.onNotificationPermissionChanged(enabled);
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.notifications.internal.permissions.INotificationPermissionController
    public Object prompt(boolean z, Continuation<? super Boolean> continuation) {
        C02971 c02971;
        NotificationPermissionController notificationPermissionController;
        if (continuation instanceof C02971) {
            c02971 = (C02971) continuation;
            if ((c02971.label & Integer.MIN_VALUE) != 0) {
                c02971.label -= Integer.MIN_VALUE;
            } else {
                c02971 = new C02971(continuation);
            }
        } else {
            c02971 = new C02971(continuation);
        }
        Object objWaitForWake = c02971.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c02971.label;
        if (i != 0) {
            if (i == 1) {
                z = c02971.Z$0;
                notificationPermissionController = (NotificationPermissionController) c02971.L$0;
                ResultKt.throwOnFailure(objWaitForWake);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(objWaitForWake);
            }
        }
        ResultKt.throwOnFailure(objWaitForWake);
        c02971.L$0 = this;
        c02971.Z$0 = z;
        c02971.label = 1;
        if (YieldKt.yield(c02971) == coroutine_suspended) {
            return coroutine_suspended;
        }
        notificationPermissionController = this;
        if (notificationPermissionController.notificationsEnabled()) {
            return Boxing.boxBoolean(true);
        }
        if (notificationPermissionController.supportsNativePrompt) {
            notificationPermissionController._requestPermission.startPrompt(z, PERMISSION_TYPE, ANDROID_PERMISSION_STRING, notificationPermissionController.getClass());
        } else if (z) {
            notificationPermissionController.showFallbackAlertDialog();
        } else {
            return Boxing.boxBoolean(false);
        }
        WaiterWithValue<Boolean> waiterWithValue = notificationPermissionController.waiter;
        c02971.L$0 = null;
        c02971.label = 2;
        objWaitForWake = waiterWithValue.waitForWake(c02971);
        return objWaitForWake == coroutine_suspended ? coroutine_suspended : objWaitForWake;
    }

    @Override // com.onesignal.common.events.IEventNotifier
    public void subscribe(INotificationPermissionChangedHandler handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.events.subscribe(handler);
    }

    @Override // com.onesignal.common.events.IEventNotifier
    public void unsubscribe(INotificationPermissionChangedHandler handler) {
        Intrinsics.checkNotNullParameter(handler, "handler");
        this.events.subscribe(handler);
    }

    @Override // com.onesignal.common.events.IEventNotifier
    public boolean getHasSubscribers() {
        return this.events.getHasSubscribers();
    }

    @Override // com.onesignal.core.internal.permissions.IRequestPermissionService.PermissionCallback
    public void onAccept() {
        permissionPromptCompleted(true);
    }

    @Override // com.onesignal.core.internal.permissions.IRequestPermissionService.PermissionCallback
    public void onReject(boolean fallbackToSettings) {
        if (fallbackToSettings ? showFallbackAlertDialog() : false) {
            return;
        }
        permissionPromptCompleted(false);
    }

    private final boolean showFallbackAlertDialog() {
        final Activity current = this._application.getCurrent();
        if (current == null) {
            return false;
        }
        AlertDialogPrepromptForAndroidSettings alertDialogPrepromptForAndroidSettings = AlertDialogPrepromptForAndroidSettings.INSTANCE;
        String string = current.getString(R.string.notification_permission_name_for_title);
        Intrinsics.checkNotNullExpressionValue(string, "activity.getString(R.str…ermission_name_for_title)");
        String string2 = current.getString(R.string.notification_permission_settings_message);
        Intrinsics.checkNotNullExpressionValue(string2, "activity.getString(R.str…mission_settings_message)");
        alertDialogPrepromptForAndroidSettings.show(current, string, string2, new AlertDialogPrepromptForAndroidSettings.Callback() { // from class: com.onesignal.notifications.internal.permissions.impl.NotificationPermissionController.showFallbackAlertDialog.1
            @Override // com.onesignal.core.internal.permissions.AlertDialogPrepromptForAndroidSettings.Callback
            public void onAccept() {
                IApplicationService iApplicationService = NotificationPermissionController.this._applicationService;
                final NotificationPermissionController notificationPermissionController = NotificationPermissionController.this;
                iApplicationService.addApplicationLifecycleHandler(new ApplicationLifecycleHandlerBase() { // from class: com.onesignal.notifications.internal.permissions.impl.NotificationPermissionController$showFallbackAlertDialog$1$onAccept$1
                    @Override // com.onesignal.core.internal.application.ApplicationLifecycleHandlerBase, com.onesignal.core.internal.application.IApplicationLifecycleHandler
                    public void onFocus(boolean firedOnSubscribe) {
                        if (firedOnSubscribe) {
                            return;
                        }
                        super.onFocus(false);
                        notificationPermissionController._applicationService.removeApplicationLifecycleHandler(this);
                        notificationPermissionController.permissionPromptCompleted(AndroidUtils.INSTANCE.hasPermission("android.permission.POST_NOTIFICATIONS", true, notificationPermissionController._applicationService));
                    }
                });
                NavigateToAndroidSettingsForNotifications.INSTANCE.show(current);
            }

            @Override // com.onesignal.core.internal.permissions.AlertDialogPrepromptForAndroidSettings.Callback
            public void onDecline() {
                NotificationPermissionController.this.permissionPromptCompleted(false);
            }
        });
        return true;
    }

    private final boolean notificationsEnabled() {
        return NotificationHelper.areNotificationsEnabled$default(NotificationHelper.INSTANCE, this._application.getAppContext(), null, 2, null);
    }
}
