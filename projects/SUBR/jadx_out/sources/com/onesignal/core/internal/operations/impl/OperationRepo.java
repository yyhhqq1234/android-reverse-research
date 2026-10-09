package com.onesignal.core.internal.operations.impl;

import com.google.android.gms.ads.RequestConfiguration;
import com.onesignal.common.modeling.IModelStore;
import com.onesignal.common.threading.WaiterWithValue;
import com.onesignal.core.BuildConfig;
import com.onesignal.core.internal.config.ConfigModelStore;
import com.onesignal.core.internal.operations.ExecutionResponse;
import com.onesignal.core.internal.operations.ExecutionResult;
import com.onesignal.core.internal.operations.GroupComparisonType;
import com.onesignal.core.internal.operations.IOperationExecutor;
import com.onesignal.core.internal.operations.IOperationRepo;
import com.onesignal.core.internal.operations.Operation;
import com.onesignal.core.internal.startup.IStartableService;
import com.onesignal.core.internal.time.ITime;
import com.onesignal.debug.LogLevel;
import com.onesignal.debug.internal.logging.Logging;
import com.onesignal.user.internal.operations.impl.states.NewRecordsState;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.reflect.KClass;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.ThreadPoolDispatcherKt;
import kotlinx.coroutines.TimeoutKt;
import org.json.y8;

