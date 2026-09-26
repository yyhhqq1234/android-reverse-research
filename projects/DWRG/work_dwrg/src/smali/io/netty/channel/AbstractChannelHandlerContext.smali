.class abstract Lio/netty/channel/AbstractChannelHandlerContext;
.super Lio/netty/util/DefaultAttributeMap;
.source "AbstractChannelHandlerContext.java"

# interfaces
.implements Lio/netty/channel/ChannelHandlerContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/AbstractChannelHandlerContext$AbstractWriteTask;,
        Lio/netty/channel/AbstractChannelHandlerContext$WriteAndFlushTask;,
        Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;
    }
.end annotation


# instance fields
.field private final channel:Lio/netty/channel/AbstractChannel;

.field final executor:Lio/netty/util/concurrent/EventExecutor;

.field private final inbound:Z

.field private volatile invokeChannelReadCompleteTask:Ljava/lang/Runnable;

.field private volatile invokeChannelWritableStateChangedTask:Ljava/lang/Runnable;

.field private volatile invokeFlushTask:Ljava/lang/Runnable;

.field private volatile invokeReadTask:Ljava/lang/Runnable;

.field private final name:Ljava/lang/String;

.field volatile next:Lio/netty/channel/AbstractChannelHandlerContext;

.field private final outbound:Z

.field private final pipeline:Lio/netty/channel/DefaultChannelPipeline;

.field volatile prev:Lio/netty/channel/AbstractChannelHandlerContext;

.field private removed:Z

.field private succeededFuture:Lio/netty/channel/ChannelFuture;


# direct methods
.method constructor <init>(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/util/concurrent/EventExecutorGroup;Ljava/lang/String;ZZ)V
    .locals 3
    .param p1, "pipeline"    # Lio/netty/channel/DefaultChannelPipeline;
    .param p2, "group"    # Lio/netty/util/concurrent/EventExecutorGroup;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "inbound"    # Z
    .param p5, "outbound"    # Z

    .prologue
    .line 57
    invoke-direct {p0}, Lio/netty/util/DefaultAttributeMap;-><init>()V

    .line 60
    if-nez p3, :cond_0

    .line 61
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "name"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 64
    :cond_0
    iget-object v1, p1, Lio/netty/channel/DefaultChannelPipeline;->channel:Lio/netty/channel/AbstractChannel;

    iput-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->channel:Lio/netty/channel/AbstractChannel;

    .line 65
    iput-object p1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    .line 66
    iput-object p3, p0, Lio/netty/channel/AbstractChannelHandlerContext;->name:Ljava/lang/String;

    .line 68
    if-eqz p2, :cond_2

    .line 71
    iget-object v1, p1, Lio/netty/channel/DefaultChannelPipeline;->childExecutors:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/concurrent/EventExecutor;

    .line 72
    .local v0, "childExecutor":Lio/netty/util/concurrent/EventExecutor;
    if-nez v0, :cond_1

    .line 73
    invoke-interface {p2}, Lio/netty/util/concurrent/EventExecutorGroup;->next()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 74
    iget-object v1, p1, Lio/netty/channel/DefaultChannelPipeline;->childExecutors:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_1
    iput-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->executor:Lio/netty/util/concurrent/EventExecutor;

    .line 81
    .end local v0    # "childExecutor":Lio/netty/util/concurrent/EventExecutor;
    :goto_0
    iput-boolean p4, p0, Lio/netty/channel/AbstractChannelHandlerContext;->inbound:Z

    .line 82
    iput-boolean p5, p0, Lio/netty/channel/AbstractChannelHandlerContext;->outbound:Z

    .line 83
    return-void

    .line 78
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->executor:Lio/netty/util/concurrent/EventExecutor;

    goto :goto_0
.end method

.method static synthetic access$0(Lio/netty/channel/AbstractChannelHandlerContext;)Lio/netty/channel/AbstractChannel;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->channel:Lio/netty/channel/AbstractChannel;

    return-object v0
.end method

