.class public Lcom/tencent/liteav/videoencoder/c;
.super Lcom/tencent/liteav/basic/module/a;
.source "TXIVideoEncoder.java"


# instance fields
.field protected volatile listenerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/liteav/videoencoder/d;",
            ">;"
        }
    .end annotation
.end field

.field protected mEncodeFilter:Lcom/tencent/liteav/basic/d/c;

.field private mEncodeFirstGOP:Z

.field protected mGLContextExternal:Ljavax/microedition/khronos/egl/EGLContext;

.field protected mInit:Z

.field protected mInputFilter:Lcom/tencent/liteav/basic/d/c;

.field protected mInputHeight:I

.field protected mInputWidth:I

.field protected mOutputHeight:I

.field protected mOutputWidth:I

.field private mVideoGOPEncode:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Lcom/tencent/liteav/basic/module/a;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoencoder/c;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    .line 29
    iput v2, p0, Lcom/tencent/liteav/videoencoder/c;->mInputWidth:I

    .line 31
    iput v2, p0, Lcom/tencent/liteav/videoencoder/c;->mInputHeight:I

    .line 33
    iput v2, p0, Lcom/tencent/liteav/videoencoder/c;->mOutputWidth:I

    .line 35
    iput v2, p0, Lcom/tencent/liteav/videoencoder/c;->mOutputHeight:I

    .line 42
    iput-object v1, p0, Lcom/tencent/liteav/videoencoder/c;->mGLContextExternal:Ljavax/microedition/khronos/egl/EGLContext;

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/videoencoder/c;->mVideoGOPEncode:J

    .line 45
    iput-boolean v2, p0, Lcom/tencent/liteav/videoencoder/c;->mEncodeFirstGOP:Z

    .line 53
    return-void
.end method


