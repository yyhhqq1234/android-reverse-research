package com.onesignal.notifications.internal.generation.impl;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: NotificationGenerationWorkManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
@DebugMetadata(c = "com.onesignal.notifications.internal.generation.impl.NotificationGenerationWorkManager$NotificationGenerationWorker", f = "NotificationGenerationWorkManager.kt", i = {0}, l = {81}, m = "doWork", n = {"id"}, s = {"L$0"})
final class NotificationGenerationWorkManager$NotificationGenerationWorker$doWork$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ NotificationGenerationWorkManager.NotificationGenerationWorker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NotificationGenerationWorkManager$NotificationGenerationWorker$doWork$1(NotificationGenerationWorkManager.NotificationGenerationWorker notificationGenerationWorker, Continuation<? super NotificationGenerationWorkManager$NotificationGenerationWorker$doWork$1> continuation) {
        super(continuation);
        this.this$0 = notificationGenerationWorker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.doWork(this);
    }
}
