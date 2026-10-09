.class public Lcom/tencent/liteav/network/TXCStreamDownloader;
.super Lcom/tencent/liteav/basic/module/a;
.source "TXCStreamDownloader.java"

# interfaces
.implements Lcom/tencent/liteav/basic/c/a;
.implements Lcom/tencent/liteav/network/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/liteav/network/TXCStreamDownloader$a;,
        Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TXCStreamDownloader"

.field public static final TXE_DOWNLOAD_ERROR_ALLADDRESS_FAILED:I = 0x2eff

.field public static final TXE_DOWNLOAD_ERROR_CONNECT_FAILED:I = 0x2eeb

.field public static final TXE_DOWNLOAD_ERROR_DISCONNECT:I = 0x2eec

.field public static final TXE_DOWNLOAD_ERROR_GET_RTMP_ACC_URL_FAIL:I = 0x2efe

.field public static final TXE_DOWNLOAD_ERROR_NET_RECONNECT:I = 0x2eef

.field public static final TXE_DOWNLOAD_ERROR_READ_FAILED:I = 0x2eed

.field public static final TXE_DOWNLOAD_ERROR_WRITE_FAILED:I = 0x2eee

.field public static final TXE_DOWNLOAD_INFO_CONNECT_END:I = 0x2ee7

.field public static final TXE_DOWNLOAD_INFO_CONNECT_FAILED:I = 0x2ee4

.field public static final TXE_DOWNLOAD_INFO_CONNECT_SUCCESS:I = 0x2ee1

.field public static final TXE_DOWNLOAD_INFO_HANDSHAKE_FAIL:I = 0x2ee5

.field public static final TXE_DOWNLOAD_INFO_PLAY_BEGIN:I = 0x2ee8

.field public static final TXE_DOWNLOAD_INFO_SERVER_REFUSE:I = 0x2ee9


# instance fields
.field private mAccUrlFetcher:Lcom/tencent/liteav/network/f;

.field private mApplicationContext:Landroid/content/Context;

.field private mDownloadFormat:I

.field private mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

.field private mDownloaderRunning:Z

.field private mHandler:Landroid/os/Handler;

.field private mLastDownloadStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

.field private mLastTimeStamp:J

.field private mListener:Lcom/tencent/liteav/network/e;