/* JADX INFO: compiled from: OperationRepo.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b \b\u0000\u0018\u00002\u00020\u00012\u00020\u0002:\u0002KLB3\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r¢\u0006\u0002\u0010\u000eJ\u0011\u0010'\u001a\u00020\u001bH\u0096@ø\u0001\u0000¢\u0006\u0002\u0010(J \u0010)\u001a\u00020\u001d\"\b\b\u0000\u0010**\u00020+2\f\u0010,\u001a\b\u0012\u0004\u0012\u0002H*0-H\u0016J#\u0010.\u001a\u00020\u001b2\u0006\u0010/\u001a\u00020\u00122\b\u00100\u001a\u0004\u0018\u00010\u0012H\u0086@ø\u0001\u0000¢\u0006\u0002\u00101J\u0018\u00102\u001a\u00020\u001b2\u0006\u00103\u001a\u00020+2\u0006\u00104\u001a\u00020\u001dH\u0016J!\u00105\u001a\u00020\u001d2\u0006\u00103\u001a\u00020+2\u0006\u00104\u001a\u00020\u001dH\u0096@ø\u0001\u0000¢\u0006\u0002\u00106J!\u00107\u001a\u00020\u001b2\f\u00108\u001a\b\u0012\u0004\u0012\u00020 0\u0004H\u0080@ø\u0001\u0000¢\u0006\u0004\b9\u0010:J\b\u0010;\u001a\u00020\u001bH\u0016J\u0016\u0010<\u001a\b\u0012\u0004\u0012\u00020 0\u00042\u0006\u0010=\u001a\u00020 H\u0002J\u001d\u0010>\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u00042\u0006\u0010?\u001a\u00020\u0012H\u0000¢\u0006\u0002\b@J1\u0010A\u001a\u00020\u001b2\u0006\u0010B\u001a\u00020 2\u0006\u00104\u001a\u00020\u001d2\u0006\u0010C\u001a\u00020\u001d2\n\b\u0002\u0010D\u001a\u0004\u0018\u00010\u0012H\u0002¢\u0006\u0002\u0010EJ\r\u0010F\u001a\u00020\u001bH\u0000¢\u0006\u0002\bGJ\u0011\u0010H\u001a\u00020\u001bH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010(J\b\u0010I\u001a\u00020\u001bH\u0016J\u0011\u0010J\u001a\u00020\u001bH\u0082@ø\u0001\u0000¢\u0006\u0002\u0010(R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u00020\u00128BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00050\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020 0\u001fX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0014\u0010#\u001a\b\u0012\u0004\u0012\u00020%0$X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010&\u001a\b\u0012\u0004\u0012\u00020%0$X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006M"}, d2 = {"Lcom/onesignal/core/internal/operations/impl/OperationRepo;", "Lcom/onesignal/core/internal/operations/IOperationRepo;", "Lcom/onesignal/core/internal/startup/IStartableService;", "executors", "", "Lcom/onesignal/core/internal/operations/IOperationExecutor;", "_operationModelStore", "Lcom/onesignal/core/internal/operations/impl/OperationModelStore;", "_configModelStore", "Lcom/onesignal/core/internal/config/ConfigModelStore;", "_time", "Lcom/onesignal/core/internal/time/ITime;", "_newRecordState", "Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;", "(Ljava/util/List;Lcom/onesignal/core/internal/operations/impl/OperationModelStore;Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/core/internal/time/ITime;Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;)V", "coroutineScope", "Lkotlinx/coroutines/CoroutineScope;", "enqueueIntoBucket", "", "executeBucket", "getExecuteBucket", "()I", "executorsMap", "", "", "initialized", "Lkotlinx/coroutines/CompletableDeferred;", "", y8.h.e0, "", "queue", "", "Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;", "getQueue$com_onesignal_core", "()Ljava/util/List;", "retryWaiter", "Lcom/onesignal/common/threading/WaiterWithValue;", "Lcom/onesignal/core/internal/operations/impl/OperationRepo$LoopWaiterMessage;", "waiter", "awaitInitialized", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "containsInstanceOf", RequestConfiguration.MAX_AD_CONTENT_RATING_T, "Lcom/onesignal/core/internal/operations/Operation;", "type", "Lkotlin/reflect/KClass;", "delayBeforeNextExecution", "retries", "retryAfterSeconds", "(ILjava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "enqueue", "operation", "flush", "enqueueAndWait", "(Lcom/onesignal/core/internal/operations/Operation;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "executeOperations", "ops", "executeOperations$com_onesignal_core", "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "forceExecuteOperations", "getGroupableOperations", "startingOp", "getNextOps", "bucketFilter", "getNextOps$com_onesignal_core", "internalEnqueue", "queueItem", "addToStore", "index", "(Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;ZZLjava/lang/Integer;)V", "loadSavedOperations", "loadSavedOperations$com_onesignal_core", "processQueueForever", "start", "waitForNewOperationAndExecutionInterval", "LoopWaiterMessage", "OperationQueueItem", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class OperationRepo implements IOperationRepo, IStartableService {
    private final ConfigModelStore _configModelStore;
    private final NewRecordsState _newRecordState;
    private final OperationModelStore _operationModelStore;
    private final ITime _time;
    private CoroutineScope coroutineScope;
    private int enqueueIntoBucket;
    private final Map<String, IOperationExecutor> executorsMap;
    private final CompletableDeferred<Unit> initialized;
    private boolean paused;
    private final List<OperationQueueItem> queue;
    private final WaiterWithValue<LoopWaiterMessage> retryWaiter;
    private final WaiterWithValue<LoopWaiterMessage> waiter;

    /* JADX INFO: compiled from: OperationRepo.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[ExecutionResult.values().length];
            iArr[ExecutionResult.SUCCESS.ordinal()] = 1;
            iArr[ExecutionResult.FAIL_UNAUTHORIZED.ordinal()] = 2;
            iArr[ExecutionResult.FAIL_NORETRY.ordinal()] = 3;
            iArr[ExecutionResult.FAIL_CONFLICT.ordinal()] = 4;
            iArr[ExecutionResult.SUCCESS_STARTING_ONLY.ordinal()] = 5;
            iArr[ExecutionResult.FAIL_RETRY.ordinal()] = 6;
            iArr[ExecutionResult.FAIL_PAUSE_OPREPO.ordinal()] = 7;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: com.onesignal.core.internal.operations.impl.OperationRepo$processQueueForever$1, reason: invalid class name */
    /* JADX INFO: compiled from: OperationRepo.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.core.internal.operations.impl.OperationRepo", f = "OperationRepo.kt", i = {0, 1, 2, 3}, l = {164, 176, 179, 181}, m = "processQueueForever", n = {"this", "this", "this", "this"}, s = {"L$0", "L$0", "L$0", "L$0"})
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
            return OperationRepo.this.processQueueForever(this);
        }
    }

    /* JADX INFO: renamed from: com.onesignal.core.internal.operations.impl.OperationRepo$waitForNewOperationAndExecutionInterval$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: OperationRepo.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    @DebugMetadata(c = "com.onesignal.core.internal.operations.impl.OperationRepo", f = "OperationRepo.kt", i = {0, 0, 1, 1}, l = {208, 216}, m = "waitForNewOperationAndExecutionInterval", n = {"this", "wakeMessage", "this", "wakeMessage"}, s = {"L$0", "L$1", "L$0", "L$1"})
    static final class C01901 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;

        C01901(Continuation<? super C01901> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return OperationRepo.this.waitForNewOperationAndExecutionInterval(this);
        }
    }

    public OperationRepo(List<? extends IOperationExecutor> executors, OperationModelStore _operationModelStore, ConfigModelStore _configModelStore, ITime _time, NewRecordsState _newRecordState) {
        Intrinsics.checkNotNullParameter(executors, "executors");
        Intrinsics.checkNotNullParameter(_operationModelStore, "_operationModelStore");
        Intrinsics.checkNotNullParameter(_configModelStore, "_configModelStore");
        Intrinsics.checkNotNullParameter(_time, "_time");
        Intrinsics.checkNotNullParameter(_newRecordState, "_newRecordState");
        this._operationModelStore = _operationModelStore;
        this._configModelStore = _configModelStore;
        this._time = _time;
        this._newRecordState = _newRecordState;
        this.queue = new ArrayList();
        this.waiter = new WaiterWithValue<>();
        this.retryWaiter = new WaiterWithValue<>();
        this.coroutineScope = CoroutineScopeKt.CoroutineScope(ThreadPoolDispatcherKt.newSingleThreadContext("OpRepo"));
        this.initialized = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (IOperationExecutor iOperationExecutor : executors) {
            Iterator<String> it = iOperationExecutor.getOperations().iterator();
            while (it.hasNext()) {
                linkedHashMap.put(it.next(), iOperationExecutor);
            }
        }
        this.executorsMap = linkedHashMap;
    }

    /* JADX INFO: compiled from: OperationRepo.kt */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0002\b\f\n\u0002\u0010\u000e\n\u0000\b\u0000\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0002\u0010\nJ\b\u0010\u0014\u001a\u00020\u0015H\u0016R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u001a\u0010\t\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\f\"\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, d2 = {"Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;", "", "operation", "Lcom/onesignal/core/internal/operations/Operation;", "waiter", "Lcom/onesignal/common/threading/WaiterWithValue;", "", "bucket", "", "retries", "(Lcom/onesignal/core/internal/operations/Operation;Lcom/onesignal/common/threading/WaiterWithValue;II)V", "getBucket", "()I", "getOperation", "()Lcom/onesignal/core/internal/operations/Operation;", "getRetries", "setRetries", "(I)V", "getWaiter", "()Lcom/onesignal/common/threading/WaiterWithValue;", "toString", "", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class OperationQueueItem {
        private final int bucket;
        private final Operation operation;
        private int retries;
        private final WaiterWithValue<Boolean> waiter;

        public OperationQueueItem(Operation operation, WaiterWithValue<Boolean> waiterWithValue, int i, int i2) {
            Intrinsics.checkNotNullParameter(operation, "operation");
            this.operation = operation;
            this.waiter = waiterWithValue;
            this.bucket = i;
            this.retries = i2;
        }

        public /* synthetic */ OperationQueueItem(Operation operation, WaiterWithValue waiterWithValue, int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
            this(operation, (i3 & 2) != 0 ? null : waiterWithValue, i, (i3 & 8) != 0 ? 0 : i2);
        }

        public final Operation getOperation() {
            return this.operation;
        }

        public final WaiterWithValue<Boolean> getWaiter() {
            return this.waiter;
        }

        public final int getBucket() {
            return this.bucket;
        }

        public final int getRetries() {
            return this.retries;
        }

        public final void setRetries(int i) {
            this.retries = i;
        }

        public String toString() {
            return "bucket:" + this.bucket + ", retries:" + this.retries + ", operation:" + this.operation + '\n';
        }
    }

    /* JADX INFO: compiled from: OperationRepo.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0006\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/onesignal/core/internal/operations/impl/OperationRepo$LoopWaiterMessage;", "", "force", "", "previousWaitedTime", "", "(ZJ)V", "getForce", "()Z", "getPreviousWaitedTime", "()J", BuildConfig.LIBRARY_PACKAGE_NAME}, k = 1, mv = {1, 7, 1}, xi = 48)
    public static final class LoopWaiterMessage {
        private final boolean force;
        private final long previousWaitedTime;

        public LoopWaiterMessage(boolean z, long j) {
            this.force = z;
            this.previousWaitedTime = j;
        }

        public /* synthetic */ LoopWaiterMessage(boolean z, long j, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(z, (i & 2) != 0 ? 0L : j);
        }

        public final boolean getForce() {
            return this.force;
        }

        public final long getPreviousWaitedTime() {
            return this.previousWaitedTime;
        }
    }

    public final List<OperationQueueItem> getQueue$com_onesignal_core() {
        return this.queue;
    }

    @Override // com.onesignal.core.internal.operations.IOperationRepo
    public Object awaitInitialized(Continuation<? super Unit> continuation) {
        Object objAwait = this.initialized.await(continuation);
        return objAwait == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwait : Unit.INSTANCE;
    }

    private final int getExecuteBucket() {
        int i = this.enqueueIntoBucket;
        if (i == 0) {
            return 0;
        }
        return i - 1;
    }

    @Override // com.onesignal.core.internal.operations.IOperationRepo
    public <T extends Operation> boolean containsInstanceOf(KClass<T> type) {
        boolean z;
        Intrinsics.checkNotNullParameter(type, "type");
        synchronized (this.queue) {
            List<OperationQueueItem> list = this.queue;
            z = false;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    if (type.isInstance(((OperationQueueItem) it.next()).getOperation())) {
                        z = true;
                        break;
                    }
                }
            }
        }
        return z;
    }

    /* JADX INFO: renamed from: com.onesignal.core.internal.operations.impl.OperationRepo$start$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: OperationRepo.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.core.internal.operations.impl.OperationRepo$start$1", f = "OperationRepo.kt", i = {}, l = {101}, m = "invokeSuspend", n = {}, s = {})
    static final class C01891 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C01891(Continuation<? super C01891> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return OperationRepo.this.new C01891(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C01891) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                OperationRepo.this.loadSavedOperations$com_onesignal_core();
                this.label = 1;
                if (OperationRepo.this.processQueueForever(this) == coroutine_suspended) {
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

    @Override // com.onesignal.core.internal.startup.IStartableService
    public void start() {
        this.paused = false;
        BuildersKt__Builders_commonKt.launch$default(this.coroutineScope, null, null, new C01891(null), 3, null);
    }

    @Override // com.onesignal.core.internal.operations.IOperationRepo
    public void enqueue(Operation operation, boolean flush) {
        Intrinsics.checkNotNullParameter(operation, "operation");
        Logging.log(LogLevel.DEBUG, "OperationRepo.enqueue(operation: " + operation + ", flush: " + flush + ')');
        String string = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(string, "randomUUID().toString()");
        operation.setId(string);
        internalEnqueue$default(this, new OperationQueueItem(operation, null, this.enqueueIntoBucket, 0, 10, null), flush, true, null, 8, null);
    }

    @Override // com.onesignal.core.internal.operations.IOperationRepo
    public Object enqueueAndWait(Operation operation, boolean z, Continuation<? super Boolean> continuation) {
        Logging.log(LogLevel.DEBUG, "OperationRepo.enqueueAndWait(operation: " + operation + ", force: " + z + ')');
        String string = UUID.randomUUID().toString();
        Intrinsics.checkNotNullExpressionValue(string, "randomUUID().toString()");
        operation.setId(string);
        WaiterWithValue waiterWithValue = new WaiterWithValue();
        internalEnqueue$default(this, new OperationQueueItem(operation, waiterWithValue, this.enqueueIntoBucket, 0, 8, null), z, true, null, 8, null);
        return waiterWithValue.waitForWake(continuation);
    }

    static /* synthetic */ void internalEnqueue$default(OperationRepo operationRepo, OperationQueueItem operationQueueItem, boolean z, boolean z2, Integer num, int i, Object obj) {
        if ((i & 8) != 0) {
            num = null;
        }
        operationRepo.internalEnqueue(operationQueueItem, z, z2, num);
    }

    private final void internalEnqueue(OperationQueueItem queueItem, boolean flush, boolean addToStore, Integer index) {
        synchronized (this.queue) {
            List<OperationQueueItem> list = this.queue;
            boolean z = false;
            if (!(list instanceof Collection) || !list.isEmpty()) {
                Iterator<T> it = list.iterator();
                while (it.hasNext()) {
                    if (Intrinsics.areEqual(((OperationQueueItem) it.next()).getOperation().getId(), queueItem.getOperation().getId())) {
                        z = true;
                        break;
                    }
                }
            }
            if (z) {
                Logging.debug$default("OperationRepo: internalEnqueue - operation.id: " + queueItem.getOperation().getId() + " already exists in the queue.", null, 2, null);
                return;
            }
            if (index != null) {
                this.queue.add(index.intValue(), queueItem);
                Unit unit = Unit.INSTANCE;
            } else {
                Boolean.valueOf(this.queue.add(queueItem));
            }
            if (addToStore) {
                IModelStore.DefaultImpls.add$default(this._operationModelStore, queueItem.getOperation(), null, 2, null);
            }
            this.waiter.wake(new LoopWaiterMessage(flush, 0L));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:27:0x0071  */
    /* JADX WARN: Code duplicated, block: B:29:0x0079  */
    /* JADX WARN: Code duplicated, block: B:31:0x0094  */
    /* JADX WARN: Code duplicated, block: B:33:0x009e A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:36:0x00b5 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b3 -> B:25:0x006c). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00be -> B:40:0x00c1). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object processQueueForever(kotlin.coroutines.Continuation<? super kotlin.Unit> r11) {
        /*
            r10 = this;
            boolean r0 = r11 instanceof com.onesignal.core.internal.operations.impl.OperationRepo.AnonymousClass1
            if (r0 == 0) goto L14
            r0 = r11
            com.onesignal.core.internal.operations.impl.OperationRepo$processQueueForever$1 r0 = (com.onesignal.core.internal.operations.impl.OperationRepo.AnonymousClass1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r11 = r0.label
            int r11 = r11 - r2
            r0.label = r11
            goto L19
        L14:
            com.onesignal.core.internal.operations.impl.OperationRepo$processQueueForever$1 r0 = new com.onesignal.core.internal.operations.impl.OperationRepo$processQueueForever$1
            r0.<init>(r11)
        L19:
            java.lang.Object r11 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 4
            r4 = 3
            r5 = 2
            r6 = 1
            if (r2 == 0) goto L58
            if (r2 == r6) goto L50
            if (r2 == r5) goto L48
            if (r2 == r4) goto L40
            if (r2 != r3) goto L38
            java.lang.Object r2 = r0.L$0
            com.onesignal.core.internal.operations.impl.OperationRepo r2 = (com.onesignal.core.internal.operations.impl.OperationRepo) r2
            kotlin.ResultKt.throwOnFailure(r11)
            goto Lc1
        L38:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r0)
            throw r11
        L40:
            java.lang.Object r2 = r0.L$0
            com.onesignal.core.internal.operations.impl.OperationRepo r2 = (com.onesignal.core.internal.operations.impl.OperationRepo) r2
            kotlin.ResultKt.throwOnFailure(r11)
            goto L6c
        L48:
            java.lang.Object r2 = r0.L$0
            com.onesignal.core.internal.operations.impl.OperationRepo r2 = (com.onesignal.core.internal.operations.impl.OperationRepo) r2
            kotlin.ResultKt.throwOnFailure(r11)
            goto L9f
        L50:
            java.lang.Object r2 = r0.L$0
            com.onesignal.core.internal.operations.impl.OperationRepo r2 = (com.onesignal.core.internal.operations.impl.OperationRepo) r2
            kotlin.ResultKt.throwOnFailure(r11)
            goto L67
        L58:
            kotlin.ResultKt.throwOnFailure(r11)
            r0.L$0 = r10
            r0.label = r6
            java.lang.Object r11 = r10.waitForNewOperationAndExecutionInterval(r0)
            if (r11 != r1) goto L66
            return r1
        L66:
            r2 = r10
        L67:
            int r11 = r2.enqueueIntoBucket
            int r11 = r11 + r6
            r2.enqueueIntoBucket = r11
        L6c:
            boolean r11 = r2.paused
            r7 = 0
            if (r11 == 0) goto L79
            java.lang.String r11 = "OperationRepo is paused"
            com.onesignal.debug.internal.logging.Logging.debug$default(r11, r7, r5, r7)
            kotlin.Unit r11 = kotlin.Unit.INSTANCE
            return r11
        L79:
            int r11 = r2.getExecuteBucket()
            java.util.List r11 = r2.getNextOps$com_onesignal_core(r11)
            java.lang.StringBuilder r8 = new java.lang.StringBuilder
            java.lang.String r9 = "processQueueForever:ops:\n"
            r8.<init>(r9)
            r8.append(r11)
            java.lang.String r8 = r8.toString()
            com.onesignal.debug.internal.logging.Logging.debug$default(r8, r7, r5, r7)
            if (r11 == 0) goto Lb6
            r0.L$0 = r2
            r0.label = r5
            java.lang.Object r11 = r2.executeOperations$com_onesignal_core(r11, r0)
            if (r11 != r1) goto L9f
            return r1
        L9f:
            com.onesignal.core.internal.config.ConfigModelStore r11 = r2._configModelStore
            com.onesignal.common.modeling.Model r11 = r11.getModel()
            com.onesignal.core.internal.config.ConfigModel r11 = (com.onesignal.core.internal.config.ConfigModel) r11
            long r7 = r11.getOpRepoPostWakeDelay()
            r0.L$0 = r2
            r0.label = r4
            java.lang.Object r11 = kotlinx.coroutines.DelayKt.delay(r7, r0)
            if (r11 != r1) goto L6c
            return r1
        Lb6:
            r0.L$0 = r2
            r0.label = r3
            java.lang.Object r11 = r2.waitForNewOperationAndExecutionInterval(r0)
            if (r11 != r1) goto Lc1
            return r1
        Lc1:
            int r11 = r2.enqueueIntoBucket
            int r11 = r11 + r6
            r2.enqueueIntoBucket = r11
            goto L6c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onesignal.core.internal.operations.impl.OperationRepo.processQueueForever(kotlin.coroutines.Continuation):java.lang.Object");
    }

    @Override // com.onesignal.core.internal.operations.IOperationRepo
    public void forceExecuteOperations() {
        long j = 0;
        int i = 2;
        DefaultConstructorMarker defaultConstructorMarker = null;
        this.retryWaiter.wake(new LoopWaiterMessage(true, j, i, defaultConstructorMarker));
        this.waiter.wake(new LoopWaiterMessage(false, j, i, defaultConstructorMarker));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:23:0x008b  */
    /* JADX WARN: Code duplicated, block: B:25:0x00a1 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:27:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:28:0x00a6  */
    /* JADX WARN: Code duplicated, block: B:30:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:7:0x0014  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x009f -> B:26:0x00a2). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object waitForNewOperationAndExecutionInterval(kotlin.coroutines.Continuation<? super kotlin.Unit> r12) {
        /*
            r11 = this;
            boolean r0 = r12 instanceof com.onesignal.core.internal.operations.impl.OperationRepo.C01901
            if (r0 == 0) goto L14
            r0 = r12
            com.onesignal.core.internal.operations.impl.OperationRepo$waitForNewOperationAndExecutionInterval$1 r0 = (com.onesignal.core.internal.operations.impl.OperationRepo.C01901) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r12 = r0.label
            int r12 = r12 - r2
            r0.label = r12
            goto L19
        L14:
            com.onesignal.core.internal.operations.impl.OperationRepo$waitForNewOperationAndExecutionInterval$1 r0 = new com.onesignal.core.internal.operations.impl.OperationRepo$waitForNewOperationAndExecutionInterval$1
            r0.<init>(r12)
        L19:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L4d
            if (r2 == r4) goto L3d
            if (r2 != r3) goto L35
            java.lang.Object r2 = r0.L$1
            kotlin.jvm.internal.Ref$ObjectRef r2 = (kotlin.jvm.internal.Ref.ObjectRef) r2
            java.lang.Object r5 = r0.L$0
            com.onesignal.core.internal.operations.impl.OperationRepo r5 = (com.onesignal.core.internal.operations.impl.OperationRepo) r5
            kotlin.ResultKt.throwOnFailure(r12)
            goto La2
        L35:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L3d:
            java.lang.Object r2 = r0.L$2
            kotlin.jvm.internal.Ref$ObjectRef r2 = (kotlin.jvm.internal.Ref.ObjectRef) r2
            java.lang.Object r5 = r0.L$1
            kotlin.jvm.internal.Ref$ObjectRef r5 = (kotlin.jvm.internal.Ref.ObjectRef) r5
            java.lang.Object r6 = r0.L$0
            com.onesignal.core.internal.operations.impl.OperationRepo r6 = (com.onesignal.core.internal.operations.impl.OperationRepo) r6
            kotlin.ResultKt.throwOnFailure(r12)
            goto L68
        L4d:
            kotlin.ResultKt.throwOnFailure(r12)
            kotlin.jvm.internal.Ref$ObjectRef r2 = new kotlin.jvm.internal.Ref$ObjectRef
            r2.<init>()
            com.onesignal.common.threading.WaiterWithValue<com.onesignal.core.internal.operations.impl.OperationRepo$LoopWaiterMessage> r12 = r11.waiter
            r0.L$0 = r11
            r0.L$1 = r2
            r0.L$2 = r2
            r0.label = r4
            java.lang.Object r12 = r12.waitForWake(r0)
            if (r12 != r1) goto L66
            return r1
        L66:
            r6 = r11
            r5 = r2
        L68:
            r2.element = r12
            com.onesignal.core.internal.config.ConfigModelStore r12 = r6._configModelStore
            com.onesignal.common.modeling.Model r12 = r12.getModel()
            com.onesignal.core.internal.config.ConfigModel r12 = (com.onesignal.core.internal.config.ConfigModel) r12
            long r7 = r12.getOpRepoExecutionInterval()
            T r12 = r5.element
            com.onesignal.core.internal.operations.impl.OperationRepo$LoopWaiterMessage r12 = (com.onesignal.core.internal.operations.impl.OperationRepo.LoopWaiterMessage) r12
            long r9 = r12.getPreviousWaitedTime()
            long r7 = r7 - r9
            r2 = r5
            r5 = r6
        L81:
            T r12 = r2.element
            com.onesignal.core.internal.operations.impl.OperationRepo$LoopWaiterMessage r12 = (com.onesignal.core.internal.operations.impl.OperationRepo.LoopWaiterMessage) r12
            boolean r12 = r12.getForce()
            if (r12 != 0) goto Lb6
            com.onesignal.core.internal.operations.impl.OperationRepo$waitForNewOperationAndExecutionInterval$waitedTheFullTime$1 r12 = new com.onesignal.core.internal.operations.impl.OperationRepo$waitForNewOperationAndExecutionInterval$waitedTheFullTime$1
            r6 = 0
            r12.<init>(r2, r5, r6)
            kotlin.jvm.functions.Function2 r12 = (kotlin.jvm.functions.Function2) r12
            r0.L$0 = r5
            r0.L$1 = r2
            r0.L$2 = r6
            r0.label = r3
            java.lang.Object r12 = kotlinx.coroutines.TimeoutKt.withTimeoutOrNull(r7, r12, r0)
            if (r12 != r1) goto La2
            return r1
        La2:
            if (r12 != 0) goto La6
            r12 = 1
            goto La7
        La6:
            r12 = 0
        La7:
            if (r12 != 0) goto Lb6
            com.onesignal.core.internal.config.ConfigModelStore r12 = r5._configModelStore
            com.onesignal.common.modeling.Model r12 = r12.getModel()
            com.onesignal.core.internal.config.ConfigModel r12 = (com.onesignal.core.internal.config.ConfigModel) r12
            long r7 = r12.getOpRepoExecutionInterval()
            goto L81
        Lb6:
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onesignal.core.internal.operations.impl.OperationRepo.waitForNewOperationAndExecutionInterval(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Code duplicated, block: B:100:0x024d A[Catch: all -> 0x025e, TryCatch #8 {, blocks: (B:95:0x0223, B:96:0x0230, B:98:0x0236, B:100:0x024d, B:101:0x0253, B:102:0x0259), top: B:198:0x0223, outer: #7 }] */
    /* JADX WARN: Code duplicated, block: B:108:0x0261 A[Catch: all -> 0x03fb, TryCatch #7 {all -> 0x03fb, blocks: (B:78:0x01b5, B:79:0x01c6, B:150:0x0377, B:152:0x037d, B:153:0x037f, B:159:0x03dc, B:162:0x03df, B:163:0x03e0, B:164:0x03e1, B:81:0x01cb, B:82:0x01e4, B:88:0x0206, B:91:0x020a, B:92:0x020b, B:93:0x020c, B:94:0x0222, B:103:0x025b, B:106:0x025f, B:107:0x0260, B:108:0x0261, B:110:0x0276, B:111:0x0280, B:112:0x0282, B:124:0x02ce, B:127:0x02d2, B:128:0x02d3, B:129:0x02d4, B:130:0x02ef, B:132:0x02f5, B:133:0x030b, B:134:0x0312, B:136:0x0318, B:138:0x0324, B:139:0x032e, B:140:0x0335, B:142:0x033b, B:143:0x0351, B:144:0x0358, B:146:0x035e, B:148:0x036a, B:113:0x0283, B:114:0x0291, B:116:0x0297, B:118:0x02a8, B:119:0x02ac, B:120:0x02ba, B:122:0x02c0, B:123:0x02cc, B:83:0x01e5, B:84:0x01f2, B:86:0x01f8, B:87:0x0204, B:95:0x0223, B:96:0x0230, B:98:0x0236, B:100:0x024d, B:101:0x0253, B:102:0x0259, B:154:0x0380, B:155:0x038e, B:157:0x0394, B:158:0x03da), top: B:197:0x01b5, inners: #1, #5, #8, #9 }] */
    /* JADX WARN: Code duplicated, block: B:110:0x0276 A[Catch: all -> 0x03fb, TryCatch #7 {all -> 0x03fb, blocks: (B:78:0x01b5, B:79:0x01c6, B:150:0x0377, B:152:0x037d, B:153:0x037f, B:159:0x03dc, B:162:0x03df, B:163:0x03e0, B:164:0x03e1, B:81:0x01cb, B:82:0x01e4, B:88:0x0206, B:91:0x020a, B:92:0x020b, B:93:0x020c, B:94:0x0222, B:103:0x025b, B:106:0x025f, B:107:0x0260, B:108:0x0261, B:110:0x0276, B:111:0x0280, B:112:0x0282, B:124:0x02ce, B:127:0x02d2, B:128:0x02d3, B:129:0x02d4, B:130:0x02ef, B:132:0x02f5, B:133:0x030b, B:134:0x0312, B:136:0x0318, B:138:0x0324, B:139:0x032e, B:140:0x0335, B:142:0x033b, B:143:0x0351, B:144:0x0358, B:146:0x035e, B:148:0x036a, B:113:0x0283, B:114:0x0291, B:116:0x0297, B:118:0x02a8, B:119:0x02ac, B:120:0x02ba, B:122:0x02c0, B:123:0x02cc, B:83:0x01e5, B:84:0x01f2, B:86:0x01f8, B:87:0x0204, B:95:0x0223, B:96:0x0230, B:98:0x0236, B:100:0x024d, B:101:0x0253, B:102:0x0259, B:154:0x0380, B:155:0x038e, B:157:0x0394, B:158:0x03da), top: B:197:0x01b5, inners: #1, #5, #8, #9 }] */
    /* JADX WARN: Code duplicated, block: B:116:0x0297 A[Catch: all -> 0x02d1, TryCatch #1 {, blocks: (B:113:0x0283, B:114:0x0291, B:116:0x0297, B:118:0x02a8, B:119:0x02ac, B:120:0x02ba, B:122:0x02c0, B:123:0x02cc), top: B:188:0x0283, outer: #7 }] */
    /* JADX WARN: Code duplicated, block: B:122:0x02c0 A[Catch: all -> 0x02d1, LOOP:4: B:120:0x02ba->B:122:0x02c0, LOOP_END, TryCatch #1 {, blocks: (B:113:0x0283, B:114:0x0291, B:116:0x0297, B:118:0x02a8, B:119:0x02ac, B:120:0x02ba, B:122:0x02c0, B:123:0x02cc), top: B:188:0x0283, outer: #7 }] */
    /* JADX WARN: Code duplicated, block: B:129:0x02d4 A[Catch: all -> 0x03fb, TryCatch #7 {all -> 0x03fb, blocks: (B:78:0x01b5, B:79:0x01c6, B:150:0x0377, B:152:0x037d, B:153:0x037f, B:159:0x03dc, B:162:0x03df, B:163:0x03e0, B:164:0x03e1, B:81:0x01cb, B:82:0x01e4, B:88:0x0206, B:91:0x020a, B:92:0x020b, B:93:0x020c, B:94:0x0222, B:103:0x025b, B:106:0x025f, B:107:0x0260, B:108:0x0261, B:110:0x0276, B:111:0x0280, B:112:0x0282, B:124:0x02ce, B:127:0x02d2, B:128:0x02d3, B:129:0x02d4, B:130:0x02ef, B:132:0x02f5, B:133:0x030b, B:134:0x0312, B:136:0x0318, B:138:0x0324, B:139:0x032e, B:140:0x0335, B:142:0x033b, B:143:0x0351, B:144:0x0358, B:146:0x035e, B:148:0x036a, B:113:0x0283, B:114:0x0291, B:116:0x0297, B:118:0x02a8, B:119:0x02ac, B:120:0x02ba, B:122:0x02c0, B:123:0x02cc, B:83:0x01e5, B:84:0x01f2, B:86:0x01f8, B:87:0x0204, B:95:0x0223, B:96:0x0230, B:98:0x0236, B:100:0x024d, B:101:0x0253, B:102:0x0259, B:154:0x0380, B:155:0x038e, B:157:0x0394, B:158:0x03da), top: B:197:0x01b5, inners: #1, #5, #8, #9 }] */
    /* JADX WARN: Code duplicated, block: B:132:0x02f5 A[Catch: all -> 0x03fb, LOOP:5: B:130:0x02ef->B:132:0x02f5, LOOP_END, TryCatch #7 {all -> 0x03fb, blocks: (B:78:0x01b5, B:79:0x01c6, B:150:0x0377, B:152:0x037d, B:153:0x037f, B:159:0x03dc, B:162:0x03df, B:163:0x03e0, B:164:0x03e1, B:81:0x01cb, B:82:0x01e4, B:88:0x0206, B:91:0x020a, B:92:0x020b, B:93:0x020c, B:94:0x0222, B:103:0x025b, B:106:0x025f, B:107:0x0260, B:108:0x0261, B:110:0x0276, B:111:0x0280, B:112:0x0282, B:124:0x02ce, B:127:0x02d2, B:128:0x02d3, B:129:0x02d4, B:130:0x02ef, B:132:0x02f5, B:133:0x030b, B:134:0x0312, B:136:0x0318, B:138:0x0324, B:139:0x032e, B:140:0x0335, B:142:0x033b, B:143:0x0351, B:144:0x0358, B:146:0x035e, B:148:0x036a, B:113:0x0283, B:114:0x0291, B:116:0x0297, B:118:0x02a8, B:119:0x02ac, B:120:0x02ba, B:122:0x02c0, B:123:0x02cc, B:83:0x01e5, B:84:0x01f2, B:86:0x01f8, B:87:0x0204, B:95:0x0223, B:96:0x0230, B:98:0x0236, B:100:0x024d, B:101:0x0253, B:102:0x0259, B:154:0x0380, B:155:0x038e, B:157:0x0394, B:158:0x03da), top: B:197:0x01b5, inners: #1, #5, #8, #9 }] */
    /* JADX WARN: Code duplicated, block: B:136:0x0318 A[Catch: all -> 0x03fb, TryCatch #7 {all -> 0x03fb, blocks: (B:78:0x01b5, B:79:0x01c6, B:150:0x0377, B:152:0x037d, B:153:0x037f, B:159:0x03dc, B:162:0x03df, B:163:0x03e0, B:164:0x03e1, B:81:0x01cb, B:82:0x01e4, B:88:0x0206, B:91:0x020a, B:92:0x020b, B:93:0x020c, B:94:0x0222, B:103:0x025b, B:106:0x025f, B:107:0x0260, B:108:0x0261, B:110:0x0276, B:111:0x0280, B:112:0x0282, B:124:0x02ce, B:127:0x02d2, B:128:0x02d3, B:129:0x02d4, B:130:0x02ef, B:132:0x02f5, B:133:0x030b, B:134:0x0312, B:136:0x0318, B:138:0x0324, B:139:0x032e, B:140:0x0335, B:142:0x033b, B:143:0x0351, B:144:0x0358, B:146:0x035e, B:148:0x036a, B:113:0x0283, B:114:0x0291, B:116:0x0297, B:118:0x02a8, B:119:0x02ac, B:120:0x02ba, B:122:0x02c0, B:123:0x02cc, B:83:0x01e5, B:84:0x01f2, B:86:0x01f8, B:87:0x0204, B:95:0x0223, B:96:0x0230, B:98:0x0236, B:100:0x024d, B:101:0x0253, B:102:0x0259, B:154:0x0380, B:155:0x038e, B:157:0x0394, B:158:0x03da), top: B:197:0x01b5, inners: #1, #5, #8, #9 }] */
    /* JADX WARN: Code duplicated, block: B:139:0x032e A[Catch: all -> 0x03fb, TryCatch #7 {all -> 0x03fb, blocks: (B:78:0x01b5, B:79:0x01c6, B:150:0x0377, B:152:0x037d, B:153:0x037f, B:159:0x03dc, B:162:0x03df, B:163:0x03e0, B:164:0x03e1, B:81:0x01cb, B:82:0x01e4, B:88:0x0206, B:91:0x020a, B:92:0x020b, B:93:0x020c, B:94:0x0222, B:103:0x025b, B:106:0x025f, B:107:0x0260, B:108:0x0261, B:110:0x0276, B:111:0x0280, B:112:0x0282, B:124:0x02ce, B:127:0x02d2, B:128:0x02d3, B:129:0x02d4, B:130:0x02ef, B:132:0x02f5, B:133:0x030b, B:134:0x0312, B:136:0x0318, B:138:0x0324, B:139:0x032e, B:140:0x0335, B:142:0x033b, B:143:0x0351, B:144:0x0358, B:146:0x035e, B:148:0x036a, B:113:0x0283, B:114:0x0291, B:116:0x0297, B:118:0x02a8, B:119:0x02ac, B:120:0x02ba, B:122:0x02c0, B:123:0x02cc, B:83:0x01e5, B:84:0x01f2, B:86:0x01f8, B:87:0x0204, B:95:0x0223, B:96:0x0230, B:98:0x0236, B:100:0x024d, B:101:0x0253, B:102:0x0259, B:154:0x0380, B:155:0x038e, B:157:0x0394, B:158:0x03da), top: B:197:0x01b5, inners: #1, #5, #8, #9 }] */
    /* JADX WARN: Code duplicated, block: B:142:0x033b A[Catch: all -> 0x03fb, LOOP:7: B:140:0x0335->B:142:0x033b, LOOP_END, TryCatch #7 {all -> 0x03fb, blocks: (B:78:0x01b5, B:79:0x01c6, B:150:0x0377, B:152:0x037d, B:153:0x037f, B:159:0x03dc, B:162:0x03df, B:163:0x03e0, B:164:0x03e1, B:81:0x01cb, B:82:0x01e4, B:88:0x0206, B:91:0x020a, B:92:0x020b, B:93:0x020c, B:94:0x0222, B:103:0x025b, B:106:0x025f, B:107:0x0260, B:108:0x0261, B:110:0x0276, B:111:0x0280, B:112:0x0282, B:124:0x02ce, B:127:0x02d2, B:128:0x02d3, B:129:0x02d4, B:130:0x02ef, B:132:0x02f5, B:133:0x030b, B:134:0x0312, B:136:0x0318, B:138:0x0324, B:139:0x032e, B:140:0x0335, B:142:0x033b, B:143:0x0351, B:144:0x0358, B:146:0x035e, B:148:0x036a, B:113:0x0283, B:114:0x0291, B:116:0x0297, B:118:0x02a8, B:119:0x02ac, B:120:0x02ba, B:122:0x02c0, B:123:0x02cc, B:83:0x01e5, B:84:0x01f2, B:86:0x01f8, B:87:0x0204, B:95:0x0223, B:96:0x0230, B:98:0x0236, B:100:0x024d, B:101:0x0253, B:102:0x0259, B:154:0x0380, B:155:0x038e, B:157:0x0394, B:158:0x03da), top: B:197:0x01b5, inners: #1, #5, #8, #9 }] */
    /* JADX WARN: Code duplicated, block: B:146:0x035e A[Catch: all -> 0x03fb, TryCatch #7 {all -> 0x03fb, blocks: (B:78:0x01b5, B:79:0x01c6, B:150:0x0377, B:152:0x037d, B:153:0x037f, B:159:0x03dc, B:162:0x03df, B:163:0x03e0, B:164:0x03e1, B:81:0x01cb, B:82:0x01e4, B:88:0x0206, B:91:0x020a, B:92:0x020b, B:93:0x020c, B:94:0x0222, B:103:0x025b, B:106:0x025f, B:107:0x0260, B:108:0x0261, B:110:0x0276, B:111:0x0280, B:112:0x0282, B:124:0x02ce, B:127:0x02d2, B:128:0x02d3, B:129:0x02d4, B:130:0x02ef, B:132:0x02f5, B:133:0x030b, B:134:0x0312, B:136:0x0318, B:138:0x0324, B:139:0x032e, B:140:0x0335, B:142:0x033b, B:143:0x0351, B:144:0x0358, B:146:0x035e, B:148:0x036a, B:113:0x0283, B:114:0x0291, B:116:0x0297, B:118:0x02a8, B:119:0x02ac, B:120:0x02ba, B:122:0x02c0, B:123:0x02cc, B:83:0x01e5, B:84:0x01f2, B:86:0x01f8, B:87:0x0204, B:95:0x0223, B:96:0x0230, B:98:0x0236, B:100:0x024d, B:101:0x0253, B:102:0x0259, B:154:0x0380, B:155:0x038e, B:157:0x0394, B:158:0x03da), top: B:197:0x01b5, inners: #1, #5, #8, #9 }] */
    /* JADX WARN: Code duplicated, block: B:152:0x037d A[Catch: all -> 0x03fb, TryCatch #7 {all -> 0x03fb, blocks: (B:78:0x01b5, B:79:0x01c6, B:150:0x0377, B:152:0x037d, B:153:0x037f, B:159:0x03dc, B:162:0x03df, B:163:0x03e0, B:164:0x03e1, B:81:0x01cb, B:82:0x01e4, B:88:0x0206, B:91:0x020a, B:92:0x020b, B:93:0x020c, B:94:0x0222, B:103:0x025b, B:106:0x025f, B:107:0x0260, B:108:0x0261, B:110:0x0276, B:111:0x0280, B:112:0x0282, B:124:0x02ce, B:127:0x02d2, B:128:0x02d3, B:129:0x02d4, B:130:0x02ef, B:132:0x02f5, B:133:0x030b, B:134:0x0312, B:136:0x0318, B:138:0x0324, B:139:0x032e, B:140:0x0335, B:142:0x033b, B:143:0x0351, B:144:0x0358, B:146:0x035e, B:148:0x036a, B:113:0x0283, B:114:0x0291, B:116:0x0297, B:118:0x02a8, B:119:0x02ac, B:120:0x02ba, B:122:0x02c0, B:123:0x02cc, B:83:0x01e5, B:84:0x01f2, B:86:0x01f8, B:87:0x0204, B:95:0x0223, B:96:0x0230, B:98:0x0236, B:100:0x024d, B:101:0x0253, B:102:0x0259, B:154:0x0380, B:155:0x038e, B:157:0x0394, B:158:0x03da), top: B:197:0x01b5, inners: #1, #5, #8, #9 }] */
    /* JADX WARN: Code duplicated, block: B:157:0x0394 A[Catch: all -> 0x03de, LOOP:0: B:155:0x038e->B:157:0x0394, LOOP_END, TryCatch #9 {, blocks: (B:154:0x0380, B:155:0x038e, B:157:0x0394, B:158:0x03da), top: B:200:0x0380, outer: #7 }] */
    /* JADX WARN: Code duplicated, block: B:166:0x03fa A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:177:0x0439 A[LOOP:9: B:175:0x0433->B:177:0x0439, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:181:0x0459  */
    /* JADX WARN: Code duplicated, block: B:188:0x0283 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:194:0x01e5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:198:0x0223 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:200:0x0380 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:202:0x0194 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:208:0x0253 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:210:0x02a8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:212:0x0291 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:217:0x0324 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:219:0x0312 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:223:0x0375 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:224:0x036a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:230:0x0465 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:232:0x0453 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:67:0x019f A[Catch: all -> 0x01ae, TryCatch #10 {, blocks: (B:65:0x0194, B:67:0x019f, B:68:0x01a9), top: B:202:0x0194, outer: #6 }] */
    /* JADX WARN: Code duplicated, block: B:7:0x001c  */
    /* JADX WARN: Code duplicated, block: B:80:0x01c9  */
    /* JADX WARN: Code duplicated, block: B:81:0x01cb A[Catch: all -> 0x03fb, TryCatch #7 {all -> 0x03fb, blocks: (B:78:0x01b5, B:79:0x01c6, B:150:0x0377, B:152:0x037d, B:153:0x037f, B:159:0x03dc, B:162:0x03df, B:163:0x03e0, B:164:0x03e1, B:81:0x01cb, B:82:0x01e4, B:88:0x0206, B:91:0x020a, B:92:0x020b, B:93:0x020c, B:94:0x0222, B:103:0x025b, B:106:0x025f, B:107:0x0260, B:108:0x0261, B:110:0x0276, B:111:0x0280, B:112:0x0282, B:124:0x02ce, B:127:0x02d2, B:128:0x02d3, B:129:0x02d4, B:130:0x02ef, B:132:0x02f5, B:133:0x030b, B:134:0x0312, B:136:0x0318, B:138:0x0324, B:139:0x032e, B:140:0x0335, B:142:0x033b, B:143:0x0351, B:144:0x0358, B:146:0x035e, B:148:0x036a, B:113:0x0283, B:114:0x0291, B:116:0x0297, B:118:0x02a8, B:119:0x02ac, B:120:0x02ba, B:122:0x02c0, B:123:0x02cc, B:83:0x01e5, B:84:0x01f2, B:86:0x01f8, B:87:0x0204, B:95:0x0223, B:96:0x0230, B:98:0x0236, B:100:0x024d, B:101:0x0253, B:102:0x0259, B:154:0x0380, B:155:0x038e, B:157:0x0394, B:158:0x03da), top: B:197:0x01b5, inners: #1, #5, #8, #9 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x01f8 A[Catch: all -> 0x0209, LOOP:1: B:84:0x01f2->B:86:0x01f8, LOOP_END, TryCatch #5 {, blocks: (B:83:0x01e5, B:84:0x01f2, B:86:0x01f8, B:87:0x0204), top: B:194:0x01e5, outer: #7 }] */
    /* JADX WARN: Code duplicated, block: B:93:0x020c A[Catch: all -> 0x03fb, TryCatch #7 {all -> 0x03fb, blocks: (B:78:0x01b5, B:79:0x01c6, B:150:0x0377, B:152:0x037d, B:153:0x037f, B:159:0x03dc, B:162:0x03df, B:163:0x03e0, B:164:0x03e1, B:81:0x01cb, B:82:0x01e4, B:88:0x0206, B:91:0x020a, B:92:0x020b, B:93:0x020c, B:94:0x0222, B:103:0x025b, B:106:0x025f, B:107:0x0260, B:108:0x0261, B:110:0x0276, B:111:0x0280, B:112:0x0282, B:124:0x02ce, B:127:0x02d2, B:128:0x02d3, B:129:0x02d4, B:130:0x02ef, B:132:0x02f5, B:133:0x030b, B:134:0x0312, B:136:0x0318, B:138:0x0324, B:139:0x032e, B:140:0x0335, B:142:0x033b, B:143:0x0351, B:144:0x0358, B:146:0x035e, B:148:0x036a, B:113:0x0283, B:114:0x0291, B:116:0x0297, B:118:0x02a8, B:119:0x02ac, B:120:0x02ba, B:122:0x02c0, B:123:0x02cc, B:83:0x01e5, B:84:0x01f2, B:86:0x01f8, B:87:0x0204, B:95:0x0223, B:96:0x0230, B:98:0x0236, B:100:0x024d, B:101:0x0253, B:102:0x0259, B:154:0x0380, B:155:0x038e, B:157:0x0394, B:158:0x03da), top: B:197:0x01b5, inners: #1, #5, #8, #9 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x0236 A[Catch: all -> 0x025e, TryCatch #8 {, blocks: (B:95:0x0223, B:96:0x0230, B:98:0x0236, B:100:0x024d, B:101:0x0253, B:102:0x0259), top: B:198:0x0223, outer: #7 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:129:0x02d4, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:81:0x01cb, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:93:0x020c, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v14, types: [com.onesignal.core.internal.operations.impl.OperationRepo] */
    /* JADX WARN: Type inference failed for: r15v16, types: [com.onesignal.core.internal.operations.impl.OperationRepo] */
    /* JADX WARN: Type inference failed for: r15v17 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10 */
    /* JADX WARN: Type inference failed for: r3v11, types: [com.onesignal.core.internal.operations.impl.OperationRepo, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13, types: [com.onesignal.core.internal.operations.impl.OperationRepo, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v3, types: [com.onesignal.core.internal.operations.impl.OperationRepo] */
    /* JADX WARN: Type inference failed for: r3v5 */
    public final Object executeOperations$com_onesignal_core(List<OperationQueueItem> list, Continuation<? super Unit> continuation) {
        OperationRepo$executeOperations$1 operationRepo$executeOperations$1;
        List<OperationQueueItem> list2;
        Iterator it;
        Iterator it2;
        WaiterWithValue<Boolean> waiter;
        ArrayList arrayList;
        OperationQueueItem operationQueueItem;
        ExecutionResponse executionResponse;
        ?? r15;
        long j;
        Ref.IntRef intRef;
        Iterator it3;
        Iterator it4;
        WaiterWithValue<Boolean> waiter2;
        Iterator it5;
        Iterator it6;
        WaiterWithValue<Boolean> waiter3;
        WaiterWithValue<Boolean> waiter4;
        ArrayList arrayList2;
        Iterator it7;
        Iterator it8;
        int i;
        Integer retryAfterSeconds;
        List<OperationQueueItem> list3 = list;
        ?? r3 = "Could not find executor for operation ";
        if (continuation instanceof OperationRepo$executeOperations$1) {
            operationRepo$executeOperations$1 = (OperationRepo$executeOperations$1) continuation;
            if ((operationRepo$executeOperations$1.label & Integer.MIN_VALUE) != 0) {
                operationRepo$executeOperations$1.label -= Integer.MIN_VALUE;
            } else {
                operationRepo$executeOperations$1 = new OperationRepo$executeOperations$1(this, continuation);
            }
        } else {
            operationRepo$executeOperations$1 = new OperationRepo$executeOperations$1(this, continuation);
        }
        Object obj = operationRepo$executeOperations$1.result;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = operationRepo$executeOperations$1.label;
        try {
            try {
                if (i2 != 0) {
                    if (i2 == 1) {
                        List<? extends Operation> list4 = (List) operationRepo$executeOperations$1.L$3;
                        OperationQueueItem operationQueueItem2 = (OperationQueueItem) operationRepo$executeOperations$1.L$2;
                        List<OperationQueueItem> list5 = (List) operationRepo$executeOperations$1.L$1;
                        OperationRepo operationRepo = (OperationRepo) operationRepo$executeOperations$1.L$0;
                        try {
                            ResultKt.throwOnFailure(obj);
                            operationQueueItem = operationQueueItem2;
                            r3 = operationRepo;
                            arrayList = list4;
                            list3 = list5;
                        } catch (Throwable th) {
                            th = th;
                            list2 = list5;
                            r3 = operationRepo;
                            Logging.log(LogLevel.ERROR, "Error attempting to execute operation: " + list2, th);
                            List<OperationQueueItem> list6 = list2;
                            it = list6.iterator();
                            while (it.hasNext()) {
                                IModelStore.DefaultImpls.remove$default(r3._operationModelStore, ((OperationQueueItem) it.next()).getOperation().getId(), null, 2, null);
                            }
                            it2 = list6.iterator();
                            while (it2.hasNext()) {
                                waiter = ((OperationQueueItem) it2.next()).getWaiter();
                                if (waiter != null) {
                                    waiter.wake(Boxing.boxBoolean(false));
                                    Unit unit = Unit.INSTANCE;
                                }
                            }
                            return Unit.INSTANCE;
                        }
                    } else if (i2 == 2) {
                        j = operationRepo$executeOperations$1.J$0;
                        executionResponse = (ExecutionResponse) operationRepo$executeOperations$1.L$4;
                        arrayList = (List) operationRepo$executeOperations$1.L$3;
                        operationQueueItem = (OperationQueueItem) operationRepo$executeOperations$1.L$2;
                        list2 = (List) operationRepo$executeOperations$1.L$1;
                        r15 = (OperationRepo) operationRepo$executeOperations$1.L$0;
                        try {
                            ResultKt.throwOnFailure(obj);
                            r15 = r15;
                            synchronized (r15.queue) {
                                if (!r15.queue.isEmpty()) {
                                    r15.waiter.wake(new LoopWaiterMessage(false, j));
                                }
                                Unit unit2 = Unit.INSTANCE;
                            }
                            r3 = r15;
                            intRef = new Ref.IntRef();
                            switch (WhenMappings.$EnumSwitchMapping$0[executionResponse.getResult().ordinal()]) {
                                case 1:
                                    it3 = list2.iterator();
                                    while (it3.hasNext()) {
                                        IModelStore.DefaultImpls.remove$default(r3._operationModelStore, ((OperationQueueItem) it3.next()).getOperation().getId(), null, 2, null);
                                    }
                                    it4 = list2.iterator();
                                    while (it4.hasNext()) {
                                        waiter2 = ((OperationQueueItem) it4.next()).getWaiter();
                                        if (waiter2 != null) {
                                            waiter2.wake(Boxing.boxBoolean(true));
                                            Unit unit3 = Unit.INSTANCE;
                                        }
                                    }
                                    if (executionResponse.getOperations() != null) {
                                        synchronized (r3.queue) {
                                            for (Operation operation : CollectionsKt.reversed(executionResponse.getOperations())) {
                                                String string = UUID.randomUUID().toString();
                                                Intrinsics.checkNotNullExpressionValue(string, "randomUUID().toString()");
                                                operation.setId(string);
                                                OperationQueueItem operationQueueItem3 = new OperationQueueItem(operation, null, 0, 0, 10, null);
                                                r3.queue.add(0, operationQueueItem3);
                                                IModelStore.DefaultImpls.add$default(r3._operationModelStore, 0, operationQueueItem3.getOperation(), null, 4, null);
                                            }
                                            Unit unit4 = Unit.INSTANCE;
                                        }
                                    }
                                    i = intRef.element;
                                    retryAfterSeconds = executionResponse.getRetryAfterSeconds();
                                    operationRepo$executeOperations$1.L$0 = r3;
                                    operationRepo$executeOperations$1.L$1 = list2;
                                    operationRepo$executeOperations$1.L$2 = null;
                                    operationRepo$executeOperations$1.L$3 = null;
                                    operationRepo$executeOperations$1.L$4 = null;
                                    operationRepo$executeOperations$1.label = 3;
                                    if (r3.delayBeforeNextExecution(i, retryAfterSeconds, operationRepo$executeOperations$1) == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                    break;
                                case 2:
                                case 3:
                                case 4:
                                    Logging.error$default("Operation execution failed without retry: " + arrayList, null, 2, null);
                                    it5 = list2.iterator();
                                    while (it5.hasNext()) {
                                        IModelStore.DefaultImpls.remove$default(r3._operationModelStore, ((OperationQueueItem) it5.next()).getOperation().getId(), null, 2, null);
                                    }
                                    it6 = list2.iterator();
                                    while (it6.hasNext()) {
                                        waiter3 = ((OperationQueueItem) it6.next()).getWaiter();
                                        if (waiter3 != null) {
                                            waiter3.wake(Boxing.boxBoolean(false));
                                            Unit unit5 = Unit.INSTANCE;
                                        }
                                    }
                                    if (executionResponse.getOperations() != null) {
                                        synchronized (r3.queue) {
                                            while (r7.hasNext()) {
                                                String string2 = UUID.randomUUID().toString();
                                                Intrinsics.checkNotNullExpressionValue(string2, "randomUUID().toString()");
                                                operation.setId(string2);
                                                OperationQueueItem operationQueueItem4 = new OperationQueueItem(operation, null, 0, 0, 10, null);
                                                r3.queue.add(0, operationQueueItem4);
                                                IModelStore.DefaultImpls.add$default(r3._operationModelStore, 0, operationQueueItem4.getOperation(), null, 4, null);
                                            }
                                            Unit unit6 = Unit.INSTANCE;
                                        }
                                    }
                                    i = intRef.element;
                                    retryAfterSeconds = executionResponse.getRetryAfterSeconds();
                                    operationRepo$executeOperations$1.L$0 = r3;
                                    operationRepo$executeOperations$1.L$1 = list2;
                                    operationRepo$executeOperations$1.L$2 = null;
                                    operationRepo$executeOperations$1.L$3 = null;
                                    operationRepo$executeOperations$1.L$4 = null;
                                    operationRepo$executeOperations$1.label = 3;
                                    if (r3.delayBeforeNextExecution(i, retryAfterSeconds, operationRepo$executeOperations$1) == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                    break;
                                case 5:
                                    IModelStore.DefaultImpls.remove$default(r3._operationModelStore, operationQueueItem.getOperation().getId(), null, 2, null);
                                    waiter4 = operationQueueItem.getWaiter();
                                    if (waiter4 != null) {
                                        waiter4.wake(Boxing.boxBoolean(true));
                                        Unit unit7 = Unit.INSTANCE;
                                    }
                                    synchronized (r3.queue) {
                                        arrayList2 = new ArrayList();
                                        for (Object obj2 : list2) {
                                            if (!Intrinsics.areEqual((OperationQueueItem) obj2, operationQueueItem)) {
                                                arrayList2.add(obj2);
                                            }
                                        }
                                        it7 = CollectionsKt.reversed(arrayList2).iterator();
                                        while (it7.hasNext()) {
                                            r3.queue.add(0, (OperationQueueItem) it7.next());
                                        }
                                        Unit unit8 = Unit.INSTANCE;
                                    }
                                    if (executionResponse.getOperations() != null) {
                                        synchronized (r3.queue) {
                                            while (r7.hasNext()) {
                                                String string3 = UUID.randomUUID().toString();
                                                Intrinsics.checkNotNullExpressionValue(string3, "randomUUID().toString()");
                                                operation.setId(string3);
                                                OperationQueueItem operationQueueItem5 = new OperationQueueItem(operation, null, 0, 0, 10, null);
                                                r3.queue.add(0, operationQueueItem5);
                                                IModelStore.DefaultImpls.add$default(r3._operationModelStore, 0, operationQueueItem5.getOperation(), null, 4, null);
                                            }
                                            Unit unit9 = Unit.INSTANCE;
                                        }
                                    }
                                    i = intRef.element;
                                    retryAfterSeconds = executionResponse.getRetryAfterSeconds();
                                    operationRepo$executeOperations$1.L$0 = r3;
                                    operationRepo$executeOperations$1.L$1 = list2;
                                    operationRepo$executeOperations$1.L$2 = null;
                                    operationRepo$executeOperations$1.L$3 = null;
                                    operationRepo$executeOperations$1.L$4 = null;
                                    operationRepo$executeOperations$1.label = 3;
                                    if (r3.delayBeforeNextExecution(i, retryAfterSeconds, operationRepo$executeOperations$1) == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                    break;
                                case 6:
                                    Logging.error$default("Operation execution failed, retrying: " + arrayList, null, 2, null);
                                    synchronized (r3.queue) {
                                        for (OperationQueueItem operationQueueItem6 : CollectionsKt.reversed(list2)) {
                                            operationQueueItem6.setRetries(operationQueueItem6.getRetries() + 1);
                                            if (operationQueueItem6.getRetries() > intRef.element) {
                                                intRef.element = operationQueueItem6.getRetries();
                                            }
                                            r3.queue.add(0, operationQueueItem6);
                                        }
                                        Unit unit10 = Unit.INSTANCE;
                                    }
                                    if (executionResponse.getOperations() != null) {
                                        synchronized (r3.queue) {
                                            while (r7.hasNext()) {
                                                String string4 = UUID.randomUUID().toString();
                                                Intrinsics.checkNotNullExpressionValue(string4, "randomUUID().toString()");
                                                operation.setId(string4);
                                                OperationQueueItem operationQueueItem7 = new OperationQueueItem(operation, null, 0, 0, 10, null);
                                                r3.queue.add(0, operationQueueItem7);
                                                IModelStore.DefaultImpls.add$default(r3._operationModelStore, 0, operationQueueItem7.getOperation(), null, 4, null);
                                            }
                                            Unit unit11 = Unit.INSTANCE;
                                        }
                                    }
                                    i = intRef.element;
                                    retryAfterSeconds = executionResponse.getRetryAfterSeconds();
                                    operationRepo$executeOperations$1.L$0 = r3;
                                    operationRepo$executeOperations$1.L$1 = list2;
                                    operationRepo$executeOperations$1.L$2 = null;
                                    operationRepo$executeOperations$1.L$3 = null;
                                    operationRepo$executeOperations$1.L$4 = null;
                                    operationRepo$executeOperations$1.label = 3;
                                    if (r3.delayBeforeNextExecution(i, retryAfterSeconds, operationRepo$executeOperations$1) == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                    break;
                                case 7:
                                    Logging.error$default("Operation execution failed with eventual retry, pausing the operation repo: " + arrayList, null, 2, null);
                                    r3.paused = true;
                                    synchronized (r3.queue) {
                                        it8 = CollectionsKt.reversed(list2).iterator();
                                        while (it8.hasNext()) {
                                            r3.queue.add(0, (OperationQueueItem) it8.next());
                                        }
                                        Unit unit12 = Unit.INSTANCE;
                                    }
                                    if (executionResponse.getOperations() != null) {
                                        synchronized (r3.queue) {
                                            while (r7.hasNext()) {
                                                String string5 = UUID.randomUUID().toString();
                                                Intrinsics.checkNotNullExpressionValue(string5, "randomUUID().toString()");
                                                operation.setId(string5);
                                                OperationQueueItem operationQueueItem8 = new OperationQueueItem(operation, null, 0, 0, 10, null);
                                                r3.queue.add(0, operationQueueItem8);
                                                IModelStore.DefaultImpls.add$default(r3._operationModelStore, 0, operationQueueItem8.getOperation(), null, 4, null);
                                            }
                                            Unit unit13 = Unit.INSTANCE;
                                        }
                                    }
                                    i = intRef.element;
                                    retryAfterSeconds = executionResponse.getRetryAfterSeconds();
                                    operationRepo$executeOperations$1.L$0 = r3;
                                    operationRepo$executeOperations$1.L$1 = list2;
                                    operationRepo$executeOperations$1.L$2 = null;
                                    operationRepo$executeOperations$1.L$3 = null;
                                    operationRepo$executeOperations$1.L$4 = null;
                                    operationRepo$executeOperations$1.label = 3;
                                    if (r3.delayBeforeNextExecution(i, retryAfterSeconds, operationRepo$executeOperations$1) == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                    break;
                                default:
                                    if (executionResponse.getOperations() != null) {
                                        synchronized (r3.queue) {
                                            while (r7.hasNext()) {
                                                String string6 = UUID.randomUUID().toString();
                                                Intrinsics.checkNotNullExpressionValue(string6, "randomUUID().toString()");
                                                operation.setId(string6);
                                                OperationQueueItem operationQueueItem9 = new OperationQueueItem(operation, null, 0, 0, 10, null);
                                                r3.queue.add(0, operationQueueItem9);
                                                IModelStore.DefaultImpls.add$default(r3._operationModelStore, 0, operationQueueItem9.getOperation(), null, 4, null);
                                            }
                                            Unit unit14 = Unit.INSTANCE;
                                        }
                                    }
                                    i = intRef.element;
                                    retryAfterSeconds = executionResponse.getRetryAfterSeconds();
                                    operationRepo$executeOperations$1.L$0 = r3;
                                    operationRepo$executeOperations$1.L$1 = list2;
                                    operationRepo$executeOperations$1.L$2 = null;
                                    operationRepo$executeOperations$1.L$3 = null;
                                    operationRepo$executeOperations$1.L$4 = null;
                                    operationRepo$executeOperations$1.label = 3;
                                    if (r3.delayBeforeNextExecution(i, retryAfterSeconds, operationRepo$executeOperations$1) == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                    break;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            r3 = r15;
                            Logging.log(LogLevel.ERROR, "Error attempting to execute operation: " + list2, th);
                            List<OperationQueueItem> list7 = list2;
                            it = list7.iterator();
                            while (it.hasNext()) {
                                IModelStore.DefaultImpls.remove$default(r3._operationModelStore, ((OperationQueueItem) it.next()).getOperation().getId(), null, 2, null);
                            }
                            it2 = list7.iterator();
                            while (it2.hasNext()) {
                                waiter = ((OperationQueueItem) it2.next()).getWaiter();
                                if (waiter != null) {
                                    waiter.wake(Boxing.boxBoolean(false));
                                    Unit unit15 = Unit.INSTANCE;
                                }
                            }
                            return Unit.INSTANCE;
                        }
                    } else {
                        if (i2 != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        ResultKt.throwOnFailure(obj);
                    }
                    return Unit.INSTANCE;
                }
                ResultKt.throwOnFailure(obj);
                try {
                    OperationQueueItem operationQueueItem10 = (OperationQueueItem) CollectionsKt.first((List) list);
                    IOperationExecutor iOperationExecutor = this.executorsMap.get(operationQueueItem10.getOperation().getName());
                    if (iOperationExecutor == null) {
                        throw new Exception("Could not find executor for operation " + operationQueueItem10.getOperation().getName());
                    }
                    List<OperationQueueItem> list8 = list3;
                    ArrayList arrayList3 = new ArrayList(CollectionsKt.collectionSizeOrDefault(list8, 10));
                    Iterator it9 = list8.iterator();
                    while (it9.hasNext()) {
                        arrayList3.add(((OperationQueueItem) it9.next()).getOperation());
                    }
                    arrayList = arrayList3;
                    operationRepo$executeOperations$1.L$0 = this;
                    operationRepo$executeOperations$1.L$1 = list3;
                    operationRepo$executeOperations$1.L$2 = operationQueueItem10;
                    operationRepo$executeOperations$1.L$3 = arrayList;
                    operationRepo$executeOperations$1.label = 1;
                    Object objExecute = iOperationExecutor.execute(arrayList, operationRepo$executeOperations$1);
                    if (objExecute == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    operationQueueItem = operationQueueItem10;
                    obj = objExecute;
                    r3 = this;
                } catch (Throwable th3) {
                    th = th3;
                    r3 = this;
                    list2 = list3;
                    Logging.log(LogLevel.ERROR, "Error attempting to execute operation: " + list2, th);
                    List<OperationQueueItem> list9 = list2;
                    it = list9.iterator();
                    while (it.hasNext()) {
                        IModelStore.DefaultImpls.remove$default(r3._operationModelStore, ((OperationQueueItem) it.next()).getOperation().getId(), null, 2, null);
                    }
                    it2 = list9.iterator();
                    while (it2.hasNext()) {
                        waiter = ((OperationQueueItem) it2.next()).getWaiter();
                        if (waiter != null) {
                            waiter.wake(Boxing.boxBoolean(false));
                            Unit unit16 = Unit.INSTANCE;
                        }
                    }
                    return Unit.INSTANCE;
                }
                intRef = new Ref.IntRef();
                switch (WhenMappings.$EnumSwitchMapping$0[executionResponse.getResult().ordinal()]) {
                    case 1:
                        it3 = list2.iterator();
                        while (it3.hasNext()) {
                            IModelStore.DefaultImpls.remove$default(r3._operationModelStore, ((OperationQueueItem) it3.next()).getOperation().getId(), null, 2, null);
                        }
                        it4 = list2.iterator();
                        while (it4.hasNext()) {
                            waiter2 = ((OperationQueueItem) it4.next()).getWaiter();
                            if (waiter2 != null) {
                                waiter2.wake(Boxing.boxBoolean(true));
                                Unit unit17 = Unit.INSTANCE;
                            }
                        }
                        if (executionResponse.getOperations() != null) {
                            synchronized (r3.queue) {
                                while (r7.hasNext()) {
                                    String string7 = UUID.randomUUID().toString();
                                    Intrinsics.checkNotNullExpressionValue(string7, "randomUUID().toString()");
                                    operation.setId(string7);
                                    OperationQueueItem operationQueueItem11 = new OperationQueueItem(operation, null, 0, 0, 10, null);
                                    r3.queue.add(0, operationQueueItem11);
                                    IModelStore.DefaultImpls.add$default(r3._operationModelStore, 0, operationQueueItem11.getOperation(), null, 4, null);
                                }
                                Unit unit18 = Unit.INSTANCE;
                            }
                        }
                        i = intRef.element;
                        retryAfterSeconds = executionResponse.getRetryAfterSeconds();
                        operationRepo$executeOperations$1.L$0 = r3;
                        operationRepo$executeOperations$1.L$1 = list2;
                        operationRepo$executeOperations$1.L$2 = null;
                        operationRepo$executeOperations$1.L$3 = null;
                        operationRepo$executeOperations$1.L$4 = null;
                        operationRepo$executeOperations$1.label = 3;
                        if (r3.delayBeforeNextExecution(i, retryAfterSeconds, operationRepo$executeOperations$1) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        return Unit.INSTANCE;
                    case 2:
                    case 3:
                    case 4:
                        Logging.error$default("Operation execution failed without retry: " + arrayList, null, 2, null);
                        it5 = list2.iterator();
                        while (it5.hasNext()) {
                            IModelStore.DefaultImpls.remove$default(r3._operationModelStore, ((OperationQueueItem) it5.next()).getOperation().getId(), null, 2, null);
                        }
                        it6 = list2.iterator();
                        while (it6.hasNext()) {
                            waiter3 = ((OperationQueueItem) it6.next()).getWaiter();
                            if (waiter3 != null) {
                                waiter3.wake(Boxing.boxBoolean(false));
                                Unit unit19 = Unit.INSTANCE;
                            }
                        }
                        if (executionResponse.getOperations() != null) {
                            synchronized (r3.queue) {
                                while (r7.hasNext()) {
                                    String string8 = UUID.randomUUID().toString();
                                    Intrinsics.checkNotNullExpressionValue(string8, "randomUUID().toString()");
                                    operation.setId(string8);
                                    OperationQueueItem operationQueueItem12 = new OperationQueueItem(operation, null, 0, 0, 10, null);
                                    r3.queue.add(0, operationQueueItem12);
                                    IModelStore.DefaultImpls.add$default(r3._operationModelStore, 0, operationQueueItem12.getOperation(), null, 4, null);
                                }
                                Unit unit110 = Unit.INSTANCE;
                            }
                        }
                        i = intRef.element;
                        retryAfterSeconds = executionResponse.getRetryAfterSeconds();
                        operationRepo$executeOperations$1.L$0 = r3;
                        operationRepo$executeOperations$1.L$1 = list2;
                        operationRepo$executeOperations$1.L$2 = null;
                        operationRepo$executeOperations$1.L$3 = null;
                        operationRepo$executeOperations$1.L$4 = null;
                        operationRepo$executeOperations$1.label = 3;
                        if (r3.delayBeforeNextExecution(i, retryAfterSeconds, operationRepo$executeOperations$1) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        return Unit.INSTANCE;
                    case 5:
                        IModelStore.DefaultImpls.remove$default(r3._operationModelStore, operationQueueItem.getOperation().getId(), null, 2, null);
                        waiter4 = operationQueueItem.getWaiter();
                        if (waiter4 != null) {
                            waiter4.wake(Boxing.boxBoolean(true));
                            Unit unit20 = Unit.INSTANCE;
                        }
                        synchronized (r3.queue) {
                            arrayList2 = new ArrayList();
                            while (r7.hasNext()) {
                                if (!Intrinsics.areEqual((OperationQueueItem) obj2, operationQueueItem)) {
                                    arrayList2.add(obj2);
                                }
                            }
                            it7 = CollectionsKt.reversed(arrayList2).iterator();
                            while (it7.hasNext()) {
                                r3.queue.add(0, (OperationQueueItem) it7.next());
                            }
                            Unit unit21 = Unit.INSTANCE;
                            if (executionResponse.getOperations() != null) {
                                synchronized (r3.queue) {
                                    while (r7.hasNext()) {
                                        String string9 = UUID.randomUUID().toString();
                                        Intrinsics.checkNotNullExpressionValue(string9, "randomUUID().toString()");
                                        operation.setId(string9);
                                        OperationQueueItem operationQueueItem13 = new OperationQueueItem(operation, null, 0, 0, 10, null);
                                        r3.queue.add(0, operationQueueItem13);
                                        IModelStore.DefaultImpls.add$default(r3._operationModelStore, 0, operationQueueItem13.getOperation(), null, 4, null);
                                    }
                                    Unit unit111 = Unit.INSTANCE;
                                }
                            }
                            i = intRef.element;
                            retryAfterSeconds = executionResponse.getRetryAfterSeconds();
                            operationRepo$executeOperations$1.L$0 = r3;
                            operationRepo$executeOperations$1.L$1 = list2;
                            operationRepo$executeOperations$1.L$2 = null;
                            operationRepo$executeOperations$1.L$3 = null;
                            operationRepo$executeOperations$1.L$4 = null;
                            operationRepo$executeOperations$1.label = 3;
                            if (r3.delayBeforeNextExecution(i, retryAfterSeconds, operationRepo$executeOperations$1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            return Unit.INSTANCE;
                        }
                    case 6:
                        Logging.error$default("Operation execution failed, retrying: " + arrayList, null, 2, null);
                        synchronized (r3.queue) {
                            while (r7.hasNext()) {
                                operationQueueItem6.setRetries(operationQueueItem6.getRetries() + 1);
                                if (operationQueueItem6.getRetries() > intRef.element) {
                                    intRef.element = operationQueueItem6.getRetries();
                                }
                                r3.queue.add(0, operationQueueItem6);
                            }
                            Unit unit112 = Unit.INSTANCE;
                            if (executionResponse.getOperations() != null) {
                                synchronized (r3.queue) {
                                    while (r7.hasNext()) {
                                        String string10 = UUID.randomUUID().toString();
                                        Intrinsics.checkNotNullExpressionValue(string10, "randomUUID().toString()");
                                        operation.setId(string10);
                                        OperationQueueItem operationQueueItem14 = new OperationQueueItem(operation, null, 0, 0, 10, null);
                                        r3.queue.add(0, operationQueueItem14);
                                        IModelStore.DefaultImpls.add$default(r3._operationModelStore, 0, operationQueueItem14.getOperation(), null, 4, null);
                                    }
                                    Unit unit113 = Unit.INSTANCE;
                                }
                            }
                            i = intRef.element;
                            retryAfterSeconds = executionResponse.getRetryAfterSeconds();
                            operationRepo$executeOperations$1.L$0 = r3;
                            operationRepo$executeOperations$1.L$1 = list2;
                            operationRepo$executeOperations$1.L$2 = null;
                            operationRepo$executeOperations$1.L$3 = null;
                            operationRepo$executeOperations$1.L$4 = null;
                            operationRepo$executeOperations$1.label = 3;
                            if (r3.delayBeforeNextExecution(i, retryAfterSeconds, operationRepo$executeOperations$1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            return Unit.INSTANCE;
                        }
                    case 7:
                        Logging.error$default("Operation execution failed with eventual retry, pausing the operation repo: " + arrayList, null, 2, null);
                        r3.paused = true;
                        synchronized (r3.queue) {
                            it8 = CollectionsKt.reversed(list2).iterator();
                            while (it8.hasNext()) {
                                r3.queue.add(0, (OperationQueueItem) it8.next());
                            }
                            Unit unit114 = Unit.INSTANCE;
                            if (executionResponse.getOperations() != null) {
                                synchronized (r3.queue) {
                                    while (r7.hasNext()) {
                                        String string11 = UUID.randomUUID().toString();
                                        Intrinsics.checkNotNullExpressionValue(string11, "randomUUID().toString()");
                                        operation.setId(string11);
                                        OperationQueueItem operationQueueItem15 = new OperationQueueItem(operation, null, 0, 0, 10, null);
                                        r3.queue.add(0, operationQueueItem15);
                                        IModelStore.DefaultImpls.add$default(r3._operationModelStore, 0, operationQueueItem15.getOperation(), null, 4, null);
                                    }
                                    Unit unit115 = Unit.INSTANCE;
                                }
                            }
                            i = intRef.element;
                            retryAfterSeconds = executionResponse.getRetryAfterSeconds();
                            operationRepo$executeOperations$1.L$0 = r3;
                            operationRepo$executeOperations$1.L$1 = list2;
                            operationRepo$executeOperations$1.L$2 = null;
                            operationRepo$executeOperations$1.L$3 = null;
                            operationRepo$executeOperations$1.L$4 = null;
                            operationRepo$executeOperations$1.label = 3;
                            if (r3.delayBeforeNextExecution(i, retryAfterSeconds, operationRepo$executeOperations$1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            return Unit.INSTANCE;
                        }
                    default:
                        if (executionResponse.getOperations() != null) {
                            synchronized (r3.queue) {
                                while (r7.hasNext()) {
                                    String string12 = UUID.randomUUID().toString();
                                    Intrinsics.checkNotNullExpressionValue(string12, "randomUUID().toString()");
                                    operation.setId(string12);
                                    OperationQueueItem operationQueueItem16 = new OperationQueueItem(operation, null, 0, 0, 10, null);
                                    r3.queue.add(0, operationQueueItem16);
                                    IModelStore.DefaultImpls.add$default(r3._operationModelStore, 0, operationQueueItem16.getOperation(), null, 4, null);
                                }
                                Unit unit116 = Unit.INSTANCE;
                            }
                        }
                        i = intRef.element;
                        retryAfterSeconds = executionResponse.getRetryAfterSeconds();
                        operationRepo$executeOperations$1.L$0 = r3;
                        operationRepo$executeOperations$1.L$1 = list2;
                        operationRepo$executeOperations$1.L$2 = null;
                        operationRepo$executeOperations$1.L$3 = null;
                        operationRepo$executeOperations$1.L$4 = null;
                        operationRepo$executeOperations$1.label = 3;
                        if (r3.delayBeforeNextExecution(i, retryAfterSeconds, operationRepo$executeOperations$1) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        return Unit.INSTANCE;
                }
            } catch (Throwable th4) {
                th = th4;
                Logging.log(LogLevel.ERROR, "Error attempting to execute operation: " + list2, th);
                List<OperationQueueItem> list10 = list2;
                it = list10.iterator();
                while (it.hasNext()) {
                    IModelStore.DefaultImpls.remove$default(r3._operationModelStore, ((OperationQueueItem) it.next()).getOperation().getId(), null, 2, null);
                }
                it2 = list10.iterator();
                while (it2.hasNext()) {
                    waiter = ((OperationQueueItem) it2.next()).getWaiter();
                    if (waiter != null) {
                        waiter.wake(Boxing.boxBoolean(false));
                        Unit unit117 = Unit.INSTANCE;
                    }
                }
            }
            executionResponse = (ExecutionResponse) obj;
            Logging.debug$default("OperationRepo: execute response = " + executionResponse.getResult(), null, 2, null);
            if (executionResponse.getIdTranslations() != null) {
                Iterator it10 = list3.iterator();
                while (it10.hasNext()) {
                    ((OperationQueueItem) it10.next()).getOperation().translateIds(executionResponse.getIdTranslations());
                }
                synchronized (r3.queue) {
                    Iterator it11 = r3.queue.iterator();
                    while (it11.hasNext()) {
                        ((OperationQueueItem) it11.next()).getOperation().translateIds(executionResponse.getIdTranslations());
                    }
                    Unit unit22 = Unit.INSTANCE;
                }
                Iterator it12 = executionResponse.getIdTranslations().values().iterator();
                while (it12.hasNext()) {
                    r3._newRecordState.add((String) it12.next());
                }
                long opRepoPostCreateDelay = r3._configModelStore.getModel().getOpRepoPostCreateDelay();
                operationRepo$executeOperations$1.L$0 = r3;
                operationRepo$executeOperations$1.L$1 = list3;
                operationRepo$executeOperations$1.L$2 = operationQueueItem;
                operationRepo$executeOperations$1.L$3 = arrayList;
                operationRepo$executeOperations$1.L$4 = executionResponse;
                operationRepo$executeOperations$1.J$0 = opRepoPostCreateDelay;
                operationRepo$executeOperations$1.label = 2;
                if (DelayKt.delay(opRepoPostCreateDelay, operationRepo$executeOperations$1) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                list2 = list3;
                r15 = r3;
                j = opRepoPostCreateDelay;
                synchronized (r15.queue) {
                    if (!r15.queue.isEmpty()) {
                        r15.waiter.wake(new LoopWaiterMessage(false, j));
                    }
                    Unit unit23 = Unit.INSTANCE;
                    r3 = r15;
                }
            } else {
                list2 = list3;
                r3 = r3;
            }
        } catch (Throwable th5) {
            th = th5;
            list2 = list3;
            Logging.log(LogLevel.ERROR, "Error attempting to execute operation: " + list2, th);
            List<OperationQueueItem> list11 = list2;
            it = list11.iterator();
            while (it.hasNext()) {
                IModelStore.DefaultImpls.remove$default(r3._operationModelStore, ((OperationQueueItem) it.next()).getOperation().getId(), null, 2, null);
            }
            it2 = list11.iterator();
            while (it2.hasNext()) {
                waiter = ((OperationQueueItem) it2.next()).getWaiter();
                if (waiter != null) {
                    waiter.wake(Boxing.boxBoolean(false));
                    Unit unit118 = Unit.INSTANCE;
                }
            }
            return Unit.INSTANCE;
        }
    }

    public final Object delayBeforeNextExecution(int i, Integer num, Continuation<? super Unit> continuation) {
        Logging.debug$default("retryAfterSeconds: " + num, null, 2, null);
        long jMax = Math.max(((long) i) * this._configModelStore.getModel().getOpRepoDefaultFailRetryBackoff(), (num != null ? num.intValue() : 0L) * ((long) 1000));
        if (jMax < 1) {
            return Unit.INSTANCE;
        }
        Logging.error$default("Operations being delay for: " + jMax + " ms", null, 2, null);
        Object objWithTimeoutOrNull = TimeoutKt.withTimeoutOrNull(jMax, new AnonymousClass2(null), continuation);
        return objWithTimeoutOrNull == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWithTimeoutOrNull : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.onesignal.core.internal.operations.impl.OperationRepo$delayBeforeNextExecution$2, reason: invalid class name */
    /* JADX INFO: compiled from: OperationRepo.kt */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@"}, d2 = {"Lkotlinx/coroutines/CoroutineScope;", "Lcom/onesignal/core/internal/operations/impl/OperationRepo$LoopWaiterMessage;", "<anonymous>"}, k = 3, mv = {1, 7, 1})
    @DebugMetadata(c = "com.onesignal.core.internal.operations.impl.OperationRepo$delayBeforeNextExecution$2", f = "OperationRepo.kt", i = {}, l = {344}, m = "invokeSuspend", n = {}, s = {})
    static final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super LoopWaiterMessage>, Object> {
        int label;

        AnonymousClass2(Continuation<? super AnonymousClass2> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return OperationRepo.this.new AnonymousClass2(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super LoopWaiterMessage> continuation) {
            return ((AnonymousClass2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = OperationRepo.this.retryWaiter.waitForWake(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final List<OperationQueueItem> getNextOps$com_onesignal_core(int bucketFilter) {
        List<OperationQueueItem> groupableOperations;
        Object next;
        OperationQueueItem operationQueueItem;
        synchronized (this.queue) {
            Iterator<T> it = this.queue.iterator();
            do {
                groupableOperations = null;
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                operationQueueItem = (OperationQueueItem) next;
            } while (!(operationQueueItem.getOperation().getCanStartExecute() && this._newRecordState.canAccess(operationQueueItem.getOperation().getApplyToRecordId()) && operationQueueItem.getBucket() <= bucketFilter));
            OperationQueueItem operationQueueItem2 = (OperationQueueItem) next;
            if (operationQueueItem2 != null) {
                this.queue.remove(operationQueueItem2);
                groupableOperations = getGroupableOperations(operationQueueItem2);
            }
        }
        return groupableOperations;
    }

    private final List<OperationQueueItem> getGroupableOperations(OperationQueueItem startingOp) throws Exception {
        String modifyComparisonKey;
        String modifyComparisonKey2;
        List<OperationQueueItem> listMutableListOf = CollectionsKt.mutableListOf(startingOp);
        if (startingOp.getOperation().getGroupComparisonType() == GroupComparisonType.NONE) {
            return listMutableListOf;
        }
        if (startingOp.getOperation().getGroupComparisonType() == GroupComparisonType.CREATE) {
            modifyComparisonKey = startingOp.getOperation().getCreateComparisonKey();
        } else {
            modifyComparisonKey = startingOp.getOperation().getModifyComparisonKey();
        }
        for (OperationQueueItem operationQueueItem : CollectionsKt.toList(this.queue)) {
            if (startingOp.getOperation().getGroupComparisonType() == GroupComparisonType.CREATE) {
                modifyComparisonKey2 = operationQueueItem.getOperation().getCreateComparisonKey();
            } else {
                modifyComparisonKey2 = operationQueueItem.getOperation().getModifyComparisonKey();
            }
            if (Intrinsics.areEqual(modifyComparisonKey2, "") && Intrinsics.areEqual(modifyComparisonKey, "")) {
                throw new Exception("Both comparison keys can not be blank!");
            }
            if (this._newRecordState.canAccess(operationQueueItem.getOperation().getApplyToRecordId()) && Intrinsics.areEqual(modifyComparisonKey2, modifyComparisonKey)) {
                this.queue.remove(operationQueueItem);
                listMutableListOf.add(operationQueueItem);
            }
        }
        return listMutableListOf;
    }

    public final void loadSavedOperations$com_onesignal_core() {
        this._operationModelStore.loadOperations();
        Iterator it = CollectionsKt.reversed(this._operationModelStore.list()).iterator();
        while (it.hasNext()) {
            internalEnqueue(new OperationQueueItem((Operation) it.next(), null, this.enqueueIntoBucket, 0, 10, null), false, false, 0);
        }
        this.initialized.complete(Unit.INSTANCE);
    }
}
