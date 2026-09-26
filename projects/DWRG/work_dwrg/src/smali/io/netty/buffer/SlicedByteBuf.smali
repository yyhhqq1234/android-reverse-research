.class public Lio/netty/buffer/SlicedByteBuf;
.super Lio/netty/buffer/AbstractDerivedByteBuf;
.source "SlicedByteBuf.java"


# instance fields
.field private final adjustment:I

.field private final buffer:Lio/netty/buffer/ByteBuf;

.field private final length:I


# direct methods
.method public constructor <init>(Lio/netty/buffer/ByteBuf;II)V
    .locals 3
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p2, "index"    # I
    .param p3, "length"    # I

    .prologue
    .line 40
    invoke-direct {p0, p3}, Lio/netty/buffer/AbstractDerivedByteBuf;-><init>(I)V

    .line 41
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    sub-int/2addr v0, p3

    if-le p2, v0, :cond_1

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".slice("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    instance-of v0, p1, Lio/netty/buffer/SlicedByteBuf;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 46
    check-cast v0, Lio/netty/buffer/SlicedByteBuf;

    iget-object v0, v0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iput-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    .line 47
    check-cast p1, Lio/netty/buffer/SlicedByteBuf;

    .end local p1    # "buffer":Lio/netty/buffer/ByteBuf;
    iget v0, p1, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr v0, p2

    iput v0, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    .line 55
    :goto_0
    iput p3, p0, Lio/netty/buffer/SlicedByteBuf;->length:I

    .line 57
    invoke-virtual {p0, p3}, Lio/netty/buffer/SlicedByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 58
    return-void

    .line 48
    .restart local p1    # "buffer":Lio/netty/buffer/ByteBuf;
    :cond_2
    instance-of v0, p1, Lio/netty/buffer/DuplicatedByteBuf;

    if-eqz v0, :cond_3

    .line 49
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    .line 50
    iput p2, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    goto :goto_0

    .line 52
    :cond_3
    iput-object p1, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    .line 53
    iput p2, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    goto :goto_0
.end method


# virtual methods
.method protected _getByte(I)B
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 117
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v0

    return v0
.end method

