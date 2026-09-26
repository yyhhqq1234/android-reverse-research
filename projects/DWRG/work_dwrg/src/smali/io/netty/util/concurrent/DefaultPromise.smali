.class public Lio/netty/util/concurrent/DefaultPromise;
.super Lio/netty/util/concurrent/AbstractFuture;
.source "DefaultPromise.java"

# interfaces
.implements Lio/netty/util/concurrent/Promise;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/concurrent/DefaultPromise$CauseHolder;,
        Lio/netty/util/concurrent/DefaultPromise$LateListenerNotifier;,
        Lio/netty/util/concurrent/DefaultPromise$LateListeners;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/concurrent/AbstractFuture",
        "<TV;>;",
        "Lio/netty/util/concurrent/Promise",
        "<TV;>;"
    }
.end annotation


# static fields
.field private static final CANCELLATION_CAUSE_HOLDER:Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

.field private static final MAX_LISTENER_STACK_DEPTH:I = 0x8

.field private static final SUCCESS:Lio/netty/util/Signal;

.field private static final UNCANCELLABLE:Lio/netty/util/Signal;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;

.field private static final rejectedExecutionLogger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final executor:Lio/netty/util/concurrent/EventExecutor;

.field private lateListeners:Lio/netty/util/concurrent/DefaultPromise$LateListeners;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/DefaultPromise",
            "<TV;>.",
            "LateListeners;"
        }
    .end annotation
.end field

.field private listeners:Ljava/lang/Object;

.field private volatile result:Ljava/lang/Object;

.field private waiters:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-class v0, Lio/netty/util/concurrent/DefaultPromise;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/util/concurrent/DefaultPromise;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lio/netty/util/concurrent/DefaultPromise;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".rejectedExecution"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    .line 35
    sput-object v0, Lio/netty/util/concurrent/DefaultPromise;->rejectedExecutionLogger:Lio/netty/util/internal/logging/InternalLogger;

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lio/netty/util/concurrent/DefaultPromise;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/Signal;->valueOf(Ljava/lang/String;)Lio/netty/util/Signal;

    move-result-object v0

    sput-object v0, Lio/netty/util/concurrent/DefaultPromise;->SUCCESS:Lio/netty/util/Signal;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lio/netty/util/concurrent/DefaultPromise;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".UNCANCELLABLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/Signal;->valueOf(Ljava/lang/String;)Lio/netty/util/Signal;

    move-result-object v0

    sput-object v0, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Lio/netty/util/Signal;

    .line 41
    new-instance v0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    invoke-direct {v0, v1}, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;-><init>(Ljava/lang/Throwable;)V

    sput-object v0, Lio/netty/util/concurrent/DefaultPromise;->CANCELLATION_CAUSE_HOLDER:Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    .line 44
    sget-object v0, Lio/netty/util/concurrent/DefaultPromise;->CANCELLATION_CAUSE_HOLDER:Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    iget-object v0, v0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;->cause:Ljava/lang/Throwable;

    sget-object v1, Lio/netty/util/internal/EmptyArrays;->EMPTY_STACK_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 45
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 81
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-direct {p0}, Lio/netty/util/concurrent/AbstractFuture;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->executor:Lio/netty/util/concurrent/EventExecutor;

    .line 84
    return-void
.end method

.method public constructor <init>(Lio/netty/util/concurrent/EventExecutor;)V
    .locals 2
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutor;

    .prologue
    .line 74
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-direct {p0}, Lio/netty/util/concurrent/AbstractFuture;-><init>()V

    .line 75
    if-nez p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "executor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    iput-object p1, p0, Lio/netty/util/concurrent/DefaultPromise;->executor:Lio/netty/util/concurrent/EventExecutor;

    .line 79
    return-void
.end method

.method static synthetic access$10(Lio/netty/util/concurrent/DefaultPromise;)Lio/netty/util/concurrent/DefaultPromise$LateListeners;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->lateListeners:Lio/netty/util/concurrent/DefaultPromise$LateListeners;

    return-object v0
.end method

