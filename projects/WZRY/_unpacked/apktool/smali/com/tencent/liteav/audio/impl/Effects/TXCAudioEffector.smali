.class public Lcom/tencent/liteav/audio/impl/Effects/TXCAudioEffector;
.super Ljava/lang/Object;
.source "TXCAudioEffector.java"


# instance fields
.field private mNativeEffector:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 12
    invoke-static {}, Lcom/tencent/liteav/basic/util/a;->d()V

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/liteav/audio/impl/Effects/TXCAudioEffector;->mNativeEffector:J

    .line 17
    return-void
.end method

.method private static native nativeAddAudio(JI[B)V
.end method

.method private static native nativeEffectorCreate()J
.end method

.method private static native nativeEffectorDestory(J)J
.end method

.method private static native nativeInitOneTrack(JIII)I
.end method

.method private static native nativeInitOneTrackEx(JIIII)V
.end method

.method private static native nativeMixAudio(J)[B
.end method

.method private static native nativeMixAudioEx(J[B)[B
.end method

.method private static native nativeResampleData(JI[B)[B
.end method

.method private static native nativeSetReverb(JII)V
.end method

.method private static native nativeSetVolume(JIF)V
.end method

.method private static native nativeUninitAllTracks(J)V
.end method


# virtual methods
.method public addAudio(I[B)V
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/Effects/TXCAudioEffector;->mNativeEffector:J

    invoke-static {v0, v1, p1, p2}, Lcom/tencent/liteav/audio/impl/Effects/TXCAudioEffector;->nativeAddAudio(JI[B)V

    .line 45
    return-void
.end method

.method public destoryEffector()V
    .locals 2

    .prologue
    .line 24
    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/Effects/TXCAudioEffector;->mNativeEffector:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/Effects/TXCAudioEffector;->nativeEffectorDestory(J)J

    .line 25
    return-void
.end method

.method public initEffector()V
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Lcom/tencent/liteav/audio/impl/Effects/TXCAudioEffector;->nativeEffectorCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/audio/impl/Effects/TXCAudioEffector;->mNativeEffector:J

    .line 21
    return-void
.end method

.method public initOneTrack(III)I
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/Effects/TXCAudioEffector;->mNativeEffector:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/tencent/liteav/audio/impl/Effects/TXCAudioEffector;->nativeInitOneTrack(JIII)I

    move-result v0

    return v0
.end method

.method public initOneTrack(IIII)V
    .locals 6

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/Effects/TXCAudioEffector;->mNativeEffector:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/tencent/liteav/audio/impl/Effects/TXCAudioEffector;->nativeInitOneTrackEx(JIIII)V

    .line 33
    return-void
.end method

.method public mixAudio()[B
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/Effects/TXCAudioEffector;->mNativeEffector:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/Effects/TXCAudioEffector;->nativeMixAudio(J)[B

    move-result-object v0

    return-object v0
.end method

.method public resampleData(I[B)[B
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/Effects/TXCAudioEffector;->mNativeEffector:J

    invoke-static {v0, v1, p1, p2}, Lcom/tencent/liteav/audio/impl/Effects/TXCAudioEffector;->nativeResampleData(JI[B)[B

    move-result-object v0

    return-object v0
.end method

.method public setReverb(I)V
    .locals 3

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/Effects/TXCAudioEffector;->mNativeEffector:J

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, p1}, Lcom/tencent/liteav/audio/impl/Effects/TXCAudioEffector;->nativeSetReverb(JII)V

    .line 41
    return-void
.end method

.method public setVolume(IF)V
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/Effects/TXCAudioEffector;->mNativeEffector:J

    invoke-static {v0, v1, p1, p2}, Lcom/tencent/liteav/audio/impl/Effects/TXCAudioEffector;->nativeSetVolume(JIF)V

    .line 49
    return-void
.end method

.method public unInitAllTracks()V
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/Effects/TXCAudioEffector;->mNativeEffector:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/Effects/TXCAudioEffector;->nativeUninitAllTracks(J)V

    .line 37
    return-void
.end method
