.class public abstract Lio/netty/handler/codec/MessageToMessageDecoder;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "MessageToMessageDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/channel/ChannelInboundHandlerAdapter;"
    }
.end annotation


# instance fields
.field private final matcher:Lio/netty/util/internal/TypeParameterMatcher;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 60
    .local p0, "this":Lio/netty/handler/codec/MessageToMessageDecoder;, "Lio/netty/handler/codec/MessageToMessageDecoder<TI;>;"
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    .line 61
    const-class v0, Lio/netty/handler/codec/MessageToMessageDecoder;

    const-string v1, "I"

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/TypeParameterMatcher;->find(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/util/internal/TypeParameterMatcher;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/MessageToMessageDecoder;->matcher:Lio/netty/util/internal/TypeParameterMatcher;

    .line 62
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+TI;>;)V"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lio/netty/handler/codec/MessageToMessageDecoder;, "Lio/netty/handler/codec/MessageToMessageDecoder<TI;>;"
    .local p1, "inboundMessageType":Ljava/lang/Class;, "Ljava/lang/Class<+TI;>;"
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    .line 70
    invoke-static {p1}, Lio/netty/util/internal/TypeParameterMatcher;->get(Ljava/lang/Class;)Lio/netty/util/internal/TypeParameterMatcher;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/MessageToMessageDecoder;->matcher:Lio/netty/util/internal/TypeParameterMatcher;

    .line 71
    return-void
.end method


# virtual methods
.method public acceptInboundMessage(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lio/netty/handler/codec/MessageToMessageDecoder;, "Lio/netty/handler/codec/MessageToMessageDecoder<TI;>;"
    iget-object v0, p0, Lio/netty/handler/codec/MessageToMessageDecoder;->matcher:Lio/netty/util/internal/TypeParameterMatcher;

    invoke-virtual {v0, p1}, Lio/netty/util/internal/TypeParameterMatcher;->match(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 7
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lio/netty/handler/codec/MessageToMessageDecoder;, "Lio/netty/handler/codec/MessageToMessageDecoder<TI;>;"
    invoke-static {}, Lio/netty/util/internal/RecyclableArrayList;->newInstance()Lio/netty/util/internal/RecyclableArrayList;

    move-result-object v3

    .line 85
    .local v3, "out":Lio/netty/util/internal/RecyclableArrayList;
    :try_start_0
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/MessageToMessageDecoder;->acceptInboundMessage(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v5

    if-eqz v5, :cond_0

    .line 87
    move-object v0, p2

    .line 89
    .local v0, "cast":Ljava/lang/Object;, "TI;"
    :try_start_1
    invoke-virtual {p0, p1, v0, v3}, Lio/netty/handler/codec/MessageToMessageDecoder;->decode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :try_start_2
    invoke-static {v0}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 101
    .end local v0    # "cast":Ljava/lang/Object;, "TI;"
    :goto_0
    invoke-virtual {v3}, Lio/netty/util/internal/RecyclableArrayList;->size()I

    move-result v4

    .line 102
    .local v4, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-lt v2, v4, :cond_2

    .line 105
    invoke-virtual {v3}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    .line 107
    return-void

    .line 90
    .end local v2    # "i":I
    .end local v4    # "size":I
    .restart local v0    # "cast":Ljava/lang/Object;, "TI;"
    :catchall_0
    move-exception v5

    .line 91
    :try_start_3
    invoke-static {v0}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 92
    throw v5
    :try_end_3
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 96
    .end local v0    # "cast":Ljava/lang/Object;, "TI;"
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Lio/netty/handler/codec/DecoderException;
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 100
    .end local v1    # "e":Lio/netty/handler/codec/DecoderException;
    :catchall_1
    move-exception v5

    .line 101
    invoke-virtual {v3}, Lio/netty/util/internal/RecyclableArrayList;->size()I

    move-result v4

    .line 102
    .restart local v4    # "size":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-lt v2, v4, :cond_1

    .line 105
    invoke-virtual {v3}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    .line 106
    throw v5

    .line 94
    .end local v2    # "i":I
    .end local v4    # "size":I
    :cond_0
    :try_start_5
    invoke-virtual {v3, p2}, Lio/netty/util/internal/RecyclableArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 98
    :catch_1
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v5, Lio/netty/handler/codec/DecoderException;

    invoke-direct {v5, v1}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 103
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "i":I
    .restart local v4    # "size":I
    :cond_1
    invoke-virtual {v3, v2}, Lio/netty/util/internal/RecyclableArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 103
    :cond_2
    invoke-virtual {v3, v2}, Lio/netty/util/internal/RecyclableArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected abstract decode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "TI;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
