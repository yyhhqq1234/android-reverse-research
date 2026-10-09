.class public Lcom/tencent/liteav/audio/impl/Decoder/TXCAudioSoftDecoder;
.super Ljava/lang/Object;
.source "TXCAudioSoftDecoder.java"

# interfaces
.implements Lcom/tencent/liteav/audio/impl/Decoder/b;


# static fields
.field private static final TXE_AUDIO_DATA_TYPE_AAC_HEADER:I = 0x2

.field private static final TXE_AUDIO_DATA_TYPE_AAC_RAWDATA:I = 0x3


# instance fields
.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/liteav/audio/e;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeCodec:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 20
    invoke-static {}, Lcom/tencent/liteav/basic/util/a;->d()V

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/audio/impl/Decoder/TXCAudioSoftDecoder;->mNativeCodec:J

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/Decoder/TXCAudioSoftDecoder;->mListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private native nativeDecodec(J[BIJ)[B
.end method

.method private native nativeInit(I)J
.end method

.method private native nativeUnInit(J)V
.end method


# virtual methods
.method public doDecodec(Lcom/tencent/liteav/basic/f/a;)V
    .locals 12

    .prologue
    const/16 v11, 0x9

    const/16 v10, 0x8

    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 31
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/tencent/liteav/audio/impl/Decoder/TXCAudioSoftDecoder;->mNativeCodec:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 32
    iget-wide v2, p0, Lcom/tencent/liteav/audio/impl/Decoder/TXCAudioSoftDecoder;->mNativeCodec:J

    iget-object v4, p1, Lcom/tencent/liteav/basic/f/a;->f:[B

    iget v0, p1, Lcom/tencent/liteav/basic/f/a;->d:I

    add-int/lit8 v5, v0, 0x1

    iget-wide v6, p1, Lcom/tencent/liteav/basic/f/a;->e:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/tencent/liteav/audio/impl/Decoder/TXCAudioSoftDecoder;->nativeDecodec(J[BIJ)[B

    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    array-length v1, v0

    if-ne v1, v11, :cond_1

    .line 35
    invoke-static {v0, v8, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/liteav/audio/impl/b;->a([B)I

    move-result v1

    .line 36
    invoke-static {v0, v9, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/liteav/audio/impl/b;->a([B)I

    move-result v2

    .line 37
    invoke-static {v0, v10, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    aget-byte v0, v0, v8

    .line 38
    new-instance v3, Lcom/tencent/liteav/basic/f/a;

    invoke-direct {v3}, Lcom/tencent/liteav/basic/f/a;-><init>()V

    .line 39
    iput v1, v3, Lcom/tencent/liteav/basic/f/a;->a:I

    .line 40
    iput v2, v3, Lcom/tencent/liteav/basic/f/a;->b:I

    .line 41
    iput v0, v3, Lcom/tencent/liteav/basic/f/a;->c:I

    .line 42
    invoke-virtual {p0, v3}, Lcom/tencent/liteav/audio/impl/Decoder/TXCAudioSoftDecoder;->onPlayAudioInfoChanged(Lcom/tencent/liteav/basic/f/a;)V

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 44
    :cond_1
    iget-wide v2, p1, Lcom/tencent/liteav/basic/f/a;->e:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/tencent/liteav/audio/impl/Decoder/TXCAudioSoftDecoder;->onPlayPcmData([BJ)V

    goto :goto_0
.end method

.method public init(ILjava/lang/ref/WeakReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/liteav/audio/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    iput-object p2, p0, Lcom/tencent/liteav/audio/impl/Decoder/TXCAudioSoftDecoder;->mListener:Ljava/lang/ref/WeakReference;

    .line 26
    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/impl/Decoder/TXCAudioSoftDecoder;->nativeInit(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/audio/impl/Decoder/TXCAudioSoftDecoder;->mNativeCodec:J

    .line 27
    return-void
.end method

.method onPlayAudioInfoChanged(Lcom/tencent/liteav/basic/f/a;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Decoder/TXCAudioSoftDecoder;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Decoder/TXCAudioSoftDecoder;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/e;

    .line 65
    invoke-interface {v0, p1}, Lcom/tencent/liteav/audio/e;->onPlayAudioInfoChanged(Lcom/tencent/liteav/basic/f/a;)V

    .line 67
    :cond_0
    return-void
.end method

.method onPlayPcmData([BJ)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Decoder/TXCAudioSoftDecoder;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Decoder/TXCAudioSoftDecoder;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/e;

    .line 72
    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/liteav/audio/e;->onPlayPcmData([BJ)V

    .line 74
    :cond_0
    return-void
.end method

.method public unInit()V
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/Decoder/TXCAudioSoftDecoder;->mListener:Ljava/lang/ref/WeakReference;

    .line 52
    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/Decoder/TXCAudioSoftDecoder;->mNativeCodec:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/audio/impl/Decoder/TXCAudioSoftDecoder;->nativeUnInit(J)V

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/audio/impl/Decoder/TXCAudioSoftDecoder;->mNativeCodec:J

    .line 54
    return-void
.end method
