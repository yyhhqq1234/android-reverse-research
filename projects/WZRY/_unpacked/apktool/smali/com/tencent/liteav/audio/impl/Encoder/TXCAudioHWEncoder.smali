.class public Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;
.super Ljava/lang/Thread;
.source "TXCAudioHWEncoder.java"

# interfaces
.implements Lcom/tencent/liteav/audio/impl/Encoder/a;


# instance fields
.field private a:Landroid/media/MediaCodec$BufferInfo;

.field private b:Landroid/media/MediaCodecInfo;

.field private c:Landroid/media/MediaFormat;

.field private d:Landroid/media/MediaCodec;

.field private e:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<[B>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/liteav/audio/f;",
            ">;"
        }
    .end annotation
.end field

.field private volatile g:Z

.field private volatile h:Z

.field private final i:Ljava/lang/Object;

.field private j:J

.field private k:I

.field private l:I

.field private m:I

.field private n:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/tencent/liteav/basic/util/a;->d()V

    .line 28
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeSetTempPath(Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 57
    const-string v0, "TXAudioRecordThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 46
    iput-boolean v1, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->g:Z

    .line 47
    iput-boolean v1, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->h:Z

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->i:Ljava/lang/Object;

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->j:J

    .line 50
    sget v0, Lcom/tencent/liteav/audio/b;->a:I

    iput v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->k:I

    .line 51
    sget v0, Lcom/tencent/liteav/audio/b;->b:I

    iput v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->l:I

    .line 52
    sget v0, Lcom/tencent/liteav/audio/b;->c:I

    iput v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->m:I

    .line 58
    return-void
.end method

.method private static final a(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 279
    const-string v0, "TXCAudioHWEncoder"

    const-string v2, "selectAudioCodec:"

    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const/4 v3, 0x0

    .line 283
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v5

    move v4, v1

    .line 285
    :goto_0
    if-ge v4, v5, :cond_3

    .line 286
    invoke-static {v4}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v2

    .line 287
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 290
    :cond_1
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    move v0, v1

    .line 291
    :goto_1
    array-length v7, v6

    if-ge v0, v7, :cond_0

    .line 293
    const-string v7, "TXCAudioHWEncoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "supportedType:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",MIME="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v6, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    aget-object v7, v6, v0

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 295
    if-nez v3, :cond_2

    move-object v0, v2

    .line 302
    :goto_2
    return-object v0

    .line 291
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v3

    goto :goto_2
.end method

.method private a()V
    .locals 4

    .prologue
    const/16 v0, 0x7d00

    .line 99
    const-string v1, "audio/mp4a-latm"

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->a(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->b:Landroid/media/MediaCodecInfo;

    .line 100
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->b:Landroid/media/MediaCodecInfo;

    if-nez v1, :cond_0

    .line 101
    const-string v0, "TXCAudioHWEncoder"

    const-string v1, "Unable to find an appropriate codec for audio/mp4a-latm"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string v1, "TXCAudioHWEncoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selected codec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->b:Landroid/media/MediaCodecInfo;

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget v1, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->k:I

    if-lt v1, v0, :cond_1

    .line 108
    const v0, 0xfa00

    .line 111
    :cond_1
    const-string v1, "audio/mp4a-latm"

    iget v2, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->k:I

    iget v3, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->l:I

    invoke-static {v1, v2, v3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->c:Landroid/media/MediaFormat;

    .line 112
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->c:Landroid/media/MediaFormat;

    const-string v2, "bitrate"

    invoke-virtual {v1, v2, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 113
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->c:Landroid/media/MediaFormat;

    const-string v1, "channel-count"

    iget v2, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->l:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 114
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->c:Landroid/media/MediaFormat;

    const-string v1, "sample-rate"

    iget v2, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->k:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 115
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->c:Landroid/media/MediaFormat;

    const-string v1, "aac-profile"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 116
    const-string v0, "TXCAudioHWEncoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->c:Landroid/media/MediaFormat;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->start()V

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private a(Ljava/nio/ByteBuffer;IJ)V
    .locals 7

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->h:Z

    if-eqz v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->d:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v1

    .line 208
    if-ltz v1, :cond_6

    .line 209
    aget-object v0, v0, v1

    .line 210
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 211
    if-eqz p1, :cond_1

    .line 212
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 215
    :cond_1
    if-gtz p2, :cond_5

    .line 216
    const-string v0, "TXCAudioHWEncoder"

    const-string v2, "send BUFFER_FLAG_END_OF_STREAM"

    invoke-static {v0, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->d:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x4

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 234
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 238
    :cond_3
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->d:Landroid/media/MediaCodec;

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    .line 239
    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    .line 268
    :cond_4
    :goto_2
    if-gez v1, :cond_3

    goto :goto_0

    .line 220
    :cond_5
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->d:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_1

    .line 223
    :cond_6
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2

    goto :goto_1

    .line 240
    :cond_7
    const/4 v2, -0x3

    if-ne v1, v2, :cond_8

    .line 241
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_2

    .line 242
    :cond_8
    const/4 v2, -0x2

    if-ne v1, v2, :cond_9

    .line 243
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->d:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    goto :goto_2

    .line 249
    :cond_9
    if-ltz v1, :cond_4

    .line 251
    aget-object v2, v0, v1

    .line 252
    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_a

    .line 253
    const-string v3, "TXCAudioHWEncoder"

    const-string v4, "drain:BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v3, v4}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    const/4 v4, 0x0

    iput v4, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 257
    :cond_a
    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v3, :cond_b

    .line 258
    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->e()J

    move-result-wide v4

    iput-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 259
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->n:[B

    .line 260
    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->n:[B

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 262
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->n:[B

    iget-object v3, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v4, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p0, v2, v4, v5}, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->a([BJ)V

    .line 263
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v2, v2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v2, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->j:J

    .line 266
    :cond_b
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->d:Landroid/media/MediaCodec;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_2
.end method

.method private a([BJ)V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->f:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/f;

    .line 308
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/liteav/audio/f;->b([BJ)V

    .line 310
    :cond_0
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->h:Z

    .line 129
    return-void
.end method

.method private c()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 133
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->d:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 136
    :cond_0
    const-string v0, "audio/mp4a-latm"

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->d:Landroid/media/MediaCodec;

    .line 137
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->d:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->c:Landroid/media/MediaFormat;

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 138
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    .line 139
    const-string v0, "TXCAudioHWEncoder"

    const-string v1, "prepare finishing"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iput-boolean v2, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->g:Z

    goto :goto_0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->d:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 148
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->d:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->d:Landroid/media/MediaCodec;

    .line 151
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->g:Z

    .line 152
    return-void
.end method

.method private e()J
    .locals 4

    .prologue
    .line 272
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v0

    .line 273
    iget-wide v2, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->j:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 274
    iget-wide v2, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->j:J

    sub-long/2addr v2, v0

    add-long/2addr v0, v2

    .line 275
    :cond_0
    return-wide v0
.end method

.method private native nativeEncode([B)[B
.end method


# virtual methods
.method public doEncodec([BJ)V
    .locals 3

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->nativeEncode([B)[B

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->e:Ljava/util/Vector;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 76
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->e:Ljava/util/Vector;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->e:Ljava/util/Vector;

    if-nez v2, :cond_0

    .line 78
    monitor-exit v1

    .line 87
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->e:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 81
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 84
    :cond_1
    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 86
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 81
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public init(IIIILjava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/liteav/audio/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    iput-object p5, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->f:Ljava/lang/ref/WeakReference;

    .line 62
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->a:Landroid/media/MediaCodec$BufferInfo;

    .line 63
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->e:Ljava/util/Vector;

    .line 64
    iput p2, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->k:I

    .line 65
    iput p3, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->l:I

    .line 66
    iput p4, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->m:I

    .line 69
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->a()V

    .line 70
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 156
    const/16 v0, 0x400

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v1, v0

    .line 157
    :goto_0
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->h:Z

    if-nez v0, :cond_4

    .line 158
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->g:Z

    if-eqz v0, :cond_3

    .line 160
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->e:Ljava/util/Vector;

    monitor-enter v2

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    .line 162
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    if-eqz v0, :cond_0

    .line 165
    const-wide/16 v2, 0xa

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    :goto_1
    move-object v1, v0

    .line 190
    goto :goto_0

    .line 162
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    move-object v0, v1

    .line 168
    goto :goto_1

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->e:Ljava/util/Vector;

    monitor-enter v2

    .line 172
    :try_start_3
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->e:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 173
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 174
    if-eqz v0, :cond_2

    .line 176
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 177
    array-length v2, v0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 178
    array-length v2, v0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 180
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 181
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 183
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 184
    array-length v0, v0

    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->e()J

    move-result-wide v2

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->a(Ljava/nio/ByteBuffer;IJ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    .line 187
    goto :goto_1

    .line 173
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 185
    :catch_1
    move-exception v0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move-object v0, v1

    goto :goto_1

    .line 191
    :cond_3
    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->i:Ljava/lang/Object;

    monitor-enter v2

    .line 193
    :try_start_6
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->i:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 197
    :goto_2
    :try_start_7
    monitor-exit v2

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 194
    :catch_2
    move-exception v0

    .line 195
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_2

    .line 200
    :cond_4
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->d()V

    .line 201
    return-void
.end method

.method public setReverbType(I)V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public unInit()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioHWEncoder;->b()V

    .line 91
    return-void
.end method
