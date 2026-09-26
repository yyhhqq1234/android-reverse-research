.class final Lio/netty/buffer/PooledHeapByteBuf;
.super Lio/netty/buffer/PooledByteBuf;
.source "PooledHeapByteBuf.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/buffer/PooledByteBuf",
        "<[B>;"
    }
.end annotation


# static fields
.field private static final RECYCLER:Lio/netty/util/Recycler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/Recycler",
            "<",
            "Lio/netty/buffer/PooledHeapByteBuf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lio/netty/buffer/PooledHeapByteBuf$1;

    invoke-direct {v0}, Lio/netty/buffer/PooledHeapByteBuf$1;-><init>()V

    sput-object v0, Lio/netty/buffer/PooledHeapByteBuf;->RECYCLER:Lio/netty/util/Recycler;

    .line 35
    return-void
.end method

.method private constructor <init>(Lio/netty/util/Recycler$Handle;I)V
    .locals 0
    .param p2, "maxCapacity"    # I

    .prologue
    .line 45
    .local p1, "recyclerHandle":Lio/netty/util/Recycler$Handle;, "Lio/netty/util/Recycler$Handle;"
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/PooledByteBuf;-><init>(Lio/netty/util/Recycler$Handle;I)V

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/Recycler$Handle;ILio/netty/buffer/PooledHeapByteBuf;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/PooledHeapByteBuf;-><init>(Lio/netty/util/Recycler$Handle;I)V

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
    .line 134
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/PooledHeapByteBuf;->checkIndex(II)V

    .line 135
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    .line 137
    if-eqz p4, :cond_0

    .line 138
    invoke-virtual {p0}, Lio/netty/buffer/PooledHeapByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 142
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

    .line 140
    .end local v0    # "tmpBuf":Ljava/nio/ByteBuffer;
    :cond_0
    iget-object v1, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .restart local v0    # "tmpBuf":Ljava/nio/ByteBuffer;
    goto :goto_0
.end method

.method static newInstance(I)Lio/netty/buffer/PooledHeapByteBuf;
    .locals 2
    .param p0, "maxCapacity"    # I

    .prologue
    .line 38
    sget-object v1, Lio/netty/buffer/PooledHeapByteBuf;->RECYCLER:Lio/netty/util/Recycler;

    invoke-virtual {v1}, Lio/netty/util/Recycler;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/PooledHeapByteBuf;

    .line 39
    .local v0, "buf":Lio/netty/buffer/PooledHeapByteBuf;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/netty/buffer/PooledHeapByteBuf;->setRefCnt(I)V

    .line 40
    invoke-virtual {v0, p0}, Lio/netty/buffer/PooledHeapByteBuf;->maxCapacity(I)V

    .line 41
    return-object v0
.end method


# virtual methods
.method protected _getByte(I)B
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result v1

    aget-byte v0, v0, v1

    return v0
.end method