.method static synthetic access$11(Lio/netty/util/concurrent/DefaultPromise;Lio/netty/util/concurrent/DefaultPromise$LateListeners;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lio/netty/util/concurrent/DefaultPromise;->lateListeners:Lio/netty/util/concurrent/DefaultPromise$LateListeners;

    return-void
.end method

.method static synthetic access$12(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/DefaultFutureListeners;)V
    .locals 0

    .prologue
    .line 599
    invoke-static {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->notifyListeners0(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/DefaultFutureListeners;)V

    return-void
.end method

.method static synthetic access$13(Lio/netty/util/concurrent/DefaultPromise;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$14(Lio/netty/util/concurrent/ProgressiveFuture;[Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V
    .locals 0

    .prologue
    .line 774
    invoke-static/range {p0 .. p5}, Lio/netty/util/concurrent/DefaultPromise;->notifyProgressiveListeners0(Lio/netty/util/concurrent/ProgressiveFuture;[Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V

    return-void
.end method

.method static synthetic access$15(Lio/netty/util/concurrent/ProgressiveFuture;Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V
    .locals 0

    .prologue
    .line 785
    invoke-static/range {p0 .. p5}, Lio/netty/util/concurrent/DefaultPromise;->notifyProgressiveListener0(Lio/netty/util/concurrent/ProgressiveFuture;Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V

    return-void
.end method

.method static synthetic access$8(Lio/netty/util/concurrent/DefaultPromise;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$9(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 669
    invoke-static {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->execute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;)V

    return-void
.end method

.method private await0(JZ)Z
    .locals 11
    .param p1, "timeoutNanos"    # J
    .param p3, "interruptable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 324
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 325
    const/4 v6, 0x1

    .line 379
    :cond_0
    :goto_0
    return v6

    .line 328
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-gtz v6, :cond_2

    .line 329
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v6

    goto :goto_0

    .line 332
    :cond_2
    if-eqz p3, :cond_3

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 333
    new-instance v6, Ljava/lang/InterruptedException;

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 336
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 337
    .local v2, "startTime":J
    move-wide v4, p1

    .line 338
    .local v4, "waitTime":J
    const/4 v1, 0x0

    .line 341
    .local v1, "interrupted":Z
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 342
    :try_start_1
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 343
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 378
    if-eqz v1, :cond_4

    .line 379
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    const/4 v6, 0x1

    goto :goto_0

    .line 346
    :cond_5
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_6

    .line 347
    :try_start_2
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v6

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 378
    if-eqz v1, :cond_0

    .line 379
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 350
    :cond_6
    :try_start_3
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->checkDeadLock()V

    .line 351
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->incWaiters()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 355
    :cond_7
    const-wide/32 v6, 0xf4240

    :try_start_4
    div-long v6, v4, v6

    const-wide/32 v8, 0xf4240

    rem-long v8, v4, v8

    long-to-int v8, v8

    invoke-virtual {p0, v6, v7, v8}, Ljava/lang/Object;->wait(JI)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 364
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v6

    if-eqz v6, :cond_b

    .line 374
    :try_start_6
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->decWaiters()V

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 378
    if-eqz v1, :cond_8

    .line 379
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 365
    :cond_8
    const/4 v6, 0x1

    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/InterruptedException;
    if-eqz p3, :cond_a

    .line 358
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 373
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v6

    .line 374
    :try_start_8
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->decWaiters()V

    .line 375
    throw v6

    .line 341
    :catchall_1
    move-exception v6

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 377
    :catchall_2
    move-exception v6

    .line 378
    if-eqz v1, :cond_9

    .line 379
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    .line 381
    :cond_9
    throw v6

    .line 360
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :cond_a
    const/4 v1, 0x1

    goto :goto_1

    .line 367
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_b
    :try_start_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    sub-long v4, p1, v6

    .line 368
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gtz v6, :cond_7

    .line 369
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v6

    .line 374
    :try_start_b
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->decWaiters()V

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 378
    if-eqz v1, :cond_0

    .line 379
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_0
.end method

.method private decWaiters()V
    .locals 1

    .prologue
    .line 540
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-short v0, p0, Lio/netty/util/concurrent/DefaultPromise;->waiters:S

    add-int/lit8 v0, v0, -0x1

    int-to-short v0, v0

    iput-short v0, p0, Lio/netty/util/concurrent/DefaultPromise;->waiters:S

    .line 541
    return-void
.end method

.method private static execute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "executor"    # Lio/netty/util/concurrent/EventExecutor;
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 671
    :try_start_0
    invoke-interface {p0, p1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    :goto_0
    return-void

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->rejectedExecutionLogger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to submit a listener notification task. Event loop shut down?"

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private hasWaiters()Z
    .locals 1

    .prologue
    .line 529
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-short v0, p0, Lio/netty/util/concurrent/DefaultPromise;->waiters:S

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private incWaiters()V
    .locals 3

    .prologue
    .line 533
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-short v0, p0, Lio/netty/util/concurrent/DefaultPromise;->waiters:S

    const/16 v1, 0x7fff

    if-ne v0, v1, :cond_0

    .line 534
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "too many waiters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_0
    iget-short v0, p0, Lio/netty/util/concurrent/DefaultPromise;->waiters:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lio/netty/util/concurrent/DefaultPromise;->waiters:S

    .line 537
    return-void
.end method

.method private static isCancelled0(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "result"    # Ljava/lang/Object;

    .prologue
    .line 96
    instance-of v0, p0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    if-eqz v0, :cond_0

    check-cast p0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    .end local p0    # "result":Ljava/lang/Object;
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;->cause:Ljava/lang/Throwable;

    instance-of v0, v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDone0(Ljava/lang/Object;)Z
    .locals 1
    .param p0, "result"    # Ljava/lang/Object;

    .prologue
    .line 110
    if-eqz p0, :cond_0

    sget-object v0, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Lio/netty/util/Signal;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyLateListener(Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 613
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    .local p1, "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<*>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 614
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 615
    iget-object v4, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    if-nez v4, :cond_0

    iget-object v4, p0, Lio/netty/util/concurrent/DefaultPromise;->lateListeners:Lio/netty/util/concurrent/DefaultPromise$LateListeners;

    if-nez v4, :cond_0

    .line 616
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v3

    .line 617
    .local v3, "threadLocals":Lio/netty/util/internal/InternalThreadLocalMap;
    invoke-virtual {v3}, Lio/netty/util/internal/InternalThreadLocalMap;->futureListenerStackDepth()I

    move-result v2

    .line 618
    .local v2, "stackDepth":I
    const/16 v4, 0x8

    if-ge v2, v4, :cond_2

    .line 619
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lio/netty/util/internal/InternalThreadLocalMap;->setFutureListenerStackDepth(I)V

    .line 621
    :try_start_0
    invoke-static {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->notifyListener0(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    invoke-virtual {v3, v2}, Lio/netty/util/internal/InternalThreadLocalMap;->setFutureListenerStackDepth(I)V

    .line 642
    .end local v2    # "stackDepth":I
    .end local v3    # "threadLocals":Lio/netty/util/internal/InternalThreadLocalMap;
    :goto_0
    return-void

    .line 622
    .restart local v2    # "stackDepth":I
    .restart local v3    # "threadLocals":Lio/netty/util/internal/InternalThreadLocalMap;
    :catchall_0
    move-exception v4

    .line 623
    invoke-virtual {v3, v2}, Lio/netty/util/internal/InternalThreadLocalMap;->setFutureListenerStackDepth(I)V

    .line 624
    throw v4

    .line 628
    .end local v2    # "stackDepth":I
    .end local v3    # "threadLocals":Lio/netty/util/internal/InternalThreadLocalMap;
    :cond_0
    iget-object v1, p0, Lio/netty/util/concurrent/DefaultPromise;->lateListeners:Lio/netty/util/concurrent/DefaultPromise$LateListeners;

    .line 629
    .local v1, "lateListeners":Lio/netty/util/concurrent/DefaultPromise$LateListeners;, "Lio/netty/util/concurrent/DefaultPromise<TV;>.LateListeners;"
    if-nez v1, :cond_1

    .line 630
    new-instance v1, Lio/netty/util/concurrent/DefaultPromise$LateListeners;

    .end local v1    # "lateListeners":Lio/netty/util/concurrent/DefaultPromise$LateListeners;, "Lio/netty/util/concurrent/DefaultPromise<TV;>.LateListeners;"
    invoke-direct {v1, p0}, Lio/netty/util/concurrent/DefaultPromise$LateListeners;-><init>(Lio/netty/util/concurrent/DefaultPromise;)V

    .restart local v1    # "lateListeners":Lio/netty/util/concurrent/DefaultPromise$LateListeners;, "Lio/netty/util/concurrent/DefaultPromise<TV;>.LateListeners;"
    iput-object v1, p0, Lio/netty/util/concurrent/DefaultPromise;->lateListeners:Lio/netty/util/concurrent/DefaultPromise$LateListeners;

    .line 632
    :cond_1
    invoke-virtual {v1, p1}, Lio/netty/util/concurrent/DefaultPromise$LateListeners;->add(Ljava/lang/Object;)Z

    .line 633
    invoke-static {v0, v1}, Lio/netty/util/concurrent/DefaultPromise;->execute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 641
    .end local v1    # "lateListeners":Lio/netty/util/concurrent/DefaultPromise$LateListeners;, "Lio/netty/util/concurrent/DefaultPromise<TV;>.LateListeners;"
    :cond_2
    new-instance v4, Lio/netty/util/concurrent/DefaultPromise$LateListenerNotifier;

    invoke-direct {v4, p0, p1}, Lio/netty/util/concurrent/DefaultPromise$LateListenerNotifier;-><init>(Lio/netty/util/concurrent/DefaultPromise;Lio/netty/util/concurrent/GenericFutureListener;)V

    invoke-static {v0, v4}, Lio/netty/util/concurrent/DefaultPromise;->execute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected static notifyListener(Lio/netty/util/concurrent/EventExecutor;Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 3
    .param p0, "eventExecutor"    # Lio/netty/util/concurrent/EventExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/EventExecutor;",
            "Lio/netty/util/concurrent/Future",
            "<*>;",
            "Lio/netty/util/concurrent/GenericFutureListener",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 647
    .local p1, "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<*>;"
    .local p2, "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<*>;"
    invoke-interface {p0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 648
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v1

    .line 649
    .local v1, "threadLocals":Lio/netty/util/internal/InternalThreadLocalMap;
    invoke-virtual {v1}, Lio/netty/util/internal/InternalThreadLocalMap;->futureListenerStackDepth()I

    move-result v0

    .line 650
    .local v0, "stackDepth":I
    const/16 v2, 0x8

    if-ge v0, v2, :cond_0

    .line 651
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lio/netty/util/internal/InternalThreadLocalMap;->setFutureListenerStackDepth(I)V

    .line 653
    :try_start_0
    invoke-static {p1, p2}, Lio/netty/util/concurrent/DefaultPromise;->notifyListener0(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    invoke-virtual {v1, v0}, Lio/netty/util/internal/InternalThreadLocalMap;->setFutureListenerStackDepth(I)V

    .line 667
    .end local v0    # "stackDepth":I
    .end local v1    # "threadLocals":Lio/netty/util/internal/InternalThreadLocalMap;
    :goto_0
    return-void

    .line 654
    .restart local v0    # "stackDepth":I
    .restart local v1    # "threadLocals":Lio/netty/util/internal/InternalThreadLocalMap;
    :catchall_0
    move-exception v2

    .line 655
    invoke-virtual {v1, v0}, Lio/netty/util/internal/InternalThreadLocalMap;->setFutureListenerStackDepth(I)V

    .line 656
    throw v2

    .line 661
    .end local v0    # "stackDepth":I
    .end local v1    # "threadLocals":Lio/netty/util/internal/InternalThreadLocalMap;
    :cond_0
    new-instance v2, Lio/netty/util/concurrent/DefaultPromise$3;

    invoke-direct {v2, p1, p2}, Lio/netty/util/concurrent/DefaultPromise$3;-><init>(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V

    invoke-static {p0, v2}, Lio/netty/util/concurrent/DefaultPromise;->execute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static notifyListener0(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 4
    .param p0, "future"    # Lio/netty/util/concurrent/Future;
    .param p1, "l"    # Lio/netty/util/concurrent/GenericFutureListener;

    .prologue
    .line 680
    :try_start_0
    invoke-interface {p1, p0}, Lio/netty/util/concurrent/GenericFutureListener;->operationComplete(Lio/netty/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 683
    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "An exception was thrown by "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".operationComplete()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private notifyListeners()V
    .locals 9

    .prologue
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    const/4 v8, 0x0

    .line 550
    iget-object v4, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    .line 551
    .local v4, "listeners":Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 597
    .end local v4    # "listeners":Ljava/lang/Object;
    :goto_0
    return-void

    .line 555
    .restart local v4    # "listeners":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    .line 556
    .local v2, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v2}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 557
    invoke-static {}, Lio/netty/util/internal/InternalThreadLocalMap;->get()Lio/netty/util/internal/InternalThreadLocalMap;

    move-result-object v6

    .line 558
    .local v6, "threadLocals":Lio/netty/util/internal/InternalThreadLocalMap;
    invoke-virtual {v6}, Lio/netty/util/internal/InternalThreadLocalMap;->futureListenerStackDepth()I

    move-result v5

    .line 559
    .local v5, "stackDepth":I
    const/16 v7, 0x8

    if-ge v5, v7, :cond_2

    .line 560
    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7}, Lio/netty/util/internal/InternalThreadLocalMap;->setFutureListenerStackDepth(I)V

    .line 562
    :try_start_0
    instance-of v7, v4, Lio/netty/util/concurrent/DefaultFutureListeners;

    if-eqz v7, :cond_1

    .line 563
    check-cast v4, Lio/netty/util/concurrent/DefaultFutureListeners;

    .end local v4    # "listeners":Ljava/lang/Object;
    invoke-static {p0, v4}, Lio/netty/util/concurrent/DefaultPromise;->notifyListeners0(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/DefaultFutureListeners;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 570
    :goto_1
    iput-object v8, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    .line 571
    invoke-virtual {v6, v5}, Lio/netty/util/internal/InternalThreadLocalMap;->setFutureListenerStackDepth(I)V

    goto :goto_0

    .line 566
    .restart local v4    # "listeners":Ljava/lang/Object;
    :cond_1
    :try_start_1
    move-object v0, v4

    check-cast v0, Lio/netty/util/concurrent/GenericFutureListener;

    move-object v3, v0

    .line 567
    .local v3, "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<TV;>;>;"
    invoke-static {p0, v3}, Lio/netty/util/concurrent/DefaultPromise;->notifyListener0(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 569
    .end local v3    # "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<TV;>;>;"
    .end local v4    # "listeners":Ljava/lang/Object;
    :catchall_0
    move-exception v7

    .line 570
    iput-object v8, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    .line 571
    invoke-virtual {v6, v5}, Lio/netty/util/internal/InternalThreadLocalMap;->setFutureListenerStackDepth(I)V

    .line 572
    throw v7

    .line 577
    .end local v5    # "stackDepth":I
    .end local v6    # "threadLocals":Lio/netty/util/internal/InternalThreadLocalMap;
    .restart local v4    # "listeners":Ljava/lang/Object;
    :cond_2
    instance-of v7, v4, Lio/netty/util/concurrent/DefaultFutureListeners;

    if-eqz v7, :cond_3

    move-object v1, v4

    .line 578
    check-cast v1, Lio/netty/util/concurrent/DefaultFutureListeners;

    .line 579
    .local v1, "dfl":Lio/netty/util/concurrent/DefaultFutureListeners;
    new-instance v7, Lio/netty/util/concurrent/DefaultPromise$1;

    invoke-direct {v7, p0, v1}, Lio/netty/util/concurrent/DefaultPromise$1;-><init>(Lio/netty/util/concurrent/DefaultPromise;Lio/netty/util/concurrent/DefaultFutureListeners;)V

    invoke-static {v2, v7}, Lio/netty/util/concurrent/DefaultPromise;->execute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;)V

    goto :goto_0

    .end local v1    # "dfl":Lio/netty/util/concurrent/DefaultFutureListeners;
    :cond_3
    move-object v3, v4

    .line 588
    check-cast v3, Lio/netty/util/concurrent/GenericFutureListener;

    .line 589
    .restart local v3    # "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<TV;>;>;"
    new-instance v7, Lio/netty/util/concurrent/DefaultPromise$2;

    invoke-direct {v7, p0, v3}, Lio/netty/util/concurrent/DefaultPromise$2;-><init>(Lio/netty/util/concurrent/DefaultPromise;Lio/netty/util/concurrent/GenericFutureListener;)V

    invoke-static {v2, v7}, Lio/netty/util/concurrent/DefaultPromise;->execute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static notifyListeners0(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/DefaultFutureListeners;)V
    .locals 4
    .param p1, "listeners"    # Lio/netty/util/concurrent/DefaultFutureListeners;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future",
            "<*>;",
            "Lio/netty/util/concurrent/DefaultFutureListeners;",
            ")V"
        }
    .end annotation

    .prologue
    .line 600
    .local p0, "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<*>;"
    invoke-virtual {p1}, Lio/netty/util/concurrent/DefaultFutureListeners;->listeners()[Lio/netty/util/concurrent/GenericFutureListener;

    move-result-object v0

    .line 601
    .local v0, "a":[Lio/netty/util/concurrent/GenericFutureListener;
    invoke-virtual {p1}, Lio/netty/util/concurrent/DefaultFutureListeners;->size()I

    move-result v2

    .line 602
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 605
    return-void

    .line 603
    :cond_0
    aget-object v3, v0, v1

    invoke-static {p0, v3}, Lio/netty/util/concurrent/DefaultPromise;->notifyListener0(Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V

    .line 602
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static notifyProgressiveListener0(Lio/netty/util/concurrent/ProgressiveFuture;Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V
    .locals 8
    .param p0, "future"    # Lio/netty/util/concurrent/ProgressiveFuture;
    .param p1, "l"    # Lio/netty/util/concurrent/GenericProgressiveFutureListener;
    .param p2, "progress"    # J
    .param p4, "total"    # J

    .prologue
    .line 788
    move-object v0, p1

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    :try_start_0
    invoke-interface/range {v0 .. v5}, Lio/netty/util/concurrent/GenericProgressiveFutureListener;->operationProgressed(Lio/netty/util/concurrent/ProgressiveFuture;JJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    :cond_0
    :goto_0
    return-void

    .line 789
    :catch_0
    move-exception v6

    .line 790
    .local v6, "t":Ljava/lang/Throwable;
    sget-object v0, Lio/netty/util/concurrent/DefaultPromise;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    sget-object v0, Lio/netty/util/concurrent/DefaultPromise;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An exception was thrown by "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".operationProgressed()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static notifyProgressiveListeners0(Lio/netty/util/concurrent/ProgressiveFuture;[Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V
    .locals 8
    .param p1, "listeners"    # [Lio/netty/util/concurrent/GenericProgressiveFutureListener;
    .param p2, "progress"    # J
    .param p4, "total"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/ProgressiveFuture",
            "<*>;[",
            "Lio/netty/util/concurrent/GenericProgressiveFutureListener",
            "<*>;JJ)V"
        }
    .end annotation

    .prologue
    .line 776
    .local p0, "future":Lio/netty/util/concurrent/ProgressiveFuture;, "Lio/netty/util/concurrent/ProgressiveFuture<*>;"
    array-length v7, p1

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-lt v6, v7, :cond_1

    .line 782
    :cond_0
    return-void

    .line 776
    :cond_1
    aget-object v1, p1, v6

    .line 777
    .local v1, "l":Lio/netty/util/concurrent/GenericProgressiveFutureListener;, "Lio/netty/util/concurrent/GenericProgressiveFutureListener<*>;"
    if-eqz v1, :cond_0

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .line 780
    invoke-static/range {v0 .. v5}, Lio/netty/util/concurrent/DefaultPromise;->notifyProgressiveListener0(Lio/netty/util/concurrent/ProgressiveFuture;Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V

    .line 776
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method

.method private declared-synchronized progressiveListeners()Ljava/lang/Object;
    .locals 14

    .prologue
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    const/4 v2, 0x0

    .line 693
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    .local v8, "listeners":Ljava/lang/Object;
    if-nez v8, :cond_1

    move-object v7, v2

    .line 729
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v7

    .line 699
    :cond_1
    :try_start_1
    instance-of v10, v8, Lio/netty/util/concurrent/DefaultFutureListeners;

    if-eqz v10, :cond_4

    .line 701
    move-object v0, v8

    check-cast v0, Lio/netty/util/concurrent/DefaultFutureListeners;

    move-object v3, v0

    .line 702
    .local v3, "dfl":Lio/netty/util/concurrent/DefaultFutureListeners;
    invoke-virtual {v3}, Lio/netty/util/concurrent/DefaultFutureListeners;->progressiveSize()I

    move-result v9

    .line 703
    .local v9, "progressiveSize":I
    packed-switch v9, :pswitch_data_0

    .line 715
    invoke-virtual {v3}, Lio/netty/util/concurrent/DefaultFutureListeners;->listeners()[Lio/netty/util/concurrent/GenericFutureListener;

    move-result-object v1

    .line 716
    .local v1, "array":[Lio/netty/util/concurrent/GenericFutureListener;
    new-array v2, v9, [Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    .line 717
    .local v2, "copy":[Lio/netty/util/concurrent/GenericProgressiveFutureListener;
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "j":I
    move v6, v5

    .end local v5    # "j":I
    .local v6, "j":I
    :goto_1
    if-lt v6, v9, :cond_3

    move-object v7, v2

    .line 724
    goto :goto_0

    .end local v1    # "array":[Lio/netty/util/concurrent/GenericFutureListener;
    .end local v2    # "copy":[Lio/netty/util/concurrent/GenericProgressiveFutureListener;
    .end local v4    # "i":I
    .end local v6    # "j":I
    :pswitch_0
    move-object v7, v2

    .line 705
    goto :goto_0

    .line 707
    :pswitch_1
    invoke-virtual {v3}, Lio/netty/util/concurrent/DefaultFutureListeners;->listeners()[Lio/netty/util/concurrent/GenericFutureListener;

    move-result-object v11

    array-length v12, v11

    const/4 v10, 0x0

    :goto_2
    if-lt v10, v12, :cond_2

    move-object v7, v2

    .line 712
    goto :goto_0

    .line 707
    :cond_2
    aget-object v7, v11, v10

    .line 708
    .local v7, "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<*>;"
    instance-of v13, v7, Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    if-nez v13, :cond_0

    .line 707
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 718
    .end local v7    # "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<*>;"
    .restart local v1    # "array":[Lio/netty/util/concurrent/GenericFutureListener;
    .restart local v2    # "copy":[Lio/netty/util/concurrent/GenericProgressiveFutureListener;
    .restart local v4    # "i":I
    .restart local v6    # "j":I
    :cond_3
    aget-object v7, v1, v4

    .line 719
    .restart local v7    # "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<*>;"
    instance-of v10, v7, Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    if-eqz v10, :cond_6

    .line 720
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "j":I
    .restart local v5    # "j":I
    check-cast v7, Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    .end local v7    # "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<*>;"
    aput-object v7, v2, v6

    .line 717
    :goto_3
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    .end local v5    # "j":I
    .restart local v6    # "j":I
    goto :goto_1

    .line 725
    .end local v1    # "array":[Lio/netty/util/concurrent/GenericFutureListener;
    .end local v2    # "copy":[Lio/netty/util/concurrent/GenericProgressiveFutureListener;
    .end local v3    # "dfl":Lio/netty/util/concurrent/DefaultFutureListeners;
    .end local v4    # "i":I
    .end local v6    # "j":I
    .end local v9    # "progressiveSize":I
    :cond_4
    instance-of v10, v8, Lio/netty/util/concurrent/GenericProgressiveFutureListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_5

    move-object v7, v8

    .line 726
    goto :goto_0

    :cond_5
    move-object v7, v2

    .line 729
    goto :goto_0

    .line 693
    .end local v8    # "listeners":Ljava/lang/Object;
    :catchall_0
    move-exception v10

    monitor-exit p0

    throw v10

    .restart local v1    # "array":[Lio/netty/util/concurrent/GenericFutureListener;
    .restart local v2    # "copy":[Lio/netty/util/concurrent/GenericProgressiveFutureListener;
    .restart local v3    # "dfl":Lio/netty/util/concurrent/DefaultFutureListeners;
    .restart local v4    # "i":I
    .restart local v6    # "j":I
    .restart local v7    # "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<*>;"
    .restart local v8    # "listeners":Ljava/lang/Object;
    .restart local v9    # "progressiveSize":I
    :cond_6
    move v5, v6

    .end local v6    # "j":I
    .restart local v5    # "j":I
    goto :goto_3

    .line 703
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private rethrowIfFailed()V
    .locals 1

    .prologue
    .line 231
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->cause()Ljava/lang/Throwable;

    move-result-object v0

    .line 232
    .local v0, "cause":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 237
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setFailure0(Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    const/4 v0, 0x0

    .line 474
    if-nez p1, :cond_0

    .line 475
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cause"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 493
    :goto_0
    return v0

    .line 482
    :cond_1
    monitor-enter p0

    .line 484
    :try_start_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 485
    monitor-exit p0

    goto :goto_0

    .line 482
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 488
    :cond_2
    :try_start_1
    new-instance v0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    invoke-direct {v0, p1}, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;-><init>(Ljava/lang/Throwable;)V

    iput-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    .line 489
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->hasWaiters()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 490
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 482
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 493
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setSuccess0(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    .local p1, "result":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    .line 497
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    :goto_0
    return v0

    .line 501
    :cond_0
    monitor-enter p0

    .line 503
    :try_start_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 504
    monitor-exit p0

    goto :goto_0

    .line 501
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 506
    :cond_1
    if-nez p1, :cond_3

    .line 507
    :try_start_1
    sget-object v0, Lio/netty/util/concurrent/DefaultPromise;->SUCCESS:Lio/netty/util/Signal;

    iput-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    .line 511
    :goto_1
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->hasWaiters()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 512
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 501
    :cond_2
    monitor-exit p0

    .line 515
    const/4 v0, 0x1

    goto :goto_0

    .line 509
    :cond_3
    iput-object p1, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lio/netty/util/concurrent/GenericFutureListener;

    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    move-result-object v0

    return-object v0
.end method

.method public addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener",
            "<+",
            "Lio/netty/util/concurrent/Future",
            "<-TV;>;>;)",
            "Lio/netty/util/concurrent/Promise",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 133
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    .local p1, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    if-nez p1, :cond_0

    .line 134
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "listener"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->notifyLateListener(Lio/netty/util/concurrent/GenericFutureListener;)V

    .line 160
    :goto_0
    return-object p0

    .line 142
    :cond_1
    monitor-enter p0

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v1

    if-nez v1, :cond_4

    .line 144
    iget-object v1, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 145
    iput-object p1, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    .line 155
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 147
    :cond_2
    :try_start_1
    iget-object v1, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    instance-of v1, v1, Lio/netty/util/concurrent/DefaultFutureListeners;

    if-eqz v1, :cond_3

    .line 148
    iget-object v1, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    check-cast v1, Lio/netty/util/concurrent/DefaultFutureListeners;

    invoke-virtual {v1, p1}, Lio/netty/util/concurrent/DefaultFutureListeners;->add(Lio/netty/util/concurrent/GenericFutureListener;)V

    goto :goto_1

    .line 151
    :cond_3
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    check-cast v0, Lio/netty/util/concurrent/GenericFutureListener;

    .line 152
    .local v0, "firstListener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<TV;>;>;"
    new-instance v1, Lio/netty/util/concurrent/DefaultFutureListeners;

    invoke-direct {v1, v0, p1}, Lio/netty/util/concurrent/DefaultFutureListeners;-><init>(Lio/netty/util/concurrent/GenericFutureListener;Lio/netty/util/concurrent/GenericFutureListener;)V

    iput-object v1, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    goto :goto_1

    .line 142
    .end local v0    # "firstListener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<TV;>;>;"
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->notifyLateListener(Lio/netty/util/concurrent/GenericFutureListener;)V

    goto :goto_0
.end method

.method public bridge varargs synthetic addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lio/netty/util/concurrent/GenericFutureListener;

    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    move-result-object v0

    return-object v0
.end method

.method public varargs addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 3
    .param p1, "listeners"    # [Lio/netty/util/concurrent/GenericFutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/GenericFutureListener",
            "<+",
            "Lio/netty/util/concurrent/Future",
            "<-TV;>;>;)",
            "Lio/netty/util/concurrent/Promise",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 165
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    if-nez p1, :cond_0

    .line 166
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "listeners"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_0
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_2

    .line 175
    :cond_1
    return-object p0

    .line 169
    :cond_2
    aget-object v0, p1, v1

    .line 170
    .local v0, "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/DefaultPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    .line 169
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public bridge synthetic await()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->await()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    return-object v0
.end method

.method public await()Lio/netty/util/concurrent/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Promise",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    :goto_0
    return-object p0

    .line 245
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_1
    monitor-enter p0

    .line 250
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 251
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->checkDeadLock()V

    .line 252
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->incWaiters()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 256
    :try_start_3
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->decWaiters()V

    goto :goto_1

    .line 255
    :catchall_1
    move-exception v0

    .line 256
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->decWaiters()V

    .line 257
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public await(J)Z
    .locals 3
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 271
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lio/netty/util/concurrent/DefaultPromise;->await0(JZ)Z

    move-result v0

    return v0
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 266
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lio/netty/util/concurrent/DefaultPromise;->await0(JZ)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic awaitUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->awaitUninterruptibly()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    return-object v0
.end method

.method public awaitUninterruptibly()Lio/netty/util/concurrent/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Promise",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    :cond_0
    :goto_0
    return-object p0

    .line 280
    :cond_1
    const/4 v1, 0x0

    .line 281
    .local v1, "interrupted":Z
    monitor-enter p0

    .line 282
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 281
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    if-eqz v1, :cond_0

    .line 297
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 283
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->checkDeadLock()V

    .line 284
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->incWaiters()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 291
    :try_start_3
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->decWaiters()V

    goto :goto_1

    .line 281
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 287
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .line 291
    :try_start_4
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->decWaiters()V

    goto :goto_1

    .line 290
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v2

    .line 291
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->decWaiters()V

    .line 292
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public awaitUninterruptibly(J)Z
    .locals 5
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 316
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {p0, v2, v3, v1}, Lio/netty/util/concurrent/DefaultPromise;->await0(JZ)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 317
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public awaitUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .locals 5
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 306
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    :try_start_0
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {p0, v2, v3, v1}, Lio/netty/util/concurrent/DefaultPromise;->await0(JZ)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 307
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1}, Ljava/lang/InternalError;-><init>()V

    throw v1
.end method

.method public cancel(Z)Z
    .locals 3
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    const/4 v1, 0x0

    .line 432
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    .line 433
    .local v0, "result":Ljava/lang/Object;
    invoke-static {v0}, Lio/netty/util/concurrent/DefaultPromise;->isDone0(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Lio/netty/util/Signal;

    if-ne v0, v2, :cond_1

    .line 451
    :cond_0
    :goto_0
    return v1

    .line 437
    :cond_1
    monitor-enter p0

    .line 439
    :try_start_0
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    .line 440
    invoke-static {v0}, Lio/netty/util/concurrent/DefaultPromise;->isDone0(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Lio/netty/util/Signal;

    if-ne v0, v2, :cond_3

    .line 441
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 437
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 444
    :cond_3
    :try_start_1
    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->CANCELLATION_CAUSE_HOLDER:Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    iput-object v1, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    .line 445
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->hasWaiters()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 446
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 437
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->notifyListeners()V

    .line 451
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public cause()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 124
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    .line 125
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    if-eqz v1, :cond_0

    .line 126
    check-cast v0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    .end local v0    # "result":Ljava/lang/Object;
    iget-object v1, v0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;->cause:Ljava/lang/Throwable;

    .line 128
    :goto_0
    return-object v1

    .restart local v0    # "result":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected checkDeadLock()V
    .locals 3

    .prologue
    .line 388
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 389
    .local v0, "e":Lio/netty/util/concurrent/EventExecutor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    new-instance v1, Lio/netty/util/concurrent/BlockingOperationException;

    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/netty/util/concurrent/BlockingOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 392
    :cond_0
    return-void
.end method

.method protected executor()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    .prologue
    .line 87
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->executor:Lio/netty/util/concurrent/EventExecutor;

    return-object v0
.end method

.method public getNow()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 521
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    .line 522
    .local v0, "result":Ljava/lang/Object;
    instance-of v1, v0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    if-nez v1, :cond_0

    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->SUCCESS:Lio/netty/util/Signal;

    if-ne v0, v1, :cond_1

    .line 523
    :cond_0
    const/4 v0, 0x0

    .line 525
    .end local v0    # "result":Ljava/lang/Object;
    :cond_1
    return-object v0
.end method

.method public isCancellable()Z
    .locals 1

    .prologue
    .line 101
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    invoke-static {v0}, Lio/netty/util/concurrent/DefaultPromise;->isCancelled0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 106
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    invoke-static {v0}, Lio/netty/util/concurrent/DefaultPromise;->isDone0(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSuccess()Z
    .locals 3

    .prologue
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    const/4 v1, 0x0

    .line 115
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    .line 116
    .local v0, "result":Ljava/lang/Object;
    if-eqz v0, :cond_0

    sget-object v2, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Lio/netty/util/Signal;

    if-ne v0, v2, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v2, v0, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method notifyProgressiveListeners(JJ)V
    .locals 17
    .param p1, "progress"    # J
    .param p3, "total"    # J

    .prologue
    .line 735
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-direct/range {p0 .. p0}, Lio/netty/util/concurrent/DefaultPromise;->progressiveListeners()Ljava/lang/Object;

    move-result-object v15

    .line 736
    .local v15, "listeners":Ljava/lang/Object;
    if-nez v15, :cond_0

    .line 772
    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    .line 740
    check-cast v0, Lio/netty/util/concurrent/ProgressiveFuture;

    .line 742
    .local v0, "self":Lio/netty/util/concurrent/ProgressiveFuture;, "Lio/netty/util/concurrent/ProgressiveFuture<TV;>;"
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/concurrent/DefaultPromise;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v14

    .line 743
    .local v14, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v14}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 744
    instance-of v1, v15, [Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    if-eqz v1, :cond_1

    move-object v1, v15

    .line 746
    check-cast v1, [Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    .line 745
    invoke-static/range {v0 .. v5}, Lio/netty/util/concurrent/DefaultPromise;->notifyProgressiveListeners0(Lio/netty/util/concurrent/ProgressiveFuture;[Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V

    goto :goto_0

    :cond_1
    move-object v1, v15

    .line 749
    check-cast v1, Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    .line 748
    invoke-static/range {v0 .. v5}, Lio/netty/util/concurrent/DefaultPromise;->notifyProgressiveListener0(Lio/netty/util/concurrent/ProgressiveFuture;Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V

    goto :goto_0

    .line 752
    :cond_2
    instance-of v1, v15, [Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    if-eqz v1, :cond_3

    move-object v5, v15

    .line 754
    check-cast v5, [Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    .line 755
    .local v5, "array":[Lio/netty/util/concurrent/GenericProgressiveFutureListener;
    new-instance v2, Lio/netty/util/concurrent/DefaultPromise$4;

    move-object/from16 v3, p0

    move-object v4, v0

    move-wide/from16 v6, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v2 .. v9}, Lio/netty/util/concurrent/DefaultPromise$4;-><init>(Lio/netty/util/concurrent/DefaultPromise;Lio/netty/util/concurrent/ProgressiveFuture;[Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V

    invoke-static {v14, v2}, Lio/netty/util/concurrent/DefaultPromise;->execute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;)V

    goto :goto_0

    .end local v5    # "array":[Lio/netty/util/concurrent/GenericProgressiveFutureListener;
    :cond_3
    move-object v9, v15

    .line 763
    check-cast v9, Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    .line 764
    .local v9, "l":Lio/netty/util/concurrent/GenericProgressiveFutureListener;, "Lio/netty/util/concurrent/GenericProgressiveFutureListener<Lio/netty/util/concurrent/ProgressiveFuture<TV;>;>;"
    new-instance v6, Lio/netty/util/concurrent/DefaultPromise$5;

    move-object/from16 v7, p0

    move-object v8, v0

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    invoke-direct/range {v6 .. v13}, Lio/netty/util/concurrent/DefaultPromise$5;-><init>(Lio/netty/util/concurrent/DefaultPromise;Lio/netty/util/concurrent/ProgressiveFuture;Lio/netty/util/concurrent/GenericProgressiveFutureListener;JJ)V

    invoke-static {v14, v6}, Lio/netty/util/concurrent/DefaultPromise;->execute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public bridge synthetic removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lio/netty/util/concurrent/GenericFutureListener;

    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    move-result-object v0

    return-object v0
.end method

.method public removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener",
            "<+",
            "Lio/netty/util/concurrent/Future",
            "<-TV;>;>;)",
            "Lio/netty/util/concurrent/Promise",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    .local p1, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    if-nez p1, :cond_0

    .line 181
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    :goto_0
    return-object p0

    .line 188
    :cond_1
    monitor-enter p0

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    .line 190
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    instance-of v0, v0, Lio/netty/util/concurrent/DefaultFutureListeners;

    if-eqz v0, :cond_3

    .line 191
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    check-cast v0, Lio/netty/util/concurrent/DefaultFutureListeners;

    invoke-virtual {v0, p1}, Lio/netty/util/concurrent/DefaultFutureListeners;->remove(Lio/netty/util/concurrent/GenericFutureListener;)V

    .line 188
    :cond_2
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 192
    :cond_3
    :try_start_1
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;

    if-ne v0, p1, :cond_2

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->listeners:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public bridge varargs synthetic removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lio/netty/util/concurrent/GenericFutureListener;

    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    move-result-object v0

    return-object v0
.end method

.method public varargs removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;
    .locals 3
    .param p1, "listeners"    # [Lio/netty/util/concurrent/GenericFutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/GenericFutureListener",
            "<+",
            "Lio/netty/util/concurrent/Future",
            "<-TV;>;>;)",
            "Lio/netty/util/concurrent/Promise",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    if-nez p1, :cond_0

    .line 204
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "listeners"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_0
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_2

    .line 213
    :cond_1
    return-object p0

    .line 207
    :cond_2
    aget-object v0, p1, v1

    .line 208
    .local v0, "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    if-eqz v0, :cond_1

    .line 211
    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/DefaultPromise;->removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Promise;

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/netty/util/concurrent/Promise",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 414
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->setFailure0(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->notifyListeners()V

    .line 416
    return-object p0

    .line 418
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "complete already: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Lio/netty/util/concurrent/Promise",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 396
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    .local p1, "result":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->setSuccess0(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->notifyListeners()V

    .line 398
    return-object p0

    .line 400
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "complete already: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUncancellable()Z
    .locals 4

    .prologue
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 456
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    .line 457
    .local v0, "result":Ljava/lang/Object;
    invoke-static {v0}, Lio/netty/util/concurrent/DefaultPromise;->isDone0(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 458
    invoke-static {v0}, Lio/netty/util/concurrent/DefaultPromise;->isCancelled0(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 470
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 458
    goto :goto_0

    .line 461
    :cond_1
    monitor-enter p0

    .line 463
    :try_start_0
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    .line 464
    invoke-static {v0}, Lio/netty/util/concurrent/DefaultPromise;->isDone0(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 465
    invoke-static {v0}, Lio/netty/util/concurrent/DefaultPromise;->isCancelled0(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 461
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    move v1, v2

    .line 465
    goto :goto_1

    .line 468
    :cond_3
    :try_start_1
    sget-object v1, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Lio/netty/util/Signal;

    iput-object v1, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    .line 461
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    .line 470
    goto :goto_0
.end method

.method public bridge synthetic sync()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->sync()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    return-object v0
.end method

.method public sync()Lio/netty/util/concurrent/Promise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Promise",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 218
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->await()Lio/netty/util/concurrent/Promise;

    .line 219
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->rethrowIfFailed()V

    .line 220
    return-object p0
.end method

.method public bridge synthetic syncUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->syncUninterruptibly()Lio/netty/util/concurrent/Promise;

    move-result-object v0

    return-object v0
.end method

.method public syncUninterruptibly()Lio/netty/util/concurrent/Promise;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Promise",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->awaitUninterruptibly()Lio/netty/util/concurrent/Promise;

    .line 226
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->rethrowIfFailed()V

    .line 227
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 805
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/DefaultPromise;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    const/16 v3, 0x40

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 810
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 812
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    iget-object v1, p0, Lio/netty/util/concurrent/DefaultPromise;->result:Ljava/lang/Object;

    .line 815
    .local v1, "result":Ljava/lang/Object;
    sget-object v2, Lio/netty/util/concurrent/DefaultPromise;->SUCCESS:Lio/netty/util/Signal;

    if-ne v1, v2, :cond_0

    .line 816
    const-string v2, "(success)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    .end local v1    # "result":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 817
    .restart local v1    # "result":Ljava/lang/Object;
    :cond_0
    sget-object v2, Lio/netty/util/concurrent/DefaultPromise;->UNCANCELLABLE:Lio/netty/util/Signal;

    if-ne v1, v2, :cond_1

    .line 818
    const-string v2, "(uncancellable)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 819
    :cond_1
    instance-of v2, v1, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    if-eqz v2, :cond_2

    .line 820
    const-string v2, "(failure("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    check-cast v1, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;

    .end local v1    # "result":Ljava/lang/Object;
    iget-object v2, v1, Lio/netty/util/concurrent/DefaultPromise$CauseHolder;->cause:Ljava/lang/Throwable;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 822
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 824
    .restart local v1    # "result":Ljava/lang/Object;
    :cond_2
    const-string v2, "(incomplete)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public tryFailure(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 423
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->setFailure0(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->notifyListeners()V

    .line 425
    const/4 v0, 0x1

    .line 427
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public trySuccess(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 405
    .local p0, "this":Lio/netty/util/concurrent/DefaultPromise;, "Lio/netty/util/concurrent/DefaultPromise<TV;>;"
    .local p1, "result":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->setSuccess0(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    invoke-direct {p0}, Lio/netty/util/concurrent/DefaultPromise;->notifyListeners()V

    .line 407
    const/4 v0, 0x1

    .line 409
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
