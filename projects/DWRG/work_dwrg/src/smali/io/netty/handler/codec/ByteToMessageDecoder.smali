.class public abstract Lio/netty/handler/codec/ByteToMessageDecoder;
.super Lio/netty/channel/ChannelInboundHandlerAdapter;
.source "ByteToMessageDecoder.java"


# instance fields
.field cumulation:Lio/netty/buffer/ByteBuf;

.field private decodeWasNull:Z

.field private first:Z

.field private singleDecode:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Lio/netty/channel/ChannelInboundHandlerAdapter;-><init>()V

    .line 55
    invoke-virtual {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;->isSharable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "@Sharable annotation is not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    return-void
.end method

.method private expandCumulation(Lio/netty/channel/ChannelHandlerContext;I)V
    .locals 3
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "readable"    # I

    .prologue
    .line 173
    iget-object v0, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    .line 174
    .local v0, "oldCumulation":Lio/netty/buffer/ByteBuf;
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    add-int/2addr v2, p2

    invoke-interface {v1, v2}, Lio/netty/buffer/ByteBufAllocator;->buffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    iput-object v1, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    .line 175
    iget-object v1, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, v0}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 176
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 177
    return-void
.end method


# virtual methods
.method protected actualReadableBytes()I
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;->internalBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    return v0
.end method

