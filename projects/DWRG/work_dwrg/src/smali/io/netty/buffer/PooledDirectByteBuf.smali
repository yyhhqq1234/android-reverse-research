.class final Lio/netty/buffer/PooledDirectByteBuf;
.super Lio/netty/buffer/PooledByteBuf;
.source "PooledDirectByteBuf.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/buffer/PooledByteBuf",
        "<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# static fields
.field private static final RECYCLER:Lio/netty/util/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/Recycler",
            "<",
            "Lio/netty/buffer/PooledDirectByteBuf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lio/netty/buffer/PooledDirectByteBuf$1;

    invoke-direct {v0}, Lio/netty/buffer/PooledDirectByteBuf$1;-><init>()V

    sput-object v0, Lio/netty/buffer/PooledDirectByteBuf;->RECYCLER:Lio/netty/util/Recycler;

    .line 36
    return-void
.end method

.method private constructor <init>(Lio/netty/util/Recycler$Handle;I)V
    .locals 0
    .param p2, "maxCapacity"    # I

    .prologue
    .line 46
    .local p1, "recyclerHandle":Lio/netty/util/Recycler$Handle;, "Lio/netty/util/Recycler$Handle;"
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/PooledByteBuf;-><init>(Lio/netty/util/Recycler$Handle;I)V

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/Recycler$Handle;ILio/netty/buffer/PooledDirectByteBuf;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/PooledDirectByteBuf;-><init>(Lio/netty/util/Recycler$Handle;I)V

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
    .line 196
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/PooledDirectByteBuf;->checkIndex(II)V

    .line 197
    if-nez p3, :cond_0

    .line 198
    const/4 v1, 0x0

    .line 209
    :goto_0
    return v1

    .line 202
    :cond_0
    if-eqz p4, :cond_1

    .line 203
    invoke-virtual {p0}, Lio/netty/buffer/PooledDirectByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 207
    .local v0, "tmpBuf":Ljava/nio/ByteBuffer;
    :goto_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result p1

    .line 208
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    add-int v2, p1, p3

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 209
    invoke-interface {p2, v0}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    goto :goto_0

    .line 205
    .end local v0    # "tmpBuf":Ljava/nio/ByteBuffer;
    :cond_1
    iget-object v1, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .restart local v0    # "tmpBuf":Ljava/nio/ByteBuffer;
    goto :goto_1
.end method

