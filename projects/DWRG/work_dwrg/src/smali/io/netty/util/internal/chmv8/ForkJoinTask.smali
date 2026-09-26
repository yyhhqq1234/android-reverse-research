.class public abstract Lio/netty/util/internal/chmv8/ForkJoinTask;
.super Ljava/lang/Object;
.source "ForkJoinTask.java"

# interfaces
.implements Ljava/util/concurrent/Future;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable;,
        Lio/netty/util/internal/chmv8/ForkJoinTask$RunnableExecuteAction;,
        Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedRunnableAction;,
        Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedRunnable;,
        Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final CANCELLED:I = -0x40000000

.field static final DONE_MASK:I = -0x10000000

.field static final EXCEPTIONAL:I = -0x80000000

.field private static final EXCEPTION_MAP_CAPACITY:I = 0x20

.field static final NORMAL:I = -0x10000000

.field static final SIGNAL:I = 0x10000

.field static final SMASK:I = 0xffff

.field private static final STATUS:J

.field private static final U:Lsun/misc/Unsafe;

.field private static final exceptionTable:[Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;

.field private static final exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private static final exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x6b295cc9a986fd4fL


# instance fields
.field volatile status:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 1518
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v2, Lio/netty/util/internal/chmv8/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 1519
    new-instance v2, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v2, Lio/netty/util/internal/chmv8/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    .line 1520
    const/16 v2, 0x20

    new-array v2, v2, [Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;

    sput-object v2, Lio/netty/util/internal/chmv8/ForkJoinTask;->exceptionTable:[Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;

    .line 1522
    :try_start_0
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinTask;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v2

    sput-object v2, Lio/netty/util/internal/chmv8/ForkJoinTask;->U:Lsun/misc/Unsafe;

    .line 1523
    const-class v1, Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 1524
    .local v1, "k":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lio/netty/util/internal/chmv8/ForkJoinTask;->U:Lsun/misc/Unsafe;

    const-string v3, "status"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v2, v3}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v2

    sput-wide v2, Lio/netty/util/internal/chmv8/ForkJoinTask;->STATUS:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1529
    return-void

    .line 1526
    :catch_0
    move-exception v0

    .line 1527
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 203
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1422
    return-void
.end method

.method static synthetic access$000()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method public static adapt(Ljava/lang/Runnable;)Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1457
    new-instance v0, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedRunnableAction;

    invoke-direct {v0, p0}, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedRunnableAction;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static adapt(Ljava/lang/Runnable;Ljava/lang/Object;)Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Runnable;",
            "TT;)",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1470
    .local p1, "result":Ljava/lang/Object;, "TT;"
    new-instance v0, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedRunnable;

    invoke-direct {v0, p0, p1}, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedRunnable;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static adapt(Ljava/util/concurrent/Callable;)Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<+TT;>;)",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1483
    .local p0, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TT;>;"
    new-instance v0, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable;

    invoke-direct {v0, p0}, Lio/netty/util/internal/chmv8/ForkJoinTask$AdaptedCallable;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method static final cancelIgnoringExceptions(Lio/netty/util/internal/chmv8/ForkJoinTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 498
    .local p0, "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz p0, :cond_0

    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v0, :cond_0

    .line 500
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 501
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private clearExceptionalCompletion()V
    .locals 8

    .prologue
    .line 510
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 511
    .local v1, "h":I
    sget-object v3, Lio/netty/util/internal/chmv8/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 512
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 514
    :try_start_0
    sget-object v6, Lio/netty/util/internal/chmv8/ForkJoinTask;->exceptionTable:[Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;

    .line 515
    .local v6, "t":[Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    array-length v7, v6

    add-int/lit8 v7, v7, -0x1

    and-int v2, v1, v7

    .line 516
    .local v2, "i":I
    aget-object v0, v6, v2

    .line 517
    .local v0, "e":Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    const/4 v5, 0x0

    .line 518
    .local v5, "pred":Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    :goto_0
    if-eqz v0, :cond_0

    .line 519
    iget-object v4, v0, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;->next:Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;

    .line 520
    .local v4, "next":Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, p0, :cond_2

    .line 521
    if-nez v5, :cond_1

    .line 522
    aput-object v4, v6, v2

    .line 530
    .end local v4    # "next":Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    :cond_0
    :goto_1
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinTask;->expungeStaleExceptions()V

    .line 531
    const/4 v7, 0x0

    iput v7, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 535
    return-void

    .line 524
    .restart local v4    # "next":Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    :cond_1
    :try_start_1
    iput-object v4, v5, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;->next:Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 533
    .end local v0    # "e":Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    .end local v2    # "i":I
    .end local v4    # "next":Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    .end local v5    # "pred":Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    .end local v6    # "t":[Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    :catchall_0
    move-exception v7

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v7

    .line 527
    .restart local v0    # "e":Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    .restart local v2    # "i":I
    .restart local v4    # "next":Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    .restart local v5    # "pred":Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    .restart local v6    # "t":[Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    :cond_2
    move-object v5, v0

    .line 528
    move-object v0, v4

    .line 529
    goto :goto_0
.end method

.method private doInvoke()I
    .locals 5

    .prologue
    .line 392
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doExec()I

    move-result v0

    .local v0, "s":I
    if-gez v0, :cond_0

    .end local v0    # "s":I
    :goto_0
    return v0

    .restart local v0    # "s":I
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .local v1, "t":Ljava/lang/Thread;
    instance-of v3, v1, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    if-eqz v3, :cond_1

    move-object v2, v1

    check-cast v2, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    .local v2, "wt":Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;
    iget-object v3, v2, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

    iget-object v4, v2, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->workQueue:Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    invoke-virtual {v3, v4, p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->awaitJoin(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinTask;)I

    move-result v0

    goto :goto_0

    .end local v2    # "wt":Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;
    :cond_1
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->externalAwaitDone()I

    move-result v0

    goto :goto_0
.end method

.method private doJoin()I
    .locals 5

    .prologue
    .line 377
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    .local v0, "s":I
    if-gez v0, :cond_0

    move v4, v0

    :goto_0
    return v4

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .local v1, "t":Ljava/lang/Thread;
    instance-of v4, v1, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    if-eqz v4, :cond_2

    move-object v3, v1

    check-cast v3, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    .local v3, "wt":Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;
    iget-object v2, v3, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->workQueue:Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    .local v2, "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    invoke-virtual {v2, p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->tryUnpush(Lio/netty/util/internal/chmv8/ForkJoinTask;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doExec()I

    move-result v0

    if-gez v0, :cond_1

    move v4, v0

    goto :goto_0

    :cond_1
    iget-object v4, v3, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

    invoke-virtual {v4, v2, p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->awaitJoin(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinTask;)I

    move-result v4

    goto :goto_0

    .end local v2    # "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .end local v3    # "wt":Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;
    :cond_2
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->externalAwaitDone()I

    move-result v4

    goto :goto_0
.end method

.method private static expungeStaleExceptions()V
    .locals 9

    .prologue
    .line 598
    .local v6, "x":Ljava/lang/ref/Reference;
    :cond_0
    :goto_0
    sget-object v7, Lio/netty/util/internal/chmv8/ForkJoinTask;->exceptionTableRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v7}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 599
    instance-of v7, v6, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;

    if-eqz v7, :cond_0

    move-object v7, v6

    .line 600
    check-cast v7, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;

    invoke-virtual {v7}, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 601
    .local v2, "key":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    sget-object v5, Lio/netty/util/internal/chmv8/ForkJoinTask;->exceptionTable:[Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;

    .line 602
    .local v5, "t":[Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    array-length v8, v5

    add-int/lit8 v8, v8, -0x1

    and-int v1, v7, v8

    .line 603
    .local v1, "i":I
    aget-object v0, v5, v1

    .line 604
    .local v0, "e":Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    const/4 v4, 0x0

    .line 605
    .local v4, "pred":Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    :goto_1
    if-eqz v0, :cond_0

    .line 606
    iget-object v3, v0, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;->next:Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;

    .line 607
    .local v3, "next":Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    if-ne v0, v6, :cond_2

    .line 608
    if-nez v4, :cond_1

    .line 609
    aput-object v3, v5, v1

    goto :goto_0

    .line 611
    :cond_1
    iput-object v3, v4, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;->next:Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;

    goto :goto_0

    .line 614
    :cond_2
    move-object v4, v0

    .line 615
    move-object v0, v3

    .line 616
    goto :goto_1

    .line 619
    .end local v0    # "e":Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    .end local v1    # "i":I
    .end local v2    # "key":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .end local v3    # "next":Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    .end local v4    # "pred":Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    .end local v5    # "t":[Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    :cond_3
    return-void
.end method

.method private externalAwaitDone()I
    .locals 9

    .prologue
    .line 308
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    sget-object v6, Lio/netty/util/internal/chmv8/ForkJoinPool;->common:Lio/netty/util/internal/chmv8/ForkJoinPool;

    .line 309
    .local v6, "cp":Lio/netty/util/internal/chmv8/ForkJoinPool;
    iget v4, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    .local v4, "s":I
    if-ltz v4, :cond_3

    .line 310
    if-eqz v6, :cond_0

    .line 311
    instance-of v0, p0, Lio/netty/util/internal/chmv8/CountedCompleter;

    if-eqz v0, :cond_4

    move-object v0, p0

    .line 312
    check-cast v0, Lio/netty/util/internal/chmv8/CountedCompleter;

    invoke-virtual {v6, v0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->externalHelpComplete(Lio/netty/util/internal/chmv8/CountedCompleter;)I

    move-result v4

    .line 316
    :cond_0
    :goto_0
    if-ltz v4, :cond_3

    iget v4, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v4, :cond_3

    .line 317
    const/4 v8, 0x0

    .line 319
    .local v8, "interrupted":Z
    :cond_1
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ForkJoinTask;->STATUS:J

    const/high16 v1, 0x10000

    or-int v5, v4, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    monitor-enter p0

    .line 321
    :try_start_0
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v0, :cond_5

    .line 323
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 332
    :cond_2
    iget v4, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-gez v4, :cond_1

    .line 333
    if-eqz v8, :cond_3

    .line 334
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 337
    .end local v8    # "interrupted":Z
    :cond_3
    return v4

    .line 313
    :cond_4
    invoke-virtual {v6, p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->tryExternalUnpush(Lio/netty/util/internal/chmv8/ForkJoinTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doExec()I

    move-result v4

    goto :goto_0

    .line 324
    .restart local v8    # "interrupted":Z
    :catch_0
    move-exception v7

    .line 325
    .local v7, "ie":Ljava/lang/InterruptedException;
    const/4 v8, 0x1

    .line 326
    goto :goto_1

    .line 329
    .end local v7    # "ie":Ljava/lang/InterruptedException;
    :cond_5
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_1

    .line 330
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private externalInterruptibleAwaitDone()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 345
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    sget-object v6, Lio/netty/util/internal/chmv8/ForkJoinPool;->common:Lio/netty/util/internal/chmv8/ForkJoinPool;

    .line 346
    .local v6, "cp":Lio/netty/util/internal/chmv8/ForkJoinPool;
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 348
    :cond_0
    iget v4, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    .local v4, "s":I
    if-ltz v4, :cond_1

    if-eqz v6, :cond_1

    .line 349
    instance-of v0, p0, Lio/netty/util/internal/chmv8/CountedCompleter;

    if-eqz v0, :cond_2

    move-object v0, p0

    .line 350
    check-cast v0, Lio/netty/util/internal/chmv8/CountedCompleter;

    invoke-virtual {v6, v0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->externalHelpComplete(Lio/netty/util/internal/chmv8/CountedCompleter;)I

    .line 354
    :cond_1
    :goto_0
    iget v4, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v4, :cond_4

    .line 355
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ForkJoinTask;->STATUS:J

    const/high16 v1, 0x10000

    or-int v5, v4, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    monitor-enter p0

    .line 357
    :try_start_0
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v0, :cond_3

    .line 358
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 361
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 351
    :cond_2
    invoke-virtual {v6, p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->tryExternalUnpush(Lio/netty/util/internal/chmv8/ForkJoinTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doExec()I

    goto :goto_0

    .line 360
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 364
    :cond_4
    return v4
.end method

.method public static getPool()Lio/netty/util/internal/chmv8/ForkJoinPool;
    .locals 2

    .prologue
    .line 1149
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 1150
    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    check-cast v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    .end local v0    # "t":Ljava/lang/Thread;
    iget-object v1, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

    :goto_0
    return-object v1

    .restart local v0    # "t":Ljava/lang/Thread;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getQueuedTaskCount()I
    .locals 3

    .prologue
    .line 1193
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .local v1, "t":Ljava/lang/Thread;
    instance-of v2, v1, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    if-eqz v2, :cond_0

    .line 1194
    check-cast v1, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    .end local v1    # "t":Ljava/lang/Thread;
    iget-object v0, v1, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->workQueue:Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    .line 1197
    .local v0, "q":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :goto_0
    if-nez v0, :cond_1

    const/4 v2, 0x0

    :goto_1
    return v2

    .line 1196
    .end local v0    # "q":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .restart local v1    # "t":Ljava/lang/Thread;
    :cond_0
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinPool;->commonSubmitterQueue()Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    move-result-object v0

    .restart local v0    # "q":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    goto :goto_0

    .line 1197
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_1
    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->queueSize()I

    move-result v2

    goto :goto_1
.end method

.method public static getSurplusQueuedTaskCount()I
    .locals 1

    .prologue
    .line 1214
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinPool;->getSurplusQueuedTaskCount()I

    move-result v0

    return v0
.end method

.method private getThrowableException()Ljava/lang/Throwable;
    .locals 8

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    const/4 v5, 0x0

    .line 552
    iget v6, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    const/high16 v7, -0x10000000

    and-int/2addr v6, v7

    const/high16 v7, -0x80000000

    if-eq v6, v7, :cond_1

    move-object v1, v5

    .line 591
    :cond_0
    :goto_0
    return-object v1

    .line 554
    :cond_1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 556
    .local v2, "h":I
    sget-object v3, Lio/netty/util/internal/chmv8/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 557
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 559
    :try_start_0
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinTask;->expungeStaleExceptions()V

    .line 560
    sget-object v4, Lio/netty/util/internal/chmv8/ForkJoinTask;->exceptionTable:[Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;

    .line 561
    .local v4, "t":[Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v6, v2

    aget-object v0, v4, v6

    .line 562
    .local v0, "e":Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p0, :cond_2

    .line 563
    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;->next:Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 565
    :cond_2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 568
    if-eqz v0, :cond_3

    iget-object v1, v0, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;->ex:Ljava/lang/Throwable;

    .local v1, "ex":Ljava/lang/Throwable;
    if-nez v1, :cond_0

    .end local v1    # "ex":Ljava/lang/Throwable;
    :cond_3
    move-object v1, v5

    .line 569
    goto :goto_0

    .line 565
    .end local v0    # "e":Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    .end local v4    # "t":[Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 4

    .prologue
    .line 1540
    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1543
    :goto_0
    return-object v1

    .line 1541
    :catch_0
    move-exception v1

    .line 1543
    :try_start_1
    new-instance v1, Lio/netty/util/internal/chmv8/ForkJoinTask$1;

    invoke-direct {v1}, Lio/netty/util/internal/chmv8/ForkJoinTask$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_1
    .catch Ljava/security/PrivilegedActionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1555
    :catch_1
    move-exception v0

    .line 1556
    .local v0, "e":Ljava/security/PrivilegedActionException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not initialize intrinsics"

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static final helpExpungeStaleExceptions()V
    .locals 2

    .prologue
    .line 626
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 627
    .local v0, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    :try_start_0
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinTask;->expungeStaleExceptions()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 634
    :cond_0
    return-void

    .line 631
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public static helpQuiesce()V
    .locals 4

    .prologue
    .line 1110
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .local v0, "t":Ljava/lang/Thread;
    instance-of v2, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1111
    check-cast v1, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    .line 1112
    .local v1, "wt":Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;
    iget-object v2, v1, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

    iget-object v3, v1, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->workQueue:Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    invoke-virtual {v2, v3}, Lio/netty/util/internal/chmv8/ForkJoinPool;->helpQuiescePool(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;)V

    .line 1116
    .end local v1    # "wt":Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;
    :goto_0
    return-void

    .line 1115
    :cond_0
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinPool;->quiesceCommonPool()V

    goto :goto_0
.end method

.method public static inForkJoinPool()Z
    .locals 1

    .prologue
    .line 1163
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    return v0
.end method

.method public static invokeAll(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;>(",
            "Ljava/util/Collection",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p0, "tasks":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    const/high16 v6, -0x10000000

    .line 809
    instance-of v5, p0, Ljava/util/RandomAccess;

    if-eqz v5, :cond_0

    instance-of v5, p0, Ljava/util/List;

    if-nez v5, :cond_2

    .line 810
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v5, v5, [Lio/netty/util/internal/chmv8/ForkJoinTask;

    invoke-interface {p0, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lio/netty/util/internal/chmv8/ForkJoinTask;

    invoke-static {v5}, Lio/netty/util/internal/chmv8/ForkJoinTask;->invokeAll([Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    .line 840
    :cond_1
    :goto_0
    return-object p0

    :cond_2
    move-object v4, p0

    .line 814
    check-cast v4, Ljava/util/List;

    .line 816
    .local v4, "ts":Ljava/util/List;, "Ljava/util/List<+Lio/netty/util/internal/chmv8/ForkJoinTask<*>;>;"
    const/4 v0, 0x0

    .line 817
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 818
    .local v2, "last":I
    move v1, v2

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_6

    .line 819
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 820
    .local v3, "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-nez v3, :cond_4

    .line 821
    if-nez v0, :cond_3

    .line 822
    new-instance v0, Ljava/lang/NullPointerException;

    .end local v0    # "ex":Ljava/lang/Throwable;
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    .line 818
    .restart local v0    # "ex":Ljava/lang/Throwable;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 824
    :cond_4
    if-eqz v1, :cond_5

    .line 825
    invoke-virtual {v3}, Lio/netty/util/internal/chmv8/ForkJoinTask;->fork()Lio/netty/util/internal/chmv8/ForkJoinTask;

    goto :goto_2

    .line 826
    :cond_5
    invoke-direct {v3}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doInvoke()I

    move-result v5

    if-ge v5, v6, :cond_3

    if-nez v0, :cond_3

    .line 827
    invoke-virtual {v3}, Lio/netty/util/internal/chmv8/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_2

    .line 829
    .end local v3    # "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    :cond_6
    const/4 v1, 0x1

    :goto_3
    if-gt v1, v2, :cond_9

    .line 830
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 831
    .restart local v3    # "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz v3, :cond_7

    .line 832
    if-eqz v0, :cond_8

    .line 833
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lio/netty/util/internal/chmv8/ForkJoinTask;->cancel(Z)Z

    .line 829
    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 834
    :cond_8
    invoke-direct {v3}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doJoin()I

    move-result v5

    if-ge v5, v6, :cond_7

    .line 835
    invoke-virtual {v3}, Lio/netty/util/internal/chmv8/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_4

    .line 838
    .end local v3    # "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    :cond_9
    if-eqz v0, :cond_1

    .line 839
    invoke-static {v0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static invokeAll(Lio/netty/util/internal/chmv8/ForkJoinTask;Lio/netty/util/internal/chmv8/ForkJoinTask;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p0, "t1":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    .local p1, "t2":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    const/high16 v3, -0x10000000

    .line 742
    invoke-virtual {p1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->fork()Lio/netty/util/internal/chmv8/ForkJoinTask;

    .line 743
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doInvoke()I

    move-result v2

    and-int v0, v2, v3

    .local v0, "s1":I
    if-eq v0, v3, :cond_0

    .line 744
    invoke-direct {p0, v0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->reportException(I)V

    .line 745
    :cond_0
    invoke-direct {p1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doJoin()I

    move-result v2

    and-int v1, v2, v3

    .local v1, "s2":I
    if-eq v1, v3, :cond_1

    .line 746
    invoke-direct {p1, v1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->reportException(I)V

    .line 747
    :cond_1
    return-void
.end method

.method public static varargs invokeAll([Lio/netty/util/internal/chmv8/ForkJoinTask;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p0, "tasks":[Lio/netty/util/internal/chmv8/ForkJoinTask;, "[Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    const/high16 v5, -0x10000000

    .line 765
    const/4 v0, 0x0

    .line 766
    .local v0, "ex":Ljava/lang/Throwable;
    array-length v4, p0

    add-int/lit8 v2, v4, -0x1

    .line 767
    .local v2, "last":I
    move v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_3

    .line 768
    aget-object v3, p0, v1

    .line 769
    .local v3, "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-nez v3, :cond_1

    .line 770
    if-nez v0, :cond_0

    .line 771
    new-instance v0, Ljava/lang/NullPointerException;

    .end local v0    # "ex":Ljava/lang/Throwable;
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    .line 767
    .restart local v0    # "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 773
    :cond_1
    if-eqz v1, :cond_2

    .line 774
    invoke-virtual {v3}, Lio/netty/util/internal/chmv8/ForkJoinTask;->fork()Lio/netty/util/internal/chmv8/ForkJoinTask;

    goto :goto_1

    .line 775
    :cond_2
    invoke-direct {v3}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doInvoke()I

    move-result v4

    if-ge v4, v5, :cond_0

    if-nez v0, :cond_0

    .line 776
    invoke-virtual {v3}, Lio/netty/util/internal/chmv8/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_1

    .line 778
    .end local v3    # "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    :cond_3
    const/4 v1, 0x1

    :goto_2
    if-gt v1, v2, :cond_6

    .line 779
    aget-object v3, p0, v1

    .line 780
    .restart local v3    # "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    if-eqz v3, :cond_4

    .line 781
    if-eqz v0, :cond_5

    .line 782
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lio/netty/util/internal/chmv8/ForkJoinTask;->cancel(Z)Z

    .line 778
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 783
    :cond_5
    invoke-direct {v3}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doJoin()I

    move-result v4

    if-ge v4, v5, :cond_4

    .line 784
    invoke-virtual {v3}, Lio/netty/util/internal/chmv8/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_3

    .line 787
    .end local v3    # "t":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<*>;"
    :cond_6
    if-eqz v0, :cond_7

    .line 788
    invoke-static {v0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    .line 789
    :cond_7
    return-void
.end method

.method protected static peekNextLocalTask()Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1269
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .local v1, "t":Ljava/lang/Thread;
    instance-of v2, v1, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    if-eqz v2, :cond_0

    .line 1270
    check-cast v1, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    .end local v1    # "t":Ljava/lang/Thread;
    iget-object v0, v1, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->workQueue:Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    .line 1273
    .local v0, "q":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :goto_0
    if-nez v0, :cond_1

    const/4 v2, 0x0

    :goto_1
    return-object v2

    .line 1272
    .end local v0    # "q":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    .restart local v1    # "t":Ljava/lang/Thread;
    :cond_0
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinPool;->commonSubmitterQueue()Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    move-result-object v0

    .restart local v0    # "q":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    goto :goto_0

    .line 1273
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_1
    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->peek()Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v2

    goto :goto_1
.end method

.method protected static pollNextLocalTask()Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1287
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    check-cast v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    .end local v0    # "t":Ljava/lang/Thread;
    iget-object v1, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->workQueue:Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    invoke-virtual {v1}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->nextLocalTask()Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v1

    :goto_0
    return-object v1

    .restart local v0    # "t":Ljava/lang/Thread;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected static pollTask()Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1307
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .local v0, "t":Ljava/lang/Thread;
    instance-of v2, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    .local v1, "wt":Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;
    iget-object v2, v1, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

    iget-object v3, v1, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->workQueue:Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    invoke-virtual {v2, v3}, Lio/netty/util/internal/chmv8/ForkJoinPool;->nextTaskFor(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;)Lio/netty/util/internal/chmv8/ForkJoinTask;

    move-result-object v2

    .end local v1    # "wt":Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1507
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1508
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 1509
    .local v0, "ex":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 1510
    check-cast v0, Ljava/lang/Throwable;

    .end local v0    # "ex":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    .line 1511
    :cond_0
    return-void
.end method

.method private reportException(I)V
    .locals 1
    .param p1, "s"    # I

    .prologue
    .line 658
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    const/high16 v0, -0x40000000    # -2.0f

    if-ne p1, v0, :cond_0

    .line 659
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 660
    :cond_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    .line 661
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->rethrow(Ljava/lang/Throwable;)V

    .line 662
    :cond_1
    return-void
.end method

.method static rethrow(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 640
    if-eqz p0, :cond_0

    .line 641
    invoke-static {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->uncheckedThrow(Ljava/lang/Throwable;)V

    .line 642
    :cond_0
    return-void
.end method

.method private setCompletion(I)I
    .locals 6
    .param p1, "completion"    # I

    .prologue
    .line 259
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    :cond_0
    iget v4, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    .local v4, "s":I
    if-gez v4, :cond_1

    .line 264
    .end local v4    # "s":I
    :goto_0
    return v4

    .line 261
    .restart local v4    # "s":I
    :cond_1
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ForkJoinTask;->STATUS:J

    or-int v5, v4, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    ushr-int/lit8 v0, v4, 0x10

    if-eqz v0, :cond_2

    .line 263
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    :cond_2
    move v4, p1

    .line 264
    goto :goto_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setExceptionalCompletion(Ljava/lang/Throwable;)I
    .locals 3
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 479
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    invoke-virtual {p0, p1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->recordExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v0

    .line 480
    .local v0, "s":I
    const/high16 v1, -0x10000000

    and-int/2addr v1, v0

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_0

    .line 481
    invoke-virtual {p0, p1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->internalPropagateException(Ljava/lang/Throwable;)V

    .line 482
    :cond_0
    return v0
.end method

.method static uncheckedThrow(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Throwable;",
            ")V^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 651
    throw p0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1498
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1499
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->getException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1500
    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 3
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    const/high16 v2, -0x40000000    # -2.0f

    .line 871
    invoke-direct {p0, v2}, Lio/netty/util/internal/chmv8/ForkJoinTask;->setCompletion(I)I

    move-result v0

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final compareAndSetForkJoinTaskTag(SS)Z
    .locals 6
    .param p1, "e"    # S
    .param p2, "tag"    # S

    .prologue
    .line 1355
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    :cond_0
    iget v4, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    .local v4, "s":I
    int-to-short v0, v4

    if-eq v0, p1, :cond_1

    .line 1356
    const/4 v0, 0x0

    .line 1359
    :goto_0
    return v0

    .line 1357
    :cond_1
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ForkJoinTask;->STATUS:J

    const/high16 v1, -0x10000

    and-int/2addr v1, v4

    const v5, 0xffff

    and-int/2addr v5, p2

    or-int/2addr v5, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1359
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public complete(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 951
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    :try_start_0
    invoke-virtual {p0, p1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->setRawResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 956
    const/high16 v1, -0x10000000

    invoke-direct {p0, v1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->setCompletion(I)I

    .line 957
    :goto_0
    return-void

    .line 952
    :catch_0
    move-exception v0

    .line 953
    .local v0, "rex":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public completeExceptionally(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 931
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_1

    .end local p1    # "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    .line 934
    return-void

    .line 931
    .restart local p1    # "ex":Ljava/lang/Throwable;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    goto :goto_0
.end method

.method final doExec()I
    .locals 4

    .prologue
    .line 278
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    iget v2, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    .local v2, "s":I
    if-ltz v2, :cond_0

    .line 280
    :try_start_0
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->exec()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 284
    .local v0, "completed":Z
    if-eqz v0, :cond_0

    .line 285
    const/high16 v3, -0x10000000

    invoke-direct {p0, v3}, Lio/netty/util/internal/chmv8/ForkJoinTask;->setCompletion(I)I

    move-result v2

    .end local v0    # "completed":Z
    :cond_0
    move v3, v2

    .line 287
    :goto_0
    return v3

    .line 281
    :catch_0
    move-exception v1

    .line 282
    .local v1, "rex":Ljava/lang/Throwable;
    invoke-direct {p0, v1}, Lio/netty/util/internal/chmv8/ForkJoinTask;->setExceptionalCompletion(Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0
.end method

.method protected abstract exec()Z
.end method

.method public final fork()Lio/netty/util/internal/chmv8/ForkJoinTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/internal/chmv8/ForkJoinTask",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 683
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    .line 684
    check-cast v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    .end local v0    # "t":Ljava/lang/Thread;
    iget-object v1, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->workQueue:Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    invoke-virtual {v1, p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->push(Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    .line 687
    :goto_0
    return-object p0

    .line 686
    .restart local v0    # "t":Ljava/lang/Thread;
    :cond_0
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->common:Lio/netty/util/internal/chmv8/ForkJoinPool;

    invoke-virtual {v1, p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->externalPush(Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    goto :goto_0
.end method

.method public final get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 983
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    instance-of v2, v2, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doJoin()I

    move-result v1

    .line 986
    .local v1, "s":I
    :goto_0
    const/high16 v2, -0x10000000

    and-int/2addr v1, v2

    const/high16 v2, -0x40000000    # -2.0f

    if-ne v1, v2, :cond_1

    .line 987
    new-instance v2, Ljava/util/concurrent/CancellationException;

    invoke-direct {v2}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v2

    .line 983
    .end local v1    # "s":I
    :cond_0
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->externalInterruptibleAwaitDone()I

    move-result v1

    goto :goto_0

    .line 988
    .restart local v1    # "s":I
    :cond_1
    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_2

    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v0

    .local v0, "ex":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 989
    new-instance v2, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v2, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 990
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 25
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 1009
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1010
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 1013
    :cond_0
    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v20

    .line 1015
    .local v20, "ns":J
    move-object/from16 v0, p0

    iget v8, v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    .local v8, "s":I
    if-ltz v8, :cond_e

    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-lez v4, :cond_e

    .line 1016
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    add-long v12, v4, v20

    .line 1017
    .local v12, "deadline":J
    const/16 v17, 0x0

    .line 1018
    .local v17, "p":Lio/netty/util/internal/chmv8/ForkJoinPool;
    const/16 v23, 0x0

    .line 1019
    .local v23, "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v22

    .line 1020
    .local v22, "t":Ljava/lang/Thread;
    move-object/from16 v0, v22

    instance-of v4, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    if-eqz v4, :cond_4

    move-object/from16 v24, v22

    .line 1021
    check-cast v24, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    .line 1022
    .local v24, "wt":Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;
    move-object/from16 v0, v24

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->pool:Lio/netty/util/internal/chmv8/ForkJoinPool;

    move-object/from16 v17, v0

    .line 1023
    move-object/from16 v0, v24

    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->workQueue:Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    move-object/from16 v23, v0

    .line 1024
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Lio/netty/util/internal/chmv8/ForkJoinPool;->helpJoinOnce(Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;Lio/netty/util/internal/chmv8/ForkJoinTask;)V

    .line 1032
    .end local v24    # "wt":Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;
    :cond_1
    :goto_0
    const/4 v10, 0x0

    .line 1033
    .local v10, "canBlock":Z
    const/16 v16, 0x0

    .line 1035
    .local v16, "interrupted":Z
    :cond_2
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget v8, v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v8, :cond_b

    .line 1036
    if-eqz v23, :cond_6

    move-object/from16 v0, v23

    iget v4, v0, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->qlock:I

    if-gez v4, :cond_6

    .line 1037
    invoke-static/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->cancelIgnoringExceptions(Lio/netty/util/internal/chmv8/ForkJoinTask;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1064
    :catchall_0
    move-exception v4

    if-eqz v17, :cond_3

    if-eqz v10, :cond_3

    .line 1065
    invoke-virtual/range {v17 .. v17}, Lio/netty/util/internal/chmv8/ForkJoinPool;->incrementActiveCount()V

    :cond_3
    throw v4

    .line 1026
    .end local v10    # "canBlock":Z
    .end local v16    # "interrupted":Z
    :cond_4
    sget-object v11, Lio/netty/util/internal/chmv8/ForkJoinPool;->common:Lio/netty/util/internal/chmv8/ForkJoinPool;

    .local v11, "cp":Lio/netty/util/internal/chmv8/ForkJoinPool;
    if-eqz v11, :cond_1

    .line 1027
    move-object/from16 v0, p0

    instance-of v4, v0, Lio/netty/util/internal/chmv8/CountedCompleter;

    if-eqz v4, :cond_5

    move-object/from16 v4, p0

    .line 1028
    check-cast v4, Lio/netty/util/internal/chmv8/CountedCompleter;

    invoke-virtual {v11, v4}, Lio/netty/util/internal/chmv8/ForkJoinPool;->externalHelpComplete(Lio/netty/util/internal/chmv8/CountedCompleter;)I

    goto :goto_0

    .line 1029
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->tryExternalUnpush(Lio/netty/util/internal/chmv8/ForkJoinTask;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1030
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doExec()I

    goto :goto_0

    .line 1038
    .end local v11    # "cp":Lio/netty/util/internal/chmv8/ForkJoinPool;
    .restart local v10    # "canBlock":Z
    .restart local v16    # "interrupted":Z
    :cond_6
    if-nez v10, :cond_8

    .line 1039
    if-eqz v17, :cond_7

    :try_start_1
    move-object/from16 v0, v17

    iget-wide v4, v0, Lio/netty/util/internal/chmv8/ForkJoinPool;->ctl:J

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v5}, Lio/netty/util/internal/chmv8/ForkJoinPool;->tryCompensate(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1040
    :cond_7
    const/4 v10, 0x1

    goto :goto_1

    .line 1043
    :cond_8
    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v18

    .local v18, "ms":J
    const-wide/16 v4, 0x0

    cmp-long v4, v18, v4

    if-lez v4, :cond_a

    sget-object v4, Lio/netty/util/internal/chmv8/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v6, Lio/netty/util/internal/chmv8/ForkJoinTask;->STATUS:J

    const/high16 v5, 0x10000

    or-int v9, v8, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v9}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1045
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1046
    :try_start_2
    move-object/from16 v0, p0

    iget v4, v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ltz v4, :cond_d

    .line 1048
    :try_start_3
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1056
    :cond_9
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1058
    :cond_a
    :try_start_5
    move-object/from16 v0, p0

    iget v8, v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-ltz v8, :cond_b

    if-nez v16, :cond_b

    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v4

    sub-long v20, v12, v4

    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-gtz v4, :cond_2

    .line 1064
    .end local v18    # "ms":J
    :cond_b
    if-eqz v17, :cond_c

    if-eqz v10, :cond_c

    .line 1065
    invoke-virtual/range {v17 .. v17}, Lio/netty/util/internal/chmv8/ForkJoinPool;->incrementActiveCount()V

    .line 1067
    :cond_c
    if-eqz v16, :cond_e

    .line 1068
    new-instance v4, Ljava/lang/InterruptedException;

    invoke-direct {v4}, Ljava/lang/InterruptedException;-><init>()V

    throw v4

    .line 1049
    .restart local v18    # "ms":J
    :catch_0
    move-exception v15

    .line 1050
    .local v15, "ie":Ljava/lang/InterruptedException;
    if-nez v17, :cond_9

    .line 1051
    const/16 v16, 0x1

    goto :goto_2

    .line 1055
    .end local v15    # "ie":Ljava/lang/InterruptedException;
    :cond_d
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2

    .line 1056
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1070
    .end local v10    # "canBlock":Z
    .end local v12    # "deadline":J
    .end local v16    # "interrupted":Z
    .end local v17    # "p":Lio/netty/util/internal/chmv8/ForkJoinPool;
    .end local v18    # "ms":J
    .end local v22    # "t":Ljava/lang/Thread;
    .end local v23    # "w":Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;
    :cond_e
    const/high16 v4, -0x10000000

    and-int/2addr v8, v4

    const/high16 v4, -0x10000000

    if-eq v8, v4, :cond_11

    .line 1072
    const/high16 v4, -0x40000000    # -2.0f

    if-ne v8, v4, :cond_f

    .line 1073
    new-instance v4, Ljava/util/concurrent/CancellationException;

    invoke-direct {v4}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v4

    .line 1074
    :cond_f
    const/high16 v4, -0x80000000

    if-eq v8, v4, :cond_10

    .line 1075
    new-instance v4, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v4}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v4

    .line 1076
    :cond_10
    invoke-direct/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v14

    .local v14, "ex":Ljava/lang/Throwable;
    if-eqz v14, :cond_11

    .line 1077
    new-instance v4, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v4, v14}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1079
    .end local v14    # "ex":Ljava/lang/Throwable;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method public final getException()Ljava/lang/Throwable;
    .locals 3

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    const/high16 v2, -0x10000000

    .line 910
    iget v1, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    and-int v0, v1, v2

    .line 911
    .local v0, "s":I
    if-lt v0, v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/high16 v1, -0x40000000    # -2.0f

    if-ne v0, v1, :cond_1

    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->getThrowableException()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0
.end method

.method public final getForkJoinTaskTag()S
    .locals 1

    .prologue
    .line 1321
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    int-to-short v0, v0

    return v0
.end method

.method public abstract getRawResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method internalPropagateException(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 489
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    return-void
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    const/high16 v2, -0x10000000

    .line 718
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doInvoke()I

    move-result v1

    and-int v0, v1, v2

    .local v0, "s":I
    if-eq v0, v2, :cond_0

    .line 719
    invoke-direct {p0, v0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->reportException(I)V

    .line 720
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final isCancelled()Z
    .locals 2

    .prologue
    .line 879
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/high16 v1, -0x40000000    # -2.0f

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isCompletedAbnormally()Z
    .locals 2

    .prologue
    .line 888
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isCompletedNormally()Z
    .locals 2

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    const/high16 v1, -0x10000000

    .line 899
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDone()Z
    .locals 1

    .prologue
    .line 875
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final join()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    const/high16 v2, -0x10000000

    .line 703
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doJoin()I

    move-result v1

    and-int v0, v1, v2

    .local v0, "s":I
    if-eq v0, v2, :cond_0

    .line 704
    invoke-direct {p0, v0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->reportException(I)V

    .line 705
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->getRawResult()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final quietlyComplete()V
    .locals 1

    .prologue
    .line 968
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    const/high16 v0, -0x10000000

    invoke-direct {p0, v0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->setCompletion(I)I

    .line 969
    return-void
.end method

.method public final quietlyInvoke()V
    .locals 0

    .prologue
    .line 1098
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doInvoke()I

    .line 1099
    return-void
.end method

.method public final quietlyJoin()V
    .locals 0

    .prologue
    .line 1089
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->doJoin()I

    .line 1090
    return-void
.end method

.method final recordExceptionalCompletion(Ljava/lang/Throwable;)I
    .locals 8
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 449
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    iget v4, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    .local v4, "s":I
    if-ltz v4, :cond_1

    .line 450
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 451
    .local v1, "h":I
    sget-object v3, Lio/netty/util/internal/chmv8/ForkJoinTask;->exceptionTableLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 452
    .local v3, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 454
    :try_start_0
    invoke-static {}, Lio/netty/util/internal/chmv8/ForkJoinTask;->expungeStaleExceptions()V

    .line 455
    sget-object v5, Lio/netty/util/internal/chmv8/ForkJoinTask;->exceptionTable:[Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;

    .line 456
    .local v5, "t":[Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    and-int v2, v1, v6

    .line 457
    .local v2, "i":I
    aget-object v0, v5, v2

    .line 458
    .local v0, "e":Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    :goto_0
    if-nez v0, :cond_2

    .line 459
    new-instance v6, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;

    aget-object v7, v5, v2

    invoke-direct {v6, p0, p1, v7}, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;-><init>(Lio/netty/util/internal/chmv8/ForkJoinTask;Ljava/lang/Throwable;Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;)V

    aput-object v6, v5, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    :cond_0
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 468
    const/high16 v6, -0x80000000

    invoke-direct {p0, v6}, Lio/netty/util/internal/chmv8/ForkJoinTask;->setCompletion(I)I

    move-result v4

    .line 470
    .end local v0    # "e":Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    .end local v1    # "h":I
    .end local v2    # "i":I
    .end local v3    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .end local v5    # "t":[Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    :cond_1
    return v4

    .line 462
    .restart local v0    # "e":Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    .restart local v1    # "h":I
    .restart local v2    # "i":I
    .restart local v3    # "lock":Ljava/util/concurrent/locks/ReentrantLock;
    .restart local v5    # "t":[Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;->get()Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p0, :cond_0

    .line 457
    iget-object v0, v0, Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;->next:Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 466
    .end local v0    # "e":Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    .end local v2    # "i":I
    .end local v5    # "t":[Lio/netty/util/internal/chmv8/ForkJoinTask$ExceptionNode;
    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6
.end method

.method public reinitialize()V
    .locals 2

    .prologue
    .line 1135
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    iget v0, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 1136
    invoke-direct {p0}, Lio/netty/util/internal/chmv8/ForkJoinTask;->clearExceptionalCompletion()V

    .line 1139
    :goto_0
    return-void

    .line 1138
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    goto :goto_0
.end method

.method public final setForkJoinTaskTag(S)S
    .locals 6
    .param p1, "tag"    # S

    .prologue
    .line 1333
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    :cond_0
    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ForkJoinTask;->STATUS:J

    iget v4, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    .local v4, "s":I
    const/high16 v1, -0x10000

    and-int/2addr v1, v4

    const v5, 0xffff

    and-int/2addr v5, p1

    or-int/2addr v5, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1335
    int-to-short v0, v4

    return v0
.end method

.method protected abstract setRawResult(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method

.method final trySetSignal()Z
    .locals 6

    .prologue
    .line 298
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    iget v4, p0, Lio/netty/util/internal/chmv8/ForkJoinTask;->status:I

    .line 299
    .local v4, "s":I
    if-ltz v4, :cond_0

    sget-object v0, Lio/netty/util/internal/chmv8/ForkJoinTask;->U:Lsun/misc/Unsafe;

    sget-wide v2, Lio/netty/util/internal/chmv8/ForkJoinTask;->STATUS:J

    const/high16 v1, 0x10000

    or-int v5, v4, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public tryUnfork()Z
    .locals 2

    .prologue
    .line 1178
    .local p0, "this":Lio/netty/util/internal/chmv8/ForkJoinTask;, "Lio/netty/util/internal/chmv8/ForkJoinTask<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .local v0, "t":Ljava/lang/Thread;
    instance-of v1, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    if-eqz v1, :cond_0

    check-cast v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;

    .end local v0    # "t":Ljava/lang/Thread;
    iget-object v1, v0, Lio/netty/util/internal/chmv8/ForkJoinWorkerThread;->workQueue:Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;

    invoke-virtual {v1, p0}, Lio/netty/util/internal/chmv8/ForkJoinPool$WorkQueue;->tryUnpush(Lio/netty/util/internal/chmv8/ForkJoinTask;)Z

    move-result v1

    :goto_0
    return v1

    .restart local v0    # "t":Ljava/lang/Thread;
    :cond_0
    sget-object v1, Lio/netty/util/internal/chmv8/ForkJoinPool;->common:Lio/netty/util/internal/chmv8/ForkJoinPool;

    invoke-virtual {v1, p0}, Lio/netty/util/internal/chmv8/ForkJoinPool;->tryExternalUnpush(Lio/netty/util/internal/chmv8/ForkJoinTask;)Z

    move-result v1

    goto :goto_0
.end method
