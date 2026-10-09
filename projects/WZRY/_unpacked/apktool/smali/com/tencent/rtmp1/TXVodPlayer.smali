.class public Lcom/tencent/rtmp1/TXVodPlayer;
.super Ljava/lang/Object;
.source "TXVodPlayer.java"

# interfaces
.implements Lcom/tencent/liteav/basic/c/a;


# static fields
.field public static final PLAYER_TYPE_EXO:I = 0x1

.field public static final PLAYER_TYPE_FFPLAY:I = 0x0

.field public static final TAG:Ljava/lang/String; = "TXVodPlayer"


# instance fields
.field private mAutoPlay:Z

.field private mConfig:Lcom/tencent/rtmp1/TXVodPlayConfig;

.field private mContext:Landroid/content/Context;

.field private mEnableHWDec:Z

.field private mIsNeedClearLastImg:Z

.field private mListener:Lcom/tencent/rtmp1/ITXLivePlayListener;

.field private mMute:Z

.field private mNewListener:Lcom/tencent/rtmp1/ITXVodPlayListener;

.field private mPlayUrl:Ljava/lang/String;

.field private mPlayer:Lcom/tencent/liteav/k;

.field private mRate:F

.field private mRenderMode:I

.field private mRenderRotation:I

.field private mSnapshotRunning:Z

.field private mSurface:Landroid/view/Surface;

.field private mTXCloudVideoView:Lcom/tencent/rtmp1/ui/TXCloudVideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean v1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mEnableHWDec:Z

    .line 53
    iput-boolean v2, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mIsNeedClearLastImg:Z

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayUrl:Ljava/lang/String;

    .line 58
    iput-boolean v1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mMute:Z

    .line 64
    iput-boolean v2, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mAutoPlay:Z

    .line 65
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mRate:F

    .line 66
    iput-boolean v1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mSnapshotRunning:Z

    .line 74
    invoke-static {}, Lcom/tencent/liteav/basic/log/TXCLog;->init()V

    .line 75
    iput-object v3, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mListener:Lcom/tencent/rtmp1/ITXLivePlayListener;

    .line 76
    iput-object v3, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mNewListener:Lcom/tencent/rtmp1/ITXVodPlayListener;

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mContext:Landroid/content/Context;

    .line 78
    return-void
.end method