.method static synthetic access$1(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .prologue
    .line 656
    invoke-direct {p0, p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeWrite(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$10(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelRead(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$11(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelReadComplete()V

    return-void
.end method

.method static synthetic access$12(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0

    .prologue
    .line 389
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelWritabilityChanged()V

    return-void
.end method

.method static synthetic access$13(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .prologue
    .line 453
    invoke-direct {p0, p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeBind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$14(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .prologue
    .line 494
    invoke-direct {p0, p1, p2, p3}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$15(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .prologue
    .line 566
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeClose(Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$16(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .prologue
    .line 535
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeDisconnect(Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$17(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 0

    .prologue
    .line 597
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeDeregister(Lio/netty/channel/ChannelPromise;)V

    return-void
.end method

.method static synthetic access$18(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0

    .prologue
    .line 627
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeRead()V

    return-void
.end method

.method static synthetic access$2(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0

    .prologue
    .line 686
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeFlush()V

    return-void
.end method

.method static synthetic access$3(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->teardown0()V

    return-void
.end method

.method static synthetic access$4(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelRegistered()V

    return-void
.end method

.method static synthetic access$5(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelUnregistered()V

    return-void
.end method

.method static synthetic access$6(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0

    .prologue
    .line 206
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelActive()V

    return-void
.end method

.method static synthetic access$7(Lio/netty/channel/AbstractChannelHandlerContext;)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelInactive()V

    return-void
.end method

.method static synthetic access$8(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeExceptionCaught(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$9(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeUserEventTriggered(Ljava/lang/Object;)V

    return-void
.end method

.method private findContextInbound()Lio/netty/channel/AbstractChannelHandlerContext;
    .locals 2

    .prologue
    .line 853
    move-object v0, p0

    .line 855
    .local v0, "ctx":Lio/netty/channel/AbstractChannelHandlerContext;
    :cond_0
    iget-object v0, v0, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 856
    iget-boolean v1, v0, Lio/netty/channel/AbstractChannelHandlerContext;->inbound:Z

    if-eqz v1, :cond_0

    .line 857
    return-object v0
.end method

.method private findContextOutbound()Lio/netty/channel/AbstractChannelHandlerContext;
    .locals 2

    .prologue
    .line 861
    move-object v0, p0

    .line 863
    .local v0, "ctx":Lio/netty/channel/AbstractChannelHandlerContext;
    :cond_0
    iget-object v0, v0, Lio/netty/channel/AbstractChannelHandlerContext;->prev:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 864
    iget-boolean v1, v0, Lio/netty/channel/AbstractChannelHandlerContext;->outbound:Z

    if-eqz v1, :cond_0

    .line 865
    return-object v0
.end method

.method private static inExceptionCaught(Ljava/lang/Throwable;)Z
    .locals 7
    .param p0, "cause"    # Ljava/lang/Throwable;

    .prologue
    const/4 v2, 0x0

    .line 773
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 774
    .local v1, "trace":[Ljava/lang/StackTraceElement;
    if-eqz v1, :cond_1

    .line 775
    array-length v4, v1

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_2

    .line 785
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 786
    if-nez p0, :cond_0

    .line 788
    :goto_1
    return v2

    .line 775
    :cond_2
    aget-object v0, v1, v3

    .line 776
    .local v0, "t":Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_1

    .line 779
    const-string v5, "exceptionCaught"

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 780
    const/4 v2, 0x1

    goto :goto_1

    .line 775
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private invokeBind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .prologue
    .line 455
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v1

    check-cast v1, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v1, p0, p1, p2}, Lio/netty/channel/ChannelOutboundHandler;->bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :goto_0
    return-void

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyOutboundHandlerException(Ljava/lang/Throwable;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0
.end method

.method private invokeChannelActive()V
    .locals 2

    .prologue
    .line 208
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v1

    check-cast v1, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v1, p0}, Lio/netty/channel/ChannelInboundHandler;->channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private invokeChannelInactive()V
    .locals 2

    .prologue
    .line 233
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v1

    check-cast v1, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v1, p0}, Lio/netty/channel/ChannelInboundHandler;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private invokeChannelRead(Ljava/lang/Object;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 333
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v1

    check-cast v1, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v1, p0, p1}, Lio/netty/channel/ChannelInboundHandler;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private invokeChannelReadComplete()V
    .locals 2

    .prologue
    .line 362
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v1

    check-cast v1, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v1, p0}, Lio/netty/channel/ChannelInboundHandler;->channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v0

    .line 364
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private invokeChannelRegistered()V
    .locals 2

    .prologue
    .line 158
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v1

    check-cast v1, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v1, p0}, Lio/netty/channel/ChannelInboundHandler;->channelRegistered(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private invokeChannelUnregistered()V
    .locals 2

    .prologue
    .line 183
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v1

    check-cast v1, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v1, p0}, Lio/netty/channel/ChannelInboundHandler;->channelUnregistered(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private invokeChannelWritabilityChanged()V
    .locals 2

    .prologue
    .line 391
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v1

    check-cast v1, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v1, p0}, Lio/netty/channel/ChannelInboundHandler;->channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 393
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private invokeClose(Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .prologue
    .line 568
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v1

    check-cast v1, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v1, p0, p1}, Lio/netty/channel/ChannelOutboundHandler;->close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 572
    :goto_0
    return-void

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyOutboundHandlerException(Ljava/lang/Throwable;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0
.end method

.method private invokeConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .prologue
    .line 496
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v1

    check-cast v1, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v1, p0, p1, p2, p3}, Lio/netty/channel/ChannelOutboundHandler;->connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :goto_0
    return-void

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0, p3}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyOutboundHandlerException(Ljava/lang/Throwable;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0
.end method

.method private invokeDeregister(Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .prologue
    .line 599
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v1

    check-cast v1, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v1, p0, p1}, Lio/netty/channel/ChannelOutboundHandler;->deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :goto_0
    return-void

    .line 600
    :catch_0
    move-exception v0

    .line 601
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyOutboundHandlerException(Ljava/lang/Throwable;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0
.end method

.method private invokeDisconnect(Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .prologue
    .line 537
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v1

    check-cast v1, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v1, p0, p1}, Lio/netty/channel/ChannelOutboundHandler;->disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :goto_0
    return-void

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyOutboundHandlerException(Ljava/lang/Throwable;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0
.end method

.method private invokeExceptionCaught(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 271
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Lio/netty/channel/ChannelHandler;->exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lio/netty/channel/DefaultChannelPipeline;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    sget-object v1, Lio/netty/channel/DefaultChannelPipeline;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 275
    const-string v2, "An exception was thrown by a user handler\'s exceptionCaught() method while handling the following exception:"

    .line 274
    invoke-interface {v1, v2, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private invokeFlush()V
    .locals 2

    .prologue
    .line 688
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v1

    check-cast v1, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v1, p0}, Lio/netty/channel/ChannelOutboundHandler;->flush(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    :goto_0
    return-void

    .line 689
    :catch_0
    move-exception v0

    .line 690
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private invokeRead()V
    .locals 2

    .prologue
    .line 629
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v1

    check-cast v1, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v1, p0}, Lio/netty/channel/ChannelOutboundHandler;->read(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :goto_0
    return-void

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private invokeUserEventTriggered(Ljava/lang/Object;)V
    .locals 2
    .param p1, "event"    # Ljava/lang/Object;

    .prologue
    .line 304
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v1

    check-cast v1, Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v1, p0, p1}, Lio/netty/channel/ChannelInboundHandler;->userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyHandlerException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private invokeWrite(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .prologue
    .line 658
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->handler()Lio/netty/channel/ChannelHandler;

    move-result-object v1

    check-cast v1, Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v1, p0, p1, p2}, Lio/netty/channel/ChannelOutboundHandler;->write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    :goto_0
    return-void

    .line 659
    :catch_0
    move-exception v0

    .line 660
    .local v0, "t":Ljava/lang/Throwable;
    invoke-static {v0, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->notifyOutboundHandlerException(Ljava/lang/Throwable;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0
.end method

.method private notifyHandlerException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 759
    invoke-static {p1}, Lio/netty/channel/AbstractChannelHandlerContext;->inExceptionCaught(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 760
    sget-object v0, Lio/netty/channel/DefaultChannelPipeline;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    sget-object v0, Lio/netty/channel/DefaultChannelPipeline;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 762
    const-string v1, "An exception was thrown by a user handler while handling an exceptionCaught event"

    .line 761
    invoke-interface {v0, v1, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 769
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeExceptionCaught(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static notifyOutboundHandlerException(Ljava/lang/Throwable;Lio/netty/channel/ChannelPromise;)V
    .locals 2
    .param p0, "cause"    # Ljava/lang/Throwable;
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .prologue
    .line 747
    instance-of v0, p1, Lio/netty/channel/VoidChannelPromise;

    if-eqz v0, :cond_1

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 751
    :cond_1
    invoke-interface {p1, p0}, Lio/netty/channel/ChannelPromise;->tryFailure(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 752
    sget-object v0, Lio/netty/channel/DefaultChannelPipeline;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    sget-object v0, Lio/netty/channel/DefaultChannelPipeline;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v1, "Failed to fail the promise because it\'s done already: {}"

    invoke-interface {v0, v1, p1, p0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;)V
    .locals 2
    .param p0, "executor"    # Lio/netty/util/concurrent/EventExecutor;
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .param p3, "msg"    # Ljava/lang/Object;

    .prologue
    .line 884
    :try_start_0
    invoke-interface {p0, p1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 885
    :catch_0
    move-exception v0

    .line 887
    .local v0, "cause":Ljava/lang/Throwable;
    :try_start_1
    invoke-interface {p2, v0}, Lio/netty/channel/ChannelPromise;->setFailure(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPromise;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 889
    if-eqz p3, :cond_0

    .line 890
    invoke-static {p3}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    goto :goto_0

    .line 888
    :catchall_0
    move-exception v1

    .line 889
    if-eqz p3, :cond_1

    .line 890
    invoke-static {p3}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 892
    :cond_1
    throw v1
.end method

.method private teardown0()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->prev:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 102
    .local v0, "prev":Lio/netty/channel/AbstractChannelHandlerContext;
    if-eqz v0, :cond_0

    .line 103
    iget-object v2, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    monitor-enter v2

    .line 104
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    invoke-virtual {v1, p0}, Lio/netty/channel/DefaultChannelPipeline;->remove0(Lio/netty/channel/AbstractChannelHandlerContext;)V

    .line 103
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    invoke-virtual {v0}, Lio/netty/channel/AbstractChannelHandlerContext;->teardown()V

    .line 108
    :cond_0
    return-void

    .line 103
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private validatePromise(Lio/netty/channel/ChannelPromise;Z)Z
    .locals 6
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;
    .param p2, "allowVoidPromise"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 816
    if-nez p1, :cond_0

    .line 817
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "promise"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 820
    :cond_0
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->isDone()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 825
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 849
    :goto_0
    return v0

    .line 828
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "promise already done: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 831
    :cond_2
    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 832
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 833
    const-string v3, "promise.channel does not match: %s (expected: %s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {p1}, Lio/netty/channel/ChannelPromise;->channel()Lio/netty/channel/Channel;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    aput-object v0, v4, v1

    .line 832
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 836
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lio/netty/channel/DefaultChannelPromise;

    if-ne v0, v2, :cond_4

    move v0, v1

    .line 837
    goto :goto_0

    .line 840
    :cond_4
    if-nez p2, :cond_5

    instance-of v0, p1, Lio/netty/channel/VoidChannelPromise;

    if-eqz v0, :cond_5

    .line 841
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 842
    new-instance v1, Ljava/lang/StringBuilder;

    const-class v2, Lio/netty/channel/VoidChannelPromise;

    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " not allowed for this operation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 841
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 845
    :cond_5
    instance-of v0, p1, Lio/netty/channel/AbstractChannel$CloseFuture;

    if-eqz v0, :cond_6

    .line 846
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 847
    new-instance v1, Ljava/lang/StringBuilder;

    const-class v2, Lio/netty/channel/AbstractChannel$CloseFuture;

    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " not allowed in a pipeline"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 846
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v0, v1

    .line 849
    goto/16 :goto_0
.end method

.method private write(Ljava/lang/Object;ZLio/netty/channel/ChannelPromise;)V
    .locals 8
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "flush"    # Z
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .prologue
    .line 713
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v2

    .line 714
    .local v2, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v2}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v1

    .line 715
    .local v1, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v1}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 716
    invoke-direct {v2, p1, p3}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeWrite(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    .line 717
    if-eqz p2, :cond_0

    .line 718
    invoke-direct {v2}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeFlush()V

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    iget-object v5, p0, Lio/netty/channel/AbstractChannelHandlerContext;->channel:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v5}, Lio/netty/channel/AbstractChannel;->estimatorHandle()Lio/netty/channel/MessageSizeEstimator$Handle;

    move-result-object v5

    invoke-interface {v5, p1}, Lio/netty/channel/MessageSizeEstimator$Handle;->size(Ljava/lang/Object;)I

    move-result v3

    .line 722
    .local v3, "size":I
    if-lez v3, :cond_2

    .line 723
    iget-object v5, p0, Lio/netty/channel/AbstractChannelHandlerContext;->channel:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v5}, Lio/netty/channel/AbstractChannel;->unsafe()Lio/netty/channel/Channel$Unsafe;

    move-result-object v5

    invoke-interface {v5}, Lio/netty/channel/Channel$Unsafe;->outboundBuffer()Lio/netty/channel/ChannelOutboundBuffer;

    move-result-object v0

    .line 725
    .local v0, "buffer":Lio/netty/channel/ChannelOutboundBuffer;
    if-eqz v0, :cond_2

    .line 726
    int-to-long v6, v3

    invoke-virtual {v0, v6, v7}, Lio/netty/channel/ChannelOutboundBuffer;->incrementPendingOutboundBytes(J)V

    .line 730
    .end local v0    # "buffer":Lio/netty/channel/ChannelOutboundBuffer;
    :cond_2
    if-eqz p2, :cond_3

    .line 731
    invoke-static {v2, p1, v3, p3}, Lio/netty/channel/AbstractChannelHandlerContext$WriteAndFlushTask;->access$1(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;ILio/netty/channel/ChannelPromise;)Lio/netty/channel/AbstractChannelHandlerContext$WriteAndFlushTask;

    move-result-object v4

    .line 735
    .local v4, "task":Ljava/lang/Runnable;
    :goto_1
    invoke-static {v1, v4, p3, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;)V

    goto :goto_0

    .line 733
    .end local v4    # "task":Ljava/lang/Runnable;
    :cond_3
    invoke-static {v2, p1, v3, p3}, Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;->access$1(Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;ILio/netty/channel/ChannelPromise;)Lio/netty/channel/AbstractChannelHandlerContext$WriteTask;

    move-result-object v4

    .restart local v4    # "task":Ljava/lang/Runnable;
    goto :goto_1
.end method


# virtual methods
.method public alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    return-object v0
.end method

.method public bind(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "localAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 399
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public bind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 4
    .param p1, "localAddress"    # Ljava/net/SocketAddress;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .prologue
    .line 429
    if-nez p1, :cond_0

    .line 430
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "localAddress"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 432
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, p2, v2}, Lio/netty/channel/AbstractChannelHandlerContext;->validatePromise(Lio/netty/channel/ChannelPromise;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 450
    :goto_0
    return-object p2

    .line 437
    :cond_1
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v1

    .line 438
    .local v1, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 439
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 440
    invoke-direct {v1, p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeBind(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 442
    :cond_2
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$11;

    invoke-direct {v2, p0, v1, p1, p2}, Lio/netty/channel/AbstractChannelHandlerContext$11;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    .line 447
    const/4 v3, 0x0

    .line 442
    invoke-static {v0, v2, p2, v3}, Lio/netty/channel/AbstractChannelHandlerContext;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public channel()Lio/netty/channel/Channel;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->channel:Lio/netty/channel/AbstractChannel;

    return-object v0
.end method

.method public close()Lio/netty/channel/ChannelFuture;
    .locals 1

    .prologue
    .line 419
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public close(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 4
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .prologue
    .line 545
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lio/netty/channel/AbstractChannelHandlerContext;->validatePromise(Lio/netty/channel/ChannelPromise;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 563
    :goto_0
    return-object p1

    .line 550
    :cond_0
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v1

    .line 551
    .local v1, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 552
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 553
    invoke-direct {v1, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeClose(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 555
    :cond_1
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$14;

    invoke-direct {v2, p0, v1, p1}, Lio/netty/channel/AbstractChannelHandlerContext$14;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    .line 560
    const/4 v3, 0x0

    .line 555
    invoke-static {v0, v2, p1, v3}, Lio/netty/channel/AbstractChannelHandlerContext;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public connect(Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 404
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->connect(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .prologue
    .line 463
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;

    .prologue
    .line 409
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 7
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .prologue
    .line 470
    if-nez p1, :cond_0

    .line 471
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "remoteAddress"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 473
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->validatePromise(Lio/netty/channel/ChannelPromise;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 491
    :goto_0
    return-object p3

    .line 478
    :cond_1
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v2

    .line 479
    .local v2, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v2}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v6

    .line 480
    .local v6, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v6}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 481
    invoke-direct {v2, p1, p2, p3}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeConnect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 483
    :cond_2
    new-instance v0, Lio/netty/channel/AbstractChannelHandlerContext$12;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/netty/channel/AbstractChannelHandlerContext$12;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    .line 488
    const/4 v1, 0x0

    .line 483
    invoke-static {v6, v0, p3, v1}, Lio/netty/channel/AbstractChannelHandlerContext;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public deregister()Lio/netty/channel/ChannelFuture;
    .locals 1

    .prologue
    .line 424
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public deregister(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 4
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .prologue
    .line 576
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lio/netty/channel/AbstractChannelHandlerContext;->validatePromise(Lio/netty/channel/ChannelPromise;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 594
    :goto_0
    return-object p1

    .line 581
    :cond_0
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v1

    .line 582
    .local v1, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 583
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 584
    invoke-direct {v1, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeDeregister(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 586
    :cond_1
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$15;

    invoke-direct {v2, p0, v1, p1}, Lio/netty/channel/AbstractChannelHandlerContext$15;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    .line 591
    const/4 v3, 0x0

    .line 586
    invoke-static {v0, v2, p1, v3}, Lio/netty/channel/AbstractChannelHandlerContext;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public disconnect()Lio/netty/channel/ChannelFuture;
    .locals 1

    .prologue
    .line 414
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public disconnect(Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 4
    .param p1, "promise"    # Lio/netty/channel/ChannelPromise;

    .prologue
    .line 504
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lio/netty/channel/AbstractChannelHandlerContext;->validatePromise(Lio/netty/channel/ChannelPromise;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 532
    :goto_0
    return-object p1

    .line 509
    :cond_0
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v1

    .line 510
    .local v1, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 511
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 514
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v2

    invoke-interface {v2}, Lio/netty/channel/Channel;->metadata()Lio/netty/channel/ChannelMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lio/netty/channel/ChannelMetadata;->hasDisconnect()Z

    move-result v2

    if-nez v2, :cond_1

    .line 515
    invoke-direct {v1, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeClose(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 517
    :cond_1
    invoke-direct {v1, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeDisconnect(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 520
    :cond_2
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$13;

    invoke-direct {v2, p0, v1, p1}, Lio/netty/channel/AbstractChannelHandlerContext$13;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    .line 529
    const/4 v3, 0x0

    .line 520
    invoke-static {v0, v2, p1, v3}, Lio/netty/channel/AbstractChannelHandlerContext;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public executor()Lio/netty/util/concurrent/EventExecutor;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->executor:Lio/netty/util/concurrent/EventExecutor;

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->executor:Lio/netty/util/concurrent/EventExecutor;

    goto :goto_0
.end method

.method public fireChannelActive()Lio/netty/channel/ChannelHandlerContext;
    .locals 3

    .prologue
    .line 191
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v1

    .line 192
    .local v1, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 193
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    invoke-direct {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelActive()V

    .line 203
    :goto_0
    return-object p0

    .line 196
    :cond_0
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$4;

    invoke-direct {v2, p0, v1}, Lio/netty/channel/AbstractChannelHandlerContext$4;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;)V

    invoke-interface {v0, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;
    .locals 3

    .prologue
    .line 216
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v1

    .line 217
    .local v1, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 218
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    invoke-direct {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelInactive()V

    .line 228
    :goto_0
    return-object p0

    .line 221
    :cond_0
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$5;

    invoke-direct {v2, p0, v1}, Lio/netty/channel/AbstractChannelHandlerContext$5;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;)V

    invoke-interface {v0, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;
    .locals 4
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 312
    if-nez p1, :cond_0

    .line 313
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "msg"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 316
    :cond_0
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v1

    .line 317
    .local v1, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 318
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 319
    invoke-direct {v1, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelRead(Ljava/lang/Object;)V

    .line 328
    :goto_0
    return-object p0

    .line 321
    :cond_1
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$8;

    invoke-direct {v2, p0, v1, p1}, Lio/netty/channel/AbstractChannelHandlerContext$8;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;
    .locals 4

    .prologue
    .line 341
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v1

    .line 342
    .local v1, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 343
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 344
    invoke-direct {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelReadComplete()V

    .line 357
    :goto_0
    return-object p0

    .line 346
    :cond_0
    iget-object v2, v1, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelReadCompleteTask:Ljava/lang/Runnable;

    .line 347
    .local v2, "task":Ljava/lang/Runnable;
    if-nez v2, :cond_1

    .line 348
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$9;

    .end local v2    # "task":Ljava/lang/Runnable;
    invoke-direct {v2, p0, v1}, Lio/netty/channel/AbstractChannelHandlerContext$9;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;)V

    .restart local v2    # "task":Ljava/lang/Runnable;
    iput-object v2, v1, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelReadCompleteTask:Ljava/lang/Runnable;

    .line 355
    :cond_1
    invoke-interface {v0, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public fireChannelRegistered()Lio/netty/channel/ChannelHandlerContext;
    .locals 3

    .prologue
    .line 141
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v1

    .line 142
    .local v1, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 143
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    invoke-direct {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelRegistered()V

    .line 153
    :goto_0
    return-object p0

    .line 146
    :cond_0
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$2;

    invoke-direct {v2, p0, v1}, Lio/netty/channel/AbstractChannelHandlerContext$2;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;)V

    invoke-interface {v0, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public fireChannelUnregistered()Lio/netty/channel/ChannelHandlerContext;
    .locals 3

    .prologue
    .line 166
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v1

    .line 167
    .local v1, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 168
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    invoke-direct {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelUnregistered()V

    .line 178
    :goto_0
    return-object p0

    .line 171
    :cond_0
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$3;

    invoke-direct {v2, p0, v1}, Lio/netty/channel/AbstractChannelHandlerContext$3;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;)V

    invoke-interface {v0, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public fireChannelWritabilityChanged()Lio/netty/channel/ChannelHandlerContext;
    .locals 4

    .prologue
    .line 370
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v1

    .line 371
    .local v1, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 372
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 373
    invoke-direct {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelWritabilityChanged()V

    .line 386
    :goto_0
    return-object p0

    .line 375
    :cond_0
    iget-object v2, v1, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelWritableStateChangedTask:Ljava/lang/Runnable;

    .line 376
    .local v2, "task":Ljava/lang/Runnable;
    if-nez v2, :cond_1

    .line 377
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$10;

    .end local v2    # "task":Ljava/lang/Runnable;
    invoke-direct {v2, p0, v1}, Lio/netty/channel/AbstractChannelHandlerContext$10;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;)V

    .restart local v2    # "task":Ljava/lang/Runnable;
    iput-object v2, v1, Lio/netty/channel/AbstractChannelHandlerContext;->invokeChannelWritableStateChangedTask:Ljava/lang/Runnable;

    .line 384
    :cond_1
    invoke-interface {v0, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelHandlerContext;
    .locals 5
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 241
    if-nez p1, :cond_0

    .line 242
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "cause"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 245
    :cond_0
    iget-object v1, p0, Lio/netty/channel/AbstractChannelHandlerContext;->next:Lio/netty/channel/AbstractChannelHandlerContext;

    .line 247
    .local v1, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 248
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 249
    invoke-direct {v1, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeExceptionCaught(Ljava/lang/Throwable;)V

    .line 266
    :cond_1
    :goto_0
    return-object p0

    .line 252
    :cond_2
    :try_start_0
    new-instance v3, Lio/netty/channel/AbstractChannelHandlerContext$6;

    invoke-direct {v3, p0, v1, p1}, Lio/netty/channel/AbstractChannelHandlerContext$6;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Throwable;)V

    invoke-interface {v0, v3}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v2

    .line 259
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lio/netty/channel/DefaultChannelPipeline;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v3}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 260
    sget-object v3, Lio/netty/channel/DefaultChannelPipeline;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v4, "Failed to submit an exceptionCaught() event."

    invoke-interface {v3, v4, v2}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    sget-object v3, Lio/netty/channel/DefaultChannelPipeline;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v4, "The exceptionCaught() event that was failed to submit was:"

    invoke-interface {v3, v4, p1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;
    .locals 4
    .param p1, "event"    # Ljava/lang/Object;

    .prologue
    .line 283
    if-nez p1, :cond_0

    .line 284
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "event"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 287
    :cond_0
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextInbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v1

    .line 288
    .local v1, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 289
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    invoke-direct {v1, p1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeUserEventTriggered(Ljava/lang/Object;)V

    .line 299
    :goto_0
    return-object p0

    .line 292
    :cond_1
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$7;

    invoke-direct {v2, p0, v1, p1}, Lio/netty/channel/AbstractChannelHandlerContext$7;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public flush()Lio/netty/channel/ChannelHandlerContext;
    .locals 5

    .prologue
    .line 666
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v1

    .line 667
    .local v1, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 668
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 669
    invoke-direct {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeFlush()V

    .line 683
    :goto_0
    return-object p0

    .line 671
    :cond_0
    iget-object v2, v1, Lio/netty/channel/AbstractChannelHandlerContext;->invokeFlushTask:Ljava/lang/Runnable;

    .line 672
    .local v2, "task":Ljava/lang/Runnable;
    if-nez v2, :cond_1

    .line 673
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$17;

    .end local v2    # "task":Ljava/lang/Runnable;
    invoke-direct {v2, p0, v1}, Lio/netty/channel/AbstractChannelHandlerContext$17;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;)V

    .restart local v2    # "task":Ljava/lang/Runnable;
    iput-object v2, v1, Lio/netty/channel/AbstractChannelHandlerContext;->invokeFlushTask:Ljava/lang/Runnable;

    .line 680
    :cond_1
    iget-object v3, p0, Lio/netty/channel/AbstractChannelHandlerContext;->channel:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v3}, Lio/netty/channel/AbstractChannel;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lio/netty/channel/AbstractChannelHandlerContext;->safeExecute(Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Runnable;Lio/netty/channel/ChannelPromise;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public isRemoved()Z
    .locals 1

    .prologue
    .line 879
    iget-boolean v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->removed:Z

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->name:Ljava/lang/String;

    return-object v0
.end method

.method public newFailedFuture(Ljava/lang/Throwable;)Lio/netty/channel/ChannelFuture;
    .locals 3
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 812
    new-instance v0, Lio/netty/channel/FailedChannelFuture;

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lio/netty/channel/FailedChannelFuture;-><init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public newProgressivePromise()Lio/netty/channel/ChannelProgressivePromise;
    .locals 3

    .prologue
    .line 798
    new-instance v0, Lio/netty/channel/DefaultChannelProgressivePromise;

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/netty/channel/DefaultChannelProgressivePromise;-><init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;)V

    return-object v0
.end method

.method public newPromise()Lio/netty/channel/ChannelPromise;
    .locals 3

    .prologue
    .line 793
    new-instance v0, Lio/netty/channel/DefaultChannelPromise;

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/netty/channel/DefaultChannelPromise;-><init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;)V

    return-object v0
.end method

.method public newSucceededFuture()Lio/netty/channel/ChannelFuture;
    .locals 3

    .prologue
    .line 803
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->succeededFuture:Lio/netty/channel/ChannelFuture;

    .line 804
    .local v0, "succeededFuture":Lio/netty/channel/ChannelFuture;
    if-nez v0, :cond_0

    .line 805
    new-instance v0, Lio/netty/channel/SucceededChannelFuture;

    .end local v0    # "succeededFuture":Lio/netty/channel/ChannelFuture;
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/netty/channel/SucceededChannelFuture;-><init>(Lio/netty/channel/Channel;Lio/netty/util/concurrent/EventExecutor;)V

    .restart local v0    # "succeededFuture":Lio/netty/channel/ChannelFuture;
    iput-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->succeededFuture:Lio/netty/channel/ChannelFuture;

    .line 807
    :cond_0
    return-object v0
.end method

.method public pipeline()Lio/netty/channel/ChannelPipeline;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->pipeline:Lio/netty/channel/DefaultChannelPipeline;

    return-object v0
.end method

.method public read()Lio/netty/channel/ChannelHandlerContext;
    .locals 4

    .prologue
    .line 607
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->findContextOutbound()Lio/netty/channel/AbstractChannelHandlerContext;

    move-result-object v1

    .line 608
    .local v1, "next":Lio/netty/channel/AbstractChannelHandlerContext;
    invoke-virtual {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 609
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 610
    invoke-direct {v1}, Lio/netty/channel/AbstractChannelHandlerContext;->invokeRead()V

    .line 624
    :goto_0
    return-object p0

    .line 612
    :cond_0
    iget-object v2, v1, Lio/netty/channel/AbstractChannelHandlerContext;->invokeReadTask:Ljava/lang/Runnable;

    .line 613
    .local v2, "task":Ljava/lang/Runnable;
    if-nez v2, :cond_1

    .line 614
    new-instance v2, Lio/netty/channel/AbstractChannelHandlerContext$16;

    .end local v2    # "task":Ljava/lang/Runnable;
    invoke-direct {v2, p0, v1}, Lio/netty/channel/AbstractChannelHandlerContext$16;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;Lio/netty/channel/AbstractChannelHandlerContext;)V

    .restart local v2    # "task":Ljava/lang/Runnable;
    iput-object v2, v1, Lio/netty/channel/AbstractChannelHandlerContext;->invokeReadTask:Ljava/lang/Runnable;

    .line 621
    :cond_1
    invoke-interface {v0, v2}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method setRemoved()V
    .locals 1

    .prologue
    .line 874
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->removed:Z

    .line 875
    return-void
.end method

.method teardown()V
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->executor()Lio/netty/util/concurrent/EventExecutor;

    move-result-object v0

    .line 88
    .local v0, "executor":Lio/netty/util/concurrent/EventExecutor;
    invoke-interface {v0}, Lio/netty/util/concurrent/EventExecutor;->inEventLoop()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    invoke-direct {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->teardown0()V

    .line 98
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v1, Lio/netty/channel/AbstractChannelHandlerContext$1;

    invoke-direct {v1, p0}, Lio/netty/channel/AbstractChannelHandlerContext$1;-><init>(Lio/netty/channel/AbstractChannelHandlerContext;)V

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/EventExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public voidPromise()Lio/netty/channel/ChannelPromise;
    .locals 1

    .prologue
    .line 870
    iget-object v0, p0, Lio/netty/channel/AbstractChannelHandlerContext;->channel:Lio/netty/channel/AbstractChannel;

    invoke-virtual {v0}, Lio/netty/channel/AbstractChannel;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 637
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .prologue
    .line 642
    if-nez p1, :cond_0

    .line 643
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "msg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->validatePromise(Lio/netty/channel/ChannelPromise;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 647
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 653
    :goto_0
    return-object p2

    .line 651
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->write(Ljava/lang/Object;ZLio/netty/channel/ChannelPromise;)V

    goto :goto_0
.end method

.method public writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;

    .prologue
    .line 741
    invoke-virtual {p0}, Lio/netty/channel/AbstractChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/channel/AbstractChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    return-object v0
.end method

.method public writeAndFlush(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    .locals 2
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;

    .prologue
    const/4 v1, 0x1

    .line 696
    if-nez p1, :cond_0

    .line 697
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "msg"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_0
    invoke-direct {p0, p2, v1}, Lio/netty/channel/AbstractChannelHandlerContext;->validatePromise(Lio/netty/channel/ChannelPromise;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 701
    invoke-static {p1}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 708
    :goto_0
    return-object p2

    .line 706
    :cond_1
    invoke-direct {p0, p1, v1, p2}, Lio/netty/channel/AbstractChannelHandlerContext;->write(Ljava/lang/Object;ZLio/netty/channel/ChannelPromise;)V

    goto :goto_0
.end method
