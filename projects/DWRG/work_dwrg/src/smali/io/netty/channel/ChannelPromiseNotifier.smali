.class public final Lio/netty/channel/ChannelPromiseNotifier;
.super Ljava/lang/Object;
.source "ChannelPromiseNotifier.java"

# interfaces
.implements Lio/netty/channel/ChannelFutureListener;


# instance fields
.field private final promises:[Lio/netty/channel/ChannelPromise;


# direct methods
.method public varargs constructor <init>([Lio/netty/channel/ChannelPromise;)V
    .locals 3
    .param p1, "promises"    # [Lio/netty/channel/ChannelPromise;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_0

    .line 32
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "promises"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_0
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_1

    .line 39
    invoke-virtual {p1}, [Lio/netty/channel/ChannelPromise;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/netty/channel/ChannelPromise;

    iput-object v1, p0, Lio/netty/channel/ChannelPromiseNotifier;->promises:[Lio/netty/channel/ChannelPromise;

    .line 40
    return-void

    .line 34
    :cond_1
    aget-object v0, p1, v1

    .line 35
    .local v0, "promise":Lio/netty/channel/ChannelPromise;
    if-nez v0, :cond_2

    .line 36
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "promises contains null ChannelPromise"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public operationComplete(Lio/netty/channel/ChannelFuture;)V
    .locals 5
    .param p1, "cf"    # Lio/netty/channel/ChannelFuture;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 45
    iget-object v3, p0, Lio/netty/channel/ChannelPromiseNotifier;->promises:[Lio/netty/channel/ChannelPromise;

    array-length v4, v3

    :goto_0
    if-lt v2, v4, :cond_1

    .line 55
    :cond_0
    return-void

    .line 45
    :cond_1
    aget-object v1, v3, v2

    .line 46
    .local v1, "p":Lio/netty/channel/ChannelPromise;
    invoke-interface {v1}, Lio/netty/channel/ChannelPromise;->setSuccess()Lio/netty/channel/ChannelPromise;

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    .end local v1    # "p":Lio/netty/channel/ChannelPromise;
    :cond_2
    invoke-interface {p1}, Lio/netty/channel/ChannelFuture;->cause()Ljava/lang/Throwable;

    move-result-object v0

    .line 52
    .local v0, "cause":Ljava/lang/Throwable;
    iget-object v3, p0, Lio/netty/channel/ChannelPromiseNotifier;->promises:[Lio/netty/channel/ChannelPromise;

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 53
    .restart local v1    # "p":Lio/netty/channel/ChannelPromise;
    invoke-interface {v1, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    .line 52
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
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

    invoke-virtual {p0, p1}, Lio/netty/channel/ChannelPromiseNotifier;->operationComplete(Lio/netty/channel/ChannelFuture;)V

    return-void
.end method
