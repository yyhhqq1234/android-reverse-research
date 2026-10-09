package com.onesignal.common.consistency.impl;

import com.onesignal.common.consistency.RywData;
import com.onesignal.common.consistency.models.ICondition;
import com.onesignal.common.consistency.models.IConsistencyKeyEnum;
import com.onesignal.common.consistency.models.IConsistencyManager;
import com.onesignal.core.BuildConfig;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import org.json.y8;

/* JADX INFO: compiled from: ConsistencyManager.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u000b\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u000f\u001a\u00020\u0010H\u0002J!\u0010\u0011\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00072\u0006\u0010\u0012\u001a\u00020\u0006H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0013J\u0019\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u000bH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u0016J)\u0010\u0017\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\bH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010\u001aR(\u0010\u0003\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020\u0006\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\b0\u00070\u00050\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010\t\u001a\u001a\u0012\u0004\u0012\u00020\u000b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\b0\n0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001b"}, d2 = {"Lcom/onesignal/common/consistency/impl/ConsistencyManager;", "Lcom/onesignal/common/consistency/models/IConsistencyManager;", "()V", "conditions", "", "Lkotlin/Pair;", "Lcom/onesignal/common/consistency/models/ICondition;", "Lkotlinx/coroutines/CompletableDeferred;", "Lcom/onesignal/common/consistency/RywData;", "indexedTokens", "", "", "Lcom/onesignal/common/consistency/models/IConsistencyKeyEnum;", "mutex", "Lkotlinx/coroutines/sync/Mutex;", "checkConditionsAndComplete", "", "getRywDataFromAwaitableCondition", "condition", "(Lcom/onesignal/common/consistency/models/ICondition;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "resolveConditionsWithID", "id", "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setRywData", y8.h.W, "value", "(Ljava/lang/String;Lcom/onesignal/common/consistency/models/IConsistencyKeyEnum;Lcom/onesignal/common/consistency/RywData;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ConsistencyManager implements IConsistencyManager {
    private final Mutex mutex = MutexKt.Mutex$default(false, 1, null);
    private final Map<String, Map<IConsistencyKeyEnum, RywData>> indexedTokens = new LinkedHashMap();
    private final List<Pair<ICondition, CompletableDeferred<RywData>>> conditions = new ArrayList();

    /* JADX INFO: renamed from: com.onesignal.common.consistency.impl.ConsistencyManager$getRywDataFromAwaitableCondition$1, reason: invalid class name */
    /* JADX INFO: compiled from: ConsistencyManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.common.consistency.impl.ConsistencyManager", f = "ConsistencyManager.kt", i = {0, 0, 0}, l = {100}, m = "getRywDataFromAwaitableCondition", n = {"this", "condition", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1", "L$2"})
    static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ConsistencyManager.this.getRywDataFromAwaitableCondition(null, this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.common.consistency.impl.ConsistencyManager$setRywData$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: ConsistencyManager.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.common.consistency.impl.ConsistencyManager", f = "ConsistencyManager.kt", i = {0, 0, 0, 0, 0}, l = {100}, m = "setRywData", n = {"this", "id", y8.h.W, "value", "$this$withLock_u24default$iv"}, s = {"L$0", "L$1", "L$2", "L$3", "L$4"})
    static final class C01701 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        C01701(Continuation<? super C01701> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ConsistencyManager.this.setRywData(null, null, null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.common.consistency.models.IConsistencyManager
    public Object setRywData(String str, IConsistencyKeyEnum iConsistencyKeyEnum, RywData rywData, Continuation<? super Unit> continuation) {
        C01701 c01701;
        Mutex mutex;
        ConsistencyManager consistencyManager;
        if (continuation instanceof C01701) {
            c01701 = (C01701) continuation;
            if ((c01701.label & Integer.MIN_VALUE) != 0) {
                c01701.label -= Integer.MIN_VALUE;
            } else {
                c01701 = new C01701(continuation);
            }
        } else {
            c01701 = new C01701(continuation);
        }
        Object obj = c01701.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = c01701.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            mutex = this.mutex;
            c01701.L$0 = this;
            c01701.L$1 = str;
            c01701.L$2 = iConsistencyKeyEnum;
            c01701.L$3 = rywData;
            c01701.L$4 = mutex;
            c01701.label = 1;
            if (mutex.lock(null, c01701) == coroutine_suspended) {
                return coroutine_suspended;
            }
            consistencyManager = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = (Mutex) c01701.L$4;
            rywData = (RywData) c01701.L$3;
            iConsistencyKeyEnum = (IConsistencyKeyEnum) c01701.L$2;
            String str2 = (String) c01701.L$1;
            consistencyManager = (ConsistencyManager) c01701.L$0;
            ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            str = str2;
        }
        try {
            Map<String, Map<IConsistencyKeyEnum, RywData>> map = consistencyManager.indexedTokens;
            LinkedHashMap linkedHashMap = map.get(str);
            if (linkedHashMap == null) {
                linkedHashMap = new LinkedHashMap();
                map.put(str, linkedHashMap);
            }
            linkedHashMap.put(iConsistencyKeyEnum, rywData);
            consistencyManager.checkConditionsAndComplete();
            Unit unit = Unit.INSTANCE;
            return Unit.INSTANCE;
        } finally {
            mutex.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    @Override // com.onesignal.common.consistency.models.IConsistencyManager
    public Object getRywDataFromAwaitableCondition(ICondition iCondition, Continuation<? super CompletableDeferred<RywData>> continuation) {
        AnonymousClass1 anonymousClass1;
        Mutex mutex;
        ConsistencyManager consistencyManager;
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
            mutex = this.mutex;
            anonymousClass1.L$0 = this;
            anonymousClass1.L$1 = iCondition;
            anonymousClass1.L$2 = mutex;
            anonymousClass1.label = 1;
            if (mutex.lock(null, anonymousClass1) == coroutine_suspended) {
                return coroutine_suspended;
            }
            consistencyManager = this;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Mutex mutex2 = (Mutex) anonymousClass1.L$2;
            ICondition iCondition2 = (ICondition) anonymousClass1.L$1;
            consistencyManager = (ConsistencyManager) anonymousClass1.L$0;
            ResultKt.throwOnFailure(obj);
            mutex = mutex2;
            iCondition = iCondition2;
        }
        try {
            CompletableDeferred completableDeferredCompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
            consistencyManager.conditions.add(new Pair<>(iCondition, completableDeferredCompletableDeferred$default));
            consistencyManager.checkConditionsAndComplete();
            return completableDeferredCompletableDeferred$default;
        } finally {
            mutex.unlock(null);
        }
    }

    @Override // com.onesignal.common.consistency.models.IConsistencyManager
    public Object resolveConditionsWithID(String str, Continuation<? super Unit> continuation) {
        ArrayList arrayList = new ArrayList();
        for (Pair<ICondition, CompletableDeferred<RywData>> pair : this.conditions) {
            ICondition iConditionComponent1 = pair.component1();
            CompletableDeferred<RywData> completableDeferredComponent2 = pair.component2();
            if (Intrinsics.areEqual(iConditionComponent1.getId(), str) && !completableDeferredComponent2.isCompleted()) {
                completableDeferredComponent2.complete(null);
            }
            arrayList.add(new Pair(iConditionComponent1, completableDeferredComponent2));
        }
        this.conditions.removeAll(arrayList);
        return Unit.INSTANCE;
    }

    private final void checkConditionsAndComplete() {
        ArrayList arrayList = new ArrayList();
        for (Pair<ICondition, CompletableDeferred<RywData>> pair : this.conditions) {
            ICondition iConditionComponent1 = pair.component1();
            CompletableDeferred<RywData> completableDeferredComponent2 = pair.component2();
            if (iConditionComponent1.isMet(this.indexedTokens)) {
                RywData rywData = iConditionComponent1.getRywData(this.indexedTokens);
                if (!completableDeferredComponent2.isCompleted()) {
                    completableDeferredComponent2.complete(rywData);
                }
                arrayList.add(new Pair(iConditionComponent1, completableDeferredComponent2));
            }
        }
        this.conditions.removeAll(arrayList);
    }
}
