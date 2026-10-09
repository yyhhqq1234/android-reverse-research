.class public final Lcom/onesignal/core/internal/operations/impl/OperationRepo;
.super Ljava/lang/Object;
.source "OperationRepo.kt"

# interfaces
.implements Lcom/onesignal/core/internal/operations/IOperationRepo;
.implements Lcom/onesignal/core/internal/startup/IStartableService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;,
        Lcom/onesignal/core/internal/operations/impl/OperationRepo$LoopWaiterMessage;,
        Lcom/onesignal/core/internal/operations/impl/OperationRepo$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOperationRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OperationRepo.kt\ncom/onesignal/core/internal/operations/impl/OperationRepo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,430:1\n1743#2,3:431\n1743#2,3:434\n1549#2:437\n1620#2,3:438\n1851#2,2:441\n1851#2,2:443\n1851#2,2:445\n1851#2,2:447\n1851#2,2:449\n1851#2,2:451\n1851#2,2:453\n766#2:455\n857#2,2:456\n1851#2,2:458\n1851#2,2:460\n1851#2,2:462\n1851#2,2:464\n1851#2,2:466\n288#2,2:468\n*S KotlinDebug\n*F\n+ 1 OperationRepo.kt\ncom/onesignal/core/internal/operations/impl/OperationRepo\n*L\n92#1:431,3\n140#1:434,3\n231#1:437\n231#1:438,3\n239#1:441,2\n241#1:443,2\n243#1:445,2\n262#1:447,2\n263#1:449,2\n271#1:451,2\n272#1:453,2\n280#1:455\n280#1:456,2\n280#1:458,2\n287#1:460,2\n301#1:462,2\n324#1:464,2\n325#1:466,2\n351#1:468,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008 \u0008\u0000\u0018\u00002\u00020\u00012\u00020\u0002:\u0002KLB3\u0012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\u0011\u0010\'\u001a\u00020\u001bH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010(J \u0010)\u001a\u00020\u001d\"\u0008\u0008\u0000\u0010**\u00020+2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u0002H*0-H\u0016J#\u0010.\u001a\u00020\u001b2\u0006\u0010/\u001a\u00020\u00122\u0008\u00100\u001a\u0004\u0018\u00010\u0012H\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00101J\u0018\u00102\u001a\u00020\u001b2\u0006\u00103\u001a\u00020+2\u0006\u00104\u001a\u00020\u001dH\u0016J!\u00105\u001a\u00020\u001d2\u0006\u00103\u001a\u00020+2\u0006\u00104\u001a\u00020\u001dH\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0002\u00106J!\u00107\u001a\u00020\u001b2\u000c\u00108\u001a\u0008\u0012\u0004\u0012\u00020 0\u0004H\u0080@\u00f8\u0001\u0000\u00a2\u0006\u0004\u00089\u0010:J\u0008\u0010;\u001a\u00020\u001bH\u0016J\u0016\u0010<\u001a\u0008\u0012\u0004\u0012\u00020 0\u00042\u0006\u0010=\u001a\u00020 H\u0002J\u001d\u0010>\u001a\n\u0012\u0004\u0012\u00020 \u0018\u00010\u00042\u0006\u0010?\u001a\u00020\u0012H\u0000\u00a2\u0006\u0002\u0008@J1\u0010A\u001a\u00020\u001b2\u0006\u0010B\u001a\u00020 2\u0006\u00104\u001a\u00020\u001d2\u0006\u0010C\u001a\u00020\u001d2\n\u0008\u0002\u0010D\u001a\u0004\u0018\u00010\u0012H\u0002\u00a2\u0006\u0002\u0010EJ\r\u0010F\u001a\u00020\u001bH\u0000\u00a2\u0006\u0002\u0008GJ\u0011\u0010H\u001a\u00020\u001bH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010(J\u0008\u0010I\u001a\u00020\u001bH\u0016J\u0011\u0010J\u001a\u00020\u001bH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010(R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u00020\u00128BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00050\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020 0\u001fX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0014\u0010#\u001a\u0008\u0012\u0004\u0012\u00020%0$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u0008\u0012\u0004\u0012\u00020%0$X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006M"
    }
    d2 = {
        "Lcom/onesignal/core/internal/operations/impl/OperationRepo;",
        "Lcom/onesignal/core/internal/operations/IOperationRepo;",
        "Lcom/onesignal/core/internal/startup/IStartableService;",
        "executors",
        "",
        "Lcom/onesignal/core/internal/operations/IOperationExecutor;",
        "_operationModelStore",
        "Lcom/onesignal/core/internal/operations/impl/OperationModelStore;",
        "_configModelStore",
        "Lcom/onesignal/core/internal/config/ConfigModelStore;",
        "_time",
        "Lcom/onesignal/core/internal/time/ITime;",
        "_newRecordState",
        "Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;",
        "(Ljava/util/List;Lcom/onesignal/core/internal/operations/impl/OperationModelStore;Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/core/internal/time/ITime;Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;)V",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "enqueueIntoBucket",
        "",
        "executeBucket",
        "getExecuteBucket",
        "()I",
        "executorsMap",
        "",
        "",
        "initialized",
        "Lkotlinx/coroutines/CompletableDeferred;",
        "",
        "paused",
        "",
        "queue",
        "",
        "Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;",
        "getQueue$com_onesignal_core",
        "()Ljava/util/List;",
        "retryWaiter",
        "Lcom/onesignal/common/threading/WaiterWithValue;",
        "Lcom/onesignal/core/internal/operations/impl/OperationRepo$LoopWaiterMessage;",
        "waiter",
        "awaitInitialized",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "containsInstanceOf",
        "T",
        "Lcom/onesignal/core/internal/operations/Operation;",
        "type",
        "Lkotlin/reflect/KClass;",
        "delayBeforeNextExecution",
        "retries",
        "retryAfterSeconds",
        "(ILjava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "enqueue",
        "operation",
        "flush",
        "enqueueAndWait",
        "(Lcom/onesignal/core/internal/operations/Operation;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "executeOperations",
        "ops",
        "executeOperations$com_onesignal_core",
        "(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "forceExecuteOperations",
        "getGroupableOperations",
        "startingOp",
        "getNextOps",
        "bucketFilter",
        "getNextOps$com_onesignal_core",
        "internalEnqueue",
        "queueItem",
        "addToStore",
        "index",
        "(Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;ZZLjava/lang/Integer;)V",
        "loadSavedOperations",
        "loadSavedOperations$com_onesignal_core",
        "processQueueForever",
        "start",
        "waitForNewOperationAndExecutionInterval",
        "LoopWaiterMessage",
        "OperationQueueItem",
        "com.onesignal.core"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final _configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

.field private final _newRecordState:Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;

.field private final _operationModelStore:Lcom/onesignal/core/internal/operations/impl/OperationModelStore;

.field private final _time:Lcom/onesignal/core/internal/time/ITime;

.field private coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field private enqueueIntoBucket:I

.field private final executorsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/onesignal/core/internal/operations/IOperationExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final initialized:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private paused:Z

.field private final queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private final retryWaiter:Lcom/onesignal/common/threading/WaiterWithValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/common/threading/WaiterWithValue<",
            "Lcom/onesignal/core/internal/operations/impl/OperationRepo$LoopWaiterMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final waiter:Lcom/onesignal/common/threading/WaiterWithValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/onesignal/common/threading/WaiterWithValue<",
            "Lcom/onesignal/core/internal/operations/impl/OperationRepo$LoopWaiterMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/onesignal/core/internal/operations/impl/OperationModelStore;Lcom/onesignal/core/internal/config/ConfigModelStore;Lcom/onesignal/core/internal/time/ITime;Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/onesignal/core/internal/operations/IOperationExecutor;",
            ">;",
            "Lcom/onesignal/core/internal/operations/impl/OperationModelStore;",
            "Lcom/onesignal/core/internal/config/ConfigModelStore;",
            "Lcom/onesignal/core/internal/time/ITime;",
            "Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;",
            ")V"
        }
    .end annotation

    const-string v0, "executors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_operationModelStore"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_configModelStore"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_time"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "_newRecordState"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->_operationModelStore:Lcom/onesignal/core/internal/operations/impl/OperationModelStore;

    .line 28
    iput-object p3, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->_configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

    .line 29
    iput-object p4, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->_time:Lcom/onesignal/core/internal/time/ITime;

    .line 30
    iput-object p5, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->_newRecordState:Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;

    .line 49
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->queue:Ljava/util/List;

    .line 50
    new-instance p2, Lcom/onesignal/common/threading/WaiterWithValue;

    invoke-direct {p2}, Lcom/onesignal/common/threading/WaiterWithValue;-><init>()V

    iput-object p2, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->waiter:Lcom/onesignal/common/threading/WaiterWithValue;

    .line 51
    new-instance p2, Lcom/onesignal/common/threading/WaiterWithValue;

    invoke-direct {p2}, Lcom/onesignal/common/threading/WaiterWithValue;-><init>()V

    iput-object p2, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->retryWaiter:Lcom/onesignal/common/threading/WaiterWithValue;

    const-string p2, "OpRepo"

    .line 53
    invoke-static {p2}, Lkotlinx/coroutines/ThreadPoolDispatcherKt;->newSingleThreadContext(Ljava/lang/String;)Lkotlinx/coroutines/ExecutorCoroutineDispatcher;

    move-result-object p2

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {p2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p2

    iput-object p2, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 54
    invoke-static {p2, p3, p2}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object p2

    iput-object p2, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->initialized:Lkotlinx/coroutines/CompletableDeferred;

    .line 81
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    .line 82
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/onesignal/core/internal/operations/IOperationExecutor;

    .line 83
    invoke-interface {p3}, Lcom/onesignal/core/internal/operations/IOperationExecutor;->getOperations()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_0

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 84
    invoke-interface {p2, p5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 87
    :cond_1
    iput-object p2, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->executorsMap:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getRetryWaiter$p(Lcom/onesignal/core/internal/operations/impl/OperationRepo;)Lcom/onesignal/common/threading/WaiterWithValue;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->retryWaiter:Lcom/onesignal/common/threading/WaiterWithValue;

    return-object p0
.end method

.method public static final synthetic access$getWaiter$p(Lcom/onesignal/core/internal/operations/impl/OperationRepo;)Lcom/onesignal/common/threading/WaiterWithValue;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->waiter:Lcom/onesignal/common/threading/WaiterWithValue;

    return-object p0
.end method

.method public static final synthetic access$processQueueForever(Lcom/onesignal/core/internal/operations/impl/OperationRepo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->processQueueForever(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$waitForNewOperationAndExecutionInterval(Lcom/onesignal/core/internal/operations/impl/OperationRepo;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->waitForNewOperationAndExecutionInterval(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final getExecuteBucket()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->enqueueIntoBucket:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0
.end method

.method private final getGroupableOperations(Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;",
            ")",
            "Ljava/util/List<",
            "Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 374
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 376
    invoke-virtual {p1}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getOperation()Lcom/onesignal/core/internal/operations/Operation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/core/internal/operations/Operation;->getGroupComparisonType()Lcom/onesignal/core/internal/operations/GroupComparisonType;

    move-result-object v1

    sget-object v2, Lcom/onesignal/core/internal/operations/GroupComparisonType;->NONE:Lcom/onesignal/core/internal/operations/GroupComparisonType;

    if-ne v1, v2, :cond_0

    return-object v0

    .line 381
    :cond_0
    invoke-virtual {p1}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getOperation()Lcom/onesignal/core/internal/operations/Operation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/core/internal/operations/Operation;->getGroupComparisonType()Lcom/onesignal/core/internal/operations/GroupComparisonType;

    move-result-object v1

    sget-object v2, Lcom/onesignal/core/internal/operations/GroupComparisonType;->CREATE:Lcom/onesignal/core/internal/operations/GroupComparisonType;

    if-ne v1, v2, :cond_1

    .line 382
    invoke-virtual {p1}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getOperation()Lcom/onesignal/core/internal/operations/Operation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/core/internal/operations/Operation;->getCreateComparisonKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 384
    :cond_1
    invoke-virtual {p1}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getOperation()Lcom/onesignal/core/internal/operations/Operation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onesignal/core/internal/operations/Operation;->getModifyComparisonKey()Ljava/lang/String;

    move-result-object v1

    .line 387
    :goto_0
    iget-object v2, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->queue:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;

    .line 389
    invoke-virtual {p1}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getOperation()Lcom/onesignal/core/internal/operations/Operation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onesignal/core/internal/operations/Operation;->getGroupComparisonType()Lcom/onesignal/core/internal/operations/GroupComparisonType;

    move-result-object v4

    sget-object v5, Lcom/onesignal/core/internal/operations/GroupComparisonType;->CREATE:Lcom/onesignal/core/internal/operations/GroupComparisonType;

    if-ne v4, v5, :cond_3

    .line 390
    invoke-virtual {v3}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getOperation()Lcom/onesignal/core/internal/operations/Operation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onesignal/core/internal/operations/Operation;->getCreateComparisonKey()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 392
    :cond_3
    invoke-virtual {v3}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getOperation()Lcom/onesignal/core/internal/operations/Operation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onesignal/core/internal/operations/Operation;->getModifyComparisonKey()Ljava/lang/String;

    move-result-object v4

    :goto_2
    const-string v5, ""

    .line 395
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_3

    .line 396
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Both comparison keys can not be blank!"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 399
    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->_newRecordState:Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;

    invoke-virtual {v3}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getOperation()Lcom/onesignal/core/internal/operations/Operation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onesignal/core/internal/operations/Operation;->getApplyToRecordId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;->canAccess(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_1

    .line 403
    :cond_6
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 404
    iget-object v4, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->queue:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 405
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    return-object v0
.end method

.method private final internalEnqueue(Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;ZZLjava/lang/Integer;)V
    .locals 5

    .line 139
    iget-object v0, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->queue:Ljava/util/List;

    monitor-enter v0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->queue:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 434
    instance-of v2, v1, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 435
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;

    .line 140
    invoke-virtual {v2}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getOperation()Lcom/onesignal/core/internal/operations/Operation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/core/internal/operations/Operation;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getOperation()Lcom/onesignal/core/internal/operations/Operation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/onesignal/core/internal/operations/Operation;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    :cond_2
    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v3, :cond_3

    .line 142
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "OperationRepo: internalEnqueue - operation.id: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getOperation()Lcom/onesignal/core/internal/operations/Operation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onesignal/core/internal/operations/Operation;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already exists in the queue."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2, v1, v2}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit v0

    return-void

    :cond_3
    if-eqz p4, :cond_4

    .line 147
    :try_start_1
    iget-object v3, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->queue:Ljava/util/List;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-interface {v3, p4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-object p4, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    .line 149
    :cond_4
    iget-object p4, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->queue:Ljava/util/List;

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :goto_1
    monitor-exit v0

    if-eqz p3, :cond_5

    .line 153
    iget-object p3, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->_operationModelStore:Lcom/onesignal/core/internal/operations/impl/OperationModelStore;

    check-cast p3, Lcom/onesignal/common/modeling/IModelStore;

    invoke-virtual {p1}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getOperation()Lcom/onesignal/core/internal/operations/Operation;

    move-result-object p1

    check-cast p1, Lcom/onesignal/common/modeling/Model;

    invoke-static {p3, p1, v2, v1, v2}, Lcom/onesignal/common/modeling/IModelStore$DefaultImpls;->add$default(Lcom/onesignal/common/modeling/IModelStore;Lcom/onesignal/common/modeling/Model;Ljava/lang/String;ILjava/lang/Object;)V

    .line 156
    :cond_5
    iget-object p1, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->waiter:Lcom/onesignal/common/threading/WaiterWithValue;

    new-instance p3, Lcom/onesignal/core/internal/operations/impl/OperationRepo$LoopWaiterMessage;

    const-wide/16 v0, 0x0

    invoke-direct {p3, p2, v0, v1}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$LoopWaiterMessage;-><init>(ZJ)V

    invoke-virtual {p1, p3}, Lcom/onesignal/common/threading/WaiterWithValue;->wake(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p1

    .line 139
    monitor-exit v0

    throw p1
.end method

.method static synthetic internalEnqueue$default(Lcom/onesignal/core/internal/operations/impl/OperationRepo;Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;ZZLjava/lang/Integer;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 133
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->internalEnqueue(Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;ZZLjava/lang/Integer;)V

    return-void
.end method

.method private final processQueueForever(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/onesignal/core/internal/operations/impl/OperationRepo$processQueueForever$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$processQueueForever$1;

    iget v1, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$processQueueForever$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$processQueueForever$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$processQueueForever$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$processQueueForever$1;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$processQueueForever$1;-><init>(Lcom/onesignal/core/internal/operations/impl/OperationRepo;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$processQueueForever$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 163
    iget v2, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$processQueueForever$1;->label:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$processQueueForever$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/onesignal/core/internal/operations/impl/OperationRepo;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 182
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 163
    :cond_2
    iget-object v2, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$processQueueForever$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/onesignal/core/internal/operations/impl/OperationRepo;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$processQueueForever$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/onesignal/core/internal/operations/impl/OperationRepo;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    iget-object v2, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$processQueueForever$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/onesignal/core/internal/operations/impl/OperationRepo;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 164
    iput-object p0, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$processQueueForever$1;->L$0:Ljava/lang/Object;

    iput v6, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$processQueueForever$1;->label:I

    invoke-direct {p0, v0}, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->waitForNewOperationAndExecutionInterval(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p0

    .line 165
    :goto_1
    iget p1, v2, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->enqueueIntoBucket:I

    add-int/2addr p1, v6

    iput p1, v2, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->enqueueIntoBucket:I

    .line 167
    :cond_7
    :goto_2
    iget-boolean p1, v2, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->paused:Z

    const/4 v7, 0x0

    if-eqz p1, :cond_8

    const-string p1, "OperationRepo is paused"

    .line 168
    invoke-static {p1, v7, v5, v7}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 169
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 172
    :cond_8
    invoke-direct {v2}, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->getExecuteBucket()I

    move-result p1

    invoke-virtual {v2, p1}, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->getNextOps$com_onesignal_core(I)Ljava/util/List;

    move-result-object p1

    .line 173
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "processQueueForever:ops:\n"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7, v5, v7}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    if-eqz p1, :cond_a

    .line 176
    iput-object v2, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$processQueueForever$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$processQueueForever$1;->label:I

    invoke-virtual {v2, p1, v0}, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->executeOperations$com_onesignal_core(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    .line 179
    :cond_9
    :goto_3
    iget-object p1, v2, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->_configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

    invoke-virtual {p1}, Lcom/onesignal/core/internal/config/ConfigModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object p1

    check-cast p1, Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-virtual {p1}, Lcom/onesignal/core/internal/config/ConfigModel;->getOpRepoPostWakeDelay()J

    move-result-wide v7

    iput-object v2, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$processQueueForever$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$processQueueForever$1;->label:I

    invoke-static {v7, v8, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    .line 181
    :cond_a
    iput-object v2, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$processQueueForever$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$processQueueForever$1;->label:I

    invoke-direct {v2, v0}, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->waitForNewOperationAndExecutionInterval(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_b

    return-object v1

    .line 182
    :cond_b
    :goto_4
    iget p1, v2, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->enqueueIntoBucket:I

    add-int/2addr p1, v6

    iput p1, v2, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->enqueueIntoBucket:I

    goto :goto_2
.end method

.method private final waitForNewOperationAndExecutionInterval(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/onesignal/core/internal/operations/impl/OperationRepo$waitForNewOperationAndExecutionInterval$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$waitForNewOperationAndExecutionInterval$1;

    iget v1, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$waitForNewOperationAndExecutionInterval$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$waitForNewOperationAndExecutionInterval$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$waitForNewOperationAndExecutionInterval$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$waitForNewOperationAndExecutionInterval$1;

    invoke-direct {v0, p0, p1}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$waitForNewOperationAndExecutionInterval$1;-><init>(Lcom/onesignal/core/internal/operations/impl/OperationRepo;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$waitForNewOperationAndExecutionInterval$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 206
    iget v2, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$waitForNewOperationAndExecutionInterval$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$waitForNewOperationAndExecutionInterval$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$waitForNewOperationAndExecutionInterval$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/onesignal/core/internal/operations/impl/OperationRepo;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    .line 222
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 206
    :cond_2
    iget-object v2, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$waitForNewOperationAndExecutionInterval$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$waitForNewOperationAndExecutionInterval$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$waitForNewOperationAndExecutionInterval$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lcom/onesignal/core/internal/operations/impl/OperationRepo;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 208
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object p1, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->waiter:Lcom/onesignal/common/threading/WaiterWithValue;

    iput-object p0, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$waitForNewOperationAndExecutionInterval$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$waitForNewOperationAndExecutionInterval$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$waitForNewOperationAndExecutionInterval$1;->L$2:Ljava/lang/Object;

    iput v4, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$waitForNewOperationAndExecutionInterval$1;->label:I

    invoke-virtual {p1, v0}, Lcom/onesignal/common/threading/WaiterWithValue;->waitForWake(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v6, p0

    move-object v5, v2

    .line 206
    :goto_1
    iput-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 213
    iget-object p1, v6, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->_configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

    invoke-virtual {p1}, Lcom/onesignal/core/internal/config/ConfigModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object p1

    check-cast p1, Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-virtual {p1}, Lcom/onesignal/core/internal/config/ConfigModel;->getOpRepoExecutionInterval()J

    move-result-wide v7

    iget-object p1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/onesignal/core/internal/operations/impl/OperationRepo$LoopWaiterMessage;

    invoke-virtual {p1}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$LoopWaiterMessage;->getPreviousWaitedTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    move-object v2, v5

    move-object v5, v6

    .line 214
    :goto_2
    iget-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/onesignal/core/internal/operations/impl/OperationRepo$LoopWaiterMessage;

    invoke-virtual {p1}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$LoopWaiterMessage;->getForce()Z

    move-result p1

    if-nez p1, :cond_7

    .line 216
    new-instance p1, Lcom/onesignal/core/internal/operations/impl/OperationRepo$waitForNewOperationAndExecutionInterval$waitedTheFullTime$1;

    const/4 v6, 0x0

    invoke-direct {p1, v2, v5, v6}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$waitForNewOperationAndExecutionInterval$waitedTheFullTime$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/onesignal/core/internal/operations/impl/OperationRepo;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlin/jvm/functions/Function2;

    iput-object v5, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$waitForNewOperationAndExecutionInterval$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$waitForNewOperationAndExecutionInterval$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$waitForNewOperationAndExecutionInterval$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$waitForNewOperationAndExecutionInterval$1;->label:I

    invoke-static {v7, v8, p1, v0}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_3
    if-nez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    :goto_4
    if-nez p1, :cond_7

    .line 220
    iget-object p1, v5, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->_configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

    invoke-virtual {p1}, Lcom/onesignal/core/internal/config/ConfigModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object p1

    check-cast p1, Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-virtual {p1}, Lcom/onesignal/core/internal/config/ConfigModel;->getOpRepoExecutionInterval()J

    move-result-wide v7

    goto :goto_2

    .line 222
    :cond_7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method


# virtual methods
.method public awaitInitialized(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->initialized:Lkotlinx/coroutines/CompletableDeferred;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/CompletableDeferred;->await(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public containsInstanceOf(Lkotlin/reflect/KClass;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/onesignal/core/internal/operations/Operation;",
            ">(",
            "Lkotlin/reflect/KClass<",
            "TT;>;)Z"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->queue:Ljava/util/List;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->queue:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 431
    instance-of v2, v1, Ljava/util/Collection;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;

    .line 92
    invoke-virtual {v2}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getOperation()Lcom/onesignal/core/internal/operations/Operation;

    move-result-object v2

    invoke-interface {p1, v2}, Lkotlin/reflect/KClass;->isInstance(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    :cond_2
    :goto_0
    monitor-exit v0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final delayBeforeNextExecution(ILjava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Integer;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "retryAfterSeconds: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 338
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v3, p2

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    int-to-long p1, p1

    .line 339
    iget-object v0, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->_configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

    invoke-virtual {v0}, Lcom/onesignal/core/internal/config/ConfigModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v0

    check-cast v0, Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-virtual {v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getOpRepoDefaultFailRetryBackoff()J

    move-result-wide v5

    mul-long p1, p1, v5

    const/16 v0, 0x3e8

    int-to-long v5, v0

    mul-long v3, v3, v5

    .line 340
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/16 v3, 0x1

    cmp-long v0, p1, v3

    if-gez v0, :cond_1

    .line 341
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 342
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Operations being delay for: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v2, v1}, Lcom/onesignal/debug/internal/logging/Logging;->error$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 343
    new-instance v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$delayBeforeNextExecution$2;

    invoke-direct {v0, p0, v1}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$delayBeforeNextExecution$2;-><init>(Lcom/onesignal/core/internal/operations/impl/OperationRepo;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {p1, p2, v0, p3}, Lkotlinx/coroutines/TimeoutKt;->withTimeoutOrNull(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_2

    return-object p1

    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public enqueue(Lcom/onesignal/core/internal/operations/Operation;Z)V
    .locals 9

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/onesignal/debug/LogLevel;->DEBUG:Lcom/onesignal/debug/LogLevel;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OperationRepo.enqueue(operation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", flush: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/debug/internal/logging/Logging;->log(Lcom/onesignal/debug/LogLevel;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "randomUUID().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/onesignal/core/internal/operations/Operation;->setId(Ljava/lang/String;)V

    .line 112
    new-instance v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;

    const/4 v4, 0x0

    iget v5, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->enqueueIntoBucket:I

    const/4 v6, 0x0

    const/16 v7, 0xa

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;-><init>(Lcom/onesignal/core/internal/operations/Operation;Lcom/onesignal/common/threading/WaiterWithValue;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x8

    move-object v2, p0

    move-object v3, v0

    move v4, p2

    invoke-static/range {v2 .. v8}, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->internalEnqueue$default(Lcom/onesignal/core/internal/operations/impl/OperationRepo;Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;ZZLjava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method

.method public enqueueAndWait(Lcom/onesignal/core/internal/operations/Operation;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onesignal/core/internal/operations/Operation;",
            "Z",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 119
    sget-object v0, Lcom/onesignal/debug/LogLevel;->DEBUG:Lcom/onesignal/debug/LogLevel;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OperationRepo.enqueueAndWait(operation: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", force: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/onesignal/debug/internal/logging/Logging;->log(Lcom/onesignal/debug/LogLevel;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "randomUUID().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/onesignal/core/internal/operations/Operation;->setId(Ljava/lang/String;)V

    .line 122
    new-instance v0, Lcom/onesignal/common/threading/WaiterWithValue;

    invoke-direct {v0}, Lcom/onesignal/common/threading/WaiterWithValue;-><init>()V

    .line 123
    new-instance v9, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;

    iget v5, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->enqueueIntoBucket:I

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, v9

    move-object v3, p1

    move-object v4, v0

    invoke-direct/range {v2 .. v8}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;-><init>(Lcom/onesignal/core/internal/operations/Operation;Lcom/onesignal/common/threading/WaiterWithValue;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move v3, p2

    invoke-static/range {v1 .. v7}, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->internalEnqueue$default(Lcom/onesignal/core/internal/operations/impl/OperationRepo;Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;ZZLjava/lang/Integer;ILjava/lang/Object;)V

    .line 124
    invoke-virtual {v0, p3}, Lcom/onesignal/common/threading/WaiterWithValue;->waitForWake(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final executeOperations$com_onesignal_core(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    const-string v3, "Could not find executor for operation "

    instance-of v4, v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;

    if-eqz v4, :cond_0

    move-object v4, v0

    check-cast v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;

    iget v5, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->label:I

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    iget v0, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->label:I

    sub-int/2addr v0, v6

    iput v0, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;

    invoke-direct {v4, v1, v0}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;-><init>(Lcom/onesignal/core/internal/operations/impl/OperationRepo;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 224
    iget v6, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->label:I

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-eqz v6, :cond_4

    if-eq v6, v9, :cond_3

    if-eq v6, v10, :cond_2

    if-ne v6, v7, :cond_1

    iget-object v2, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/onesignal/core/internal/operations/impl/OperationRepo;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_17

    :catchall_0
    move-exception v0

    goto/16 :goto_13

    .line 327
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_2
    iget-wide v2, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->J$0:J

    iget-object v6, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->L$4:Ljava/lang/Object;

    check-cast v6, Lcom/onesignal/core/internal/operations/ExecutionResponse;

    iget-object v12, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->L$3:Ljava/lang/Object;

    check-cast v12, Ljava/util/List;

    iget-object v13, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->L$2:Ljava/lang/Object;

    check-cast v13, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;

    iget-object v14, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->L$1:Ljava/lang/Object;

    check-cast v14, Ljava/util/List;

    iget-object v15, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lcom/onesignal/core/internal/operations/impl/OperationRepo;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    move-object v3, v15

    goto/16 :goto_14

    :cond_3
    iget-object v2, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->L$2:Ljava/lang/Object;

    check-cast v3, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;

    iget-object v6, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget-object v12, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/onesignal/core/internal/operations/impl/OperationRepo;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v13, v3

    move-object v3, v12

    move-object v12, v2

    move-object v2, v6

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v14, v6

    move-object v3, v12

    goto/16 :goto_14

    :cond_4
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 226
    :try_start_3
    invoke-static/range {p1 .. p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;

    .line 228
    iget-object v6, v1, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->executorsMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getOperation()Lcom/onesignal/core/internal/operations/Operation;

    move-result-object v12

    invoke-virtual {v12}, Lcom/onesignal/core/internal/operations/Operation;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v6, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/onesignal/core/internal/operations/IOperationExecutor;

    if-eqz v6, :cond_1b

    .line 231
    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    .line 437
    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v3, v13}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v12, Ljava/util/Collection;

    .line 438
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 439
    check-cast v13, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;

    .line 231
    invoke-virtual {v13}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getOperation()Lcom/onesignal/core/internal/operations/Operation;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 440
    :cond_5
    check-cast v12, Ljava/util/List;

    .line 232
    iput-object v1, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->L$1:Ljava/lang/Object;

    iput-object v0, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->L$2:Ljava/lang/Object;

    iput-object v12, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->L$3:Ljava/lang/Object;

    iput v9, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->label:I

    invoke-interface {v6, v12, v4}, Lcom/onesignal/core/internal/operations/IOperationExecutor;->execute(Ljava/util/List;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    if-ne v3, v5, :cond_6

    return-object v5

    :cond_6
    move-object v13, v0

    move-object v0, v3

    move-object v3, v1

    .line 224
    :goto_2
    :try_start_4
    move-object v6, v0

    check-cast v6, Lcom/onesignal/core/internal/operations/ExecutionResponse;

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "OperationRepo: execute response = "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/onesignal/core/internal/operations/ExecutionResponse;->getResult()Lcom/onesignal/core/internal/operations/ExecutionResult;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11, v10, v11}, Lcom/onesignal/debug/internal/logging/Logging;->debug$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 238
    invoke-virtual {v6}, Lcom/onesignal/core/internal/operations/ExecutionResponse;->getIdTranslations()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 239
    move-object v0, v2

    check-cast v0, Ljava/lang/Iterable;

    .line 441
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;

    .line 239
    invoke-virtual {v14}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getOperation()Lcom/onesignal/core/internal/operations/Operation;

    move-result-object v14

    invoke-virtual {v6}, Lcom/onesignal/core/internal/operations/ExecutionResponse;->getIdTranslations()Ljava/util/Map;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/onesignal/core/internal/operations/Operation;->translateIds(Ljava/util/Map;)V

    goto :goto_3

    .line 240
    :cond_7
    iget-object v14, v3, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->queue:Ljava/util/List;

    monitor-enter v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 241
    :try_start_5
    iget-object v0, v3, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->queue:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 443
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;

    .line 241
    invoke-virtual {v15}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getOperation()Lcom/onesignal/core/internal/operations/Operation;

    move-result-object v15

    invoke-virtual {v6}, Lcom/onesignal/core/internal/operations/ExecutionResponse;->getIdTranslations()Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v15, v7}, Lcom/onesignal/core/internal/operations/Operation;->translateIds(Ljava/util/Map;)V

    const/4 v7, 0x3

    goto :goto_4

    .line 242
    :cond_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 240
    :try_start_6
    monitor-exit v14

    .line 243
    invoke-virtual {v6}, Lcom/onesignal/core/internal/operations/ExecutionResponse;->getIdTranslations()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 445
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 243
    iget-object v14, v3, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->_newRecordState:Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;

    invoke-virtual {v14, v7}, Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;->add(Ljava/lang/String;)V

    goto :goto_5

    .line 251
    :cond_9
    iget-object v0, v3, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->_configModelStore:Lcom/onesignal/core/internal/config/ConfigModelStore;

    invoke-virtual {v0}, Lcom/onesignal/core/internal/config/ConfigModelStore;->getModel()Lcom/onesignal/common/modeling/Model;

    move-result-object v0

    check-cast v0, Lcom/onesignal/core/internal/config/ConfigModel;

    invoke-virtual {v0}, Lcom/onesignal/core/internal/config/ConfigModel;->getOpRepoPostCreateDelay()J

    move-result-wide v14

    .line 252
    iput-object v3, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->L$1:Ljava/lang/Object;

    iput-object v13, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->L$2:Ljava/lang/Object;

    iput-object v12, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->L$3:Ljava/lang/Object;

    iput-object v6, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->L$4:Ljava/lang/Object;

    iput-wide v14, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->J$0:J

    iput v10, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->label:I

    invoke-static {v14, v15, v4}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-ne v0, v5, :cond_a

    return-object v5

    :cond_a
    move-wide/from16 v22, v14

    move-object v14, v2

    move-object v15, v3

    move-wide/from16 v2, v22

    .line 253
    :goto_6
    :try_start_7
    iget-object v7, v15, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->queue:Ljava/util/List;

    monitor-enter v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 254
    :try_start_8
    iget-object v0, v15, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->queue:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v9

    if-eqz v0, :cond_b

    iget-object v0, v15, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->waiter:Lcom/onesignal/common/threading/WaiterWithValue;

    new-instance v9, Lcom/onesignal/core/internal/operations/impl/OperationRepo$LoopWaiterMessage;

    invoke-direct {v9, v8, v2, v3}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$LoopWaiterMessage;-><init>(ZJ)V

    invoke-virtual {v0, v9}, Lcom/onesignal/common/threading/WaiterWithValue;->wake(Ljava/lang/Object;)V

    .line 255
    :cond_b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 253
    :try_start_9
    monitor-exit v7

    move-object v3, v15

    goto :goto_7

    :catchall_3
    move-exception v0

    monitor-exit v7

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_4
    move-exception v0

    .line 240
    :try_start_a
    monitor-exit v14

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_c
    move-object v14, v2

    .line 258
    :goto_7
    :try_start_b
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 259
    invoke-virtual {v6}, Lcom/onesignal/core/internal/operations/ExecutionResponse;->getResult()Lcom/onesignal/core/internal/operations/ExecutionResult;

    move-result-object v2

    sget-object v7, Lcom/onesignal/core/internal/operations/impl/OperationRepo$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lcom/onesignal/core/internal/operations/ExecutionResult;->ordinal()I

    move-result v2

    aget v2, v7, v2

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_10

    .line 296
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Operation execution failed with eventual retry, pausing the operation repo: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11, v10, v11}, Lcom/onesignal/debug/internal/logging/Logging;->error$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    const/4 v2, 0x1

    .line 298
    iput-boolean v2, v3, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->paused:Z

    .line 300
    iget-object v2, v3, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->queue:Ljava/util/List;

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    .line 301
    :try_start_c
    move-object v7, v14

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 462
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;

    .line 301
    iget-object v12, v3, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->queue:Ljava/util/List;

    invoke-interface {v12, v8, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_8

    .line 302
    :cond_d
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 300
    :try_start_d
    monitor-exit v2

    goto/16 :goto_10

    :catchall_5
    move-exception v0

    monitor-exit v2

    throw v0

    .line 284
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Operation execution failed, retrying: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11, v10, v11}, Lcom/onesignal/debug/internal/logging/Logging;->error$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 286
    iget-object v2, v3, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->queue:Ljava/util/List;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    .line 287
    :try_start_e
    move-object v7, v14

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 460
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;

    .line 288
    invoke-virtual {v9}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getRetries()I

    move-result v12

    const/4 v13, 0x1

    add-int/2addr v12, v13

    invoke-virtual {v9, v12}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->setRetries(I)V

    invoke-virtual {v9}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getRetries()I

    move-result v12

    iget v13, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    if-le v12, v13, :cond_e

    .line 289
    invoke-virtual {v9}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getRetries()I

    move-result v12

    iput v12, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 291
    :cond_e
    iget-object v12, v3, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->queue:Ljava/util/List;

    invoke-interface {v12, v8, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_9

    .line 293
    :cond_f
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 286
    :try_start_f
    monitor-exit v2

    goto/16 :goto_10

    :catchall_6
    move-exception v0

    monitor-exit v2

    throw v0

    .line 277
    :pswitch_2
    iget-object v2, v3, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->_operationModelStore:Lcom/onesignal/core/internal/operations/impl/OperationModelStore;

    check-cast v2, Lcom/onesignal/common/modeling/IModelStore;

    invoke-virtual {v13}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getOperation()Lcom/onesignal/core/internal/operations/Operation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/onesignal/core/internal/operations/Operation;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v11, v10, v11}, Lcom/onesignal/common/modeling/IModelStore$DefaultImpls;->remove$default(Lcom/onesignal/common/modeling/IModelStore;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 278
    invoke-virtual {v13}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getWaiter()Lcom/onesignal/common/threading/WaiterWithValue;

    move-result-object v2

    if-eqz v2, :cond_10

    const/4 v7, 0x1

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/onesignal/common/threading/WaiterWithValue;->wake(Ljava/lang/Object;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 279
    :cond_10
    iget-object v2, v3, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->queue:Ljava/util/List;

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    .line 280
    :try_start_10
    move-object v7, v14

    check-cast v7, Ljava/lang/Iterable;

    .line 455
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/Collection;

    .line 456
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_11
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v15, v12

    check-cast v15, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;

    .line 280
    invoke-static {v15, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    const/16 v16, 0x1

    xor-int/lit8 v15, v15, 0x1

    if-eqz v15, :cond_11

    invoke-interface {v9, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 457
    :cond_12
    check-cast v9, Ljava/util/List;

    .line 455
    check-cast v9, Ljava/lang/Iterable;

    .line 280
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 458
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;

    .line 280
    iget-object v12, v3, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->queue:Ljava/util/List;

    invoke-interface {v12, v8, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_b

    .line 281
    :cond_13
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 279
    :try_start_11
    monitor-exit v2

    goto/16 :goto_10

    :catchall_7
    move-exception v0

    monitor-exit v2

    throw v0

    .line 269
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Operation execution failed without retry: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v11, v10, v11}, Lcom/onesignal/debug/internal/logging/Logging;->error$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 271
    move-object v2, v14

    check-cast v2, Ljava/lang/Iterable;

    .line 451
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;

    .line 271
    iget-object v9, v3, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->_operationModelStore:Lcom/onesignal/core/internal/operations/impl/OperationModelStore;

    check-cast v9, Lcom/onesignal/common/modeling/IModelStore;

    invoke-virtual {v7}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getOperation()Lcom/onesignal/core/internal/operations/Operation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/onesignal/core/internal/operations/Operation;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7, v11, v10, v11}, Lcom/onesignal/common/modeling/IModelStore$DefaultImpls;->remove$default(Lcom/onesignal/common/modeling/IModelStore;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_c

    .line 272
    :cond_14
    move-object v2, v14

    check-cast v2, Ljava/lang/Iterable;

    .line 453
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;

    .line 272
    invoke-virtual {v7}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getWaiter()Lcom/onesignal/common/threading/WaiterWithValue;

    move-result-object v7

    if-eqz v7, :cond_15

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/onesignal/common/threading/WaiterWithValue;->wake(Ljava/lang/Object;)V

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_d

    .line 262
    :pswitch_4
    move-object v2, v14

    check-cast v2, Ljava/lang/Iterable;

    .line 447
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;

    .line 262
    iget-object v9, v3, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->_operationModelStore:Lcom/onesignal/core/internal/operations/impl/OperationModelStore;

    check-cast v9, Lcom/onesignal/common/modeling/IModelStore;

    invoke-virtual {v7}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getOperation()Lcom/onesignal/core/internal/operations/Operation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/onesignal/core/internal/operations/Operation;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7, v11, v10, v11}, Lcom/onesignal/common/modeling/IModelStore$DefaultImpls;->remove$default(Lcom/onesignal/common/modeling/IModelStore;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_e

    .line 263
    :cond_16
    move-object v2, v14

    check-cast v2, Ljava/lang/Iterable;

    .line 449
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;

    .line 263
    invoke-virtual {v7}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getWaiter()Lcom/onesignal/common/threading/WaiterWithValue;

    move-result-object v7

    if-eqz v7, :cond_17

    const/4 v9, 0x1

    invoke-static {v9}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/onesignal/common/threading/WaiterWithValue;->wake(Ljava/lang/Object;)V

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_f

    :cond_17
    const/4 v9, 0x1

    goto :goto_f

    .line 308
    :cond_18
    :goto_10
    invoke-virtual {v6}, Lcom/onesignal/core/internal/operations/ExecutionResponse;->getOperations()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 309
    iget-object v2, v3, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->queue:Ljava/util/List;

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    .line 310
    :try_start_12
    invoke-virtual {v6}, Lcom/onesignal/core/internal/operations/ExecutionResponse;->getOperations()Ljava/util/List;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_19

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/onesignal/core/internal/operations/Operation;

    .line 311
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "randomUUID().toString()"

    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9, v12}, Lcom/onesignal/core/internal/operations/Operation;->setId(Ljava/lang/String;)V

    .line 312
    new-instance v12, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xa

    const/16 v21, 0x0

    move-object v15, v12

    move-object/from16 v16, v9

    invoke-direct/range {v15 .. v21}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;-><init>(Lcom/onesignal/core/internal/operations/Operation;Lcom/onesignal/common/threading/WaiterWithValue;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 313
    iget-object v9, v3, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->queue:Ljava/util/List;

    invoke-interface {v9, v8, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 314
    iget-object v9, v3, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->_operationModelStore:Lcom/onesignal/core/internal/operations/impl/OperationModelStore;

    move-object v15, v9

    check-cast v15, Lcom/onesignal/common/modeling/IModelStore;

    const/16 v16, 0x0

    invoke-virtual {v12}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getOperation()Lcom/onesignal/core/internal/operations/Operation;

    move-result-object v9

    move-object/from16 v17, v9

    check-cast v17, Lcom/onesignal/common/modeling/Model;

    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v20, 0x0

    invoke-static/range {v15 .. v20}, Lcom/onesignal/common/modeling/IModelStore$DefaultImpls;->add$default(Lcom/onesignal/common/modeling/IModelStore;ILcom/onesignal/common/modeling/Model;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_11

    .line 316
    :cond_19
    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 309
    :try_start_13
    monitor-exit v2

    goto :goto_12

    :catchall_8
    move-exception v0

    monitor-exit v2

    throw v0

    .line 319
    :cond_1a
    :goto_12
    iget v0, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-virtual {v6}, Lcom/onesignal/core/internal/operations/ExecutionResponse;->getRetryAfterSeconds()Ljava/lang/Integer;

    move-result-object v2

    iput-object v3, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->L$0:Ljava/lang/Object;

    iput-object v14, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->L$1:Ljava/lang/Object;

    iput-object v11, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->L$2:Ljava/lang/Object;

    iput-object v11, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->L$3:Ljava/lang/Object;

    iput-object v11, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->L$4:Ljava/lang/Object;

    const/4 v6, 0x3

    iput v6, v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$executeOperations$1;->label:I

    invoke-virtual {v3, v0, v2, v4}, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->delayBeforeNextExecution(ILjava/lang/Integer;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    if-ne v0, v5, :cond_1e

    return-object v5

    :catchall_9
    move-exception v0

    goto :goto_14

    .line 229
    :cond_1b
    :try_start_14
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getOperation()Lcom/onesignal/core/internal/operations/Operation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/core/internal/operations/Operation;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    :catchall_a
    move-exception v0

    move-object v3, v1

    :goto_13
    move-object v14, v2

    .line 321
    :goto_14
    sget-object v2, Lcom/onesignal/debug/LogLevel;->ERROR:Lcom/onesignal/debug/LogLevel;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error attempting to execute operation: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Lcom/onesignal/debug/internal/logging/Logging;->log(Lcom/onesignal/debug/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 324
    check-cast v14, Ljava/lang/Iterable;

    .line 464
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;

    .line 324
    iget-object v4, v3, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->_operationModelStore:Lcom/onesignal/core/internal/operations/impl/OperationModelStore;

    check-cast v4, Lcom/onesignal/common/modeling/IModelStore;

    invoke-virtual {v2}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getOperation()Lcom/onesignal/core/internal/operations/Operation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onesignal/core/internal/operations/Operation;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v11, v10, v11}, Lcom/onesignal/common/modeling/IModelStore$DefaultImpls;->remove$default(Lcom/onesignal/common/modeling/IModelStore;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_15

    .line 466
    :cond_1c
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;

    .line 325
    invoke-virtual {v2}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getWaiter()Lcom/onesignal/common/threading/WaiterWithValue;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/onesignal/common/threading/WaiterWithValue;->wake(Ljava/lang/Object;)V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_16

    .line 327
    :cond_1e
    :goto_17
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public forceExecuteOperations()V
    .locals 8

    .line 188
    iget-object v0, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->retryWaiter:Lcom/onesignal/common/threading/WaiterWithValue;

    new-instance v7, Lcom/onesignal/core/internal/operations/impl/OperationRepo$LoopWaiterMessage;

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$LoopWaiterMessage;-><init>(ZJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v7}, Lcom/onesignal/common/threading/WaiterWithValue;->wake(Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->waiter:Lcom/onesignal/common/threading/WaiterWithValue;

    new-instance v7, Lcom/onesignal/core/internal/operations/impl/OperationRepo$LoopWaiterMessage;

    const/4 v2, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$LoopWaiterMessage;-><init>(ZJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v7}, Lcom/onesignal/common/threading/WaiterWithValue;->wake(Ljava/lang/Object;)V

    return-void
.end method

.method public final getNextOps$com_onesignal_core(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;",
            ">;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->queue:Ljava/util/List;

    monitor-enter v0

    .line 351
    :try_start_0
    iget-object v1, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->queue:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 468
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;

    .line 352
    invoke-virtual {v4}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getOperation()Lcom/onesignal/core/internal/operations/Operation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/onesignal/core/internal/operations/Operation;->getCanStartExecute()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 353
    iget-object v5, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->_newRecordState:Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;

    invoke-virtual {v4}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getOperation()Lcom/onesignal/core/internal/operations/Operation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/onesignal/core/internal/operations/Operation;->getApplyToRecordId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/onesignal/user/internal/operations/impl/states/NewRecordsState;->canAccess(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 354
    invoke-virtual {v4}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;->getBucket()I

    move-result v4

    if-gt v4, p1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_0

    goto :goto_1

    :cond_2
    move-object v2, v3

    .line 351
    :goto_1
    check-cast v2, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;

    if-eqz v2, :cond_3

    .line 358
    iget-object p1, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->queue:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 359
    invoke-direct {p0, v2}, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->getGroupableOperations(Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;)Ljava/util/List;

    move-result-object v3

    goto :goto_2

    .line 361
    :cond_3
    move-object p1, v3

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    :goto_2
    monitor-exit v0

    return-object v3

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final getQueue$com_onesignal_core()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->queue:Ljava/util/List;

    return-object v0
.end method

.method public final loadSavedOperations$com_onesignal_core()V
    .locals 9

    .line 418
    iget-object v0, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->_operationModelStore:Lcom/onesignal/core/internal/operations/impl/OperationModelStore;

    invoke-virtual {v0}, Lcom/onesignal/core/internal/operations/impl/OperationModelStore;->loadOperations()V

    .line 419
    iget-object v0, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->_operationModelStore:Lcom/onesignal/core/internal/operations/impl/OperationModelStore;

    invoke-virtual {v0}, Lcom/onesignal/core/internal/operations/impl/OperationModelStore;->list()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/onesignal/core/internal/operations/Operation;

    .line 421
    new-instance v1, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;

    const/4 v4, 0x0

    iget v5, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->enqueueIntoBucket:I

    const/4 v6, 0x0

    const/16 v7, 0xa

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;-><init>(Lcom/onesignal/core/internal/operations/Operation;Lcom/onesignal/common/threading/WaiterWithValue;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x0

    .line 424
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 420
    invoke-direct {p0, v1, v2, v2, v3}, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->internalEnqueue(Lcom/onesignal/core/internal/operations/impl/OperationRepo$OperationQueueItem;ZZLjava/lang/Integer;)V

    goto :goto_0

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->initialized:Lkotlinx/coroutines/CompletableDeferred;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    return-void
.end method

.method public start()V
    .locals 7

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->paused:Z

    .line 98
    iget-object v1, p0, Lcom/onesignal/core/internal/operations/impl/OperationRepo;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v0, Lcom/onesignal/core/internal/operations/impl/OperationRepo$start$1;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, Lcom/onesignal/core/internal/operations/impl/OperationRepo$start$1;-><init>(Lcom/onesignal/core/internal/operations/impl/OperationRepo;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
