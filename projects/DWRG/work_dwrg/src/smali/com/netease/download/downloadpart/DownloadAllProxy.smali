.class public Lcom/netease/download/downloadpart/DownloadAllProxy;
.super Ljava/lang/Object;
.source "DownloadAllProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadAllProxy"

.field private static mDownloadAllProxy:Lcom/netease/download/downloadpart/DownloadAllProxy;


# instance fields
.field private mAl:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/concurrent/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mExecutorServiceQueueSize:I

.field private mExs:Ljava/util/concurrent/ExecutorService;

.field private mIndexHasSubmit:I

.field private mIndexhasResult:I

.field private mParamsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/download/downloader/DownloadParams;",
            ">;"
        }
    .end annotation
.end field

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mDownloadAllProxy:Lcom/netease/download/downloadpart/DownloadAllProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v1, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    .line 53
    iput v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    .line 55
    iput v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexhasResult:I

    .line 57
    iput v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mStatus:I

    .line 59
    const/16 v0, 0xa

    iput v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mExecutorServiceQueueSize:I

    .line 61
    iput-object v1, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mAl:Ljava/util/ArrayList;

    .line 67
    return-void
.end method

.method public static getInstances()Lcom/netease/download/downloadpart/DownloadAllProxy;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mDownloadAllProxy:Lcom/netease/download/downloadpart/DownloadAllProxy;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/netease/download/downloadpart/DownloadAllProxy;

    invoke-direct {v0}, Lcom/netease/download/downloadpart/DownloadAllProxy;-><init>()V

    sput-object v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mDownloadAllProxy:Lcom/netease/download/downloadpart/DownloadAllProxy;

    .line 74
    :cond_0
    sget-object v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mDownloadAllProxy:Lcom/netease/download/downloadpart/DownloadAllProxy;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 374
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    return-void
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .prologue
    .line 367
    iget v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mStatus:I

    return v0
.end method

