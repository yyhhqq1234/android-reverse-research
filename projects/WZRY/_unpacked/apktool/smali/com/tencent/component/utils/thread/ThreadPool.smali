.class public Lcom/tencent/component/utils/thread/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/utils/thread/ThreadPool$2;,
        Lcom/tencent/component/utils/thread/ThreadPool$InstanceHolder;,
        Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;,
        Lcom/tencent/component/utils/thread/ThreadPool$Worker;,
        Lcom/tencent/component/utils/thread/ThreadPool$Priority;,
        Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;,
        Lcom/tencent/component/utils/thread/ThreadPool$JobContextStub;,
        Lcom/tencent/component/utils/thread/ThreadPool$JobContext;,
        Lcom/tencent/component/utils/thread/ThreadPool$Job;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x4

.field public static final JOB_CONTEXT_STUB:Lcom/tencent/component/utils/thread/ThreadPool$JobContext;

.field private static final KEEP_ALIVE_TIME:I = 0xa

.field private static final MAX_POOL_SIZE:I = 0x8

.field public static final MODE_CPU:I = 0x1
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation
.end field

.field public static final MODE_NETWORK:I = 0x2
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation
.end field

.field public static final MODE_NONE:I
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation
.end field

.field static final SEQ:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field mCpuCounter:Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field mNetworkCounter:Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    new-instance v0, Lcom/tencent/component/utils/thread/ThreadPool$JobContextStub;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/component/utils/thread/ThreadPool$JobContextStub;-><init>(Lcom/tencent/component/utils/thread/ThreadPool$1;)V

    sput-object v0, Lcom/tencent/component/utils/thread/ThreadPool;->JOB_CONTEXT_STUB:Lcom/tencent/component/utils/thread/ThreadPool$JobContext;

    .line 316
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/tencent/component/utils/thread/ThreadPool;->SEQ:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 85
    const-string/jumbo v0, "thread-pool"

    const/4 v1, 0x4

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/component/utils/thread/ThreadPool;-><init>(Ljava/lang/String;II)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "coreSize"    # I
    .param p3, "maxSize"    # I
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    const/4 v1, 0x2

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;

    invoke-direct {v0, v1}, Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/component/utils/thread/ThreadPool;->mCpuCounter:Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;

    .line 28
    new-instance v0, Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;

    invoke-direct {v0, v1}, Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/component/utils/thread/ThreadPool;->mNetworkCounter:Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;

    .line 90
    if-gtz p2, :cond_0

    .line 91
    const/4 p2, 0x1

    .line 92
    :cond_0
    if-gt p3, p2, :cond_1

    .line 93
    move p3, p2

    .line 95
    :cond_1
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    new-instance v8, Lcom/tencent/component/utils/thread/PriorityThreadFactory;

    const/16 v0, 0xa

    invoke-direct {v8, p1, v0}, Lcom/tencent/component/utils/thread/PriorityThreadFactory;-><init>(Ljava/lang/String;I)V

    move v2, p2

    move v3, p3

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/tencent/component/utils/thread/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/util/concurrent/BlockingQueue;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "coreSize"    # I
    .param p3, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    const/4 v1, 0x2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;

    invoke-direct {v0, v1}, Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/component/utils/thread/ThreadPool;->mCpuCounter:Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;

    .line 28
    new-instance v0, Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;

    invoke-direct {v0, v1}, Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/component/utils/thread/ThreadPool;->mNetworkCounter:Lcom/tencent/component/utils/thread/ThreadPool$ResourceCounter;

    .line 101
    if-gtz p2, :cond_0

    .line 102
    const/4 p2, 0x1

    .line 103
    :cond_0
    if-gt p3, p2, :cond_1

    .line 104
    move p3, p2

    .line 106
    :cond_1
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Lcom/tencent/component/utils/thread/PriorityThreadFactory;

    const/16 v0, 0xa

    invoke-direct {v8, p1, v0}, Lcom/tencent/component/utils/thread/PriorityThreadFactory;-><init>(Ljava/lang/String;I)V

    move v2, p2

    move v3, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/tencent/component/utils/thread/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    .line 108
    return-void
.end method

