.class final Lio/netty/util/concurrent/ScheduledFutureTask;
.super Lio/netty/util/concurrent/PromiseTask;
.source "ScheduledFutureTask.java"

# interfaces
.implements Lio/netty/util/concurrent/ScheduledFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/concurrent/PromiseTask",
        "<TV;>;",
        "Lio/netty/util/concurrent/ScheduledFuture",
        "<TV;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final START_TIME:J

.field private static final nextTaskId:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private deadlineNanos:J

.field private final delayedTaskQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lio/netty/util/concurrent/ScheduledFutureTask",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final id:J

.field private final periodNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-class v0, Lio/netty/util/concurrent/ScheduledFutureTask;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lio/netty/util/concurrent/ScheduledFutureTask;->$assertionsDisabled:Z

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lio/netty/util/concurrent/ScheduledFutureTask;->nextTaskId:Ljava/util/concurrent/atomic/AtomicLong;

    .line 28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lio/netty/util/concurrent/ScheduledFutureTask;->START_TIME:J

    return-void

    .line 26
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lio/netty/util/concurrent/EventExecutor;Ljava/util/Queue;Ljava/lang/Runnable;Ljava/lang/Object;J)V
    .locals 7
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutor;
    .param p3, "runnable"    # Ljava/lang/Runnable;
    .param p5, "nanoTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/EventExecutor;",
            "Ljava/util/Queue",
            "<",
            "Lio/netty/util/concurrent/ScheduledFutureTask",
            "<*>;>;",
            "Ljava/lang/Runnable;",
            "TV;J)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    .local p2, "delayedTaskQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lio/netty/util/concurrent/ScheduledFutureTask<*>;>;"
    .local p4, "result":Ljava/lang/Object;, "TV;"
    invoke-static {p3, p4}, Lio/netty/util/concurrent/ScheduledFutureTask;->toCallable(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Callable;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lio/netty/util/concurrent/ScheduledFutureTask;-><init>(Lio/netty/util/concurrent/EventExecutor;Ljava/util/Queue;Ljava/util/concurrent/Callable;J)V

    .line 49
    return-void
.end method

.method constructor <init>(Lio/netty/util/concurrent/EventExecutor;Ljava/util/Queue;Ljava/util/concurrent/Callable;J)V
    .locals 2
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutor;
    .param p4, "nanoTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/EventExecutor;",
            "Ljava/util/Queue",
            "<",
            "Lio/netty/util/concurrent/ScheduledFutureTask",
            "<*>;>;",
            "Ljava/util/concurrent/Callable",
            "<TV;>;J)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    .local p2, "delayedTaskQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lio/netty/util/concurrent/ScheduledFutureTask<*>;>;"
    .local p3, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-direct {p0, p1, p3}, Lio/netty/util/concurrent/PromiseTask;-><init>(Lio/netty/util/concurrent/EventExecutor;Ljava/util/concurrent/Callable;)V

    .line 38
    sget-object v0, Lio/netty/util/concurrent/ScheduledFutureTask;->nextTaskId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->id:J

    .line 69
    iput-object p2, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->delayedTaskQueue:Ljava/util/Queue;

    .line 70
    iput-wide p4, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos:J

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->periodNanos:J

    .line 72
    return-void
.end method

.method constructor <init>(Lio/netty/util/concurrent/EventExecutor;Ljava/util/Queue;Ljava/util/concurrent/Callable;JJ)V
    .locals 2
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutor;
    .param p4, "nanoTime"    # J
    .param p6, "period"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/EventExecutor;",
            "Ljava/util/Queue",
            "<",
            "Lio/netty/util/concurrent/ScheduledFutureTask",
            "<*>;>;",
            "Ljava/util/concurrent/Callable",
            "<TV;>;JJ)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    .local p2, "delayedTaskQueue":Ljava/util/Queue;, "Ljava/util/Queue<Lio/netty/util/concurrent/ScheduledFutureTask<*>;>;"
    .local p3, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-direct {p0, p1, p3}, Lio/netty/util/concurrent/PromiseTask;-><init>(Lio/netty/util/concurrent/EventExecutor;Ljava/util/concurrent/Callable;)V

    .line 38
    sget-object v0, Lio/netty/util/concurrent/ScheduledFutureTask;->nextTaskId:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->id:J

    .line 56
    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "period: 0 (expected: != 0)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    iput-object p2, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->delayedTaskQueue:Ljava/util/Queue;

    .line 60
    iput-wide p4, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos:J

    .line 61
    iput-wide p6, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->periodNanos:J

    .line 62
    return-void
.end method

.method static deadlineNanos(J)J
    .locals 2
    .param p0, "delay"    # J

    .prologue
    .line 35
    invoke-static {}, Lio/netty/util/concurrent/ScheduledFutureTask;->nanoTime()J

    move-result-wide v0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method static nanoTime()J
    .locals 4

    .prologue
    .line 31
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, Lio/netty/util/concurrent/ScheduledFutureTask;->START_TIME:J

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/util/concurrent/Delayed;

    invoke-virtual {p0, p1}, Lio/netty/util/concurrent/ScheduledFutureTask;->compareTo(Ljava/util/concurrent/Delayed;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/util/concurrent/Delayed;)I
    .locals 12
    .param p1, "o"    # Ljava/util/concurrent/Delayed;

    .prologue
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    const-wide/16 v10, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 98
    if-ne p0, p1, :cond_1

    .line 99
    const/4 v3, 0x0

    .line 113
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v2, p1

    .line 102
    check-cast v2, Lio/netty/util/concurrent/ScheduledFutureTask;

    .line 103
    .local v2, "that":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<*>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos()J

    move-result-wide v6

    invoke-virtual {v2}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 104
    .local v0, "d":J
    cmp-long v5, v0, v10

    if-ltz v5, :cond_0

    .line 106
    cmp-long v5, v0, v10

    if-lez v5, :cond_2

    move v3, v4

    .line 107
    goto :goto_0

    .line 108
    :cond_2
    iget-wide v6, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->id:J

    iget-wide v8, v2, Lio/netty/util/concurrent/ScheduledFutureTask;->id:J

    cmp-long v5, v6, v8

    if-ltz v5, :cond_0

    .line 110
    iget-wide v6, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->id:J

    iget-wide v8, v2, Lio/netty/util/concurrent/ScheduledFutureTask;->id:J

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    .line 111
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3}, Ljava/lang/Error;-><init>()V

    throw v3

    :cond_3
    move v3, v4

    .line 113
    goto :goto_0
