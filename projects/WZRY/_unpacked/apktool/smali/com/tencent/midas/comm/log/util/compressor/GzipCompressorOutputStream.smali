.class public Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;
.super Ljava/io/OutputStream;
.source "GzipCompressorOutputStream.java"


# instance fields
.field private final _header:[B

.field private closed:Z

.field private final crc:Ljava/util/zip/CRC32;

.field private final deflateBuffer:[B

.field private final deflater:Ljava/util/zip/Deflater;

.field private final out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 25
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->deflateBuffer:[B

    .line 35
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 37
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->_header:[B

    .line 53
    iput-object p1, p0, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 54
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    .line 55
    return-void

    .line 37
    nop

    :array_0
    .array-data 1
        0x1ft
        -0x75t
        0x8t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private deflate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 107
    iget-object v1, p0, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    iget-object v2, p0, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->deflateBuffer:[B

    iget-object v3, p0, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->deflateBuffer:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    .line 108
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 109
    iget-object v1, p0, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->deflateBuffer:[B

    invoke-virtual {v1, v2, v4, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 111
    :cond_0
    return-void
.end method

.method private writeTrailer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 63
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 64
    iget-object v1, p0, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 65
    iget-object v1, p0, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 67
    iget-object v1, p0, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 68
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->closed:Z

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->finish()V

    .line 155
    iget-object v0, p0, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 156
    iget-object v0, p0, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->closed:Z

    .line 159
    :cond_0
    return-void
.end method

.method public continued()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    .line 138
    iget-object v0, p0, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    .line 139
    return-void
.end method

.method public finish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->deflate()V

    goto :goto_0

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->writeTrailer()V

    .line 129
    :cond_1
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 149
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-array v0, v3, [B

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->write([BII)V

    .line 73
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->write([BII)V

    .line 83
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot write more data, the end of the compressed data stream has been reached"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    if-lez p3, :cond_2

    .line 96
    iget-object v0, p0, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    invoke-direct {p0}, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->deflate()V

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 104
    :cond_2
    return-void
.end method

.method public writeHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->_header:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 59
    return-void
.end method