.method public init(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/download/downloader/DownloadParams;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, "paramsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/download/downloader/DownloadParams;>;"
    invoke-virtual {p0}, Lcom/netease/download/downloadpart/DownloadAllProxy;->reset()V

    .line 79
    iput-object p1, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    .line 80
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 360
    const-string v0, "DownloadAllProxy"

    const-string v1, "\u6062\u590d\u9ed8\u8ba4\u72b6\u6001"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iput v2, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    .line 362
    iput v2, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexhasResult:I

    .line 363
    iput v2, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mStatus:I

    .line 364
    return-void
.end method

.method public start()V
    .locals 24

    .prologue
    .line 92
    const-string v17, "DownloadAllProxy"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "mStatus="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mStatus:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mDetectData:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    sget-object v20, Lcom/netease/download/reporter/KeyConst;->KEY_COLLECT_CONDITION:Ljava/lang/String;

    const-string v21, "6"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/netease/download/network/NetController;->restore()V

    .line 111
    const/16 v13, 0xb

    .line 113
    .local v13, "result":I
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/netease/download/downloader/DownloadInitInfo;->getmThreadnum()I

    move-result v16

    .line 115
    .local v16, "threadnum":I
    const-string v17, "DownloadAllProxy"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "\u603b\u4e0b\u8f7d\u7ebf\u7a0b\u6c60\u7ebf\u7a0b\u6570="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-static/range {v16 .. v16}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/netease/download/downloadpart/DownloadAllProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    .line 117
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/netease/download/downloadpart/DownloadAllProxy;->mAl:Ljava/util/ArrayList;

    .line 119
    const/4 v8, 0x0

    .line 120
    .local v8, "downloadid":Ljava/lang/String;
    const/16 v4, 0xb

    .line 122
    .local v4, "code":I
    const/4 v11, 0x1

    .line 123
    .local v11, "index":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 125
    .local v14, "start":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_1

    .line 126
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mFileNum:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    sget-object v20, Lcom/netease/download/reporter/KeyConst;->KEY_TOTAL:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mFileNum:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    sget-object v20, Lcom/netease/download/reporter/KeyConst;->KEY_FINISH:Ljava/lang/String;

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mFileNum:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    sget-object v20, Lcom/netease/download/reporter/KeyConst;->KEY_DL_ERROR:Ljava/lang/String;

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mFileNum:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    sget-object v20, Lcom/netease/download/reporter/KeyConst;->KEY_VALIDATE:Ljava/lang/String;

    const/16 v21, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    mul-int/lit8 v17, v16, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    .line 133
    mul-int/lit8 v17, v16, 0x2

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/netease/download/downloadpart/DownloadAllProxy;->mExecutorServiceQueueSize:I

    .line 138
    :goto_0
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mExecutorServiceQueueSize:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    .line 153
    const/4 v7, 0x0

    .line 154
    .local v7, "downloadParams":Lcom/netease/download/downloader/DownloadParams;
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexhasResult:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v20

    if-lt v0, v1, :cond_5

    .line 306
    const/16 v17, 0x0

    sput-boolean v17, Lcom/netease/download/downloader/DownloadProxy;->mIsStart:Z

    .line 312
    if-nez v13, :cond_d

    .line 313
    const-string v17, "DownloadAllProxy"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "\u5220\u9664\u6301\u4e45\u5316key="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-static {}, Lcom/netease/download/progress/ProgressProxy;->getInstances()Lcom/netease/download/progress/ProgressProxy;

    move-result-object v17

    sget-object v20, Lcom/netease/download/downloader/DownloadProxy;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v8}, Lcom/netease/download/progress/ProgressProxy;->removeInfo(Landroid/content/Context;Ljava/lang/String;)V

    .line 315
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v17

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Lcom/netease/download/reporter/ReportInfo;->mStatus:I

    .line 316
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mDetectData:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    sget-object v20, Lcom/netease/download/reporter/KeyConst;->KEY_COLLECT_CONDITION:Ljava/lang/String;

    const-string v21, "36"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    sub-long v18, v20, v14

    .line 327
    .local v18, "time":J
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mDlTime:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    const-string v20, "overall"

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v17, "DownloadAllProxy"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "\u5168\u90e8\u4e0b\u8f7d\u82b1\u8d39\u603b\u65f6\u95f4 = "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " ms"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {}, Lcom/netease/download/downloader/DownloadProxy;->unregisterReceiver()V

    .line 333
    const-string v17, "DownloadAllProxy"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "\u603b\u5927\u5c0f="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getInstances()Lcom/netease/download/listener/DownloadListenerCore;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/netease/download/listener/DownloadListenerCore;->getTotalSize()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v17, "DownloadAllProxy"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "AllSize\u7684\u603b\u5927\u5c0f="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getInstances()Lcom/netease/download/listener/DownloadListenerCore;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/netease/download/listener/DownloadListenerCore;->getAllSize()J

    move-result-wide v22

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v17, "DownloadAllProxy"

    const-string v20, "DownloadAllProxy [start] \u4e0b\u8f7d\u540e\u671f\uff0c\u53d1\u9001\u65e5\u5fd7\uff08Patch\u6587\u4ef6\uff09"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lcom/netease/download/reporter/ReportProxy;->getInstance()Lcom/netease/download/reporter/ReportProxy;

    move-result-object v17

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/netease/download/reporter/ReportProxy;->setNeedDeleteFile(Z)V

    .line 338
    invoke-static {}, Lcom/netease/download/reporter/ReportProxy;->getInstance()Lcom/netease/download/reporter/ReportProxy;

    move-result-object v17

    const-wide/16 v20, 0x1

    move-object/from16 v0, v17

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/netease/download/reporter/ReportProxy;->close(J)V

    .line 340
    .end local v7    # "downloadParams":Lcom/netease/download/downloader/DownloadParams;
    .end local v18    # "time":J
    :cond_1
    return-void

    .line 135
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/netease/download/downloadpart/DownloadAllProxy;->mExecutorServiceQueueSize:I

    goto/16 :goto_0

    .line 140
    :cond_3
    const-string v20, "DownloadAllProxy"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v21, "\u4e00\u5171\u6709"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v21, "\u4e2a\u6587\u4ef6\u9700\u8981\u4e0b\u8f7d\u3002 \u7b2c "

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v21, " \u4e2a\u5f00\u59cb\u4e0b\u8f7d, \u53c2\u6570="

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual/range {v17 .. v17}, Lcom/netease/download/downloader/DownloadParams;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v6, Lcom/netease/download/downloadpart/DownloadAllCore;

    invoke-direct {v6}, Lcom/netease/download/downloadpart/DownloadAllCore;-><init>()V

    .line 143
    .local v6, "downloadAllCore":Lcom/netease/download/downloadpart/DownloadAllCore;
    if-nez v8, :cond_4

    .line 144
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/netease/download/downloader/DownloadInitInfo;->getmDownloadId()Ljava/lang/String;

    move-result-object v8

    .line 149
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/netease/download/downloader/DownloadParams;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/netease/download/downloadpart/DownloadAllCore;->init(Lcom/netease/download/downloader/DownloadParams;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mAl:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    goto/16 :goto_1

    .line 157
    .end local v6    # "downloadAllCore":Lcom/netease/download/downloadpart/DownloadAllCore;
    .restart local v7    # "downloadParams":Lcom/netease/download/downloader/DownloadParams;
    :cond_5
    const/4 v7, 0x0

    .line 158
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexhasResult:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Lcom/netease/download/downloader/DownloadParams;

    move-object v7, v0

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mAl:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/concurrent/Future;

    invoke-interface/range {v17 .. v17}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mAl:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    if-nez v7, :cond_6

    .line 209
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexhasResult:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexhasResult:I

    .line 211
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 212
    new-instance v6, Lcom/netease/download/downloadpart/DownloadAllCore;

    invoke-direct {v6}, Lcom/netease/download/downloadpart/DownloadAllCore;-><init>()V

    .line 213
    .restart local v6    # "downloadAllCore":Lcom/netease/download/downloadpart/DownloadAllCore;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/netease/download/downloader/DownloadParams;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/netease/download/downloadpart/DownloadAllCore;->init(Lcom/netease/download/downloader/DownloadParams;)V

    .line 214
    const-string v20, "DownloadAllProxy"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v21, "\u4e00\u5171\u6709"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v21, "\u4e2a\u6587\u4ef6\u9700\u8981\u4e0b\u8f7d\u3002 \u7b2c "

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v21, " \u4e2a\u5f00\u59cb\u4e0b\u8f7d, \u53c2\u6570="

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual/range {v17 .. v17}, Lcom/netease/download/downloader/DownloadParams;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mAl:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    goto/16 :goto_2

    .line 166
    .end local v6    # "downloadAllCore":Lcom/netease/download/downloadpart/DownloadAllCore;
    :cond_6
    :try_start_1
    const-string v17, "DownloadAllProxy"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "\u7b2c "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexhasResult:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " \u4e2a\u4e0b\u8f7d\u7ed3\u679c = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", \u6587\u4ef6\u8def\u5f84 = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/netease/download/listener/DownloadResult;->getInstances()Lcom/netease/download/listener/DownloadResult;

    move-result-object v17

    invoke-virtual {v7}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lcom/netease/download/listener/DownloadResult;->add(Ljava/lang/String;I)V

    .line 170
    if-eqz v13, :cond_a

    .line 171
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mErrcodeNum:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_8

    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mErrcodeNum:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 172
    .local v5, "count":I
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 173
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mErrcodeNum:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mFileNum:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    sget-object v20, Lcom/netease/download/reporter/KeyConst;->KEY_DL_ERROR:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mErrcodeFiles:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 176
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mErrcodeFiles:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/ArrayList;

    move-object/from16 v12, v17

    .line 179
    .local v12, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_5
    invoke-virtual {v7}, Lcom/netease/download/downloader/DownloadParams;->getTargetUrl()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 180
    invoke-virtual {v7}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mErrcodeFiles:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v12}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    .end local v5    # "count":I
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexhasResult:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexhasResult:I

    .line 211
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 212
    new-instance v6, Lcom/netease/download/downloadpart/DownloadAllCore;

    invoke-direct {v6}, Lcom/netease/download/downloadpart/DownloadAllCore;-><init>()V

    .line 213
    .restart local v6    # "downloadAllCore":Lcom/netease/download/downloadpart/DownloadAllCore;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/netease/download/downloader/DownloadParams;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/netease/download/downloadpart/DownloadAllCore;->init(Lcom/netease/download/downloader/DownloadParams;)V

    .line 214
    const-string v20, "DownloadAllProxy"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v21, "\u4e00\u5171\u6709"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v21, "\u4e2a\u6587\u4ef6\u9700\u8981\u4e0b\u8f7d\u3002 \u7b2c "

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v21, " \u4e2a\u5f00\u59cb\u4e0b\u8f7d, \u53c2\u6570="

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual/range {v17 .. v17}, Lcom/netease/download/downloader/DownloadParams;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mAl:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    goto/16 :goto_2

    .line 171
    .end local v6    # "downloadAllCore":Lcom/netease/download/downloadpart/DownloadAllCore;
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 177
    .restart local v5    # "count":I
    :cond_9
    :try_start_2
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_5

    .line 198
    .end local v5    # "count":I
    :catch_0
    move-exception v9

    .line 199
    .local v9, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v17, "DownloadAllProxy"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "InterruptedException="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 209
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexhasResult:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexhasResult:I

    .line 211
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 212
    new-instance v6, Lcom/netease/download/downloadpart/DownloadAllCore;

    invoke-direct {v6}, Lcom/netease/download/downloadpart/DownloadAllCore;-><init>()V

    .line 213
    .restart local v6    # "downloadAllCore":Lcom/netease/download/downloadpart/DownloadAllCore;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/netease/download/downloader/DownloadParams;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/netease/download/downloadpart/DownloadAllCore;->init(Lcom/netease/download/downloader/DownloadParams;)V

    .line 214
    const-string v20, "DownloadAllProxy"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v21, "\u4e00\u5171\u6709"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v21, "\u4e2a\u6587\u4ef6\u9700\u8981\u4e0b\u8f7d\u3002 \u7b2c "

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v21, " \u4e2a\u5f00\u59cb\u4e0b\u8f7d, \u53c2\u6570="

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual/range {v17 .. v17}, Lcom/netease/download/downloader/DownloadParams;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mAl:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    goto/16 :goto_2

    .line 185
    .end local v6    # "downloadAllCore":Lcom/netease/download/downloadpart/DownloadAllCore;
    .end local v9    # "e":Ljava/lang/InterruptedException;
    :cond_a
    :try_start_4
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mFileNum:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    sget-object v20, Lcom/netease/download/reporter/KeyConst;->KEY_FINISH:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    if-eqz v17, :cond_b

    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mFileNum:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    sget-object v20, Lcom/netease/download/reporter/KeyConst;->KEY_FINISH:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 186
    .local v10, "finishCount":I
    :goto_7
    add-int/lit8 v10, v10, 0x1

    .line 187
    const-string v17, "DownloadAllProxy"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "\u6210\u529f\u7684\u6570\u76ee="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mFileNum:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v17, v0

    sget-object v20, Lcom/netease/download/reporter/KeyConst;->KEY_FINISH:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    .line 201
    .end local v10    # "finishCount":I
    :catch_1
    move-exception v9

    .line 202
    .local v9, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_5
    const-string v17, "DownloadAllProxy"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "ExecutionException="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 209
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexhasResult:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexhasResult:I

    .line 211
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 212
    new-instance v6, Lcom/netease/download/downloadpart/DownloadAllCore;

    invoke-direct {v6}, Lcom/netease/download/downloadpart/DownloadAllCore;-><init>()V

    .line 213
    .restart local v6    # "downloadAllCore":Lcom/netease/download/downloadpart/DownloadAllCore;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/netease/download/downloader/DownloadParams;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/netease/download/downloadpart/DownloadAllCore;->init(Lcom/netease/download/downloader/DownloadParams;)V

    .line 214
    const-string v20, "DownloadAllProxy"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v21, "\u4e00\u5171\u6709"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v21, "\u4e2a\u6587\u4ef6\u9700\u8981\u4e0b\u8f7d\u3002 \u7b2c "

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v21, " \u4e2a\u5f00\u59cb\u4e0b\u8f7d, \u53c2\u6570="

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual/range {v17 .. v17}, Lcom/netease/download/downloader/DownloadParams;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mAl:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    goto/16 :goto_2

    .line 185
    .end local v6    # "downloadAllCore":Lcom/netease/download/downloadpart/DownloadAllCore;
    .end local v9    # "e":Ljava/util/concurrent/ExecutionException;
    :cond_b
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 204
    :catch_2
    move-exception v9

    .line 205
    .local v9, "e":Ljava/util/concurrent/CancellationException;
    :try_start_6
    const-string v17, "DownloadAllProxy"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "CancellationException="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 209
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexhasResult:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexhasResult:I

    .line 211
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 212
    new-instance v6, Lcom/netease/download/downloadpart/DownloadAllCore;

    invoke-direct {v6}, Lcom/netease/download/downloadpart/DownloadAllCore;-><init>()V

    .line 213
    .restart local v6    # "downloadAllCore":Lcom/netease/download/downloadpart/DownloadAllCore;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/netease/download/downloader/DownloadParams;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/netease/download/downloadpart/DownloadAllCore;->init(Lcom/netease/download/downloader/DownloadParams;)V

    .line 214
    const-string v20, "DownloadAllProxy"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v21, "\u4e00\u5171\u6709"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v21, "\u4e2a\u6587\u4ef6\u9700\u8981\u4e0b\u8f7d\u3002 \u7b2c "

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v21, " \u4e2a\u5f00\u59cb\u4e0b\u8f7d, \u53c2\u6570="

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual/range {v17 .. v17}, Lcom/netease/download/downloader/DownloadParams;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mAl:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    goto/16 :goto_2

    .line 207
    .end local v6    # "downloadAllCore":Lcom/netease/download/downloadpart/DownloadAllCore;
    .end local v9    # "e":Ljava/util/concurrent/CancellationException;
    :catchall_0
    move-exception v17

    move-object/from16 v20, v17

    .line 209
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexhasResult:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexhasResult:I

    .line 211
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_c

    .line 212
    new-instance v6, Lcom/netease/download/downloadpart/DownloadAllCore;

    invoke-direct {v6}, Lcom/netease/download/downloadpart/DownloadAllCore;-><init>()V

    .line 213
    .restart local v6    # "downloadAllCore":Lcom/netease/download/downloadpart/DownloadAllCore;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/netease/download/downloader/DownloadParams;

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/netease/download/downloadpart/DownloadAllCore;->init(Lcom/netease/download/downloader/DownloadParams;)V

    .line 214
    const-string v21, "DownloadAllProxy"

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v22, "\u4e00\u5171\u6709"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v22, "\u4e2a\u6587\u4ef6\u9700\u8981\u4e0b\u8f7d\u3002 \u7b2c "

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v22, " \u4e2a\u5f00\u59cb\u4e0b\u8f7d, \u53c2\u6570="

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mParamsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v23, v0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual/range {v17 .. v17}, Lcom/netease/download/downloader/DownloadParams;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mAl:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    move-object/from16 v0, p0

    iget v0, v0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/netease/download/downloadpart/DownloadAllProxy;->mIndexHasSubmit:I

    .line 218
    .end local v6    # "downloadAllCore":Lcom/netease/download/downloadpart/DownloadAllCore;
    :cond_c
    throw v20

    .line 318
    :cond_d
    const/16 v17, 0xc

    move/from16 v0, v17

    if-ne v0, v13, :cond_e

    .line 320
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v17

    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Lcom/netease/download/reporter/ReportInfo;->mStatus:I

    goto/16 :goto_3

    .line 323
    :cond_e
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v17

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v17

    iput v0, v1, Lcom/netease/download/reporter/ReportInfo;->mStatus:I

    goto/16 :goto_3
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 83
    const-string v0, "DownloadAllProxy"

    const-string v1, "DownloadAllProxy \u7ec8\u6b62\u7ebf\u7a0b\u6c60"

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllProxy;->mExs:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 87
    :cond_0
    return-void
.end method
