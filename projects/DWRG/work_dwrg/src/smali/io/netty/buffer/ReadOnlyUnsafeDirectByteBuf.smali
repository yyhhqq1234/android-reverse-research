.class final Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;
.super Lio/netty/buffer/ReadOnlyByteBufferBuf;
.source "ReadOnlyUnsafeDirectByteBuf.java"


# static fields
.field private static final NATIVE_ORDER:Z


# instance fields
.field private final memoryAddress:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->NATIVE_ORDER:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "allocator"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/ReadOnlyByteBufferBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteBuffer;)V

    .line 35
    invoke-static {p2}, Lio/netty/util/internal/PlatformDependent;->directBufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->memoryAddress:J

    .line 36
    return-void
.end method

.method private addr(I)J
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 136
    iget-wide v0, p0, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->memoryAddress:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method protected _getByte(I)B
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v0

    return v0
.end method

.method protected _getInt(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent;->getInt(J)I

    move-result v0

    .line 60
    .local v0, "v":I
    sget-boolean v1, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->NATIVE_ORDER:Z

    if-eqz v1, :cond_0

    .end local v0    # "v":I
    :goto_0
    return v0

    .restart local v0    # "v":I
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    goto :goto_0
.end method

.method protected _getLong(I)J
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent;->getLong(J)J

    move-result-wide v0

    .line 66
    .local v0, "v":J
    sget-boolean v2, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->NATIVE_ORDER:Z

    if-eqz v2, :cond_0

    .end local v0    # "v":J
    :goto_0
    return-wide v0

    .restart local v0    # "v":J
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected _getShort(I)S
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent;->getShort(J)S

    move-result v0

    .line 46
    .local v0, "v":S
    sget-boolean v1, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->NATIVE_ORDER:Z

    if-eqz v1, :cond_0

    .end local v0    # "v":S
    :goto_0
    return v0

    .restart local v0    # "v":S
    :cond_0
    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    goto :goto_0
.end method

.method protected _getUnsignedMedium(I)I
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    .line 52
    .local v0, "addr":J
    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    .line 53
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    invoke-static {v4, v5}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    .line 52
    or-int/2addr v2, v3

    .line 54
    const-wide/16 v4, 0x2

    add-long/2addr v4, v0

    invoke-static {v4, v5}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 52
    or-int/2addr v2, v3

    return v2
.end method

.method public copy(II)Lio/netty/buffer/ByteBuf;
    .locals 7
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 122
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->checkIndex(II)V

    .line 123
    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->maxCapacity()I

    move-result v1

    invoke-interface {v0, p2, v1}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v6

    .line 124
    .local v6, "copy":Lio/netty/buffer/ByteBuf;
    if-eqz p2, :cond_0

    .line 125
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-direct {p0, p1}, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v2

    int-to-long v4, p2

    invoke-static/range {v0 .. v5}, Lio/netty/util/internal/PlatformDependent;->copyMemory(JJJ)V

    .line 127
    const/4 v0, 0x0

    invoke-virtual {v6, v0, p2}, Lio/netty/buffer/ByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    .line 132
    :cond_0
    :goto_0
    return-object v6

    .line 129
    :cond_1
    invoke-virtual {v6, p0, p1, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    goto :goto_0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 6
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 71
    invoke-virtual {p0, p1, p4}, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->checkIndex(II)V

    .line 72
    if-nez p2, :cond_0

    .line 73
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    if-ltz p3, :cond_1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    sub-int/2addr v0, p4

    if-le p3, v0, :cond_2

    .line 76
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dstIndex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_2
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    invoke-direct {p0, p1}, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v2

    int-to-long v4, p3

    add-long/2addr v2, v4

    int-to-long v4, p4

    invoke-static/range {v0 .. v5}, Lio/netty/util/internal/PlatformDependent;->copyMemory(JJJ)V

    .line 86
    :goto_0
    return-object p0

    .line 81
    :cond_3
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    invoke-direct {p0, p1}, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v2

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v3

    add-int/2addr v3, p3

    int-to-long v4, p4

    invoke-static/range {v0 .. v5}, Lio/netty/util/internal/PlatformDependent;->copyMemory(J[BIJ)V

    goto :goto_0

    .line 84
    :cond_4
    invoke-virtual {p2, p3, p0, p1, p4}, Lio/netty/buffer/ByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    goto :goto_0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p1, "index"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 108
    invoke-virtual {p0, p1}, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->checkIndex(I)V

    .line 109
    if-nez p2, :cond_0

    .line 110
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "dst"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->capacity()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 114
    .local v0, "bytesToCopy":I
    invoke-virtual {p0}, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 115
    .local v1, "tmpBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    add-int v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 116
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 117
    return-object p0
.end method

.method public getBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 6
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 91
    invoke-virtual {p0, p1, p4}, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->checkIndex(II)V

    .line 92
    if-nez p2, :cond_0

    .line 93
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    if-ltz p3, :cond_1

    array-length v0, p2

    sub-int/2addr v0, p4

    if-le p3, v0, :cond_2

    .line 96
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 97
    const-string v1, "dstIndex: %d, length: %d (expected: range(0, %d))"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 96
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_2
    if-eqz p4, :cond_3

    .line 101
    invoke-direct {p0, p1}, Lio/netty/buffer/ReadOnlyUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    int-to-long v4, p4

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lio/netty/util/internal/PlatformDependent;->copyMemory(J[BIJ)V

    .line 103
    :cond_3
    return-object p0
.end method
