.class public abstract Lio/netty/handler/codec/ReplayingDecoder;
.super Lio/netty/handler/codec/ByteToMessageDecoder;
.source "ReplayingDecoder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/handler/codec/ByteToMessageDecoder;"
    }
.end annotation


# static fields
.field static final REPLAY:Lio/netty/util/Signal;


# instance fields
.field private checkpoint:I

.field private final replayable:Lio/netty/handler/codec/ReplayingDecoderBuffer;

.field private state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lio/netty/handler/codec/ReplayingDecoder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".REPLAY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/Signal;->valueOf(Ljava/lang/String;)Lio/netty/util/Signal;

    move-result-object v0

    sput-object v0, Lio/netty/handler/codec/ReplayingDecoder;->REPLAY:Lio/netty/util/Signal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 280
    .local p0, "this":Lio/netty/handler/codec/ReplayingDecoder;, "Lio/netty/handler/codec/ReplayingDecoder<TS;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoder;-><init>(Ljava/lang/Object;)V

    .line 281
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, "this":Lio/netty/handler/codec/ReplayingDecoder;, "Lio/netty/handler/codec/ReplayingDecoder<TS;>;"
    .local p1, "initialState":Ljava/lang/Object;, "TS;"
    invoke-direct {p0}, Lio/netty/handler/codec/ByteToMessageDecoder;-><init>()V

    .line 272
    new-instance v0, Lio/netty/handler/codec/ReplayingDecoderBuffer;

    invoke-direct {v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/ReplayingDecoder;->replayable:Lio/netty/handler/codec/ReplayingDecoderBuffer;

    .line 274
    const/4 v0, -0x1

    iput v0, p0, Lio/netty/handler/codec/ReplayingDecoder;->checkpoint:I

    .line 287
    iput-object p1, p0, Lio/netty/handler/codec/ReplayingDecoder;->state:Ljava/lang/Object;

    .line 288
    return-void
.end method


# virtual methods
.method protected callDecode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    .locals 11
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
    .line 362
    .local p0, "this":Lio/netty/handler/codec/ReplayingDecoder;, "Lio/netty/handler/codec/ReplayingDecoder<TS;>;"
    .local p3, "out":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v8, p0, Lio/netty/handler/codec/ReplayingDecoder;->replayable:Lio/netty/handler/codec/ReplayingDecoderBuffer;

    invoke-virtual {v8, p2}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->setCumulation(Lio/netty/buffer/ByteBuf;)V

    .line 364
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v8

    if-nez v8, :cond_2

    .line 427
    :cond_1
    :goto_0
    return-void

    .line 365
    :cond_2
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    iput v4, p0, Lio/netty/handler/codec/ReplayingDecoder;->checkpoint:I

    .line 366
    .local v4, "oldReaderIndex":I
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    .line 367
    .local v6, "outSize":I
    iget-object v5, p0, Lio/netty/handler/codec/ReplayingDecoder;->state:Ljava/lang/Object;

    .line 368
    .local v5, "oldState":Ljava/lang/Object;, "TS;"
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I
    :try_end_0
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 370
    .local v3, "oldInputLength":I
    :try_start_1
    iget-object v8, p0, Lio/netty/handler/codec/ReplayingDecoder;->replayable:Lio/netty/handler/codec/ReplayingDecoderBuffer;

    invoke-virtual {p0, p1, v8, p3}, Lio/netty/handler/codec/ReplayingDecoder;->decode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V

    .line 376
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->isRemoved()Z

    move-result v8

    if-nez v8, :cond_1

    .line 380
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    if-ne v6, v8, :cond_3

    .line 381
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v8

    if-ne v3, v8, :cond_0

    iget-object v8, p0, Lio/netty/handler/codec/ReplayingDecoder;->state:Ljava/lang/Object;

    if-ne v5, v8, :cond_0

    .line 382
    new-instance v8, Lio/netty/handler/codec/DecoderException;

    .line 383
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ".decode() must consume the inbound "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 384
    const-string v10, "data or change its state if it did not decode anything."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 383
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 382
    invoke-direct {v8, v9}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Lio/netty/util/Signal; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 391
    :catch_0
    move-exception v7

    .line 392
    .local v7, "replay":Lio/netty/util/Signal;
    :try_start_2
    sget-object v8, Lio/netty/handler/codec/ReplayingDecoder;->REPLAY:Lio/netty/util/Signal;

    invoke-virtual {v7, v8}, Lio/netty/util/Signal;->expect(Lio/netty/util/Signal;)V

    .line 398
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->isRemoved()Z

    move-result v8

    if-nez v8, :cond_1

    .line 403
    iget v1, p0, Lio/netty/handler/codec/ReplayingDecoder;->checkpoint:I

    .line 404
    .local v1, "checkpoint":I
    if-ltz v1, :cond_1

    .line 405
    invoke-virtual {p2, v1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;
    :try_end_2
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 422
    .end local v1    # "checkpoint":I
    .end local v3    # "oldInputLength":I
    .end local v4    # "oldReaderIndex":I
    .end local v5    # "oldState":Ljava/lang/Object;, "TS;"
    .end local v6    # "outSize":I
    .end local v7    # "replay":Lio/netty/util/Signal;
    :catch_1
    move-exception v2

    .line 423
    .local v2, "e":Lio/netty/handler/codec/DecoderException;
    throw v2

    .line 413
    .end local v2    # "e":Lio/netty/handler/codec/DecoderException;
    .restart local v3    # "oldInputLength":I
    .restart local v4    # "oldReaderIndex":I
    .restart local v5    # "oldState":Ljava/lang/Object;, "TS;"
    .restart local v6    # "outSize":I
    :cond_3
    :try_start_3
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v8

    if-ne v4, v8, :cond_4

    iget-object v8, p0, Lio/netty/handler/codec/ReplayingDecoder;->state:Ljava/lang/Object;

    if-ne v5, v8, :cond_4

    .line 414
    new-instance v8, Lio/netty/handler/codec/DecoderException;

    .line 415
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ".decode() method must consume the inbound data "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 416
    const-string v10, "or change its state if it decoded something."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 415
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 414
    invoke-direct {v8, v9}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_3
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 424
    .end local v3    # "oldInputLength":I
    .end local v4    # "oldReaderIndex":I
    .end local v5    # "oldState":Ljava/lang/Object;, "TS;"
    .end local v6    # "outSize":I
    :catch_2
    move-exception v0

    .line 425
    .local v0, "cause":Ljava/lang/Throwable;
    new-instance v8, Lio/netty/handler/codec/DecoderException;

    invoke-direct {v8, v0}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 418
    .end local v0    # "cause":Ljava/lang/Throwable;
    .restart local v3    # "oldInputLength":I
    .restart local v4    # "oldReaderIndex":I
    .restart local v5    # "oldState":Ljava/lang/Object;, "TS;"
    .restart local v6    # "outSize":I
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Lio/netty/handler/codec/ReplayingDecoder;->isSingleDecode()Z
    :try_end_4
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_0
.end method

.method public channelInactive(Lio/netty/channel/ChannelHandlerContext;)V
    .locals 7
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "this":Lio/netty/handler/codec/ReplayingDecoder;, "Lio/netty/handler/codec/ReplayingDecoder<TS;>;"
    invoke-static {}, Lio/netty/util/internal/RecyclableArrayList;->newInstance()Lio/netty/util/internal/RecyclableArrayList;

    move-result-object v2

    .line 328
    .local v2, "out":Lio/netty/util/internal/RecyclableArrayList;
    :try_start_0
    iget-object v5, p0, Lio/netty/handler/codec/ReplayingDecoder;->replayable:Lio/netty/handler/codec/ReplayingDecoderBuffer;

    invoke-virtual {v5}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->terminate()V

    .line 329
    invoke-virtual {p0}, Lio/netty/handler/codec/ReplayingDecoder;->internalBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v5

    invoke-virtual {p0, p1, v5, v2}, Lio/netty/handler/codec/ReplayingDecoder;->callDecode(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V

    .line 330
    iget-object v5, p0, Lio/netty/handler/codec/ReplayingDecoder;->replayable:Lio/netty/handler/codec/ReplayingDecoderBuffer;

    invoke-virtual {p0, p1, v5, v2}, Lio/netty/handler/codec/ReplayingDecoder;->decodeLast(Lio/netty/channel/ChannelHandlerContext;Lio/netty/buffer/ByteBuf;Ljava/util/List;)V
    :try_end_0
    .catch Lio/netty/util/Signal; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lio/netty/handler/codec/DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 340
    :try_start_1
    iget-object v5, p0, Lio/netty/handler/codec/ReplayingDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    if-eqz v5, :cond_0

    .line 341
    iget-object v5, p0, Lio/netty/handler/codec/ReplayingDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 342
    const/4 v5, 0x0

    iput-object v5, p0, Lio/netty/handler/codec/ReplayingDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    .line 344
    :cond_0
    invoke-virtual {v2}, Lio/netty/util/internal/RecyclableArrayList;->size()I

    move-result v4

    .line 345
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v4, :cond_8

    .line 348
    if-lez v4, :cond_1

    .line 350
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    .line 352
    :cond_1
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 355
    invoke-virtual {v2}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    .line 358
    :goto_1
    return-void

    .line 331
    .end local v1    # "i":I
    .end local v4    # "size":I
    :catch_0
    move-exception v3

    .line 333
    .local v3, "replay":Lio/netty/util/Signal;
    :try_start_2
    sget-object v5, Lio/netty/handler/codec/ReplayingDecoder;->REPLAY:Lio/netty/util/Signal;

    invoke-virtual {v3, v5}, Lio/netty/util/Signal;->expect(Lio/netty/util/Signal;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 340
    :try_start_3
    iget-object v5, p0, Lio/netty/handler/codec/ReplayingDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    if-eqz v5, :cond_2

    .line 341
    iget-object v5, p0, Lio/netty/handler/codec/ReplayingDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 342
    const/4 v5, 0x0

    iput-object v5, p0, Lio/netty/handler/codec/ReplayingDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    .line 344
    :cond_2
    invoke-virtual {v2}, Lio/netty/util/internal/RecyclableArrayList;->size()I

    move-result v4

    .line 345
    .restart local v4    # "size":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-lt v1, v4, :cond_4

    .line 348
    if-lez v4, :cond_3

    .line 350
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    .line 352
    :cond_3
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 355
    invoke-virtual {v2}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    goto :goto_1

    .line 346
    :cond_4
    :try_start_4
    invoke-virtual {v2, v1}, Lio/netty/util/internal/RecyclableArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 353
    .end local v1    # "i":I
    .end local v4    # "size":I
    :catchall_0
    move-exception v5

    .line 355
    invoke-virtual {v2}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    .line 356
    throw v5

    .line 334
    .end local v3    # "replay":Lio/netty/util/Signal;
    :catch_1
    move-exception v0

    .line 335
    .local v0, "e":Lio/netty/handler/codec/DecoderException;
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 338
    .end local v0    # "e":Lio/netty/handler/codec/DecoderException;
    :catchall_1
    move-exception v5

    .line 340
    :try_start_6
    iget-object v6, p0, Lio/netty/handler/codec/ReplayingDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    if-eqz v6, :cond_5

    .line 341
    iget-object v6, p0, Lio/netty/handler/codec/ReplayingDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 342
    const/4 v6, 0x0

    iput-object v6, p0, Lio/netty/handler/codec/ReplayingDecoder;->cumulation:Lio/netty/buffer/ByteBuf;

    .line 344
    :cond_5
    invoke-virtual {v2}, Lio/netty/util/internal/RecyclableArrayList;->size()I

    move-result v4

    .line 345
    .restart local v4    # "size":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3
    if-lt v1, v4, :cond_7

    .line 348
    if-lez v4, :cond_6

    .line 350
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelReadComplete()Lio/netty/channel/ChannelHandlerContext;

    .line 352
    :cond_6
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->fireChannelInactive()Lio/netty/channel/ChannelHandlerContext;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 355
    invoke-virtual {v2}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    .line 357
    throw v5

    .line 336
    .end local v1    # "i":I
    .end local v4    # "size":I
    :catch_2
    move-exception v0

    .line 337
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    new-instance v5, Lio/netty/handler/codec/DecoderException;

    invoke-direct {v5, v0}, Lio/netty/handler/codec/DecoderException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 346
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "i":I
    .restart local v4    # "size":I
    :cond_7
    :try_start_8
    invoke-virtual {v2, v1}, Lio/netty/util/internal/RecyclableArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 353
    .end local v1    # "i":I
    .end local v4    # "size":I
    :catchall_2
    move-exception v5

    .line 355
    invoke-virtual {v2}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    .line 356
    throw v5

    .line 346
    .restart local v1    # "i":I
    .restart local v4    # "size":I
    :cond_8
    :try_start_9
    invoke-virtual {v2, v1}, Lio/netty/util/internal/RecyclableArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Lio/netty/channel/ChannelHandlerContext;->fireChannelRead(Ljava/lang/Object;)Lio/netty/channel/ChannelHandlerContext;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 353
    .end local v1    # "i":I
    .end local v4    # "size":I
    :catchall_3
    move-exception v5

    .line 355
    invoke-virtual {v2}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    .line 356
    throw v5
.end method

.method protected checkpoint()V
    .locals 1

    .prologue
    .line 294
    .local p0, "this":Lio/netty/handler/codec/ReplayingDecoder;, "Lio/netty/handler/codec/ReplayingDecoder<TS;>;"
    invoke-virtual {p0}, Lio/netty/handler/codec/ReplayingDecoder;->internalBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    iput v0, p0, Lio/netty/handler/codec/ReplayingDecoder;->checkpoint:I

    .line 295
    return-void
.end method

.method protected checkpoint(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lio/netty/handler/codec/ReplayingDecoder;, "Lio/netty/handler/codec/ReplayingDecoder<TS;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    invoke-virtual {p0}, Lio/netty/handler/codec/ReplayingDecoder;->checkpoint()V

    .line 303
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/ReplayingDecoder;->state(Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    return-void
.end method

.method protected state()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 311
    .local p0, "this":Lio/netty/handler/codec/ReplayingDecoder;, "Lio/netty/handler/codec/ReplayingDecoder<TS;>;"
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoder;->state:Ljava/lang/Object;

    return-object v0
.end method

.method protected state(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TS;"
        }
    .end annotation

    .prologue
    .line 319
    .local p0, "this":Lio/netty/handler/codec/ReplayingDecoder;, "Lio/netty/handler/codec/ReplayingDecoder<TS;>;"
    .local p1, "newState":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoder;->state:Ljava/lang/Object;

    .line 320
    .local v0, "oldState":Ljava/lang/Object;, "TS;"
    iput-object p1, p0, Lio/netty/handler/codec/ReplayingDecoder;->state:Ljava/lang/Object;

    .line 321
    return-object v0
.end method
