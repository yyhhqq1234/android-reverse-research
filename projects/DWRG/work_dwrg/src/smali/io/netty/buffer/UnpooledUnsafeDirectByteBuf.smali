.class public Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;
.super Lio/netty/buffer/AbstractReferenceCountedByteBuf;
.source "UnpooledUnsafeDirectByteBuf.java"


# static fields
.field private static final NATIVE_ORDER:Z


# instance fields
.field private final alloc:Lio/netty/buffer/ByteBufAllocator;

.field private buffer:Ljava/nio/ByteBuffer;

.field private capacity:I

.field private doNotFree:Z

.field private memoryAddress:J

.field private tmpNioBuf:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->NATIVE_ORDER:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lio/netty/buffer/ByteBufAllocator;II)V
    .locals 5
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "initialCapacity"    # I
    .param p3, "maxCapacity"    # I

    .prologue
    .line 53
    invoke-direct {p0, p3}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;-><init>(I)V

    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "alloc"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    if-gez p2, :cond_1

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initialCapacity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    if-gez p3, :cond_2

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "maxCapacity: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_2
    if-le p2, p3, :cond_3

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 65
    const-string v1, "initialCapacity(%d) > maxCapacity(%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 64
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_3
    iput-object p1, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->alloc:Lio/netty/buffer/ByteBufAllocator;

    .line 69
    invoke-virtual {p0, p2}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->setByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 70
    return-void
.end method

