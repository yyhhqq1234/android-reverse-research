package com.onesignal.notifications.internal.registration.impl;

import android.content.Context;
import android.text.TextUtils;
import androidx.work.WorkRequest;
import com.huawei.agconnect.config.AGConnectServicesConfig;
import com.huawei.hms.aaid.HmsInstanceId;
import com.huawei.hms.common.ApiException;
import com.onesignal.common.threading.WaiterWithValue;
import com.onesignal.core.internal.application.IApplicationService;
import com.onesignal.core.internal.device.IDeviceService;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.notifications.BuildConfig;
import com.onesignal.notifications.internal.registration.IPushRegistrator;
import com.onesignal.user.internal.subscriptions.SubscriptionStatus;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.TimeoutKt;

/* JADX INFO: compiled from: PushRegistratorHMS.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u0000 \u00162\u00020\u00012\u00020\u0002:\u0001\u0016B\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u001b\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\nH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u000eJ\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0013J\u0011\u0010\u0014\u001a\u00020\u0010H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0015R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0018\u0010\b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\n\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0017"}, d2 = {"Lcom/onesignal/notifications/internal/registration/impl/PushRegistratorHMS;", "Lcom/onesignal/notifications/internal/registration/IPushRegistrator;", "Lcom/onesignal/notifications/internal/registration/impl/IPushRegistratorCallback;", "_deviceService", "Lcom/onesignal/core/internal/device/IDeviceService;", "_applicationService", "Lcom/onesignal/core/internal/application/IApplicationService;", "(Lcom/onesignal/core/internal/device/IDeviceService;Lcom/onesignal/core/internal/application/IApplicationService;)V", "waiter", "Lcom/onesignal/common/threading/WaiterWithValue;", "", "fireCallback", "", "id", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getHMSTokenTask", "Lcom/onesignal/notifications/internal/registration/IPushRegistrator$RegisterResult;", "context", "Landroid/content/Context;", "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "registerForPush", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class PushRegistratorHMS implements IPushRegistrator, IPushRegistratorCallback {
    private static final String HMS_CLIENT_APP_ID = "client/app_id";
    private final IApplicationService _applicationService;
    private final IDeviceService _deviceService;
    private WaiterWithValue<String> waiter;

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.registration.impl.PushRegistratorHMS$getHMSTokenTask$1, reason: invalid class name */
    /* JADX INFO: compiled from: PushRegistratorHMS.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.registration.impl.PushRegistratorHMS", f = "PushRegistratorHMS.kt", i = {0}, l = {77}, m = "getHMSTokenTask", n = {"pushToken"}, s = {"L$0"})
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
            return PushRegistratorHMS.this.getHMSTokenTask(null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.registration.impl.PushRegistratorHMS$registerForPush$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PushRegistratorHMS.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.registration.impl.PushRegistratorHMS", f = "PushRegistratorHMS.kt", i = {}, l = {34}, m = "registerForPush", n = {}, s = {})
    static final class C03021 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C03021(Continuation<? super C03021> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PushRegistratorHMS.this.registerForPush(this);
        }
    }

    public PushRegistratorHMS(IDeviceService _deviceService, IApplicationService _applicationService) {
        Intrinsics.checkNotNullParameter(_deviceService, "_deviceService");
        Intrinsics.checkNotNullParameter(_applicationService, "_applicationService");
        this._deviceService = _deviceService;
        this._applicationService = _applicationService;
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: com.huawei.hms.common.ApiException */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.notifications.internal.registration.IPushRegistrator
    public Object registerForPush(Continuation<? super IPushRegistrator.RegisterResult> continuation) {
        C03021 c03021;
        SubscriptionStatus subscriptionStatus;
        IPushRegistrator.RegisterResult registerResult;
        if (continuation instanceof C03021) {
            c03021 = (C03021) continuation;
            if ((c03021.label & Integer.MIN_VALUE) != 0) {
                c03021.label -= Integer.MIN_VALUE;
            } else {
                c03021 = new C03021(continuation);
            }
        } else {
            c03021 = new C03021(continuation);
        }
        Object hMSTokenTask = c03021.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c03021.label;
        try {
            if (i == 0) {
                ResultKt.throwOnFailure(hMSTokenTask);
                Context appContext = this._applicationService.getAppContext();
                c03021.label = 1;
                hMSTokenTask = getHMSTokenTask(appContext, c03021);
                if (hMSTokenTask == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(hMSTokenTask);
            }
            registerResult = (IPushRegistrator.RegisterResult) hMSTokenTask;
        } catch (ApiException e) {
            Logging.error("HMS ApiException getting Huawei push token!", e);
            if (e.getStatusCode() == 907135000) {
                subscriptionStatus = SubscriptionStatus.HMS_ARGUMENTS_INVALID;
            } else {
                subscriptionStatus = SubscriptionStatus.HMS_API_EXCEPTION_OTHER;
            }
            registerResult = new IPushRegistrator.RegisterResult(null, subscriptionStatus);
        }
        Intrinsics.checkNotNull(registerResult);
        return registerResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:9:0x0019 A[Catch: all -> 0x00e5, TryCatch #0 {, blocks: (B:4:0x0005, B:6:0x0009, B:8:0x0013, B:10:0x001e, B:13:0x002d, B:31:0x00b4, B:33:0x00b8, B:34:0x00d7, B:14:0x0036, B:15:0x003d, B:16:0x003e, B:18:0x0049, B:21:0x0052, B:23:0x007e, B:26:0x009e, B:9:0x0019), top: B:40:0x0005 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v3, types: [T, java.lang.String] */
    public final synchronized Object getHMSTokenTask(Context context, Continuation<? super IPushRegistrator.RegisterResult> continuation) throws ApiException {
        AnonymousClass1 anonymousClass1;
        Ref.ObjectRef objectRef;
        IPushRegistrator.RegisterResult registerResult;
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
            if (!this._deviceService.getHasAllHMSLibrariesForPushKit()) {
                return new IPushRegistrator.RegisterResult(null, SubscriptionStatus.MISSING_HMS_PUSHKIT_LIBRARY);
            }
            this.waiter = new WaiterWithValue<>();
            String string = AGConnectServicesConfig.fromContext(context).getString(HMS_CLIENT_APP_ID);
            HmsInstanceId hmsInstanceId = HmsInstanceId.getInstance(context);
            Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
            objectRef2.element = hmsInstanceId.getToken(string, "HCM");
            if (!TextUtils.isEmpty((CharSequence) objectRef2.element)) {
                Logging.info$default("Device registered for HMS, push token = " + ((String) objectRef2.element), null, 2, null);
                return new IPushRegistrator.RegisterResult((String) objectRef2.element, SubscriptionStatus.SUBSCRIBED);
            }
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(objectRef2, this, null);
            anonymousClass1.L$0 = objectRef2;
            anonymousClass1.label = 1;
            if (TimeoutKt.withTimeout(WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS, anonymousClass2, anonymousClass1) == coroutine_suspended) {
                return coroutine_suspended;
            }
            objectRef = objectRef2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef = (Ref.ObjectRef) anonymousClass1.L$0;
            ResultKt.throwOnFailure(obj);
        }
        if (objectRef.element != 0) {
            Logging.error$default("HMS registered with ID:" + ((String) objectRef.element), null, 2, null);
            registerResult = new IPushRegistrator.RegisterResult((String) objectRef.element, SubscriptionStatus.SUBSCRIBED);
        } else {
            Logging.error$default("HmsMessageServiceOneSignal.onNewToken timed out.", null, 2, null);
            registerResult = new IPushRegistrator.RegisterResult(null, SubscriptionStatus.HMS_TOKEN_TIMEOUT);
        }
        return registerResult;
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.registration.impl.PushRegistratorHMS$getHMSTokenTask$2, reason: invalid class name */
    /* JADX INFO: compiled from: PushRegistratorHMS.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.notifications.internal.registration.impl.PushRegistratorHMS$getHMSTokenTask$2", f = "PushRegistratorHMS.kt", i = {}, l = {78}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.ObjectRef<String> $pushToken;
        Object L$0;
        int label;
        final /* synthetic */ PushRegistratorHMS this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(Ref.ObjectRef<String> objectRef, PushRegistratorHMS pushRegistratorHMS, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$pushToken = objectRef;
            this.this$0 = pushRegistratorHMS;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$pushToken, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Ref.ObjectRef<String> objectRef;
            T t;
            Ref.ObjectRef<String> objectRef2;
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                objectRef = this.$pushToken;
                WaiterWithValue waiterWithValue = this.this$0.waiter;
                if (waiterWithValue != null) {
                    this.L$0 = objectRef;
                    this.label = 1;
                    Object objWaitForWake = waiterWithValue.waitForWake(this);
                    if (objWaitForWake == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    objectRef2 = objectRef;
                    obj = objWaitForWake;
                } else {
                    t = 0;
                }
                objectRef.element = t;
                return Unit.INSTANCE;
            }
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            objectRef2 = (Ref.ObjectRef) this.L$0;
            ResultKt.throwOnFailure(obj);
            Ref.ObjectRef<String> objectRef3 = objectRef2;
            t = (String) obj;
            objectRef = objectRef3;
            objectRef.element = t;
            return Unit.INSTANCE;
        }
    }

    @Override // com.onesignal.notifications.internal.registration.impl.IPushRegistratorCallback
    public Object fireCallback(String str, Continuation<? super Unit> continuation) {
        WaiterWithValue<String> waiterWithValue = this.waiter;
        if (waiterWithValue != null) {
            waiterWithValue.wake(str);
        }
        return Unit.INSTANCE;
    }
}