.method protected _getInt(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 74
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    .line 75
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x18

    .line 76
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v2, p1, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    .line 75
    or-int/2addr v1, v0

    .line 77
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v2, p1, 0x2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 75
    or-int/2addr v1, v0

    .line 78
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v2, p1, 0x3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 75
    or-int/2addr v0, v1

    return v0
.end method

.method protected _getLong(I)J
    .locals 8
    .param p1, "index"    # I

    .prologue
    const-wide/16 v6, 0xff

    .line 83
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    .line 84
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    aget-byte v0, v0, p1

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v2, 0x38

    shl-long v2, v0, v2

    .line 85
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x1

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v4, 0x30

    shl-long/2addr v0, v4

    .line 84
    or-long/2addr v2, v0

    .line 86
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x2

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v4, 0x28

    shl-long/2addr v0, v4

    .line 84
    or-long/2addr v2, v0

    .line 87
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x3

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v4, 0x20

    shl-long/2addr v0, v4

    .line 84
    or-long/2addr v2, v0

    .line 88
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x4

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v4, 0x18

    shl-long/2addr v0, v4

    .line 84
    or-long/2addr v2, v0

    .line 89
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x5

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v4, 0x10

    shl-long/2addr v0, v4

    .line 84
    or-long/2addr v2, v0

    .line 90
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x6

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v4, 0x8

    shl-long/2addr v0, v4

    .line 84
    or-long/2addr v2, v0

    .line 91
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x7

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v6

    .line 84
    or-long/2addr v0, v2

    return-wide v0
.end method

.method protected _getShort(I)S
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    .line 61
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    aget-byte v0, v0, p1

    shl-int/lit8 v1, v0, 0x8

    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v2, p1, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method protected _getUnsignedMedium(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    .line 67
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v1, v0, 0x10

    .line 68
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v2, p1, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    .line 67
    or-int/2addr v1, v0

    .line 69
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v2, p1, 0x2

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    .line 67
    or-int/2addr v0, v1

    return v0
.end method

.method protected _setByte(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 155
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result v1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 156
    return-void
.end method

.method protected _setInt(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 175
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    .line 176
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    ushr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 177
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x1

    ushr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 178
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x2

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 179
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x3

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 180
    return-void
.end method

.method protected _setLong(IJ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 184
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    .line 185
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    const/16 v1, 0x38

    ushr-long v2, p2, v1

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 186
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x30

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 187
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x2

    const/16 v2, 0x28

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 188
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x3

    const/16 v2, 0x20

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 189
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x4

    const/16 v2, 0x18

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 190
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x5

    const/16 v2, 0x10

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 191
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x6

    const/16 v2, 0x8

    ushr-long v2, p2, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 192
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x7

    long-to-int v2, p2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 193
    return-void
.end method

.method protected _setMedium(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    .line 168
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 169
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x1

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 170
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x2

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 171
    return-void
.end method

.method protected _setShort(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    .line 161
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, p1

    .line 162
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    add-int/lit8 v1, p1, 0x1

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    .line 163
    return-void
.end method

.method public array()[B
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0
.end method

.method public arrayOffset()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->offset:I

    return v0
.end method

.method public copy(II)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 242
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledHeapByteBuf;->checkIndex(II)V

    .line 243
    invoke-virtual {p0}, Lio/netty/buffer/PooledHeapByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/buffer/PooledHeapByteBuf;->maxCapacity()I

    move-result v2

    invoke-interface {v1, p2, v2}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 244
    .local v0, "copy":Lio/netty/buffer/ByteBuf;
    iget-object v1, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Lio/netty/buffer/ByteBuf;->writeBytes([BII)Lio/netty/buffer/ByteBuf;

    .line 245
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
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/buffer/PooledHeapByteBuf;->getBytes(ILjava/nio/channels/GatheringByteChannel;IZ)I

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
    .line 96
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/PooledHeapByteBuf;->checkDstIndex(IIII)V

    .line 97
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v2

    int-to-long v4, p3

    add-long/2addr v2, v4

    int-to-long v4, p4

    invoke-static/range {v0 .. v5}, Lio/netty/util/internal/PlatformDependent;->copyMemory([BIJJ)V

    .line 104
    :goto_0
    return-object p0

    .line 99
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p0, p1, v0, v1, p4}, Lio/netty/buffer/PooledHeapByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {p2, p3, v0, v1, p4}, Lio/netty/buffer/ByteBuf;->setBytes(I[BII)Lio/netty/buffer/ByteBuf;

    goto :goto_0
.end method

.method public getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/PooledHeapByteBuf;->checkIndex(II)V

    .line 124
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {p2, v0, v1, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 125
    return-object p0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p1, "index"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->checkIndex(I)V

    .line 117
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {p0}, Lio/netty/buffer/PooledHeapByteBuf;->capacity()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p2, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 118
    return-object p0
.end method

.method public getBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 109
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/PooledHeapByteBuf;->checkDstIndex(IIII)V

    .line 110
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result v1

    invoke-static {v0, v1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    return-object p0
.end method

.method public hasArray()Z
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x1

    return v0
.end method

.method public hasMemoryAddress()Z
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public internalNioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 268
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledHeapByteBuf;->checkIndex(II)V

    .line 269
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    .line 270
    invoke-virtual {p0}, Lio/netty/buffer/PooledHeapByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

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
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public memoryAddress()J
    .locals 1

    .prologue
    .line 295
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected bridge synthetic newInternalNioBuffer(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->newInternalNioBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected newInternalNioBuffer([B)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "memory"    # [B

    .prologue
    .line 300
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public nioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 260
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledHeapByteBuf;->checkIndex(II)V

    .line 261
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    .line 262
    iget-object v1, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v1, [B

    invoke-static {v1, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 263
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1
.end method

.method public nioBufferCount()I
    .locals 1

    .prologue
    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method public nioBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 255
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/PooledHeapByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

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
    .line 147
    invoke-virtual {p0, p2}, Lio/netty/buffer/PooledHeapByteBuf;->checkReadableBytes(I)V

    .line 148
    iget v1, p0, Lio/netty/buffer/PooledHeapByteBuf;->readerIndex:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, p2, v2}, Lio/netty/buffer/PooledHeapByteBuf;->getBytes(ILjava/nio/channels/GatheringByteChannel;IZ)I

    move-result v0

    .line 149
    .local v0, "readBytes":I
    iget v1, p0, Lio/netty/buffer/PooledHeapByteBuf;->readerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/PooledHeapByteBuf;->readerIndex:I

    .line 150
    return v0
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
    .line 305
    sget-object v0, Lio/netty/buffer/PooledHeapByteBuf;->RECYCLER:Lio/netty/util/Recycler;

    return-object v0
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/PooledHeapByteBuf;->checkIndex(II)V

    .line 226
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {p2, v0, v1, p3}, Ljava/io/InputStream;->read([BII)I

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
    .line 231
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/PooledHeapByteBuf;->checkIndex(II)V

    .line 232
    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result p1

    .line 234
    :try_start_0
    invoke-virtual {p0}, Lio/netty/buffer/PooledHeapByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

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

    .line 236
    :goto_0
    return v1

    .line 235
    :catch_0
    move-exception v0

    .line 236
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
    .line 197
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/PooledHeapByteBuf;->checkSrcIndex(IIII)V

    .line 198
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v0

    int-to-long v2, p3

    add-long/2addr v0, v2

    iget-object v2, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v2, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result v3

    int-to-long v4, p4

    invoke-static/range {v0 .. v5}, Lio/netty/util/internal/PlatformDependent;->copyMemory(J[BIJ)V

    .line 205
    :goto_0
    return-object p0

    .line 200
    :cond_0
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p0, p1, v0, v1, p4}, Lio/netty/buffer/PooledHeapByteBuf;->setBytes(I[BII)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 203
    :cond_1
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v0, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result v1

    invoke-virtual {p2, p3, v0, v1, p4}, Lio/netty/buffer/ByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    goto :goto_0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 217
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 218
    .local v0, "length":I
    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/PooledHeapByteBuf;->checkIndex(II)V

    .line 219
    iget-object v1, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result v2

    invoke-virtual {p2, v1, v2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 220
    return-object p0
.end method

.method public setBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "src"    # [B
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 210
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/PooledHeapByteBuf;->checkSrcIndex(IIII)V

    .line 211
    iget-object v0, p0, Lio/netty/buffer/PooledHeapByteBuf;->memory:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lio/netty/buffer/PooledHeapByteBuf;->idx(I)I

    move-result v1

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    return-object p0
.end method
