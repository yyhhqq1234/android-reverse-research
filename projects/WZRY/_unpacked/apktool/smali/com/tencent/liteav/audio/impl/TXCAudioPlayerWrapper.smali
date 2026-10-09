.class public Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;
.super Ljava/lang/Object;
.source "TXCAudioPlayerWrapper.java"

# interfaces
.implements Lcom/tencent/liteav/audio/e;
.implements Lcom/tencent/liteav/audio/impl/b/b;


# static fields
.field public static final TAG:Ljava/lang/String; = "TXCAudioPlay"


# instance fields
.field getInfoRunnable:Ljava/lang/Runnable;

.field private mAECType:I

.field private mAudioSeq:Lcom/tencent/liteav/basic/f/a;

.field private mAutoAdjustMaxCache:F

.field private mAutoAdjustMinCache:F

.field private mAutojustCache:Z

.field private mCacheDuration:J

.field private mCacheTime:F

.field private mContext:Landroid/content/Context;

.field private mDecType:I

.field private mDecoder:Lcom/tencent/liteav/audio/impl/Decoder/b;

.field private mIsHWAcceleration:Z

.field private mIsMute:Z

.field private volatile mIsPause:Z

.field private volatile mIsPlaying:Z

.field private mIsRealTimePlay:Z

.field private mListener:Lcom/tencent/liteav/audio/e;

.field private mNativeProcessor:J

.field private mPlayHandler:Landroid/os/Handler;

.field private mPlayRate:F

.field private mPlayThread:Landroid/os/HandlerThread;

.field private mRender:Lcom/tencent/liteav/audio/impl/b/a;

.field private mReportInfo:Lcom/tencent/liteav/audio/impl/TXAudioJitterBufferReportInfo;

.field private mSampleRate:J

.field traePlayAudioTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayRate:F

    .line 26
    iput-boolean v2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsHWAcceleration:Z

    .line 27
    iput-boolean v2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsRealTimePlay:Z

    .line 28
    sget v0, Lcom/tencent/liteav/audio/a;->a:I

    iput v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mAECType:I

    .line 29
    sget v0, Lcom/tencent/liteav/audio/d;->v:I

    iput v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mDecType:I

    .line 31
    iput-wide v4, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mNativeProcessor:J

    .line 37
    iput-wide v4, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mCacheDuration:J

    .line 38
    sget v0, Lcom/tencent/liteav/audio/a;->b:F

    iput v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mCacheTime:F

    .line 39
    sget-boolean v0, Lcom/tencent/liteav/audio/a;->c:Z

    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mAutojustCache:Z

    .line 40
    sget v0, Lcom/tencent/liteav/audio/a;->d:F

    iput v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mAutoAdjustMaxCache:F

    .line 41
    sget v0, Lcom/tencent/liteav/audio/a;->e:F

    iput v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mAutoAdjustMinCache:F

    .line 43
    sget v0, Lcom/tencent/liteav/audio/b;->a:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mSampleRate:J

    .line 44
    iput-boolean v2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsMute:Z

    .line 46
    iput-boolean v2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPlaying:Z

    .line 47
    iput-boolean v2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPause:Z

    .line 528
    new-instance v0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$7;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$7;-><init>(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)V

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->traePlayAudioTask:Ljava/lang/Runnable;

    .line 581
    new-instance v0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$8;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$8;-><init>(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)V

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->getInfoRunnable:Ljava/lang/Runnable;

    .line 51
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Lcom/tencent/liteav/audio/e;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mListener:Lcom/tencent/liteav/audio/e;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Lcom/tencent/liteav/audio/e;)Lcom/tencent/liteav/audio/e;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mListener:Lcom/tencent/liteav/audio/e;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)J
    .locals 2

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mNativeProcessor:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Lcom/tencent/liteav/audio/impl/Decoder/b;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mDecoder:Lcom/tencent/liteav/audio/impl/Decoder/b;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Lcom/tencent/liteav/audio/impl/Decoder/b;)Lcom/tencent/liteav/audio/impl/Decoder/b;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mDecoder:Lcom/tencent/liteav/audio/impl/Decoder/b;

    return-object p1