.method protected callDecode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 7
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 282
    :cond_1
    :goto_0
    return-void

    .line 247
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    .line 248
    .local v3, "outSize":I
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    .line 249
    .local v2, "oldInputLength":I
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/ByteToMessageDecoder;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V

    .line 255
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_1

    .line 259
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 260
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 267
    :cond_3
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    if-ne v2, v4, :cond_4

    .line 268
    new-instance v4, Lio/netty/handler/codec/DecoderException;

    .line 269
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    const-string v6, ".decode() did not read anything but decoded a message."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 269
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 268
    invoke-direct {v4, v5}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 277
    .end local v2    # "oldInputLength":I
    .end local v3    # "outSize":I
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Lio/netty/handler/codec/DecoderException;
    throw v1

    .line 273
    .end local v1    # "e":Lio/netty/handler/codec/DecoderException;
    .restart local v2    # "oldInputLength":I
    .restart local v3    # "outSize":I
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;->isSingleDecode()Z
    :try_end_1
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 279
    .end local v2    # "oldInputLength":I
    .end local v3    # "outSize":I
    :catch_1
    move-exception v0

    .line 280
    .local v0, "cause":Ljava/lang/Throwable;
    new-instance v4, Lio/netty/handler/codec/DecoderException;

    invoke-direct {v4, v0}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 6
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 202
    invoke-static {}, Lio/netty/util/internal/RecyclableArrayList;->newInstance()Lio/netty/util/internal/RecyclableArrayList;

    move-result-object v2

    .line 204
    .local v2, "out":Lio/netty/util/internal/RecyclableArrayList;
    :try_start_0
    iget-object v4, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    if-eqz v4, :cond_2

    .line 205
    iget-object v4, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, v4, v2}, Lio/netty/handler/codec/ByteToMessageDecoder;->callDecode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V

    .line 206
    iget-object v4, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, v4, v2}, Lio/netty/handler/codec/ByteToMessageDecoder;->decodeLast(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    :try_end_0
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :goto_0
    :try_start_1
    iget-object v4, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    if-eqz v4, :cond_0

    .line 217
    iget-object v4, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 218
    const/4 v4, 0x0

    iput-object v4, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    .line 220
    :cond_0
    invoke-virtual {v2}, Lio/netty/util/internal/RecyclableArrayList;->size()I

    move-result v3

    .line 221
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v3, :cond_6

    .line 224
    if-lez v3, :cond_1

    .line 226
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    .line 228
    :cond_1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 231
    invoke-virtual {v2}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    .line 234
    return-void

    .line 208
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_2
    :try_start_2
    sget-object v4, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, v4, v2}, Lio/netty/handler/codec/ByteToMessageDecoder;->decodeLast(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    :try_end_2
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Lio/netty/handler/codec/DecoderException;
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 214
    .end local v0    # "e":Lio/netty/handler/codec/DecoderException;
    :catchall_0
    move-exception v4

    .line 216
    :try_start_4
    iget-object v5, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    if-eqz v5, :cond_3

    .line 217
    iget-object v5, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 218
    const/4 v5, 0x0

    iput-object v5, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    .line 220
    :cond_3
    invoke-virtual {v2}, Lio/netty/util/internal/RecyclableArrayList;->size()I

    move-result v3

    .line 221
    .restart local v3    # "size":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-lt v1, v3, :cond_5

    .line 224
    if-lez v3, :cond_4

    .line 226
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    .line 228
    :cond_4
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 231
    invoke-virtual {v2}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    .line 233
    throw v4

    .line 212
    .end local v1    # "i":I
    .end local v3    # "size":I
    :catch_1
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v4, Lio/netty/handler/codec/DecoderException;

    invoke-direct {v4, v0}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 222
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v3    # "size":I
    :cond_5
    :try_start_6
    invoke-virtual {v2, v1}, Lio/netty/util/internal/RecyclableArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 229
    .end local v1    # "i":I
    .end local v3    # "size":I
    :catchall_1
    move-exception v4

    .line 231
    invoke-virtual {v2}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    .line 232
    throw v4

    .line 222
    .restart local v1    # "i":I
    .restart local v3    # "size":I
    :cond_6
    :try_start_7
    invoke-virtual {v2, v1}, Lio/netty/util/internal/RecyclableArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 229
    .end local v1    # "i":I
    .end local v3    # "size":I
    :catchall_2
    move-exception v4

    .line 231
    invoke-virtual {v2}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    .line 232
    throw v4
.end method

.method public channelRead(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Object;)V
    .locals 13
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "msg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 127
    instance-of v9, p2, Lio/netty/buffer/ByteBuf;

    if-eqz v9, :cond_a

    .line 128
    invoke-static {}, Lio/netty/util/internal/RecyclableArrayList;->newInstance()Lio/netty/util/internal/RecyclableArrayList;

    move-result-object v4

    .line 130
    .local v4, "out":Lio/netty/util/internal/RecyclableArrayList;
    :try_start_0
    move-object v0, p2

    check-cast v0, Lio/netty/buffer/ByteBuf;

    move-object v1, v0

    .line 131
    .local v1, "data":Lio/netty/buffer/ByteBuf;
    iget-object v9, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    if-nez v9, :cond_1

    move v9, v7

    :goto_0
    iput-boolean v9, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->first:Z

    .line 132
    iget-boolean v9, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->first:Z

    if-eqz v9, :cond_2

    .line 133
    iput-object v1, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    .line 149
    :goto_1
    iget-object v9, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, v9, v4}, Lio/netty/handler/codec/ByteToMessageDecoder;->callDecode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    :try_end_0
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-object v9, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v9}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v9

    if-nez v9, :cond_0

    .line 156
    iget-object v9, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v9}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 157
    iput-object v12, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    .line 159
    :cond_0
    invoke-virtual {v4}, Lio/netty/util/internal/RecyclableArrayList;->size()I

    move-result v5

    .line 160
    .local v5, "size":I
    if-nez v5, :cond_8

    :goto_2
    iput-boolean v7, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->decodeWasNull:Z

    .line 162
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-lt v3, v5, :cond_9

    .line 165
    invoke-virtual {v4}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    .line 170
    .end local v1    # "data":Lio/netty/buffer/ByteBuf;
    .end local v3    # "i":I
    .end local v4    # "out":Lio/netty/util/internal/RecyclableArrayList;
    .end local v5    # "size":I
    :goto_4
    return-void

    .restart local v1    # "data":Lio/netty/buffer/ByteBuf;
    .restart local v4    # "out":Lio/netty/util/internal/RecyclableArrayList;
    :cond_1
    move v9, v8

    .line 131
    goto :goto_0

    .line 135
    :cond_2
    :try_start_1
    iget-object v9, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v9}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v9

    iget-object v10, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v10}, Lio/netty/buffer/ByteBuf;->maxCapacity()I

    move-result v10

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v11

    sub-int/2addr v10, v11

    if-gt v9, v10, :cond_3

    .line 136
    iget-object v9, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v9}, Lio/netty/buffer/ByteBuf;->refCnt()I

    move-result v9

    if-le v9, v7, :cond_4

    .line 144
    :cond_3
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v9

    invoke-direct {p0, p1, v9}, Lio/netty/handler/codec/ByteToMessageDecoder;->expandCumulation(Lio/netty/channel/ChannelHandlerContext;I)V

    .line 146
    :cond_4
    iget-object v9, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v9, v1}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 147
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_1
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 150
    .end local v1    # "data":Lio/netty/buffer/ByteBuf;
    :catch_0
    move-exception v2

    .line 151
    .local v2, "e":Lio/netty/handler/codec/DecoderException;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    .end local v2    # "e":Lio/netty/handler/codec/DecoderException;
    :catchall_0
    move-exception v9

    .line 155
    iget-object v10, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v10}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v10

    if-nez v10, :cond_5

    .line 156
    iget-object v10, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v10}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 157
    iput-object v12, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    .line 159
    :cond_5
    invoke-virtual {v4}, Lio/netty/util/internal/RecyclableArrayList;->size()I

    move-result v5

    .line 160
    .restart local v5    # "size":I
    if-nez v5, :cond_6

    :goto_5
    iput-boolean v7, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->decodeWasNull:Z

    .line 162
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6
    if-lt v3, v5, :cond_7

    .line 165
    invoke-virtual {v4}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    .line 166
    throw v9

    .line 152
    .end local v3    # "i":I
    .end local v5    # "size":I
    :catch_1
    move-exception v6

    .line 153
    .local v6, "t":Ljava/lang/Throwable;
    :try_start_3
    new-instance v9, Lio/netty/handler/codec/DecoderException;

    invoke-direct {v9, v6}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v6    # "t":Ljava/lang/Throwable;
    .restart local v5    # "size":I
    :cond_6
    move v7, v8

    .line 160
    goto :goto_5

    .line 163
    .restart local v3    # "i":I
    :cond_7
    invoke-virtual {v4, v3}, Lio/netty/util/internal/RecyclableArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1, v7}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 162
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .end local v3    # "i":I
    .restart local v1    # "data":Lio/netty/buffer/ByteBuf;
    :cond_8
    move v7, v8

    .line 160
    goto :goto_2

    .line 163
    .restart local v3    # "i":I
    :cond_9
    invoke-virtual {v4, v3}, Lio/netty/util/internal/RecyclableArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1, v7}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 162
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 168
    .end local v1    # "data":Lio/netty/buffer/ByteBuf;
    .end local v3    # "i":I
    .end local v4    # "out":Lio/netty/util/internal/RecyclableArrayList;
    .end local v5    # "size":I
    :cond_a
    invoke-interface {p1, p2}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    goto :goto_4
