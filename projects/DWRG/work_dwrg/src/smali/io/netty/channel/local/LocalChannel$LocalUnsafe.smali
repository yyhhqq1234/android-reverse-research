.class Lio/netty/channel/local/LocalChannel$LocalUnsafe;
.super Lio/netty/channel/AbstractChannel$AbstractUnsafe;
.source "LocalChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/local/LocalChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalUnsafe"
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/channel/local/LocalChannel;


# direct methods
.method private constructor <init>(Lio/netty/channel/local/LocalChannel;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lio/netty/channel/local/LocalChannel$LocalUnsafe;->this$0:Lio/netty/channel/local/LocalChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/AbstractChannel$AbstractUnsafe;-><init>(Lio/netty/channel/AbstractChannel;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/channel/local/LocalChannel;Lio/netty/channel/local/LocalChannel$LocalUnsafe;)V
    .locals 0

    .prologue
    .line 332
    invoke-direct {p0, p1}, Lio/netty/channel/local/LocalChannel$LocalUnsafe;-><init>(Lio/netty/channel/local/LocalChannel;)V

    return-void
.end method


# virtual methods
.method public connect(Ljava/net/SocketAddress;Ljava/net/SocketAddress;Lio/netty/channel/ChannelPromise;)V
    .locals 6
    .param p1, "remoteAddress"    # Ljava/net/SocketAddress;
    .param p2, "localAddress"    # Ljava/net/SocketAddress;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;

    .prologue
    .line 337
    invoke-interface {p3}, Lio/netty/channel/ChannelPromise;->setUncancellable()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, p3}, Lio/netty/channel/local/LocalChannel$LocalUnsafe;->ensureOpen(Lio/netty/channel/ChannelPromise;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v4, p0, Lio/netty/channel/local/LocalChannel$LocalUnsafe;->this$0:Lio/netty/channel/local/LocalChannel;

    invoke-static {v4}, Lio/netty/channel/local/LocalChannel;->access$4(Lio/netty/channel/local/LocalChannel;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 342
    new-instance v1, Ljava/nio/channels/AlreadyConnectedException;

    invoke-direct {v1}, Ljava/nio/channels/AlreadyConnectedException;-><init>()V

    .line 343
    .local v1, "cause":Ljava/lang/Exception;
    invoke-virtual {p0, p3, v1}, Lio/netty/channel/local/LocalChannel$LocalUnsafe;->safeSetFailure(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V

    .line 344
    iget-object v4, p0, Lio/netty/channel/local/LocalChannel$LocalUnsafe;->this$0:Lio/netty/channel/local/LocalChannel;

    invoke-virtual {v4}, Lio/netty/channel/local/LocalChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v4

    invoke-interface {v4, v1}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    goto :goto_0

    .line 348
    .end local v1    # "cause":Ljava/lang/Exception;
    :cond_2
    iget-object v4, p0, Lio/netty/channel/local/LocalChannel$LocalUnsafe;->this$0:Lio/netty/channel/local/LocalChannel;

    invoke-static {v4}, Lio/netty/channel/local/LocalChannel;->access$5(Lio/netty/channel/local/LocalChannel;)Lio/netty/channel/ChannelPromise;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 349
    new-instance v4, Ljava/nio/channels/ConnectionPendingException;

    invoke-direct {v4}, Ljava/nio/channels/ConnectionPendingException;-><init>()V

    throw v4

    .line 352
    :cond_3
    iget-object v4, p0, Lio/netty/channel/local/LocalChannel$LocalUnsafe;->this$0:Lio/netty/channel/local/LocalChannel;

    invoke-static {v4, p3}, Lio/netty/channel/local/LocalChannel;->access$6(Lio/netty/channel/local/LocalChannel;Lio/netty/channel/ChannelPromise;)V

    .line 354
    iget-object v4, p0, Lio/netty/channel/local/LocalChannel$LocalUnsafe;->this$0:Lio/netty/channel/local/LocalChannel;

    invoke-static {v4}, Lio/netty/channel/local/LocalChannel;->access$4(Lio/netty/channel/local/LocalChannel;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    .line 356
    if-nez p2, :cond_4

    .line 357
    new-instance p2, Lio/netty/channel/local/LocalAddress;

    .end local p2    # "localAddress":Ljava/net/SocketAddress;
    iget-object v4, p0, Lio/netty/channel/local/LocalChannel$LocalUnsafe;->this$0:Lio/netty/channel/local/LocalChannel;

    invoke-direct {p2, v4}, Lio/netty/channel/local/LocalAddress;-><init>(Lio/netty/channel/Channel;)V

    .line 361
    .restart local p2    # "localAddress":Ljava/net/SocketAddress;
    :cond_4
    if-eqz p2, :cond_5

    .line 363
    :try_start_0
    iget-object v4, p0, Lio/netty/channel/local/LocalChannel$LocalUnsafe;->this$0:Lio/netty/channel/local/LocalChannel;

    invoke-virtual {v4, p2}, Lio/netty/channel/local/LocalChannel;->doBind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :cond_5
    invoke-static {p1}, Lio/netty/channel/local/LocalChannelRegistry;->get(Ljava/net/SocketAddress;)Lio/netty/channel/Channel;

    move-result-object v0

    .line 372
    .local v0, "boundChannel":Lio/netty/channel/Channel;
    instance-of v4, v0, Lio/netty/channel/local/LocalServerChannel;

    if-nez v4, :cond_6

    .line 373
    new-instance v1, Lio/netty/channel/ChannelException;

    const-string v4, "connection refused"

    invoke-direct {v1, v4}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/String;)V

    .line 374
    .restart local v1    # "cause":Ljava/lang/Exception;
    invoke-virtual {p0, p3, v1}, Lio/netty/channel/local/LocalChannel$LocalUnsafe;->safeSetFailure(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V

    .line 375
    invoke-virtual {p0}, Lio/netty/channel/local/LocalChannel$LocalUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/netty/channel/local/LocalChannel$LocalUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .line 364
    .end local v0    # "boundChannel":Lio/netty/channel/Channel;
    .end local v1    # "cause":Ljava/lang/Exception;
    :catch_0
    move-exception v3

    .line 365
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {p0, p3, v3}, Lio/netty/channel/local/LocalChannel$LocalUnsafe;->safeSetFailure(Lio/netty/channel/ChannelPromise;Ljava/lang/Throwable;)V

    .line 366
    invoke-virtual {p0}, Lio/netty/channel/local/LocalChannel$LocalUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v4

    invoke-virtual {p0, v4}, Lio/netty/channel/local/LocalChannel$LocalUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0

    .end local v3    # "t":Ljava/lang/Throwable;
    .restart local v0    # "boundChannel":Lio/netty/channel/Channel;
    :cond_6
    move-object v2, v0

    .line 379
    check-cast v2, Lio/netty/channel/local/LocalServerChannel;

    .line 380
    .local v2, "serverChannel":Lio/netty/channel/local/LocalServerChannel;
    iget-object v4, p0, Lio/netty/channel/local/LocalChannel$LocalUnsafe;->this$0:Lio/netty/channel/local/LocalChannel;

    iget-object v5, p0, Lio/netty/channel/local/LocalChannel$LocalUnsafe;->this$0:Lio/netty/channel/local/LocalChannel;

    invoke-virtual {v2, v5}, Lio/netty/channel/local/LocalServerChannel;->serve(Lio/netty/channel/local/LocalChannel;)Lio/netty/channel/local/LocalChannel;

    move-result-object v5

    invoke-static {v4, v5}, Lio/netty/channel/local/LocalChannel;->access$7(Lio/netty/channel/local/LocalChannel;Lio/netty/channel/local/LocalChannel;)V

    goto :goto_0
.end method
