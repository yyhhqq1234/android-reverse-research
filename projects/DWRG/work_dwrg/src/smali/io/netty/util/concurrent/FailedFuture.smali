.class public final Lio/netty/util/concurrent/FailedFuture;
.super Lio/netty/util/concurrent/CompleteFuture;
.source "FailedFuture.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/util/concurrent/CompleteFuture",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final cause:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutor;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 36
    .local p0, "this":Lio/netty/util/concurrent/FailedFuture;, "Lio/netty/util/concurrent/FailedFuture<TV;>;"
    invoke-direct {p0, p1}, Lio/netty/util/concurrent/CompleteFuture;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    .line 37
    if-nez p2, :cond_0

    .line 38
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cause"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iput-object p2, p0, Lio/netty/util/concurrent/FailedFuture;->cause:Ljava/lang/Throwable;

    .line 41
    return-void
.end method


# virtual methods
.method public cause()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 45
    .local p0, "this":Lio/netty/util/concurrent/FailedFuture;, "Lio/netty/util/concurrent/FailedFuture<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/FailedFuture;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getNow()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lio/netty/util/concurrent/FailedFuture;, "Lio/netty/util/concurrent/FailedFuture<TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 50
    .local p0, "this":Lio/netty/util/concurrent/FailedFuture;, "Lio/netty/util/concurrent/FailedFuture<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public sync()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lio/netty/util/concurrent/FailedFuture;, "Lio/netty/util/concurrent/FailedFuture<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/FailedFuture;->cause:Ljava/lang/Throwable;

    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 56
    return-object p0
.end method

.method public syncUninterruptibly()Lio/netty/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/concurrent/Future",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lio/netty/util/concurrent/FailedFuture;, "Lio/netty/util/concurrent/FailedFuture<TV;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/FailedFuture;->cause:Ljava/lang/Throwable;

    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->throwException(Ljava/lang/Throwable;)V

    .line 62
    return-object p0
.end method
