.class public Lcom/tencent/rtmp1/TXLivePusher;
.super Ljava/lang/Object;
.source "TXLivePusher.java"

# interfaces
.implements Lcom/tencent/liteav/basic/c/a;
.implements Lcom/tencent/liteav/c$a;
.implements Lcom/tencent/liteav/n;
.implements Lcom/tencent/liteav/qos/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/rtmp1/TXLivePusher$VideoCustomProcessListener;,
        Lcom/tencent/rtmp1/TXLivePusher$OnBGMNotify;
    }
.end annotation


# static fields
.field public static final RGB_BGRA:I = 0x4

.field public static final RGB_RGBA:I = 0x5

.field private static final TAG:Ljava/lang/String;

.field public static final YUV_420P:I = 0x3

.field public static final YUV_420SP:I = 0x1

.field public static final YUV_420YpCbCr:I = 0x2


# instance fields
.field private mCaptureAndEnc:Lcom/tencent/liteav/c;

.field private mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

.field private mContext:Landroid/content/Context;

.field private mDataReport:Lcom/tencent/liteav/d;

.field private mID:Ljava/lang/String;

.field private mListener:Lcom/tencent/rtmp1/ITXLivePushListener;

.field private mMainHandler:Landroid/os/Handler;

.field private mNewConfig:Lcom/tencent/liteav/f;

.field private mNotifyStatus:Z

.field mOldBGMNotify:Lcom/tencent/rtmp1/TXLivePusher$OnBGMNotify;

.field mOldBGMNotifyProxy:Lcom/tencent/liteav/audio/g;

.field private mPreprocessListener:Lcom/tencent/rtmp1/TXLivePusher$VideoCustomProcessListener;

.field private mPushUrl:Ljava/lang/String;

.field private mQos:Lcom/tencent/liteav/qos/TXCQoS;

.field private mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

.field private mTXCloudVideoView:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

.field private mVideoQuality:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/tencent/rtmp1/TXLivePusher;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/rtmp1/TXLivePusher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    .line 44
    iput-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mListener:Lcom/tencent/rtmp1/ITXLivePushListener;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mVideoQuality:I

    .line 49
    iput-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    .line 50
    iput-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    .line 51
    iput-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    .line 52
    iput-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mContext:Landroid/content/Context;

    .line 53
    iput-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mMainHandler:Landroid/os/Handler;

    .line 54
    iput-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mQos:Lcom/tencent/liteav/qos/TXCQoS;

    .line 55
    iput-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mDataReport:Lcom/tencent/liteav/d;

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mPushUrl:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mID:Ljava/lang/String;

    .line 479
    iput-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mOldBGMNotifyProxy:Lcom/tencent/liteav/audio/g;

    .line 480
    iput-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mOldBGMNotify:Lcom/tencent/rtmp1/TXLivePusher$OnBGMNotify;

    .line 1081
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNotifyStatus:Z

    .line 67
    invoke-static {}, Lcom/tencent/liteav/basic/log/TXCLog;->init()V

    .line 69
    new-instance v0, Lcom/tencent/liteav/f;

    invoke-direct {v0}, Lcom/tencent/liteav/f;-><init>()V

    iput-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mMainHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Lcom/tencent/liteav/c;

    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/c;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    .line 75
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/c;->a(Lcom/tencent/liteav/basic/c/a;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/rtmp1/TXLivePusher;)Lcom/tencent/rtmp1/ui/TXCloudVideoView;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mTXCloudVideoView:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/rtmp1/TXLivePusher;)Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNotifyStatus:Z

    return v0
.end method

.method static synthetic access$200(Lcom/tencent/rtmp1/TXLivePusher;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/tencent/rtmp1/TXLivePusher;->statusNotify()V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/rtmp1/TXLivePusher;)Lcom/tencent/rtmp1/ITXLivePushListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mListener:Lcom/tencent/rtmp1/ITXLivePushListener;

    return-object v0
.end method

.method private applyConfig()V
    .locals 6

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1297
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-nez v0, :cond_1

    .line 1337
    :cond_0
    :goto_0
    return-void

    .line 1299
    :cond_1
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    iget-object v4, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    invoke-virtual {v0, v4}, Lcom/tencent/liteav/c;->a(Lcom/tencent/liteav/f;)V

    .line 1300
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/c;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1301
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    if-eqz v0, :cond_3

    .line 1302
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget-boolean v0, v0, Lcom/tencent/liteav/f;->H:Z

    if-eqz v0, :cond_6

    .line 1303
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v4, v0, Lcom/tencent/liteav/f;->o:I

    .line 1304
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v0, v0, Lcom/tencent/liteav/f;->p:I

    .line 1305
    if-ge v4, v3, :cond_5

    .line 1306
    :goto_1
    if-le v0, v1, :cond_2

    move v0, v1

    .line 1307
    :cond_2
    iget-object v4, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    invoke-virtual {v4, v0}, Lcom/tencent/liteav/network/TXCStreamUploader;->setRetryInterval(I)V

    .line 1308
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    invoke-virtual {v0, v3}, Lcom/tencent/liteav/network/TXCStreamUploader;->setRetryTimes(I)V

    .line 1309
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    iget-object v3, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v3, v3, Lcom/tencent/liteav/f;->h:I

    const/16 v4, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Lcom/tencent/liteav/network/TXCStreamUploader;->setVideoDropParams(ZII)V

    .line 1310
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/network/TXCStreamUploader;->setSendStrategy(Z)V

    .line 1319
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mQos:Lcom/tencent/liteav/qos/TXCQoS;

    if-eqz v0, :cond_0

    .line 1320
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mQos:Lcom/tencent/liteav/qos/TXCQoS;

    iget-object v3, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget-boolean v3, v3, Lcom/tencent/liteav/f;->g:Z

    invoke-virtual {v0, v3}, Lcom/tencent/liteav/qos/TXCQoS;->setAutoAdjustBitrate(Z)V

    .line 1321
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mQos:Lcom/tencent/liteav/qos/TXCQoS;

    iget-object v3, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v3, v3, Lcom/tencent/liteav/f;->f:I

    invoke-virtual {v0, v3}, Lcom/tencent/liteav/qos/TXCQoS;->setAutoAdjustStrategy(I)V

    .line 1322
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mQos:Lcom/tencent/liteav/qos/TXCQoS;

    iget-object v3, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v3, v3, Lcom/tencent/liteav/f;->k:I

    iget-object v4, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v4, v4, Lcom/tencent/liteav/f;->l:I

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v4, v4, Lcom/tencent/liteav/f;->l:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    :cond_4
    :goto_3
    invoke-virtual {v0, v3, v1}, Lcom/tencent/liteav/qos/TXCQoS;->setDefaultVideoResolution(IZ)V

    .line 1323
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mQos:Lcom/tencent/liteav/qos/TXCQoS;

    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v1, v1, Lcom/tencent/liteav/f;->e:I

    iget-object v2, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v2, v2, Lcom/tencent/liteav/f;->d:I

    iget-object v3, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v3, v3, Lcom/tencent/liteav/f;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/liteav/qos/TXCQoS;->setVideoEncBitrate(III)V

    .line 1324
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mQos:Lcom/tencent/liteav/qos/TXCQoS;

    invoke-virtual {v0}, Lcom/tencent/liteav/qos/TXCQoS;->stop()V

    .line 1325
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget-boolean v0, v0, Lcom/tencent/liteav/f;->g:Z

    if-eqz v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mQos:Lcom/tencent/liteav/qos/TXCQoS;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/tencent/liteav/qos/TXCQoS;->start(J)V

    goto/16 :goto_0

    :cond_5
    move v3, v4

    .line 1305
    goto :goto_1

    .line 1312
    :cond_6
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    iget-object v3, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v3, v3, Lcom/tencent/liteav/f;->p:I

    invoke-virtual {v0, v3}, Lcom/tencent/liteav/network/TXCStreamUploader;->setRetryInterval(I)V

    .line 1313
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    iget-object v3, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v3, v3, Lcom/tencent/liteav/f;->o:I

    invoke-virtual {v0, v3}, Lcom/tencent/liteav/network/TXCStreamUploader;->setRetryTimes(I)V

    .line 1314
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    const/16 v3, 0x28

    const/16 v4, 0xbb8

    invoke-virtual {v0, v1, v3, v4}, Lcom/tencent/liteav/network/TXCStreamUploader;->setVideoDropParams(ZII)V

    .line 1315
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    invoke-virtual {v0, v2}, Lcom/tencent/liteav/network/TXCStreamUploader;->setSendStrategy(Z)V

    goto :goto_2

    :cond_7
    move v1, v2

    .line 1322
    goto :goto_3

    .line 1331
    :cond_8
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v0, v0, Lcom/tencent/liteav/f;->I:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    .line 1332
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v1, v1, Lcom/tencent/liteav/f;->q:I

    iget-object v2, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v2, v2, Lcom/tencent/liteav/f;->r:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/network/TXCStreamUploader;->setAudioInfo(II)V

    goto/16 :goto_0

    .line 1334
    :cond_9
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    iget-object v2, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v2, v2, Lcom/tencent/liteav/f;->q:I

    invoke-virtual {v0, v2, v1}, Lcom/tencent/liteav/network/TXCStreamUploader;->setAudioInfo(II)V

    goto/16 :goto_0
