.class public Lcom/tencent/midas/comm/log/processor/APLogCompressor;
.super Ljava/lang/Object;
.source "APLogCompressor.java"


# instance fields
.field private gziper:Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;

.field private out:Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/tencent/midas/comm/log/processor/APLogCompressor;->out:Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;

    .line 15
    iput-object v0, p0, Lcom/tencent/midas/comm/log/processor/APLogCompressor;->gziper:Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;

    return-void
.end method

.method public static create()Lcom/tencent/midas/comm/log/processor/APLogCompressor;
    .locals 4

    .prologue
    .line 18
    new-instance v0, Lcom/tencent/midas/comm/log/processor/APLogCompressor;

    invoke-direct {v0}, Lcom/tencent/midas/comm/log/processor/APLogCompressor;-><init>()V

    .line 20
    .local v0, "compressor":Lcom/tencent/midas/comm/log/processor/APLogCompressor;
    :try_start_0
    new-instance v2, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;

    const/16 v3, 0x200

    invoke-direct {v2, v3}, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;-><init>(I)V

    iput-object v2, v0, Lcom/tencent/midas/comm/log/processor/APLogCompressor;->out:Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;

    .line 21
    new-instance v2, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;

    iget-object v3, v0, Lcom/tencent/midas/comm/log/processor/APLogCompressor;->out:Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;

    invoke-direct {v2, v3}, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, v0, Lcom/tencent/midas/comm/log/processor/APLogCompressor;->gziper:Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .end local v0    # "compressor":Lcom/tencent/midas/comm/log/processor/APLogCompressor;
    :goto_0
    return-object v0

    .line 22
    .restart local v0    # "compressor":Lcom/tencent/midas/comm/log/processor/APLogCompressor;
    :catch_0
    move-exception v1

    .line 23
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 24
    const/4 v0, 0x0

    goto :goto_0
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
    .line 57
    iget-object v0, p0, Lcom/tencent/midas/comm/log/processor/APLogCompressor;->gziper:Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/tencent/midas/comm/log/processor/APLogCompressor;->gziper:Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;

    invoke-virtual {v0}, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->close()V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/tencent/midas/comm/log/processor/APLogCompressor;->out:Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/tencent/midas/comm/log/processor/APLogCompressor;->out:Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;

    invoke-virtual {v0}, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->close()V

    .line 63
    :cond_1
    return-void
.end method

.method public declared-synchronized compress([B)[B
    .locals 3
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/midas/comm/log/processor/APLogCompressor;->gziper:Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;

    invoke-virtual {v0}, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->continued()V

    .line 40
    iget-object v0, p0, Lcom/tencent/midas/comm/log/processor/APLogCompressor;->out:Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;

    invoke-virtual {v0}, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->reset()V

    .line 43
    iget-object v0, p0, Lcom/tencent/midas/comm/log/processor/APLogCompressor;->gziper:Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;

    invoke-virtual {v0}, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->writeHeader()V

    .line 45
    iget-object v0, p0, Lcom/tencent/midas/comm/log/processor/APLogCompressor;->gziper:Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->write([BII)V

    .line 47
    iget-object v0, p0, Lcom/tencent/midas/comm/log/processor/APLogCompressor;->gziper:Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;

    invoke-virtual {v0}, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->finish()V

    .line 49
    iget-object v0, p0, Lcom/tencent/midas/comm/log/processor/APLogCompressor;->gziper:Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;

    invoke-virtual {v0}, Lcom/tencent/midas/comm/log/util/compressor/GzipCompressorOutputStream;->flush()V

    .line 51
    iget-object v0, p0, Lcom/tencent/midas/comm/log/processor/APLogCompressor;->out:Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;

    invoke-virtual {v0}, Lcom/tencent/midas/comm/log/util/compressor/CachedByteArrayStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p1

    .line 53
    monitor-exit p0

    return-object p1

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