.method protected constructor <init>(Lio/netty/buffer/ByteBufAllocator;Ljava/nio/ByteBuffer;I)V
    .locals 7
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "initialBuffer"    # Ljava/nio/ByteBuffer;
    .param p3, "maxCapacity"    # I

    .prologue
    const/4 v6, 0x1

    .line 78
    invoke-direct {p0, p3}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;-><init>(I)V

    .line 79
    if-nez p1, :cond_0

    .line 80
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "alloc"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_0
    if-nez p2, :cond_1

    .line 83
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "initialBuffer"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 85
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-nez v1, :cond_2

    .line 86
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "initialBuffer is not a direct buffer."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 88
    :cond_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 89
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "initialBuffer is a read-only buffer."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    :cond_3
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 93
    .local v0, "initialCapacity":I
    if-le v0, p3, :cond_4

    .line 94
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 95
    const-string v2, "initialCapacity(%d) > maxCapacity(%d)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 94
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_4
    iput-object p1, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->alloc:Lio/netty/buffer/ByteBufAllocator;

    .line 99
    iput-boolean v6, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->doNotFree:Z

    .line 100
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p0, v1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->setByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 101
    invoke-virtual {p0, v0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 102
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
    .line 406
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->ensureAccessible()V

    .line 407
    if-nez p3, :cond_0

    .line 408
    const/4 v1, 0x0

    .line 418
    :goto_0
    return v1

    .line 412
    :cond_0
    if-eqz p4, :cond_1

    .line 413
    invoke-direct {p0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 417
    .local v0, "tmpBuf":Ljava/nio/ByteBuffer;
    :goto_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    add-int v2, p1, p3

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 418
    invoke-interface {p2, v0}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    goto :goto_0

    .line 415
    .end local v0    # "tmpBuf":Ljava/nio/ByteBuffer;
    :cond_1
    iget-object v1, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .restart local v0    # "tmpBuf":Ljava/nio/ByteBuffer;
    goto :goto_1
.end method

.method private getBytes(ILjava/nio/ByteBuffer;Z)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .param p3, "internal"    # Z

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->checkIndex(I)V

    .line 293
    if-nez p2, :cond_0

    .line 294
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "dst"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 297
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->capacity()I

    move-result v2

    sub-int/2addr v2, p1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 299
    .local v0, "bytesToCopy":I
    if-eqz p3, :cond_1

    .line 300
    invoke-direct {p0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 304
    .local v1, "tmpBuf":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    add-int v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 305
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 306
    return-void

    .line 302
    .end local v1    # "tmpBuf":Ljava/nio/ByteBuffer;
    :cond_1
    iget-object v2, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    .restart local v1    # "tmpBuf":Ljava/nio/ByteBuffer;
    goto :goto_0
.end method

.method private internalNioBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    .line 485
    .local v0, "tmpNioBuf":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_0

    .line 486
    iget-object v1, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    .line 488
    :cond_0
    return-object v0
.end method

.method private setByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 119
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->buffer:Ljava/nio/ByteBuffer;

    .line 120
    .local v0, "oldBuffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_0

    .line 121
    iget-boolean v1, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->doNotFree:Z

    if-eqz v1, :cond_1

    .line 122
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->doNotFree:Z

    .line 128
    :cond_0
    :goto_0
    iput-object p1, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->buffer:Ljava/nio/ByteBuffer;

    .line 129
    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->directBufferAddress(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->memoryAddress:J

    .line 130
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->tmpNioBuf:Ljava/nio/ByteBuffer;

    .line 131
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iput v1, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->capacity:I

    .line 132
    return-void

    .line 124
    :cond_1
    invoke-virtual {p0, v0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->freeDirect(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method


# virtual methods
.method protected _getByte(I)B
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 219
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v0

    return v0
.end method

.method protected _getInt(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent;->getInt(J)I

    move-result v0

    .line 239
    .local v0, "v":I
    sget-boolean v1, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->NATIVE_ORDER:Z

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
    .line 244
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent;->getLong(J)J

    move-result-wide v0

    .line 245
    .local v0, "v":J
    sget-boolean v2, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->NATIVE_ORDER:Z

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
    .line 224
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Lio/netty/util/internal/PlatformDependent;->getShort(J)S

    move-result v0

    .line 225
    .local v0, "v":S
    sget-boolean v1, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->NATIVE_ORDER:Z

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
    .line 230
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    .line 231
    .local v0, "addr":J
    invoke-static {v0, v1}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    .line 232
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    invoke-static {v4, v5}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    .line 231
    or-int/2addr v2, v3

    .line 233
    const-wide/16 v4, 0x2

    add-long/2addr v4, v0

    invoke-static {v4, v5}, Lio/netty/util/internal/PlatformDependent;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 231
    or-int/2addr v2, v3

    return v2
.end method

.method protected _setByte(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    int-to-byte v2, p2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 320
    return-void
.end method

.method protected _setInt(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 337
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    sget-boolean v2, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->NATIVE_ORDER:Z

    if-eqz v2, :cond_0

    .end local p2    # "value":I
    :goto_0
    invoke-static {v0, v1, p2}, Lio/netty/util/internal/PlatformDependent;->putInt(JI)V

    .line 338
    return-void

    .line 337
    .restart local p2    # "value":I
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p2

    goto :goto_0
.end method

.method protected _setLong(IJ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 342
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    sget-boolean v2, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->NATIVE_ORDER:Z

    if-eqz v2, :cond_0

    .end local p2    # "value":J
    :goto_0
    invoke-static {v0, v1, p2, p3}, Lio/netty/util/internal/PlatformDependent;->putLong(JJ)V

    .line 343
    return-void

    .line 342
    .restart local p2    # "value":J
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p2

    goto :goto_0
.end method

.method protected _setMedium(II)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 329
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    .line 330
    .local v0, "addr":J
    ushr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 331
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    ushr-int/lit8 v4, p2, 0x8

    int-to-byte v4, v4

    invoke-static {v2, v3, v4}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 332
    const-wide/16 v2, 0x2

    add-long/2addr v2, v0

    int-to-byte v4, p2

    invoke-static {v2, v3, v4}, Lio/netty/util/internal/PlatformDependent;->putByte(JB)V

    .line 333
    return-void
.end method

.method protected _setShort(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 324
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v2

    sget-boolean v0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->NATIVE_ORDER:Z

    if-eqz v0, :cond_0

    int-to-short v0, p2

    :goto_0
    invoke-static {v2, v3, v0}, Lio/netty/util/internal/PlatformDependent;->putShort(JS)V

    .line 325
    return-void

    .line 324
    :cond_0
    int-to-short v0, p2

    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    goto :goto_0
.end method

.method addr(I)J
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 517
    iget-wide v0, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->memoryAddress:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->alloc:Lio/netty/buffer/ByteBufAllocator;

    return-object v0
.end method

.method protected allocateDirect(I)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 108
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public array()[B
    .locals 2

    .prologue
    .line 199
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "direct buffer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public arrayOffset()I
    .locals 2

    .prologue
    .line 204
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "direct buffer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->capacity:I

    return v0
.end method

.method public capacity(I)Lio/netty/buffer/ByteBuf;
    .locals 8
    .param p1, "newCapacity"    # I

    .prologue
    const/4 v7, 0x0

    .line 146
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->ensureAccessible()V

    .line 147
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->maxCapacity()I

    move-result v5

    if-le p1, v5, :cond_1

    .line 148
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "newCapacity: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 151
    :cond_1
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->readerIndex()I

    move-result v3

    .line 152
    .local v3, "readerIndex":I
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->writerIndex()I

    move-result v4

    .line 154
    .local v4, "writerIndex":I
    iget v2, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->capacity:I

    .line 155
    .local v2, "oldCapacity":I
    if-le p1, v2, :cond_3

    .line 156
    iget-object v1, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->buffer:Ljava/nio/ByteBuffer;

    .line 157
    .local v1, "oldBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 158
    .local v0, "newBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 159
    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 160
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 161
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 162
    invoke-direct {p0, v0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->setByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 179
    .end local v0    # "newBuffer":Ljava/nio/ByteBuffer;
    .end local v1    # "oldBuffer":Ljava/nio/ByteBuffer;
    :cond_2
    :goto_0
    return-object p0

    .line 163
    :cond_3
    if-ge p1, v2, :cond_2

    .line 164
    iget-object v1, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->buffer:Ljava/nio/ByteBuffer;

    .line 165
    .restart local v1    # "oldBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 166
    .restart local v0    # "newBuffer":Ljava/nio/ByteBuffer;
    if-ge v3, p1, :cond_5

    .line 167
    if-le v4, p1, :cond_4

    .line 168
    move v4, p1

    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 170
    :cond_4
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 171
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 172
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 173
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 177
    :goto_1
    invoke-direct {p0, v0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->setByteBuffer(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 175
    :cond_5
    invoke-virtual {p0, p1, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    goto :goto_1
.end method

.method public copy(II)Lio/netty/buffer/ByteBuf;
    .locals 7
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 464
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->checkIndex(II)V

    .line 465
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->maxCapacity()I

    move-result v1

    invoke-interface {v0, p2, v1}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v6

    .line 466
    .local v6, "copy":Lio/netty/buffer/ByteBuf;
    if-eqz p2, :cond_0

    .line 467
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 468
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v2

    int-to-long v4, p2

    invoke-static/range {v0 .. v5}, Lio/netty/util/internal/PlatformDependent;->copyMemory(JJJ)V

    .line 469
    const/4 v0, 0x0

    invoke-virtual {v6, v0, p2}, Lio/netty/buffer/ByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    .line 474
    :cond_0
    :goto_0
    return-object v6

    .line 471
    :cond_1
    invoke-virtual {v6, p0, p1, p2}, Lio/netty/buffer/ByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    goto :goto_0
.end method

.method protected deallocate()V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->buffer:Ljava/nio/ByteBuffer;

    .line 500
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_1

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->buffer:Ljava/nio/ByteBuffer;

    .line 506
    iget-boolean v1, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->doNotFree:Z

    if-nez v1, :cond_0

    .line 507
    invoke-virtual {p0, v0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->freeDirect(Ljava/nio/ByteBuffer;)V

    goto :goto_0
.end method

.method protected freeDirect(Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 115
    invoke-static {p1}, Lio/netty/util/internal/PlatformDependent;->freeDirectBuffer(Ljava/nio/ByteBuffer;)V

    .line 116
    return-void
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
    .line 402
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->getBytes(ILjava/nio/channels/GatheringByteChannel;IZ)I

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
    .line 250
    invoke-virtual {p0, p1, p4}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->checkIndex(II)V

    .line 251
    if-nez p2, :cond_0

    .line 252
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_0
    if-ltz p3, :cond_1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    sub-int/2addr v0, p4

    if-le p3, v0, :cond_2

    .line 255
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

    .line 258
    :cond_2
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 259
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v2

    int-to-long v4, p3

    add-long/2addr v2, v4

    int-to-long v4, p4

    invoke-static/range {v0 .. v5}, Lio/netty/util/internal/PlatformDependent;->copyMemory(JJJ)V

    .line 265
    :goto_0
    return-object p0

    .line 260
    :cond_3
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 261
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v2

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v3

    add-int/2addr v3, p3

    int-to-long v4, p4

    invoke-static/range {v0 .. v5}, Lio/netty/util/internal/PlatformDependent;->copyMemory(J[BIJ)V

    goto :goto_0

    .line 263
    :cond_4
    invoke-virtual {p2, p3, p0, p1, p4}, Lio/netty/buffer/ByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    goto :goto_0
.end method

.method public getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 6
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 391
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->ensureAccessible()V

    .line 392
    if-eqz p3, :cond_0

    .line 393
    new-array v2, p3, [B

    .line 394
    .local v2, "tmp":[B
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    const/4 v3, 0x0

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lio/netty/util/internal/PlatformDependent;->copyMemory(J[BIJ)V

    .line 395
    invoke-virtual {p2, v2}, Ljava/io/OutputStream;->write([B)V

    .line 397
    .end local v2    # "tmp":[B
    :cond_0
    return-object p0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 287
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->getBytes(ILjava/nio/ByteBuffer;Z)V

    .line 288
    return-object p0
.end method

.method public getBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 6
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 270
    invoke-virtual {p0, p1, p4}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->checkIndex(II)V

    .line 271
    if-nez p2, :cond_0

    .line 272
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dst"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    if-ltz p3, :cond_1

    array-length v0, p2

    sub-int/2addr v0, p4

    if-le p3, v0, :cond_2

    .line 275
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 276
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

    .line 275
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_2
    if-eqz p4, :cond_3

    .line 280
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v0

    int-to-long v4, p4

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lio/netty/util/internal/PlatformDependent;->copyMemory(J[BIJ)V

    .line 282
    :cond_3
    return-object p0
.end method

.method public hasArray()Z
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public hasMemoryAddress()Z
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x1

    return v0
.end method

.method public internalNioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 479
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->checkIndex(II)V

    .line 480
    invoke-direct {p0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

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
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public memoryAddress()J
    .locals 2

    .prologue
    .line 214
    iget-wide v0, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->memoryAddress:J

    return-wide v0
.end method

.method protected newSwappedByteBuf()Lio/netty/buffer/SwappedByteBuf;
    .locals 1

    .prologue
    .line 522
    new-instance v0, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;

    invoke-direct {v0, p0}, Lio/netty/buffer/UnsafeDirectSwappedByteBuf;-><init>(Lio/netty/buffer/AbstractByteBuf;)V

    return-object v0
.end method

.method public nioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 493
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->checkIndex(II)V

    .line 494
    iget-object v0, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->buffer:Ljava/nio/ByteBuffer;

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
    .line 454
    const/4 v0, 0x1

    return v0
.end method

.method public nioBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 3
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 459
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 189
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
    .line 423
    invoke-virtual {p0, p2}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->checkReadableBytes(I)V

    .line 424
    iget v1, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->readerIndex:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, p2, v2}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->getBytes(ILjava/nio/channels/GatheringByteChannel;IZ)I

    move-result v0

    .line 425
    .local v0, "readBytes":I
    iget v1, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->readerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->readerIndex:I

    .line 426
    return v0
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "dst"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 310
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 311
    .local v0, "length":I
    invoke-virtual {p0, v0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->checkReadableBytes(I)V

    .line 312
    iget v1, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->readerIndex:I

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v2}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->getBytes(ILjava/nio/ByteBuffer;Z)V

    .line 313
    iget v1, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->readerIndex:I

    add-int/2addr v1, v0

    iput v1, p0, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->readerIndex:I

    .line 314
    return-object p0
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 431
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->checkIndex(II)V

    .line 432
    new-array v0, p3, [B

    .line 433
    .local v0, "tmp":[B
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .line 434
    .local v6, "readBytes":I
    if-lez v6, :cond_0

    .line 435
    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v2

    int-to-long v4, v6

    invoke-static/range {v0 .. v5}, Lio/netty/util/internal/PlatformDependent;->copyMemory([BIJJ)V

    .line 437
    :cond_0
    return v6
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
    .line 442
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->ensureAccessible()V

    .line 443
    invoke-direct {p0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 444
    .local v1, "tmpBuf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v2

    add-int v3, p1, p3

    invoke-virtual {v2, v3}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 446
    :try_start_0
    invoke-interface {p2, v1}, Ljava/nio/channels/ScatteringByteChannel;->read(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catch Ljava/nio/channels/ClosedChannelException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 448
    :goto_0
    return v2

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "ignored":Ljava/nio/channels/ClosedChannelException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 6
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 347
    invoke-virtual {p0, p1, p4}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->checkIndex(II)V

    .line 348
    if-nez p2, :cond_0

    .line 349
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "src"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_0
    if-ltz p3, :cond_1

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    sub-int/2addr v0, p4

    if-le p3, v0, :cond_2

    .line 352
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "srcIndex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :cond_2
    if-eqz p4, :cond_3

    .line 356
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 357
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v0

    int-to-long v2, p3

    add-long/2addr v0, v2

    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v2

    int-to-long v4, p4

    invoke-static/range {v0 .. v5}, Lio/netty/util/internal/PlatformDependent;->copyMemory(JJJ)V

    .line 364
    :cond_3
    :goto_0
    return-object p0

    .line 358
    :cond_4
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 359
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v2

    int-to-long v4, p4

    invoke-static/range {v0 .. v5}, Lio/netty/util/internal/PlatformDependent;->copyMemory([BIJJ)V

    goto :goto_0

    .line 361
    :cond_5
    invoke-virtual {p2, p3, p0, p1, p4}, Lio/netty/buffer/ByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    goto :goto_0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 3
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 378
    invoke-virtual {p0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->ensureAccessible()V

    .line 379
    invoke-direct {p0}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->internalNioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 380
    .local v0, "tmpBuf":Ljava/nio/ByteBuffer;
    if-ne p2, v0, :cond_0

    .line 381
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 384
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 385
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 386
    return-object p0
.end method

.method public setBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 6
    .param p1, "index"    # I
    .param p2, "src"    # [B
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 369
    invoke-virtual {p0, p1, p4}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->checkIndex(II)V

    .line 370
    if-eqz p4, :cond_0

    .line 371
    invoke-virtual {p0, p1}, Lio/netty/buffer/UnpooledUnsafeDirectByteBuf;->addr(I)J

    move-result-wide v2

    int-to-long v4, p4

    move-object v0, p2

    move v1, p3

    invoke-static/range {v0 .. v5}, Lio/netty/util/internal/PlatformDependent;->copyMemory([BIJJ)V

    .line 373
    :cond_0
    return-object p0
.end method

.method public unwrap()Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x0

    return-object v0
.end method
