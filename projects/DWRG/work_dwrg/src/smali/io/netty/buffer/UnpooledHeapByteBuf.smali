.class public Lio/netty/buffer/UnpooledHeapByteBuf;
.super Lio/netty/buffer/AbstractReferenceCountedByteBuf;
.source "UnpooledHeapByteBuf.java"


# instance fields
.field private final alloc:Lio/netty/buffer/ByteBufAllocator;

.field private array:[B

.field private tmpNioBuf:Ljava/nio/ByteBuffer;


# direct methods
.method protected constructor <init>(Lio/netty/buffer/ByteBufAllocator;II)V
    .locals 6
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "initialCapacity"    # I
    .param p3, "maxCapacity"    # I

    .prologue
    const/4 v3, 0x0

    .line 45
    new-array v2, p2, [B

    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/UnpooledHeapByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;[BIII)V

    .line 46
    return-void
.end method

.method protected constructor <init>(Lio/netty/buffer/ByteBufAllocator;[BI)V
    .locals 6
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "initialArray"    # [B
    .param p3, "maxCapacity"    # I

    .prologue
    .line 55
    const/4 v3, 0x0

    array-length v4, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/UnpooledHeapByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;[BIII)V

    .line 56
    return-void
.end method

.method private constructor <init>(Lio/netty/buffer/ByteBufAllocator;[BIII)V
    .locals 5
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "initialArray"    # [B
    .param p3, "readerIndex"    # I
    .param p4, "writerIndex"    # I
    .param p5, "maxCapacity"    # I

    .prologue
    .line 61
    invoke-direct {p0, p5}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;-><init>(I)V

    .line 63
    if-nez p1, :cond_0

    .line 64
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alloc"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    if-nez p2, :cond_1

    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "initialArray"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    array-length v0, p2

    if-le v0, p5, :cond_2

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 71
    const-string v1, "initialCapacity(%d) > maxCapacity(%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 70
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
    :cond_2
    iput-object p1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->alloc:Lio/netty/buffer/ByteBufAllocator;

    .line 75
    invoke-direct {p0, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->setArray([B)V

    .line 76
    invoke-virtual {p0, p3, p4}, Lio/netty/buffer/UnpooledHeapByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    .line 77
    return-void
.end method

.method private getBytes(ILjava/nio/channels/GatheringByteChannel;IZ)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p3, "length"    # I
    .param p4, "internal"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 203
    if-eqz p4, :cond_0

    .line 204
    invoke-direct {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 208
    .local v0, "tmpBuf":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    add-int v2, p1, p3

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-interface {p2, v1}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    return v1

    .line 206
    .end local v0    # "tmpBuf":Ljava/nio/ByteBuffer;
    :cond_0
    iget-object v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .restart local v0    # "tmpBuf":Ljava/nio/ByteBuffer;
    goto :goto_0
.end method

.method private internalNioBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    .line 434
    .local v0, "tmpNioBuf":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_0

    .line 435
    iget-object v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    .line 437
    :cond_0
    return-object v0
.end method

.method private setArray([B)V
    .locals 1
    .param p1, "initialArray"    # [B

    .prologue
    .line 80
    iput-object p1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    .line 82
    return-void
.end method


# virtual methods
.method protected _getByte(I)B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 292
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method protected _getInt(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 327
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    .line 328
    iget-object v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    .line 327
    or-int/2addr v0, v1

    .line 329
    iget-object v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v2, p1, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 327
    or-int/2addr v0, v1

    .line 330
    iget-object v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v2, p1, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 327
    or-int/2addr v0, v1

    return v0
.end method

.method protected _getLong(I)J
    .locals 8
    .param p1, "index"    # I

    .prologue
    const-wide/16 v6, 0xff

    .line 341
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    aget-byte v0, v0, p1

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    .line 342
    iget-object v2, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v3, p1, 0x1

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    .line 341
    or-long/2addr v0, v2

    .line 343
    iget-object v2, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v3, p1, 0x2

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    .line 341
    or-long/2addr v0, v2

    .line 344
    iget-object v2, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v3, p1, 0x3

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    .line 341
    or-long/2addr v0, v2

    .line 345
    iget-object v2, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v3, p1, 0x4

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    .line 341
    or-long/2addr v0, v2

    .line 346
    iget-object v2, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v3, p1, 0x5

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    .line 341
    or-long/2addr v0, v2

    .line 347
    iget-object v2, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v3, p1, 0x6

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    .line 341
    or-long/2addr v0, v2

    .line 348
    iget-object v2, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v3, p1, 0x7

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v6

    .line 341
    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected _getShort(I)S
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    aget-byte v0, v0, p1

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method protected _getUnsignedMedium(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 315
    iget-object v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v2, p1, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    .line 314
    or-int/2addr v0, v1

    .line 316
    iget-object v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v2, p1, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    .line 314
    or-int/2addr v0, v1

    return v0
.end method

.method protected _setByte(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 360
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    int-to-byte v1, p2

    aput-byte v1, v0, p1

    .line 361
    return-void
.end method

.method protected _setInt(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 399
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    ushr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 400
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v1, p1, 0x1

    ushr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 401
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v1, p1, 0x2

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 402
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v1, p1, 0x3

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 403
    return-void
.end method

.method protected _setLong(IJ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 414
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    const/16 v1, 0x38

    ushr-long v2, p2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 415
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x30

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 416
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v1, p1, 0x2

    const/16 v2, 0x28

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 417
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v1, p1, 0x3

    const/16 v2, 0x20

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 418
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v1, p1, 0x4

    const/16 v2, 0x18

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 419
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v1, p1, 0x5

    const/16 v2, 0x10

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 420
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v1, p1, 0x6

    const/16 v2, 0x8

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 421
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v1, p1, 0x7

    long-to-int v2, p2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 422
    return-void
.end method

.method protected _setMedium(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 385
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 386
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v1, p1, 0x1

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 387
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v1, p1, 0x2

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 388
    return-void
.end method

.method protected _setShort(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 373
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    add-int/lit8 v1, p1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 374
    return-void
.end method

.method public alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->alloc:Lio/netty/buffer/ByteBufAllocator;

    return-object v0
.end method

.method public array()[B
    .locals 1

    .prologue
    .line 141
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 142
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    return-object v0
.end method

.method public arrayOffset()I
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 102
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    array-length v0, v0

    return v0
.end method

.method public capacity(I)Lio/netty/buffer/ByteBuf;
    .locals 7
    .param p1, "newCapacity"    # I

    .prologue
    const/4 v6, 0x0

    .line 107
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 108
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->maxCapacity()I

    move-result v4

    if-le p1, v4, :cond_1

    .line 109
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "newCapacity: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 112
    :cond_1
    iget-object v4, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    array-length v1, v4

    .line 113
    .local v1, "oldCapacity":I
    if-le p1, v1, :cond_3

    .line 114
    new-array v0, p1, [B

    .line 115
    .local v0, "newArray":[B
    iget-object v4, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    iget-object v5, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    array-length v5, v5

    invoke-static {v4, v6, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    invoke-direct {p0, v0}, Lio/netty/buffer/UnpooledHeapByteBuf;->setArray([B)V

    .line 131
    .end local v0    # "newArray":[B
    :cond_2
    :goto_0
    return-object p0

    .line 117
    :cond_3
    if-ge p1, v1, :cond_2

    .line 118
    new-array v0, p1, [B

    .line 119
    .restart local v0    # "newArray":[B
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->readerIndex()I

    move-result v2

    .line 120
    .local v2, "readerIndex":I
    if-ge v2, p1, :cond_5

    .line 121
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->writerIndex()I

    move-result v3

    .line 122
    .local v3, "writerIndex":I
    if-le v3, p1, :cond_4

    .line 123
    move v3, p1

    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 125
    :cond_4
    iget-object v4, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    sub-int v5, v3, v2

    invoke-static {v4, v2, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    .end local v3    # "writerIndex":I
    :goto_1
    invoke-direct {p0, v0}, Lio/netty/buffer/UnpooledHeapByteBuf;->setArray([B)V

    goto :goto_0

    .line 127
    :cond_5
    invoke-virtual {p0, p1, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    goto :goto_1
.end method

.method public copy(II)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 426
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->checkIndex(II)V

    .line 427
    new-array v0, p2, [B

    .line 428
    .local v0, "copiedArray":[B
    iget-object v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 429
    new-instance v1, Lio/netty/buffer/UnpooledHeapByteBuf;

    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v2

    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->maxCapacity()I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lio/netty/buffer/UnpooledHeapByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;[BI)V

    return-object v1
.end method

.method protected deallocate()V
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    .line 443
    return-void
.end method

.method public getByte(I)B
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 286
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 287
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->_getByte(I)B

    move-result v0

    return v0
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/buffer/UnpooledHeapByteBuf;->getBytes(ILjava/nio/channels/GatheringByteChannel;IZ)I

    move-result v0

    return v0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 6
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 162
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/UnpooledHeapByteBuf;->checkDstIndex(IIII)V

    .line 163
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v2

    int-to-long v4, p3

    add-long/2addr v2, v4

    int-to-long v4, p4

    move v1, p1

    invoke-static/range {v0 .. v5}, Lio/netty/util/internal/PlatformDependent;->copyMemory([BIJJ)V

    .line 170
    :goto_0
    return-object p0

    .line 165
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p0, p1, v0, v1, p4}, Lio/netty/buffer/UnpooledHeapByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-virtual {p2, p3, v0, p1, p4}, Lio/netty/buffer/ByteBuf;->setBytes(I[BII)Lio/netty/buffer/ByteBuf;

    goto :goto_0
.end method

.method public getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 189
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 190
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-virtual {p2, v0, p1, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 191
    return-object p0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "index"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 182
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 183
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->capacity()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p2, v0, p1, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 184
    return-object p0
.end method

.method public getBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 175
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/UnpooledHeapByteBuf;->checkDstIndex(IIII)V

    .line 176
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    return-object p0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 321
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 322
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->_getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 335
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 336
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->_getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 297
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 298
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->_getShort(I)S

    move-result v0

    return v0
.end method

.method public getUnsignedMedium(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 308
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 309
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledHeapByteBuf;->_getUnsignedMedium(I)I

    move-result v0

    return v0
.end method

.method public hasArray()Z
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public hasMemoryAddress()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public internalNioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 280
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->checkIndex(II)V

    .line 281
    invoke-direct {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    add-int v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public isDirect()Z
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public memoryAddress()J
    .locals 1

    .prologue
    .line 157
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public nioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 269
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 270
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {v0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public nioBufferCount()I
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method public nioBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 275
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public readBytes(Ljava/nio/channels/GatheringByteChannel;I)I
    .locals 3
    .param p1, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-virtual {p0, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->checkReadableBytes(I)V

    .line 214
    iget v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->readerIndex:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, p2, v2}, Lio/netty/buffer/UnpooledHeapByteBuf;->getBytes(ILjava/nio/channels/GatheringByteChannel;IZ)I

    move-result v0

    .line 215
    .local v0, "readBytes":I
    iget v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->readerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->readerIndex:I

    .line 216
    return v0
.end method

.method public setByte(II)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 353
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 354
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->_setByte(II)V

    .line 355
    return-object p0
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 249
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-virtual {p2, v0, p1, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/nio/channels/ScatteringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 256
    :try_start_0
    invoke-direct {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    add-int v2, p1, p3

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-interface {p2, v1}, Ljava/nio/channels/ScatteringByteChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 258
    :goto_0
    return v1

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "ignored":Ljava/nio/channels/ClosedChannelException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 6
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 221
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/UnpooledHeapByteBuf;->checkSrcIndex(IIII)V

    .line 222
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v0

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-object v2, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    int-to-long v4, p4

    move v3, p1

    invoke-static/range {v0 .. v5}, Lio/netty/util/internal/PlatformDependent;->copyMemory(J[BIJ)V

    .line 229
    :goto_0
    return-object p0

    .line 224
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p0, p1, v0, v1, p4}, Lio/netty/buffer/UnpooledHeapByteBuf;->setBytes(I[BII)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 227
    :cond_1
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-virtual {p2, p3, v0, p1, p4}, Lio/netty/buffer/ByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    goto :goto_0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 241
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 242
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p2, v0, p1, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 243
    return-object p0
.end method

.method public setBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # [B
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 234
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/UnpooledHeapByteBuf;->checkSrcIndex(IIII)V

    .line 235
    iget-object v0, p0, Lio/netty/buffer/UnpooledHeapByteBuf;->array:[B

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    return-object p0
.end method

.method public setInt(II)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 392
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 393
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->_setInt(II)V

    .line 394
    return-object p0
.end method

.method public setLong(IJ)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 407
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 408
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/UnpooledHeapByteBuf;->_setLong(IJ)V

    .line 409
    return-object p0
.end method

.method public setMedium(II)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 378
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 379
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->_setMedium(II)V

    .line 380
    return-object p0
.end method

.method public setShort(II)Lio/netty/buffer/ByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 365
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledHeapByteBuf;->ensureAccessible()V

    .line 366
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledHeapByteBuf;->_setShort(II)V

    .line 367
    return-object p0
.end method

.method public unwrap()Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    return-object v0
.end method
