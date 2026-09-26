.class public Lcom/netease/epay/sdk/base/util/BackgroundDispatcher;
.super Ljava/lang/Object;
.source "BackgroundDispatcher.java"


# static fields
.field private static final CORE_POOL_SIZE:I = 0x2

.field private static final KEEP_ALIVE:I = 0xa

.field private static final MAXIMUM_POOL_SIZE:I = 0x5

.field private static dispatcher:Lcom/netease/epay/sdk/base/util/BackgroundDispatcher;


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method private constructor <init>()V
    .locals 9

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/netease/epay/sdk/base/util/BackgroundDispatcher$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base/util/BackgroundDispatcher$1;-><init>(Lcom/netease/epay/sdk/base/util/BackgroundDispatcher;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/util/BackgroundDispatcher;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 44
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const/4 v3, 0x5

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iget-object v8, p0, Lcom/netease/epay/sdk/base/util/BackgroundDispatcher;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/netease/epay/sdk/base/util/BackgroundDispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 46
    return-void
.end method

.method public static getInstance()Lcom/netease/epay/sdk/base/util/BackgroundDispatcher;
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/netease/epay/sdk/base/util/BackgroundDispatcher;->dispatcher:Lcom/netease/epay/sdk/base/util/BackgroundDispatcher;

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/netease/epay/sdk/base/util/BackgroundDispatcher;->dispatcher:Lcom/netease/epay/sdk/base/util/BackgroundDispatcher;

    .line 40
    :goto_0
    return-object v0

    .line 35
    :cond_0
    const-class v1, Lcom/netease/epay/sdk/base/util/BackgroundDispatcher;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/netease/epay/sdk/base/util/BackgroundDispatcher;->dispatcher:Lcom/netease/epay/sdk/base/util/BackgroundDispatcher;

    if-nez v0, :cond_1

    .line 37
    new-instance v0, Lcom/netease/epay/sdk/base/util/BackgroundDispatcher;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base/util/BackgroundDispatcher;-><init>()V

    sput-object v0, Lcom/netease/epay/sdk/base/util/BackgroundDispatcher;->dispatcher:Lcom/netease/epay/sdk/base/util/BackgroundDispatcher;

    .line 39
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    sget-object v0, Lcom/netease/epay/sdk/base/util/BackgroundDispatcher;->dispatcher:Lcom/netease/epay/sdk/base/util/BackgroundDispatcher;

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "call"    # Ljava/lang/Runnable;

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/BackgroundDispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized submit(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base/util/BackgroundDispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 60
    :goto_0
    monitor-exit p0

    return-object v0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 58
    :catch_1
    move-exception v0

    goto :goto_1
.end method