.end method

.method private getAdjustStrategy(ZZ)I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 789
    if-ne p1, v0, :cond_1

    .line 790
    if-ne p2, v0, :cond_0

    .line 796
    :goto_0
    return v0

    .line 793
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 796
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private setAdjustStrategy(ZZ)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 778
    invoke-direct {p0, p1, p2}, Lcom/tencent/rtmp1/TXLivePusher;->getAdjustStrategy(ZZ)I

    move-result v0

    .line 779
    if-ne v0, v2, :cond_0

    .line 780
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp1/TXLivePushConfig;->setAutoAdjustBitrate(Z)V

    .line 781
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v0, v2}, Lcom/tencent/rtmp1/TXLivePushConfig;->setAutoAdjustStrategy(I)V

    .line 786
    :goto_0
    return-void

    .line 783
    :cond_0
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/rtmp1/TXLivePushConfig;->setAutoAdjustBitrate(Z)V

    .line 784
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp1/TXLivePushConfig;->setAutoAdjustStrategy(I)V

    goto :goto_0
.end method

.method private setSharpenLevel(I)V
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/c;->c(I)V

    .line 704
    :cond_0
    return-void
.end method

.method private startDataReportModule()V
    .locals 3

    .prologue
    .line 1226
    new-instance v0, Lcom/tencent/liteav/d;

    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/liteav/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mDataReport:Lcom/tencent/liteav/d;

    .line 1227
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mDataReport:Lcom/tencent/liteav/d;

    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/d;->b(Ljava/lang/String;)V

    .line 1228
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mDataReport:Lcom/tencent/liteav/d;

    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v1, v1, Lcom/tencent/liteav/f;->c:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/d;->a(I)V

    .line 1229
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mDataReport:Lcom/tencent/liteav/d;

    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v1, v1, Lcom/tencent/liteav/f;->q:I

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/d;->b(I)V

    .line 1230
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mDataReport:Lcom/tencent/liteav/d;

    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v1, v1, Lcom/tencent/liteav/f;->a:I

    iget-object v2, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v2, v2, Lcom/tencent/liteav/f;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/tencent/liteav/d;->a(II)V

    .line 1231
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mDataReport:Lcom/tencent/liteav/d;

    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mPushUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/d;->a(Ljava/lang/String;)V

    .line 1232
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mDataReport:Lcom/tencent/liteav/d;

    invoke-virtual {v0}, Lcom/tencent/liteav/d;->a()V

    .line 1233
    return-void
.end method

.method private startEncoder()V
    .locals 2

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/c;->setID(Ljava/lang/String;)V

    .line 1245
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/c;->a(Lcom/tencent/liteav/c$a;)V

    .line 1246
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/c;->d()I

    .line 1248
    :cond_0
    return-void
.end method

.method private startNetworkModule()V
    .locals 8

    .prologue
    const/16 v7, 0x28

    const/4 v2, 0x5

    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 1153
    new-instance v0, Lcom/tencent/liteav/network/g;

    invoke-direct {v0}, Lcom/tencent/liteav/network/g;-><init>()V

    .line 1154
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/liteav/audio/b;->b()I

    move-result v3

    iput v3, v0, Lcom/tencent/liteav/network/g;->d:I

    .line 1155
    invoke-static {}, Lcom/tencent/liteav/audio/b;->a()Lcom/tencent/liteav/audio/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/liteav/audio/b;->c()I

    move-result v3

    iput v3, v0, Lcom/tencent/liteav/network/g;->e:I

    .line 1156
    iput v6, v0, Lcom/tencent/liteav/network/g;->a:I

    .line 1157
    const/16 v3, 0x14

    iput v3, v0, Lcom/tencent/liteav/network/g;->c:I

    .line 1158
    iput v6, v0, Lcom/tencent/liteav/network/g;->b:I

    .line 1159
    const/4 v3, 0x3

    iput v3, v0, Lcom/tencent/liteav/network/g;->f:I

    .line 1160
    iput-boolean v1, v0, Lcom/tencent/liteav/network/g;->j:Z

    .line 1161
    iput-boolean v1, v0, Lcom/tencent/liteav/network/g;->l:Z

    .line 1162
    iput-boolean v6, v0, Lcom/tencent/liteav/network/g;->k:Z

    .line 1163
    iput v7, v0, Lcom/tencent/liteav/network/g;->h:I

    .line 1164
    const/16 v3, 0x1388

    iput v3, v0, Lcom/tencent/liteav/network/g;->i:I

    .line 1165
    iget-object v3, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget-boolean v3, v3, Lcom/tencent/liteav/f;->H:Z

    iput-boolean v3, v0, Lcom/tencent/liteav/network/g;->m:Z

    .line 1166
    new-instance v3, Lcom/tencent/liteav/network/TXCStreamUploader;

    iget-object v4, p0, Lcom/tencent/rtmp1/TXLivePusher;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v0}, Lcom/tencent/liteav/network/TXCStreamUploader;-><init>(Landroid/content/Context;Lcom/tencent/liteav/network/g;)V

    iput-object v3, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    .line 1167
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    iget-object v3, p0, Lcom/tencent/rtmp1/TXLivePusher;->mID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tencent/liteav/network/TXCStreamUploader;->setID(Ljava/lang/String;)V

    .line 1168
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v0, v0, Lcom/tencent/liteav/f;->I:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 1169
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    iget-object v3, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v3, v3, Lcom/tencent/liteav/f;->q:I

    iget-object v4, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v4, v4, Lcom/tencent/liteav/f;->r:I

    invoke-virtual {v0, v3, v4}, Lcom/tencent/liteav/network/TXCStreamUploader;->setAudioInfo(II)V

    .line 1173
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/network/TXCStreamUploader;->setNotifyListener(Lcom/tencent/liteav/basic/c/a;)V

    .line 1174
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    iget-object v3, p0, Lcom/tencent/rtmp1/TXLivePusher;->mPushUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget-boolean v4, v4, Lcom/tencent/liteav/f;->F:Z

    iget-object v5, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v5, v5, Lcom/tencent/liteav/f;->G:I

    invoke-virtual {v0, v3, v4, v5}, Lcom/tencent/liteav/network/TXCStreamUploader;->start(Ljava/lang/String;ZI)V

    .line 1175
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget-boolean v0, v0, Lcom/tencent/liteav/f;->E:Z

    if-eqz v0, :cond_1

    .line 1176
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/network/TXCStreamUploader;->setMode(I)V

    .line 1178
    :cond_1
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget-boolean v0, v0, Lcom/tencent/liteav/f;->H:Z

    if-eqz v0, :cond_5

    .line 1179
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v3, v0, Lcom/tencent/liteav/f;->o:I

    .line 1180
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v0, v0, Lcom/tencent/liteav/f;->p:I

    .line 1181
    if-ge v3, v2, :cond_4

    .line 1182
    :goto_1
    if-le v0, v1, :cond_2

    move v0, v1

    .line 1183
    :cond_2
    iget-object v3, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    invoke-virtual {v3, v0}, Lcom/tencent/liteav/network/TXCStreamUploader;->setRetryInterval(I)V

    .line 1184
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    invoke-virtual {v0, v2}, Lcom/tencent/liteav/network/TXCStreamUploader;->setRetryTimes(I)V

    .line 1185
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    iget-object v2, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v2, v2, Lcom/tencent/liteav/f;->h:I

    const/16 v3, 0x3e8

    invoke-virtual {v0, v6, v2, v3}, Lcom/tencent/liteav/network/TXCStreamUploader;->setVideoDropParams(ZII)V

    .line 1186
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/network/TXCStreamUploader;->setSendStrategy(Z)V

    .line 1193
    :goto_2
    return-void

    .line 1171
    :cond_3
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    iget-object v3, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v3, v3, Lcom/tencent/liteav/f;->q:I

    invoke-virtual {v0, v3, v1}, Lcom/tencent/liteav/network/TXCStreamUploader;->setAudioInfo(II)V

    goto :goto_0

    :cond_4
    move v2, v3

    .line 1181
    goto :goto_1

    .line 1188
    :cond_5
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    iget-object v2, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v2, v2, Lcom/tencent/liteav/f;->p:I

    invoke-virtual {v0, v2}, Lcom/tencent/liteav/network/TXCStreamUploader;->setRetryInterval(I)V

    .line 1189
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    iget-object v2, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v2, v2, Lcom/tencent/liteav/f;->o:I

    invoke-virtual {v0, v2}, Lcom/tencent/liteav/network/TXCStreamUploader;->setRetryTimes(I)V

    .line 1190
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v7, v2}, Lcom/tencent/liteav/network/TXCStreamUploader;->setVideoDropParams(ZII)V

    .line 1191
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    invoke-virtual {v0, v6}, Lcom/tencent/liteav/network/TXCStreamUploader;->setSendStrategy(Z)V

    goto :goto_2
