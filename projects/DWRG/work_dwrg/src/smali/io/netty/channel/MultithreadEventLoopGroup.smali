.class public abstract Lio/netty/channel/MultithreadEventLoopGroup;
.super Lio/netty/util/concurrent/MultithreadEventExecutorGroup;
.source "MultithreadEventLoopGroup.java"

# interfaces
.implements Lio/netty/channel/EventLoopGroup;


# static fields
.field private static final DEFAULT_EVENT_LOOP_THREADS:I

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const-class v0, Lio/netty/channel/MultithreadEventLoopGroup;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/channel/MultithreadEventLoopGroup;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 37
    const/4 v0, 0x1

    .line 38
    const-string v1, "io.netty.eventLoopThreads"

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    .line 37
    invoke-static {v1, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lio/netty/channel/MultithreadEventLoopGroup;->DEFAULT_EVENT_LOOP_THREADS:I

    .line 40
    sget-object v0, Lio/netty/channel/MultithreadEventLoopGroup;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lio/netty/channel/MultithreadEventLoopGroup;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "-Dio.netty.eventLoopThreads: {}"

    sget v2, Lio/netty/channel/MultithreadEventLoopGroup;->DEFAULT_EVENT_LOOP_THREADS:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    :cond_0
    return-void
.end method

.method protected varargs constructor <init>(ILjava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "nThreads"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 49
    if-nez p1, :cond_0

    sget p1, Lio/netty/channel/MultithreadEventLoopGroup;->DEFAULT_EVENT_LOOP_THREADS:I

    .end local p1    # "nThreads":I
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;-><init>(ILjava/util/concurrent/ThreadFactory;[Ljava/lang/Object;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected newDefaultThreadFactory()Ljava/util/concurrent/ThreadFactory;
    .locals 3

    .prologue
    .line 54
    new-instance v0, Lio/netty/util/concurrent/DefaultThreadFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lio/netty/util/concurrent/DefaultThreadFactory;-><init>(Ljava/lang/Class;I)V

    return-object v0
.end method

.method public next()Lio/netty/channel/EventLoop;
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Lio/netty/util/concurrent/MultithreadEventExecutorGroup;->next()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    check-cast v0, Lio/netty/channel/EventLoop;

    return-object v0
.end method

.method public bridge synthetic next()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/channel/MultithreadEventLoopGroup;->next()Lio/netty/channel/EventLoop;

    move-result-object v0

    return-object v0
.end method

.method public register(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/Channel;

    .prologue
    .line 64
    invoke-virtual {p0}, Lio/netty/channel/MultithreadEventLoopGroup;->next()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/channel/EventLoop;->register(Lio/netty/channel/Channel;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public register(Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .prologue
    .line 69
    invoke-virtual {p0}, Lio/netty/channel/MultithreadEventLoopGroup;->next()Lio/netty/channel/EventLoop;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/netty/channel/EventLoop;->register(Lio/netty/channel/Channel;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method
