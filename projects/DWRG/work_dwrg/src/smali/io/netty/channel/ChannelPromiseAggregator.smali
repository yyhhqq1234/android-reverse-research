.class public final Lio/netty/channel/ChannelPromiseAggregator;
.super Ljava/lang/Object;
.source "ChannelPromiseAggregator.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# instance fields
.field private final aggregatePromise:Lio/netty/channel/ChannelPromise;

.field private pendingPromises:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lio/netty/channel/ChannelPromise;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "aggregatePromise"    # Lio/netty/channel/ChannelPromise;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "aggregatePromise"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lio/netty/channel/ChannelPromiseAggregator;->aggregatePromise:Lio/netty/channel/ChannelPromise;

    .line 43
    return-void
.end method


# virtual methods
.method public varargs add([Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelPromiseAggregator;
    .locals 5
    .param p1, "promises"    # [Lio/netty/channel/ChannelPromise;

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "promises"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_0
    array-length v2, p1

    if-nez v2, :cond_1

    .line 73
    :goto_0
    return-object p0

    .line 55
    :cond_1
    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v2, p0, Lio/netty/channel/ChannelPromiseAggregator;->pendingPromises:Ljava/util/Set;

    if-nez v2, :cond_2

    .line 58
    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 59
    array-length v1, p1

    .line 63
    .local v1, "size":I
    :goto_1
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v2, p0, Lio/netty/channel/ChannelPromiseAggregator;->pendingPromises:Ljava/util/Set;

    .line 65
    .end local v1    # "size":I
    :cond_2
    array-length v3, p1

    const/4 v2, 0x0

    :goto_2
    if-lt v2, v3, :cond_4

    .line 55
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 61
    :cond_3
    const/4 v1, 0x2

    .restart local v1    # "size":I
    goto :goto_1

    .line 65
    .end local v1    # "size":I
    :cond_4
    :try_start_1
    aget-object v0, p1, v2

    .line 66
    .local v0, "p":Lio/netty/channel/ChannelPromise;
    if-nez v0, :cond_5

    .line 65
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 69
    :cond_5
    iget-object v4, p0, Lio/netty/channel/ChannelPromiseAggregator;->pendingPromises:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-interface {v0, p0}, Lio/netty/channel/ChannelPromise;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelPromise;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public declared-synchronized operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 3
    .param p1, "future"    # Lio/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lio/netty/channel/ChannelPromiseAggregator;->pendingPromises:Ljava/util/Set;

    if-nez v1, :cond_1

    .line 79
    iget-object v1, p0, Lio/netty/channel/ChannelPromiseAggregator;->aggregatePromise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v1}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 81
    :cond_1
    :try_start_1
    iget-object v1, p0, Lio/netty/channel/ChannelPromiseAggregator;->pendingPromises:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 82
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_2

    .line 83
    iget-object v1, p0, Lio/netty/channel/ChannelPromiseAggregator;->aggregatePromise:Lio/netty/channel/ChannelPromise;

    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v1, v2}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 84
    iget-object v1, p0, Lio/netty/channel/ChannelPromiseAggregator;->pendingPromises:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/channel/ChannelPromise;

    .line 85
    .local v0, "pendingFuture":Lio/netty/channel/ChannelPromise;
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-interface {v0, v2}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 78
    .end local v0    # "pendingFuture":Lio/netty/channel/ChannelPromise;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 88
    :cond_2
    :try_start_2
    iget-object v1, p0, Lio/netty/channel/ChannelPromiseAggregator;->pendingPromises:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lio/netty/channel/ChannelPromiseAggregator;->aggregatePromise:Lio/netty/channel/ChannelPromise;

    invoke-interface {v1}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public bridge synthetic operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    check-cast p1, Lio/netty/channel/ChannelFuture;

    invoke-virtual {p0, p1}, Lio/netty/channel/ChannelPromiseAggregator;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
