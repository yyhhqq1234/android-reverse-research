.class public Lcom/tencent/liteav/videodecoder/c;
.super Ljava/lang/Object;
.source "TXCVideoMediaCodecDecoder.java"

# interfaces
.implements Lcom/tencent/liteav/videodecoder/a;


# instance fields
.field private a:Landroid/media/MediaCodec$BufferInfo;

.field private b:Landroid/media/MediaCodec;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:J

.field private g:J

.field private h:Z

.field private i:Z

.field private j:Landroid/view/Surface;

.field private k:I

.field private l:I

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private n:Lcom/tencent/liteav/videodecoder/d;

.field private o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/liteav/basic/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->a:Landroid/media/MediaCodec$BufferInfo;

    .line 24
    iput-object v2, p0, Lcom/tencent/liteav/videodecoder/c;->b:Landroid/media/MediaCodec;

    .line 26
    const-string/jumbo v0, "video/avc"

    iput-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->c:Ljava/lang/String;

    .line 27
    const/16 v0, 0x21c

    iput v0, p0, Lcom/tencent/liteav/videodecoder/c;->d:I

    .line 28
    const/16 v0, 0x3c0

    iput v0, p0, Lcom/tencent/liteav/videodecoder/c;->e:I

    .line 29
    iput-wide v4, p0, Lcom/tencent/liteav/videodecoder/c;->f:J

    .line 30
    iput-wide v4, p0, Lcom/tencent/liteav/videodecoder/c;->g:J

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/videodecoder/c;->h:Z

    .line 32
    iput-boolean v1, p0, Lcom/tencent/liteav/videodecoder/c;->i:Z

    .line 34
    iput-object v2, p0, Lcom/tencent/liteav/videodecoder/c;->j:Landroid/view/Surface;

    .line 37
    iput v1, p0, Lcom/tencent/liteav/videodecoder/c;->k:I

    .line 38
    iput v1, p0, Lcom/tencent/liteav/videodecoder/c;->l:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->m:Ljava/util/ArrayList;

    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 90
    const/4 v1, -0x1

    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/tencent/liteav/videodecoder/c;->b:Landroid/media/MediaCodec;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/tencent/liteav/videodecoder/c;->j:Landroid/view/Surface;

    if-nez v2, :cond_1

    .line 94
    :cond_0
    const-string v2, "MediaCodecDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANR Test init decoder error, can not init for decoder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/liteav/videodecoder/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",surface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/liteav/videodecoder/c;->j:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 124
    :goto_0
    return v0

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/tencent/liteav/videodecoder/c;->c:Ljava/lang/String;

    iget v4, p0, Lcom/tencent/liteav/videodecoder/c;->d:I

    iget v5, p0, Lcom/tencent/liteav/videodecoder/c;->e:I

    invoke-static {v2, v4, v5}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v2

    .line 98
    if-eqz p1, :cond_2

    .line 99
    const-string v4, "csd-0"

    invoke-virtual {v2, v4, p1}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 101
    :cond_2
    if-eqz p2, :cond_3

    .line 102
    const-string v4, "csd-1"

    invoke-virtual {v2, v4, p2}, Landroid/media/MediaFormat;->setByteBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 104
    :cond_3
    iget-object v4, p0, Lcom/tencent/liteav/videodecoder/c;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/liteav/videodecoder/c;->b:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    :try_start_1
    iget-object v4, p0, Lcom/tencent/liteav/videodecoder/c;->b:Landroid/media/MediaCodec;

    iget-object v5, p0, Lcom/tencent/liteav/videodecoder/c;->j:Landroid/view/Surface;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 107
    const/4 v3, 0x2

    .line 108
    const-string v2, "MediaCodecDecoder"

    const-string v4, "config decoder sucess"

    invoke-static {v2, v4}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v2, p0, Lcom/tencent/liteav/videodecoder/c;->b:Landroid/media/MediaCodec;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    .line 110
    const/4 v3, 0x3

    .line 111
    const-string v2, "MediaCodecDecoder"

    const-string v4, "set decoder scalingmod sucess"

    invoke-static {v2, v4}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v2, p0, Lcom/tencent/liteav/videodecoder/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->start()V

    .line 113
    const/4 v3, 0x4

    .line 114
    const-string v2, "MediaCodecDecoder"

    const-string v4, "ANR Test vrender start decoder sucess"

    invoke-static {v2, v4}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 116
    const/4 v1, 0x0

    :try_start_2
    iput v1, p0, Lcom/tencent/liteav/videodecoder/c;->k:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v2

    move v1, v0

    .line 118
    :goto_1
    const-string v0, "MediaCodecDecoder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ANR Test vrender init decoder "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " step exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iput-object v8, p0, Lcom/tencent/liteav/videodecoder/c;->b:Landroid/media/MediaCodec;

    .line 120
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 122
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->o:Ljava/lang/ref/WeakReference;

    const/16 v2, 0x83a

    const-string/jumbo v3, "\u786c\u89e3\u542f\u52a8\u5931\u8d25\uff0c\u91c7\u7528\u8f6f\u89e3"

    invoke-static {v0, v2, v3}, Lcom/tencent/liteav/basic/util/a;->a(Ljava/lang/ref/WeakReference;ILjava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    .line 117
    :catch_1
    move-exception v2

    move v3, v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v2, v0

    goto :goto_1
.end method

.method private a()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 128
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->b:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 131
    const-string v0, "MediaCodecDecoder"

    const-string v1, "ANR Test stop decoder sucess"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 137
    :try_start_1
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 138
    const-string v0, "MediaCodecDecoder"

    const-string v1, "ANR Test release decoder sucess"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    iput-object v5, p0, Lcom/tencent/liteav/videodecoder/c;->b:Landroid/media/MediaCodec;

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 148
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/videodecoder/c;->f:J

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/videodecoder/c;->h:Z

    .line 150
    iput-boolean v4, p0, Lcom/tencent/liteav/videodecoder/c;->i:Z

    .line 151
    iput v4, p0, Lcom/tencent/liteav/videodecoder/c;->l:I

    .line 153
    :cond_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    :try_start_2
    const-string v1, "MediaCodecDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANR Test release decoder exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    iput-object v5, p0, Lcom/tencent/liteav/videodecoder/c;->b:Landroid/media/MediaCodec;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v5, p0, Lcom/tencent/liteav/videodecoder/c;->b:Landroid/media/MediaCodec;

    throw v0

    .line 132
    :catch_1
    move-exception v0

    .line 133
    :try_start_3
    const-string v1, "MediaCodecDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANR Test stop decoder Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 137
    :try_start_4
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    .line 138
    const-string v0, "MediaCodecDecoder"

    const-string v1, "ANR Test release decoder sucess"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 143
    iput-object v5, p0, Lcom/tencent/liteav/videodecoder/c;->b:Landroid/media/MediaCodec;

    goto :goto_0

    .line 139
    :catch_2
    move-exception v0

    .line 140
    :try_start_5
    const-string v1, "MediaCodecDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANR Test release decoder exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 143
    iput-object v5, p0, Lcom/tencent/liteav/videodecoder/c;->b:Landroid/media/MediaCodec;

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    iput-object v5, p0, Lcom/tencent/liteav/videodecoder/c;->b:Landroid/media/MediaCodec;

    throw v0

    .line 136
    :catchall_2
    move-exception v0

    .line 137
    :try_start_6
    iget-object v1, p0, Lcom/tencent/liteav/videodecoder/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 138
    const-string v1, "MediaCodecDecoder"

    const-string v2, "ANR Test release decoder sucess"

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 143
    iput-object v5, p0, Lcom/tencent/liteav/videodecoder/c;->b:Landroid/media/MediaCodec;

    :goto_1
    throw v0

    .line 139
    :catch_3
    move-exception v1

    .line 140
    :try_start_7
    const-string v2, "MediaCodecDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ANR Test release decoder exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 143
    iput-object v5, p0, Lcom/tencent/liteav/videodecoder/c;->b:Landroid/media/MediaCodec;

    goto :goto_1

    :catchall_3
    move-exception v0

    iput-object v5, p0, Lcom/tencent/liteav/videodecoder/c;->b:Landroid/media/MediaCodec;

    throw v0
.end method

.method private a(IJJ)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 238
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 239
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->a:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 240
    const-string v0, "MediaCodecDecoder"

    const-string v1, "output EOS"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->n:Lcom/tencent/liteav/videodecoder/d;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->n:Lcom/tencent/liteav/videodecoder/d;

    const/4 v1, 0x0

    iget v2, p0, Lcom/tencent/liteav/videodecoder/c;->d:I

    iget v3, p0, Lcom/tencent/liteav/videodecoder/c;->e:I

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v0 .. v7}, Lcom/tencent/liteav/videodecoder/d;->a(Landroid/graphics/SurfaceTexture;IIJJ)V

    .line 246
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->n:Lcom/tencent/liteav/videodecoder/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tencent/liteav/videodecoder/d;->c(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/tencent/liteav/videodecoder/c;->d()V

    .line 253
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b()V
    .locals 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/16 v12, 0x83a

    const/16 v7, -0x2710

    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->b:Landroid/media/MediaCodec;

    if-nez v0, :cond_1

    .line 158
    const-string v0, "MediaCodecDecoder"

    const-string v1, "null decoder"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [B

    .line 163
    if-eqz v3, :cond_2

    array-length v0, v3

    if-nez v0, :cond_3

    .line 164
    :cond_2
    const-string v0, "MediaCodecDecoder"

    const-string v1, "empty buffer"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->n:Lcom/tencent/liteav/videodecoder/d;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->n:Lcom/tencent/liteav/videodecoder/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/tencent/liteav/videodecoder/d;->c(I)V

    goto :goto_0

    .line 172
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    .line 175
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 176
    if-eqz v6, :cond_4

    array-length v0, v6

    if-nez v0, :cond_5

    .line 177
    :cond_4
    const-string v0, "MediaCodecDecoder"

    const-string v1, "getInputBuffers failed"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_5
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->b:Landroid/media/MediaCodec;

    const-wide/16 v8, 0x2710

    invoke-virtual {v0, v8, v9}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 187
    :goto_1
    if-ltz v1, :cond_8

    .line 188
    aget-object v0, v6, v1

    .line 189
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 190
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->b:Landroid/media/MediaCodec;

    array-length v3, v3

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 191
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 192
    iget v0, p0, Lcom/tencent/liteav/videodecoder/c;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/liteav/videodecoder/c;->l:I

    .line 193
    iget-wide v8, p0, Lcom/tencent/liteav/videodecoder/c;->f:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-nez v0, :cond_6

    .line 194
    const-string v0, "MediaCodecDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "input buffer available, dequeueInputBuffer index: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_6
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->b:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/tencent/liteav/videodecoder/c;->a:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v8, 0x2710

    invoke-virtual {v0, v1, v8, v9}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    .line 208
    :goto_3
    if-ltz v7, :cond_9

    move-object v6, p0

    move-wide v8, v4

    move-wide v10, v4

    .line 209
    invoke-direct/range {v6 .. v11}, Lcom/tencent/liteav/videodecoder/c;->a(IJJ)V

    .line 210
    iget v0, p0, Lcom/tencent/liteav/videodecoder/c;->l:I

    if-lez v0, :cond_7

    iget v0, p0, Lcom/tencent/liteav/videodecoder/c;->l:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/liteav/videodecoder/c;->l:I

    .line 211
    :cond_7
    iput v2, p0, Lcom/tencent/liteav/videodecoder/c;->k:I

    goto/16 :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    const-string v1, "MediaCodecDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dequeueInputBuffer Exception!! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v7

    goto :goto_1

    .line 197
    :cond_8
    const-string v0, "MediaCodecDecoder"

    const-string v1, "input buffer not available, dequeueInputBuffer failed"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 203
    :catch_1
    move-exception v0

    .line 205
    iget-object v1, p0, Lcom/tencent/liteav/videodecoder/c;->o:Ljava/lang/ref/WeakReference;

    const-string/jumbo v3, "\u786c\u89e3\u5931\u8d25\uff0c\u91c7\u7528\u8f6f\u89e3"

    invoke-static {v1, v12, v3}, Lcom/tencent/liteav/basic/util/a;->a(Ljava/lang/ref/WeakReference;ILjava/lang/String;)V

    .line 206
    const-string v1, "MediaCodecDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dequeueOutputBuffer exception!!"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 212
    :cond_9
    const/4 v0, -0x1

    if-ne v7, v0, :cond_b

    .line 214
    const-wide/16 v0, 0xa

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 219
    :goto_4
    const-string v0, "MediaCodecDecoder"

    const-string v1, "no output from decoder available when timeout"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget v0, p0, Lcom/tencent/liteav/videodecoder/c;->k:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_a

    .line 221
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->o:Ljava/lang/ref/WeakReference;

    const-string/jumbo v1, "\u786c\u89e3\u542f\u52a8\u5931\u8d25\uff0c\u91c7\u7528\u8f6f\u89e3"

    invoke-static {v0, v12, v1}, Lcom/tencent/liteav/basic/util/a;->a(Ljava/lang/ref/WeakReference;ILjava/lang/String;)V

    .line 222
    iput v2, p0, Lcom/tencent/liteav/videodecoder/c;->k:I

    goto/16 :goto_0

    .line 215
    :catch_2
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 224
    :cond_a
    iget v0, p0, Lcom/tencent/liteav/videodecoder/c;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/liteav/videodecoder/c;->k:I

    goto/16 :goto_0

    .line 226
    :cond_b
    const/4 v0, -0x3

    if-ne v7, v0, :cond_c

    .line 228
    const-string v0, "MediaCodecDecoder"

    const-string v1, "decoder output buffers changed"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 229
    :cond_c
    const/4 v0, -0x2

    if-ne v7, v0, :cond_d

    .line 230
    invoke-direct {p0}, Lcom/tencent/liteav/videodecoder/c;->c()V

    goto/16 :goto_0

    .line 232
    :cond_d
    const-string v0, "MediaCodecDecoder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unexpected result from decoder.dequeueOutputBuffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 256
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->b:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    .line 257
    const-string v1, "MediaCodecDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "decoder output format changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v1, "crop-right"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    const-string v2, "crop-left"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 260
    const-string v2, "crop-bottom"

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const-string v3, "crop-top"

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 262
    const-string/jumbo v3, "width"

    invoke-virtual {v0, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 263
    const-string v4, "height"

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 265
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 266
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 268
    iget v0, p0, Lcom/tencent/liteav/videodecoder/c;->d:I

    if-ne v1, v0, :cond_0

    iget v0, p0, Lcom/tencent/liteav/videodecoder/c;->e:I

    if-eq v2, v0, :cond_3

    .line 269
    :cond_0
    iput v1, p0, Lcom/tencent/liteav/videodecoder/c;->d:I

    .line 270
    iput v2, p0, Lcom/tencent/liteav/videodecoder/c;->e:I

    .line 272
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->n:Lcom/tencent/liteav/videodecoder/d;

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->n:Lcom/tencent/liteav/videodecoder/d;

    iget v3, p0, Lcom/tencent/liteav/videodecoder/c;->d:I

    iget v4, p0, Lcom/tencent/liteav/videodecoder/c;->e:I

    invoke-interface {v0, v3, v4}, Lcom/tencent/liteav/videodecoder/d;->a(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :cond_1
    :goto_0
    const-string v0, "MediaCodecDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "video size change to w:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",h:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_2
    :goto_1
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 280
    :cond_3
    iget-boolean v0, p0, Lcom/tencent/liteav/videodecoder/c;->h:Z

    if-eqz v0, :cond_2

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videodecoder/c;->h:Z

    .line 282
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->n:Lcom/tencent/liteav/videodecoder/d;

    if-eqz v0, :cond_2

    .line 283
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->n:Lcom/tencent/liteav/videodecoder/d;

    iget v1, p0, Lcom/tencent/liteav/videodecoder/c;->d:I

    iget v2, p0, Lcom/tencent/liteav/videodecoder/c;->e:I

    invoke-interface {v0, v1, v2}, Lcom/tencent/liteav/videodecoder/d;->a(II)V

    goto :goto_1
.end method

.method private d()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x0

    .line 290
    iget-wide v0, p0, Lcom/tencent/liteav/videodecoder/c;->f:J

    cmp-long v0, v0, v6

    if-nez v0, :cond_0

    .line 291
    const-string v0, "MediaCodecDecoder"

    const-string v1, "decode first frame sucess"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 295
    iget-wide v2, p0, Lcom/tencent/liteav/videodecoder/c;->f:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    .line 297
    iget-wide v2, p0, Lcom/tencent/liteav/videodecoder/c;->f:J

    add-long/2addr v2, v8

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-wide v2, p0, Lcom/tencent/liteav/videodecoder/c;->g:J

    const-wide/16 v4, 0x7d0

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-wide v2, p0, Lcom/tencent/liteav/videodecoder/c;->g:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    .line 298
    const-string v2, "MediaCodecDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frame interval["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/tencent/liteav/videodecoder/c;->f:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iput-wide v0, p0, Lcom/tencent/liteav/videodecoder/c;->g:J

    .line 302
    :cond_1
    iget-wide v2, p0, Lcom/tencent/liteav/videodecoder/c;->g:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_2

    .line 303
    iput-wide v0, p0, Lcom/tencent/liteav/videodecoder/c;->g:J

    .line 305
    :cond_2
    iput-wide v0, p0, Lcom/tencent/liteav/videodecoder/c;->f:J

    .line 306
    return-void
.end method


# virtual methods
.method public config(Landroid/view/Surface;)I
    .locals 1

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 56
    const/4 v0, -0x1

    .line 59
    :goto_0
    return v0

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/tencent/liteav/videodecoder/c;->j:Landroid/view/Surface;

    .line 59
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public decode([BJJ)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/tencent/liteav/videodecoder/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 68
    invoke-direct {p0}, Lcom/tencent/liteav/videodecoder/c;->b()V

    .line 69
    iget-object v1, p0, Lcom/tencent/liteav/videodecoder/c;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 72
    if-ne v0, v1, :cond_0

    .line 77
    :cond_1
    return-void
.end method

.method public setListener(Lcom/tencent/liteav/videodecoder/d;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/tencent/liteav/videodecoder/c;->n:Lcom/tencent/liteav/videodecoder/d;

    .line 45
    return-void
.end method

.method public setNotifyListener(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/liteav/basic/c/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    iput-object p1, p0, Lcom/tencent/liteav/videodecoder/c;->o:Ljava/lang/ref/WeakReference;

    .line 51
    return-void
.end method

.method public start(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Z)I
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/tencent/liteav/videodecoder/c;->a(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/tencent/liteav/videodecoder/c;->a()V

    .line 87
    return-void
.end method
