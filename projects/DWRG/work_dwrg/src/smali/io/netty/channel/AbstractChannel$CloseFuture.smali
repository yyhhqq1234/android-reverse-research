.class final Lio/netty/channel/AbstractChannel$CloseFuture;
.super Lio/netty/channel/DefaultChannelPromise;
.source "AbstractChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/AbstractChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CloseFuture"
.end annotation


# direct methods
.method constructor <init>(Lio/netty/channel/AbstractChannel;)V
    .locals 0
    .param p1, "ch"    # Lio/netty/channel/AbstractChannel;

    .prologue
    .line 846
    invoke-direct {p0, p1}, Lio/netty/channel/DefaultChannelPromise;-><init>(Lio/netty/channel/Channel;)V

    .line 847
    return-void
.end method


# virtual methods
.method setClosed()Z
    .locals 1

    .prologue
    .line 870
    invoke-super {p0}, Lio/netty/channel/DefaultChannelPromise;->trySuccess()Z

    move-result v0

    return v0
.end method

.method public setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 856
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/channel/AbstractChannel$CloseFuture;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public setSuccess()Lio/netty/channel/ChannelPromise;
    .locals 1

    .prologue
    .line 851
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public tryFailure(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 866
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public trySuccess()Z
    .locals 1

    .prologue
    .line 861
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
