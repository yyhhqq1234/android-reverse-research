package com.onesignal.notifications.internal.pushtoken;

import com.onesignal.core.internal.device.IDeviceService;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.notifications.BuildConfig;
import com.onesignal.notifications.internal.registration.IPushRegistrator;
import com.onesignal.user.internal.subscriptions.SubscriptionStatus;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PushTokenManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u000eH\u0002J\u0011\u0010\u0016\u001a\u00020\u0017H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0018R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001a\u0010\r\u001a\u00020\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0019"}, d2 = {"Lcom/onesignal/notifications/internal/pushtoken/PushTokenManager;", "Lcom/onesignal/notifications/internal/pushtoken/IPushTokenManager;", "_pushRegistrator", "Lcom/onesignal/notifications/internal/registration/IPushRegistrator;", "_deviceService", "Lcom/onesignal/core/internal/device/IDeviceService;", "(Lcom/onesignal/notifications/internal/registration/IPushRegistrator;Lcom/onesignal/core/internal/device/IDeviceService;)V", "pushToken", "", "getPushToken", "()Ljava/lang/String;", "setPushToken", "(Ljava/lang/String;)V", "pushTokenStatus", "Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;", "getPushTokenStatus", "()Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;", "setPushTokenStatus", "(Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;)V", "pushStatusRuntimeError", "", "status", "retrievePushToken", "Lcom/onesignal/notifications/internal/pushtoken/PushTokenResponse;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class PushTokenManager implements IPushTokenManager {
    private final IDeviceService _deviceService;
    private final IPushRegistrator _pushRegistrator;
    private String pushToken;
    private SubscriptionStatus pushTokenStatus;

    /* JADX INFO: compiled from: PushTokenManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[IDeviceService.JetpackLibraryStatus.values().length];
            iArr[IDeviceService.JetpackLibraryStatus.MISSING.ordinal()] = 1;
            iArr[IDeviceService.JetpackLibraryStatus.OUTDATED.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.pushtoken.PushTokenManager$retrievePushToken$1, reason: invalid class name */
    /* JADX INFO: compiled from: PushTokenManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.pushtoken.PushTokenManager", f = "PushTokenManager.kt", i = {0}, l = {31}, m = "retrievePushToken", n = {"this"}, s = {"L$0"})
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
            return PushTokenManager.this.retrievePushToken(this);
        }
    }

    public PushTokenManager(IPushRegistrator _pushRegistrator, IDeviceService _deviceService) {
        Intrinsics.checkNotNullParameter(_pushRegistrator, "_pushRegistrator");
        Intrinsics.checkNotNullParameter(_deviceService, "_deviceService");
        this._pushRegistrator = _pushRegistrator;
        this._deviceService = _deviceService;
        this.pushTokenStatus = SubscriptionStatus.NO_PERMISSION;
    }

    public final SubscriptionStatus getPushTokenStatus() {
        return this.pushTokenStatus;
    }

    public final void setPushTokenStatus(SubscriptionStatus subscriptionStatus) {
        Intrinsics.checkNotNullParameter(subscriptionStatus, "<set-?>");
        this.pushTokenStatus = subscriptionStatus;
    }

    public final String getPushToken() {
        return this.pushToken;
    }

    public final void setPushToken(String str) {
        this.pushToken = str;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.notifications.internal.pushtoken.IPushTokenManager
    public Object retrievePushToken(Continuation<? super PushTokenResponse> continuation) {
        AnonymousClass1 anonymousClass1;
        PushTokenManager pushTokenManager;
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
        Object objRegisterForPush = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = anonymousClass1.label;
        if (i == 0) {
            ResultKt.throwOnFailure(objRegisterForPush);
            int i2 = WhenMappings.$EnumSwitchMapping$0[this._deviceService.getJetpackLibraryStatus().ordinal()];
            if (i2 == 1) {
                Logging.fatal$default("Could not find the Jetpack/AndroidX. Please make sure it has been correctly added to your project.", null, 2, null);
                this.pushTokenStatus = SubscriptionStatus.MISSING_JETPACK_LIBRARY;
            } else if (i2 == 2) {
                Logging.fatal$default("The included Jetpack/AndroidX Library is too old or incomplete.", null, 2, null);
                this.pushTokenStatus = SubscriptionStatus.OUTDATED_JETPACK_LIBRARY;
            } else {
                IPushRegistrator iPushRegistrator = this._pushRegistrator;
                anonymousClass1.L$0 = this;
                anonymousClass1.label = 1;
                objRegisterForPush = iPushRegistrator.registerForPush(anonymousClass1);
                if (objRegisterForPush == coroutine_suspended) {
                    return coroutine_suspended;
                }
                pushTokenManager = this;
            }
            pushTokenManager = this;
            return new PushTokenResponse(pushTokenManager.pushToken, pushTokenManager.pushTokenStatus);
        }
        if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        pushTokenManager = (PushTokenManager) anonymousClass1.L$0;
        ResultKt.throwOnFailure(objRegisterForPush);
        IPushRegistrator.RegisterResult registerResult = (IPushRegistrator.RegisterResult) objRegisterForPush;
        if (registerResult.getStatus().getValue() == SubscriptionStatus.SUBSCRIBED.getValue()) {
            pushTokenManager.pushTokenStatus = registerResult.getStatus();
        } else if (registerResult.getStatus().getValue() < SubscriptionStatus.SUBSCRIBED.getValue()) {
            if (pushTokenManager.pushToken == null && (pushTokenManager.pushTokenStatus == SubscriptionStatus.NO_PERMISSION || pushTokenManager.pushStatusRuntimeError(pushTokenManager.pushTokenStatus))) {
                pushTokenManager.pushTokenStatus = registerResult.getStatus();
            }
        } else if (pushTokenManager.pushStatusRuntimeError(pushTokenManager.pushTokenStatus)) {
            pushTokenManager.pushTokenStatus = registerResult.getStatus();
        }
        pushTokenManager.pushToken = registerResult.getId();
        return new PushTokenResponse(pushTokenManager.pushToken, pushTokenManager.pushTokenStatus);
    }

    private final boolean pushStatusRuntimeError(SubscriptionStatus status) {
        return status.getValue() < -6;
    }
}
