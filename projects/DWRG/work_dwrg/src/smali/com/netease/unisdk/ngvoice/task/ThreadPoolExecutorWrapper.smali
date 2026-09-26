.class public Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;
.super Ljava/lang/Object;
.source "ThreadPoolExecutorWrapper.java"


# instance fields
.field private mMainHandler:Landroid/os/Handler;

.field private mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(III)V
    .locals 9
    .param p1, "activeThreadCount"    # I
    .param p2, "maxThreadCount"    # I
    .param p3, "maxScheTaskThread"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 25
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move v2, p1

    move v3, p2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    .line 27
    if-lez p3, :cond_0

    .line 28
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 31
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;->mMainHandler:Landroid/os/Handler;

    .line 32
    return-void
.end method


# virtual methods
.method public executeTask(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 36
    return-void
.end method

.method public removeScheduledTask(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public removeScheduledTaskOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method

.method public runTaskOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 68
    return-void
.end method

.method public scheduleTask(JLjava/lang/Runnable;)V
    .locals 3
    .param p1, "delay"    # J
    .param p3, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p3, p1, p2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 44
    return-void
.end method

.method public scheduleTaskAtFixedRateIgnoringTaskRunningTime(JJLjava/lang/Runnable;)V
    .locals 7
    .param p1, "initialDelay"    # J
    .param p3, "period"    # J
    .param p5, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p5

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 48
    return-void
.end method

.method public scheduleTaskAtFixedRateIncludingTaskRunningTime(JJLjava/lang/Runnable;)V
    .locals 7
    .param p1, "initialDelay"    # J
    .param p3, "period"    # J
    .param p5, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p5

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 52
    return-void
.end method

.method public scheduleTaskOnUiThread(JLjava/lang/Runnable;)V
    .locals 1
    .param p1, "delay"    # J
    .param p3, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 73
    iput-object v1, p0, Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 78
    iput-object v1, p0, Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;->mScheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 80
    :cond_1
    return-void
.end method

.method public submitTask(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    iget-object v0, p0, Lcom/netease/unisdk/ngvoice/task/ThreadPoolExecutorWrapper;->mThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
