.class public Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioSoftEncoder;
.super Ljava/lang/Object;
.source "TXCAudioSoftEncoder.java"

# interfaces
.implements Lcom/tencent/liteav/audio/impl/Encoder/a;


# static fields
.field public static final TAG:Ljava/lang/String; = "TXCAudioSoftEncoder"


# instance fields
.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/liteav/audio/f;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeContext:J

.field private mSampleRate:I

.field private mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/tencent/liteav/basic/util/a;->d()V

    .line 22
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeSetTempPath(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioSoftEncoder;->mNativeContext:J

    .line 16
    iput-wide v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioSoftEncoder;->mTimestamp:J

    .line 17
    const v0, 0xbb80

    iput v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioSoftEncoder;->mSampleRate:I

    return-void
.end method

.method private native nativeEncode(J[B)[B
.end method

.method private native nativeGetMicPlayRate()F
.end method

.method private native nativeInit(IIII)J
.end method

.method private native nativeQuerry(J)[B
.end method

.method private native nativeUnInit(J)V
.end method

.method private onEncData([BJ)V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioSoftEncoder;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioSoftEncoder;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/f;

    .line 77
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/liteav/audio/f;->b([BJ)V

    .line 79
    :cond_0
    return-void
.end method

.method private onEncError(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioSoftEncoder;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioSoftEncoder;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/liteav/audio/f;

    .line 84
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/tencent/liteav/audio/f;->a(ILjava/lang/String;)V

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method public doEncodec([BJ)V
    .locals 6

    .prologue
    .line 32
    if-eqz p1, :cond_2

    .line 33
    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioSoftEncoder;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioSoftEncoder;->nativeEncode(J[B)[B

    .line 36
    :goto_0
    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioSoftEncoder;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioSoftEncoder;->nativeQuerry(J)[B

    move-result-object v0

    .line 37
    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    .line 38
    iget-wide v2, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioSoftEncoder;->mTimestamp:J

    cmp-long v1, v2, p2

    if-nez v1, :cond_1

    .line 39
    const v1, 0xfa000

    iget v2, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioSoftEncoder;->mSampleRate:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioSoftEncoder;->nativeGetMicPlayRate()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-long v2, v1

    add-long/2addr p2, v2

    .line 45
    :cond_0
    :goto_1
    invoke-direct {p0, v0, p2, p3}, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioSoftEncoder;->onEncData([BJ)V

    .line 46
    iput-wide p2, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioSoftEncoder;->mTimestamp:J

    goto :goto_0

    .line 41
    :cond_1
    iget-wide v2, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioSoftEncoder;->mTimestamp:J

    cmp-long v1, v2, p2

    if-ltz v1, :cond_0

    .line 42
    iget-wide v2, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioSoftEncoder;->mTimestamp:J

    const-wide/16 v4, 0x1

    add-long p2, v2, v4

    goto :goto_1

    .line 52
    :cond_2
    return-void
.end method

.method public encode([B)[B
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioSoftEncoder;->mNativeContext:J

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioSoftEncoder;->nativeEncode(J[B)[B

    move-result-object v0

    return-object v0
.end method

.method public init(IIIILjava/lang/ref/WeakReference;)V
    .locals 2
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
    .line 26
    iput p2, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioSoftEncoder;->mSampleRate:I

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioSoftEncoder;->nativeInit(IIII)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioSoftEncoder;->mNativeContext:J

    .line 28
    iput-object p5, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioSoftEncoder;->mListener:Ljava/lang/ref/WeakReference;

    .line 29
    return-void
.end method

.method public native setReverbType(I)V
.end method

.method public unInit()V
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioSoftEncoder;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/liteav/audio/impl/Encoder/TXCAudioSoftEncoder;->nativeUnInit(J)V

    .line 56
    return-void
.end method
