.class public Lcom/netease/download/downloader/DownloadProxy;
.super Ljava/lang/Object;
.source "DownloadProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadProxy"

.field public static mContext:Landroid/content/Context;

.field public static mIsStart:Z

.field private static mReceiver:Lcom/netease/download/network/ConnectionChangeReceiver;

.field private static sDownloadProxy:Lcom/netease/download/downloader/DownloadProxy;

.field public static sOnceStop:Z


# instance fields
.field private mListener:Lcom/netease/download/listener/DownloadListener;

.field private mParamsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netease/download/downloader/DownloadParams;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 64
    sput-object v0, Lcom/netease/download/downloader/DownloadProxy;->sDownloadProxy:Lcom/netease/download/downloader/DownloadProxy;

    .line 78
    sput-object v0, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    .line 84
    sput-boolean v1, Lcom/netease/download/downloader/DownloadProxy;->mIsStart:Z

    .line 86
    sput-boolean v1, Lcom/netease/download/downloader/DownloadProxy;->sOnceStop:Z

    .line 88
    sput-object v0, Lcom/netease/download/downloader/DownloadProxy;->mReceiver:Lcom/netease/download/network/ConnectionChangeReceiver;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadProxy;->mListener:Lcom/netease/download/listener/DownloadListener;

    .line 82
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadProxy;->mParamsList:Ljava/util/List;

    .line 68
    return-void
.end method