.method private generateWorker(Lcom/tencent/component/utils/thread/ThreadPool$Job;Lcom/tencent/component/utils/thread/FutureListener;Lcom/tencent/component/utils/thread/ThreadPool$Priority;)Lcom/tencent/component/utils/thread/ThreadPool$Worker;
    .locals 6
    .param p3, "priority"    # Lcom/tencent/component/utils/thread/ThreadPool$Priority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/component/utils/thread/ThreadPool$Job",
            "<TT;>;",
            "Lcom/tencent/component/utils/thread/FutureListener",
            "<TT;>;",
            "Lcom/tencent/component/utils/thread/ThreadPool$Priority;",
            ")",
            "Lcom/tencent/component/utils/thread/ThreadPool$Worker",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, "job":Lcom/tencent/component/utils/thread/ThreadPool$Job;, "Lcom/tencent/component/utils/thread/ThreadPool$Job<TT;>;"
    .local p2, "listener":Lcom/tencent/component/utils/thread/FutureListener;, "Lcom/tencent/component/utils/thread/FutureListener<TT;>;"
    const/4 v5, 0x0

    .line 137
    sget-object v1, Lcom/tencent/component/utils/thread/ThreadPool$2;->$SwitchMap$com$tencent$component$utils$thread$ThreadPool$Priority:[I

    invoke-virtual {p3}, Lcom/tencent/component/utils/thread/ThreadPool$Priority;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 151
    new-instance v0, Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;

    iget v4, p3, Lcom/tencent/component/utils/thread/ThreadPool$Priority;->priorityInt:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;-><init>(Lcom/tencent/component/utils/thread/ThreadPool;Lcom/tencent/component/utils/thread/ThreadPool$Job;Lcom/tencent/component/utils/thread/FutureListener;IZ)V

    .line 154
    .local v0, "worker":Lcom/tencent/component/utils/thread/ThreadPool$Worker;, "Lcom/tencent/component/utils/thread/ThreadPool$Worker<TT;>;"
    :goto_0
    return-object v0

    .line 139
    .end local v0    # "worker":Lcom/tencent/component/utils/thread/ThreadPool$Worker;, "Lcom/tencent/component/utils/thread/ThreadPool$Worker<TT;>;"
    :pswitch_0
    new-instance v0, Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;

    iget v4, p3, Lcom/tencent/component/utils/thread/ThreadPool$Priority;->priorityInt:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;-><init>(Lcom/tencent/component/utils/thread/ThreadPool;Lcom/tencent/component/utils/thread/ThreadPool$Job;Lcom/tencent/component/utils/thread/FutureListener;IZ)V

    .line 140
    .restart local v0    # "worker":Lcom/tencent/component/utils/thread/ThreadPool$Worker;, "Lcom/tencent/component/utils/thread/ThreadPool$Worker<TT;>;"
    goto :goto_0

    .line 143
    .end local v0    # "worker":Lcom/tencent/component/utils/thread/ThreadPool$Worker;, "Lcom/tencent/component/utils/thread/ThreadPool$Worker<TT;>;"
    :pswitch_1
    new-instance v0, Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;

    iget v4, p3, Lcom/tencent/component/utils/thread/ThreadPool$Priority;->priorityInt:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;-><init>(Lcom/tencent/component/utils/thread/ThreadPool;Lcom/tencent/component/utils/thread/ThreadPool$Job;Lcom/tencent/component/utils/thread/FutureListener;IZ)V

    .line 144
    .restart local v0    # "worker":Lcom/tencent/component/utils/thread/ThreadPool$Worker;, "Lcom/tencent/component/utils/thread/ThreadPool$Worker<TT;>;"
    goto :goto_0

    .line 147
    .end local v0    # "worker":Lcom/tencent/component/utils/thread/ThreadPool$Worker;, "Lcom/tencent/component/utils/thread/ThreadPool$Worker<TT;>;"
    :pswitch_2
    new-instance v0, Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;

    iget v4, p3, Lcom/tencent/component/utils/thread/ThreadPool$Priority;->priorityInt:I

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/component/utils/thread/ThreadPool$PriorityWorker;-><init>(Lcom/tencent/component/utils/thread/ThreadPool;Lcom/tencent/component/utils/thread/ThreadPool$Job;Lcom/tencent/component/utils/thread/FutureListener;IZ)V

    .line 148
    .restart local v0    # "worker":Lcom/tencent/component/utils/thread/ThreadPool$Worker;, "Lcom/tencent/component/utils/thread/ThreadPool$Worker<TT;>;"
    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance()Lcom/tencent/component/utils/thread/ThreadPool;
    .locals 1
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 356
    sget-object v0, Lcom/tencent/component/utils/thread/ThreadPool$InstanceHolder;->INSTANCE:Lcom/tencent/component/utils/thread/ThreadPool;

    return-object v0
.end method

.method public static runOnNonUIThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .prologue
    .line 365
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 366
    invoke-static {}, Lcom/tencent/component/utils/thread/ThreadPool;->getInstance()Lcom/tencent/component/utils/thread/ThreadPool;

    move-result-object v0

    new-instance v1, Lcom/tencent/component/utils/thread/ThreadPool$1;

    invoke-direct {v1, p0}, Lcom/tencent/component/utils/thread/ThreadPool$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/tencent/component/utils/thread/ThreadPool;->submit(Lcom/tencent/component/utils/thread/ThreadPool$Job;)Lcom/tencent/component/utils/thread/Future;

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method public submit(Lcom/tencent/component/utils/thread/ThreadPool$Job;)Lcom/tencent/component/utils/thread/Future;
    .locals 2
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/component/utils/thread/ThreadPool$Job",
            "<TT;>;)",
            "Lcom/tencent/component/utils/thread/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "job":Lcom/tencent/component/utils/thread/ThreadPool$Job;, "Lcom/tencent/component/utils/thread/ThreadPool$Job<TT;>;"
    const/4 v0, 0x0

    sget-object v1, Lcom/tencent/component/utils/thread/ThreadPool$Priority;->NORMAL:Lcom/tencent/component/utils/thread/ThreadPool$Priority;

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/component/utils/thread/ThreadPool;->submit(Lcom/tencent/component/utils/thread/ThreadPool$Job;Lcom/tencent/component/utils/thread/FutureListener;Lcom/tencent/component/utils/thread/ThreadPool$Priority;)Lcom/tencent/component/utils/thread/Future;

    move-result-object v0

    return-object v0
.end method

.method public submit(Lcom/tencent/component/utils/thread/ThreadPool$Job;Lcom/tencent/component/utils/thread/FutureListener;)Lcom/tencent/component/utils/thread/Future;
    .locals 1
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/component/utils/thread/ThreadPool$Job",
            "<TT;>;",
            "Lcom/tencent/component/utils/thread/FutureListener",
            "<TT;>;)",
            "Lcom/tencent/component/utils/thread/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "job":Lcom/tencent/component/utils/thread/ThreadPool$Job;, "Lcom/tencent/component/utils/thread/ThreadPool$Job<TT;>;"
    .local p2, "listener":Lcom/tencent/component/utils/thread/FutureListener;, "Lcom/tencent/component/utils/thread/FutureListener<TT;>;"
    sget-object v0, Lcom/tencent/component/utils/thread/ThreadPool$Priority;->NORMAL:Lcom/tencent/component/utils/thread/ThreadPool$Priority;

    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/component/utils/thread/ThreadPool;->submit(Lcom/tencent/component/utils/thread/ThreadPool$Job;Lcom/tencent/component/utils/thread/FutureListener;Lcom/tencent/component/utils/thread/ThreadPool$Priority;)Lcom/tencent/component/utils/thread/Future;

    move-result-object v0

    return-object v0
.end method

.method public submit(Lcom/tencent/component/utils/thread/ThreadPool$Job;Lcom/tencent/component/utils/thread/FutureListener;Lcom/tencent/component/utils/thread/ThreadPool$Priority;)Lcom/tencent/component/utils/thread/Future;
    .locals 2
    .param p3, "priority"    # Lcom/tencent/component/utils/thread/ThreadPool$Priority;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/component/utils/thread/ThreadPool$Job",
            "<TT;>;",
            "Lcom/tencent/component/utils/thread/FutureListener",
            "<TT;>;",
            "Lcom/tencent/component/utils/thread/ThreadPool$Priority;",
            ")",
            "Lcom/tencent/component/utils/thread/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "job":Lcom/tencent/component/utils/thread/ThreadPool$Job;, "Lcom/tencent/component/utils/thread/ThreadPool$Job<TT;>;"
    .local p2, "listener":Lcom/tencent/component/utils/thread/FutureListener;, "Lcom/tencent/component/utils/thread/FutureListener<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/component/utils/thread/ThreadPool;->generateWorker(Lcom/tencent/component/utils/thread/ThreadPool$Job;Lcom/tencent/component/utils/thread/FutureListener;Lcom/tencent/component/utils/thread/ThreadPool$Priority;)Lcom/tencent/component/utils/thread/ThreadPool$Worker;

    move-result-object v0

    .line 116
    .local v0, "w":Lcom/tencent/component/utils/thread/ThreadPool$Worker;, "Lcom/tencent/component/utils/thread/ThreadPool$Worker<TT;>;"
    iget-object v1, p0, Lcom/tencent/component/utils/thread/ThreadPool;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 117
    return-object v0
.end method

.method public submit(Lcom/tencent/component/utils/thread/ThreadPool$Job;Lcom/tencent/component/utils/thread/ThreadPool$Priority;)Lcom/tencent/component/utils/thread/Future;
    .locals 1
    .param p2, "priority"    # Lcom/tencent/component/utils/thread/ThreadPool$Priority;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/tencent/component/utils/thread/ThreadPool$Job",
            "<TT;>;",
            "Lcom/tencent/component/utils/thread/ThreadPool$Priority;",
            ")",
            "Lcom/tencent/component/utils/thread/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 127
    .local p1, "job":Lcom/tencent/component/utils/thread/ThreadPool$Job;, "Lcom/tencent/component/utils/thread/ThreadPool$Job<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/component/utils/thread/ThreadPool;->submit(Lcom/tencent/component/utils/thread/ThreadPool$Job;Lcom/tencent/component/utils/thread/FutureListener;Lcom/tencent/component/utils/thread/ThreadPool$Priority;)Lcom/tencent/component/utils/thread/Future;

    move-result-object v0

    return-object v0
.end method
