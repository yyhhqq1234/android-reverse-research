.class final Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;
.super Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;
.source "AbstractNioByteChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/nio/AbstractNioByteChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NioByteUnsafe"
.end annotation


# instance fields
.field private allocHandle:Lio/netty/channel/RecvByteBufAllocator$Handle;

.field final synthetic this$0:Lio/netty/channel/nio/AbstractNioByteChannel;


# direct methods
.method private constructor <init>(Lio/netty/channel/nio/AbstractNioByteChannel;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;-><init>(Lio/netty/channel/nio/AbstractNioChannel;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/channel/nio/AbstractNioByteChannel;Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;-><init>(Lio/netty/channel/nio/AbstractNioByteChannel;)V

    return-void
.end method

.method private closeOnRead(Lio/netty/channel/ChannelPipeline;)V
    .locals 4
    .param p1, "pipeline"    # Lio/netty/channel/ChannelPipeline;

    .prologue
    .line 64
    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v1}, Lio/netty/channel/nio/AbstractNioByteChannel;->selectionKey()Ljava/nio/channels/SelectionKey;

    move-result-object v0

    .line 65
    .local v0, "key":Ljava/nio/channels/SelectionKey;
    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v1}, Lio/netty/channel/nio/AbstractNioByteChannel;->setInputShutdown()V

    .line 66
    iget-object v1, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v1}, Lio/netty/channel/nio/AbstractNioByteChannel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v2}, Lio/netty/channel/nio/AbstractNioByteChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v2

    sget-object v3, Lio/netty/channel/ChannelOption;->ALLOW_HALF_CLOSURE:Lio/netty/channel/ChannelOption;

    invoke-interface {v2, v3}, Lio/netty/channel/ChannelConfig;->getOption(Lio/netty/channel/ChannelOption;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->interestOps()I

    move-result v1

    iget-object v2, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    iget v2, v2, Lio/netty/channel/nio/AbstractNioByteChannel;->readInterestOp:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/channels/SelectionKey;->interestOps(I)Ljava/nio/channels/SelectionKey;

    .line 69
    sget-object v1, Lio/netty/channel/socket/ChannelInputShutdownEvent;->INSTANCE:Lio/netty/channel/socket/ChannelInputShutdownEvent;

    invoke-interface {p1, v1}, Lio/netty/channel/ChannelPipeline;->fireUserEventTriggered(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->close(Lio/netty/channel/ChannelPromise;)V

    goto :goto_0
.end method

.method private handleReadException(Lio/netty/channel/ChannelPipeline;Lio/netty/buffer/ByteBuf;Ljava/lang/Throwable;Z)V
    .locals 2
    .param p1, "pipeline"    # Lio/netty/channel/ChannelPipeline;
    .param p2, "byteBuf"    # Lio/netty/buffer/ByteBuf;
    .param p3, "cause"    # Ljava/lang/Throwable;
    .param p4, "close"    # Z

    .prologue
    .line 78
    if-eqz p2, :cond_0

    .line 79
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/netty/channel/nio/AbstractNioByteChannel;->setReadPending(Z)V

    .line 81
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 86
    :cond_0
    :goto_0
    invoke-interface {p1}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 87
    invoke-interface {p1, p3}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    .line 88
    if-nez p4, :cond_1

    instance-of v0, p3, Ljava/io/IOException;

    if-eqz v0, :cond_2

    .line 89
    :cond_1
    invoke-direct {p0, p1}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->closeOnRead(Lio/netty/channel/ChannelPipeline;)V

    .line 91
    :cond_2
    return-void

    .line 83
    :cond_3
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->release()Z

    goto :goto_0
.end method


# virtual methods
.method public read()V
    .locals 15

    .prologue
    .line 95
    iget-object v13, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v13}, Lio/netty/channel/nio/AbstractNioByteChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v4

    .line 96
    .local v4, "config":Lio/netty/channel/ChannelConfig;
    invoke-interface {v4}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v13

    if-nez v13, :cond_1

    iget-object v13, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v13}, Lio/netty/channel/nio/AbstractNioByteChannel;->isReadPending()Z

    move-result v13

    if-nez v13, :cond_1

    .line 98
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->removeReadOp()V

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v13, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v13}, Lio/netty/channel/nio/AbstractNioByteChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v8

    .line 103
    .local v8, "pipeline":Lio/netty/channel/ChannelPipeline;
    invoke-interface {v4}, Lio/netty/channel/ChannelConfig;->getAllocator()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    .line 104
    .local v1, "allocator":Lio/netty/buffer/ByteBufAllocator;
    invoke-interface {v4}, Lio/netty/channel/ChannelConfig;->getMaxMessagesPerRead()I

    move-result v6

    .line 105
    .local v6, "maxMessagesPerRead":I
    iget-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->allocHandle:Lio/netty/channel/RecvByteBufAllocator$Handle;

    .line 106
    .local v0, "allocHandle":Lio/netty/channel/RecvByteBufAllocator$Handle;
    if-nez v0, :cond_2

    .line 107
    invoke-interface {v4}, Lio/netty/channel/ChannelConfig;->getRecvByteBufAllocator()Lio/netty/channel/RecvByteBufAllocator;

    move-result-object v13

    invoke-interface {v13}, Lio/netty/channel/RecvByteBufAllocator;->newHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;

    move-result-object v0

    iput-object v0, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->allocHandle:Lio/netty/channel/RecvByteBufAllocator$Handle;

    .line 110
    :cond_2
    const/4 v2, 0x0

    .line 111
    .local v2, "byteBuf":Lio/netty/buffer/ByteBuf;
    const/4 v7, 0x0

    .line 112
    .local v7, "messages":I
    const/4 v3, 0x0

    .line 114
    .local v3, "close":Z
    const/4 v11, 0x0

    .line 115
    .local v11, "totalReadAmount":I
    const/4 v9, 0x0

    .line 117
    .local v9, "readPendingReset":Z
    :cond_3
    :try_start_0
    invoke-interface {v0, v1}, Lio/netty/channel/RecvByteBufAllocator$Handle;->allocate(Lio/netty/buffer/ByteBufAllocator;)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 118
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v12

    .line 119
    .local v12, "writable":I
    iget-object v13, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v13, v2}, Lio/netty/channel/nio/AbstractNioByteChannel;->doReadBytes(Lio/netty/buffer/ByteBuf;)I

    move-result v5

    .line 120
    .local v5, "localReadAmount":I
    if-gtz v5, :cond_7

    .line 122
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 123
    if-gez v5, :cond_6

    const/4 v3, 0x1

    .line 153
    :cond_4
    :goto_1
    invoke-interface {v8}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 154
    invoke-interface {v0, v11}, Lio/netty/channel/RecvByteBufAllocator$Handle;->record(I)V

    .line 156
    if-eqz v3, :cond_5

    .line 157
    invoke-direct {p0, v8}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->closeOnRead(Lio/netty/channel/ChannelPipeline;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    const/4 v3, 0x0

    .line 169
    :cond_5
    invoke-interface {v4}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v13

    if-nez v13, :cond_0

    iget-object v13, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v13}, Lio/netty/channel/nio/AbstractNioByteChannel;->isReadPending()Z

    move-result v13

    if-nez v13, :cond_0

    .line 170
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->removeReadOp()V

    goto :goto_0

    .line 123
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 126
    :cond_7
    if-nez v9, :cond_8

    .line 127
    const/4 v9, 0x1

    .line 128
    :try_start_1
    iget-object v13, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lio/netty/channel/nio/AbstractNioByteChannel;->setReadPending(Z)V

    .line 130
    :cond_8
    invoke-interface {v8, v2}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;

    .line 131
    const/4 v2, 0x0

    .line 133
    const v13, 0x7fffffff

    sub-int/2addr v13, v5

    if-lt v11, v13, :cond_9

    .line 135
    const v11, 0x7fffffff

    .line 136
    goto :goto_1

    .line 139
    :cond_9
    add-int/2addr v11, v5

    .line 142
    invoke-interface {v4}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    if-eqz v13, :cond_4

    .line 146
    if-lt v5, v12, :cond_4

    .line 151
    add-int/lit8 v7, v7, 0x1

    .line 116
    if-lt v7, v6, :cond_3

    goto :goto_1

    .line 160
    .end local v5    # "localReadAmount":I
    .end local v12    # "writable":I
    :catch_0
    move-exception v10

    .line 161
    .local v10, "t":Ljava/lang/Throwable;
    :try_start_2
    invoke-direct {p0, v8, v2, v10, v3}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->handleReadException(Lio/netty/channel/ChannelPipeline;Lio/netty/buffer/ByteBuf;Ljava/lang/Throwable;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    invoke-interface {v4}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v13

    if-nez v13, :cond_0

    iget-object v13, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v13}, Lio/netty/channel/nio/AbstractNioByteChannel;->isReadPending()Z

    move-result v13

    if-nez v13, :cond_0

    .line 170
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->removeReadOp()V

    goto/16 :goto_0

    .line 162
    .end local v10    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v13

    .line 169
    invoke-interface {v4}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v14

    if-nez v14, :cond_a

    iget-object v14, p0, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioByteChannel;

    invoke-virtual {v14}, Lio/netty/channel/nio/AbstractNioByteChannel;->isReadPending()Z

    move-result v14

    if-nez v14, :cond_a

    .line 170
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioByteChannel$NioByteUnsafe;->removeReadOp()V

    .line 172
    :cond_a
    throw v13
.end method
