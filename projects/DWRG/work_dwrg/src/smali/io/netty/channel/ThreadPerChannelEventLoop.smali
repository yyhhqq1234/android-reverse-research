.class public Lio/netty/channel/ThreadPerChannelEventLoop;
.super Lio/netty/channel/SingleThreadEventLoop;
.source "ThreadPerChannelEventLoop.java"


# instance fields
.field private ch:Lio/netty/channel/Channel;

.field private final parent:Lio/netty/channel/ThreadPerChannelEventLoopGroup;


# direct methods
.method public constructor <init>(Lio/netty/channel/ThreadPerChannelEventLoopGroup;)V
    .locals 2
    .param p1, "parent"    # Lio/netty/channel/ThreadPerChannelEventLoopGroup;

    .prologue
    .line 29
    iget-object v0, p1, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lio/netty/channel/SingleThreadEventLoop;-><init>(Lio/netty/channel/EventLoopGroup;Ljava/util/concurrent/ThreadFactory;Z)V

    .line 30
    iput-object p1, p0, Lio/netty/channel/ThreadPerChannelEventLoop;->parent:Lio/netty/channel/ThreadPerChannelEventLoopGroup;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lio/netty/channel/ThreadPerChannelEventLoop;Lio/netty/channel/Channel;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lio/netty/channel/ThreadPerChannelEventLoop;->ch:Lio/netty/channel/Channel;

    return-void
.end method


# virtual methods
.method protected deregister()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoop;->ch:Lio/netty/channel/Channel;

    .line 78
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoop;->parent:Lio/netty/channel/ThreadPerChannelEventLoopGroup;

    iget-object v0, v0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->activeChildren:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoop;->parent:Lio/netty/channel/ThreadPerChannelEventLoopGroup;

    iget-object v0, v0, Lio/netty/channel/ThreadPerChannelEventLoopGroup;->idleChildren:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public register(Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .prologue
    .line 35
    invoke-super {p0, p1, p2}, Lio/netty/channel/SingleThreadEventLoop;->register(Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    new-instance v1, Lio/netty/channel/ThreadPerChannelEventLoop$1;

    invoke-direct {v1, p0}, Lio/netty/channel/ThreadPerChannelEventLoop$1;-><init>(Lio/netty/channel/ThreadPerChannelEventLoop;)V

    invoke-interface {v0, v1}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method protected run()V
    .locals 4

    .prologue
    .line 50
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoop;->takeTask()Ljava/lang/Runnable;

    move-result-object v1

    .line 51
    .local v1, "task":Ljava/lang/Runnable;
    if-eqz v1, :cond_1

    .line 52
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 53
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoop;->updateLastExecutionTime()V

    .line 56
    :cond_1
    iget-object v0, p0, Lio/netty/channel/ThreadPerChannelEventLoop;->ch:Lio/netty/channel/Channel;

    .line 57
    .local v0, "ch":Lio/netty/channel/Channel;
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoop;->isShuttingDown()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 58
    if-eqz v0, :cond_2

    .line 59
    invoke-interface {v0}, Lio/netty/channel/Channel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v2

    invoke-interface {v0}, Lio/netty/channel/Channel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v3

    invoke-interface {v3}, Lio/netty/channel/Channel$Unsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/netty/channel/Channel$Unsafe;->close(Lio/netty/channel/ChannelPromise;)V

    .line 61
    :cond_2
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoop;->confirmShutdown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    return-void

    .line 65
    :cond_3
    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0}, Lio/netty/channel/Channel;->isRegistered()Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoop;->runAllTasks()Z

    .line 69
    invoke-virtual {p0}, Lio/netty/channel/ThreadPerChannelEventLoop;->deregister()V

    goto :goto_0
.end method
