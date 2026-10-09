.class public Lcom/tencent/rtmp1/TXLivePlayer;
.super Ljava/lang/Object;
.source "TXLivePlayer.java"

# interfaces
.implements Lcom/tencent/liteav/basic/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/rtmp1/TXLivePlayer$ITXAudioRawDataListener;,
        Lcom/tencent/rtmp1/TXLivePlayer$ITXSnapshotListener;,
        Lcom/tencent/rtmp1/TXLivePlayer$ITXVideoRawDataListener;
    }
.end annotation


# static fields
.field public static final PLAY_TYPE_LIVE_FLV:I = 0x1

.field public static final PLAY_TYPE_LIVE_RTMP:I = 0x0

.field public static final PLAY_TYPE_LIVE_RTMP_ACC:I = 0x5

.field public static final PLAY_TYPE_LOCAL_VIDEO:I = 0x6

.field public static final PLAY_TYPE_VOD_FLV:I = 0x2

.field public static final PLAY_TYPE_VOD_HLS:I = 0x3

.field public static final PLAY_TYPE_VOD_MP4:I = 0x4

.field public static final TAG:Ljava/lang/String; = "TXLivePlayer"


# instance fields
.field private mAudioRawDataListener:Lcom/tencent/rtmp1/TXLivePlayer$ITXAudioRawDataListener;

.field private mAutoPlay:Z

.field private mConfig:Lcom/tencent/rtmp1/TXLivePlayConfig;

.field private mContext:Landroid/content/Context;

.field private mEnableHWDec:Z

.field private mIsNeedClearLastImg:Z

.field private mListener:Lcom/tencent/rtmp1/ITXLivePlayListener;

.field private mMute:Z

.field private mPlayUrl:Ljava/lang/String;

.field private mPlayer:Lcom/tencent/liteav/o;

.field private mRate:F

.field private mRenderMode:I

.field private mRenderRotation:I

.field private mSnapshotRunning:Z

.field private mSurface:Landroid/view/Surface;

.field private mTXCloudVideoView:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

.field private mVideoRawDataListener:Lcom/tencent/rtmp1/TXLivePlayer$ITXVideoRawDataListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mEnableHWDec:Z

    .line 52
    iput-boolean v2, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mIsNeedClearLastImg:Z

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayUrl:Ljava/lang/String;

    .line 57
    iput-boolean v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mMute:Z

    .line 58
    iput-object v3, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mVideoRawDataListener:Lcom/tencent/rtmp1/TXLivePlayer$ITXVideoRawDataListener;

    .line 64
    iput-boolean v2, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mAutoPlay:Z

    .line 65
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mRate:F

    .line 66
    iput-boolean v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mSnapshotRunning:Z

    .line 74
    invoke-static {}, Lcom/tencent/liteav/basic/log/TXCLog;->init()V

    .line 75
    iput-object v3, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mListener:Lcom/tencent/rtmp1/ITXLivePlayListener;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mContext:Landroid/content/Context;

    .line 77
    return-void
.end method

.method static synthetic access$002(Lcom/tencent/rtmp1/TXLivePlayer;Z)Z
    .locals 0

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mSnapshotRunning:Z

    return p1
.end method

.method private checkPlayUrl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 211
    const/4 v1, 0x6

    if-eq p2, v1, :cond_3

    .line 214
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    array-length v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, v0

    .line 216
    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_4

    .line 217
    aget-byte v0, v2, v1

    if-gez v0, :cond_1

    aget-byte v0, v2, v1

    add-int/lit16 v0, v0, 0x100

    .line 218
    :goto_1
    const/16 v4, 0x20

    if-le v0, v4, :cond_0

    const/16 v4, 0x7f

    if-ge v0, v4, :cond_0

    const/16 v4, 0x22

    if-eq v0, v4, :cond_0

    const/16 v4, 0x25

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3c

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3e

    if-eq v0, v4, :cond_0

    const/16 v4, 0x5b

    if-eq v0, v4, :cond_0

    const/16 v4, 0x7d

    if-eq v0, v4, :cond_0

    const/16 v4, 0x5c

    if-eq v0, v4, :cond_0

    const/16 v4, 0x5d

    if-eq v0, v4, :cond_0

    const/16 v4, 0x5e

    if-eq v0, v4, :cond_0

    const/16 v4, 0x60

    if-eq v0, v4, :cond_0

    const/16 v4, 0x7b

    if-eq v0, v4, :cond_0

    const/16 v4, 0x7c

    if-ne v0, v4, :cond_2

    .line 225
    :cond_0
    const-string v4, "%%%02X"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 217
    :cond_1
    aget-byte v0, v2, v1

    goto :goto_1

    .line 227
    :cond_2
    int-to-char v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 233
    :catch_0
    move-exception v0

    .line 234
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 238
    :cond_3
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 239
    return-object v0

    .line 231
    :cond_4
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p1

    goto :goto_3
