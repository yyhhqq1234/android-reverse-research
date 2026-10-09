package com.onesignal.session.internal;

import com.onesignal.common.threading.ThreadUtilsKt;
import com.onesignal.core.BuildConfig;
import com.onesignal.debug.LogLevel;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.session.ISessionManager;
import com.onesignal.session.internal.outcomes.IOutcomeEventsController;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SessionManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\b\u0010\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\r"}, d2 = {"Lcom/onesignal/session/internal/SessionManager;", "Lcom/onesignal/session/ISessionManager;", "_outcomeController", "Lcom/onesignal/session/internal/outcomes/IOutcomeEventsController;", "(Lcom/onesignal/session/internal/outcomes/IOutcomeEventsController;)V", "addOutcome", "", "name", "", "addOutcomeWithValue", "value", "", "addUniqueOutcome", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public class SessionManager implements ISessionManager {
    private final IOutcomeEventsController _outcomeController;

    public SessionManager(IOutcomeEventsController _outcomeController) {
        Intrinsics.checkNotNullParameter(_outcomeController, "_outcomeController");
        this._outcomeController = _outcomeController;
    }

    @Override // com.onesignal.session.ISessionManager
    public void addOutcome(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        Logging.log(LogLevel.DEBUG, "sendOutcome(name: " + name + ')');
        ThreadUtilsKt.suspendifyOnThread$default(0, new AnonymousClass1(name, null), 1, null);
    }

    /* JADX INFO: renamed from: com.onesignal.session.internal.SessionManager$addOutcome$1, reason: invalid class name */
    /* JADX INFO: compiled from: SessionManager.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.session.internal.SessionManager$addOutcome$1", f = "SessionManager.kt", i = {}, l = {16}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass1 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ String $name;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(String str, Continuation<? super AnonymousClass1> continuation) {
            super(1, continuation);
            this.$name = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return SessionManager.this.new AnonymousClass1(this.$name, continuation);
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
                if (SessionManager.this._outcomeController.sendOutcomeEvent(this.$name, this) == coroutine_suspended) {
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

    @Override // com.onesignal.session.ISessionManager
    public void addUniqueOutcome(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        Logging.log(LogLevel.DEBUG, "sendUniqueOutcome(name: " + name + ')');
        ThreadUtilsKt.suspendifyOnThread$default(0, new C03091(name, null), 1, null);
    }

    /* JADX INFO: renamed from: com.onesignal.session.internal.SessionManager$addUniqueOutcome$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SessionManager.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.session.internal.SessionManager$addUniqueOutcome$1", f = "SessionManager.kt", i = {}, l = {24}, m = "invokeSuspend", n = {}, s = {})
    static final class C03091 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ String $name;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03091(String str, Continuation<? super C03091> continuation) {
            super(1, continuation);
            this.$name = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return SessionManager.this.new C03091(this.$name, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((C03091) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (SessionManager.this._outcomeController.sendUniqueOutcomeEvent(this.$name, this) == coroutine_suspended) {
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

    @Override // com.onesignal.session.ISessionManager
    public void addOutcomeWithValue(String name, float value) {
        Intrinsics.checkNotNullParameter(name, "name");
        Logging.log(LogLevel.DEBUG, "sendOutcomeWithValue(name: " + name + ", value: " + value + ')');
        ThreadUtilsKt.suspendifyOnThread$default(0, new C03081(name, value, null), 1, null);
    }

    /* JADX INFO: renamed from: com.onesignal.session.internal.SessionManager$addOutcomeWithValue$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: SessionManager.kt */
    @Metadata(d1 = {"\u0000\u0006\n\u0002\u0010\u0002\n\u0000\u0010\u0001\u001a\u00020\u0000H\u008a@"}, d2 = {"", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.session.internal.SessionManager$addOutcomeWithValue$1", f = "SessionManager.kt", i = {}, l = {35}, m = "invokeSuspend", n = {}, s = {})
    static final class C03081 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
        final /* synthetic */ String $name;
        final /* synthetic */ float $value;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C03081(String str, float f, Continuation<? super C03081> continuation) {
            super(1, continuation);
            this.$name = str;
            this.$value = f;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return SessionManager.this.new C03081(this.$name, this.$value, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Unit> continuation) {
            return ((C03081) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                if (SessionManager.this._outcomeController.sendOutcomeEventWithValue(this.$name, this.$value, this) == coroutine_suspended) {
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
