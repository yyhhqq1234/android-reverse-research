.class public abstract Lio/netty/buffer/ByteBuf;
.super Ljava/lang/Object;
.source "ByteBuf.java"

# interfaces
.implements Lio/netty/util/ReferenceCounted;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/ReferenceCounted;",
        "Ljava/lang/Comparable",
        "<",
        "Lio/netty/buffer/ByteBuf;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract alloc()Lio/netty/buffer/ByteBufAllocator;
.end method

.method public abstract array()[B
.end method

.method public abstract arrayOffset()I
.end method

.method public abstract bytesBefore(B)I
.end method

.method public abstract bytesBefore(IB)I
.end method

.method public abstract bytesBefore(IIB)I
.end method

.method public abstract capacity()I
.end method

.method public abstract capacity(I)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract clear()Lio/netty/buffer/ByteBuf;
.end method

.method public abstract compareTo(Lio/netty/buffer/ByteBuf;)I
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->compareTo(Lio/netty/buffer/ByteBuf;)I

    move-result v0

    return v0
.end method

.method public abstract copy()Lio/netty/buffer/ByteBuf;
.end method

.method public abstract copy(II)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract discardReadBytes()Lio/netty/buffer/ByteBuf;
.end method

.method public abstract discardSomeReadBytes()Lio/netty/buffer/ByteBuf;
.end method

.method public abstract duplicate()Lio/netty/buffer/ByteBuf;
.end method

.method public abstract ensureWritable(IZ)I
.end method

.method public abstract ensureWritable(I)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract forEachByte(IILio/netty/buffer/ByteBufProcessor;)I
.end method

.method public abstract forEachByte(Lio/netty/buffer/ByteBufProcessor;)I
.end method

.method public abstract forEachByteDesc(IILio/netty/buffer/ByteBufProcessor;)I
.end method

.method public abstract forEachByteDesc(Lio/netty/buffer/ByteBufProcessor;)I
.end method

.method public abstract getBoolean(I)Z
.end method

.method public abstract getByte(I)B
.end method

.method public abstract getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract getBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract getBytes(I[B)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract getBytes(I[BII)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract getChar(I)C
.end method

.method public abstract getDouble(I)D
.end method

.method public abstract getFloat(I)F
.end method

.method public abstract getInt(I)I
.end method

.method public abstract getLong(I)J
.end method

.method public abstract getMedium(I)I
.end method

.method public abstract getShort(I)S
.end method

.method public abstract getUnsignedByte(I)S
.end method

.method public abstract getUnsignedInt(I)J
.end method

.method public abstract getUnsignedMedium(I)I
.end method

.method public abstract getUnsignedShort(I)I
.end method

.method public abstract hasArray()Z
.end method

.method public abstract hasMemoryAddress()Z
.end method

.method public abstract hashCode()I
.end method

.method public abstract indexOf(IIB)I
.end method

.method public abstract internalNioBuffer(II)Ljava/nio/ByteBuffer;
.end method

.method public abstract isDirect()Z
.end method

.method public abstract isReadable()Z
.end method

.method public abstract isReadable(I)Z
.end method

.method public abstract isWritable()Z
.end method

.method public abstract isWritable(I)Z
.end method

.method public abstract markReaderIndex()Lio/netty/buffer/ByteBuf;
.end method

.method public abstract markWriterIndex()Lio/netty/buffer/ByteBuf;
.end method

.method public abstract maxCapacity()I
.end method

.method public abstract maxWritableBytes()I
.end method

.method public abstract memoryAddress()J
.end method

.method public abstract nioBuffer()Ljava/nio/ByteBuffer;
.end method

.method public abstract nioBuffer(II)Ljava/nio/ByteBuffer;
.end method

.method public abstract nioBufferCount()I
.end method

.method public abstract nioBuffers()[Ljava/nio/ByteBuffer;
.end method

.method public abstract nioBuffers(II)[Ljava/nio/ByteBuffer;
.end method

.method public abstract order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract order()Ljava/nio/ByteOrder;
.end method

.method public abstract readBoolean()Z
.end method

.method public abstract readByte()B
.end method

.method public abstract readBytes(Ljava/nio/channels/GatheringByteChannel;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readBytes(I)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract readBytes([B)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract readBytes([BII)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract readChar()C
.end method

.method public abstract readDouble()D
.end method

.method public abstract readFloat()F
.end method

.method public abstract readInt()I
.end method

.method public abstract readLong()J
.end method

.method public abstract readMedium()I
.end method

.method public abstract readShort()S
.end method

.method public abstract readSlice(I)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract readUnsignedByte()S
.end method

.method public abstract readUnsignedInt()J
.end method

.method public abstract readUnsignedMedium()I
.end method

.method public abstract readUnsignedShort()I
.end method

.method public abstract readableBytes()I
.end method

.method public abstract readerIndex()I
.end method

.method public abstract readerIndex(I)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract resetReaderIndex()Lio/netty/buffer/ByteBuf;
.end method

.method public abstract resetWriterIndex()Lio/netty/buffer/ByteBuf;
.end method

.method public abstract retain()Lio/netty/buffer/ByteBuf;
.end method

.method public abstract retain(I)Lio/netty/buffer/ByteBuf;
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lio/netty/buffer/ByteBuf;->retain(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public abstract setBoolean(IZ)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract setByte(II)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract setBytes(ILjava/io/InputStream;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract setBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract setBytes(I[B)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract setBytes(I[BII)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract setChar(II)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract setDouble(ID)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract setFloat(IF)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract setIndex(II)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract setInt(II)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract setLong(IJ)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract setMedium(II)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract setShort(II)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract setZero(II)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract skipBytes(I)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract slice()Lio/netty/buffer/ByteBuf;
.end method

.method public abstract slice(II)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method public abstract toString(IILjava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract unwrap()Lio/netty/buffer/ByteBuf;
.end method

.method public abstract writableBytes()I
.end method

.method public abstract writeBoolean(Z)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract writeByte(I)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract writeBytes(Ljava/io/InputStream;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeBytes(Ljava/nio/channels/ScatteringByteChannel;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract writeBytes([B)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract writeBytes([BII)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract writeChar(I)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract writeDouble(D)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract writeFloat(F)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract writeInt(I)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract writeLong(J)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract writeMedium(I)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract writeShort(I)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract writeZero(I)Lio/netty/buffer/ByteBuf;
.end method

.method public abstract writerIndex()I
.end method

.method public abstract writerIndex(I)Lio/netty/buffer/ByteBuf;
.end method
