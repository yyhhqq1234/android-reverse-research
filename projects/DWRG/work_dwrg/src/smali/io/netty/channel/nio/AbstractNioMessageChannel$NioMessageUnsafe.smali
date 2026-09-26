.class final Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;
.super Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;
.source "AbstractNioMessageChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/channel/nio/AbstractNioMessageChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NioMessageUnsafe"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final readBuf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lio/netty/channel/nio/AbstractNioMessageChannel;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lio/netty/channel/nio/AbstractNioMessageChannel;)V
    .locals 1

    .prologue
    .line 47
    iput-object p1, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    invoke-direct {p0, p1}, Lio/netty/channel/nio/AbstractNioChannel$AbstractNioUnsafe;-><init>(Lio/netty/channel/nio/AbstractNioChannel;)V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->readBuf:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/channel/nio/AbstractNioMessageChannel;Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;-><init>(Lio/netty/channel/nio/AbstractNioMessageChannel;)V

    return-void
.end method


# virtual methods
.method public read()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 53
    sget-boolean v10, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->$assertionsDisabled:Z

    if-nez v10, :cond_0

    iget-object v10, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    invoke-virtual {v10}, Lio/netty/channel/nio/AbstractNioMessageChannel;->eventLoop()Lio/netty/channel/nio/NioEventLoop;

    move-result-object v10

    invoke-virtual {v10}, Lio/netty/channel/nio/NioEventLoop;->inEventLoop()Z

    move-result v10

    if-nez v10, :cond_0

    new-instance v9, Ljava/lang/AssertionError;

    invoke-direct {v9}, Ljava/lang/AssertionError;-><init>()V

    throw v9

    .line 54
    :cond_0
    iget-object v10, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    invoke-virtual {v10}, Lio/netty/channel/nio/AbstractNioMessageChannel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v1

    .line 55
    .local v1, "config":Lio/netty/channel/ChannelConfig;
    invoke-interface {v1}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    invoke-virtual {v10}, Lio/netty/channel/nio/AbstractNioMessageChannel;->isReadPending()Z

    move-result v10

    if-nez v10, :cond_2

    .line 57
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->removeReadOp()V

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 61
    :cond_2
    invoke-interface {v1}, Lio/netty/channel/ChannelConfig;->getMaxMessagesPerRead()I

    move-result v5

    .line 62
    .local v5, "maxMessagesPerRead":I
    iget-object v10, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    invoke-virtual {v10}, Lio/netty/channel/nio/AbstractNioMessageChannel;->pipeline()Lio/netty/channel/ChannelPipeline;

    move-result-object v6

    .line 63
    .local v6, "pipeline":Lio/netty/channel/ChannelPipeline;
    const/4 v0, 0x0

    .line 64
    .local v0, "closed":Z
    const/4 v2, 0x0

    .line 68
    .local v2, "exception":Ljava/lang/Throwable;
    :cond_3
    :try_start_0
    iget-object v10, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    iget-object v11, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->readBuf:Ljava/util/List;

    invoke-virtual {v10, v11}, Lio/netty/channel/nio/AbstractNioMessageChannel;->doReadMessages(Ljava/util/List;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 69
    .local v4, "localRead":I
    if-nez v4, :cond_8

    .line 89
    .end local v4    # "localRead":I
    :cond_4
    :goto_1
    :try_start_1
    iget-object v10, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lio/netty/channel/nio/AbstractNioMessageChannel;->setReadPending(Z)V

    .line 90
    iget-object v10, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->readBuf:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    .line 91
    .local v7, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-lt v3, v7, :cond_a

    .line 95
    iget-object v10, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->readBuf:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 96
    invoke-interface {v6}, Lio/netty/channel/ChannelPipeline;->fireChannelReadComplete()Lio/netty/channel/ChannelPipeline;

    .line 98
    if-eqz v2, :cond_6

    .line 99
    instance-of v10, v2, Ljava/io/IOException;

    if-eqz v10, :cond_5

    .line 102
    iget-object v10, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    instance-of v10, v10, Lio/netty/channel/ServerChannel;

    if-eqz v10, :cond_b

    move v0, v9

    .line 105
    :cond_5
    :goto_3
    invoke-interface {v6, v2}, Lio/netty/channel/ChannelPipeline;->fireExceptionCaught(Ljava/lang/Throwable;)Lio/netty/channel/ChannelPipeline;

    .line 108
    :cond_6
    if-eqz v0, :cond_7

    .line 109
    iget-object v9, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    invoke-virtual {v9}, Lio/netty/channel/nio/AbstractNioMessageChannel;->isOpen()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 110
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v9

    invoke-virtual {p0, v9}, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->close(Lio/netty/channel/ChannelPromise;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :cond_7
    invoke-interface {v1}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    invoke-virtual {v9}, Lio/netty/channel/nio/AbstractNioMessageChannel;->isReadPending()Z

    move-result v9

    if-nez v9, :cond_1

    .line 121
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->removeReadOp()V

    goto :goto_0

    .line 72
    .end local v3    # "i":I
    .end local v7    # "size":I
    .restart local v4    # "localRead":I
    :cond_8
    if-gez v4, :cond_9

    .line 73
    const/4 v0, 0x1

    .line 74
    goto :goto_1

    .line 78
    :cond_9
    :try_start_2
    invoke-interface {v1}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 82
    iget-object v10, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->readBuf:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v10

    if-lt v10, v5, :cond_3

    goto :goto_1

    .line 86
    .end local v4    # "localRead":I
    :catch_0
    move-exception v8

    .line 87
    .local v8, "t":Ljava/lang/Throwable;
    move-object v2, v8

    goto :goto_1

    .line 92
    .end local v8    # "t":Ljava/lang/Throwable;
    .restart local v3    # "i":I
    .restart local v7    # "size":I
    :cond_a
    :try_start_3
    iget-object v10, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->readBuf:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v6, v10}, Lio/netty/channel/ChannelPipeline;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelPipeline;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 102
    :cond_b
    const/4 v0, 0x1

    goto :goto_3

    .line 113
    .end local v3    # "i":I
    .end local v7    # "size":I
    :catchall_0
    move-exception v9

    .line 120
    invoke-interface {v1}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v10

    if-nez v10, :cond_c

    iget-object v10, p0, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->this$0:Lio/netty/channel/nio/AbstractNioMessageChannel;

    invoke-virtual {v10}, Lio/netty/channel/nio/AbstractNioMessageChannel;->isReadPending()Z

    move-result v10

    if-nez v10, :cond_c

    .line 121
    invoke-virtual {p0}, Lio/netty/channel/nio/AbstractNioMessageChannel$NioMessageUnsafe;->removeReadOp()V

    .line 123
    :cond_c
    throw v9
.end method
