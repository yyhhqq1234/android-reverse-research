.class public abstract Lio/netty/handler/codec/MessageToMessageEncoder;
.super Lio/netty/channel/ChannelOutboundHandlerAdapter;
.source "MessageToMessageEncoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/channel/ChannelOutboundHandlerAdapter;"
    }
.end annotation


# instance fields
.field private final matcher:Lio/netty/util/internal/TypeParameterMatcher;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 59
    .local p0, "this":Lio/netty/handler/codec/MessageToMessageEncoder;, "Lio/netty/handler/codec/MessageToMessageEncoder<TI;>;"
    invoke-direct {p0}, Lio/netty/channel/ChannelOutboundHandlerAdapter;-><init>()V

    .line 60
    const-class v0, Lio/netty/handler/codec/MessageToMessageEncoder;

    const-string v1, "I"

    invoke-static {p0, v0, v1}, Lio/netty/util/internal/TypeParameterMatcher;->find(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Lio/netty/util/internal/TypeParameterMatcher;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/MessageToMessageEncoder;->matcher:Lio/netty/util/internal/TypeParameterMatcher;

    .line 61
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
    .line 68
    .local p0, "this":Lio/netty/handler/codec/MessageToMessageEncoder;, "Lio/netty/handler/codec/MessageToMessageEncoder<TI;>;"
    .local p1, "outboundMessageType":Ljava/lang/Class;, "Ljava/lang/Class<+TI;>;"
    invoke-direct {p0}, Lio/netty/channel/ChannelOutboundHandlerAdapter;-><init>()V

    .line 69
    invoke-static {p1}, Lio/netty/util/internal/TypeParameterMatcher;->get(Ljava/lang/Class;)Lio/netty/util/internal/TypeParameterMatcher;

    move-result-object v0

    iput-object v0, p0, Lio/netty/handler/codec/MessageToMessageEncoder;->matcher:Lio/netty/util/internal/TypeParameterMatcher;

    .line 70
    return-void
.end method


# virtual methods
.method public acceptOutboundMessage(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lio/netty/handler/codec/MessageToMessageEncoder;, "Lio/netty/handler/codec/MessageToMessageEncoder<TI;>;"
    iget-object v0, p0, Lio/netty/handler/codec/MessageToMessageEncoder;->matcher:Lio/netty/util/internal/TypeParameterMatcher;

    invoke-virtual {v0, p1}, Lio/netty/util/internal/TypeParameterMatcher;->match(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected abstract encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
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

.method public write(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)V
    .locals 12
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .param p3, "promise"    # Lio/netty/channel/ChannelPromise;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    .local p0, "this":Lio/netty/handler/codec/MessageToMessageEncoder;, "Lio/netty/handler/codec/MessageToMessageEncoder<TI;>;"
    const/4 v4, 0x0

    .line 84
    .local v4, "out":Lio/netty/util/internal/RecyclableArrayList;
    :try_start_0
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/MessageToMessageEncoder;->acceptOutboundMessage(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 85
    invoke-static {}, Lio/netty/util/internal/RecyclableArrayList;->newInstance()Lio/netty/util/internal/RecyclableArrayList;
    :try_end_0
    .catch Lio/netty/handler/codec/EncoderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 87
    move-object v0, p2

    .line 89
    .local v0, "cast":Ljava/lang/Object;, "TI;"
    :try_start_1
    invoke-virtual {p0, p1, v0, v4}, Lio/netty/handler/codec/MessageToMessageEncoder;->encode(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 91
    :try_start_2
    invoke-static {v0}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {v4}, Lio/netty/util/internal/RecyclableArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 95
    invoke-virtual {v4}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    .line 96
    const/4 v4, 0x0

    .line 98
    new-instance v9, Lio/netty/handler/codec/EncoderException;

    .line 99
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " must produce at least one message."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 98
    invoke-direct {v9, v10}, Lio/netty/handler/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_2
    .catch Lio/netty/handler/codec/EncoderException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    .end local v0    # "cast":Ljava/lang/Object;, "TI;"
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Lio/netty/handler/codec/EncoderException;
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    .end local v1    # "e":Lio/netty/handler/codec/EncoderException;
    :catchall_0
    move-exception v9

    .line 109
    if-eqz v4, :cond_1

    .line 110
    invoke-virtual {v4}, Lio/netty/util/internal/RecyclableArrayList;->size()I

    move-result v10

    add-int/lit8 v6, v10, -0x1

    .line 111
    .local v6, "sizeMinusOne":I
    if-nez v6, :cond_6

    .line 112
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lio/netty/util/internal/RecyclableArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {p1, v10, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 129
    :cond_0
    :goto_0
    invoke-virtual {v4}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    .line 131
    .end local v6    # "sizeMinusOne":I
    :cond_1
    throw v9

    .line 90
    .restart local v0    # "cast":Ljava/lang/Object;, "TI;"
    :catchall_1
    move-exception v9

    .line 91
    :try_start_4
    invoke-static {v0}, Lio/netty/util/ReferenceCountUtil;->release(Ljava/lang/Object;)Z

    .line 92
    throw v9
    :try_end_4
    .catch Lio/netty/handler/codec/EncoderException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 106
    .end local v0    # "cast":Ljava/lang/Object;, "TI;"
    :catch_1
    move-exception v7

    .line 107
    .local v7, "t":Ljava/lang/Throwable;
    :try_start_5
    new-instance v9, Lio/netty/handler/codec/EncoderException;

    invoke-direct {v9, v7}, Lio/netty/handler/codec/EncoderException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 102
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_2
    :try_start_6
    invoke-interface {p1, p2, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;
    :try_end_6
    .catch Lio/netty/handler/codec/EncoderException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 109
    :cond_3
    if-eqz v4, :cond_5

    .line 110
    invoke-virtual {v4}, Lio/netty/util/internal/RecyclableArrayList;->size()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .line 111
    .restart local v6    # "sizeMinusOne":I
    if-nez v6, :cond_a

    .line 112
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lio/netty/util/internal/RecyclableArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {p1, v9, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 129
    :cond_4
    :goto_1
    invoke-virtual {v4}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    .line 132
    .end local v6    # "sizeMinusOne":I
    :cond_5
    return-void

    .line 113
    .restart local v6    # "sizeMinusOne":I
    :cond_6
    if-lez v6, :cond_0

    .line 116
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v8

    .line 117
    .local v8, "voidPromise":Lio/netty/channel/ChannelPromise;
    if-ne p3, v8, :cond_7

    const/4 v3, 0x1

    .line 118
    .local v3, "isVoidPromise":Z
    :goto_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-lt v2, v6, :cond_8

    .line 127
    invoke-virtual {v4, v6}, Lio/netty/util/internal/RecyclableArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {p1, v10, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_0

    .line 117
    .end local v2    # "i":I
    .end local v3    # "isVoidPromise":Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_2

    .line 120
    .restart local v2    # "i":I
    .restart local v3    # "isVoidPromise":Z
    :cond_8
    if-eqz v3, :cond_9

    .line 121
    move-object v5, v8

    .line 125
    .local v5, "p":Lio/netty/channel/ChannelPromise;
    :goto_4
    invoke-virtual {v4, v2}, Lio/netty/util/internal/RecyclableArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {p1, v10, v5}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 123
    .end local v5    # "p":Lio/netty/channel/ChannelPromise;
    :cond_9
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v5

    .restart local v5    # "p":Lio/netty/channel/ChannelPromise;
    goto :goto_4

    .line 113
    .end local v2    # "i":I
    .end local v3    # "isVoidPromise":Z
    .end local v5    # "p":Lio/netty/channel/ChannelPromise;
    .end local v8    # "voidPromise":Lio/netty/channel/ChannelPromise;
    :cond_a
    if-lez v6, :cond_4

    .line 116
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->voidPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v8

    .line 117
    .restart local v8    # "voidPromise":Lio/netty/channel/ChannelPromise;
    if-ne p3, v8, :cond_b

    const/4 v3, 0x1

    .line 118
    .restart local v3    # "isVoidPromise":Z
    :goto_5
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_6
    if-lt v2, v6, :cond_c

    .line 127
    invoke-virtual {v4, v6}, Lio/netty/util/internal/RecyclableArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {p1, v9, p3}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    goto :goto_1

    .line 117
    .end local v2    # "i":I
    .end local v3    # "isVoidPromise":Z
    :cond_b
    const/4 v3, 0x0

    goto :goto_5

    .line 120
    .restart local v2    # "i":I
    .restart local v3    # "isVoidPromise":Z
    :cond_c
    if-eqz v3, :cond_d

    .line 121
    move-object v5, v8

    .line 125
    .restart local v5    # "p":Lio/netty/channel/ChannelPromise;
    :goto_7
    invoke-virtual {v4, v2}, Lio/netty/util/internal/RecyclableArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {p1, v9, v5}, Lio/netty/channel/ChannelHandlerContext;->write(Ljava/lang/Object;Lio/netty/channel/ChannelPromise;)Lio/netty/channel/ChannelFuture;

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 123
    .end local v5    # "p":Lio/netty/channel/ChannelPromise;
    :cond_d
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->newPromise()Lio/netty/channel/ChannelPromise;

    move-result-object v5

    .restart local v5    # "p":Lio/netty/channel/ChannelPromise;
    goto :goto_7
.end method
