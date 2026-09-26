.class public Lio/netty/channel/nio/NioEventLoopGroup;
.super Lio/netty/channel/MultithreadEventLoopGroup;
.source "NioEventLoopGroup.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(I)V

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "nThreads"    # I

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 45
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 1
    .param p1, "nThreads"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 52
    invoke-static {}, Ljava/nio/channels/spi/SelectorProvider;->provider()Ljava/nio/channels/spi/SelectorProvider;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/nio/NioEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/nio/channels/spi/SelectorProvider;)V

    .line 53
    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;Ljava/nio/channels/spi/SelectorProvider;)V
    .locals 2
    .param p1, "nThreads"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p3, "selectorProvider"    # Ljava/nio/channels/spi/SelectorProvider;

    .prologue
    .line 61
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/MultithreadEventLoopGroup;-><init>(ILjava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)V

    .line 62
    return-void
.end method


# virtual methods
.method protected varargs newChild(Ljava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)Lio/netty/util/concurrent/EventExecutor;
    .locals 2
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v1, Lio/netty/channel/nio/NioEventLoop;

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/nio/channels/spi/SelectorProvider;

    invoke-direct {v1, p0, p1, v0}, Lio/netty/channel/nio/NioEventLoop;-><init>(Lio/netty/channel/nio/NioEventLoopGroup;Ljava/util/concurrent/ThreadFactory;Ljava/nio/channels/spi/SelectorProvider;)V

    return-object v1
.end method

.method public rebuildSelectors()V
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p0}, Lio/netty/channel/nio/NioEventLoopGroup;->children()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    return-void

    .line 79
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/concurrent/EventExecutor;

    .line 80
    .local v0, "e":Lio/netty/util/concurrent/EventExecutor;
    check-cast v0, Lio/netty/channel/nio/NioEventLoop;

    .end local v0    # "e":Lio/netty/util/concurrent/EventExecutor;
    invoke-virtual {v0}, Lio/netty/channel/nio/NioEventLoop;->rebuildSelector()V

    goto :goto_0
.end method

.method public setIoRatio(I)V
    .locals 3
    .param p1, "ioRatio"    # I

    .prologue
    .line 69
    invoke-virtual {p0}, Lio/netty/channel/nio/NioEventLoopGroup;->children()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    return-void

    .line 69
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/concurrent/EventExecutor;

    .line 70
    .local v0, "e":Lio/netty/util/concurrent/EventExecutor;
    check-cast v0, Lio/netty/channel/nio/NioEventLoop;

    .end local v0    # "e":Lio/netty/util/concurrent/EventExecutor;
    invoke-virtual {v0, p1}, Lio/netty/channel/nio/NioEventLoop;->setIoRatio(I)V

    goto :goto_0
.end method
