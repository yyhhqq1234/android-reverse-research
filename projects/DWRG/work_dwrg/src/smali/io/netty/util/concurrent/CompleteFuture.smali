.class public abstract Lio/netty/util/concurrent/CompleteFuture;
.super Lio/netty/util/concurrent/AbstractFuture;
.source "CompleteFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/concurrent/AbstractFuture",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final executor:Lio/netty/util/concurrent/EventExecutor;


# direct methods
.method protected constructor <init>(Lio/netty/util/concurrent/EventExecutor;)V
    .locals 0
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutor;

    .prologue
    .line 33
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    invoke-direct {p0}, Lio/netty/util/concurrent/AbstractFuture;-><init>()V

    .line 34
    iput-object p1, p0, Lio/netty/util/concurrent/CompleteFuture;->executor:Lio/netty/util/concurrent/EventExecutor;

    .line 35
    return-void
.end method


# virtual methods
.method public addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener",
            "<+",
            "Lio/netty/util/concurrent/Future",
            "<-TV;>;>;)",
            "Lio/netty/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    .local p1, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "listener"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lio/netty/util/concurrent/CompleteFuture;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lio/netty/util/concurrent/DefaultPromise;->notifyListener(Lio/netty/util/concurrent/EventExecutor;Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V

    .line 50
    return-object p0
.end method

.method public varargs addListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 4
    .param p1, "listeners"    # [Lio/netty/util/concurrent/GenericFutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/GenericFutureListener",
            "<+",
            "Lio/netty/util/concurrent/Future",
            "<-TV;>;>;)",
            "Lio/netty/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    if-nez p1, :cond_0

    .line 56
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "listeners"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_0
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_2

    .line 64
    :cond_1
    return-object p0

    .line 58
    :cond_2
    aget-object v0, p1, v1

    .line 59
    .local v0, "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {p0}, Lio/netty/util/concurrent/CompleteFuture;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v3

    invoke-static {v3, p0, v0}, Lio/netty/util/concurrent/DefaultPromise;->notifyListener(Lio/netty/util/concurrent/EventExecutor;Lio/netty/util/concurrent/Future;Lio/netty/util/concurrent/GenericFutureListener;)V

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public await()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 84
    :cond_0
    return-object p0
.end method

.method public await(J)Z
    .locals 1
    .param p1, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 107
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 110
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0

    .line 92
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public awaitUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 115
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    return-object p0
.end method

.method public awaitUninterruptibly(J)Z
    .locals 1
    .param p1, "timeoutMillis"    # J

    .prologue
    .line 125
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public awaitUninterruptibly(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 120
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 145
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected executor()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/CompleteFuture;->executor:Lio/netty/util/concurrent/EventExecutor;

    return-object v0
.end method

.method public isCancellable()Z
    .locals 1

    .prologue
    .line 135
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 140
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 130
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public removeListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener",
            "<+",
            "Lio/netty/util/concurrent/Future",
            "<-TV;>;>;)",
            "Lio/netty/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    .local p1, "listener":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<-TV;>;>;"
    return-object p0
.end method

.method public varargs removeListeners([Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;
    .locals 0
    .param p1, "listeners"    # [Lio/netty/util/concurrent/GenericFutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/netty/util/concurrent/GenericFutureListener",
            "<+",
            "Lio/netty/util/concurrent/Future",
            "<-TV;>;>;)",
            "Lio/netty/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    return-object p0
.end method

.method public sync()Lio/netty/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 97
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    return-object p0
.end method

.method public syncUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 102
    .local p0, "this":Lio/netty/util/concurrent/CompleteFuture;, "Lio/netty/util/concurrent/CompleteFuture<TV;>;"
    return-object p0
.end method
