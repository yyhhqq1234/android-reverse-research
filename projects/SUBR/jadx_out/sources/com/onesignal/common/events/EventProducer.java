package com.onesignal.common.events;

import android.R;
import com.google.firebase.messaging.Constants;
import com.onesignal.common.threading.ThreadUtilsKt;
import com.onesignal.core.BuildConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: EventProducer.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u001a\u0010\n\u001a\u00020\u000b2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b0\rJ\u001a\u0010\u000e\u001a\u00020\u000b2\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u000b0\rJ\u0015\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0011J\u0014\u0010\u0012\u001a\u00020\u000b2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00028\u00000\u0000J5\u0010\u0014\u001a\u00020\u000b2\"\u0010\f\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u0015H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0018J5\u0010\u0019\u001a\u00020\u000b2\"\u0010\f\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u0015H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0018J\u0015\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u0011R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\tX\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, d2 = {"Lcom/onesignal/common/events/EventProducer;", "THandler", "Lcom/onesignal/common/events/IEventNotifier;", "()V", "hasSubscribers", "", "getHasSubscribers", "()Z", "subscribers", "", "fire", "", "callback", "Lkotlin/Function1;", "fireOnMain", "subscribe", "handler", "(Ljava/lang/Object;)V", "subscribeAll", Constants.MessagePayloadKeys.FROM, "suspendingFire", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "suspendingFireOnMain", "unsubscribe", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public class EventProducer<THandler> implements IEventNotifier<THandler> {
    private final List<THandler> subscribers;

    /* JADX INFO: renamed from: com.onesignal.common.events.EventProducer$suspendingFire$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: EventProducer.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.common.events.EventProducer", f = "EventProducer.kt", i = {0}, l = {79}, m = "suspendingFire", n = {"callback"}, s = {"L$0"})
    static final class C01711 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ EventProducer<THandler> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C01711(EventProducer<THandler> eventProducer, Continuation<? super C01711> continuation) {
            super(continuation);
            this.this$0 = eventProducer;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.suspendingFire(null, this);
        }
    }

    public EventProducer() {
        List<THandler> listSynchronizedList = Collections.synchronizedList(new ArrayList());
        Intrinsics.checkNotNullExpressionValue(listSynchronizedList, "synchronizedList(mutableListOf())");
        this.subscribers = listSynchronizedList;
    }

    @Override // com.onesignal.common.events.IEventNotifier
    public boolean getHasSubscribers() {
        return CollectionsKt.any(this.subscribers);
    }

    @Override // com.onesignal.common.events.IEventNotifier
    public void subscribe(THandler handler) {
        synchronized (this.subscribers) {
            this.subscribers.add(handler);
        }
    }

    @Override // com.onesignal.common.events.IEventNotifier
    public void unsubscribe(THandler handler) {
        synchronized (this.subscribers) {
            this.subscribers.remove(handler);
        }
    }

    public final void subscribeAll(EventProducer<THandler> from) {
        Intrinsics.checkNotNullParameter(from, "from");
        synchronized (this.subscribers) {
            Iterator<THandler> it = from.subscribers.iterator();
            while (it.hasNext()) {
                subscribe(it.next());
            }
            Unit unit = Unit.INSTANCE;
        }
    }

    public final void fire(Function1<? super THandler, Unit> callback) {
        List list;
        Intrinsics.checkNotNullParameter(callback, "callback");
        synchronized (this.subscribers) {
            list = CollectionsKt.toList(this.subscribers);
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            callback.invoke((Object) it.next());
        }
    }

    /* JADX INFO: renamed from: com.onesignal.common.events.EventProducer$fireOnMain$1, reason: invalid class name */
    /* JADX INFO: compiled from: EventProducer.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0000H\u008a@"}, d2 = {"THandler", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.common.events.EventProducer$fireOnMain$1", f = "EventProducer.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ Function1<THandler, Unit> $callback;
        int label;
        final /* synthetic */ EventProducer<THandler> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass1(EventProducer<THandler> eventProducer, Function1<? super THandler, Unit> function1, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.this$0 = eventProducer;
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
            List list;
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label == 0) {
                ResultKt.throwOnFailure(obj);
                List list2 = ((EventProducer) this.this$0).subscribers;
                EventProducer<THandler> eventProducer = this.this$0;
                synchronized (list2) {
                    list = CollectionsKt.toList(((EventProducer) eventProducer).subscribers);
                }
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    this.$callback.invoke((THandler) it.next());
                }
                return Unit.INSTANCE;
            }
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
    }

    public final void fireOnMain(Function1<? super THandler, Unit> callback) {
        Intrinsics.checkNotNullParameter(callback, "callback");
        ThreadUtilsKt.suspendifyOnMain(new AnonymousClass1(this, callback, null));
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    public final Object suspendingFire(Function2<? super THandler, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) {
        C01711 c01711;
        List list;
        Function2<? super THandler, ? super Continuation<? super Unit>, ? extends Object> function3;
        Iterator it;
        if (continuation instanceof C01711) {
            c01711 = (C01711) continuation;
            if ((c01711.label & Integer.MIN_VALUE) != 0) {
                c01711.label -= Integer.MIN_VALUE;
            } else {
                c01711 = new C01711(this, continuation);
            }
        } else {
            c01711 = new C01711(this, continuation);
        }
        Object obj = c01711.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c01711.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            synchronized (this.subscribers) {
                list = CollectionsKt.toList(this.subscribers);
            }
            function3 = function2;
            it = list.iterator();
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            it = (Iterator) c01711.L$1;
            Function2<? super THandler, ? super Continuation<? super Unit>, ? extends Object> function4 = (Function2) c01711.L$0;
            ResultKt.throwOnFailure(obj);
            function3 = function4;
        }
        while (it.hasNext()) {
            R r = (Object) it.next();
            c01711.L$0 = function3;
            c01711.L$1 = it;
            c01711.label = 1;
            if (function3.invoke(r, c01711) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.onesignal.common.events.EventProducer$suspendingFireOnMain$2, reason: invalid class name */
    /* JADX INFO: compiled from: EventProducer.kt */
    @Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u0000*\u00020\u0001H\u008a@"}, d2 = {"THandler", "Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.common.events.EventProducer$suspendingFireOnMain$2", f = "EventProducer.kt", i = {}, l = {93}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ Function2<THandler, Continuation<? super Unit>, Object> $callback;
        Object L$0;
        int label;
        final /* synthetic */ EventProducer<THandler> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        AnonymousClass2(EventProducer<THandler> eventProducer, Function2<? super THandler, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
            this.this$0 = eventProducer;
            this.$callback = function2;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass2(this.this$0, this.$callback, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /*  JADX ERROR: JadxRuntimeException in pass: ModVisitor
            jadx.core.utils.exceptions.JadxRuntimeException: Can't change immutable type java.lang.Object to com.onesignal.common.events.EventProducer$suspendingFireOnMain$2 for r5v1 'this'  java.lang.Object
            	at jadx.core.dex.instructions.args.SSAVar.setType(SSAVar.java:114)
            	at jadx.core.dex.instructions.args.RegisterArg.setType(RegisterArg.java:52)
            	at jadx.core.dex.visitors.ModVisitor.removeCheckCast(ModVisitor.java:417)
            	at jadx.core.dex.visitors.ModVisitor.replaceStep(ModVisitor.java:152)
            	at jadx.core.dex.visitors.ModVisitor.visit(ModVisitor.java:96)
            */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final java.lang.Object invokeSuspend(java.lang.Object r6) {
            /*
                r5 = this;
                java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                int r1 = r5.label
                r2 = 1
                if (r1 == 0) goto L1b
                if (r1 != r2) goto L13
                java.lang.Object r1 = r5.L$0
                java.util.Iterator r1 = (java.util.Iterator) r1
                kotlin.ResultKt.throwOnFailure(r6)
                goto L37
            L13:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r0)
                throw r6
            L1b:
                kotlin.ResultKt.throwOnFailure(r6)
                com.onesignal.common.events.EventProducer<THandler> r6 = r5.this$0
                java.util.List r6 = com.onesignal.common.events.EventProducer.access$getSubscribers$p(r6)
                com.onesignal.common.events.EventProducer<THandler> r1 = r5.this$0
                monitor-enter(r6)
                java.util.List r1 = com.onesignal.common.events.EventProducer.access$getSubscribers$p(r1)     // Catch: java.lang.Throwable -> L52
                java.lang.Iterable r1 = (java.lang.Iterable) r1     // Catch: java.lang.Throwable -> L52
                java.util.List r1 = kotlin.collections.CollectionsKt.toList(r1)     // Catch: java.lang.Throwable -> L52
                monitor-exit(r6)
                java.util.Iterator r6 = r1.iterator()
                r1 = r6
            L37:
                r6 = r5
            L38:
                boolean r3 = r1.hasNext()
                if (r3 == 0) goto L4f
                java.lang.Object r3 = r1.next()
                kotlin.jvm.functions.Function2<THandler, kotlin.coroutines.Continuation<? super kotlin.Unit>, java.lang.Object> r4 = r6.$callback
                r6.L$0 = r1
                r6.label = r2
                java.lang.Object r3 = r4.invoke(r3, r6)
                if (r3 != r0) goto L38
                return r0
            L4f:
                kotlin.Unit r6 = kotlin.Unit.INSTANCE
                return r6
            L52:
                r0 = move-exception
                monitor-exit(r6)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.onesignal.common.events.EventProducer.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public final Object suspendingFireOnMain(Function2<? super THandler, ? super Continuation<? super Unit>, ? extends Object> function2, Continuation<? super Unit> continuation) throws Throwable {
        Object objWithContext = BuildersKt.withContext(Dispatchers.getMain(), new AnonymousClass2(this, function2, null), continuation);
        return objWithContext == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithContext : Unit.INSTANCE;
    }
}
