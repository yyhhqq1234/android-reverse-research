.class public Lio/netty/channel/socket/DefaultSocketChannelConfig;
.super Lio/netty/channel/DefaultChannelConfig;
.source "DefaultSocketChannelConfig.java"

# interfaces
.implements Lio/netty/channel/socket/SocketChannelConfig;


# instance fields
.field private volatile allowHalfClosure:Z

.field protected final javaSocket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Lio/netty/channel/socket/SocketChannel;Ljava/net/Socket;)V
    .locals 2
    .param p1, "channel"    # Lio/netty/channel/socket/SocketChannel;
    .param p2, "javaSocket"    # Ljava/net/Socket;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lio/netty/channel/DefaultChannelConfig;-><init>(Lio/netty/channel/Channel;)V

    .line 46
    if-nez p2, :cond_0

    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "javaSocket"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-object p2, p0, Lio/netty/channel/socket/DefaultSocketChannelConfig;->javaSocket:Ljava/net/Socket;

    .line 52
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->canEnableTcpNoDelayByDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setTcpNoDelay(Z)Lio/netty/channel/socket/SocketChannelConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_1
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_RCVBUF:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->getReceiveBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 97
    :goto_0
    return-object v0

    .line 75
    :cond_0
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_SNDBUF:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_1

    .line 76
    invoke-virtual {p0}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->getSendBufferSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_1
    sget-object v0, Lio/netty/channel/ChannelOption;->TCP_NODELAY:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_2

    .line 79
    invoke-virtual {p0}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->isTcpNoDelay()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_2
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_KEEPALIVE:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_3

    .line 82
    invoke-virtual {p0}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->isKeepAlive()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 84
    :cond_3
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_REUSEADDR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_4

    .line 85
    invoke-virtual {p0}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->isReuseAddress()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_4
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_LINGER:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_5

    .line 88
    invoke-virtual {p0}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->getSoLinger()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_5
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_TOS:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_6

    .line 91
    invoke-virtual {p0}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->getTrafficClass()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_6
    sget-object v0, Lio/netty/channel/ChannelOption;->ALLOW_HALF_CLOSURE:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_7

    .line 94
    invoke-virtual {p0}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->isAllowHalfClosure()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_7
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getOptions()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lio/netty/channel/ChannelOption",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-super {p0}, Lio/netty/channel/DefaultChannelConfig;->getOptions()Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [Lio/netty/channel/ChannelOption;

    const/4 v2, 0x0

    sget-object v3, Lio/netty/channel/ChannelOption;->SO_RCVBUF:Lio/netty/channel/ChannelOption;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lio/netty/channel/ChannelOption;->SO_SNDBUF:Lio/netty/channel/ChannelOption;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lio/netty/channel/ChannelOption;->TCP_NODELAY:Lio/netty/channel/ChannelOption;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lio/netty/channel/ChannelOption;->SO_KEEPALIVE:Lio/netty/channel/ChannelOption;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lio/netty/channel/ChannelOption;->SO_REUSEADDR:Lio/netty/channel/ChannelOption;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lio/netty/channel/ChannelOption;->SO_LINGER:Lio/netty/channel/ChannelOption;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lio/netty/channel/ChannelOption;->IP_TOS:Lio/netty/channel/ChannelOption;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    sget-object v3, Lio/netty/channel/ChannelOption;->ALLOW_HALF_CLOSURE:Lio/netty/channel/ChannelOption;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->getOptions(Ljava/util/Map;[Lio/netty/channel/ChannelOption;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getReceiveBufferSize()I
    .locals 2

    .prologue
    .line 130
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/socket/DefaultSocketChannelConfig;->javaSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getReceiveBufferSize()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSendBufferSize()I
    .locals 2

    .prologue
    .line 139
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/socket/DefaultSocketChannelConfig;->javaSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getSendBufferSize()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSoLinger()I
    .locals 2

    .prologue
    .line 148
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/socket/DefaultSocketChannelConfig;->javaSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getSoLinger()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getTrafficClass()I
    .locals 2

    .prologue
    .line 157
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/socket/DefaultSocketChannelConfig;->javaSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getTrafficClass()I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAllowHalfClosure()Z
    .locals 1

    .prologue
    .line 273
    iget-boolean v0, p0, Lio/netty/channel/socket/DefaultSocketChannelConfig;->allowHalfClosure:Z

    return v0
.end method

.method public isKeepAlive()Z
    .locals 2

    .prologue
    .line 166
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/socket/DefaultSocketChannelConfig;->javaSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getKeepAlive()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isReuseAddress()Z
    .locals 2

    .prologue
    .line 175
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/socket/DefaultSocketChannelConfig;->javaSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getReuseAddress()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isTcpNoDelay()Z
    .locals 2

    .prologue
    .line 184
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/socket/DefaultSocketChannelConfig;->javaSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getTcpNoDelay()Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 1
    .param p1, "x0"    # Lio/netty/buffer/ByteBufAllocator;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;

    .prologue
    .line 302
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setAllocator(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/channel/ChannelConfig;

    .line 303
    return-object p0
.end method

.method public setAllowHalfClosure(Z)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0
    .param p1, "allowHalfClosure"    # Z

    .prologue
    .line 278
    iput-boolean p1, p0, Lio/netty/channel/socket/DefaultSocketChannelConfig;->allowHalfClosure:Z

    .line 279
    return-object p0
.end method

.method public bridge synthetic setAutoClose(Z)Lio/netty/channel/ChannelConfig;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setAutoClose(Z)Lio/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public setAutoClose(Z)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0
    .param p1, "autoClose"    # Z

    .prologue
    .line 320
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setAutoClose(Z)Lio/netty/channel/ChannelConfig;

    .line 321
    return-object p0
.end method

.method public bridge synthetic setAutoRead(Z)Lio/netty/channel/ChannelConfig;
    .locals 1
    .param p1, "x0"    # Z

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setAutoRead(Z)Lio/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public setAutoRead(Z)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0
    .param p1, "autoRead"    # Z

    .prologue
    .line 314
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setAutoRead(Z)Lio/netty/channel/ChannelConfig;

    .line 315
    return-object p0
.end method

.method public bridge synthetic setConnectTimeoutMillis(I)Lio/netty/channel/ChannelConfig;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public setConnectTimeoutMillis(I)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0
    .param p1, "connectTimeoutMillis"    # I

    .prologue
    .line 284
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setConnectTimeoutMillis(I)Lio/netty/channel/ChannelConfig;

    .line 285
    return-object p0
.end method

.method public setKeepAlive(Z)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 2
    .param p1, "keepAlive"    # Z

    .prologue
    .line 193
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/socket/DefaultSocketChannelConfig;->javaSocket:Ljava/net/Socket;

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setKeepAlive(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    return-object p0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setMaxMessagesPerRead(I)Lio/netty/channel/ChannelConfig;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public setMaxMessagesPerRead(I)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0
    .param p1, "maxMessagesPerRead"    # I

    .prologue
    .line 290
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setMaxMessagesPerRead(I)Lio/netty/channel/ChannelConfig;

    .line 291
    return-object p0
.end method

.method public bridge synthetic setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/ChannelConfig;
    .locals 1
    .param p1, "x0"    # Lio/netty/channel/MessageSizeEstimator;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0
    .param p1, "estimator"    # Lio/netty/channel/MessageSizeEstimator;

    .prologue
    .line 338
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setMessageSizeEstimator(Lio/netty/channel/MessageSizeEstimator;)Lio/netty/channel/ChannelConfig;

    .line 339
    return-object p0
.end method

.method public setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/channel/ChannelOption",
            "<TT;>;TT;)Z"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "option":Lio/netty/channel/ChannelOption;, "Lio/netty/channel/ChannelOption<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->validate(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)V

    .line 104
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_RCVBUF:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_0

    .line 105
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setReceiveBufferSize(I)Lio/netty/channel/socket/SocketChannelConfig;

    .line 124
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 106
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_0
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_SNDBUF:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_1

    .line 107
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setSendBufferSize(I)Lio/netty/channel/socket/SocketChannelConfig;

    goto :goto_0

    .line 108
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_1
    sget-object v0, Lio/netty/channel/ChannelOption;->TCP_NODELAY:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_2

    .line 109
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setTcpNoDelay(Z)Lio/netty/channel/socket/SocketChannelConfig;

    goto :goto_0

    .line 110
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_2
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_KEEPALIVE:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_3

    .line 111
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setKeepAlive(Z)Lio/netty/channel/socket/SocketChannelConfig;

    goto :goto_0

    .line 112
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_3
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_REUSEADDR:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_4

    .line 113
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setReuseAddress(Z)Lio/netty/channel/socket/SocketChannelConfig;

    goto :goto_0

    .line 114
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_4
    sget-object v0, Lio/netty/channel/ChannelOption;->SO_LINGER:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_5

    .line 115
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setSoLinger(I)Lio/netty/channel/socket/SocketChannelConfig;

    goto :goto_0

    .line 116
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_5
    sget-object v0, Lio/netty/channel/ChannelOption;->IP_TOS:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_6

    .line 117
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setTrafficClass(I)Lio/netty/channel/socket/SocketChannelConfig;

    goto :goto_0

    .line 118
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_6
    sget-object v0, Lio/netty/channel/ChannelOption;->ALLOW_HALF_CLOSURE:Lio/netty/channel/ChannelOption;

    if-ne p1, v0, :cond_7

    .line 119
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setAllowHalfClosure(Z)Lio/netty/channel/socket/SocketChannelConfig;

    goto :goto_0

    .line 121
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :cond_7
    invoke-super {p0, p1, p2}, Lio/netty/channel/DefaultChannelConfig;->setOption(Lio/netty/channel/ChannelOption;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1
.end method

.method public setPerformancePreferences(III)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 1
    .param p1, "connectionTime"    # I
    .param p2, "latency"    # I
    .param p3, "bandwidth"    # I

    .prologue
    .line 203
    iget-object v0, p0, Lio/netty/channel/socket/DefaultSocketChannelConfig;->javaSocket:Ljava/net/Socket;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/Socket;->setPerformancePreferences(III)V

    .line 204
    return-object p0
.end method

.method public setReceiveBufferSize(I)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 2
    .param p1, "receiveBufferSize"    # I

    .prologue
    .line 210
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/socket/DefaultSocketChannelConfig;->javaSocket:Ljava/net/Socket;

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    return-object p0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;
    .locals 1
    .param p1, "x0"    # Lio/netty/channel/RecvByteBufAllocator;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0
    .param p1, "allocator"    # Lio/netty/channel/RecvByteBufAllocator;

    .prologue
    .line 308
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setRecvByteBufAllocator(Lio/netty/channel/RecvByteBufAllocator;)Lio/netty/channel/ChannelConfig;

    .line 309
    return-object p0
.end method

.method public setReuseAddress(Z)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 2
    .param p1, "reuseAddress"    # Z

    .prologue
    .line 220
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/socket/DefaultSocketChannelConfig;->javaSocket:Ljava/net/Socket;

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setReuseAddress(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    return-object p0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSendBufferSize(I)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 2
    .param p1, "sendBufferSize"    # I

    .prologue
    .line 230
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/socket/DefaultSocketChannelConfig;->javaSocket:Ljava/net/Socket;

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setSendBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    return-object p0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSoLinger(I)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 4
    .param p1, "soLinger"    # I

    .prologue
    .line 240
    if-gez p1, :cond_0

    .line 241
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/socket/DefaultSocketChannelConfig;->javaSocket:Ljava/net/Socket;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 248
    :goto_0
    return-object p0

    .line 243
    :cond_0
    iget-object v1, p0, Lio/netty/channel/socket/DefaultSocketChannelConfig;->javaSocket:Ljava/net/Socket;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Ljava/net/Socket;->setSoLinger(ZI)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTcpNoDelay(Z)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 2
    .param p1, "tcpNoDelay"    # Z

    .prologue
    .line 254
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/socket/DefaultSocketChannelConfig;->javaSocket:Ljava/net/Socket;

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setTcpNoDelay(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    return-object p0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTrafficClass(I)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 2
    .param p1, "trafficClass"    # I

    .prologue
    .line 264
    :try_start_0
    iget-object v1, p0, Lio/netty/channel/socket/DefaultSocketChannelConfig;->javaSocket:Ljava/net/Socket;

    invoke-virtual {v1, p1}, Ljava/net/Socket;->setTrafficClass(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    return-object p0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Lio/netty/channel/ChannelException;

    invoke-direct {v1, v0}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic setWriteBufferHighWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public setWriteBufferHighWaterMark(I)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0
    .param p1, "writeBufferHighWaterMark"    # I

    .prologue
    .line 326
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setWriteBufferHighWaterMark(I)Lio/netty/channel/ChannelConfig;

    .line 327
    return-object p0
.end method

.method public bridge synthetic setWriteBufferLowWaterMark(I)Lio/netty/channel/ChannelConfig;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public setWriteBufferLowWaterMark(I)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0
    .param p1, "writeBufferLowWaterMark"    # I

    .prologue
    .line 332
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setWriteBufferLowWaterMark(I)Lio/netty/channel/ChannelConfig;

    .line 333
    return-object p0
.end method

.method public bridge synthetic setWriteSpinCount(I)Lio/netty/channel/ChannelConfig;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lio/netty/channel/socket/DefaultSocketChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/socket/SocketChannelConfig;

    move-result-object v0

    return-object v0
.end method

.method public setWriteSpinCount(I)Lio/netty/channel/socket/SocketChannelConfig;
    .locals 0
    .param p1, "writeSpinCount"    # I

    .prologue
    .line 296
    invoke-super {p0, p1}, Lio/netty/channel/DefaultChannelConfig;->setWriteSpinCount(I)Lio/netty/channel/ChannelConfig;

    .line 297
    return-object p0
.end method
