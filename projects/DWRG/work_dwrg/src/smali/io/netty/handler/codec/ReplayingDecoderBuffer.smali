.class final Lio/netty/handler/codec/ReplayingDecoderBuffer;
.super Lio/netty/buffer/ByteBuf;
.source "ReplayingDecoderBuffer.java"


# static fields
.field static final EMPTY_BUFFER:Lio/netty/handler/codec/ReplayingDecoderBuffer;

.field private static final REPLAY:Lio/netty/util/Signal;


# instance fields
.field private buffer:Lio/netty/buffer/ByteBuf;

.field private swapped:Lio/netty/buffer/SwappedByteBuf;

.field private terminated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lio/netty/handler/codec/ReplayingDecoder;->REPLAY:Lio/netty/util/Signal;

    sput-object v0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->REPLAY:Lio/netty/util/Signal;

    .line 45
    new-instance v0, Lio/netty/handler/codec/ReplayingDecoderBuffer;

    sget-object v1, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-direct {v0, v1}, Lio/netty/handler/codec/ReplayingDecoderBuffer;-><init>(Lio/netty/buffer/ByteBuf;)V

    sput-object v0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->EMPTY_BUFFER:Lio/netty/handler/codec/ReplayingDecoderBuffer;

    .line 48
    sget-object v0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->EMPTY_BUFFER:Lio/netty/handler/codec/ReplayingDecoderBuffer;

    invoke-virtual {v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->terminate()V

    .line 49
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lio/netty/buffer/ByteBuf;-><init>()V

    return-void
.end method

.method constructor <init>(Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 53
    invoke-direct {p0}, Lio/netty/buffer/ByteBuf;-><init>()V

    .line 54
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->setCumulation(Lio/netty/buffer/ByteBuf;)V

    .line 55
    return-void
.end method

.method private checkIndex(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 951
    add-int v0, p1, p2

    iget-object v1, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 952
    sget-object v0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->REPLAY:Lio/netty/util/Signal;

    throw v0

    .line 954
    :cond_0
    return-void
.end method

.method private checkReadableBytes(I)V
    .locals 1
    .param p1, "readableBytes"    # I

    .prologue
    .line 957
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 958
    sget-object v0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->REPLAY:Lio/netty/util/Signal;

    throw v0

    .line 960
    :cond_0
    return-void
.end method

.method private static reject()V
    .locals 2

    .prologue
    .line 1004
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not a replayable operation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    return-object v0
.end method

.method public array()[B
    .locals 1

    .prologue
    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public arrayOffset()I
    .locals 1

    .prologue
    .line 107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bytesBefore(B)I
    .locals 2
    .param p1, "value"    # B

    .prologue
    .line 323
    iget-object v1, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, p1}, Lio/netty/buffer/ByteBuf;->bytesBefore(B)I

    move-result v0

    .line 324
    .local v0, "bytes":I
    if-gez v0, :cond_0

    .line 325
    sget-object v1, Lio/netty/handler/codec/ReplayingDecoderBuffer;->REPLAY:Lio/netty/util/Signal;

    throw v1

    .line 327
    :cond_0
    return v0
.end method

.method public bytesBefore(IB)I
    .locals 2
    .param p1, "length"    # I
    .param p2, "value"    # B

    .prologue
    .line 332
    iget-object v1, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    .line 333
    .local v0, "readerIndex":I
    iget-object v1, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v0, v1, p2}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->bytesBefore(IIB)I

    move-result v1

    return v1
.end method

.method public bytesBefore(IIB)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "value"    # B

    .prologue
    .line 338
    iget-object v2, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    .line 339
    .local v1, "writerIndex":I
    if-lt p1, v1, :cond_0

    .line 340
    sget-object v2, Lio/netty/handler/codec/ReplayingDecoderBuffer;->REPLAY:Lio/netty/util/Signal;

    throw v2

    .line 343
    :cond_0
    sub-int v2, v1, p2

    if-gt p1, v2, :cond_2

    .line 344
    iget-object v2, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->bytesBefore(IIB)I

    move-result v0

    .line 351
    :cond_1
    return v0

    .line 347
    :cond_2
    iget-object v2, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    sub-int v3, v1, p1

    invoke-virtual {v2, p1, v3, p3}, Lio/netty/buffer/ByteBuf;->bytesBefore(IIB)I

    move-result v0

    .line 348
    .local v0, "res":I
    if-gez v0, :cond_1

    .line 349
    sget-object v2, Lio/netty/handler/codec/ReplayingDecoderBuffer;->REPLAY:Lio/netty/util/Signal;

    throw v2
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->terminated:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    .line 70
    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public capacity(I)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "newCapacity"    # I

    .prologue
    .line 76
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 77
    return-object p0
.end method

.method public clear()Lio/netty/buffer/ByteBuf;
    .locals 0

    .prologue
    .line 122
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 123
    return-object p0
.end method

.method public compareTo(Lio/netty/buffer/ByteBuf;)I
    .locals 1
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 133
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public copy()Lio/netty/buffer/ByteBuf;
    .locals 0

    .prologue
    .line 139
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 140
    return-object p0
.end method

.method public copy(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 146
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->copy(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public discardReadBytes()Lio/netty/buffer/ByteBuf;
    .locals 0

    .prologue
    .line 151
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 152
    return-object p0
.end method

.method public discardSomeReadBytes()Lio/netty/buffer/ByteBuf;
    .locals 0

    .prologue
    .line 964
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 965
    return-object p0
.end method

.method public duplicate()Lio/netty/buffer/ByteBuf;
    .locals 0

    .prologue
    .line 169
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 170
    return-object p0
.end method

.method public ensureWritable(IZ)I
    .locals 1
    .param p1, "minWritableBytes"    # I
    .param p2, "force"    # Z

    .prologue
    .line 163
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public ensureWritable(I)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "writableBytes"    # I

    .prologue
    .line 157
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 158
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 128
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public forEachByte(IILio/netty/buffer/ByteBufProcessor;)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "processor"    # Lio/netty/buffer/ByteBufProcessor;

    .prologue
    .line 367
    iget-object v2, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    .line 368
    .local v1, "writerIndex":I
    if-lt p1, v1, :cond_0

    .line 369
    sget-object v2, Lio/netty/handler/codec/ReplayingDecoderBuffer;->REPLAY:Lio/netty/util/Signal;

    throw v2

    .line 372
    :cond_0
    sub-int v2, v1, p2

    if-gt p1, v2, :cond_2

    .line 373
    iget-object v2, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->forEachByte(IILio/netty/buffer/ByteBufProcessor;)I

    move-result v0

    .line 380
    :cond_1
    return v0

    .line 376
    :cond_2
    iget-object v2, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    sub-int v3, v1, p1

    invoke-virtual {v2, p1, v3, p3}, Lio/netty/buffer/ByteBuf;->forEachByte(IILio/netty/buffer/ByteBufProcessor;)I

    move-result v0

    .line 377
    .local v0, "ret":I
    if-gez v0, :cond_1

    .line 378
    sget-object v2, Lio/netty/handler/codec/ReplayingDecoderBuffer;->REPLAY:Lio/netty/util/Signal;

    throw v2
.end method

.method public forEachByte(Lio/netty/buffer/ByteBufProcessor;)I
    .locals 2
    .param p1, "processor"    # Lio/netty/buffer/ByteBufProcessor;

    .prologue
    .line 357
    iget-object v1, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, p1}, Lio/netty/buffer/ByteBuf;->forEachByte(Lio/netty/buffer/ByteBufProcessor;)I

    move-result v0

    .line 358
    .local v0, "ret":I
    if-gez v0, :cond_0

    .line 359
    sget-object v1, Lio/netty/handler/codec/ReplayingDecoderBuffer;->REPLAY:Lio/netty/util/Signal;

    throw v1

    .line 361
    :cond_0
    return v0
.end method

.method public forEachByteDesc(IILio/netty/buffer/ByteBufProcessor;)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "processor"    # Lio/netty/buffer/ByteBufProcessor;

    .prologue
    .line 396
    add-int v0, p1, p2

    iget-object v1, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 397
    sget-object v0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->REPLAY:Lio/netty/util/Signal;

    throw v0

    .line 400
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->forEachByteDesc(IILio/netty/buffer/ByteBufProcessor;)I

    move-result v0

    return v0
.end method

.method public forEachByteDesc(Lio/netty/buffer/ByteBufProcessor;)I
    .locals 1
    .param p1, "processor"    # Lio/netty/buffer/ByteBufProcessor;

    .prologue
    .line 386
    iget-boolean v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->terminated:Z

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->forEachByteDesc(Lio/netty/buffer/ByteBufProcessor;)I

    move-result v0

    .line 390
    :goto_0
    return v0

    .line 389
    :cond_0
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 390
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBoolean(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 175
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 176
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getByte(I)B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 181
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 182
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v0

    return v0
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p3, "length"    # I

    .prologue
    .line 232
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 226
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 227
    return-object p0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p3, "length"    # I

    .prologue
    .line 220
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 221
    return-object p0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 213
    invoke-direct {p0, p1, p4}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 214
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/netty/buffer/ByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 215
    return-object p0
.end method

.method public getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "length"    # I

    .prologue
    .line 238
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 239
    return-object p0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 207
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 208
    return-object p0
.end method

.method public getBytes(I[B)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # [B

    .prologue
    .line 200
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 201
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->getBytes(I[B)Lio/netty/buffer/ByteBuf;

    .line 202
    return-object p0
.end method

.method public getBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 193
    invoke-direct {p0, p1, p4}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 194
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2, p3, p4}, Lio/netty/buffer/ByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 195
    return-object p0
.end method

.method public getChar(I)C
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 286
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 287
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getChar(I)C

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 298
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 299
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 292
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 293
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 244
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 245
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 256
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 257
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMedium(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 262
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 263
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getMedium(I)I

    move-result v0

    return v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 274
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 275
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getUnsignedByte(I)S
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 187
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 188
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedByte(I)S

    move-result v0

    return v0
.end method

.method public getUnsignedInt(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 250
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 251
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedInt(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUnsignedMedium(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 268
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 269
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedMedium(I)I

    move-result v0

    return v0
.end method

.method public getUnsignedShort(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 280
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 281
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->getUnsignedShort(I)I

    move-result v0

    return v0
.end method

.method public hasArray()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public hasMemoryAddress()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 304
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 305
    const/4 v0, 0x0

    return v0
.end method

.method public indexOf(IIB)I
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # B

    .prologue
    .line 310
    if-ne p1, p2, :cond_0

    .line 311
    const/4 v0, -0x1

    .line 318
    :goto_0
    return v0

    .line 314
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 315
    sget-object v0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->REPLAY:Lio/netty/util/Signal;

    throw v0

    .line 318
    :cond_1
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->indexOf(IIB)I

    move-result v0

    goto :goto_0
.end method

.method public internalNioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 784
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 785
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isDirect()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isDirect()Z

    move-result v0

    return v0
.end method

.method public isReadable()Z
    .locals 1

    .prologue
    .line 438
    iget-boolean v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->terminated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isReadable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isReadable(I)Z
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 443
    iget-boolean v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->terminated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->isReadable(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isWritable()Z
    .locals 1

    .prologue
    .line 813
    const/4 v0, 0x0

    return v0
.end method

.method public isWritable(I)Z
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 818
    const/4 v0, 0x0

    return v0
.end method

.method public markReaderIndex()Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->markReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 406
    return-object p0
.end method

.method public markWriterIndex()Lio/netty/buffer/ByteBuf;
    .locals 0

    .prologue
    .line 411
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 412
    return-object p0
.end method

.method public maxCapacity()I
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public maxWritableBytes()I
    .locals 1

    .prologue
    .line 828
    const/4 v0, 0x0

    return v0
.end method

.method public memoryAddress()J
    .locals 1

    .prologue
    .line 117
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public nioBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 760
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 761
    const/4 v0, 0x0

    return-object v0
.end method

.method public nioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 766
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 767
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public nioBufferCount()I
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v0

    return v0
.end method

.method public nioBuffers()[Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 772
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 773
    const/4 v0, 0x0

    return-object v0
.end method

.method public nioBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 778
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 779
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "endianness"    # Ljava/nio/ByteOrder;

    .prologue
    .line 422
    if-nez p1, :cond_0

    .line 423
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "endianness"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 425
    :cond_0
    invoke-virtual {p0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    if-ne p1, v1, :cond_1

    .line 433
    .end local p0    # "this":Lio/netty/handler/codec/ReplayingDecoderBuffer;
    :goto_0
    return-object p0

    .line 429
    .restart local p0    # "this":Lio/netty/handler/codec/ReplayingDecoderBuffer;
    :cond_1
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->swapped:Lio/netty/buffer/SwappedByteBuf;

    .line 430
    .local v0, "swapped":Lio/netty/buffer/SwappedByteBuf;
    if-nez v0, :cond_2

    .line 431
    new-instance v0, Lio/netty/buffer/SwappedByteBuf;

    .end local v0    # "swapped":Lio/netty/buffer/SwappedByteBuf;
    invoke-direct {v0, p0}, Lio/netty/buffer/SwappedByteBuf;-><init>(Lio/netty/buffer/ByteBuf;)V

    .restart local v0    # "swapped":Lio/netty/buffer/SwappedByteBuf;
    iput-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->swapped:Lio/netty/buffer/SwappedByteBuf;

    :cond_2
    move-object p0, v0

    .line 433
    goto :goto_0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public readBoolean()Z
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 458
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public readByte()B
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 464
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readByte()B

    move-result v0

    return v0
.end method

.method public readBytes(Ljava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .param p1, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p2, "length"    # I

    .prologue
    .line 515
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 516
    const/4 v0, 0x0

    return v0
.end method

.method public readBytes(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 521
    invoke-direct {p0, p1}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 522
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->readBytes(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "dst"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 508
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v0

    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 509
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 510
    return-object p0
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p2, "length"    # I

    .prologue
    .line 502
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 503
    return-object p0
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p2, "dstIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 495
    invoke-direct {p0, p3}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 496
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 497
    return-object p0
.end method

.method public readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "length"    # I

    .prologue
    .line 533
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 534
    return-object p0
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "dst"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 489
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 490
    return-object p0
.end method

.method public readBytes([B)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "dst"    # [B

    .prologue
    .line 482
    array-length v0, p1

    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 483
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->readBytes([B)Lio/netty/buffer/ByteBuf;

    .line 484
    return-object p0
.end method

.method public readBytes([BII)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 475
    invoke-direct {p0, p3}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 476
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->readBytes([BII)Lio/netty/buffer/ByteBuf;

    .line 477
    return-object p0
.end method

.method public readChar()C
    .locals 1

    .prologue
    .line 592
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 593
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readChar()C

    move-result v0

    return v0
.end method

.method public readDouble()D
    .locals 2

    .prologue
    .line 604
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 605
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    .prologue
    .line 598
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 599
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readFloat()F

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 1

    .prologue
    .line 550
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 551
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readInt()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2

    .prologue
    .line 562
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 563
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMedium()I
    .locals 1

    .prologue
    .line 568
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 569
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readMedium()I

    move-result v0

    return v0
.end method

.method public readShort()S
    .locals 1

    .prologue
    .line 580
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 581
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readShort()S

    move-result v0

    return v0
.end method

.method public readSlice(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 527
    invoke-direct {p0, p1}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 528
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->readSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()S
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 470
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readUnsignedByte()S

    move-result v0

    return v0
.end method

.method public readUnsignedInt()J
    .locals 2

    .prologue
    .line 556
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 557
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnsignedMedium()I
    .locals 1

    .prologue
    .line 574
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 575
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readUnsignedMedium()I

    move-result v0

    return v0
.end method

.method public readUnsignedShort()I
    .locals 1

    .prologue
    .line 586
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 587
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method public readableBytes()I
    .locals 2

    .prologue
    .line 448
    iget-boolean v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->terminated:Z

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 451
    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    iget-object v1, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public readerIndex()I
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v0

    return v0
.end method

.method public readerIndex(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "readerIndex"    # I

    .prologue
    .line 544
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 545
    return-object p0
.end method

.method public refCnt()I
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->refCnt()I

    move-result v0

    return v0
.end method

.method public release()Z
    .locals 1

    .prologue
    .line 987
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 988
    const/4 v0, 0x0

    return v0
.end method

.method public release(I)Z
    .locals 1
    .param p1, "decrement"    # I

    .prologue
    .line 993
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 994
    const/4 v0, 0x0

    return v0
.end method

.method public resetReaderIndex()Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->resetReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 611
    return-object p0
.end method

.method public resetWriterIndex()Lio/netty/buffer/ByteBuf;
    .locals 0

    .prologue
    .line 616
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 617
    return-object p0
.end method

.method public retain()Lio/netty/buffer/ByteBuf;
    .locals 0

    .prologue
    .line 975
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 976
    return-object p0
.end method

.method public retain(I)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "increment"    # I

    .prologue
    .line 981
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 982
    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->retain(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setBoolean(IZ)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .prologue
    .line 622
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 623
    return-object p0
.end method

.method public setByte(II)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 628
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 629
    return-object p0
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "length"    # I

    .prologue
    .line 670
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 671
    const/4 v0, 0x0

    return v0
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/nio/channels/ScatteringByteChannel;
    .param p3, "length"    # I

    .prologue
    .line 682
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 683
    const/4 v0, 0x0

    return v0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 664
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 665
    return-object p0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;
    .param p3, "length"    # I

    .prologue
    .line 658
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 659
    return-object p0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 652
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 653
    return-object p0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 646
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 647
    return-object p0
.end method

.method public setBytes(I[B)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "src"    # [B

    .prologue
    .line 640
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 641
    return-object p0
.end method

.method public setBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "src"    # [B
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 634
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 635
    return-object p0
.end method

.method public setChar(II)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 718
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 719
    return-object p0
.end method

.method setCumulation(Lio/netty/buffer/ByteBuf;)V
    .locals 0
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 58
    iput-object p1, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    .line 59
    return-void
.end method

.method public setDouble(ID)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # D

    .prologue
    .line 730
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 731
    return-object p0
.end method

.method public setFloat(IF)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # F

    .prologue
    .line 724
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 725
    return-object p0
.end method

.method public setIndex(II)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "readerIndex"    # I
    .param p2, "writerIndex"    # I

    .prologue
    .line 688
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 689
    return-object p0
.end method

.method public setInt(II)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 694
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 695
    return-object p0
.end method

.method public setLong(IJ)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 700
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 701
    return-object p0
.end method

.method public setMedium(II)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 706
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 707
    return-object p0
.end method

.method public setShort(II)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 712
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 713
    return-object p0
.end method

.method public setZero(II)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 676
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 677
    return-object p0
.end method

.method public skipBytes(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 736
    invoke-direct {p0, p1}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkReadableBytes(I)V

    .line 737
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/ByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 738
    return-object p0
.end method

.method public slice()Lio/netty/buffer/ByteBuf;
    .locals 0

    .prologue
    .line 743
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 744
    return-object p0
.end method

.method public slice(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 749
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 750
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method terminate()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->terminated:Z

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 803
    const-string v1, "ridx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 804
    invoke-virtual {p0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->readerIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 805
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 806
    const-string v1, "widx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 807
    invoke-virtual {p0}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->writerIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 808
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 802
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(IILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 790
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->checkIndex(II)V

    .line 791
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/ByteBuf;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "charsetName"    # Ljava/nio/charset/Charset;

    .prologue
    .line 796
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 797
    const/4 v0, 0x0

    return-object v0
.end method

.method public unwrap()Lio/netty/buffer/ByteBuf;
    .locals 0

    .prologue
    .line 999
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 1000
    return-object p0
.end method

.method public writableBytes()I
    .locals 1

    .prologue
    .line 823
    const/4 v0, 0x0

    return v0
.end method

.method public writeBoolean(Z)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 833
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 834
    return-object p0
.end method

.method public writeByte(I)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 839
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 840
    return-object p0
.end method

.method public writeBytes(Ljava/io/InputStream;I)I
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "length"    # I

    .prologue
    .line 881
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 882
    const/4 v0, 0x0

    return v0
.end method

.method public writeBytes(Ljava/nio/channels/ScatteringByteChannel;I)I
    .locals 1
    .param p1, "in"    # Ljava/nio/channels/ScatteringByteChannel;
    .param p2, "length"    # I

    .prologue
    .line 887
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 888
    const/4 v0, 0x0

    return v0
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "src"    # Lio/netty/buffer/ByteBuf;

    .prologue
    .line 875
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 876
    return-object p0
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "src"    # Lio/netty/buffer/ByteBuf;
    .param p2, "length"    # I

    .prologue
    .line 869
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 870
    return-object p0
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "src"    # Lio/netty/buffer/ByteBuf;
    .param p2, "srcIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 863
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 864
    return-object p0
.end method

.method public writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 857
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 858
    return-object p0
.end method

.method public writeBytes([B)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "src"    # [B

    .prologue
    .line 851
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 852
    return-object p0
.end method

.method public writeBytes([BII)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "src"    # [B
    .param p2, "srcIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 845
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 846
    return-object p0
.end method

.method public writeChar(I)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 934
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 935
    return-object p0
.end method

.method public writeDouble(D)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "value"    # D

    .prologue
    .line 946
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 947
    return-object p0
.end method

.method public writeFloat(F)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 940
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 941
    return-object p0
.end method

.method public writeInt(I)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 893
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 894
    return-object p0
.end method

.method public writeLong(J)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "value"    # J

    .prologue
    .line 899
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 900
    return-object p0
.end method

.method public writeMedium(I)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 905
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 906
    return-object p0
.end method

.method public writeShort(I)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 928
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 929
    return-object p0
.end method

.method public writeZero(I)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "length"    # I

    .prologue
    .line 911
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 912
    return-object p0
.end method

.method public writerIndex()I
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lio/netty/handler/codec/ReplayingDecoderBuffer;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    return v0
.end method

.method public writerIndex(I)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "writerIndex"    # I

    .prologue
    .line 922
    invoke-static {}, Lio/netty/handler/codec/ReplayingDecoderBuffer;->reject()V

    .line 923
    return-object p0
.end method