.end method

.method private startQosModule()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 1204
    new-instance v1, Lcom/tencent/liteav/qos/TXCQoS;

    invoke-direct {v1, v0}, Lcom/tencent/liteav/qos/TXCQoS;-><init>(Z)V

    iput-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mQos:Lcom/tencent/liteav/qos/TXCQoS;

    .line 1205
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mQos:Lcom/tencent/liteav/qos/TXCQoS;

    invoke-virtual {v1, p0}, Lcom/tencent/liteav/qos/TXCQoS;->setListener(Lcom/tencent/liteav/qos/a;)V

    .line 1206
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mQos:Lcom/tencent/liteav/qos/TXCQoS;

    invoke-virtual {v1, p0}, Lcom/tencent/liteav/qos/TXCQoS;->setNotifyListener(Lcom/tencent/liteav/basic/c/a;)V

    .line 1207
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mQos:Lcom/tencent/liteav/qos/TXCQoS;

    iget-object v2, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget-boolean v2, v2, Lcom/tencent/liteav/f;->g:Z

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/qos/TXCQoS;->setAutoAdjustBitrate(Z)V

    .line 1208
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mQos:Lcom/tencent/liteav/qos/TXCQoS;

    iget-object v2, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v2, v2, Lcom/tencent/liteav/f;->f:I

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/qos/TXCQoS;->setAutoAdjustStrategy(I)V

    .line 1209
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mQos:Lcom/tencent/liteav/qos/TXCQoS;

    iget-object v2, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v2, v2, Lcom/tencent/liteav/f;->k:I

    iget-object v3, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v3, v3, Lcom/tencent/liteav/f;->l:I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v3, v3, Lcom/tencent/liteav/f;->l:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/tencent/liteav/qos/TXCQoS;->setDefaultVideoResolution(IZ)V

    .line 1210
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mQos:Lcom/tencent/liteav/qos/TXCQoS;

    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v1, v1, Lcom/tencent/liteav/f;->e:I

    iget-object v2, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v2, v2, Lcom/tencent/liteav/f;->d:I

    iget-object v3, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v3, v3, Lcom/tencent/liteav/f;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/liteav/qos/TXCQoS;->setVideoEncBitrate(III)V

    .line 1211
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget-boolean v0, v0, Lcom/tencent/liteav/f;->g:Z

    if-eqz v0, :cond_1

    .line 1212
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mQos:Lcom/tencent/liteav/qos/TXCQoS;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/tencent/liteav/qos/TXCQoS;->start(J)V

    .line 1214
    :cond_1
    return-void

    .line 1209
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startStatusNotify()V
    .locals 4

    .prologue
    .line 1083
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNotifyStatus:Z

    .line 1084
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/rtmp1/TXLivePusher$3;

    invoke-direct {v1, p0}, Lcom/tencent/rtmp1/TXLivePusher$3;-><init>(Lcom/tencent/rtmp1/TXLivePusher;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1094
    :cond_0
    return-void
.end method

.method private statusNotify()V
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 1102
    invoke-static {}, Lcom/tencent/liteav/basic/util/a;->a()[I

    move-result-object v0

    .line 1103
    aget v2, v0, v1

    div-int/lit8 v2, v2, 0xa

    .line 1104
    const/4 v3, 0x1

    aget v0, v0, v3

    div-int/lit8 v0, v0, 0xa

    .line 1105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1106
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mID:Ljava/lang/String;

    const/16 v3, 0x1b5c

    invoke-static {v0, v3}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)I

    move-result v3

    .line 1107
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mID:Ljava/lang/String;

    const/16 v4, 0x1b5b

    invoke-static {v0, v4}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)I

    move-result v4

    .line 1108
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mID:Ljava/lang/String;

    const/16 v5, 0x1b5f

    invoke-static {v0, v5}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)I

    move-result v5

    .line 1109
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mID:Ljava/lang/String;

    const/16 v6, 0x1b5d

    invoke-static {v0, v6}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)I

    move-result v6

    .line 1110
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mID:Ljava/lang/String;

    const/16 v7, 0x1b64

    invoke-static {v0, v7}, Lcom/tencent/liteav/basic/module/TXCStatus;->c(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 1111
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mID:Ljava/lang/String;

    const/16 v8, 0xfa1

    invoke-static {v0, v8}, Lcom/tencent/liteav/basic/module/TXCStatus;->e(Ljava/lang/String;I)D

    move-result-wide v8

    .line 1112
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mID:Ljava/lang/String;

    const/16 v10, 0xfa3

    invoke-static {v0, v10}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)I

    move-result v10

    .line 1114
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 1115
    const-string v12, "VIDEO_WIDTH"

    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/c;->b()I

    move-result v0

    :goto_0
    invoke-virtual {v11, v12, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1116
    const-string v12, "VIDEO_HEIGHT"

    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/c;->c()I

    move-result v0

    :goto_1
    invoke-virtual {v11, v12, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1117
    const-string v0, "NET_SPEED"

    add-int v12, v4, v3

    invoke-virtual {v11, v0, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1118
    const-string v0, "VIDEO_FPS"

    double-to-int v8, v8

    invoke-virtual {v11, v0, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1119
    const-string v0, "VIDEO_GOP"

    invoke-virtual {v11, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1120
    const-string v0, "DROP_SIZE"

    invoke-virtual {v11, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1121
    const-string v0, "VIDEO_BITRATE"

    invoke-virtual {v11, v0, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1122
    const-string v0, "AUDIO_BITRATE"

    invoke-virtual {v11, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1123
    const-string v0, "CACHE_SIZE"

    invoke-virtual {v11, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1124
    const-string v0, "SERVER_IP"

    invoke-virtual {v11, v0, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1125
    const-string v0, "CPU_USAGE"

    invoke-virtual {v11, v0, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1128
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mTXCloudVideoView:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    if-eqz v0, :cond_0

    .line 1129
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mTXCloudVideoView:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    const/4 v2, 0x0

    invoke-virtual {v0, v11, v2, v1}, Lcom/tencent/rtmp1/ui/TXCloudVideoView;->setLogText(Landroid/os/Bundle;Landroid/os/Bundle;I)V

    .line 1132
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mListener:Lcom/tencent/rtmp1/ITXLivePushListener;

    if-eqz v0, :cond_1

    .line 1133
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mListener:Lcom/tencent/rtmp1/ITXLivePushListener;

    invoke-interface {v0, v11}, Lcom/tencent/rtmp1/ITXLivePushListener;->onNetStatus(Landroid/os/Bundle;)V

    .line 1136
    :cond_1
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mDataReport:Lcom/tencent/liteav/d;

    if-eqz v0, :cond_2

    .line 1137
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mDataReport:Lcom/tencent/liteav/d;

    invoke-virtual {v0}, Lcom/tencent/liteav/d;->d()V

    .line 1140
    :cond_2
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNotifyStatus:Z

    if-eqz v0, :cond_3

    .line 1141
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/rtmp1/TXLivePusher$4;

    invoke-direct {v1, p0}, Lcom/tencent/rtmp1/TXLivePusher$4;-><init>(Lcom/tencent/rtmp1/TXLivePusher;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1150
    :cond_3
    return-void

    :cond_4
    move v0, v1

    .line 1115
    goto :goto_0

    :cond_5
    move v0, v1

    .line 1116
    goto :goto_1
.end method

.method private stopDataReportModule()V
    .locals 1

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mDataReport:Lcom/tencent/liteav/d;

    if-eqz v0, :cond_0

    .line 1237
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mDataReport:Lcom/tencent/liteav/d;

    invoke-virtual {v0}, Lcom/tencent/liteav/d;->b()V

    .line 1238
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mDataReport:Lcom/tencent/liteav/d;

    .line 1240
    :cond_0
    return-void
.end method

.method private stopEncoder()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1251
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-eqz v0, :cond_0

    .line 1252
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/c;->a(Lcom/tencent/liteav/c$a;)V

    .line 1253
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/c;->e()V

    .line 1254
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/c;->a(Lcom/tencent/liteav/c$a;)V

    .line 1256
    :cond_0
    return-void
.end method

.method private stopNetworkModule()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1196
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    if-eqz v0, :cond_0

    .line 1197
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    invoke-virtual {v0}, Lcom/tencent/liteav/network/TXCStreamUploader;->stop()V

    .line 1198
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/network/TXCStreamUploader;->setNotifyListener(Lcom/tencent/liteav/basic/c/a;)V

    .line 1199
    iput-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    .line 1201
    :cond_0
    return-void
.end method

.method private stopQosModule()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1217
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mQos:Lcom/tencent/liteav/qos/TXCQoS;

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mQos:Lcom/tencent/liteav/qos/TXCQoS;

    invoke-virtual {v0}, Lcom/tencent/liteav/qos/TXCQoS;->stop()V

    .line 1219
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mQos:Lcom/tencent/liteav/qos/TXCQoS;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/qos/TXCQoS;->setListener(Lcom/tencent/liteav/qos/a;)V

    .line 1220
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mQos:Lcom/tencent/liteav/qos/TXCQoS;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/qos/TXCQoS;->setNotifyListener(Lcom/tencent/liteav/basic/c/a;)V

    .line 1221
    iput-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mQos:Lcom/tencent/liteav/qos/TXCQoS;

    .line 1223
    :cond_0
    return-void
.end method

.method private stopStatusNotify()V
    .locals 1

    .prologue
    .line 1097
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNotifyStatus:Z

    .line 1098
    return-void
.end method

.method private transferConfig(Lcom/tencent/rtmp1/TXLivePushConfig;)V
    .locals 3

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    .line 1260
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v2, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mVideoBitrate:I

    iput v2, v1, Lcom/tencent/liteav/f;->c:I

    .line 1261
    iget v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mMinVideoBitrate:I

    iput v1, v0, Lcom/tencent/liteav/f;->e:I

    .line 1262
    iget v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mMaxVideoBitrate:I

    iput v1, v0, Lcom/tencent/liteav/f;->d:I

    .line 1263
    iget v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mAutoAdjustStrategy:I

    iput v1, v0, Lcom/tencent/liteav/f;->f:I

    .line 1264
    iget-boolean v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mAutoAdjustBitrate:Z

    iput-boolean v1, v0, Lcom/tencent/liteav/f;->g:Z

    .line 1265
    iget v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mVideoFPS:I

    iput v1, v0, Lcom/tencent/liteav/f;->h:I

    .line 1266
    iget v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mVideoEncodeGop:I

    iput v1, v0, Lcom/tencent/liteav/f;->i:I

    .line 1267
    iget v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mHardwareAccel:I

    iput v1, v0, Lcom/tencent/liteav/f;->j:I

    .line 1268
    iget v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mVideoResolution:I

    iput v1, v0, Lcom/tencent/liteav/f;->k:I

    .line 1269
    iget-boolean v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mEnableVideoHardEncoderMainProfile:Z

    iput-boolean v1, v0, Lcom/tencent/liteav/f;->n:Z

    .line 1270
    iget v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mAudioSample:I

    iput v1, v0, Lcom/tencent/liteav/f;->q:I

    .line 1271
    iget v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mAudioChannels:I

    iput v1, v0, Lcom/tencent/liteav/f;->r:I

    .line 1272
    iget-boolean v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mEnableAec:Z

    iput-boolean v1, v0, Lcom/tencent/liteav/f;->s:Z

    .line 1273
    iget v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mPauseFlag:I

    iput v1, v0, Lcom/tencent/liteav/f;->w:I

    .line 1274
    iget v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mPauseFps:I

    iput v1, v0, Lcom/tencent/liteav/f;->v:I

    .line 1275
    iget-object v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mPauseImg:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/tencent/liteav/f;->t:Landroid/graphics/Bitmap;

    .line 1276
    iget v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mPauseTime:I

    iput v1, v0, Lcom/tencent/liteav/f;->u:I

    .line 1277
    iget-boolean v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mEnablePureAudioPush:Z

    iput-boolean v1, v0, Lcom/tencent/liteav/f;->E:Z

    .line 1278
    iget-boolean v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mTouchFocus:Z

    iput-boolean v1, v0, Lcom/tencent/liteav/f;->D:Z

    .line 1279
    iget-object v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mWatermark:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/tencent/liteav/f;->x:Landroid/graphics/Bitmap;

    .line 1280
    iget v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mWatermarkX:I

    iput v1, v0, Lcom/tencent/liteav/f;->y:I

    .line 1281
    iget v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mWatermarkY:I

    iput v1, v0, Lcom/tencent/liteav/f;->z:I

    .line 1282
    iget v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mWatermarkXF:F

    iput v1, v0, Lcom/tencent/liteav/f;->A:F

    .line 1283
    iget v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mWatermarkYF:F

    iput v1, v0, Lcom/tencent/liteav/f;->B:F

    .line 1284
    iget v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mWatermarkWidth:F

    iput v1, v0, Lcom/tencent/liteav/f;->C:F

    .line 1285
    iget v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mHomeOrientation:I

    iput v1, v0, Lcom/tencent/liteav/f;->l:I

    .line 1286
    iget-boolean v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mEnableNearestIP:Z

    iput-boolean v1, v0, Lcom/tencent/liteav/f;->F:Z

    .line 1287
    iget v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mRtmpChannelType:I

    iput v1, v0, Lcom/tencent/liteav/f;->G:I

    .line 1288
    iget v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mConnectRetryCount:I

    iput v1, v0, Lcom/tencent/liteav/f;->o:I

    .line 1289
    iget v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mConnectRetryInterval:I

    iput v1, v0, Lcom/tencent/liteav/f;->p:I

    .line 1290
    iget-boolean v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mFrontCamera:Z

    iput-boolean v1, v0, Lcom/tencent/liteav/f;->m:Z

    .line 1291
    iget v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mCustomModeType:I

    iput v1, v0, Lcom/tencent/liteav/f;->I:I

    .line 1292
    iget-boolean v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mVideoEncoderXMirror:Z

    iput-boolean v1, v0, Lcom/tencent/liteav/f;->J:Z

    .line 1293
    iget-boolean v1, p1, Lcom/tencent/rtmp1/TXLivePushConfig;->mEnableHighResolutionCapture:Z

    iput-boolean v1, v0, Lcom/tencent/liteav/f;->K:Z

    .line 1294
    return-void
.end method

.method private transferPushEvent(ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 1340
    sparse-switch p1, :sswitch_data_0

    .line 1411
    sget-object v0, Lcom/tencent/rtmp1/TXLivePusher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unhandled event : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    :cond_0
    :goto_0
    return-void

    .line 1343
    :sswitch_0
    const/16 v0, 0x453

    .line 1414
    :goto_1
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mMainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 1416
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/tencent/rtmp1/TXLivePusher$5;

    invoke-direct {v2, p0, v0, p2}, Lcom/tencent/rtmp1/TXLivePusher$5;-><init>(Lcom/tencent/rtmp1/TXLivePusher;ILandroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1346
    :sswitch_1
    const/16 v0, 0x3f0

    .line 1347
    goto :goto_1

    .line 1349
    :sswitch_2
    const/16 v0, 0x44f

    .line 1350
    goto :goto_1

    .line 1352
    :sswitch_3
    const/16 v0, -0x517

    .line 1353
    goto :goto_1

    .line 1356
    :sswitch_4
    const/16 v0, 0xbba

    .line 1357
    goto :goto_1

    .line 1359
    :sswitch_5
    const/16 v0, 0xbbd

    .line 1360
    goto :goto_1

    .line 1362
    :sswitch_6
    const/16 v0, -0x51b

    .line 1363
    goto :goto_1

    .line 1365
    :sswitch_7
    const/16 v0, 0x3e9

    .line 1366
    goto :goto_1

    .line 1368
    :sswitch_8
    const/16 v0, 0xbbb

    .line 1369
    goto :goto_1

    .line 1371
    :sswitch_9
    const/16 v0, 0x44d

    .line 1372
    goto :goto_1

    .line 1374
    :sswitch_a
    const/16 v0, 0x3ea

    .line 1375
    goto :goto_1

    .line 1377
    :sswitch_b
    const/16 v0, 0xbbc

    .line 1378
    goto :goto_1

    .line 1380
    :sswitch_c
    const/16 v0, 0x44e

    .line 1381
    goto :goto_1

    .line 1384
    :sswitch_d
    const/16 v0, 0x3ed

    .line 1385
    goto :goto_1

    .line 1387
    :sswitch_e
    const/16 v0, 0x3ee

    .line 1388
    goto :goto_1

    .line 1391
    :sswitch_f
    const/16 v0, 0x3ec

    .line 1392
    goto :goto_1

    .line 1394
    :sswitch_10
    const/16 v0, -0x51d

    .line 1395
    goto :goto_1

    .line 1398
    :sswitch_11
    const/16 v0, 0x3eb

    .line 1399
    goto :goto_1

    .line 1401
    :sswitch_12
    const/16 v0, -0x515

    .line 1402
    goto :goto_1

    .line 1404
    :sswitch_13
    const/16 v0, 0x3ef

    .line 1405
    goto :goto_1

    .line 1408
    :sswitch_14
    const/16 v0, -0x516

    .line 1409
    goto :goto_1

    .line 1340
    :sswitch_data_0
    .sparse-switch
        -0x51d -> :sswitch_10
        -0x51b -> :sswitch_6
        -0x517 -> :sswitch_3
        -0x516 -> :sswitch_14
        -0x515 -> :sswitch_12
        0x3e9 -> :sswitch_7
        0x3ea -> :sswitch_a
        0x3eb -> :sswitch_11
        0x3ec -> :sswitch_f
        0x3ed -> :sswitch_d
        0x3ee -> :sswitch_e
        0x3ef -> :sswitch_13
        0x3f0 -> :sswitch_1
        0x44d -> :sswitch_9
        0x44e -> :sswitch_c
        0x44f -> :sswitch_2
        0x453 -> :sswitch_0
        0xbba -> :sswitch_4
        0xbbb -> :sswitch_8
        0xbbc -> :sswitch_b
        0xbbd -> :sswitch_5
    .end sparse-switch
.end method

.method private updateId(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 1068
    const-string v0, "%s-%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    rem-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1069
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    if-eqz v1, :cond_0

    .line 1070
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/network/TXCStreamUploader;->setID(Ljava/lang/String;)V

    .line 1072
    :cond_0
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-eqz v1, :cond_1

    .line 1073
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/c;->setID(Ljava/lang/String;)V

    .line 1075
    :cond_1
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mDataReport:Lcom/tencent/liteav/d;

    if-eqz v1, :cond_2

    .line 1076
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mDataReport:Lcom/tencent/liteav/d;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/d;->b(Ljava/lang/String;)V

    .line 1078
    :cond_2
    iput-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mID:Ljava/lang/String;

    .line 1079
    return-void
.end method


# virtual methods
.method public getConfig()Lcom/tencent/rtmp1/TXLivePushConfig;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    return-object v0
.end method

.method public getMaxZoom()I
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 414
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/c;->l()I

    move-result v0

    goto :goto_0
.end method

.method public getMusicDuration(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/c;->d(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public isPushing()Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/c;->h()Z

    move-result v0

    .line 215
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetectFacePoints([F)V
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mPreprocessListener:Lcom/tencent/rtmp1/TXLivePusher$VideoCustomProcessListener;

    if-eqz v0, :cond_0

    .line 971
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mPreprocessListener:Lcom/tencent/rtmp1/TXLivePusher$VideoCustomProcessListener;

    invoke-interface {v0, p1}, Lcom/tencent/rtmp1/TXLivePusher$VideoCustomProcessListener;->onDetectFacePoints([F)V

    .line 973
    :cond_0
    return-void
.end method

.method public onEnableDropStatusChanged(Z)V
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/network/TXCStreamUploader;->setDropEanble(Z)V

    .line 1046
    :cond_0
    return-void
.end method

.method public onEncAudio([BJII)V
    .locals 2

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/liteav/network/TXCStreamUploader;->pushAAC([BJ)V

    .line 1054
    :cond_0
    return-void
.end method

.method public onEncVideo(Lcom/tencent/liteav/basic/f/b;)V
    .locals 2

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mQos:Lcom/tencent/liteav/qos/TXCQoS;

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mQos:Lcom/tencent/liteav/qos/TXCQoS;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/qos/TXCQoS;->setHasVideo(Z)V

    .line 1061
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/tencent/liteav/basic/f/b;->a:[B

    if-eqz v0, :cond_1

    .line 1062
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/network/TXCStreamUploader;->pushNAL(Lcom/tencent/liteav/basic/f/b;)V

    .line 1064
    :cond_1
    return-void
.end method

.method public onEncoderParamsChanged(III)V
    .locals 5

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/liteav/c;->a(III)V

    .line 1031
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 1032
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iput p2, v0, Lcom/tencent/liteav/f;->a:I

    .line 1033
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iput p3, v0, Lcom/tencent/liteav/f;->b:I

    .line 1035
    :cond_1
    if-eqz p1, :cond_2

    .line 1036
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iput p1, v0, Lcom/tencent/liteav/f;->c:I

    .line 1037
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mPushUrl:Ljava/lang/String;

    sget v1, Lcom/tencent/liteav/basic/datareport/a;->N:I

    const-string v2, "Qos Result"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v4, v4, Lcom/tencent/liteav/f;->f:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bitrate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " videosize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v4, v4, Lcom/tencent/liteav/f;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " * "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget v4, v4, Lcom/tencent/liteav/f;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->reportEvent40003(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1039
    :cond_2
    return-void
.end method

.method public onGetEncoderRealBitrate()I
    .locals 2

    .prologue
    .line 985
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mID:Ljava/lang/String;

    const/16 v1, 0xfa2

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onGetQueueInputSize()I
    .locals 3

    .prologue
    .line 990
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mID:Ljava/lang/String;

    const/16 v1, 0x1b5a

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)I

    move-result v0

    .line 991
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget-boolean v1, v1, Lcom/tencent/liteav/f;->H:Z

    if-eqz v1, :cond_0

    .line 992
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mID:Ljava/lang/String;

    const/16 v2, 0x1b59

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 997
    :goto_0
    return v0

    .line 994
    :cond_0
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mID:Ljava/lang/String;

    const/16 v2, 0xfa2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public onGetQueueOutputSize()I
    .locals 3

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mStreamUploader:Lcom/tencent/liteav/network/TXCStreamUploader;

    if-nez v0, :cond_0

    .line 1003
    const/4 v0, 0x0

    .line 1008
    :goto_0
    return v0

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mID:Ljava/lang/String;

    const/16 v1, 0x1b5c

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)I

    move-result v0

    .line 1006
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mID:Ljava/lang/String;

    const/16 v2, 0x1b5b

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1008
    goto :goto_0
.end method

.method public onGetVideoDropCount()I
    .locals 2

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mID:Ljava/lang/String;

    const/16 v1, 0x1b5f

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onGetVideoQueueCurrentCount()I
    .locals 2

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mID:Ljava/lang/String;

    const/16 v1, 0x1b5d

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/module/TXCStatus;->d(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onGetVideoQueueMaxCount()I
    .locals 1

    .prologue
    .line 1013
    const/4 v0, 0x5

    return v0
.end method

.method public onLogRecord(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 339
    const-string v0, "User"

    invoke-static {v0, p1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method public onNotifyEvent(ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 947
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mMainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/tencent/rtmp1/TXLivePusher$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/tencent/rtmp1/TXLivePusher$2;-><init>(Lcom/tencent/rtmp1/TXLivePusher;Landroid/os/Bundle;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 957
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/tencent/rtmp1/TXLivePusher;->transferPushEvent(ILandroid/os/Bundle;)V

    .line 958
    return-void
.end method

.method public onTextureCustomProcess(III)I
    .locals 1

    .prologue
    .line 962
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mPreprocessListener:Lcom/tencent/rtmp1/TXLivePusher$VideoCustomProcessListener;

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mPreprocessListener:Lcom/tencent/rtmp1/TXLivePusher$VideoCustomProcessListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/rtmp1/TXLivePusher$VideoCustomProcessListener;->onTextureCustomProcess(III)I

    move-result v0

    .line 965
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTextureDestoryed()V
    .locals 1

    .prologue
    .line 977
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mPreprocessListener:Lcom/tencent/rtmp1/TXLivePusher$VideoCustomProcessListener;

    if-eqz v0, :cond_0

    .line 978
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mPreprocessListener:Lcom/tencent/rtmp1/TXLivePusher$VideoCustomProcessListener;

    invoke-interface {v0}, Lcom/tencent/rtmp1/TXLivePusher$VideoCustomProcessListener;->onTextureDestoryed()V

    .line 980
    :cond_0
    return-void
.end method

.method public pauseBGM()Z
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/c;->n()Z

    move-result v0

    return v0
.end method

.method public pausePusher()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/c;->f()V

    .line 191
    :cond_0
    return-void
.end method

.method public playBGM(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/c;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public resumeBGM()Z
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/c;->o()Z

    move-result v0

    return v0
.end method

.method public resumePusher()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/c;->g()V

    .line 203
    :cond_0
    return-void
.end method

.method public sendCustomPCMData([B)V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/c;->a([B)V

    .line 404
    return-void
.end method

.method public sendCustomVideoData([BIII)I
    .locals 2

    .prologue
    const/16 v0, -0x3e8

    .line 378
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-eqz v1, :cond_0

    .line 379
    packed-switch p2, :pswitch_data_0

    .line 391
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 381
    :pswitch_1
    const/4 v0, 0x1

    .line 389
    :goto_1
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v1, p1, v0, p3, p4}, Lcom/tencent/liteav/c;->a([BIII)I

    move-result v0

    goto :goto_0

    .line 384
    :pswitch_2
    const/4 v0, 0x2

    .line 385
    goto :goto_1

    .line 379
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setBGMNofify(Lcom/tencent/rtmp1/TXLivePusher$OnBGMNotify;)V
    .locals 2

    .prologue
    .line 482
    iput-object p1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mOldBGMNotify:Lcom/tencent/rtmp1/TXLivePusher$OnBGMNotify;

    .line 483
    if-nez p1, :cond_1

    .line 484
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mOldBGMNotifyProxy:Lcom/tencent/liteav/audio/g;

    .line 515
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mOldBGMNotifyProxy:Lcom/tencent/liteav/audio/g;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/c;->a(Lcom/tencent/liteav/audio/g;)V

    .line 516
    return-void

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mOldBGMNotifyProxy:Lcom/tencent/liteav/audio/g;

    if-nez v0, :cond_0

    .line 487
    new-instance v0, Lcom/tencent/rtmp1/TXLivePusher$1;

    invoke-direct {v0, p0}, Lcom/tencent/rtmp1/TXLivePusher$1;-><init>(Lcom/tencent/rtmp1/TXLivePusher;)V

    iput-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mOldBGMNotifyProxy:Lcom/tencent/liteav/audio/g;

    goto :goto_0
.end method

.method public setBGMVolume(F)Z
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/c;->d(F)Z

    move-result v0

    return v0
.end method

.method public setBeautyFilter(IIII)Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/c;->b(I)V

    .line 322
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p2, p3, p4}, Lcom/tencent/liteav/c;->b(III)Z

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    if-eqz v0, :cond_1

    .line 325
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    iput p2, v0, Lcom/tencent/rtmp1/TXLivePushConfig;->mBeautyLevel:I

    .line 326
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    iput p3, v0, Lcom/tencent/rtmp1/TXLivePushConfig;->mWhiteningLevel:I

    .line 327
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    iput p4, v0, Lcom/tencent/rtmp1/TXLivePushConfig;->mRuddyLevel:I

    .line 329
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public setChinLevel(I)V
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/c;->h(I)V

    .line 765
    :cond_0
    return-void
.end method

.method public setConfig(Lcom/tencent/rtmp1/TXLivePushConfig;)V
    .locals 0

    .prologue
    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance p1, Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-direct {p1}, Lcom/tencent/rtmp1/TXLivePushConfig;-><init>()V

    .line 89
    :cond_0
    iput-object p1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    .line 91
    invoke-direct {p0, p1}, Lcom/tencent/rtmp1/TXLivePusher;->transferConfig(Lcom/tencent/rtmp1/TXLivePushConfig;)V

    .line 93
    invoke-direct {p0}, Lcom/tencent/rtmp1/TXLivePusher;->applyConfig()V

    .line 95
    return-void
.end method

.method public setExposureCompensation(F)V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-nez v0, :cond_0

    .line 453
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/c;->b(F)V

    goto :goto_0
.end method

.method public setEyeScaleLevel(I)V
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp1/TXLivePushConfig;->setEyeScaleLevel(I)V

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-eqz v0, :cond_1

    .line 726
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/c;->d(I)V

    .line 728
    :cond_1
    return-void
.end method

.method public setFaceShortLevel(I)V
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/c;->g(I)V

    .line 759
    :cond_0
    return-void
.end method

.method public setFaceSlimLevel(I)V
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp1/TXLivePushConfig;->setFaceSlimLevel(I)V

    .line 734
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-eqz v0, :cond_1

    .line 735
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/c;->e(I)V

    .line 737
    :cond_1
    return-void
.end method

.method public setFaceVLevel(I)V
    .locals 1

    .prologue
    .line 741
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/c;->f(I)V

    .line 744
    :cond_0
    return-void
.end method

.method public setFilter(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/c;->a(Landroid/graphics/Bitmap;)V

    .line 698
    :cond_0
    return-void
.end method

.method public setGreenScreenFile(Ljava/lang/String;)Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    .line 714
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/c;->b(Ljava/lang/String;)Z

    move-result v0

    .line 717
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMicVolume(F)Z
    .locals 1

    .prologue
    .line 578
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/c;->c(F)Z

    move-result v0

    return v0
.end method

.method public setMirror(Z)Z
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v0, p1}, Lcom/tencent/rtmp1/TXLivePushConfig;->setVideoEncoderXMirror(Z)V

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 439
    :goto_0
    return v0

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/c;->d(Z)Z

    .line 439
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setMotionTmpl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/c;->a(Ljava/lang/String;)V

    .line 710
    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/c;->c(Z)V

    .line 302
    :cond_0
    return-void
.end method

.method public setNoseSlimLevel(I)V
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/c;->i(I)V

    .line 771
    :cond_0
    return-void
.end method

.method public setPushListener(Lcom/tencent/rtmp1/ITXLivePushListener;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mListener:Lcom/tencent/rtmp1/ITXLivePushListener;

    .line 115
    return-void
.end method

.method public setRenderRotation(I)V
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-nez v0, :cond_0

    .line 646
    :goto_0
    return-void

    .line 645
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/c;->a(I)V

    goto :goto_0
.end method

.method public setReverb(I)V
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-nez v0, :cond_0

    .line 943
    :goto_0
    return-void

    .line 942
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/c;->k(I)V

    goto :goto_0
.end method

.method public setSpecialRatio(F)V
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/c;->a(F)V

    .line 753
    :cond_0
    return-void
.end method

.method public setVideoProcessListener(Lcom/tencent/rtmp1/TXLivePusher$VideoCustomProcessListener;)V
    .locals 2

    .prologue
    .line 677
    iput-object p1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mPreprocessListener:Lcom/tencent/rtmp1/TXLivePusher$VideoCustomProcessListener;

    .line 678
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mPreprocessListener:Lcom/tencent/rtmp1/TXLivePusher$VideoCustomProcessListener;

    if-nez v0, :cond_1

    .line 679
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/c;->a(Lcom/tencent/liteav/n;)V

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/c;->a(Lcom/tencent/liteav/n;)V

    goto :goto_0
.end method

.method public setVideoQuality(IZZ)V
    .locals 7

    .prologue
    const v6, 0xbb80

    const/16 v5, 0x320

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 801
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v1, v3, :cond_1

    .line 803
    if-eq p1, v4, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    move p1, v0

    .line 808
    :cond_1
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    if-nez v1, :cond_2

    .line 809
    new-instance v1, Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-direct {v1}, Lcom/tencent/rtmp1/TXLivePushConfig;-><init>()V

    iput-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    .line 811
    :cond_2
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXLivePushConfig;->setVideoFPS(I)V

    .line 813
    packed-switch p1, :pswitch_data_0

    .line 924
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v0, v4}, Lcom/tencent/rtmp1/TXLivePushConfig;->setHardwareAcceleration(I)V

    .line 925
    sget-object v0, Lcom/tencent/rtmp1/TXLivePusher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoPushQuality: invalid quality "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    :goto_0
    return-void

    .line 815
    :pswitch_0
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v2}, Lcom/tencent/rtmp1/TXLivePushConfig;->enableAEC(Z)V

    .line 816
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v4}, Lcom/tencent/rtmp1/TXLivePushConfig;->setHardwareAcceleration(I)V

    .line 817
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v2}, Lcom/tencent/rtmp1/TXLivePushConfig;->setVideoResolution(I)V

    .line 818
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v6}, Lcom/tencent/rtmp1/TXLivePushConfig;->setAudioSampleRate(I)V

    .line 819
    invoke-direct {p0, p2, p3}, Lcom/tencent/rtmp1/TXLivePusher;->setAdjustStrategy(ZZ)V

    .line 820
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v3, 0x12d

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXLivePushConfig;->setMinVideoBitrate(I)V

    .line 821
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v5}, Lcom/tencent/rtmp1/TXLivePushConfig;->setVideoBitrate(I)V

    .line 822
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v5}, Lcom/tencent/rtmp1/TXLivePushConfig;->setMaxVideoBitrate(I)V

    move v1, v2

    .line 929
    :goto_1
    iput p1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mVideoQuality:I

    .line 930
    iget-object v3, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    if-eqz v1, :cond_7

    :goto_2
    invoke-virtual {v3, v2}, Lcom/tencent/rtmp1/TXLivePushConfig;->enableVideoHardEncoderMainProfile(Z)V

    .line 931
    iget-object v2, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    if-eqz v1, :cond_8

    :goto_3
    invoke-virtual {v2, v0}, Lcom/tencent/rtmp1/TXLivePushConfig;->setVideoEncodeGop(I)V

    .line 933
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    if-eqz v0, :cond_3

    .line 934
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iput-boolean v1, v0, Lcom/tencent/liteav/f;->H:Z

    .line 937
    :cond_3
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {p0, v0}, Lcom/tencent/rtmp1/TXLivePusher;->setConfig(Lcom/tencent/rtmp1/TXLivePushConfig;)V

    goto :goto_0

    .line 828
    :pswitch_1
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v2}, Lcom/tencent/rtmp1/TXLivePushConfig;->enableAEC(Z)V

    .line 829
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v4}, Lcom/tencent/rtmp1/TXLivePushConfig;->setHardwareAcceleration(I)V

    .line 830
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp1/TXLivePushConfig;->setVideoResolution(I)V

    .line 831
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v6}, Lcom/tencent/rtmp1/TXLivePushConfig;->setAudioSampleRate(I)V

    .line 832
    invoke-direct {p0, p2, p3}, Lcom/tencent/rtmp1/TXLivePusher;->setAdjustStrategy(ZZ)V

    .line 833
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v3, 0x258

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXLivePushConfig;->setMinVideoBitrate(I)V

    .line 834
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v3, 0x4b0

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXLivePushConfig;->setVideoBitrate(I)V

    .line 835
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v3, 0x4b0

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXLivePushConfig;->setMaxVideoBitrate(I)V

    move v1, v2

    .line 838
    goto :goto_1

    .line 841
    :pswitch_2
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v2}, Lcom/tencent/rtmp1/TXLivePushConfig;->enableAEC(Z)V

    .line 842
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp1/TXLivePushConfig;->setHardwareAcceleration(I)V

    .line 843
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v4}, Lcom/tencent/rtmp1/TXLivePushConfig;->setVideoResolution(I)V

    .line 844
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v6}, Lcom/tencent/rtmp1/TXLivePushConfig;->setAudioSampleRate(I)V

    .line 845
    invoke-direct {p0, p2, p3}, Lcom/tencent/rtmp1/TXLivePusher;->setAdjustStrategy(ZZ)V

    .line 846
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v3, 0x258

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXLivePushConfig;->setMinVideoBitrate(I)V

    .line 847
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v3, 0x708

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXLivePushConfig;->setVideoBitrate(I)V

    .line 848
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v3, 0x708

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXLivePushConfig;->setMaxVideoBitrate(I)V

    move v1, v2

    .line 851
    goto :goto_1

    .line 854
    :pswitch_3
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp1/TXLivePushConfig;->enableAEC(Z)V

    .line 855
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp1/TXLivePushConfig;->setHardwareAcceleration(I)V

    .line 856
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v2}, Lcom/tencent/rtmp1/TXLivePushConfig;->setVideoResolution(I)V

    .line 857
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v3, 0x3e80

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXLivePushConfig;->setAudioSampleRate(I)V

    .line 858
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp1/TXLivePushConfig;->setAutoAdjustBitrate(Z)V

    .line 859
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXLivePushConfig;->setAutoAdjustStrategy(I)V

    .line 860
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v3, 0xbe

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXLivePushConfig;->setMinVideoBitrate(I)V

    .line 861
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v3, 0x190

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXLivePushConfig;->setVideoBitrate(I)V

    .line 862
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v3, 0x32a

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXLivePushConfig;->setMaxVideoBitrate(I)V

    move v1, v0

    .line 865
    goto/16 :goto_1

    .line 868
    :pswitch_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-ge v1, v3, :cond_4

    .line 869
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp1/TXLivePushConfig;->enableAEC(Z)V

    .line 870
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v2}, Lcom/tencent/rtmp1/TXLivePushConfig;->setHardwareAcceleration(I)V

    .line 871
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v2}, Lcom/tencent/rtmp1/TXLivePushConfig;->setVideoResolution(I)V

    .line 872
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp1/TXLivePushConfig;->setAutoAdjustBitrate(Z)V

    .line 873
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXLivePushConfig;->setAutoAdjustStrategy(I)V

    .line 874
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v3, 0x12d

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXLivePushConfig;->setMinVideoBitrate(I)V

    .line 875
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v5}, Lcom/tencent/rtmp1/TXLivePushConfig;->setVideoBitrate(I)V

    .line 876
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v5}, Lcom/tencent/rtmp1/TXLivePushConfig;->setMaxVideoBitrate(I)V

    .line 908
    :goto_4
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v6}, Lcom/tencent/rtmp1/TXLivePushConfig;->setAudioSampleRate(I)V

    move v1, v0

    .line 910
    goto/16 :goto_1

    .line 878
    :cond_4
    iget v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mVideoQuality:I

    if-ne v1, v0, :cond_5

    .line 879
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp1/TXLivePushConfig;->enableAEC(Z)V

    .line 880
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp1/TXLivePushConfig;->setHardwareAcceleration(I)V

    .line 881
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v2}, Lcom/tencent/rtmp1/TXLivePushConfig;->setVideoResolution(I)V

    .line 882
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp1/TXLivePushConfig;->setAutoAdjustBitrate(Z)V

    .line 883
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXLivePushConfig;->setAutoAdjustStrategy(I)V

    .line 884
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v3, 0x12d

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXLivePushConfig;->setMinVideoBitrate(I)V

    .line 885
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v5}, Lcom/tencent/rtmp1/TXLivePushConfig;->setVideoBitrate(I)V

    .line 886
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v5}, Lcom/tencent/rtmp1/TXLivePushConfig;->setMaxVideoBitrate(I)V

    goto :goto_4

    .line 887
    :cond_5
    iget v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mVideoQuality:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_6

    .line 888
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp1/TXLivePushConfig;->enableAEC(Z)V

    .line 889
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp1/TXLivePushConfig;->setHardwareAcceleration(I)V

    .line 890
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v4}, Lcom/tencent/rtmp1/TXLivePushConfig;->setVideoResolution(I)V

    .line 891
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp1/TXLivePushConfig;->setAutoAdjustBitrate(Z)V

    .line 892
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXLivePushConfig;->setAutoAdjustStrategy(I)V

    .line 893
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v3, 0x258

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXLivePushConfig;->setMinVideoBitrate(I)V

    .line 894
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v3, 0x708

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXLivePushConfig;->setVideoBitrate(I)V

    .line 895
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v3, 0x708

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXLivePushConfig;->setMaxVideoBitrate(I)V

    goto :goto_4

    .line 897
    :cond_6
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp1/TXLivePushConfig;->enableAEC(Z)V

    .line 898
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp1/TXLivePushConfig;->setHardwareAcceleration(I)V

    .line 899
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp1/TXLivePushConfig;->setVideoResolution(I)V

    .line 900
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp1/TXLivePushConfig;->setAutoAdjustBitrate(Z)V

    .line 901
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXLivePushConfig;->setAutoAdjustStrategy(I)V

    .line 902
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v3, 0x258

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXLivePushConfig;->setMinVideoBitrate(I)V

    .line 903
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v3, 0x4b0

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXLivePushConfig;->setVideoBitrate(I)V

    .line 904
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v3, 0x4b0

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXLivePushConfig;->setMaxVideoBitrate(I)V

    goto/16 :goto_4

    .line 913
    :pswitch_5
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp1/TXLivePushConfig;->enableAEC(Z)V

    .line 914
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp1/TXLivePushConfig;->setHardwareAcceleration(I)V

    .line 915
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXLivePushConfig;->setVideoResolution(I)V

    .line 916
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v2}, Lcom/tencent/rtmp1/TXLivePushConfig;->setAutoAdjustBitrate(Z)V

    .line 917
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    const/16 v3, 0x15e

    invoke-virtual {v1, v3}, Lcom/tencent/rtmp1/TXLivePushConfig;->setVideoBitrate(I)V

    .line 919
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {v1, v6}, Lcom/tencent/rtmp1/TXLivePushConfig;->setAudioSampleRate(I)V

    move v1, v0

    .line 921
    goto/16 :goto_1

    :cond_7
    move v2, v0

    .line 930
    goto/16 :goto_2

    .line 931
    :cond_8
    const/4 v0, 0x3

    goto/16 :goto_3

    .line 813
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

.method public setZoom(I)Z
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 425
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/c;->j(I)Z

    move-result v0

    goto :goto_0
.end method

.method public startCameraPreview(Lcom/tencent/rtmp1/ui/TXCloudVideoView;)V
    .locals 3

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 247
    :goto_0
    return-void

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mConfig:Lcom/tencent/rtmp1/TXLivePushConfig;

    invoke-virtual {p0, v0}, Lcom/tencent/rtmp1/TXLivePusher;->setConfig(Lcom/tencent/rtmp1/TXLivePushConfig;)V

    .line 231
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    iget-boolean v0, v0, Lcom/tencent/liteav/f;->E:Z

    if-eqz v0, :cond_1

    .line 232
    sget-object v0, Lcom/tencent/rtmp1/TXLivePusher;->TAG:Ljava/lang/String;

    const-string v1, "enable pure audio push , so can not start preview!"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mTXCloudVideoView:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mTXCloudVideoView:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    if-eqz v0, :cond_2

    .line 236
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mTXCloudVideoView:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    invoke-virtual {v0}, Lcom/tencent/rtmp1/ui/TXCloudVideoView;->removeVideoView()V

    .line 238
    :cond_2
    iput-object p1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mTXCloudVideoView:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    .line 240
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-nez v0, :cond_3

    .line 241
    new-instance v0, Lcom/tencent/liteav/c;

    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/tencent/liteav/c;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/c;->a(Lcom/tencent/liteav/basic/c/a;)V

    .line 244
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/c;->a(Lcom/tencent/liteav/c$a;)V

    .line 245
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/c;->a(Lcom/tencent/rtmp1/ui/TXCloudVideoView;)V

    goto :goto_0
.end method

.method public startPusher(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 126
    sget-object v0, Lcom/tencent/rtmp1/TXLivePusher;->TAG:Ljava/lang/String;

    const-string v1, "================================================================================================================================================"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object v0, Lcom/tencent/rtmp1/TXLivePusher;->TAG:Ljava/lang/String;

    const-string v1, "================================================================================================================================================"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/tencent/rtmp1/TXLivePusher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "============= startPush pushUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SDKVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getSDKID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getSDKVersionStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "============="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v0, Lcom/tencent/rtmp1/TXLivePusher;->TAG:Ljava/lang/String;

    const-string v1, "================================================================================================================================================"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v0, Lcom/tencent/rtmp1/TXLivePusher;->TAG:Ljava/lang/String;

    const-string v1, "================================================================================================================================================"

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iput-object p1, p0, Lcom/tencent/rtmp1/TXLivePusher;->mPushUrl:Ljava/lang/String;

    .line 134
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mPushUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tencent/rtmp1/TXLivePusher;->updateId(Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Lcom/tencent/rtmp1/TXLivePusher;->startNetworkModule()V

    .line 139
    invoke-direct {p0}, Lcom/tencent/rtmp1/TXLivePusher;->startEncoder()V

    .line 142
    invoke-direct {p0}, Lcom/tencent/rtmp1/TXLivePusher;->startQosModule()V

    .line 145
    invoke-direct {p0}, Lcom/tencent/rtmp1/TXLivePusher;->startDataReportModule()V

    .line 147
    invoke-direct {p0}, Lcom/tencent/rtmp1/TXLivePusher;->startStatusNotify()V

    .line 149
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mTXCloudVideoView:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mTXCloudVideoView:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    invoke-virtual {v0}, Lcom/tencent/rtmp1/ui/TXCloudVideoView;->clearLog()V

    .line 153
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startScreenCapture()V
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-nez v0, :cond_0

    .line 626
    :goto_0
    return-void

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/c;->j()V

    goto :goto_0
.end method

.method public stopBGM()Z
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/c;->m()Z

    move-result v0

    return v0
.end method

.method public stopCameraPreview(Z)V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-nez v0, :cond_0

    .line 263
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/c;->a(Z)V

    goto :goto_0
.end method

.method public stopPusher()V
    .locals 2

    .prologue
    .line 161
    sget-object v0, Lcom/tencent/rtmp1/TXLivePusher;->TAG:Ljava/lang/String;

    const-string v1, "stopPush "

    invoke-static {v0, v1}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcom/tencent/rtmp1/TXLivePusher;->stopStatusNotify()V

    .line 165
    invoke-direct {p0}, Lcom/tencent/rtmp1/TXLivePusher;->stopDataReportModule()V

    .line 167
    invoke-direct {p0}, Lcom/tencent/rtmp1/TXLivePusher;->stopQosModule()V

    .line 169
    invoke-direct {p0}, Lcom/tencent/rtmp1/TXLivePusher;->stopEncoder()V

    .line 171
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mNewConfig:Lcom/tencent/liteav/f;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/liteav/f;->H:Z

    .line 173
    invoke-direct {p0}, Lcom/tencent/rtmp1/TXLivePusher;->stopNetworkModule()V

    .line 174
    return-void
.end method

.method public stopScreenCapture()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-nez v0, :cond_0

    .line 635
    :goto_0
    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/c;->k()V

    goto :goto_0
.end method

.method public switchCamera()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-nez v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0}, Lcom/tencent/liteav/c;->i()V

    goto :goto_0
.end method

.method public turnOnFlashLight(Z)Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 289
    :goto_0
    return v0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePusher;->mCaptureAndEnc:Lcom/tencent/liteav/c;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/c;->b(Z)Z

    .line 289
    const/4 v0, 0x1

    goto :goto_0
.end method