# virtual methods
.method protected callDelegate(I)V
    .locals 19

    .prologue
    .line 109
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v1, p0

    move/from16 v16, p1

    invoke-virtual/range {v1 .. v18}, Lcom/tencent/liteav/videoencoder/c;->callDelegate([BIJJJJJJILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 110
    return-void
.end method

.method protected callDelegate(Landroid/media/MediaFormat;)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/c;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/tencent/liteav/videoencoder/c;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/videoencoder/d;

    .line 160
    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v0, p1}, Lcom/tencent/liteav/videoencoder/d;->a(Landroid/media/MediaFormat;)V

    .line 164
    :cond_0
    return-void
.end method

.method protected callDelegate([BIJJJJJJILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 11

    .prologue
    .line 114
    if-nez p16, :cond_3

    const/4 v2, 0x0

    move-object v9, v2

    .line 116
    :goto_0
    if-nez p17, :cond_4

    const/4 v3, 0x0

    .line 117
    :goto_1
    if-eqz v3, :cond_0

    .line 118
    move-object/from16 v0, p17

    iget v4, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, p17

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object/from16 v0, p17

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v0, p17

    iget v8, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 120
    :cond_0
    iget-object v2, p0, Lcom/tencent/liteav/videoencoder/c;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    .line 121
    iget-object v2, p0, Lcom/tencent/liteav/videoencoder/c;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/liteav/videoencoder/d;

    .line 122
    if-eqz v2, :cond_2

    .line 123
    new-instance v4, Lcom/tencent/liteav/basic/f/b;

    invoke-direct {v4}, Lcom/tencent/liteav/basic/f/b;-><init>()V

    .line 124
    iput-object p1, v4, Lcom/tencent/liteav/basic/f/b;->a:[B

    .line 125
    iput p2, v4, Lcom/tencent/liteav/basic/f/b;->b:I

    .line 126
    iput-wide p3, v4, Lcom/tencent/liteav/basic/f/b;->c:J

    .line 127
    move-wide/from16 v0, p5

    iput-wide v0, v4, Lcom/tencent/liteav/basic/f/b;->d:J

    .line 128
    move-wide/from16 v0, p7

    iput-wide v0, v4, Lcom/tencent/liteav/basic/f/b;->e:J

    .line 129
    move-wide/from16 v0, p9

    iput-wide v0, v4, Lcom/tencent/liteav/basic/f/b;->f:J

    .line 130
    move-wide/from16 v0, p11

    iput-wide v0, v4, Lcom/tencent/liteav/basic/f/b;->g:J

    .line 131
    move-wide/from16 v0, p13

    iput-wide v0, v4, Lcom/tencent/liteav/basic/f/b;->h:J

    .line 132
    iput-object v9, v4, Lcom/tencent/liteav/basic/f/b;->i:Ljava/nio/ByteBuffer;

    .line 133
    iput-object v3, v4, Lcom/tencent/liteav/basic/f/b;->j:Landroid/media/MediaCodec$BufferInfo;

    .line 135
    move/from16 v0, p15

    invoke-interface {v2, v4, v0}, Lcom/tencent/liteav/videoencoder/d;->a(Lcom/tencent/liteav/basic/f/b;I)V

    .line 137
    const/16 v2, 0xfa2

    invoke-virtual {p0}, Lcom/tencent/liteav/videoencoder/c;->getRealBitrate()J

    move-result-wide v4

    long-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/tencent/liteav/videoencoder/c;->setStatusValue(ILjava/lang/Object;)Z

    .line 138
    const/16 v2, 0xfa1

    invoke-virtual {p0}, Lcom/tencent/liteav/videoencoder/c;->getRealFPS()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/tencent/liteav/videoencoder/c;->setStatusValue(ILjava/lang/Object;)Z

    .line 140
    if-nez p2, :cond_5

    .line 141
    iget-wide v2, p0, Lcom/tencent/liteav/videoencoder/c;->mVideoGOPEncode:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 142
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/liteav/videoencoder/c;->mEncodeFirstGOP:Z

    .line 143
    const/16 v2, 0xfa3

    iget-wide v4, p0, Lcom/tencent/liteav/videoencoder/c;->mVideoGOPEncode:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/tencent/liteav/videoencoder/c;->setStatusValue(ILjava/lang/Object;)Z

    .line 145
    :cond_1
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lcom/tencent/liteav/videoencoder/c;->mVideoGOPEncode:J

    .line 155
    :cond_2
    :goto_2
    return-void

    .line 114
    :cond_3
    invoke-virtual/range {p16 .. p16}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v9, v2

    goto/16 :goto_0

    .line 116
    :cond_4
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    goto/16 :goto_1

    .line 148
    :cond_5
    iget-wide v2, p0, Lcom/tencent/liteav/videoencoder/c;->mVideoGOPEncode:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/tencent/liteav/videoencoder/c;->mVideoGOPEncode:J

    .line 149
    iget-boolean v2, p0, Lcom/tencent/liteav/videoencoder/c;->mEncodeFirstGOP:Z

    if-nez v2, :cond_2

    .line 150
    const/16 v2, 0xfa3

    iget-wide v4, p0, Lcom/tencent/liteav/videoencoder/c;->mVideoGOPEncode:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/tencent/liteav/videoencoder/c;->setStatusValue(ILjava/lang/Object;)Z

    goto :goto_2
.end method

.method public getRealBitrate()J
    .locals 2

    .prologue
    .line 89
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getRealFPS()J
    .locals 2

    .prologue
    .line 85
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/tencent/liteav/videoencoder/c;->mOutputHeight:I

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/tencent/liteav/videoencoder/c;->mOutputWidth:I

    return v0
.end method

.method public pushVideoFrame(IIIJ)J
    .locals 2

    .prologue
    .line 101
    const-wide/32 v0, 0x989682

    return-wide v0
.end method

.method public setBitrate(I)V
    .locals 0

    .prologue
    .line 82
    return-void
.end method

.method public setFPS(I)V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public setListener(Lcom/tencent/liteav/videoencoder/d;)V
    .locals 1

    .prologue
    .line 73
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/liteav/videoencoder/c;->listenerWeakReference:Ljava/lang/ref/WeakReference;

    .line 74
    return-void
.end method

.method public start(Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;)I
    .locals 2

    .prologue
    .line 56
    if-eqz p1, :cond_0

    .line 57
    iget v0, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->width:I

    iput v0, p0, Lcom/tencent/liteav/videoencoder/c;->mOutputWidth:I

    .line 58
    iget v0, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->height:I

    iput v0, p0, Lcom/tencent/liteav/videoencoder/c;->mOutputHeight:I

    .line 59
    iget-object v0, p1, Lcom/tencent/liteav/videoencoder/TXSVideoEncoderParam;->glContext:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v0, p0, Lcom/tencent/liteav/videoencoder/c;->mGLContextExternal:Ljavax/microedition/khronos/egl/EGLContext;

    .line 62
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/videoencoder/c;->mVideoGOPEncode:J

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/videoencoder/c;->mEncodeFirstGOP:Z

    .line 65
    const v0, 0x989682

    return v0
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method
