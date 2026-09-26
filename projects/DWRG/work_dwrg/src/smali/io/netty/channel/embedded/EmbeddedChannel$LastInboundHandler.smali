.class final Lio/netty/channel/embedded/EmbeddedChannel$LastInboundHandler;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "EmbeddedChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/embedded/EmbeddedChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LastInboundHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/embedded/EmbeddedChannel;


# direct methods
.method private constructor <init>(Lio/netty/channel/embedded/EmbeddedChannel;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lio/netty/channel/embedded/EmbeddedChannel$LastInboundHandler;->this$0:Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/channel/embedded/EmbeddedChannel;Lio/netty/channel/embedded/EmbeddedChannel$LastInboundHandler;)V
    .locals 0

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lio/netty/channel/embedded/EmbeddedChannel$LastInboundHandler;-><init>(Lio/netty/channel/embedded/EmbeddedChannel;)V

    return-void
.end method


# virtual methods
.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 344
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel$LastInboundHandler;->this$0:Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-static {v0}, Lio/netty/channel/embedded/EmbeddedChannel;->access$0(Lio/netty/channel/embedded/EmbeddedChannel;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 345
    return-void
.end method

.method public exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Lio/netty/channel/embedded/EmbeddedChannel$LastInboundHandler;->this$0:Lio/netty/channel/embedded/EmbeddedChannel;

    invoke-static {v0, p2}, Lio/netty/channel/embedded/EmbeddedChannel;->access$1(Lio/netty/channel/embedded/EmbeddedChannel;Ljava/lang/Throwable;)V

    .line 350
    return-void
.end method