.method private getBytes(ILjava/io/OutputStream;IZ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "length"    # I
    .param p4, "internal"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/PooledDirectByteBuf;->checkIndex(II)V

    .line 166
    if-nez p3, :cond_0

    .line 180
    :goto_0
    return-void

    .line 170
    :cond_0
    new-array v0, p3, [B

    .line 172
    .local v0, "tmp":[B
    if-eqz p4, :cond_1

    .line 173
    invoke-virtual {p0}, Lio/netty/buffer/PooledDirectByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 177
    .local v1, "tmpBuf":Ljava/nio/ByteBuffer;
    :goto_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 178
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 179
    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    .line 175
    .end local v1    # "tmpBuf":Ljava/nio/ByteBuffer;
    :cond_1
    iget-object v2, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .restart local v1    # "tmpBuf":Ljava/nio/ByteBuffer;
    goto :goto_1
.end method

.method private getBytes(ILjava/nio/ByteBuffer;Z)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .param p3, "internal"    # Z

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->checkIndex(I)V

    .line 137
    invoke-virtual {p0}, Lio/netty/buffer/PooledDirectByteBuf;->capacity()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 139
    .local v0, "bytesToCopy":I
    if-eqz p3, :cond_0

    .line 140
    invoke-virtual {p0}, Lio/netty/buffer/PooledDirectByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 144
    .local v1, "tmpBuf":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result p1

    .line 145
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    add-int v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 146
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 147
    return-void

    .line 142
    .end local v1    # "tmpBuf":Ljava/nio/ByteBuffer;
    :cond_0
    iget-object v2, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .restart local v1    # "tmpBuf":Ljava/nio/ByteBuffer;
    goto :goto_0
.end method

.method private getBytes(I[BIIZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I
    .param p5, "internal"    # Z

    .prologue
    .line 109
    array-length v1, p2

    invoke-virtual {p0, p1, p4, p3, v1}, Lio/netty/buffer/PooledDirectByteBuf;->checkDstIndex(IIII)V

    .line 111
    if-eqz p5, :cond_0

    .line 112
    invoke-virtual {p0}, Lio/netty/buffer/PooledDirectByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 116
    .local v0, "tmpBuf":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result p1

    .line 117
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    add-int v2, p1, p4

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 118
    invoke-virtual {v0, p2, p3, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 119
    return-void

    .line 114
    .end local v0    # "tmpBuf":Ljava/nio/ByteBuffer;
    :cond_0
    iget-object v1, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .restart local v0    # "tmpBuf":Ljava/nio/ByteBuffer;
    goto :goto_0
.end method

.method static newInstance(I)Lio/netty/buffer/PooledDirectByteBuf;
    .locals 2
    .param p0, "maxCapacity"    # I

    .prologue
    .line 39
    sget-object v1, Lio/netty/buffer/PooledDirectByteBuf;->RECYCLER:Lio/netty/util/Recycler;

    invoke-virtual {v1}, Lio/netty/util/Recycler;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/PooledDirectByteBuf;

    .line 40
    .local v0, "buf":Lio/netty/buffer/PooledDirectByteBuf;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/netty/buffer/PooledDirectByteBuf;->setRefCnt(I)V

    .line 41
    invoke-virtual {v0, p0}, Lio/netty/buffer/PooledDirectByteBuf;->maxCapacity(I)V

    .line 42
    return-object v0
.end method


# virtual methods
.method protected _getByte(I)B
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0
.end method

.method protected _getInt(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method protected _getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _getShort(I)S
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 66
    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method protected _getUnsignedMedium(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result p1

    .line 72
    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x10

    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v1, v0

    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method protected _setByte(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 222
    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result v1

    int-to-byte v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 223
    return-void
.end method

.method protected _setInt(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 240
    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 241
    return-void
.end method

.method protected _setLong(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 245
    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {v0, v1, p2, p3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 246
    return-void
.end method

.method protected _setMedium(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 232
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result p1

    .line 233
    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    invoke-virtual {v0, p1, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 234
    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x1

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 235
    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    add-int/lit8 v1, p1, 0x2

    int-to-byte v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 236
    return-void
.end method

.method protected _setShort(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 227
    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result v1

    int-to-short v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 228
    return-void
.end method

.method public array()[B
    .locals 2

    .prologue
    .line 355
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "direct buffer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public arrayOffset()I
    .locals 2

    .prologue
    .line 360
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "direct buffer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copy(II)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 318
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledDirectByteBuf;->checkIndex(II)V

    .line 319
    invoke-virtual {p0}, Lio/netty/buffer/PooledDirectByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/buffer/PooledDirectByteBuf;->maxCapacity()I

    move-result v2

    invoke-interface {v1, p2, v2}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 320
    .local v0, "copy":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v0, p0, p1, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 321
    return-object v0
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
    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/buffer/PooledDirectByteBuf;->getBytes(ILjava/nio/channels/GatheringByteChannel;IZ)I

    move-result v0

    return v0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 5
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 87
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v2

    invoke-virtual {p0, p1, p4, p3, v2}, Lio/netty/buffer/PooledDirectByteBuf;->checkDstIndex(IIII)V

    .line 88
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v2

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {p0, p1, v2, v3, p4}, Lio/netty/buffer/PooledDirectByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 99
    :cond_0
    :goto_0
    return-object p0

    .line 90
    :cond_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 91
    invoke-virtual {p2, p3, p4}, Lio/netty/buffer/ByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 92
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 93
    .local v1, "bbLen":I
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/PooledDirectByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 94
    add-int/2addr p1, v1

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 97
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "bbLen":I
    :cond_2
    invoke-virtual {p2, p3, p0, p1, p4}, Lio/netty/buffer/ByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

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
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/buffer/PooledDirectByteBuf;->getBytes(ILjava/io/OutputStream;IZ)V

    .line 161
    return-object p0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/buffer/PooledDirectByteBuf;->getBytes(ILjava/nio/ByteBuffer;Z)V

    .line 132
    return-object p0
.end method

.method public getBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 6
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 104
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PooledDirectByteBuf;->getBytes(I[BIIZ)V

    .line 105
    return-object p0
.end method

.method public hasArray()Z
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public hasMemoryAddress()Z
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public internalNioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 343
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledDirectByteBuf;->checkIndex(II)V

    .line 344
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result p1

    .line 345
    invoke-virtual {p0}, Lio/netty/buffer/PooledDirectByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

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
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public memoryAddress()J
    .locals 1

    .prologue
    .line 370
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected bridge synthetic newInternalNioBuffer(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->newInternalNioBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected newInternalNioBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "memory"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public nioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 331
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledDirectByteBuf;->checkIndex(II)V

    .line 332
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result p1

    .line 333
    iget-object v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v0

    add-int v1, p1, p2

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public nioBufferCount()I
    .locals 1

    .prologue
    .line 326
    const/4 v0, 0x1

    return v0
.end method

.method public nioBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 338
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledDirectByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v0, v1

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
    .line 214
    invoke-virtual {p0, p2}, Lio/netty/buffer/PooledDirectByteBuf;->checkReadableBytes(I)V

    .line 215
    iget v1, p0, Lio/netty/buffer/PooledDirectByteBuf;->readerIndex:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, p2, v2}, Lio/netty/buffer/PooledDirectByteBuf;->getBytes(ILjava/nio/channels/GatheringByteChannel;IZ)I

    move-result v0

    .line 216
    .local v0, "readBytes":I
    iget v1, p0, Lio/netty/buffer/PooledDirectByteBuf;->readerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/PooledDirectByteBuf;->readerIndex:I

    .line 217
    return v0
.end method

.method public readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p0, p2}, Lio/netty/buffer/PooledDirectByteBuf;->checkReadableBytes(I)V

    .line 185
    iget v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->readerIndex:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lio/netty/buffer/PooledDirectByteBuf;->getBytes(ILjava/io/OutputStream;IZ)V

    .line 186
    iget v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->readerIndex:I

    add-int/2addr v0, p2

    iput v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->readerIndex:I

    .line 187
    return-object p0
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "dst"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 151
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 152
    .local v0, "length":I
    invoke-virtual {p0, v0}, Lio/netty/buffer/PooledDirectByteBuf;->checkReadableBytes(I)V

    .line 153
    iget v1, p0, Lio/netty/buffer/PooledDirectByteBuf;->readerIndex:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Lio/netty/buffer/PooledDirectByteBuf;->getBytes(ILjava/nio/ByteBuffer;Z)V

    .line 154
    iget v1, p0, Lio/netty/buffer/PooledDirectByteBuf;->readerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/PooledDirectByteBuf;->readerIndex:I

    .line 155
    return-object p0
.end method

.method public readBytes([BII)Lio/netty/buffer/ByteBuf;
    .locals 6
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I
    .param p3, "length"    # I

    .prologue
    .line 123
    invoke-virtual {p0, p3}, Lio/netty/buffer/PooledDirectByteBuf;->checkReadableBytes(I)V

    .line 124
    iget v1, p0, Lio/netty/buffer/PooledDirectByteBuf;->readerIndex:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/PooledDirectByteBuf;->getBytes(I[BIIZ)V

    .line 125
    iget v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->readerIndex:I

    add-int/2addr v0, p3

    iput v0, p0, Lio/netty/buffer/PooledDirectByteBuf;->readerIndex:I

    .line 126
    return-object p0
.end method

.method protected recycler()Lio/netty/util/Recycler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/util/Recycler",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 375
    sget-object v0, Lio/netty/buffer/PooledDirectByteBuf;->RECYCLER:Lio/netty/util/Recycler;

    return-object v0
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/PooledDirectByteBuf;->checkIndex(II)V

    .line 292
    new-array v1, p3, [B

    .line 293
    .local v1, "tmp":[B
    invoke-virtual {p2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 294
    .local v0, "readBytes":I
    if-gtz v0, :cond_0

    .line 300
    :goto_0
    return v0

    .line 297
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/PooledDirectByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 298
    .local v2, "tmpBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v3

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 299
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 4
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/nio/channels/ScatteringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/PooledDirectByteBuf;->checkIndex(II)V

    .line 306
    invoke-virtual {p0}, Lio/netty/buffer/PooledDirectByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 307
    .local v1, "tmpBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result p1

    .line 308
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    add-int v3, p1, p3

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 310
    :try_start_0
    invoke-interface {p2, v1}, Ljava/nio/channels/ScatteringByteChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 312
    :goto_0
    return v2

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "ignored":Ljava/nio/channels/ClosedChannelException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 5
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 250
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v2

    invoke-virtual {p0, p1, p4, p3, v2}, Lio/netty/buffer/PooledDirectByteBuf;->checkSrcIndex(IIII)V

    .line 251
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 252
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v2

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v3

    add-int/2addr v3, p3

    invoke-virtual {p0, p1, v2, v3, p4}, Lio/netty/buffer/PooledDirectByteBuf;->setBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 262
    :cond_0
    :goto_0
    return-object p0

    .line 253
    :cond_1
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 254
    invoke-virtual {p2, p3, p4}, Lio/netty/buffer/ByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 255
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 256
    .local v1, "bbLen":I
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/PooledDirectByteBuf;->setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 257
    add-int/2addr p1, v1

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 260
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "bbLen":I
    :cond_2
    invoke-virtual {p2, p3, p0, p1, p4}, Lio/netty/buffer/ByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    goto :goto_0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 277
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/PooledDirectByteBuf;->checkIndex(II)V

    .line 278
    invoke-virtual {p0}, Lio/netty/buffer/PooledDirectByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 279
    .local v0, "tmpBuf":Ljava/nio/ByteBuffer;
    if-ne p2, v0, :cond_0

    .line 280
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 283
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result p1

    .line 284
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 285
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 286
    return-object p0
.end method

.method public setBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "index"    # I
    .param p2, "src"    # [B
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 267
    array-length v1, p2

    invoke-virtual {p0, p1, p4, p3, v1}, Lio/netty/buffer/PooledDirectByteBuf;->checkSrcIndex(IIII)V

    .line 268
    invoke-virtual {p0}, Lio/netty/buffer/PooledDirectByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 269
    .local v0, "tmpBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledDirectByteBuf;->idx(I)I

    move-result p1

    .line 270
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    add-int v2, p1, p4

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 271
    invoke-virtual {v0, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 272
    return-object p0
.end method