.field private mListenerLock:[B

.field private mNotifyListener:Lcom/tencent/liteav/basic/c/a;

.field private mRecvFirstGOP:Z

.field private mReportNetStatusRunnalbe:Ljava/lang/Runnable;

.field private mVideoGOPRecv:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 217
    invoke-static {}, Lcom/tencent/liteav/basic/util/a;->d()V

    .line 218
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 220
    invoke-direct {p0}, Lcom/tencent/liteav/basic/module/a;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    .line 44
    iput-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mListener:Lcom/tencent/liteav/network/e;

    .line 45
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mListenerLock:[B

    .line 46
    iput-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mNotifyListener:Lcom/tencent/liteav/basic/c/a;

    .line 48
    iput-boolean v2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloaderRunning:Z

    .line 49
    iput v3, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloadFormat:I

    .line 54
    iput-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mHandler:Landroid/os/Handler;

    .line 55
    iput-wide v4, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mLastTimeStamp:J

    .line 56
    iput-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mLastDownloadStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    .line 58
    iput-wide v4, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mVideoGOPRecv:J

    .line 59
    iput-boolean v2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mRecvFirstGOP:Z

    .line 374
    new-instance v0, Lcom/tencent/liteav/network/TXCStreamDownloader$2;

    invoke-direct {v0, p0}, Lcom/tencent/liteav/network/TXCStreamDownloader$2;-><init>(Lcom/tencent/liteav/network/TXCStreamDownloader;)V

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mReportNetStatusRunnalbe:Ljava/lang/Runnable;

    .line 221
    if-nez p3, :cond_3

    .line 222
    new-instance v0, Lcom/tencent/liteav/network/TXCFLVDownloader;

    invoke-direct {v0}, Lcom/tencent/liteav/network/TXCFLVDownloader;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    .line 226
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    if-eqz v0, :cond_1

    .line 227
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setListener(Lcom/tencent/liteav/network/e;)V

    .line 228
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {v0, p0}, Lcom/tencent/liteav/network/TXIStreamDownloader;->setNotifyListener(Lcom/tencent/liteav/basic/c/a;)V

    .line 230
    :cond_1
    iput p3, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloadFormat:I

    .line 231
    new-instance v0, Lcom/tencent/liteav/network/f;

    invoke-direct {v0, p1}, Lcom/tencent/liteav/network/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mAccUrlFetcher:Lcom/tencent/liteav/network/f;

    .line 232
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mApplicationContext:Landroid/content/Context;

    .line 234
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 235
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mHandler:Landroid/os/Handler;

    .line 237
    :cond_2
    return-void

    .line 223
    :cond_3
    if-eq p3, v3, :cond_4

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    .line 224
    :cond_4
    new-instance v0, Lcom/tencent/liteav/network/TXCRTMPDownloader;

    invoke-direct {v0}, Lcom/tencent/liteav/network/TXCRTMPDownloader;-><init>()V

    iput-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/tencent/liteav/network/TXCStreamDownloader;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloaderRunning:Z

    return v0
.end method

.method static synthetic access$100(Lcom/tencent/liteav/network/TXCStreamDownloader;)Lcom/tencent/liteav/network/TXIStreamDownloader;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/liteav/network/TXCStreamDownloader;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/liteav/network/TXCStreamDownloader;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mReportNetStatusRunnalbe:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/liteav/network/TXCStreamDownloader;)Lcom/tencent/liteav/network/f;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mAccUrlFetcher:Lcom/tencent/liteav/network/f;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/liteav/network/TXCStreamDownloader;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tencent/liteav/network/TXCStreamDownloader;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->reportNetStatus()V

    return-void
.end method

.method private getSpeed(JJJ)Ljava/lang/Long;
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 430
    .line 431
    cmp-long v2, p1, p3

    if-lez v2, :cond_1

    .line 439
    :goto_0
    cmp-long v2, p5, v0

    if-lez v2, :cond_0

    .line 440
    const-wide/16 v0, 0x8

    mul-long/2addr v0, p3

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x400

    mul-long/2addr v2, p5

    div-long/2addr v0, v2

    .line 443
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 435
    :cond_1
    sub-long/2addr p3, p1

    goto :goto_0
.end method

.method private reportNetStatus()V
    .locals 4

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->reportNetStatusInternal()V

    .line 384
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mReportNetStatusRunnalbe:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 385
    return-void
.end method

.method private reportNetStatusInternal()V
    .locals 14

    .prologue
    const-wide/16 v2, 0x0

    .line 388
    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v10

    .line 389
    iget-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mLastTimeStamp:J

    sub-long v6, v10, v0

    .line 390
    invoke-virtual {p0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->getDownloadStats()Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    move-result-object v12

    .line 391
    invoke-virtual {p0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->getRealTimeStreamInfo()Lcom/tencent/liteav/network/TXCStreamDownloader$a;

    move-result-object v13

    .line 396
    if-eqz v12, :cond_1

    .line 397
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mLastDownloadStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    if-eqz v0, :cond_3

    .line 398
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mLastDownloadStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iget-wide v2, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->afterParseVideoBytes:J

    iget-wide v4, v12, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->afterParseVideoBytes:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/tencent/liteav/network/TXCStreamDownloader;->getSpeed(JJJ)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 399
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mLastDownloadStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    iget-wide v2, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->afterParseAudioBytes:J

    iget-wide v4, v12, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->afterParseAudioBytes:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/tencent/liteav/network/TXCStreamDownloader;->getSpeed(JJJ)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v4, v8

    .line 402
    :goto_0
    const/16 v2, 0x1bbd

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    .line 403
    const/16 v2, 0x1bbe

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    .line 405
    const/16 v0, 0x1bbf

    iget-wide v2, v12, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->firstVideoTS:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    .line 406
    const/16 v0, 0x1bc0

    iget-wide v2, v12, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->firstAudioTS:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    .line 408
    if-eqz v13, :cond_0

    .line 409
    const/16 v0, 0x1bc1

    iget v1, v13, Lcom/tencent/liteav/network/TXCStreamDownloader$a;->d:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    .line 410
    const/16 v0, 0x1bc2

    iget-object v1, v13, Lcom/tencent/liteav/network/TXCStreamDownloader$a;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    .line 411
    const/16 v2, 0x1bc7

    iget-boolean v0, v13, Lcom/tencent/liteav/network/TXCStreamDownloader$a;->f:Z

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x2

    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    .line 412
    const/16 v0, 0x1bc8

    iget-object v1, v13, Lcom/tencent/liteav/network/TXCStreamDownloader$a;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    .line 413
    const/16 v0, 0x1bc9

    iget-object v1, v13, Lcom/tencent/liteav/network/TXCStreamDownloader$a;->b:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    .line 414
    const/16 v0, 0x1bca

    iget-object v1, v13, Lcom/tencent/liteav/network/TXCStreamDownloader$a;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    .line 418
    :cond_0
    const/16 v0, 0x1bc3

    iget-wide v2, v12, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->startTS:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    .line 419
    const/16 v0, 0x1bc4

    iget-wide v2, v12, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->dnsTS:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    .line 420
    const/16 v0, 0x1bc5

    iget-wide v2, v12, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->connTS:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    .line 421
    const/16 v0, 0x1bc6

    iget-object v1, v12, Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;->serverIP:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    .line 425
    :cond_1
    iput-wide v10, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mLastTimeStamp:J

    .line 426
    iput-object v12, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mLastDownloadStats:Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    .line 427
    return-void

    .line 411
    :cond_2
    const-wide/16 v0, 0x1

    goto :goto_1

    :cond_3
    move-wide v0, v2

    move-wide v4, v2

    goto/16 :goto_0
.end method

.method private tryResetRetryCount()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/liteav/network/TXIStreamDownloader;->connectRetryTimes:I

    .line 143
    :cond_0
    return-void
.end method


# virtual methods
.method public getDownloadStats()Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {v0}, Lcom/tencent/liteav/network/TXIStreamDownloader;->getDownloadStats()Lcom/tencent/liteav/network/TXCStreamDownloader$DownloadStats;

    move-result-object v0

    .line 356
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRealTimeStreamInfo()Lcom/tencent/liteav/network/TXCStreamDownloader$a;
    .locals 2

    .prologue
    .line 360
    new-instance v0, Lcom/tencent/liteav/network/TXCStreamDownloader$a;

    invoke-direct {v0}, Lcom/tencent/liteav/network/TXCStreamDownloader$a;-><init>()V

    .line 361
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mAccUrlFetcher:Lcom/tencent/liteav/network/f;

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mAccUrlFetcher:Lcom/tencent/liteav/network/f;

    invoke-virtual {v1}, Lcom/tencent/liteav/network/f;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$a;->b:Ljava/lang/String;

    .line 363
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mAccUrlFetcher:Lcom/tencent/liteav/network/f;

    invoke-virtual {v1}, Lcom/tencent/liteav/network/f;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$a;->c:Ljava/lang/String;

    .line 364
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mAccUrlFetcher:Lcom/tencent/liteav/network/f;

    invoke-virtual {v1}, Lcom/tencent/liteav/network/f;->c()I

    move-result v1

    iput v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$a;->d:I

    .line 365
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mAccUrlFetcher:Lcom/tencent/liteav/network/f;

    invoke-virtual {v1}, Lcom/tencent/liteav/network/f;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$a;->e:Ljava/lang/String;

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    if-eqz v1, :cond_1

    .line 368
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {v1}, Lcom/tencent/liteav/network/TXIStreamDownloader;->getCurrentStreamUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$a;->a:Ljava/lang/String;

    .line 369
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {v1}, Lcom/tencent/liteav/network/TXIStreamDownloader;->isQuicChannel()Z

    move-result v1

    iput-boolean v1, v0, Lcom/tencent/liteav/network/TXCStreamDownloader$a;->f:Z

    .line 371
    :cond_1
    return-object v0
.end method

.method public onNotifyEvent(ILandroid/os/Bundle;)V
    .locals 6

    .prologue
    const/16 v2, 0xbbd

    const/16 v1, 0xbba

    const/16 v3, 0x837

    const/16 v0, -0x8fd

    .line 63
    iget-object v4, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mListenerLock:[B

    monitor-enter v4

    .line 64
    :try_start_0
    iget-object v5, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mNotifyListener:Lcom/tencent/liteav/basic/c/a;

    if-eqz v5, :cond_2

    .line 65
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 67
    packed-switch p1, :pswitch_data_0

    .line 120
    :pswitch_0
    const-string v0, "EVT_MSG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v1, p1

    .line 123
    :goto_0
    const-string v0, ""

    .line 124
    if-eqz p2, :cond_0

    .line 125
    const-string v0, "EVT_MSG"

    const-string v2, ""

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 128
    const-string v2, "EVT_MSG"

    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_1
    const-string v0, "EVT_TIME"

    invoke-static {}, Lcom/tencent/liteav/basic/util/TXCTimeUtil;->getTimeTick()J

    move-result-wide v2

    invoke-virtual {v5, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 131
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mNotifyListener:Lcom/tencent/liteav/basic/c/a;

    invoke-interface {v0, v1, v5}, Lcom/tencent/liteav/basic/c/a;->onNotifyEvent(ILandroid/os/Bundle;)V

    .line 133
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    const/16 v0, 0x2ee1

    if-ne p1, v0, :cond_3

    .line 135
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->reportNetStatusInternal()V

    .line 137
    :cond_3
    return-void

    .line 69
    :pswitch_1
    const/16 v0, 0xbbb

    .line 70
    :try_start_1
    const-string v1, "EVT_MSG"

    const-string v2, "RTMP\u670d\u52a1\u5668\u63e1\u624b\u5931\u8d25"

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 71
    goto :goto_0

    .line 74
    :pswitch_2
    const-string v1, "EVT_MSG"

    const-string/jumbo v2, "\u7ecf\u591a\u6b21\u81ea\u52a8\u91cd\u8fde\u5931\u8d25\uff0c\u653e\u5f03\u8fde\u63a5"

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 75
    goto :goto_0

    .line 78
    :pswitch_3
    const-string v0, "EVT_MSG"

    const-string/jumbo v2, "\u8fde\u63a5\u670d\u52a1\u5668\u5931\u8d25"

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 82
    :pswitch_4
    :try_start_2
    const-string v0, "EVT_MSG"

    const-string/jumbo v1, "\u8bfb\u6570\u636e\u9519\u8bef\uff0c\u7f51\u7edc\u8fde\u63a5\u65ad\u5f00"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 83
    goto :goto_0

    .line 86
    :pswitch_5
    const-string v0, "EVT_MSG"

    const-string/jumbo v1, "\u5199\u6570\u636e\u9519\u8bef\uff0c\u7f51\u7edc\u8fde\u63a5\u65ad\u5f00"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 87
    goto :goto_0

    .line 89
    :pswitch_6
    const/16 v0, -0x8fe

    .line 90
    const-string v1, "EVT_MSG"

    const-string/jumbo v2, "\u83b7\u53d6\u52a0\u901f\u62c9\u6d41\u5730\u5740\u5931\u8d25"

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 91
    goto :goto_0

    .line 94
    :pswitch_7
    const-string v1, "EVT_MSG"

    const-string/jumbo v2, "\u6240\u6709\u62c9\u6d41\u5730\u5740\u5c1d\u8bd5\u5931\u8d25,\u53ef\u4ee5\u653e\u5f03\u6cbb\u7597"

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 95
    goto :goto_0

    .line 97
    :pswitch_8
    const-string v0, "EVT_MSG"

    const-string/jumbo v1, "\u8fde\u63a5\u7ed3\u675f"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v1, p1

    .line 98
    goto/16 :goto_0

    .line 100
    :pswitch_9
    const/16 v0, 0x7d1

    .line 101
    const-string v1, "EVT_MSG"

    const-string/jumbo v2, "\u5df2\u8fde\u63a5\u670d\u52a1\u5668"

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 102
    goto/16 :goto_0

    .line 105
    :pswitch_a
    const-string v0, "EVT_MSG"

    const-string/jumbo v2, "\u8fde\u63a5\u670d\u52a1\u5668\u5931\u8d25"

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 109
    :pswitch_b
    const-string v0, "EVT_MSG"

    const-string/jumbo v1, "\u542f\u52a8\u7f51\u7edc\u91cd\u8fde"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v3

    .line 110
    goto/16 :goto_0

    .line 112
    :pswitch_c
    const/16 v0, 0x7d2

    .line 113
    const-string v1, "EVT_MSG"

    const-string/jumbo v2, "\u5f00\u59cb\u62c9\u6d41"

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 114
    goto/16 :goto_0

    .line 117
    :pswitch_d
    const-string v0, "EVT_MSG"

    const-string/jumbo v1, "\u670d\u52a1\u5668\u62d2\u7edd\u8fde\u63a5\u8bf7\u6c42"

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v3

    .line 118
    goto/16 :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x2ee1
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_1
        :pswitch_0
        :pswitch_8
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onPullAudio(Lcom/tencent/liteav/basic/f/a;)V
    .locals 2

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->tryResetRetryCount()V

    .line 148
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mListenerLock:[B

    monitor-enter v1

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mListener:Lcom/tencent/liteav/network/e;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mListener:Lcom/tencent/liteav/network/e;

    invoke-interface {v0, p1}, Lcom/tencent/liteav/network/e;->onPullAudio(Lcom/tencent/liteav/basic/f/a;)V

    .line 152
    :cond_0
    monitor-exit v1

    .line 153
    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPullNAL(Lcom/tencent/liteav/basic/f/b;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x1

    const/16 v4, 0x1bcb

    .line 157
    invoke-direct {p0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->tryResetRetryCount()V

    .line 158
    if-eqz p1, :cond_1

    .line 159
    iget v0, p1, Lcom/tencent/liteav/basic/f/b;->b:I

    if-nez v0, :cond_3

    .line 160
    iget-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mVideoGOPRecv:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mRecvFirstGOP:Z

    .line 162
    iget-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mVideoGOPRecv:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    .line 164
    :cond_0
    iput-wide v6, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mVideoGOPRecv:J

    .line 173
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mListenerLock:[B

    monitor-enter v1

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mListener:Lcom/tencent/liteav/network/e;

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mListener:Lcom/tencent/liteav/network/e;

    invoke-interface {v0, p1}, Lcom/tencent/liteav/network/e;->onPullNAL(Lcom/tencent/liteav/basic/f/b;)V

    .line 177
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    return-void

    .line 167
    :cond_3
    iget-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mVideoGOPRecv:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mVideoGOPRecv:J

    .line 168
    iget-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mRecvFirstGOP:Z

    if-nez v0, :cond_1

    .line 169
    iget-wide v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mVideoGOPRecv:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/tencent/liteav/network/TXCStreamDownloader;->setStatusValue(ILjava/lang/Object;)Z

    goto :goto_0

    .line 177
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setListener(Lcom/tencent/liteav/network/e;)V
    .locals 2

    .prologue
    .line 181
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mListenerLock:[B

    monitor-enter v1

    .line 182
    :try_start_0
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mListener:Lcom/tencent/liteav/network/e;

    .line 183
    monitor-exit v1

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNotifyListener(Lcom/tencent/liteav/basic/c/a;)V
    .locals 2

    .prologue
    .line 187
    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mListenerLock:[B

    monitor-enter v1

    .line 188
    :try_start_0
    iput-object p1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mNotifyListener:Lcom/tencent/liteav/basic/c/a;

    .line 189
    monitor-exit v1

    .line 190
    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRetryInterval(I)V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    iput p1, v0, Lcom/tencent/liteav/network/TXIStreamDownloader;->connectRetryInterval:I

    .line 249
    :cond_0
    return-void
.end method

.method public setRetryTimes(I)V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    iput p1, v0, Lcom/tencent/liteav/network/TXIStreamDownloader;->connectRetryLimit:I

    .line 243
    :cond_0
    return-void
.end method

.method public start(Ljava/lang/String;ZI)I
    .locals 8

    .prologue
    const-wide/16 v6, 0x7d0

    const/4 v5, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 252
    iput-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloaderRunning:Z

    .line 253
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mVideoGOPRecv:J

    .line 254
    iput-boolean v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mRecvFirstGOP:Z

    .line 256
    if-eqz p2, :cond_5

    iget v2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloadFormat:I

    if-ne v2, v5, :cond_5

    .line 257
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mAccUrlFetcher:Lcom/tencent/liteav/network/f;

    new-instance v2, Lcom/tencent/liteav/network/TXCStreamDownloader$1;

    invoke-direct {v2, p0, p1}, Lcom/tencent/liteav/network/TXCStreamDownloader$1;-><init>(Lcom/tencent/liteav/network/TXCStreamDownloader;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p3, v2}, Lcom/tencent/liteav/network/f;->a(Ljava/lang/String;ILcom/tencent/liteav/network/f$a;)I

    move-result v0

    .line 300
    if-eqz v0, :cond_2

    .line 301
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 302
    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ap:I

    const-string v4, "invalid playUrl"

    invoke-static {v2, v3, v0, v4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;IILjava/lang/String;)V

    .line 312
    :cond_0
    :goto_0
    const-string v2, "TXCStreamDownloader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccelerateStreamPlayUrl failed, result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", play stream with raw url"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/liteav/basic/log/TXCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    if-eqz v0, :cond_1

    .line 314
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 315
    new-instance v2, Lcom/tencent/liteav/network/d;

    invoke-direct {v2, p1, v1}, Lcom/tencent/liteav/network/d;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {v2, v0, v1, v1}, Lcom/tencent/liteav/network/TXIStreamDownloader;->startDownload(Ljava/util/Vector;ZZ)V

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mReportNetStatusRunnalbe:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 338
    :cond_2
    :goto_1
    return v1

    .line 304
    :cond_3
    const/4 v2, -0x2

    if-ne v0, v2, :cond_4

    .line 305
    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ap:I

    const-string v4, "invalid streamID"

    invoke-static {v2, v3, v0, v4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;IILjava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_4
    const/4 v2, -0x3

    if-ne v0, v2, :cond_0

    .line 308
    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mApplicationContext:Landroid/content/Context;

    sget v3, Lcom/tencent/liteav/basic/datareport/a;->ap:I

    const-string v4, "invalid signature"

    invoke-static {v2, v3, v0, v4}, Lcom/tencent/liteav/basic/datareport/TXCDRApi;->txReportDAU(Landroid/content/Context;IILjava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_5
    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    if-eqz v2, :cond_2

    .line 329
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 330
    new-instance v3, Lcom/tencent/liteav/network/d;

    invoke-direct {v3, p1, v1}, Lcom/tencent/liteav/network/d;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v3, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    iget v4, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloadFormat:I

    if-ne v4, v5, :cond_6

    :goto_2
    invoke-virtual {v3, v2, v0, p2}, Lcom/tencent/liteav/network/TXIStreamDownloader;->startDownload(Ljava/util/Vector;ZZ)V

    .line 334
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 335
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mReportNetStatusRunnalbe:Ljava/lang/Runnable;

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_6
    move v0, v1

    .line 331
    goto :goto_2
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 343
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloaderRunning:Z

    .line 344
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mDownloader:Lcom/tencent/liteav/network/TXIStreamDownloader;

    invoke-virtual {v0}, Lcom/tencent/liteav/network/TXIStreamDownloader;->stopDownload()V

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/liteav/network/TXCStreamDownloader;->mReportNetStatusRunnalbe:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 350
    :cond_1
    return-void
.end method