.method protected _getInt(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v0

    return v0
.end method

.method protected _getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method protected _getShort(I)S
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getShort(I)S

    move-result v0

    return v0
.end method

.method protected _getUnsignedMedium(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 127
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->getUnsignedMedium(I)I

    move-result v0

    return v0
.end method

.method protected _setByte(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 185
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 186
    return-void
.end method

.method protected _setInt(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 200
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    .line 201
    return-void
.end method

.method protected _setLong(IJ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # J

    .prologue
    .line 205
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2, p3}, Lio/netty/buffer/ByteBuf;->setLong(IJ)Lio/netty/buffer/ByteBuf;

    .line 206
    return-void
.end method

.method protected _setMedium(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 195
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->setMedium(II)Lio/netty/buffer/ByteBuf;

    .line 196
    return-void
.end method

.method protected _setShort(II)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->setShort(II)Lio/netty/buffer/ByteBuf;

    .line 191
    return-void
.end method

.method public alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    return-object v0
.end method

.method public array()[B
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public arrayOffset()I
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v0

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr v0, v1

    return v0
.end method

.method public capacity()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lio/netty/buffer/SlicedByteBuf;->length:I

    return v0
.end method

.method public capacity(I)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "newCapacity"    # I

    .prologue
    .line 87
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "sliced buffer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copy(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 149
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/SlicedByteBuf;->checkIndex(II)V

    .line 150
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->copy(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/buffer/ByteBuf;
    .locals 4

    .prologue
    .line 142
    iget-object v1, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v2, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    iget v3, p0, Lio/netty/buffer/SlicedByteBuf;->length:I

    invoke-virtual {v1, v2, v3}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 143
    .local v0, "duplicate":Lio/netty/buffer/ByteBuf;
    invoke-virtual {p0}, Lio/netty/buffer/SlicedByteBuf;->readerIndex()I

    move-result v1

    invoke-virtual {p0}, Lio/netty/buffer/SlicedByteBuf;->writerIndex()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/netty/buffer/ByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    .line 144
    return-object v0
.end method

.method public forEachByte(IILio/netty/buffer/ByteBufProcessor;)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "processor"    # Lio/netty/buffer/ByteBufProcessor;

    .prologue
    .line 279
    iget-object v1, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v2, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2, p2, p3}, Lio/netty/buffer/ByteBuf;->forEachByte(IILio/netty/buffer/ByteBufProcessor;)I

    move-result v0

    .line 280
    .local v0, "ret":I
    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    if-lt v0, v1, :cond_0

    .line 281
    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    sub-int v1, v0, v1

    .line 283
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public forEachByteDesc(IILio/netty/buffer/ByteBufProcessor;)I
    .locals 3
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "processor"    # Lio/netty/buffer/ByteBufProcessor;

    .prologue
    .line 289
    iget-object v1, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v2, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2, p2, p3}, Lio/netty/buffer/ByteBuf;->forEachByteDesc(IILio/netty/buffer/ByteBufProcessor;)I

    move-result v0

    .line 290
    .local v0, "ret":I
    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    if-lt v0, v1, :cond_0

    .line 291
    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    sub-int v1, v0, v1

    .line 293
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/SlicedByteBuf;->checkIndex(II)V

    .line 239
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2, p3}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/nio/channels/GatheringByteChannel;I)I

    move-result v0

    return v0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 164
    invoke-virtual {p0, p1, p4}, Lio/netty/buffer/SlicedByteBuf;->checkIndex(II)V

    .line 165
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2, p3, p4}, Lio/netty/buffer/ByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 166
    return-object p0
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
    .line 231
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/SlicedByteBuf;->checkIndex(II)V

    .line 232
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2, p3}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;

    .line 233
    return-object p0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 178
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/SlicedByteBuf;->checkIndex(II)V

    .line 179
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 180
    return-object p0
.end method

.method public getBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 171
    invoke-virtual {p0, p1, p4}, Lio/netty/buffer/SlicedByteBuf;->checkIndex(II)V

    .line 172
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2, p3, p4}, Lio/netty/buffer/ByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 173
    return-object p0
.end method

.method public hasArray()Z
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    return v0
.end method

.method public hasMemoryAddress()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    return v0
.end method

.method public internalNioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 273
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/SlicedByteBuf;->checkIndex(II)V

    .line 274
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/SlicedByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public isDirect()Z
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->isDirect()Z

    move-result v0

    return v0
.end method

.method public memoryAddress()J
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v0

    iget v2, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public nioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 261
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/SlicedByteBuf;->checkIndex(II)V

    .line 262
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public nioBufferCount()I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v0

    return v0
.end method

.method public nioBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 267
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/SlicedByteBuf;->checkIndex(II)V

    .line 268
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v0

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
    .line 244
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/SlicedByteBuf;->checkIndex(II)V

    .line 245
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2, p3}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/nio/channels/ScatteringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/SlicedByteBuf;->checkIndex(II)V

    .line 251
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2, p3}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result v0

    return v0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .prologue
    .line 217
    invoke-virtual {p0, p1, p4}, Lio/netty/buffer/SlicedByteBuf;->checkIndex(II)V

    .line 218
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2, p3, p4}, Lio/netty/buffer/ByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 219
    return-object p0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 224
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/SlicedByteBuf;->checkIndex(II)V

    .line 225
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 226
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
    invoke-virtual {p0, p1, p4}, Lio/netty/buffer/SlicedByteBuf;->checkIndex(II)V

    .line 211
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2, p3, p4}, Lio/netty/buffer/ByteBuf;->setBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 212
    return-object p0
.end method

.method public slice(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .prologue
    .line 155
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/SlicedByteBuf;->checkIndex(II)V

    .line 156
    if-nez p2, :cond_0

    .line 157
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    .line 159
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    iget v1, p0, Lio/netty/buffer/SlicedByteBuf;->adjustment:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0
.end method

.method public unwrap()Lio/netty/buffer/ByteBuf;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lio/netty/buffer/SlicedByteBuf;->buffer:Lio/netty/buffer/ByteBuf;

    return-object v0
.end method
