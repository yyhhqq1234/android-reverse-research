package com.onesignal.core.services;

import android.app.job.JobParameters;
import android.app.job.JobService;
import com.onesignal.OneSignal;
import com.onesignal.common.threading.ThreadUtilsKt;
import com.onesignal.core.BuildConfig;
import com.onesignal.core.internal.background.IBackgroundManager;
import com.onesignal.debug.internal.logging.Logging;
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

/* JADX INFO: compiled from: SyncJobService.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016¨\u0006\b"}, d2 = {"Lcom/onesignal/core/services/SyncJobService;", "Landroid/app/job/JobService;", "()V", "onStartJob", "", "jobParameters", "Landroid/app/job/JobParameters;", "onStopJob", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class SyncJobService extends JobService {
    /* JADX WARN: Type inference failed for: r2v2, types: [T, java.lang.Object] */
    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        Intrinsics.checkNotNullParameter(jobParameters, "jobParameters");
        if (!OneSignal.initWithContext(this)) {
            return false;
        }
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = OneSignal.INSTANCE.getServices().getService(IBackgroundManager.class);
        ThreadUtilsKt.suspendifyOnThread$default(0, new AnonymousClass1(objectRef, this, jobParameters, null), 1, null);
        return true;
    }

    /* JADX INFO: renamed from: com.onesignal.core.services.SyncJobService$onStartJob$1, reason: invalid class name */
    /* JADX INFO: compiled from: SyncJobService.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.core.services.SyncJobService$onStartJob$1", f = "SyncJobService.kt", i = {}, l = {45}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ Ref.ObjectRef<IBackgroundManager> $backgroundService;
        final /* synthetic */ JobParameters $jobParameters;
        int label;
        final /* synthetic */ SyncJobService this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(Ref.ObjectRef<IBackgroundManager> objectRef, SyncJobService syncJobService, JobParameters jobParameters, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.$backgroundService = objectRef;
            this.this$0 = syncJobService;
            this.$jobParameters = jobParameters;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass1(this.$backgroundService, this.this$0, this.$jobParameters, continuation);
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
                if (this.$backgroundService.element.runBackgroundServices(this) == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            Logging.debug$default("LollipopSyncRunnable:JobFinished needsJobReschedule: " + this.$backgroundService.element.getNeedsJobReschedule(), null, 2, null);
            boolean needsJobReschedule = this.$backgroundService.element.getNeedsJobReschedule();
            this.$backgroundService.element.setNeedsJobReschedule(false);
            this.this$0.jobFinished(this.$jobParameters, needsJobReschedule);
            return Unit.INSTANCE;
        }
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        Intrinsics.checkNotNullParameter(jobParameters, "jobParameters");
        boolean zCancelRunBackgroundServices = ((IBackgroundManager) OneSignal.INSTANCE.getServices().getService(IBackgroundManager.class)).cancelRunBackgroundServices();
        Logging.debug$default("SyncJobService onStopJob called, system conditions not available reschedule: " + zCancelRunBackgroundServices, null, 2, null);
        return zCancelRunBackgroundServices;
    }
}