.end method

.method public deadlineNanos()J
    .locals 2

    .prologue
    .line 80
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    iget-wide v0, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos:J

    return-wide v0
.end method

.method public delayNanos()J
    .locals 6

    .prologue
    .line 84
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos()J

    move-result-wide v2

    invoke-static {}, Lio/netty/util/concurrent/ScheduledFutureTask;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public delayNanos(J)J
    .locals 7
    .param p1, "currentTimeNanos"    # J

    .prologue
    .line 88
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos()J

    move-result-wide v2

    sget-wide v4, Lio/netty/util/concurrent/ScheduledFutureTask;->START_TIME:J

    sub-long v4, p1, v4

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method protected executor()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    .prologue
    .line 76
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    invoke-super {p0}, Lio/netty/util/concurrent/PromiseTask;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    return-object v0
.end method

.method public getDelay(Ljava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 93
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->delayNanos()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public run()V
    .locals 8

    .prologue
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    const-wide/16 v6, 0x0

    .line 119
    sget-boolean v4, Lio/netty/util/concurrent/ScheduledFutureTask;->$assertionsDisabled:Z

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 121
    :cond_0
    :try_start_0
    iget-wide v4, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->periodNanos:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 122
    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->setUncancellableInternal()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    iget-object v4, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->task:Ljava/util/concurrent/Callable;

    invoke-interface {v4}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    .line 124
    .local v1, "result":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v1}, Lio/netty/util/concurrent/ScheduledFutureTask;->setSuccessInternal(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    .line 146
    .end local v1    # "result":Ljava/lang/Object;, "TV;"
    :cond_1
    :goto_0
    return-void

    .line 128
    :cond_2
    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 129
    iget-object v4, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->task:Ljava/util/concurrent/Callable;

    invoke-interface {v4}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 130
    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v4

    invoke-interface {v4}, Lio/netty/util/concurrent/EventExecutor;->isShutdown()Z

    move-result v4

    if-nez v4, :cond_1

    .line 131
    iget-wide v2, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->periodNanos:J

    .line 132
    .local v2, "p":J
    cmp-long v4, v2, v6

    if-lez v4, :cond_3

    .line 133
    iget-wide v4, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos:J

    .line 137
    :goto_1
    invoke-virtual {p0}, Lio/netty/util/concurrent/ScheduledFutureTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 138
    iget-object v4, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->delayedTaskQueue:Ljava/util/Queue;

    invoke-interface {v4, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    .end local v2    # "p":J
    :catch_0
    move-exception v0

    .line 144
    .local v0, "cause":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lio/netty/util/concurrent/ScheduledFutureTask;->setFailureInternal(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    goto :goto_0

    .line 135
    .end local v0    # "cause":Ljava/lang/Throwable;
    .restart local v2    # "p":J
    :cond_3
    :try_start_1
    invoke-static {}, Lio/netty/util/concurrent/ScheduledFutureTask;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    .line 150
    .local p0, "this":Lio/netty/util/concurrent/ScheduledFutureTask;, "Lio/netty/util/concurrent/ScheduledFutureTask<TV;>;"
    invoke-super {p0}, Lio/netty/util/concurrent/PromiseTask;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 151
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 152
    const-string v1, " id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-wide v2, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, ", deadline: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-wide v2, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->deadlineNanos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, ", period: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-wide v2, p0, Lio/netty/util/concurrent/ScheduledFutureTask;->periodNanos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 158
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    return-object v0
.end method
