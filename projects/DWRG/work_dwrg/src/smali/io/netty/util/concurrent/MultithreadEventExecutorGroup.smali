.class public abstract Lio/netty/util/concurrent/MultithreadEventExecutorGroup;
.super Lio/netty/util/concurrent/AbstractEventExecutorGroup;
.source "MultithreadEventExecutorGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/concurrent/MultithreadEventExecutorGroup$EventExecutorChooser;,
        Lio/netty/util/concurrent/MultithreadEventExecutorGroup$GenericEventExecutorChooser;,
        Lio/netty/util/concurrent/MultithreadEventExecutorGroup$PowerOfTwoEventExecutorChooser;
    }
.end annotation


# instance fields
.field private final childIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final children:[Lio/netty/util/concurrent/EventExecutor;

.field private final chooser:Lio/netty/util/concurrent/MultithreadEventExecutorGroup$EventExecutorChooser;

.field private final terminatedChildren:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final terminationFuture:Lio/netty/util/concurrent/Promise;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/Promise",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected varargs constructor <init>(ILjava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)V
    .locals 11
    .param p1, "nThreads"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 45
    invoke-direct {p0}, Lio/netty/util/concurrent/AbstractEventExecutorGroup;-><init>()V

    .line 33
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v7, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->childIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    new-instance v7, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v7, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->terminatedChildren:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 35
    new-instance v7, Lio/netty/util/concurrent/DefaultPromise;

    sget-object v8, Lio/netty/util/concurrent/GlobalEventExecutor;->INSTANCE:Lio/netty/util/concurrent/GlobalEventExecutor;

    invoke-direct {v7, v8}, Lio/netty/util/concurrent/DefaultPromise;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    iput-object v7, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->terminationFuture:Lio/netty/util/concurrent/Promise;

    .line 46
    if-gtz p1, :cond_0

    .line 47
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "nThreads: %d (expected: > 0)"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 50
    :cond_0
    if-nez p2, :cond_1

    .line 51
    invoke-virtual {p0}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->newDefaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object p2

    .line 54
    :cond_1
    new-array v7, p1, [Lio/netty/util/concurrent/SingleThreadEventExecutor;

    iput-object v7, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    .line 55
    iget-object v7, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    array-length v7, v7

    invoke-static {v7}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->isPowerOfTwo(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 56
    new-instance v7, Lio/netty/util/concurrent/MultithreadEventExecutorGroup$PowerOfTwoEventExecutorChooser;

    invoke-direct {v7, p0, v9}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup$PowerOfTwoEventExecutorChooser;-><init>(Lio/netty/util/concurrent/MultithreadEventExecutorGroup;Lio/netty/util/concurrent/MultithreadEventExecutorGroup$PowerOfTwoEventExecutorChooser;)V

    iput-object v7, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->chooser:Lio/netty/util/concurrent/MultithreadEventExecutorGroup$EventExecutorChooser;

    .line 61
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, p1, :cond_3

    .line 90
    new-instance v5, Lio/netty/util/concurrent/MultithreadEventExecutorGroup$1;

    invoke-direct {v5, p0}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup$1;-><init>(Lio/netty/util/concurrent/MultithreadEventExecutorGroup;)V

    .line 99
    .local v5, "terminationListener":Lio/netty/util/concurrent/FutureListener;, "Lio/netty/util/concurrent/FutureListener<Ljava/lang/Object;>;"
    iget-object v7, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    array-length v8, v7

    :goto_2
    if-lt v6, v8, :cond_c

    .line 102
    return-void

    .line 58
    .end local v1    # "i":I
    .end local v5    # "terminationListener":Lio/netty/util/concurrent/FutureListener;, "Lio/netty/util/concurrent/FutureListener<Ljava/lang/Object;>;"
    :cond_2
    new-instance v7, Lio/netty/util/concurrent/MultithreadEventExecutorGroup$GenericEventExecutorChooser;

    invoke-direct {v7, p0, v9}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup$GenericEventExecutorChooser;-><init>(Lio/netty/util/concurrent/MultithreadEventExecutorGroup;Lio/netty/util/concurrent/MultithreadEventExecutorGroup$GenericEventExecutorChooser;)V

    iput-object v7, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->chooser:Lio/netty/util/concurrent/MultithreadEventExecutorGroup$EventExecutorChooser;

    goto :goto_0

    .line 62
    .restart local v1    # "i":I
    :cond_3
    const/4 v4, 0x0

    .line 64
    .local v4, "success":Z
    :try_start_0
    iget-object v7, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    invoke-virtual {p0, p2, p3}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->newChild(Ljava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)Lio/netty/util/concurrent/EventExecutor;

    move-result-object v8

    aput-object v8, v7, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    const/4 v4, 0x1

    .line 70
    if-nez v4, :cond_4

    .line 71
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3
    if-lt v3, v1, :cond_9

    .line 75
    const/4 v3, 0x0

    :goto_4
    if-lt v3, v1, :cond_a

    .line 61
    .end local v3    # "j":I
    :cond_4
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 66
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "failed to create a child event loop"

    invoke-direct {v6, v7, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 70
    if-nez v4, :cond_5

    .line 71
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_6
    if-lt v3, v1, :cond_6

    .line 75
    const/4 v3, 0x0

    :goto_7
    if-lt v3, v1, :cond_7

    .line 87
    .end local v3    # "j":I
    :cond_5
    :goto_8
    throw v6

    .line 72
    .restart local v3    # "j":I
    :cond_6
    iget-object v7, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    aget-object v7, v7, v3

    invoke-interface {v7}, Lio/netty/util/concurrent/EventExecutor;->shutdownGracefully()Lio/netty/util/concurrent/Future;

    .line 71
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 76
    :cond_7
    iget-object v7, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    aget-object v0, v7, v3

    .line 78
    .local v0, "e":Lio/netty/util/concurrent/EventExecutor;
    :goto_9
    :try_start_2
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->isTerminated()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 79
    :cond_8
    const-wide/32 v8, 0x7fffffff

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v8, v9, v7}, Lio/netty/util/concurrent/EventExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_9

    .line 81
    :catch_1
    move-exception v2

    .line 82
    .local v2, "interrupted":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    goto :goto_8

    .line 72
    .end local v0    # "e":Lio/netty/util/concurrent/EventExecutor;
    .end local v2    # "interrupted":Ljava/lang/InterruptedException;
    :cond_9
    iget-object v7, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    aget-object v7, v7, v3

    invoke-interface {v7}, Lio/netty/util/concurrent/EventExecutor;->shutdownGracefully()Lio/netty/util/concurrent/Future;

    .line 71
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 76
    :cond_a
    iget-object v7, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    aget-object v0, v7, v3

    .line 78
    .restart local v0    # "e":Lio/netty/util/concurrent/EventExecutor;
    :goto_a
    :try_start_3
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->isTerminated()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 79
    :cond_b
    const-wide/32 v8, 0x7fffffff

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v8, v9, v7}, Lio/netty/util/concurrent/EventExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_a

    .line 81
    :catch_2
    move-exception v2

    .line 82
    .restart local v2    # "interrupted":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    goto :goto_5

    .line 99
    .end local v0    # "e":Lio/netty/util/concurrent/EventExecutor;
    .end local v2    # "interrupted":Ljava/lang/InterruptedException;
    .end local v3    # "j":I
    .end local v4    # "success":Z
    .restart local v5    # "terminationListener":Lio/netty/util/concurrent/FutureListener;, "Lio/netty/util/concurrent/FutureListener<Ljava/lang/Object;>;"
    :cond_c
    aget-object v0, v7, v6

    .line 100
    .restart local v0    # "e":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->terminationFuture()Lio/netty/util/concurrent/Future;

    move-result-object v9

    invoke-interface {v9, v5}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    .line 99
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2
.end method

.method static synthetic access$0(Lio/netty/util/concurrent/MultithreadEventExecutorGroup;)[Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    return-object v0
.end method

.method static synthetic access$1(Lio/netty/util/concurrent/MultithreadEventExecutorGroup;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->childIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$2(Lio/netty/util/concurrent/MultithreadEventExecutorGroup;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->terminatedChildren:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$3(Lio/netty/util/concurrent/MultithreadEventExecutorGroup;)Lio/netty/util/concurrent/Promise;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->terminationFuture:Lio/netty/util/concurrent/Promise;

    return-object v0
.end method

.method private static isPowerOfTwo(I)Z
    .locals 1
    .param p0, "val"    # I

    .prologue
    .line 213
    neg-int v0, p0

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 11
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v8

    add-long v0, v6, v8

    .line 198
    .local v0, "deadline":J
    iget-object v6, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    array-length v7, v6

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v7, :cond_1

    .line 209
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->isTerminated()Z

    move-result v3

    return v3

    .line 198
    :cond_1
    aget-object v2, v6, v3

    .line 200
    .local v2, "l":Lio/netty/util/concurrent/EventExecutor;
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long v4, v0, v8

    .line 201
    .local v4, "timeLeft":J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_0

    .line 204
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v8}, Lio/netty/util/concurrent/EventExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 198
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected children()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lio/netty/util/concurrent/EventExecutor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 131
    .local v0, "children":Ljava/util/Set;, "Ljava/util/Set<Lio/netty/util/concurrent/EventExecutor;>;"
    iget-object v1, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 132
    return-object v0
.end method

.method public final executorCount()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    array-length v0, v0

    return v0
.end method

.method public isShutdown()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 176
    iget-object v3, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_1

    .line 181
    const/4 v1, 0x1

    :cond_0
    return v1

    .line 176
    :cond_1
    aget-object v0, v3, v2

    .line 177
    .local v0, "l":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->isShutdown()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public isShuttingDown()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-object v3, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_1

    .line 171
    const/4 v1, 0x1

    :cond_0
    return v1

    .line 166
    :cond_1
    aget-object v0, v3, v2

    .line 167
    .local v0, "l":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->isShuttingDown()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 166
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public isTerminated()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 186
    iget-object v3, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_1

    .line 191
    const/4 v1, 0x1

    :cond_0
    return v1

    .line 186
    :cond_1
    aget-object v0, v3, v2

    .line 187
    .local v0, "l":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->isTerminated()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lio/netty/util/concurrent/EventExecutor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected varargs abstract newChild(Ljava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)Lio/netty/util/concurrent/EventExecutor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected newDefaultThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 2

    .prologue
    .line 105
    new-instance v0, Lio/netty/util/concurrent/DefaultThreadFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/util/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public next()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->chooser:Lio/netty/util/concurrent/MultithreadEventExecutorGroup$EventExecutorChooser;

    invoke-interface {v0}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup$EventExecutorChooser;->next()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 159
    iget-object v2, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_0

    .line 162
    return-void

    .line 159
    :cond_0
    aget-object v0, v2, v1

    .line 160
    .local v0, "l":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->shutdown()V

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;
    .locals 9
    .param p1, "quietPeriod"    # J
    .param p3, "timeout"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lio/netty/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v7, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->children:[Lio/netty/util/concurrent/EventExecutor;

    array-length v8, v7

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v8, :cond_0

    .line 148
    invoke-virtual {p0}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->terminationFuture()Lio/netty/util/concurrent/Future;

    move-result-object v0

    return-object v0

    .line 145
    :cond_0
    aget-object v1, v7, v0

    .local v1, "l":Lio/netty/util/concurrent/EventExecutor;
    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    .line 146
    invoke-interface/range {v1 .. v6}, Lio/netty/util/concurrent/EventExecutor;->shutdownGracefully(JJLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/Future;

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public terminationFuture()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->terminationFuture:Lio/netty/util/concurrent/Promise;

    return-object v0
.end method
