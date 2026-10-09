.class public Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;
.super Ljava/io/OutputStream;
.source "CachedByteArrayStream.java"


# instance fields
.field private final BUFFER_SIZE:I

.field private final _bytes:[B

.field protected buf:[B

.field protected count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x200

    .line 31
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 22
    iput v0, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->BUFFER_SIZE:I

    .line 24
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->_bytes:[B

    .line 32
    iget-object v0, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->_bytes:[B

    iput-object v0, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->buf:[B

    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    const/16 v0, 0x200

    .line 44
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 22
    iput v0, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->BUFFER_SIZE:I

    .line 24
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->_bytes:[B

    .line 45
    if-ltz p1, :cond_0

    .line 46
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->buf:[B

    .line 50
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "size < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkOffsetAndCount(III)V
    .locals 3
    .param p0, "arrayLength"    # I
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 182
    or-int v0, p1, p2

    if-ltz v0, :cond_0

    if-gt p1, p0, :cond_0

    sub-int v0, p0, p1

    if-ge v0, p2, :cond_1

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arrayLength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_1
    return-void
.end method

.method private expand(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 69
    iget v1, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->count:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->buf:[B

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_0
    iget v1, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->count:I

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 74
    .local v0, "newbuf":[B
    iget-object v1, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->buf:[B

    iget v2, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->count:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    iput-object v0, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->buf:[B

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-super {p0}, Ljava/io/OutputStream;->close()V

    .line 65
    return-void
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->_bytes:[B

    iput-object v0, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->buf:[B

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->count:I

    return v0
.end method

.method public declared-synchronized toByteArray()[B
    .locals 5

    .prologue
    .line 105
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->count:I

    new-array v0, v1, [B

    .line 106
    .local v0, "newArray":[B
    iget-object v1, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->buf:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->count:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-object v0

    .line 105
    .end local v0    # "newArray":[B
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 120
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->count:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 4
    .param p1, "hibyte"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->size()I

    move-result v2

    new-array v1, v2, [C

    .line 139
    .local v1, "newBuf":[C
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 140
    and-int/lit16 v2, p1, 0xff

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->buf:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "charsetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 155
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->count:I

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method public declared-synchronized write(I)V
    .locals 3
    .param p1, "oneByte"    # I

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->count:I

    iget-object v1, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 197
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->expand(I)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->buf:[B

    iget v1, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->count:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->count:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-void

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write([BII)V
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->checkOffsetAndCount(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    if-nez p3, :cond_0

    .line 179
    :goto_0
    monitor-exit p0

    return-void

    .line 176
    :cond_0
    :try_start_1
    invoke-direct {p0, p3}, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->expand(I)V

    .line 177
    iget-object v0, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->buf:[B

    iget v1, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->count:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iget v0, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->count:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 210
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->buf:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->count:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    .line 210
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