.method static synthetic access$002(Lcom/tencent/rtmp1/TXVodPlayer;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mSnapshotRunning:Z

    return p1
.end method

.method private checkPlayUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 194
    const-string v1, "http"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 197
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 198
    new-instance v3, Ljava/lang/StringBuilder;

    array-length v1, v2

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move v1, v0

    .line 199
    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_4

    .line 200
    aget-byte v0, v2, v1

    if-gez v0, :cond_1

    aget-byte v0, v2, v1

    add-int/lit16 v0, v0, 0x100

    .line 201
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

    .line 208
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

    .line 199
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 200
    :cond_1
    aget-byte v0, v2, v1

    goto :goto_1

    .line 210
    :cond_2
    int-to-char v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 216
    :catch_0
    move-exception v0

    .line 217
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 221
    :cond_3
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 222
    return-object v0

    .line 214
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
    .line 424
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

    .line 425
    const/4 v0, 0x1

    .line 428
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private postBitmapToMainThread(Lcom/tencent/rtmp1/TXLivePlayer$ITXSnapshotListener;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 461
    if-nez p1, :cond_0

    .line 474
    :goto_0
    return-void

    .line 464
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 465
    new-instance v1, Lcom/tencent/rtmp1/TXVodPlayer$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/rtmp1/TXVodPlayer$1;-><init>(Lcom/tencent/rtmp1/TXVodPlayer;Lcom/tencent/rtmp1/TXLivePlayer$ITXSnapshotListener;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public enableHardwareDecode(Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 351
    if-eqz p1, :cond_1

    .line 352
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v1, v2, :cond_0

    .line 353
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

    .line 366
    :goto_0
    return v0

    .line 356
    :cond_0
    invoke-direct {p0}, Lcom/tencent/rtmp1/TXVodPlayer;->isAVCDecBlacklistDevices()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 357
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

    .line 362
    :cond_1
    iput-boolean p1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mEnableHWDec:Z

    .line 364
    invoke-virtual {p0}, Lcom/tencent/rtmp1/TXVodPlayer;->updateConfig()V

    .line 366
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
    .line 82
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 83
    return-void
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    invoke-virtual {v0}, Lcom/tencent/liteav/k;->c()Z

    move-result v0

    .line 253
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNotifyEvent(ILandroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 405
    const/16 v0, 0x3a99

    if-ne p1, v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mListener:Lcom/tencent/rtmp1/ITXLivePlayListener;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mListener:Lcom/tencent/rtmp1/ITXLivePlayListener;

    invoke-interface {v0, p2}, Lcom/tencent/rtmp1/ITXLivePlayListener;->onNetStatus(Landroid/os/Bundle;)V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mNewListener:Lcom/tencent/rtmp1/ITXVodPlayListener;

    if-eqz v0, :cond_1

    .line 410
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mNewListener:Lcom/tencent/rtmp1/ITXVodPlayListener;

    invoke-interface {v0, p0, p2}, Lcom/tencent/rtmp1/ITXVodPlayListener;->onNetStatus(Lcom/tencent/rtmp1/TXVodPlayer;Landroid/os/Bundle;)V

    .line 421
    :cond_1
    :goto_0
    return-void

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mListener:Lcom/tencent/rtmp1/ITXLivePlayListener;

    if-eqz v0, :cond_3

    .line 414
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mListener:Lcom/tencent/rtmp1/ITXLivePlayListener;

    invoke-interface {v0, p1, p2}, Lcom/tencent/rtmp1/ITXLivePlayListener;->onPlayEvent(ILandroid/os/Bundle;)V

    .line 416
    :cond_3
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mNewListener:Lcom/tencent/rtmp1/ITXVodPlayListener;

    if-eqz v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mNewListener:Lcom/tencent/rtmp1/ITXVodPlayListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/tencent/rtmp1/ITXVodPlayListener;->onPlayEvent(Lcom/tencent/rtmp1/TXVodPlayer;ILandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    invoke-virtual {v0}, Lcom/tencent/liteav/k;->a()V

    .line 263
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    invoke-virtual {v0}, Lcom/tencent/liteav/k;->b()V

    .line 274
    :cond_0
    return-void
.end method

.method public seek(F)V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/k;->a(F)V

    .line 300
    :cond_0
    return-void
.end method

.method public seek(I)V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/k;->a_(I)V

    .line 287
    :cond_0
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 1

    .prologue
    .line 386
    iput-boolean p1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mAutoPlay:Z

    .line 387
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/k;->c(Z)V

    .line 390
    :cond_0
    return-void
.end method

.method public setConfig(Lcom/tencent/rtmp1/TXVodPlayConfig;)V
    .locals 2

    .prologue
    .line 94
    iput-object p1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mConfig:Lcom/tencent/rtmp1/TXVodPlayConfig;

    .line 96
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mConfig:Lcom/tencent/rtmp1/TXVodPlayConfig;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Lcom/tencent/rtmp1/TXVodPlayConfig;

    invoke-direct {v0}, Lcom/tencent/rtmp1/TXVodPlayConfig;-><init>()V

    iput-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mConfig:Lcom/tencent/rtmp1/TXVodPlayConfig;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    invoke-virtual {v0}, Lcom/tencent/liteav/k;->f()Lcom/tencent/liteav/g;

    move-result-object v0

    .line 102
    if-nez v0, :cond_1

    .line 103
    new-instance v0, Lcom/tencent/liteav/g;

    invoke-direct {v0}, Lcom/tencent/liteav/g;-><init>()V

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mConfig:Lcom/tencent/rtmp1/TXVodPlayConfig;

    iget v1, v1, Lcom/tencent/rtmp1/TXVodPlayConfig;->mConnectRetryCount:I

    iput v1, v0, Lcom/tencent/liteav/g;->d:I

    .line 107
    iget-object v1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mConfig:Lcom/tencent/rtmp1/TXVodPlayConfig;

    iget v1, v1, Lcom/tencent/rtmp1/TXVodPlayConfig;->mConnectRetryInterval:I

    iput v1, v0, Lcom/tencent/liteav/g;->e:I

    .line 108
    iget-object v1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mConfig:Lcom/tencent/rtmp1/TXVodPlayConfig;

    iget v1, v1, Lcom/tencent/rtmp1/TXVodPlayConfig;->mTimeout:I

    iput v1, v0, Lcom/tencent/liteav/g;->o:I

    .line 109
    iget-boolean v1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mEnableHWDec:Z

    iput-boolean v1, v0, Lcom/tencent/liteav/g;->h:Z

    .line 110
    iget-object v1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mConfig:Lcom/tencent/rtmp1/TXVodPlayConfig;

    iget-object v1, v1, Lcom/tencent/rtmp1/TXVodPlayConfig;->mCacheFolderPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/liteav/g;->k:Ljava/lang/String;

    .line 111
    iget-object v1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mConfig:Lcom/tencent/rtmp1/TXVodPlayConfig;

    iget v1, v1, Lcom/tencent/rtmp1/TXVodPlayConfig;->mMaxCacheItems:I

    iput v1, v0, Lcom/tencent/liteav/g;->l:I

    .line 112
    iget-object v1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mConfig:Lcom/tencent/rtmp1/TXVodPlayConfig;

    iget v1, v1, Lcom/tencent/rtmp1/TXVodPlayConfig;->mPlayerType:I

    iput v1, v0, Lcom/tencent/liteav/g;->m:I

    .line 113
    iget-object v1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mConfig:Lcom/tencent/rtmp1/TXVodPlayConfig;

    iget-object v1, v1, Lcom/tencent/rtmp1/TXVodPlayConfig;->mHeaders:Ljava/util/Map;

    iput-object v1, v0, Lcom/tencent/liteav/g;->n:Ljava/util/Map;

    .line 115
    iget-object v1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    invoke-virtual {v1, v0}, Lcom/tencent/liteav/k;->a(Lcom/tencent/liteav/g;)V

    .line 117
    :cond_2
    return-void
.end method

.method public setMute(Z)V
    .locals 1

    .prologue
    .line 375
    iput-boolean p1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mMute:Z

    .line 376
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/k;->b(Z)V

    .line 379
    :cond_0
    return-void
.end method

.method public setPlayListener(Lcom/tencent/rtmp1/ITXLivePlayListener;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mListener:Lcom/tencent/rtmp1/ITXLivePlayListener;

    .line 309
    return-void
.end method

.method public setPlayerView(Lcom/tencent/rtmp1/ui/TXCloudVideoView;)V
    .locals 1

    .prologue
    .line 131
    iput-object p1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mTXCloudVideoView:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    .line 132
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/k;->a(Lcom/tencent/rtmp1/ui/TXCloudVideoView;)V

    .line 135
    :cond_0
    return-void
.end method

.method public setRate(F)V
    .locals 1

    .prologue
    .line 397
    iput p1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mRate:F

    .line 398
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/k;->b(F)V

    .line 401
    :cond_0
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1

    .prologue
    .line 326
    iput p1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mRenderMode:I

    .line 327
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/k;->a(I)V

    .line 330
    :cond_0
    return-void
.end method

.method public setRenderRotation(I)V
    .locals 1

    .prologue
    .line 338
    iput p1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mRenderRotation:I

    .line 339
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/k;->b(I)V

    .line 342
    :cond_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mSurface:Landroid/view/Surface;

    .line 145
    return-void
.end method

.method public setVodListener(Lcom/tencent/rtmp1/ITXVodPlayListener;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mNewListener:Lcom/tencent/rtmp1/ITXVodPlayListener;

    .line 318
    return-void
.end method

.method public snapshot(Lcom/tencent/rtmp1/TXLivePlayer$ITXSnapshotListener;)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 437
    iget-boolean v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mSnapshotRunning:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    iput-boolean v6, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mSnapshotRunning:Z

    .line 442
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    if-eqz v0, :cond_4

    .line 443
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    invoke-virtual {v0}, Lcom/tencent/liteav/k;->d()Landroid/view/TextureView;

    move-result-object v0

    move-object v2, v0

    .line 445
    :goto_1
    if-eqz v2, :cond_3

    .line 446
    invoke-virtual {v2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 448
    if-eqz v0, :cond_2

    .line 450
    invoke-virtual {v2, v3}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v5

    .line 451
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 452
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    .line 454
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/tencent/rtmp1/TXVodPlayer;->postBitmapToMainThread(Lcom/tencent/rtmp1/TXLivePlayer$ITXSnapshotListener;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 456
    :cond_3
    iput-boolean v1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mSnapshotRunning:Z

    goto :goto_0

    :cond_4
    move-object v2, v3

    goto :goto_1
.end method

.method public startPlay(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 154
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    :cond_0
    const/4 v0, -0x1

    .line 190
    :goto_0
    return v0

    .line 158
    :cond_1
    iget-object v1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->initCrashReport(Landroid/content/Context;)V

    .line 161
    iget-boolean v1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mIsNeedClearLastImg:Z

    invoke-virtual {p0, v1}, Lcom/tencent/rtmp1/TXVodPlayer;->stopPlay(Z)I

    .line 163
    invoke-direct {p0, p1}, Lcom/tencent/rtmp1/TXVodPlayer;->checkPlayUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayUrl:Ljava/lang/String;

    .line 165
    const-string v1, "TXVodPlayer"

    const-string v2, "==========================================================================================================================================================="

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v1, "TXVodPlayer"

    const-string v2, "==========================================================================================================================================================="

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v1, "TXVodPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=====  StartPlay url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 168
    const-string v1, "TXVodPlayer"

    const-string v2, "==========================================================================================================================================================="

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v1, "TXVodPlayer"

    const-string v2, "==========================================================================================================================================================="

    invoke-static {v1, v2}, Lcom/tencent/liteav/basic/log/TXCLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v1, Lcom/tencent/liteav/k;

    iget-object v2, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/liteav/k;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    .line 173
    invoke-virtual {p0}, Lcom/tencent/rtmp1/TXVodPlayer;->updateConfig()V

    .line 175
    iget-object v1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mTXCloudVideoView:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    if-eqz v1, :cond_3

    .line 176
    iget-object v1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mTXCloudVideoView:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    invoke-virtual {v1, v0}, Lcom/tencent/rtmp1/ui/TXCloudVideoView;->setVisibility(I)V

    .line 177
    iget-object v1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    iget-object v2, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mTXCloudVideoView:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/k;->a(Lcom/tencent/rtmp1/ui/TXCloudVideoView;)V

    .line 182
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    invoke-virtual {v1, p0}, Lcom/tencent/liteav/k;->a(Lcom/tencent/liteav/basic/c/a;)V

    .line 183
    iget-object v1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    iget-boolean v2, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mAutoPlay:Z

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/k;->c(Z)V

    .line 184
    iget-object v1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    iget-object v2, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/liteav/k;->a(Ljava/lang/String;I)I

    .line 185
    iget-object v1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    iget-boolean v2, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mMute:Z

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/k;->b(Z)V

    .line 186
    iget-object v1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    iget v2, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mRate:F

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/k;->b(F)V

    .line 187
    iget-object v1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    iget v2, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mRenderRotation:I

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/k;->b(I)V

    .line 188
    iget-object v1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    iget v2, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mRenderMode:I

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/k;->a(I)V

    goto/16 :goto_0

    .line 178
    :cond_3
    iget-object v1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mSurface:Landroid/view/Surface;

    if-eqz v1, :cond_2

    .line 179
    iget-object v1, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    iget-object v2, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Lcom/tencent/liteav/k;->a(Landroid/view/Surface;)V

    goto :goto_1
.end method

.method public stopPlay(Z)I
    .locals 2

    .prologue
    .line 232
    if-eqz p1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mTXCloudVideoView:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mTXCloudVideoView:Lcom/tencent/rtmp1/ui/TXCloudVideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/rtmp1/ui/TXCloudVideoView;->setVisibility(I)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayer:Lcom/tencent/liteav/k;

    invoke-virtual {v0, p1}, Lcom/tencent/liteav/k;->a(Z)I

    .line 240
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mPlayUrl:Ljava/lang/String;

    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method updateConfig()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tencent/rtmp1/TXVodPlayer;->mConfig:Lcom/tencent/rtmp1/TXVodPlayConfig;

    invoke-virtual {p0, v0}, Lcom/tencent/rtmp1/TXVodPlayer;->setConfig(Lcom/tencent/rtmp1/TXVodPlayConfig;)V

    .line 121
    return-void
.end method
