.class final Lio/netty/channel/DefaultChannelHandlerContext;
.super Lio/netty/channel/AbstractChannelHandlerContext;
.source "DefaultChannelHandlerContext.java"


# instance fields
.field private final handler:Lio/netty/channel/ChannelHandler;


# direct methods
.method constructor <init>(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/util/concurrent/EventExecutorGroup;Ljava/lang/String;Lio/netty/channel/ChannelHandler;)V
    .locals 6
    .param p1, "pipeline"    # Lio/netty/channel/DefaultChannelPipeline;
    .param p2, "group"    # Lio/netty/util/concurrent/EventExecutorGroup;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "handler"    # Lio/netty/channel/ChannelHandler;

    .prologue
    .line 26
    invoke-static {p4}, Lio/netty/channel/DefaultChannelHandlerContext;->isInbound(Lio/netty/channel/ChannelHandler;)Z

    move-result v4

    invoke-static {p4}, Lio/netty/channel/DefaultChannelHandlerContext;->isOutbound(Lio/netty/channel/ChannelHandler;)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lio/netty/channel/AbstractChannelHandlerContext;-><init>(Lio/netty/channel/DefaultChannelPipeline;Lio/netty/util/concurrent/EventExecutorGroup;Ljava/lang/String;ZZ)V

    .line 27
    if-nez p4, :cond_0

    .line 28
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    iput-object p4, p0, Lio/netty/channel/DefaultChannelHandlerContext;->handler:Lio/netty/channel/ChannelHandler;

    .line 31
    return-void
.end method

.method private static isInbound(Lio/netty/channel/ChannelHandler;)Z
    .locals 1
    .param p0, "handler"    # Lio/netty/channel/ChannelHandler;

    .prologue
    .line 39
    instance-of v0, p0, Lio/netty/channel/ChannelInboundHandler;

    return v0
.end method

.method private static isOutbound(Lio/netty/channel/ChannelHandler;)Z
    .locals 1
    .param p0, "handler"    # Lio/netty/channel/ChannelHandler;

    .prologue
    .line 43
    instance-of v0, p0, Lio/netty/channel/ChannelOutboundHandler;

    return v0
.end method


# virtual methods
.method public handler()Lio/netty/channel/ChannelHandler;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lio/netty/channel/DefaultChannelHandlerContext;->handler:Lio/netty/channel/ChannelHandler;

    return-object v0
.end method