.end method

.method static synthetic access$102(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;J)J
    .locals 1

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mNativeProcessor:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Lcom/tencent/liteav/basic/f/a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mAudioSeq:Lcom/tencent/liteav/basic/f/a;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Lcom/tencent/liteav/basic/f/a;)Lcom/tencent/liteav/basic/f/a;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mAudioSeq:Lcom/tencent/liteav/basic/f/a;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsRealTimePlay:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsRealTimePlay:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->destoryAudioProcessors()V

    return-void
.end method

.method static synthetic access$1400(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Lcom/tencent/liteav/audio/impl/b/a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mRender:Lcom/tencent/liteav/audio/impl/b/a;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Lcom/tencent/liteav/audio/impl/b/a;)Lcom/tencent/liteav/audio/impl/b/a;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mRender:Lcom/tencent/liteav/audio/impl/b/a;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsMute:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsMute:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mDecType:I

    return v0
.end method

.method static synthetic access$1602(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;I)I
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mDecType:I

    return p1
.end method

.method static synthetic access$1700(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->setSystemAudioState(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPause:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPause:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$202(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;F)F
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mCacheTime:F

    return p1
.end method

.method static synthetic access$2100(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Landroid/os/HandlerThread;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Lcom/tencent/liteav/audio/impl/TXAudioJitterBufferReportInfo;)Lcom/tencent/liteav/audio/impl/TXAudioJitterBufferReportInfo;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mReportInfo:Lcom/tencent/liteav/audio/impl/TXAudioJitterBufferReportInfo;

    return-object p1
.end method

.method static synthetic access$302(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mAutojustCache:Z

    return p1
.end method

.method static synthetic access$402(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;F)F
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mAutoAdjustMaxCache:F

    return p1
.end method

.method static synthetic access$502(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;F)F
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mAutoAdjustMinCache:F

    return p1
.end method

.method static synthetic access$600(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mAECType:I

    return v0
.end method

.method static synthetic access$602(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;I)I
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mAECType:I

    return p1
.end method

.method static synthetic access$700(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsHWAcceleration:Z

    return v0
.end method

.method static synthetic access$702(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Z)Z
    .locals 0

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsHWAcceleration:Z

    return p1
.end method

.method static synthetic access$802(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;J)J
    .locals 1

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mCacheDuration:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Z)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->initNativeProcessor(Z)V

    return-void
.end method

.method private destoryAudioProcessors()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 564
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mRender:Lcom/tencent/liteav/audio/impl/b/a;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mRender:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/b/a;->c()V

    .line 566
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mRender:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/b/a;->a()V

    .line 567
    iput-object v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mRender:Lcom/tencent/liteav/audio/impl/b/a;

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mDecoder:Lcom/tencent/liteav/audio/impl/Decoder/b;

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mDecoder:Lcom/tencent/liteav/audio/impl/Decoder/b;

    invoke-interface {v0}, Lcom/tencent/liteav/audio/impl/Decoder/b;->unInit()V

    .line 571
    iput-object v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mDecoder:Lcom/tencent/liteav/audio/impl/Decoder/b;

    .line 573
    :cond_1
    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mNativeProcessor:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 574
    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mNativeProcessor:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeDestoryPlayProcessor(J)V

    .line 575
    iput-wide v2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mNativeProcessor:J

    .line 576
    iput-wide v2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mCacheDuration:J

    .line 578
    :cond_2
    return-void
.end method

.method public static getAacHeader(III)[B
    .locals 1

    .prologue
    .line 454
    invoke-static {p0, p1, p2}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeGetAacHeader(III)[B

    move-result-object v0

    return-object v0
.end method

.method private initNativeProcessor(Z)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 542
    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mNativeProcessor:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 544
    :cond_1
    invoke-static {p0}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeCreatePlayProcessor(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mNativeProcessor:J

    .line 545
    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mNativeProcessor:J

    iget-boolean v2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mAutojustCache:Z

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeSetAutoAdjust(JZ)V

    .line 546
    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mNativeProcessor:J

    iget v2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mCacheTime:F

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeSetCacheTime(JF)V

    .line 547
    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mNativeProcessor:J

    iget v2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mAutoAdjustMaxCache:F

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeSetAutoAdjustMinCache(JF)V

    .line 548
    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mNativeProcessor:J

    iget v2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mAutoAdjustMinCache:F

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeSetAutoAdjustMinCache(JF)V

    .line 549
    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mNativeProcessor:J

    iget-boolean v2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsRealTimePlay:Z

    invoke-static {v0, v1, v2}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeSetRealTimePlay(JZ)V

    .line 550
    iput-wide v4, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mCacheDuration:J

    .line 552
    if-eqz p1, :cond_0

    .line 553
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 554
    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mNativeProcessor:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeQueryData(J)[B

    .line 555
    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mNativeProcessor:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeGetCacheSize(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mCacheDuration:J

    .line 556
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->traePlayAudioTask:Ljava/lang/Runnable;

    const/high16 v2, 0x41a80000    # 21.0f

    iget-wide v4, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mNativeProcessor:J

    invoke-static {v4, v5}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeGetPlaySpeed(J)F

    move-result v3

    div-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static setSpeakerphoneOn(Landroid/content/Context;Z)V
    .locals 2

    .prologue
    .line 458
    if-eqz p0, :cond_0

    .line 459
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 460
    if-eqz p1, :cond_1

    .line 461
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 465
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0
.end method

.method private setSystemAudioState(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 600
    if-nez p1, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 602
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0
.end method


# virtual methods
.method public OnAudioNeedRender()V
    .locals 2

    .prologue
    .line 512
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$6;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$6;-><init>(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 526
    :cond_0
    return-void
.end method

.method public enableRealTimePlay(Z)V
    .locals 2

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$14;

    invoke-direct {v1, p0, p1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$14;-><init>(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsRealTimePlay:Z

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 60
    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mNativeProcessor:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 61
    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mNativeProcessor:J

    invoke-static {v0, v1}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeDestoryPlayProcessor(J)V

    .line 62
    iput-wide v2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mNativeProcessor:J

    .line 64
    :cond_0
    return-void
.end method

.method public getAECType()I
    .locals 1

    .prologue
    .line 215
    iget v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mAECType:I

    return v0
.end method

.method public getCacheDuration()J
    .locals 4

    .prologue
    .line 153
    const-wide/16 v0, 0x0

    .line 154
    iget-boolean v2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPlaying:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mRender:Lcom/tencent/liteav/audio/impl/b/a;

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mRender:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/b/a;->d()J

    move-result-wide v0

    .line 155
    :cond_0
    iget-wide v2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mCacheDuration:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mSampleRate:J

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getPlayCache()F
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public getPlayRate()F
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayRate:F

    return v0
.end method

.method public getReportInfo()Lcom/tencent/liteav/audio/impl/TXAudioJitterBufferReportInfo;
    .locals 1

    .prologue
    .line 594
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mReportInfo:Lcom/tencent/liteav/audio/impl/TXAudioJitterBufferReportInfo;

    .line 596
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHWAcceleration()Z
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsHWAcceleration:Z

    return v0
.end method

.method public isIsPlaying()Z
    .locals 1

    .prologue
    .line 257
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPlaying:Z

    return v0
.end method

.method public isPause()Z
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPause:Z

    return v0
.end method

.method public isRealTimePlay()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsRealTimePlay:Z

    return v0
.end method

.method public onPlayAudioInfoChanged(Lcom/tencent/liteav/basic/f/a;)V
    .locals 5

    .prologue
    .line 472
    iget v0, p1, Lcom/tencent/liteav/basic/f/a;->a:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mSampleRate:J

    .line 473
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mListener:Lcom/tencent/liteav/audio/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mListener:Lcom/tencent/liteav/audio/e;

    invoke-interface {v0, p1}, Lcom/tencent/liteav/audio/e;->onPlayAudioInfoChanged(Lcom/tencent/liteav/basic/f/a;)V

    .line 474
    :cond_0
    iget-wide v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mNativeProcessor:J

    iget v2, p1, Lcom/tencent/liteav/basic/f/a;->a:I

    iget v3, p1, Lcom/tencent/liteav/basic/f/a;->b:I

    iget v4, p1, Lcom/tencent/liteav/basic/f/a;->c:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativePlayProcessorSetAudioInfo(JIII)V

    .line 475
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mRender:Lcom/tencent/liteav/audio/impl/b/a;

    if-eqz v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mRender:Lcom/tencent/liteav/audio/impl/b/a;

    iget v1, p1, Lcom/tencent/liteav/basic/f/a;->a:I

    iget v2, p1, Lcom/tencent/liteav/basic/f/a;->b:I

    iget v3, p1, Lcom/tencent/liteav/basic/f/a;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/liteav/audio/impl/b/a;->a(III)V

    .line 477
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mRender:Lcom/tencent/liteav/audio/impl/b/a;

    invoke-virtual {v0}, Lcom/tencent/liteav/audio/impl/b/a;->b()V

    .line 479
    :cond_1
    return-void
.end method

.method public onPlayError(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 503
    return-void
.end method

.method public onPlayJitterStateNotify(I)V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mListener:Lcom/tencent/liteav/audio/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mListener:Lcom/tencent/liteav/audio/e;

    invoke-interface {v0, p1}, Lcom/tencent/liteav/audio/e;->onPlayJitterStateNotify(I)V

    .line 508
    :cond_0
    return-void
.end method

.method public onPlayPcmData([BJ)V
    .locals 2

    .prologue
    .line 483
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$5;-><init>(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;[BJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 493
    :cond_0
    return-void
.end method

.method public onPlaySpeedPcmData([BJ)V
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mListener:Lcom/tencent/liteav/audio/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mListener:Lcom/tencent/liteav/audio/e;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/liteav/audio/e;->onPlaySpeedPcmData([BJ)V

    .line 498
    :cond_0
    return-void
.end method

.method public pausePlay()I
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPause:Z

    .line 379
    sget v0, Lcom/tencent/liteav/audio/d;->e:I

    return v0
.end method

.method public playData(Lcom/tencent/liteav/basic/f/a;)I
    .locals 3

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPlaying:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPause:Z

    if-eqz v0, :cond_1

    .line 304
    :cond_0
    const-string v0, "TXCAudioPlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid state. isPlaying = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isPause = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPause:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    sget v0, Lcom/tencent/liteav/audio/d;->f:I

    .line 374
    :goto_0
    return v0

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 309
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;

    invoke-direct {v1, p0, p1, p0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$2;-><init>(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Lcom/tencent/liteav/basic/f/a;Lcom/tencent/liteav/audio/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    :goto_1
    sget v0, Lcom/tencent/liteav/audio/d;->e:I

    goto :goto_0

    .line 372
    :cond_2
    const-string v0, "TXCAudioPlay"

    const-string v1, "play handler is null"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public resetPlay()I
    .locals 1

    .prologue
    .line 388
    sget v0, Lcom/tencent/liteav/audio/d;->e:I

    return v0
.end method

.method public resumePlay()I
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPause:Z

    .line 384
    sget v0, Lcom/tencent/liteav/audio/d;->e:I

    return v0
.end method

.method public setAECType(ILandroid/content/Context;)V
    .locals 3

    .prologue
    .line 218
    sget v0, Lcom/tencent/liteav/audio/d;->B:I

    if-ne v0, p1, :cond_0

    .line 219
    invoke-static {p2}, Lcom/tencent/liteav/audio/impl/TXCAudioJNI;->nativeCheckTraeEngine(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    const-string v0, "TXCAudioPlay"

    const-string v1, "start trae aec failed"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    sget p1, Lcom/tencent/liteav/audio/d;->A:I

    .line 224
    :cond_0
    const-string v0, "TXCAudioPlay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "player setAECType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 229
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$15;

    invoke-direct {v1, p0, p1, p0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$15;-><init>(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;ILcom/tencent/liteav/audio/impl/b/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    :cond_1
    iput p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mAECType:I

    .line 255
    return-void
.end method

.method public setAutoAdjustMaxCache(F)V
    .locals 2

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$11;

    invoke-direct {v1, p0, p1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$11;-><init>(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iput p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mAutoAdjustMaxCache:F

    goto :goto_0
.end method

.method public setAutoAdjustMinCache(F)V
    .locals 2

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$12;

    invoke-direct {v1, p0, p1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$12;-><init>(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iput p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mAutoAdjustMinCache:F

    goto :goto_0
.end method

.method public setAutojust(Z)V
    .locals 2

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$10;

    invoke-direct {v1, p0, p1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$10;-><init>(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mAutojustCache:Z

    goto :goto_0
.end method

.method public setCacheTime(F)V
    .locals 2

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$9;

    invoke-direct {v1, p0, p1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$9;-><init>(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iput p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mCacheTime:F

    goto :goto_0
.end method

.method public setHWAcceleration(Z)V
    .locals 2

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$13;

    invoke-direct {v1, p0, p1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$13;-><init>(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsHWAcceleration:Z

    goto :goto_0
.end method

.method public setListener(Lcom/tencent/liteav/audio/e;)V
    .locals 2

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$1;-><init>(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Lcom/tencent/liteav/audio/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iput-object p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mListener:Lcom/tencent/liteav/audio/e;

    goto :goto_0
.end method

.method public setMute(Z)V
    .locals 2

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$4;

    invoke-direct {v1, p0, p1}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$4;-><init>(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    iput-boolean p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsMute:Z

    goto :goto_0
.end method

.method public setPlayRate(F)V
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayRate:F

    .line 85
    return-void
.end method

.method public startPlay()I
    .locals 4

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPlaying:Z

    if-nez v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TXCAudioPlay"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayThread:Landroid/os/HandlerThread;

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 267
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$16;

    invoke-direct {v1, p0, p0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$16;-><init>(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;Lcom/tencent/liteav/audio/impl/b/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 290
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->getInfoRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 291
    sget v0, Lcom/tencent/liteav/audio/b;->a:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mSampleRate:J

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPause:Z

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPlaying:Z

    .line 295
    const-string v0, "TXCAudioPlay"

    const-string v1, "audioKey startPlay complete"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    sget v0, Lcom/tencent/liteav/audio/d;->e:I

    .line 298
    :goto_0
    return v0

    :cond_2
    sget v0, Lcom/tencent/liteav/audio/d;->i:I

    goto :goto_0
.end method

.method public stopPlay()I
    .locals 2

    .prologue
    .line 392
    iget-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPlaying:Z

    if-eqz v0, :cond_1

    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mIsPlaying:Z

    .line 394
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 396
    iget-object v0, p0, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;->mPlayHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$3;

    invoke-direct {v1, p0}, Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper$3;-><init>(Lcom/tencent/liteav/audio/impl/TXCAudioPlayerWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 429
    :cond_0
    sget v0, Lcom/tencent/liteav/audio/d;->e:I

    .line 431
    :goto_0
    return v0

    :cond_1
    sget v0, Lcom/tencent/liteav/audio/d;->i:I

    goto :goto_0
.end method
