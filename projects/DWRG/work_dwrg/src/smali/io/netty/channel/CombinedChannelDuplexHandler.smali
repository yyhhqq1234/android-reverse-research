.class public Lio/netty/channel/CombinedChannelDuplexHandler;
.super Lio/netty/channel/ChannelDuplexHandler;
.source "CombinedChannelDuplexHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I::",
        "Lio/netty/channel/ChannelInboundHandler;",
        "O::",
        "Lio/netty/channel/ChannelOutboundHandler;",
        ">",
        "Lio/netty/channel/ChannelDuplexHandler;"
    }
.end annotation


# instance fields
.field private inboundHandler:Lio/netty/channel/ChannelInboundHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
        }
    .end annotation
.end field

.field private outboundHandler:Lio/netty/channel/ChannelOutboundHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 35
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/netty/channel/ChannelInboundHandler;Lio/netty/channel/ChannelOutboundHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    .local p1, "inboundHandler":Lio/netty/channel/ChannelInboundHandler;, "TI;"
    .local p2, "outboundHandler":Lio/netty/channel/ChannelOutboundHandler;, "TO;"
    invoke-direct {p0}, Lio/netty/channel/ChannelDuplexHandler;-><init>()V

    .line 41
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/CombinedChannelDuplexHandler;->init(Lio/netty/channel/ChannelInboundHandler;Lio/netty/channel/ChannelOutboundHandler;)V

    .line 42
    return-void
.end method

.method private validate(Lio/netty/channel/ChannelInboundHandler;Lio/netty/channel/ChannelOutboundHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    .local p1, "inboundHandler":Lio/netty/channel/ChannelInboundHandler;, "TI;"
    .local p2, "outboundHandler":Lio/netty/channel/ChannelOutboundHandler;, "TO;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init() can not be invoked if "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lio/netty/channel/CombinedChannelDuplexHandler;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 62
    const-string v2, " was constructed with non-default constructor."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    if-nez p1, :cond_1

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "inboundHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    if-nez p2, :cond_2

    .line 69
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "outboundHandler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_2
    instance-of v0, p1, Lio/netty/channel/ChannelOutboundHandler;

    if-eqz v0, :cond_3

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "inboundHandler must not implement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    const-class v2, Lio/netty/channel/ChannelOutboundHandler;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to get combined."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_3
    instance-of v0, p2, Lio/netty/channel/ChannelInboundHandler;

    if-eqz v0, :cond_4

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "outboundHandler must not implement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    const-class v2, Lio/netty/channel/ChannelInboundHandler;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to get combined."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_4
    return-void
.end method


# virtual methods
.method public bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v0, p1, p2, p3}, Lio/netty/channel/ChannelOutboundHandler;->bind(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    .line 160
    return-void
.end method

.method public channelActive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelInboundHandler;->channelActive(Lio/netty/channel/ChannelHandlerContext;)V

    .line 128
    return-void
.end method

.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelInboundHandler;->channelInactive(Lio/netty/channel/ChannelHandlerContext;)V

    .line 133
    return-void
.end method

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
    .line 147
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v0, p1, p2}, Lio/netty/channel/ChannelInboundHandler;->channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelInboundHandler;->channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V

    .line 153
    return-void
.end method

.method public channelRegistered(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 117
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelInboundHandler;->channelRegistered(Lio/netty/channel/ChannelHandlerContext;)V

    .line 118
    return-void
.end method

.method public channelUnregistered(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelInboundHandler;->channelUnregistered(Lio/netty/channel/ChannelHandlerContext;)V

    .line 123
    return-void
.end method

.method public channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelInboundHandler;->channelWritabilityChanged(Lio/netty/channel/ChannelHandlerContext;)V

    .line 203
    return-void
.end method

.method public close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 177
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v0, p1, p2}, Lio/netty/channel/ChannelOutboundHandler;->close(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    .line 178
    return-void
.end method

.method public connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p3, "localAddress"    # Ljava/net/SocketAddress;
    .param p4, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v0, p1, p2, p3, p4}, Lio/netty/channel/ChannelOutboundHandler;->connect(Lio/netty/channel/ChannelHandlerContext;Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V

    .line 168
    return-void
.end method

.method public deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v0, p1, p2}, Lio/netty/channel/ChannelOutboundHandler;->deregister(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    .line 183
    return-void
.end method

.method public disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v0, p1, p2}, Lio/netty/channel/ChannelOutboundHandler;->disconnect(Lio/netty/channel/ChannelHandlerContext;Lio/netty/channel/ChannelPromise;)V

    .line 173
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
    .line 137
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v0, p1, p2}, Lio/netty/channel/ChannelInboundHandler;->exceptionCaught(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    .line 138
    return-void
.end method

.method public flush(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelOutboundHandler;->flush(Lio/netty/channel/ChannelHandlerContext;)V

    .line 198
    return-void
.end method

.method public handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init() must be invoked before being added to a "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lio/netty/channel/ChannelPipeline;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 96
    const-string v2, " if "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lio/netty/channel/CombinedChannelDuplexHandler;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 97
    const-string v2, " was constructed with the default constructor."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelInboundHandler;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelOutboundHandler;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 104
    return-void

    .line 101
    :catchall_0
    move-exception v0

    .line 102
    iget-object v1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v1, p1}, Lio/netty/channel/ChannelOutboundHandler;->handlerAdded(Lio/netty/channel/ChannelHandlerContext;)V

    .line 103
    throw v0
.end method

.method public handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 109
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    :try_start_0
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelInboundHandler;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelOutboundHandler;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V

    .line 113
    return-void

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    iget-object v1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v1, p1}, Lio/netty/channel/ChannelOutboundHandler;->handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V

    .line 112
    throw v0
.end method

.method protected final inboundHandler()Lio/netty/channel/ChannelInboundHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    return-object v0
.end method

.method protected final init(Lio/netty/channel/ChannelInboundHandler;Lio/netty/channel/ChannelOutboundHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;TO;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    .local p1, "inboundHandler":Lio/netty/channel/ChannelInboundHandler;, "TI;"
    .local p2, "outboundHandler":Lio/netty/channel/ChannelOutboundHandler;, "TO;"
    invoke-direct {p0, p1, p2}, Lio/netty/channel/CombinedChannelDuplexHandler;->validate(Lio/netty/channel/ChannelInboundHandler;Lio/netty/channel/ChannelOutboundHandler;)V

    .line 54
    iput-object p1, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    .line 55
    iput-object p2, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    .line 56
    return-void
.end method

.method protected final outboundHandler()Lio/netty/channel/ChannelOutboundHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    return-object v0
.end method

.method public read(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v0, p1}, Lio/netty/channel/ChannelOutboundHandler;->read(Lio/netty/channel/ChannelHandlerContext;)V

    .line 188
    return-void
.end method

.method public userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "evt"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->inboundHandler:Lio/netty/channel/ChannelInboundHandler;

    invoke-interface {v0, p1, p2}, Lio/netty/channel/ChannelInboundHandler;->userEventTriggered(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V

    .line 143
    return-void
.end method

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 1
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lio/netty/channel/CombinedChannelDuplexHandler;, "Lio/netty/channel/CombinedChannelDuplexHandler<TI;TO;>;"
    iget-object v0, p0, Lio/netty/channel/CombinedChannelDuplexHandler;->outboundHandler:Lio/netty/channel/ChannelOutboundHandler;

    invoke-interface {v0, p1, p2, p3}, Lio/netty/channel/ChannelOutboundHandler;->write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V

    .line 193
    return-void
.end method
