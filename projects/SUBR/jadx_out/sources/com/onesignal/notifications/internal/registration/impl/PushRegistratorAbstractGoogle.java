package com.onesignal.notifications.internal.registration.impl;

import com.onesignal.common.AndroidUtils;
import com.onesignal.core.internal.config.ConfigModelStore;
import com.onesignal.core.internal.device.IDeviceService;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.notifications.BuildConfig;
import com.onesignal.notifications.internal.registration.IPushRegistrator;
import com.onesignal.user.internal.subscriptions.SubscriptionStatus;
import java.io.IOException;
import java.util.concurrent.ExecutionException;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PushRegistratorAbstractGoogle.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0005\b \u0018\u0000 #2\u00020\u00012\u00020\u0002:\u0001#B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ#\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0012H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0013J\u001b\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u000bH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0017J\u0019\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000bH¦@ø\u0001\u0000¢\u0006\u0002\u0010\u0017J\u0019\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000bH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0017J\u0012\u0010\u001a\u001a\u00020\u001b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000bH\u0002J\u0010\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u001fH\u0002J\u0011\u0010 \u001a\u00020\u000fH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010!J\u0019\u0010\"\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000bH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0017R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000bX¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006$"}, d2 = {"Lcom/onesignal/notifications/internal/registration/impl/PushRegistratorAbstractGoogle;", "Lcom/onesignal/notifications/internal/registration/IPushRegistrator;", "Lcom/onesignal/notifications/internal/registration/impl/IPushRegistratorCallback;", "_deviceService", "Lcom/onesignal/core/internal/device/IDeviceService;", "_configModelStore", "Lcom/onesignal/core/internal/config/ConfigModelStore;", "_upgradePrompt", "Lcom/onesignal/notifications/internal/registration/impl/GooglePlayServicesUpgradePrompt;", "(Lcom/onesignal/core/internal/device/IDeviceService;Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/notifications/internal/registration/impl/GooglePlayServicesUpgradePrompt;)V", "providerName", "", "getProviderName", "()Ljava/lang/String;", "attemptRegistration", "Lcom/onesignal/notifications/internal/registration/IPushRegistrator$RegisterResult;", "senderId", "currentRetry", "", "(Ljava/lang/String;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "fireCallback", "", "id", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getToken", "internalRegisterForPush", "isValidProjectNumber", "", "pushStatusFromThrowable", "Lcom/onesignal/user/internal/subscriptions/SubscriptionStatus;", "throwable", "", "registerForPush", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "registerInBackground", "Companion", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public abstract class PushRegistratorAbstractGoogle implements IPushRegistrator, IPushRegistratorCallback {
    private static final int REGISTRATION_RETRY_BACKOFF_MS = 10000;
    private static final int REGISTRATION_RETRY_COUNT = 5;
    private ConfigModelStore _configModelStore;
    private final IDeviceService _deviceService;
    private final GooglePlayServicesUpgradePrompt _upgradePrompt;

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.registration.impl.PushRegistratorAbstractGoogle$attemptRegistration$1, reason: invalid class name */
    /* JADX INFO: compiled from: PushRegistratorAbstractGoogle.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.registration.impl.PushRegistratorAbstractGoogle", f = "PushRegistratorAbstractGoogle.kt", i = {0, 0}, l = {128}, m = "attemptRegistration", n = {"this", "currentRetry"}, s = {"L$0", "I$0"})
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
            return PushRegistratorAbstractGoogle.this.attemptRegistration(null, 0, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.registration.impl.PushRegistratorAbstractGoogle$internalRegisterForPush$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PushRegistratorAbstractGoogle.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.registration.impl.PushRegistratorAbstractGoogle", f = "PushRegistratorAbstractGoogle.kt", i = {0, 1}, l = {84, 86}, m = "internalRegisterForPush", n = {"this", "this"}, s = {"L$0", "L$0"})
    static final class C03001 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C03001(Continuation<? super C03001> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PushRegistratorAbstractGoogle.this.internalRegisterForPush(null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.internal.registration.impl.PushRegistratorAbstractGoogle$registerInBackground$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: PushRegistratorAbstractGoogle.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.notifications.internal.registration.impl.PushRegistratorAbstractGoogle", f = "PushRegistratorAbstractGoogle.kt", i = {0, 0, 0, 1, 1, 1}, l = {108, 113}, m = "registerInBackground", n = {"this", "senderId", "currentRetry", "this", "senderId", "currentRetry"}, s = {"L$0", "L$1", "I$0", "L$0", "L$1", "I$0"})
    static final class C03011 extends ContinuationImpl {
        int I$0;
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C03011(Continuation<? super C03011> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PushRegistratorAbstractGoogle.this.registerInBackground(null, this);
        }
    }

    @Override // com.onesignal.notifications.internal.registration.impl.IPushRegistratorCallback
    public Object fireCallback(String str, Continuation<? super Unit> continuation) {
        return fireCallback$suspendImpl(this, str, continuation);
    }

    public abstract String getProviderName();

    public abstract Object getToken(String str, Continuation<? super String> continuation) throws ExecutionException, InterruptedException, IOException;

    @Override // com.onesignal.notifications.internal.registration.IPushRegistrator
    public Object registerForPush(Continuation<? super IPushRegistrator.RegisterResult> continuation) {
        return registerForPush$suspendImpl(this, continuation);
    }

    public PushRegistratorAbstractGoogle(IDeviceService _deviceService, ConfigModelStore _configModelStore, GooglePlayServicesUpgradePrompt _upgradePrompt) {
        Intrinsics.checkNotNullParameter(_deviceService, "_deviceService");
        Intrinsics.checkNotNullParameter(_configModelStore, "_configModelStore");
        Intrinsics.checkNotNullParameter(_upgradePrompt, "_upgradePrompt");
        this._deviceService = _deviceService;
        this._configModelStore = _configModelStore;
        this._upgradePrompt = _upgradePrompt;
    }

    static /* synthetic */ Object registerForPush$suspendImpl(PushRegistratorAbstractGoogle pushRegistratorAbstractGoogle, Continuation continuation) {
        if (!pushRegistratorAbstractGoogle._configModelStore.getModel().isInitializedWithRemote()) {
            return new IPushRegistrator.RegisterResult(null, SubscriptionStatus.FIREBASE_FCM_INIT_ERROR);
        }
        if (!pushRegistratorAbstractGoogle._deviceService.getHasFCMLibrary()) {
            Logging.fatal$default("The Firebase FCM library is missing! Please make sure to include it in your project.", null, 2, null);
            return new IPushRegistrator.RegisterResult(null, SubscriptionStatus.MISSING_FIREBASE_FCM_LIBRARY);
        }
        if (!pushRegistratorAbstractGoogle.isValidProjectNumber(pushRegistratorAbstractGoogle._configModelStore.getModel().getGoogleProjectNumber())) {
            Logging.error$default("Missing Google Project number!\nPlease enter a Google Project number / Sender ID on under App Settings > Android > Configuration on the OneSignal dashboard.", null, 2, null);
            return new IPushRegistrator.RegisterResult(null, SubscriptionStatus.INVALID_FCM_SENDER_ID);
        }
        String googleProjectNumber = pushRegistratorAbstractGoogle._configModelStore.getModel().getGoogleProjectNumber();
        Intrinsics.checkNotNull(googleProjectNumber);
        return pushRegistratorAbstractGoogle.internalRegisterForPush(googleProjectNumber, continuation);
    }

    static /* synthetic */ Object fireCallback$suspendImpl(PushRegistratorAbstractGoogle pushRegistratorAbstractGoogle, String str, Continuation continuation) throws Exception {
        throw new Exception("Google has no callback mechanism for push registration!");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.onesignal.notifications.internal.registration.impl.PushRegistratorAbstractGoogle, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r7v1, types: [com.onesignal.notifications.internal.registration.impl.PushRegistratorAbstractGoogle] */
    /* JADX WARN: Type inference failed for: r7v6 */
    public final Object internalRegisterForPush(String str, Continuation<? super IPushRegistrator.RegisterResult> continuation) {
        C03001 c03001;
        if (continuation instanceof C03001) {
            c03001 = (C03001) continuation;
            if ((c03001.label & Integer.MIN_VALUE) != 0) {
                c03001.label -= Integer.MIN_VALUE;
            } else {
                c03001 = new C03001(continuation);
            }
        } else {
            c03001 = new C03001(continuation);
        }
        Object objRegisterInBackground = c03001.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c03001.label;
        try {
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(objRegisterInBackground);
                }
                if (i == 2) {
                    ResultKt.throwOnFailure(objRegisterInBackground);
                    Logging.error$default("'Google Play services' app not installed or disabled on the device.", null, 2, null);
                    return new IPushRegistrator.RegisterResult(null, SubscriptionStatus.OUTDATED_GOOGLE_PLAY_SERVICES_APP);
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(objRegisterInBackground);
            try {
                if (this._deviceService.isGMSInstalledAndEnabled()) {
                    c03001.L$0 = this;
                    c03001.label = 1;
                    objRegisterInBackground = registerInBackground(str, c03001);
                    return objRegisterInBackground == coroutine_suspended ? coroutine_suspended : (IPushRegistrator.RegisterResult) objRegisterInBackground;
                }
                GooglePlayServicesUpgradePrompt googlePlayServicesUpgradePrompt = this._upgradePrompt;
                c03001.L$0 = this;
                c03001.label = 2;
                if (googlePlayServicesUpgradePrompt.showUpdateGPSDialog(c03001) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                Logging.error$default("'Google Play services' app not installed or disabled on the device.", null, 2, null);
                return new IPushRegistrator.RegisterResult(null, SubscriptionStatus.OUTDATED_GOOGLE_PLAY_SERVICES_APP);
            } catch (Throwable th) {
                th = th;
                str = this;
                Logging.error("Could not register with " + str.getProviderName() + " due to an issue with your AndroidManifest.xml or with 'Google Play services'.", th);
                return new IPushRegistrator.RegisterResult(null, SubscriptionStatus.FIREBASE_FCM_INIT_ERROR);
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:19:0x0055  */
    /* JADX WARN: Code duplicated, block: B:21:0x0063 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:22:0x0064  */
    /* JADX WARN: Code duplicated, block: B:25:0x006d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:26:0x006e  */
    /* JADX WARN: Code duplicated, block: B:28:0x0081 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x007f -> B:29:0x0082). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object registerInBackground(java.lang.String r10, kotlin.coroutines.Continuation<? super com.onesignal.notifications.internal.registration.IPushRegistrator.RegisterResult> r11) {
        /*
            r9 = this;
            boolean r0 = r11 instanceof com.onesignal.notifications.internal.registration.impl.PushRegistratorAbstractGoogle.C03011
            if (r0 == 0) goto L14
            r0 = r11
            com.onesignal.notifications.internal.registration.impl.PushRegistratorAbstractGoogle$registerInBackground$1 r0 = (com.onesignal.notifications.internal.registration.impl.PushRegistratorAbstractGoogle.C03011) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r11 = r0.label
            int r11 = r11 - r2
            r0.label = r11
            goto L19
        L14:
            com.onesignal.notifications.internal.registration.impl.PushRegistratorAbstractGoogle$registerInBackground$1 r0 = new com.onesignal.notifications.internal.registration.impl.PushRegistratorAbstractGoogle$registerInBackground$1
            r0.<init>(r11)
        L19:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L4d
            if (r2 == r4) goto L3f
            if (r2 != r3) goto L37
            int r10 = r0.I$0
            java.lang.Object r2 = r0.L$1
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r5 = r0.L$0
            com.onesignal.notifications.internal.registration.impl.PushRegistratorAbstractGoogle r5 = (com.onesignal.notifications.internal.registration.impl.PushRegistratorAbstractGoogle) r5
            kotlin.ResultKt.throwOnFailure(r11)
            goto L82
        L37:
            java.lang.IllegalStateException r10 = new java.lang.IllegalStateException
            java.lang.String r11 = "call to 'resume' before 'invoke' with coroutine"
            r10.<init>(r11)
            throw r10
        L3f:
            int r10 = r0.I$0
            java.lang.Object r2 = r0.L$1
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r5 = r0.L$0
            com.onesignal.notifications.internal.registration.impl.PushRegistratorAbstractGoogle r5 = (com.onesignal.notifications.internal.registration.impl.PushRegistratorAbstractGoogle) r5
            kotlin.ResultKt.throwOnFailure(r11)
            goto L69
        L4d:
            kotlin.ResultKt.throwOnFailure(r11)
            r11 = 0
            r2 = r9
        L52:
            r5 = 5
            if (r11 >= r5) goto L87
            r0.L$0 = r2
            r0.L$1 = r10
            r0.I$0 = r11
            r0.label = r4
            java.lang.Object r5 = r2.attemptRegistration(r10, r11, r0)
            if (r5 != r1) goto L64
            return r1
        L64:
            r8 = r2
            r2 = r10
            r10 = r11
            r11 = r5
            r5 = r8
        L69:
            com.onesignal.notifications.internal.registration.IPushRegistrator$RegisterResult r11 = (com.onesignal.notifications.internal.registration.IPushRegistrator.RegisterResult) r11
            if (r11 == 0) goto L6e
            return r11
        L6e:
            int r11 = r10 + 1
            int r11 = r11 * 10000
            long r6 = (long) r11
            r0.L$0 = r5
            r0.L$1 = r2
            r0.I$0 = r10
            r0.label = r3
            java.lang.Object r11 = kotlinx.coroutines.DelayKt.delay(r6, r0)
            if (r11 != r1) goto L82
            return r1
        L82:
            int r11 = r10 + 1
            r10 = r2
            r2 = r5
            goto L52
        L87:
            com.onesignal.notifications.internal.registration.IPushRegistrator$RegisterResult r10 = new com.onesignal.notifications.internal.registration.IPushRegistrator$RegisterResult
            r11 = 0
            com.onesignal.user.internal.subscriptions.SubscriptionStatus r0 = com.onesignal.user.internal.subscriptions.SubscriptionStatus.FIREBASE_FCM_INIT_ERROR
            r10.<init>(r11, r0)
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onesignal.notifications.internal.registration.impl.PushRegistratorAbstractGoogle.registerInBackground(java.lang.String, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:40:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:42:0x00b8  */
    /* JADX WARN: Code duplicated, block: B:43:0x00d5  */
    /* JADX WARN: Code duplicated, block: B:45:0x00f2  */
    /* JADX WARN: Code duplicated, block: B:48:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:7:0x0016  */
    /* JADX WARN: Instruction removed from duplicated block: B:42:0x00b8, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:43:0x00d5, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:48:0x00f9, please report this as an issue */
    public final Object attemptRegistration(String str, int i, Continuation<? super IPushRegistrator.RegisterResult> continuation) {
        AnonymousClass1 anonymousClass1;
        PushRegistratorAbstractGoogle pushRegistratorAbstractGoogle;
        IOException iOException;
        SubscriptionStatus subscriptionStatusPushStatusFromThrowable;
        String rootCauseMessage;
        Exception exc;
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
        Object token = anonymousClass1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = anonymousClass1.label;
        boolean z = true;
        if (i2 == 0) {
            ResultKt.throwOnFailure(token);
            try {
                anonymousClass1.L$0 = this;
                anonymousClass1.I$0 = i;
                anonymousClass1.label = 1;
                token = getToken(str, anonymousClass1);
                if (token == coroutine_suspended) {
                    return coroutine_suspended;
                }
                pushRegistratorAbstractGoogle = this;
            } catch (IOException e) {
                e = e;
                pushRegistratorAbstractGoogle = this;
                iOException = e;
                subscriptionStatusPushStatusFromThrowable = pushRegistratorAbstractGoogle.pushStatusFromThrowable(iOException);
                rootCauseMessage = AndroidUtils.INSTANCE.getRootCauseMessage(iOException);
                if (!Intrinsics.areEqual("SERVICE_NOT_AVAILABLE", rootCauseMessage)) {
                    z = false;
                }
                if (z) {
                    exc = new Exception(iOException);
                    if (i >= 4) {
                        Logging.error("Retry count of 5 exceed! Could not get a " + pushRegistratorAbstractGoogle.getProviderName() + " Token.", exc);
                    } else {
                        Logging.info("'Google Play services' returned " + rootCauseMessage + " error. Current retry count: " + i, exc);
                        if (i == 2) {
                            return new IPushRegistrator.RegisterResult(null, subscriptionStatusPushStatusFromThrowable);
                        }
                    }
                    return null;
                }
                Logging.error("Error Getting " + pushRegistratorAbstractGoogle.getProviderName() + " Token", new Exception(iOException));
                return new IPushRegistrator.RegisterResult(null, subscriptionStatusPushStatusFromThrowable);
            } catch (Throwable th) {
                th = th;
                pushRegistratorAbstractGoogle = this;
                Logging.error("Unknown error getting " + pushRegistratorAbstractGoogle.getProviderName() + " Token", th);
                return new IPushRegistrator.RegisterResult(null, SubscriptionStatus.FIREBASE_FCM_ERROR_MISC_EXCEPTION);
            }
        } else if (i2 == 1) {
            i = anonymousClass1.I$0;
            pushRegistratorAbstractGoogle = (PushRegistratorAbstractGoogle) anonymousClass1.L$0;
            try {
                ResultKt.throwOnFailure(token);
            } catch (IOException e2) {
                e = e2;
                iOException = e;
                subscriptionStatusPushStatusFromThrowable = pushRegistratorAbstractGoogle.pushStatusFromThrowable(iOException);
                rootCauseMessage = AndroidUtils.INSTANCE.getRootCauseMessage(iOException);
                if (!Intrinsics.areEqual("SERVICE_NOT_AVAILABLE", rootCauseMessage) && !Intrinsics.areEqual("AUTHENTICATION_FAILED", rootCauseMessage)) {
                    z = false;
                }
                if (z) {
                    exc = new Exception(iOException);
                    if (i >= 4) {
                        Logging.error("Retry count of 5 exceed! Could not get a " + pushRegistratorAbstractGoogle.getProviderName() + " Token.", exc);
                    } else {
                        Logging.info("'Google Play services' returned " + rootCauseMessage + " error. Current retry count: " + i, exc);
                        if (i == 2) {
                            return new IPushRegistrator.RegisterResult(null, subscriptionStatusPushStatusFromThrowable);
                        }
                    }
                    return null;
                }
                Logging.error("Error Getting " + pushRegistratorAbstractGoogle.getProviderName() + " Token", new Exception(iOException));
                return new IPushRegistrator.RegisterResult(null, subscriptionStatusPushStatusFromThrowable);
            } catch (Throwable th2) {
                th = th2;
                Logging.error("Unknown error getting " + pushRegistratorAbstractGoogle.getProviderName() + " Token", th);
                return new IPushRegistrator.RegisterResult(null, SubscriptionStatus.FIREBASE_FCM_ERROR_MISC_EXCEPTION);
            }
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        String str2 = (String) token;
        Logging.info$default("Device registered, push token = " + str2, null, 2, null);
        return new IPushRegistrator.RegisterResult(str2, SubscriptionStatus.SUBSCRIBED);
    }

    private final SubscriptionStatus pushStatusFromThrowable(Throwable throwable) {
        String rootCauseMessage = AndroidUtils.INSTANCE.getRootCauseMessage(throwable);
        if (throwable instanceof IOException) {
            if (Intrinsics.areEqual(rootCauseMessage, "SERVICE_NOT_AVAILABLE")) {
                return SubscriptionStatus.FIREBASE_FCM_ERROR_IOEXCEPTION_SERVICE_NOT_AVAILABLE;
            }
            return Intrinsics.areEqual(rootCauseMessage, "AUTHENTICATION_FAILED") ? SubscriptionStatus.FIREBASE_FCM_ERROR_IOEXCEPTION_AUTHENTICATION_FAILED : SubscriptionStatus.FIREBASE_FCM_ERROR_IOEXCEPTION_OTHER;
        }
        return SubscriptionStatus.FIREBASE_FCM_ERROR_MISC_EXCEPTION;
    }

    private final boolean isValidProjectNumber(String senderId) {
        boolean z;
        try {
            Intrinsics.checkNotNull(senderId);
            Float.parseFloat(senderId);
            z = true;
        } catch (Throwable unused) {
            z = false;
        }
        return z;
    }
}
