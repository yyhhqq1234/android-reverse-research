package com.unity3d.services.core.domain.task;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: InitializeStateComplete.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "com.unity3d.services.core.domain.task.InitializeStateComplete", f = "InitializeStateComplete.kt", i = {}, l = {18}, m = "doWork-gIAlu-s", n = {}, s = {})
final class InitializeStateComplete$doWork$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ InitializeStateComplete this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    InitializeStateComplete$doWork$1(InitializeStateComplete initializeStateComplete, Continuation<? super InitializeStateComplete$doWork$1> continuation) {
        super(continuation);
        this.this$0 = initializeStateComplete;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        Object objM526doWorkgIAlus = this.this$0.m526doWorkgIAlus((InitializeStateComplete.Params) null, (Continuation<? super Result<Unit>>) this);
        return objM526doWorkgIAlus == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objM526doWorkgIAlus : Result.m600boximpl(objM526doWorkgIAlus);
    }
}
