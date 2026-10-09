package com.onesignal.common.events;

import com.onesignal.common.threading.ThreadUtilsKt;
import com.onesignal.core.BuildConfig;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: CallbackProducer.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u001a\u0010\n\u001a\u00020\u000b2\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b0\fJ\u001a\u0010\r\u001a\u00020\u000b2\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b0\fJ\u0017\u0010\u000e\u001a\u00020\u000b2\b\u0010\u000f\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0002\u0010\u0010J5\u0010\u0011\u001a\u00020\u000b2\"\u0010\u0004\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0012H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0015J5\u0010\u0016\u001a\u00020\u000b2\"\u0010\u0004\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0012H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0015R\u0012\u0010\u0004\u001a\u0004\u0018\u00018\u0000X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\t\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0017"}, d2 = {"Lcom/onesignal/common/events/CallbackProducer;", "THandler", "Lcom/onesignal/common/events/ICallbackNotifier;", "()V", "callback", "Ljava/lang/Object;", "hasCallback", "", "getHasCallback", "()Z", "fire", "", "Lkotlin/Function1;", "fireOnMain", "set", "handler", "(Ljava/lang/Object;)V", "suspendingFire", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "suspendingFireOnMain", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public class CallbackProducer<THandler> implements ICallbackNotifier<THandler> {
    private THandler callback;

    @Override // com.onesignal.common.events.ICallbackNotifier
    public boolean getHasCallback() {
        return this.callback != null;
    }

    @Override // com.onesignal.common.events.ICallbackNotifier
    public void set(THandler handler) {
        this.callback = handler;
    }

    public final void fire(Function1<? super THandler, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        THandler thandler = this.callback;
        if (thandler != null) {
            Intrinsics.checkNotNull(thandler);
            callback.invoke(thandler);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.common.events.CallbackProducer$fireOnMain$1, reason: invalid class name */
    /* JADX INFO: compiled from: CallbackProducer.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0000H\u008a@"}, d2 = {"THandler", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.common.events.CallbackProducer$fireOnMain$1", f = "CallbackProducer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<THandler, Unit> $callback;
        int label;
        final /* synthetic */ CallbackProducer<THandler> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(CallbackProducer<THandler> callbackProducer, Function1<? super THandler, Unit> function1, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.this$0 = callbackProducer;
            this.$callback = function1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return new AnonymousClass1(this.this$0, this.$callback, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            if (((CallbackProducer) this.this$0).callback != null) {
                Function1<THandler, Unit> function1 = this.$callback;
                Object obj2 = ((CallbackProducer) this.this$0).callback;
                Intrinsics.checkNotNull(obj2);
                function1.invoke((THandler) obj2);
            }
            return Unit.INSTANCE;
        }
    }

    public final void fireOnMain(Function1<? super THandler, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        ThreadUtilsKt.suspendifyOnMain(new AnonymousClass1(this, callback, null));
    }

    public final Object suspendingFire(Function2<? super THandler, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        THandler thandler = this.callback;
        if (thandler != null) {
            Intrinsics.checkNotNull(thandler);
            Object objInvoke = function2.invoke(thandler, continuation);
            return objInvoke == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objInvoke : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.onesignal.common.events.CallbackProducer$suspendingFireOnMain$2, reason: invalid class name */
    /* JADX INFO: compiled from: CallbackProducer.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"THandler", "Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.common.events.CallbackProducer$suspendingFireOnMain$2", f = "CallbackProducer.kt", i = {}, l = {75}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function2<THandler, Continuation<? super Unit>, Object> $callback;
        int label;
        final /* synthetic */ CallbackProducer<THandler> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(Function2<? super THandler, ? super Continuation<? super Unit>, ? extends Object> function2, CallbackProducer<THandler> callbackProducer, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.$callback = function2;
            this.this$0 = callbackProducer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.$callback, this.this$0, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to com.onesignal.common.events.CallbackProducer$suspendingFireOnMain$2 for r3v1 'this'  java.lang.Object
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r4) {
            /*
                r3 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r3.label
                r2 = 1
                if (r1 == 0) goto L17
                if (r1 != r2) goto Lf
                kotlin.ResultKt.throwOnFailure(r4)
                goto L2e
            Lf:
                java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r4.<init>(r0)
                throw r4
            L17:
                kotlin.ResultKt.throwOnFailure(r4)
                kotlin.jvm.functions.Function2<THandler, kotlin.coroutines.Continuation<? super kotlin.Unit>, java.lang.Object> r4 = r3.$callback
                com.onesignal.common.events.CallbackProducer<THandler> r1 = r3.this$0
                java.lang.Object r1 = com.onesignal.common.events.CallbackProducer.access$getCallback$p(r1)
                kotlin.jvm.internal.Intrinsics.checkNotNull(r1)
                r3.label = r2
                java.lang.Object r4 = r4.invoke(r1, r3)
                if (r4 != r0) goto L2e
                return r0
            L2e:
                kotlin.Unit r4 = kotlin.Unit.INSTANCE
                return r4
            */
            throw new UnsupportedOperationException("Method not decompiled: com.onesignal.common.events.CallbackProducer.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public final Object suspendingFireOnMain(Function2<? super THandler, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) throws Throwable {
        if (this.callback != null) {
            Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new AnonymousClass2(function2, this, null), continuation);
            return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
        }
        return Unit.INSTANCE;
    }
}