.end method

.method public channelReadComplete(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->first:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->refCnt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 189
    iget-object v0, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->discardSomeReadBytes()Lio/netty/buffer/ByteBuf;

    .line 191
    :cond_0
    iget-boolean v0, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->decodeWasNull:Z

    if-eqz v0, :cond_1

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->decodeWasNull:Z

    .line 193
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/Channel;->config()Lio/netty/channel/ChannelConfig;

    move-result-object v0

    invoke-interface {v0}, Lio/netty/channel/ChannelConfig;->isAutoRead()Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->read()Lio/netty/channel/ChannelHandlerContext;

    .line 197
    :cond_1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    .line 198
    return-void
.end method

.method protected abstract decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
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

.method protected decodeLast(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "in"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Lio/netty/buffer/ByteBuf;",
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

    .prologue
    .line 304
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/ByteToMessageDecoder;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V

    .line 305
    return-void
.end method

.method public final handlerRemoved(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 105
    invoke-virtual {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;->internalBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 106
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    .line 107
    .local v2, "readable":I
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {v0, v2}, Lio/netty/buffer/ByteBuf;->readBytes(I)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 109
    .local v1, "bytes":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 110
    invoke-interface {p1, v1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;

    .line 114
    .end local v1    # "bytes":Lio/netty/buffer/ByteBuf;
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    .line 115
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    .line 116
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/ByteToMessageDecoder;->handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V

    .line 117
    return-void

    .line 112
    :cond_0
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    goto :goto_0
.end method

.method protected handlerRemoved0(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 0
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 123
    return-void
.end method

.method protected internalBuffer()Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    .line 99
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    goto :goto_0
.end method

.method public isSingleDecode()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->singleDecode:Z

    return v0
.end method

.method public setSingleDecode(Z)V
    .locals 0
    .param p1, "singleDecode"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lio/netty/handler/codec/ByteToMessageDecoder;->singleDecode:Z

    .line 68
    return-void
.end method
