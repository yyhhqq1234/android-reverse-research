.class public abstract Lio/netty/util/concurrent/AbstractFuture;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Lio/netty/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/Future",
        "<TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    .local p0, "this":Lio/netty/util/concurrent/AbstractFuture;, "Lio/netty/util/concurrent/AbstractFuture<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2
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
    .line 31
    .local p0, "this":Lio/netty/util/concurrent/AbstractFuture;, "Lio/netty/util/concurrent/AbstractFuture<TV;>;"
    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractFuture;->await()Lio/netty/util/concurrent/Future;

    .line 33
    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractFuture;->cause()Ljava/lang/Throwable;

    move-result-object v0

    .line 34
    .local v0, "cause":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractFuture;->getNow()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 37
    :cond_0
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 3
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
    .line 42
    .local p0, "this":Lio/netty/util/concurrent/AbstractFuture;, "Lio/netty/util/concurrent/AbstractFuture<TV;>;"
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/util/concurrent/AbstractFuture;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractFuture;->cause()Ljava/lang/Throwable;

    move-result-object v0

    .line 44
    .local v0, "cause":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lio/netty/util/concurrent/AbstractFuture;->getNow()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 47
    :cond_0
    new-instance v1, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v1, v0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 49
    .end local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1
.end method
