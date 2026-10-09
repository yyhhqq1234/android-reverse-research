package com.onesignal.notifications.activities;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.onesignal.OneSignal;
import com.onesignal.common.threading.ThreadUtilsKt;
import com.onesignal.notifications.BuildConfig;
import com.onesignal.notifications.internal.open.INotificationOpenedProcessorHMS;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: compiled from: NotificationOpenedActivityHMS.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH\u0014J\b\u0010\n\u001a\u00020\u0004H\u0002J\u0012\u0010\u000b\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0002¨\u0006\f"}, d2 = {"Lcom/onesignal/notifications/activities/NotificationOpenedActivityHMS;", "Landroid/app/Activity;", "()V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onNewIntent", "intent", "Landroid/content/Intent;", "processIntent", "processOpen", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class NotificationOpenedActivityHMS extends Activity {
    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) throws InterruptedException {
        super.onCreate(savedInstanceState);
        processIntent();
    }

    @Override // android.app.Activity
    protected void onNewIntent(Intent intent) throws InterruptedException {
        Intrinsics.checkNotNullParameter(intent, "intent");
        super.onNewIntent(intent);
        processIntent();
    }

    private final void processIntent() throws InterruptedException {
        processOpen(getIntent());
        finish();
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [T, java.lang.Object] */
    private final void processOpen(Intent intent) throws InterruptedException {
        Context applicationContext = getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
        if (OneSignal.initWithContext(applicationContext)) {
            Ref.ObjectRef objectRef = new Ref.ObjectRef();
            objectRef.element = OneSignal.INSTANCE.getServices().getService(INotificationOpenedProcessorHMS.class);
            ThreadUtilsKt.suspendifyBlocking(new AnonymousClass1(objectRef, this, intent, null));
        }
    }

    /* JADX INFO: renamed from: com.onesignal.notifications.activities.NotificationOpenedActivityHMS$processOpen$1, reason: invalid class name */
    /* JADX INFO: compiled from: NotificationOpenedActivityHMS.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.notifications.activities.NotificationOpenedActivityHMS$processOpen$1", f = "NotificationOpenedActivityHMS.kt", i = {}, l = {82}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ Intent $intent;
        final /* synthetic */ Ref.ObjectRef<INotificationOpenedProcessorHMS> $notificationPayloadProcessorHMS;
        final /* synthetic */ NotificationOpenedActivityHMS $self;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Ref.ObjectRef<INotificationOpenedProcessorHMS> objectRef, NotificationOpenedActivityHMS notificationOpenedActivityHMS, Intent intent, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.$notificationPayloadProcessorHMS = objectRef;
            this.$self = notificationOpenedActivityHMS;
            this.$intent = intent;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass1(this.$notificationPayloadProcessorHMS, this.$self, this.$intent, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (this.$notificationPayloadProcessorHMS.element.handleHMSNotificationOpenIntent(this.$self, this.$intent, this) == coroutine_suspended) {
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
}