.end method

.method private isAVCDecBlacklistDevices()Z
    .locals 2

    .prologue
    .line 475
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Che2-TL00"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    const/4 v0, 0x1

    .line 479
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private postBitmapToMainThread(Lcom/tencent/rtmp1/TXLivePlayer$ITXSnapshotListener;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 553
    if-nez p1, :cond_0

    .line 566
    :goto_0
    return-void

    .line 556
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 557
    new-instance v1, Lcom/tencent/rtmp1/TXLivePlayer$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/rtmp1/TXLivePlayer$2;-><init>(Lcom/tencent/rtmp1/TXLivePlayer;Lcom/tencent/rtmp1/TXLivePlayer$ITXSnapshotListener;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public addVideoRawData([B)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 485
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 498
    :cond_0
    :goto_0
    return v0

    .line 488
    :cond_1
    iget-boolean v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mEnableHWDec:Z

    if-eqz v1, :cond_2

    .line 489
    const-string v1, "TXLivePlayer"

    const-string v2, "can not addVideoRawData because of hw decode has set!"

    invoke-static {v1, v2}, Lcom/tencent/rtmp1/TXLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 492
    :cond_2
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    if-nez v1, :cond_3

    .line 493
    const-string v1, "TXLivePlayer"

    const-string v2, "player hasn\'t created or not instanceof live player"

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 497
    :cond_3
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/o;->a([B)Z

    .line 498
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public enableHardwareDecode(Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 394
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 420
    :goto_0
    return v0

    .line 398
    :cond_0
    if-eqz p1, :cond_2

    .line 399
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_1

    .line 400
    const-string v1, "HardwareDecode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableHardwareDecode failed, android system build.version = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", the minimum build.version should be 18(android 4.3 or later)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 403
    :cond_1
    invoke-direct {p0}, Lcom/tencent/rtmp1/TXLivePlayer;->isAVCDecBlacklistDevices()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 404
    const-string v1, "HardwareDecode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableHardwareDecode failed, MANUFACTURER = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", MODEL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 409
    :cond_2
    iput-boolean p1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mEnableHWDec:Z

    .line 411
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    if-eqz v0, :cond_4

    .line 412
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    invoke-virtual {v0}, Lcom/tencent/liteav/o;->f()Lcom/tencent/liteav/g;

    move-result-object v0

    .line 413
    if-nez v0, :cond_3

    .line 414
    new-instance v0, Lcom/tencent/liteav/g;

    invoke-direct {v0}, Lcom/tencent/liteav/g;-><init>()V

    .line 416
    :cond_3
    iget-boolean v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mEnableHWDec:Z

    iput-boolean v1, v0, Lcom/tencent/liteav/g;->h:Z

    .line 417
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/o;->a(Lcom/tencent/liteav/g;)V

    .line 420
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 81
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 82
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    invoke-virtual {v0}, Lcom/tencent/liteav/o;->c()Z

    move-result v0

    .line 270
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNotifyEvent(ILandroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 456
    const/16 v0, 0x3a99

    if-ne p1, v0, :cond_2

    .line 457
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mTXCloudVideoView:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mTXCloudVideoView:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v2, v1}, Lcom/tencent/rtmp1/ui/TXCloudVideoView;->setLogText(Landroid/os/Bundle;Landroid/os/Bundle;I)V

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mListener:Lcom/tencent/rtmp1/ITXLivePlayListener;

    if-eqz v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mListener:Lcom/tencent/rtmp1/ITXLivePlayListener;

    invoke-interface {v0, p2}, Lcom/tencent/rtmp1/ITXLivePlayListener;->onNetStatus(Landroid/os/Bundle;)V

    .line 472
    :cond_1
    :goto_0
    return-void

    .line 464
    :cond_2
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mTXCloudVideoView:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    if-eqz v0, :cond_3

    .line 465
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mTXCloudVideoView:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    invoke-virtual {v0, v2, p2, p1}, Lcom/tencent/rtmp1/ui/TXCloudVideoView;->setLogText(Landroid/os/Bundle;Landroid/os/Bundle;I)V

    .line 467
    :cond_3
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mListener:Lcom/tencent/rtmp1/ITXLivePlayListener;

    if-eqz v0, :cond_1

    .line 468
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mListener:Lcom/tencent/rtmp1/ITXLivePlayListener;

    invoke-interface {v0, p1, p2}, Lcom/tencent/rtmp1/ITXLivePlayListener;->onPlayEvent(ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    invoke-virtual {v0}, Lcom/tencent/liteav/o;->a()V

    .line 280
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    invoke-virtual {v0}, Lcom/tencent/liteav/o;->b()V

    .line 291
    :cond_0
    return-void
.end method

.method public seek(I)V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/o;->a_(I)V

    .line 304
    :cond_0
    return-void
.end method

.method public setAudioRawDataListener(Lcom/tencent/rtmp1/TXLivePlayer$ITXAudioRawDataListener;)V
    .locals 1

    .prologue
    .line 574
    iput-object p1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mAudioRawDataListener:Lcom/tencent/rtmp1/TXLivePlayer$ITXAudioRawDataListener;

    .line 575
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/o;->a(Lcom/tencent/rtmp1/TXLivePlayer$ITXAudioRawDataListener;)V

    .line 578
    :cond_0
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 0

    .prologue
    .line 440
    iput-boolean p1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mAutoPlay:Z

    .line 441
    return-void
.end method

.method public setConfig(Lcom/tencent/rtmp1/TXLivePlayConfig;)V
    .locals 2

    .prologue
    .line 93
    iput-object p1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mConfig:Lcom/tencent/rtmp1/TXLivePlayConfig;

    .line 95
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mConfig:Lcom/tencent/rtmp1/TXLivePlayConfig;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/tencent/rtmp1/TXLivePlayConfig;

    invoke-direct {v0}, Lcom/tencent/rtmp1/TXLivePlayConfig;-><init>()V

    iput-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mConfig:Lcom/tencent/rtmp1/TXLivePlayConfig;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    invoke-virtual {v0}, Lcom/tencent/liteav/o;->f()Lcom/tencent/liteav/g;

    move-result-object v0

    .line 101
    if-nez v0, :cond_1

    .line 102
    new-instance v0, Lcom/tencent/liteav/g;

    invoke-direct {v0}, Lcom/tencent/liteav/g;-><init>()V

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mConfig:Lcom/tencent/rtmp1/TXLivePlayConfig;

    iget v1, v1, Lcom/tencent/rtmp1/TXLivePlayConfig;->mCacheTime:F

    iput v1, v0, Lcom/tencent/liteav/g;->a:F

    .line 105
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mConfig:Lcom/tencent/rtmp1/TXLivePlayConfig;

    iget-boolean v1, v1, Lcom/tencent/rtmp1/TXLivePlayConfig;->mAutoAdjustCacheTime:Z

    iput-boolean v1, v0, Lcom/tencent/liteav/g;->f:Z

    .line 106
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mConfig:Lcom/tencent/rtmp1/TXLivePlayConfig;

    iget v1, v1, Lcom/tencent/rtmp1/TXLivePlayConfig;->mMinAutoAdjustCacheTime:F

    iput v1, v0, Lcom/tencent/liteav/g;->c:F

    .line 107
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mConfig:Lcom/tencent/rtmp1/TXLivePlayConfig;

    iget v1, v1, Lcom/tencent/rtmp1/TXLivePlayConfig;->mMaxAutoAdjustCacheTime:F

    iput v1, v0, Lcom/tencent/liteav/g;->b:F

    .line 108
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mConfig:Lcom/tencent/rtmp1/TXLivePlayConfig;

    iget v1, v1, Lcom/tencent/rtmp1/TXLivePlayConfig;->mConnectRetryCount:I

    iput v1, v0, Lcom/tencent/liteav/g;->d:I

    .line 109
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mConfig:Lcom/tencent/rtmp1/TXLivePlayConfig;

    iget v1, v1, Lcom/tencent/rtmp1/TXLivePlayConfig;->mConnectRetryInterval:I

    iput v1, v0, Lcom/tencent/liteav/g;->e:I

    .line 110
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mConfig:Lcom/tencent/rtmp1/TXLivePlayConfig;

    iget-boolean v1, v1, Lcom/tencent/rtmp1/TXLivePlayConfig;->mEnableAec:Z

    iput-boolean v1, v0, Lcom/tencent/liteav/g;->g:Z

    .line 111
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mConfig:Lcom/tencent/rtmp1/TXLivePlayConfig;

    iget-boolean v1, v1, Lcom/tencent/rtmp1/TXLivePlayConfig;->mEnableNearestIP:Z

    iput-boolean v1, v0, Lcom/tencent/liteav/g;->i:Z

    .line 112
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mConfig:Lcom/tencent/rtmp1/TXLivePlayConfig;

    iget v1, v1, Lcom/tencent/rtmp1/TXLivePlayConfig;->mRtmpChannelType:I

    iput v1, v0, Lcom/tencent/liteav/g;->j:I

    .line 113
    iget-boolean v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mEnableHWDec:Z

    iput-boolean v1, v0, Lcom/tencent/liteav/g;->h:Z

    .line 114
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mConfig:Lcom/tencent/rtmp1/TXLivePlayConfig;

    iget-object v1, v1, Lcom/tencent/rtmp1/TXLivePlayConfig;->mCacheFolderPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/liteav/g;->k:Ljava/lang/String;

    .line 115
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mConfig:Lcom/tencent/rtmp1/TXLivePlayConfig;

    iget v1, v1, Lcom/tencent/rtmp1/TXLivePlayConfig;->mMaxCacheItems:I

    iput v1, v0, Lcom/tencent/liteav/g;->l:I

    .line 117
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/o;->a(Lcom/tencent/liteav/g;)V

    .line 119
    :cond_2
    return-void
.end method

.method public setMute(Z)V
    .locals 1

    .prologue
    .line 429
    iput-boolean p1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mMute:Z

    .line 430
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/o;->b(Z)V

    .line 433
    :cond_0
    return-void
.end method

.method public setPlayListener(Lcom/tencent/rtmp1/ITXLivePlayListener;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mListener:Lcom/tencent/rtmp1/ITXLivePlayListener;

    .line 313
    return-void
.end method

.method public setPlayerView(Lcom/tencent/rtmp1/ui/TXCloudVideoView;)V
    .locals 1

    .prologue
    .line 129
    iput-object p1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mTXCloudVideoView:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    .line 131
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/o;->a(Lcom/tencent/rtmp1/ui/TXCloudVideoView;)V

    .line 135
    :cond_0
    return-void
.end method

.method public setRate(F)V
    .locals 1

    .prologue
    .line 448
    iput p1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mRate:F

    .line 449
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/o;->b(F)V

    .line 452
    :cond_0
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    .prologue
    .line 369
    iput p1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mRenderMode:I

    .line 370
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/o;->a(I)V

    .line 373
    :cond_0
    return-void
.end method

.method public setRenderRotation(I)V
    .locals 1

    .prologue
    .line 381
    iput p1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mRenderRotation:I

    .line 382
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/o;->b(I)V

    .line 385
    :cond_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    .prologue
    .line 143
    iput-object p1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mSurface:Landroid/view/Surface;

    .line 144
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/rtmp1/TXLivePlayer;->enableHardwareDecode(Z)Z

    .line 147
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/o;->a(Landroid/view/Surface;)V

    .line 152
    :cond_0
    return-void
.end method

.method public setVideoRawDataListener(Lcom/tencent/rtmp1/TXLivePlayer$ITXVideoRawDataListener;)V
    .locals 2

    .prologue
    .line 507
    iput-object p1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mVideoRawDataListener:Lcom/tencent/rtmp1/TXLivePlayer$ITXVideoRawDataListener;

    .line 508
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    if-nez v0, :cond_0

    .line 522
    :goto_0
    return-void

    .line 512
    :cond_0
    if-eqz p1, :cond_1

    .line 513
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    new-instance v1, Lcom/tencent/rtmp1/TXLivePlayer$1;

    invoke-direct {v1, p0, p1}, Lcom/tencent/rtmp1/TXLivePlayer$1;-><init>(Lcom/tencent/rtmp1/TXLivePlayer;Lcom/tencent/rtmp1/TXLivePlayer$ITXVideoRawDataListener;)V

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/o;->a(Lcom/tencent/liteav/p;)V

    goto :goto_0

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/liteav/o;->a(Lcom/tencent/liteav/p;)V

    goto :goto_0
.end method

.method public snapshot(Lcom/tencent/rtmp1/TXLivePlayer$ITXSnapshotListener;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 529
    iget-boolean v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mSnapshotRunning:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 532
    :cond_1
    iput-boolean v6, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mSnapshotRunning:Z

    .line 534
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    if-eqz v0, :cond_4

    .line 535
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    invoke-virtual {v0}, Lcom/tencent/liteav/o;->d()Landroid/view/TextureView;

    move-result-object v0

    move-object v2, v0

    .line 537
    :goto_1
    if-eqz v2, :cond_3

    .line 538
    invoke-virtual {v2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 540
    if-eqz v0, :cond_2

    .line 542
    invoke-virtual {v2, v3}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v5

    .line 543
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 544
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    .line 546
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/tencent/rtmp1/TXLivePlayer;->postBitmapToMainThread(Lcom/tencent/rtmp1/TXLivePlayer$ITXSnapshotListener;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 548
    :cond_3
    iput-boolean v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mSnapshotRunning:Z

    goto :goto_0

    :cond_4
    move-object v2, v3

    goto :goto_1
.end method

.method public startPlay(Ljava/lang/String;I)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 163
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    :cond_0
    const/4 v0, -0x1

    .line 207
    :goto_0
    return v0

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->initCrashReport(Landroid/content/Context;)V

    .line 170
    iget-boolean v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mIsNeedClearLastImg:Z

    invoke-virtual {p0, v1}, Lcom/tencent/rtmp1/TXLivePlayer;->stopPlay(Z)I

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/tencent/rtmp1/TXLivePlayer;->checkPlayUrl(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayUrl:Ljava/lang/String;

    .line 174
    const-string v1, "TXLivePlayer"

    const-string v2, "==========================================================================================================================================================="

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v1, "TXLivePlayer"

    const-string v2, "==========================================================================================================================================================="

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "TXLivePlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=====  StartPlay url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " playType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SDKVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getSDKID()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCCommonUtil;->getSDKVersionStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    ======"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v1, "TXLivePlayer"

    const-string v2, "==========================================================================================================================================================="

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v1, "TXLivePlayer"

    const-string v2, "==========================================================================================================================================================="

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mContext:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/tencent/liteav/q;->a(Landroid/content/Context;I)Lcom/tencent/liteav/o;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    .line 182
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    if-nez v1, :cond_2

    .line 183
    const/4 v0, -0x2

    goto :goto_0

    .line 185
    :cond_2
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mConfig:Lcom/tencent/rtmp1/TXLivePlayConfig;

    invoke-virtual {p0, v1}, Lcom/tencent/rtmp1/TXLivePlayer;->setConfig(Lcom/tencent/rtmp1/TXLivePlayConfig;)V

    .line 187
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mTXCloudVideoView:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    if-eqz v1, :cond_3

    .line 188
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mTXCloudVideoView:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    invoke-virtual {v1}, Lcom/tencent/rtmp1/ui/TXCloudVideoView;->clearLog()V

    .line 189
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mTXCloudVideoView:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp1/ui/TXCloudVideoView;->setVisibility(I)V

    .line 192
    :cond_3
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    iget-object v2, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mTXCloudVideoView:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/o;->a(Lcom/tencent/rtmp1/ui/TXCloudVideoView;)V

    .line 193
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    invoke-virtual {v1, p0}, Lcom/tencent/liteav/o;->a(Lcom/tencent/liteav/basic/c/a;)V

    .line 194
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    iget-boolean v2, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mAutoPlay:Z

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/o;->c(Z)V

    .line 195
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_4

    .line 196
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    iget-object v2, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/o;->a(Landroid/view/Surface;)V

    .line 198
    :cond_4
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    iget-object v2, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/tencent/liteav/o;->a(Ljava/lang/String;I)I

    .line 199
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    iget-boolean v2, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mMute:Z

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/o;->b(Z)V

    .line 200
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    iget v2, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mRate:F

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/o;->b(F)V

    .line 201
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    iget v2, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mRenderRotation:I

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/o;->b(I)V

    .line 202
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    iget v2, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mRenderMode:I

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/o;->a(I)V

    .line 203
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    iget-object v2, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mAudioRawDataListener:Lcom/tencent/rtmp1/TXLivePlayer$ITXAudioRawDataListener;

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/o;->a(Lcom/tencent/rtmp1/TXLivePlayer$ITXAudioRawDataListener;)V

    .line 204
    iget-object v1, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mVideoRawDataListener:Lcom/tencent/rtmp1/TXLivePlayer$ITXVideoRawDataListener;

    invoke-virtual {p0, v1}, Lcom/tencent/rtmp1/TXLivePlayer;->setVideoRawDataListener(Lcom/tencent/rtmp1/TXLivePlayer$ITXVideoRawDataListener;)V

    goto/16 :goto_0
.end method

.method public stopPlay(Z)I
    .locals 2

    .prologue
    .line 249
    if-eqz p1, :cond_0

    .line 250
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mTXCloudVideoView:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mTXCloudVideoView:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp1/ui/TXCloudVideoView;->setVisibility(I)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayer:Lcom/tencent/liteav/o;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/o;->a(Z)I

    .line 257
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/rtmp1/TXLivePlayer;->mPlayUrl:Ljava/lang/String;

    .line 258
    const/4 v0, 0x0

    return v0
.end method
