.class public Lcom/subao/common/m/d;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# static fields
.field private static a:Ljava/util/concurrent/Executor;


# direct methods
.method public static declared-synchronized a()Ljava/util/concurrent/Executor;
    .locals 2

    .prologue
    .line 13
    const-class v1, Lcom/subao/common/m/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/subao/common/m/d;->a:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 14
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/subao/common/m/d;->a:Ljava/util/concurrent/Executor;

    .line 16
    :cond_0
    sget-object v0, Lcom/subao/common/m/d;->a:Ljava/util/concurrent/Executor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 13
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/subao/common/m/d;->a()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 26
    return-void
.end method