.method static synthetic access$0(Lcom/netease/download/downloader/DownloadProxy;Landroid/content/Context;Lcom/netease/download/listener/DownloadListener;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/netease/download/downloader/DownloadProxy;->init(Landroid/content/Context;Lcom/netease/download/listener/DownloadListener;)V

    return-void
.end method

.method static synthetic access$1(Lcom/netease/download/downloader/DownloadProxy;)V
    .locals 0

    .prologue
    .line 587
    invoke-direct {p0}, Lcom/netease/download/downloader/DownloadProxy;->reset()V

    return-void
.end method

.method static synthetic access$2(Lcom/netease/download/downloader/DownloadProxy;Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 604
    invoke-direct {p0, p1}, Lcom/netease/download/downloader/DownloadProxy;->parseParam(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/netease/download/downloader/DownloadProxy;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadProxy;->mParamsList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$4(Lcom/netease/download/downloader/DownloadProxy;)Ljava/util/List;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadProxy;->mParamsList:Ljava/util/List;

    return-object v0
.end method

.method public static clearDownloadId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "downloadId"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 453
    const-string v0, "DownloadProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "clearDownloadId downloadId="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    if-nez p0, :cond_0

    .line 455
    const-string v0, "DownloadProxy"

    const-string v1, "context is null"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :goto_0
    return-void

    .line 459
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    const-string v0, "DownloadProxy"

    const-string v1, "clearDownloadId param error"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 464
    :cond_1
    const-string v0, "ALL_DOWNLOADID"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 465
    invoke-static {}, Lcom/netease/download/progress/ProgressProxy;->getInstances()Lcom/netease/download/progress/ProgressProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/download/progress/ProgressProxy;->clearAllDownloadId(Landroid/content/Context;)V

    .line 470
    :goto_1
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getInstances()Lcom/netease/download/listener/DownloadListenerCore;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;

    move-result-object v0

    const/4 v1, 0x0

    const-string v6, "__DOWNLOAD_CLEAN_CACHE__"

    const-string v7, "__DOWNLOAD_CLEAN_CACHE__"

    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/reporter/ReportUtil;->getCurrentSessionId()Ljava/lang/String;

    move-result-object v8

    move-wide v4, v2

    invoke-virtual/range {v0 .. v8}, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_2
    invoke-static {}, Lcom/netease/download/progress/ProgressProxy;->getInstances()Lcom/netease/download/progress/ProgressProxy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/netease/download/progress/ProgressProxy;->removeInfo(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getCurrentSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 516
    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/reporter/ReportUtil;->getCurrentSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 492
    const-string v0, "DownloadProxy"

    const-string v1, "getDownloadId"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-static {}, Lcom/netease/download/util/StrUtil;->getRandomId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/netease/download/downloader/DownloadProxy;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/netease/download/downloader/DownloadProxy;->sDownloadProxy:Lcom/netease/download/downloader/DownloadProxy;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/netease/download/downloader/DownloadProxy;

    invoke-direct {v0}, Lcom/netease/download/downloader/DownloadProxy;-><init>()V

    sput-object v0, Lcom/netease/download/downloader/DownloadProxy;->sDownloadProxy:Lcom/netease/download/downloader/DownloadProxy;

    .line 75
    :cond_0
    sget-object v0, Lcom/netease/download/downloader/DownloadProxy;->sDownloadProxy:Lcom/netease/download/downloader/DownloadProxy;

    return-object v0
.end method

.method public static init()V
    .locals 5

    .prologue
    .line 521
    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v2

    sget-object v3, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/netease/download/reporter/ReportUtil;->init(Landroid/content/Context;)V

    .line 523
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v2

    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/downloader/DownloadInitInfo;->getProjectId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/netease/download/reporter/ReportInfo;->mGameCode:Ljava/lang/String;

    .line 524
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/downloader/DownloadInitInfo;->getmDownloadId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/reporter/ReportUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/netease/download/reporter/ReportInfo;->mDownloadid:Ljava/lang/String;

    .line 525
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v2

    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/reporter/ReportUtil;->getOsName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/netease/download/reporter/ReportInfo;->mOsName:Ljava/lang/String;

    .line 526
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v2

    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/reporter/ReportUtil;->getOsVer()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/netease/download/reporter/ReportInfo;->mOsVer:Ljava/lang/String;

    .line 527
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v2

    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/reporter/ReportUtil;->getUdtVer()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/netease/download/reporter/ReportInfo;->mUdtVer:Ljava/lang/String;

    .line 529
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v2

    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/reporter/ReportUtil;->getAreaZone()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/netease/download/reporter/ReportInfo;->mAreaZone:Ljava/lang/String;

    .line 530
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v2

    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/reporter/ReportUtil;->getTimeZone()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/netease/download/reporter/ReportInfo;->mTimeZone:Ljava/lang/String;

    .line 531
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v2

    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/reporter/ReportUtil;->getNetworkType()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/netease/download/reporter/ReportInfo;->mNetWork:Ljava/lang/String;

    .line 532
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v2

    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getSystemModel()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/netease/download/reporter/ReportInfo;->mMobileType:Ljava/lang/String;

    .line 533
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v2

    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/reporter/ReportUtil;->getNetworkSignal()I

    move-result v3

    iput v3, v2, Lcom/netease/download/reporter/ReportInfo;->mNetworkSignal:I

    .line 534
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v2

    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/reporter/ReportUtil;->getLocalIp()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/netease/download/reporter/ReportInfo;->mCliIp:Ljava/lang/String;

    .line 535
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/download/reporter/ReportInfo;->mDetectData:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v3, Lcom/netease/download/reporter/KeyConst;->KEY_DATASOURCE:Ljava/lang/String;

    const-string v4, "download_sdk"

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v2

    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/reporter/ReportUtil;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/netease/download/reporter/ReportInfo;->mUdid:Ljava/lang/String;

    .line 537
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v2

    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/reporter/ReportUtil;->getCurrentSessionId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/netease/download/reporter/ReportInfo;->mSessionid:Ljava/lang/String;

    .line 539
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadInitInfo;->getmLogTest()Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, "logTest":Ljava/lang/String;
    const/4 v1, 0x0

    .line 542
    .local v1, "logtest":I
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 543
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 546
    :cond_0
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v2

    iput v1, v2, Lcom/netease/download/reporter/ReportInfo;->mLogTest:I

    .line 548
    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/reporter/ReportUtil;->hasPhonePermission()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 549
    const-string v2, "DownloadProxy"

    const-string v3, "\u6709\u8bfb\u624b\u673a\u6743\u9650"

    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v2

    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/reporter/ReportUtil;->getNetworkIsp()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/netease/download/reporter/ReportInfo;->mNetworkIsp:Ljava/lang/String;

    .line 556
    :goto_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/netease/download/downloader/DownloadProxy$2;

    invoke-direct {v3}, Lcom/netease/download/downloader/DownloadProxy$2;-><init>()V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 583
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 584
    return-void

    .line 553
    :cond_1
    const-string v2, "DownloadProxy"

    const-string v3, "\u6ca1\u6709\u8bfb\u624b\u673a\u6743\u9650"

    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Lcom/netease/download/listener/DownloadListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/netease/download/listener/DownloadListener;

    .prologue
    .line 105
    sget-object v0, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 106
    sput-object p1, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadProxy;->mListener:Lcom/netease/download/listener/DownloadListener;

    if-nez v0, :cond_1

    .line 110
    iput-object p2, p0, Lcom/netease/download/downloader/DownloadProxy;->mListener:Lcom/netease/download/listener/DownloadListener;

    .line 113
    :cond_1
    sget-object v0, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/download/network/NetworkStatus;->initialize(Landroid/content/Context;)V

    .line 115
    sget-object v0, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/download/downloader/DownloadProxy;->registerReceiver(Landroid/content/Context;)V

    .line 117
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v0

    sget-object v1, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/download/downloader/DownloadInitInfo;->setContext(Landroid/content/Context;)V

    .line 120
    return-void
.end method

.method private parseParam(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 28
    .param p1, "paramsJson"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/download/downloader/DownloadParams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 605
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 607
    .local v17, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/downloader/DownloadParams;>;"
    if-nez p1, :cond_0

    .line 608
    const-string v24, "DownloadProxy"

    const-string v25, "DownloadProxy [parseParam] paramsJson is null"

    invoke-static/range {v24 .. v25}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    :goto_0
    return-object v17

    .line 612
    :cond_0
    const-string v24, "DownloadProxy"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "DownloadProxy [parseParam] paramsJson ="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const/16 v22, 0x0

    .line 619
    .local v22, "type":Ljava/lang/String;
    :try_start_0
    const-string v24, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    .line 625
    :goto_1
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/netease/download/downloader/DownloadInitInfo;->setmType(Ljava/lang/String;)V

    .line 627
    const-string v24, "downloadid"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 628
    .local v6, "downloadId":Ljava/lang/String;
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Lcom/netease/download/downloader/DownloadInitInfo;->setmDownloadId(Ljava/lang/String;)V

    .line 629
    const-string v24, "DownloadProxy"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "downloadid ="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_1

    const-string v24, "patch"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 632
    invoke-static {}, Lcom/netease/download/progress/ProgressProxy;->getInstances()Lcom/netease/download/progress/ProgressProxy;

    move-result-object v24

    sget-object v25, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    invoke-virtual/range {v24 .. v25}, Lcom/netease/download/progress/ProgressProxy;->init(Landroid/content/Context;)V

    .line 633
    invoke-static {}, Lcom/netease/download/progress/ProgressProxy;->getInstances()Lcom/netease/download/progress/ProgressProxy;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v6, v1}, Lcom/netease/download/progress/ProgressProxy;->getParentTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 635
    .local v14, "params":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_1

    .line 638
    :try_start_1
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .end local p1    # "paramsJson":Lorg/json/JSONObject;
    .local v15, "paramsJson":Lorg/json/JSONObject;
    move-object/from16 p1, v15

    .line 648
    .end local v14    # "params":Ljava/lang/String;
    .end local v15    # "paramsJson":Lorg/json/JSONObject;
    .restart local p1    # "paramsJson":Lorg/json/JSONObject;
    :cond_1
    :goto_2
    const-string v24, "DownloadProxy"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "\u4ece\u6301\u4e45\u5316\u4e2d\u83b7\u53d6\u6570\u636e\uff0c\u8f6c\u4e3ajson="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    const-string v24, "projectid"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 656
    .local v16, "projectId":Ljava/lang/String;
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/netease/download/downloader/DownloadInitInfo;->setProjectId(Ljava/lang/String;)V

    .line 660
    const-string v24, "true"

    const-string v25, "wifionly"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    .line 661
    .local v23, "wifiOnly":Z
    const-string v24, "DownloadProxy"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "\u4ece\u6301\u4e45\u5316\u4e2d\u83b7\u53d6\u6570\u636e\uff0c\u8f6c\u4e3ajson11="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, "wifionly"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    const-string v24, "DownloadProxy"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "\u4ece\u6301\u4e45\u5316\u4e2d\u83b7\u53d6\u6570\u636e\uff0c\u8f6c\u4e3ajson22="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/netease/download/downloader/DownloadInitInfo;->setmWifiOnly(Z)V

    .line 665
    const-string v24, "true"

    const-string v25, "logopen"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 666
    .local v11, "logOpen":Z
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lcom/netease/download/downloader/DownloadInitInfo;->setmLogOpen(Z)V

    .line 667
    invoke-static {v11}, Lcom/netease/download/util/LogUtil;->setIsShowLog(Z)V

    .line 669
    const-string v24, "oversea"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 670
    .local v13, "oversea":Ljava/lang/String;
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lcom/netease/download/downloader/DownloadInitInfo;->setOverSea(Ljava/lang/String;)V

    .line 672
    const/16 v21, 0x3

    .line 675
    .local v21, "threadnum":I
    :try_start_2
    const-string v24, "threadnum"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v21

    .line 681
    :goto_3
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/netease/download/downloader/DownloadInitInfo;->setmThreadnum(I)V

    .line 683
    const-string v24, "testlog"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 684
    .local v20, "testLog":Ljava/lang/String;
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/netease/download/downloader/DownloadInitInfo;->setmLogTest(Ljava/lang/String;)V

    .line 693
    const/4 v14, 0x0

    .line 694
    .local v14, "params":Lcom/netease/download/downloader/DownloadParams;
    const-wide/16 v2, 0x0

    .line 695
    .local v2, "allSize":J
    const-string v24, "downfile"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 698
    .local v4, "array":Lorg/json/JSONArray;
    if-eqz v4, :cond_2

    .line 699
    const/4 v5, 0x0

    .line 701
    .local v5, "downfile":Lorg/json/JSONObject;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v24

    if-lt v10, v0, :cond_4

    .line 760
    .end local v5    # "downfile":Lorg/json/JSONObject;
    .end local v10    # "i":I
    :cond_2
    const-string v24, "DownloadProxy"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "list="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    const-string v24, "DownloadProxy"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "allSize="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Lcom/netease/download/downloader/DownloadInitInfo;->setAllSize(J)V

    .line 764
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iput-wide v2, v0, Lcom/netease/download/reporter/ReportInfo;->mTotalSize:J

    .line 766
    const-string v24, "DownloadProxy"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "\u6240\u6709\u6587\u4ef6\u603b\u5927\u5c0f="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-static {}, Lcom/netease/download/progress/ProgressProxy;->getInstances()Lcom/netease/download/progress/ProgressProxy;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/netease/download/progress/ProgressProxy;->getDownloadedSize(Ljava/util/List;)I

    move-result v24

    move/from16 v0, v24

    int-to-long v8, v0

    .line 769
    .local v8, "downloadedSize":J
    const-string v24, "DownloadProxy"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "\u5df2\u7ecf\u4e0b\u8f7d\u597d\u7684\u603b\u5927\u5c0f\u4e3a="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v24

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mDlSize:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v24, v0

    sget-object v25, Lcom/netease/download/reporter/KeyConst;->KEY_OVERALL:Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    const/4 v12, 0x0

    .line 777
    .local v12, "mConfigurl":Ljava/lang/String;
    const-string v24, "configurl"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 778
    const-string v24, "configurl"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 781
    :cond_3
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Lcom/netease/download/downloader/DownloadInitInfo;->setmConfigurl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 620
    .end local v2    # "allSize":J
    .end local v4    # "array":Lorg/json/JSONArray;
    .end local v6    # "downloadId":Ljava/lang/String;
    .end local v8    # "downloadedSize":J
    .end local v11    # "logOpen":Z
    .end local v12    # "mConfigurl":Ljava/lang/String;
    .end local v13    # "oversea":Ljava/lang/String;
    .end local v14    # "params":Lcom/netease/download/downloader/DownloadParams;
    .end local v16    # "projectId":Ljava/lang/String;
    .end local v20    # "testLog":Ljava/lang/String;
    .end local v21    # "threadnum":I
    .end local v23    # "wifiOnly":Z
    :catch_0
    move-exception v7

    .line 621
    .local v7, "e":Ljava/lang/NumberFormatException;
    const-string v24, "DownloadProxy"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "DownloadProxy [parseParam] NumberFormatException = "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v22, "error"

    goto/16 :goto_1

    .line 640
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .restart local v6    # "downloadId":Ljava/lang/String;
    .local v14, "params":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 641
    .local v7, "e":Lorg/json/JSONException;
    const-string v24, "DownloadProxy"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "DownloadProxy [parseParam] JSONException = "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v24, "DownloadProxy"

    const-string v25, "\u6301\u4e45\u5316\u6570\u636e\u4e2d\u83b7\u53d6\u7236\u4efb\u52a1\u5931\u8d25\uff0c\u9009\u7528\u4f20\u5165\u53c2\u6570\u4e2d\u7684\u4efb\u52a1\u53c2\u6570\u8fdb\u884c\u6b64\u6b21\u4e0b\u8f7d"

    invoke-static/range {v24 .. v25}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 677
    .end local v7    # "e":Lorg/json/JSONException;
    .end local v14    # "params":Ljava/lang/String;
    .restart local v11    # "logOpen":Z
    .restart local v13    # "oversea":Ljava/lang/String;
    .restart local v16    # "projectId":Ljava/lang/String;
    .restart local v21    # "threadnum":I
    .restart local v23    # "wifiOnly":Z
    :catch_2
    move-exception v7

    .line 678
    .local v7, "e":Ljava/lang/Exception;
    const-string v24, "DownloadProxy"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "DownloadProxy [parseParam] get threadnum Exception="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 703
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v2    # "allSize":J
    .restart local v4    # "array":Lorg/json/JSONArray;
    .restart local v5    # "downfile":Lorg/json/JSONObject;
    .restart local v10    # "i":I
    .local v14, "params":Lcom/netease/download/downloader/DownloadParams;
    .restart local v20    # "testLog":Ljava/lang/String;
    :cond_4
    new-instance v14, Lcom/netease/download/downloader/DownloadParams;

    .end local v14    # "params":Lcom/netease/download/downloader/DownloadParams;
    invoke-direct {v14}, Lcom/netease/download/downloader/DownloadParams;-><init>()V

    .line 704
    .restart local v14    # "params":Lcom/netease/download/downloader/DownloadParams;
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/netease/download/downloader/DownloadParams;->setIsParted(Z)V

    .line 705
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/netease/download/downloader/DownloadParams;->setIsUiCallback(Z)V

    .line 707
    invoke-virtual {v4, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 709
    if-eqz v5, :cond_6

    .line 710
    const-string v24, "targeturl"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/netease/download/downloader/DownloadParams;->setTargetUrl(Ljava/lang/String;)V

    .line 712
    invoke-virtual {v14}, Lcom/netease/download/downloader/DownloadParams;->getTargetUrl()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/netease/download/util/StrUtil;->getCdnChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/netease/download/downloader/DownloadParams;->setmChannel(Ljava/lang/String;)V

    .line 713
    const-string v24, "filepath"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/netease/download/downloader/DownloadParams;->setFilePath(Ljava/lang/String;)V

    .line 714
    const-string v24, "targeturl"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/netease/download/util/StrUtil;->getSuffixFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/netease/download/downloader/DownloadParams;->setUrlSuffix(Ljava/lang/String;)V

    .line 715
    const-string v24, "targeturl"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/netease/download/util/StrUtil;->getPrefixFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/netease/download/downloader/DownloadParams;->setOriginPrefix(Ljava/lang/String;)V

    .line 716
    const-string v24, "targeturl"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/netease/download/util/StrUtil;->getPrefixFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/netease/download/downloader/DownloadParams;->setUrlPrefix(Ljava/lang/String;)V

    .line 718
    const-wide/16 v18, 0x0

    .line 720
    .local v18, "size":J
    const-string v24, "first"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_7

    const-string v24, "last"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 721
    const-string v24, "DownloadProxy"

    const-string v25, "DownloadProxy [parseParam] \u53c2\u6570\u9009\u62e9first last\u65b9\u5f0f\uff0c\u5ffd\u7565size\u5b57\u6bb5"

    invoke-static/range {v24 .. v25}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    :try_start_3
    const-string v24, "first"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v14, v0, v1}, Lcom/netease/download/downloader/DownloadParams;->setSegmentStart(J)V

    .line 725
    const-string v24, "last"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v14, v0, v1}, Lcom/netease/download/downloader/DownloadParams;->setSegmentEnd(J)V

    .line 727
    invoke-virtual {v14}, Lcom/netease/download/downloader/DownloadParams;->getSegmentEnd()J

    move-result-wide v24

    invoke-virtual {v14}, Lcom/netease/download/downloader/DownloadParams;->getSegmentStart()J

    move-result-wide v26

    cmp-long v24, v24, v26

    if-lez v24, :cond_5

    .line 728
    invoke-virtual {v14}, Lcom/netease/download/downloader/DownloadParams;->getSegmentEnd()J

    move-result-wide v24

    invoke-virtual {v14}, Lcom/netease/download/downloader/DownloadParams;->getSegmentStart()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide v26

    sub-long v18, v24, v26

    .line 746
    :cond_5
    :goto_5
    add-long v2, v2, v18

    .line 748
    const-string v24, "md5"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/netease/download/downloader/DownloadParams;->setMd5(Ljava/lang/String;)V

    .line 752
    .end local v18    # "size":J
    :cond_6
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/netease/download/downloader/DownloadParams;->hashCode()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/netease/download/downloader/DownloadParams;->setFileId(Ljava/lang/String;)V

    .line 754
    const-string v24, "DownloadProxy"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "params="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/netease/download/downloader/DownloadParams;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 731
    .restart local v18    # "size":J
    :catch_3
    move-exception v7

    .line 732
    .restart local v7    # "e":Ljava/lang/Exception;
    const-string v24, "DownloadProxy"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "DownloadProxy [parseParam] first & last Exception="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 736
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_7
    const-string v24, "DownloadProxy"

    const-string v25, "\u53c2\u6570\u9009\u62e9size\u65b9\u5f0f\uff0c\u5ffd\u7565first last\u5b57\u6bb5"

    invoke-static/range {v24 .. v25}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    :try_start_4
    const-string v24, "size"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v18, v0

    goto :goto_5

    .line 741
    :catch_4
    move-exception v7

    .line 742
    .local v7, "e":Ljava/lang/NumberFormatException;
    const-string v24, "DownloadProxy"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "DownloadProxy [parseParam] size NumberFormatException="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5
.end method

.method public static registerReceiver(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    const-string v0, "DownloadProxy"

    const-string v1, "\u6ce8\u518c\u7f51\u7edc\u5e7f\u64ad\u76d1\u542c\u5668"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v0, Lcom/netease/download/network/ConnectionChangeReceiver;

    invoke-direct {v0}, Lcom/netease/download/network/ConnectionChangeReceiver;-><init>()V

    sput-object v0, Lcom/netease/download/downloader/DownloadProxy;->mReceiver:Lcom/netease/download/network/ConnectionChangeReceiver;

    .line 93
    sget-object v0, Lcom/netease/download/downloader/DownloadProxy;->mReceiver:Lcom/netease/download/network/ConnectionChangeReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    .line 589
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getInstances()Lcom/netease/download/listener/DownloadListenerCore;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/download/downloader/DownloadProxy;->mListener:Lcom/netease/download/listener/DownloadListener;

    invoke-virtual {v0, v1}, Lcom/netease/download/listener/DownloadListenerCore;->init(Lcom/netease/download/listener/DownloadListener;)V

    .line 590
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getInstances()Lcom/netease/download/listener/DownloadListenerCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/listener/DownloadListenerCore;->clear()V

    .line 593
    invoke-static {}, Lcom/netease/download/reporter/ReportProxy;->getInstance()Lcom/netease/download/reporter/ReportProxy;

    move-result-object v0

    sget-object v1, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netease/download/reporter/ReportProxy;->init(Landroid/content/Context;)V

    .line 594
    invoke-static {}, Lcom/netease/download/reporter/ReportProxy;->getInstance()Lcom/netease/download/reporter/ReportProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/download/reporter/ReportProxy;->setNeedDeleteFile(Z)V

    .line 596
    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns2/HttpdnsProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/httpdns2/HttpdnsProxy;->clean()V

    .line 597
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/dns/CdnIpController;->clean()V

    .line 598
    invoke-static {}, Lcom/netease/download/check/CheckTime;->clean()V

    .line 599
    invoke-static {}, Lcom/netease/download/config2/Lvsip;->getInstance()Lcom/netease/download/config2/Lvsip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/config2/Lvsip;->clean()V

    .line 601
    invoke-static {}, Lcom/netease/download/config2/ConfigProxy;->getInstances()Lcom/netease/download/config2/ConfigProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/download/config2/ConfigProxy;->clean()V

    .line 602
    return-void
.end method

.method private sendFinish(Lcom/netease/download/listener/DownloadListener;)V
    .locals 6
    .param p1, "pListener"    # Lcom/netease/download/listener/DownloadListener;

    .prologue
    .line 789
    const/4 v2, 0x0

    .line 790
    .local v2, "mParams":Lcom/netease/download/downloader/DownloadParams;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 792
    .local v0, "data":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/netease/download/downloader/DownloadProxy;->mParamsList:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/netease/download/downloader/DownloadProxy;->mParamsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 793
    iget-object v3, p0, Lcom/netease/download/downloader/DownloadProxy;->mParamsList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mParams":Lcom/netease/download/downloader/DownloadParams;
    check-cast v2, Lcom/netease/download/downloader/DownloadParams;

    .line 796
    .restart local v2    # "mParams":Lcom/netease/download/downloader/DownloadParams;
    :try_start_0
    const-string v3, "size"

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadParams;->getSize()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 797
    const-string v3, "filename"

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadParams;->getUrlSuffix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 798
    const-string v3, "code"

    const/16 v4, 0xd

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 799
    const-string v3, "filepath"

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 800
    const-string v3, "md5"

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    :goto_0
    const-string v3, "DownloadProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onFinish data2="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    :cond_0
    if-eqz p1, :cond_1

    .line 810
    invoke-interface {p1, v0}, Lcom/netease/download/listener/DownloadListener;->onFinish(Lorg/json/JSONObject;)V

    .line 812
    :cond_1
    return-void

    .line 802
    :catch_0
    move-exception v1

    .line 803
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized stopAll()V
    .locals 4

    .prologue
    .line 479
    const-class v1, Lcom/netease/download/downloader/DownloadProxy;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/netease/download/downloader/DownloadProxy;->sOnceStop:Z

    .line 480
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mDetectData:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/netease/download/reporter/KeyConst;->KEY_COLLECT_CONDITION:Ljava/lang/String;

    const-string v3, "14"

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v0

    const/4 v2, 0x2

    iput v2, v0, Lcom/netease/download/reporter/ReportInfo;->mStatus:I

    .line 482
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v0

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/netease/download/network/NetController;->setInterruptedCode(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 489
    monitor-exit v1

    return-void

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 815
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    return-void
.end method

.method public static unregisterReceiver()V
    .locals 2

    .prologue
    .line 97
    const-string v0, "DownloadProxy"

    const-string v1, "\u6ce8\u9500\u7f51\u7edc\u5e7f\u64ad\u76d1\u542c\u5668"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netease/download/downloader/DownloadProxy;->mReceiver:Lcom/netease/download/network/ConnectionChangeReceiver;

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/netease/download/downloader/DownloadProxy;->mReceiver:Lcom/netease/download/network/ConnectionChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    :cond_0
    return-void
.end method


# virtual methods
.method public asyncDownloadArray(Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/download/listener/DownloadListener;)V
    .locals 2
    .param p1, "pContext"    # Landroid/content/Context;
    .param p2, "paramsJson"    # Lorg/json/JSONObject;
    .param p3, "pListener"    # Lcom/netease/download/listener/DownloadListener;

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    const-string v0, "DownloadProxy"

    const-string v1, "DownloadProxy [asyncDownloadArray] pContext is null"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :goto_0
    return-void

    .line 137
    :cond_0
    if-nez p3, :cond_1

    .line 138
    const-string v0, "DownloadProxy"

    const-string v1, "DownloadProxy [asyncDownloadArray] pListener is null"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_1
    if-nez p2, :cond_2

    .line 143
    const-string v0, "DownloadProxy"

    const-string v1, "DownloadProxy [asyncDownloadArray] paramsJson is null"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_2
    sget-boolean v0, Lcom/netease/download/downloader/DownloadProxy;->mIsStart:Z

    if-eqz v0, :cond_3

    .line 148
    const-string v0, "DownloadProxy"

    const-string v1, "DownloadProxy [asyncDownloadArray] already start"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/download/downloader/DownloadProxy$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/netease/download/downloader/DownloadProxy$1;-><init>(Lcom/netease/download/downloader/DownloadProxy;Landroid/content/Context;Lcom/netease/download/listener/DownloadListener;Lorg/json/JSONObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 230
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public isStart()Z
    .locals 1

    .prologue
    .line 123
    sget-boolean v0, Lcom/netease/download/downloader/DownloadProxy;->mIsStart:Z

    return v0
.end method
