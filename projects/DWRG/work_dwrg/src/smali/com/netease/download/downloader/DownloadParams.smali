.class public Lcom/netease/download/downloader/DownloadParams;
.super Ljava/lang/Object;
.source "DownloadParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/download/downloader/DownloadParams$DownloadSegmentChannel;
    }
.end annotation


# static fields
.field private static final RANDOM:Ljava/util/Random;

.field private static final TAG:Ljava/lang/String; = "DownloadParams"


# instance fields
.field private mChannel:Ljava/lang/String;

.field private mCode:I

.field private mDownloadedSize:J

.field private mFileId:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mHttpdnsIp:Ljava/lang/String;

.field private mIdentifier:Ljava/lang/String;

.field private mIsPart:Z

.field private mIsUiCallback:Z

.field private mLocalPath:Ljava/lang/String;

.field private mMd5:Ljava/lang/String;

.field private mOriginPrefix:Ljava/lang/String;

.field private mPart:I

.field private mRenew:Z

.field private mSegmentEnd:J

.field private mSegmentStart:J

.field private mSize:J

.field private mTargetUrl:Ljava/lang/String;

.field private mTotalPart:I

.field private mTotalWeight:I

.field private mUrlPrefix:Ljava/lang/String;

.field private mUrlSuffix:Ljava/lang/String;

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 51
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/netease/download/downloader/DownloadParams;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput v1, p0, Lcom/netease/download/downloader/DownloadParams;->mPart:I

    .line 122
    const/4 v0, 0x1

    iput v0, p0, Lcom/netease/download/downloader/DownloadParams;->mTotalPart:I

    .line 127
    iput-wide v4, p0, Lcom/netease/download/downloader/DownloadParams;->mSegmentStart:J

    .line 132
    iput-wide v4, p0, Lcom/netease/download/downloader/DownloadParams;->mSegmentEnd:J

    .line 137
    iput v1, p0, Lcom/netease/download/downloader/DownloadParams;->mCode:I

    .line 175
    iput-object v2, p0, Lcom/netease/download/downloader/DownloadParams;->timer:Ljava/util/Timer;

    .line 177
    iput-object v2, p0, Lcom/netease/download/downloader/DownloadParams;->mChannel:Ljava/lang/String;

    .line 406
    return-void
.end method

.method private constructor <init>(Lcom/netease/download/downloader/DownloadParams;IJJLjava/lang/String;)V
    .locals 7
    .param p1, "pCopy"    # Lcom/netease/download/downloader/DownloadParams;
    .param p2, "pPart"    # I
    .param p3, "pStart"    # J
    .param p5, "pEnd"    # J
    .param p7, "pHost"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput v2, p0, Lcom/netease/download/downloader/DownloadParams;->mPart:I

    .line 122
    iput v3, p0, Lcom/netease/download/downloader/DownloadParams;->mTotalPart:I

    .line 127
    iput-wide v4, p0, Lcom/netease/download/downloader/DownloadParams;->mSegmentStart:J

    .line 132
    iput-wide v4, p0, Lcom/netease/download/downloader/DownloadParams;->mSegmentEnd:J

    .line 137
    iput v2, p0, Lcom/netease/download/downloader/DownloadParams;->mCode:I

    .line 175
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->timer:Ljava/util/Timer;

    .line 177
    iput-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mChannel:Ljava/lang/String;

    .line 596
    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->getUrlSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/DownloadParams;->setUrlSuffix(Ljava/lang/String;)V

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/DownloadParams;->setFilePath(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p0, v2}, Lcom/netease/download/downloader/DownloadParams;->setIsUiCallback(Z)V

    .line 599
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v0}, Lcom/netease/download/downloader/DownloadParams;->setPart(I)V

    .line 600
    invoke-virtual {p0, v3}, Lcom/netease/download/downloader/DownloadParams;->setIsParted(Z)V

    .line 601
    invoke-virtual {p0, p3, p4}, Lcom/netease/download/downloader/DownloadParams;->setSegmentStart(J)V

    .line 602
    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/DownloadParams;->setMd5(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->getFileId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/DownloadParams;->setFileId(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p0, p5, p6}, Lcom/netease/download/downloader/DownloadParams;->setSegmentEnd(J)V

    .line 605
    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->getOriginPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/DownloadParams;->setOriginPrefix(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->getTotalPart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/DownloadParams;->setTotalPart(I)V

    .line 607
    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->getUrlPrefix()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-static {v0, p7, v1}, Lcom/netease/download/util/StrUtil;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/DownloadParams;->setUrlPrefix(Ljava/lang/String;)V

    .line 608
    return-void
.end method

.method public static createParamsArray(Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/download/listener/DownloadListener;)Ljava/util/List;
    .locals 26
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "paramsJson"    # Lorg/json/JSONObject;
    .param p2, "pListener"    # Lcom/netease/download/listener/DownloadListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Lcom/netease/download/listener/DownloadListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/netease/download/downloader/DownloadParams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    const-string v22, "DownloadParams"

    const-string v23, "\u4e0b\u8f7d\u5668\u5f00\u59cb"

    invoke-static/range {v22 .. v23}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v22, "DownloadParams"

    const-string v23, "create params array"

    invoke-static/range {v22 .. v23}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    sget-boolean v22, Lcom/netease/download/downloader/DownloadProxy;->mIsStart:Z

    if-eqz v22, :cond_1

    .line 414
    const-string v22, "DownloadParams"

    const-string v23, "already start"

    invoke-static/range {v22 .. v23}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const/4 v13, 0x0

    .line 573
    :cond_0
    :goto_0
    return-object v13

    .line 418
    :cond_1
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getInstances()Lcom/netease/download/listener/DownloadListenerCore;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/netease/download/listener/DownloadListenerCore;->init(Lcom/netease/download/listener/DownloadListener;)V

    .line 419
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getInstances()Lcom/netease/download/listener/DownloadListenerCore;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/netease/download/listener/DownloadListenerCore;->clear()V

    .line 422
    invoke-static {}, Lcom/netease/download/reporter/ReportProxy;->getInstance()Lcom/netease/download/reporter/ReportProxy;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/netease/download/reporter/ReportProxy;->init(Landroid/content/Context;)V

    .line 423
    invoke-static {}, Lcom/netease/download/reporter/ReportProxy;->getInstance()Lcom/netease/download/reporter/ReportProxy;

    move-result-object v22

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/netease/download/reporter/ReportProxy;->setNeedDeleteFile(Z)V

    .line 424
    const-string v22, "DownloadParams"

    const-string v23, "DownloadParams [createParamsArray] \u4e0b\u8f7d\u524d\u671f\uff0c\u53d1\u9001\u65e5\u5fd7\uff08\u4e0a\u4e00\u6b21\u9057\u7559\u6587\u4ef6\uff09"

    invoke-static/range {v22 .. v23}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-static {}, Lcom/netease/download/reporter/ReportProxy;->getInstance()Lcom/netease/download/reporter/ReportProxy;

    move-result-object v22

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/netease/download/reporter/ReportProxy;->report(Landroid/content/Context;Z)V

    .line 427
    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns2/HttpdnsProxy;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/netease/download/httpdns2/HttpdnsProxy;->clean()V

    .line 428
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/netease/download/dns/CdnIpController;->clean()V

    .line 429
    invoke-static {}, Lcom/netease/download/check/CheckTime;->clean()V

    .line 430
    invoke-static {}, Lcom/netease/download/config2/Lvsip;->getInstance()Lcom/netease/download/config2/Lvsip;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/netease/download/config2/Lvsip;->clean()V

    .line 434
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v13, "list":Ljava/util/List;, "Ljava/util/List<Lcom/netease/download/downloader/DownloadParams;>;"
    if-eqz p1, :cond_0

    .line 443
    :try_start_0
    const-string v22, "type"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 453
    .local v21, "type":Ljava/lang/String;
    :goto_1
    const-string v22, "downloadid"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 454
    .local v8, "downloadId":Ljava/lang/String;
    const-string v22, "DownloadParams"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "downloadid ="

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_2

    const-string v22, "patch"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 457
    invoke-static {}, Lcom/netease/download/progress/ProgressProxy;->getInstances()Lcom/netease/download/progress/ProgressProxy;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/netease/download/progress/ProgressProxy;->init(Landroid/content/Context;)V

    .line 458
    invoke-static {}, Lcom/netease/download/progress/ProgressProxy;->getInstances()Lcom/netease/download/progress/ProgressProxy;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v8, v1}, Lcom/netease/download/progress/ProgressProxy;->getParentTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 460
    .local v15, "params":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 463
    :try_start_1
    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .end local p1    # "paramsJson":Lorg/json/JSONObject;
    .local v16, "paramsJson":Lorg/json/JSONObject;
    move-object/from16 p1, v16

    .line 472
    .end local v15    # "params":Ljava/lang/String;
    .end local v16    # "paramsJson":Lorg/json/JSONObject;
    .restart local p1    # "paramsJson":Lorg/json/JSONObject;
    :cond_2
    :goto_2
    const-string v22, "DownloadParams"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "\u4ece\u6301\u4e45\u5316\u4e2d\u83b7\u53d6\u6570\u636e\uff0c\u8f6c\u4e3ajson="

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const/4 v15, 0x0

    .line 475
    .local v15, "params":Lcom/netease/download/downloader/DownloadParams;
    const-wide/16 v4, 0x0

    .line 476
    .local v4, "allSize":J
    const-string v22, "downfile"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 478
    .local v6, "array":Lorg/json/JSONArray;
    if-eqz v6, :cond_3

    .line 479
    const/4 v7, 0x0

    .line 481
    .local v7, "downfile":Lorg/json/JSONObject;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v22

    move/from16 v0, v22

    if-lt v12, v0, :cond_4

    .line 559
    .end local v7    # "downfile":Lorg/json/JSONObject;
    .end local v12    # "i":I
    :cond_3
    const-string v22, "DownloadParams"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "allSize="

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5}, Lcom/netease/download/downloader/DownloadInitInfo;->setAllSize(J)V

    .line 561
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iput-wide v4, v0, Lcom/netease/download/reporter/ReportInfo;->mTotalSize:J

    .line 563
    const-string v22, "DownloadParams"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "\u6240\u6709\u6587\u4ef6\u603b\u5927\u5c0f="

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    move-object v14, v13

    .line 567
    .local v14, "pList":Ljava/util/List;, "Ljava/util/List<Lcom/netease/download/downloader/DownloadParams;>;"
    invoke-static {}, Lcom/netease/download/progress/ProgressProxy;->getInstances()Lcom/netease/download/progress/ProgressProxy;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Lcom/netease/download/progress/ProgressProxy;->getDownloadedSize(Ljava/util/List;)I

    move-result v22

    move/from16 v0, v22

    int-to-long v10, v0

    .line 568
    .local v10, "downloadedSize":J
    const-string v22, "DownloadParams"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "\u5df2\u7ecf\u4e0b\u8f7d\u597d\u7684\u603b\u5927\u5c0f\u4e3a="

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/netease/download/reporter/ReportInfo;->mDlSize:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v22, v0

    sget-object v23, Lcom/netease/download/reporter/KeyConst;->KEY_OVERALL:Ljava/lang/String;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 444
    .end local v4    # "allSize":J
    .end local v6    # "array":Lorg/json/JSONArray;
    .end local v8    # "downloadId":Ljava/lang/String;
    .end local v10    # "downloadedSize":J
    .end local v14    # "pList":Ljava/util/List;, "Ljava/util/List<Lcom/netease/download/downloader/DownloadParams;>;"
    .end local v15    # "params":Lcom/netease/download/downloader/DownloadParams;
    .end local v21    # "type":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 446
    .local v9, "e":Ljava/lang/NumberFormatException;
    const-string v21, "error"

    .restart local v21    # "type":Ljava/lang/String;
    goto/16 :goto_1

    .line 465
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .restart local v8    # "downloadId":Ljava/lang/String;
    .local v15, "params":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 467
    .local v9, "e":Lorg/json/JSONException;
    const-string v22, "DownloadParams"

    const-string v23, "\u6301\u4e45\u5316\u6570\u636e\u4e2d\u83b7\u53d6\u7236\u4efb\u52a1\u5931\u8d25\uff0c\u9009\u7528\u4f20\u5165\u53c2\u6570\u4e2d\u7684\u4efb\u52a1\u53c2\u6570\u8fdb\u884c\u6b64\u6b21\u4e0b\u8f7d"

    invoke-static/range {v22 .. v23}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 482
    .end local v9    # "e":Lorg/json/JSONException;
    .restart local v4    # "allSize":J
    .restart local v6    # "array":Lorg/json/JSONArray;
    .restart local v7    # "downfile":Lorg/json/JSONObject;
    .restart local v12    # "i":I
    .local v15, "params":Lcom/netease/download/downloader/DownloadParams;
    :cond_4
    new-instance v15, Lcom/netease/download/downloader/DownloadParams;

    .end local v15    # "params":Lcom/netease/download/downloader/DownloadParams;
    invoke-direct {v15}, Lcom/netease/download/downloader/DownloadParams;-><init>()V

    .line 484
    .restart local v15    # "params":Lcom/netease/download/downloader/DownloadParams;
    const/16 v17, 0x3

    .line 488
    .local v17, "threadnum":I
    :try_start_2
    const-string v22, "threadnum"

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 490
    .local v20, "threadnumString":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_5

    .line 491
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v17

    .line 498
    .end local v20    # "threadnumString":Ljava/lang/String;
    :cond_5
    :goto_4
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/netease/download/downloader/DownloadParams;->setIsParted(Z)V

    .line 501
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/netease/download/downloader/DownloadParams;->setIsUiCallback(Z)V

    .line 504
    :try_start_3
    invoke-virtual {v6, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v7

    .line 511
    :goto_5
    if-eqz v7, :cond_6

    .line 512
    const-string v22, "targeturl"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/netease/download/downloader/DownloadParams;->setTargetUrl(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v15}, Lcom/netease/download/downloader/DownloadParams;->getTargetUrl()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/netease/download/util/StrUtil;->getCdnChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/netease/download/downloader/DownloadParams;->setmChannel(Ljava/lang/String;)V

    .line 515
    const-string v22, "filepath"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/netease/download/downloader/DownloadParams;->setFilePath(Ljava/lang/String;)V

    .line 516
    const-string v22, "targeturl"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/netease/download/util/StrUtil;->getSuffixFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/netease/download/downloader/DownloadParams;->setUrlSuffix(Ljava/lang/String;)V

    .line 517
    const-string v22, "targeturl"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/netease/download/util/StrUtil;->getPrefixFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/netease/download/downloader/DownloadParams;->setOriginPrefix(Ljava/lang/String;)V

    .line 518
    const-string v22, "targeturl"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/netease/download/util/StrUtil;->getPrefixFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/netease/download/downloader/DownloadParams;->setUrlPrefix(Ljava/lang/String;)V

    .line 521
    const-string v22, "first"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    const-string v22, "last"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 522
    const-string v22, "DownloadParams"

    const-string v23, "\u53c2\u6570\u9009\u62e9first last\u65b9\u5f0f\uff0c\u5ffd\u7565size\u5b57\u6bb5"

    invoke-static/range {v22 .. v23}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    :try_start_4
    const-string v22, "first"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v15, v0, v1}, Lcom/netease/download/downloader/DownloadParams;->setSegmentStart(J)V

    .line 526
    const-string v22, "last"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-virtual {v15, v0, v1}, Lcom/netease/download/downloader/DownloadParams;->setSegmentEnd(J)V

    .line 527
    invoke-virtual {v15}, Lcom/netease/download/downloader/DownloadParams;->getSegmentEnd()J

    move-result-wide v22

    invoke-virtual {v15}, Lcom/netease/download/downloader/DownloadParams;->getSegmentStart()J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result-wide v24

    sub-long v18, v22, v24

    .line 545
    .local v18, "size":J
    :goto_6
    add-long v4, v4, v18

    .line 546
    const-string v22, "DownloadParams"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "\u6700\u7ec8\u7684size\u4e3a="

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", \u5934\u90e8="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v15}, Lcom/netease/download/downloader/DownloadParams;->getSegmentStart()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", \u5c3e\u90e8="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v15}, Lcom/netease/download/downloader/DownloadParams;->getSegmentEnd()J

    move-result-wide v24

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Lcom/netease/download/downloader/DownloadParams;->setSize(J)V

    .line 548
    const-string v22, "md5"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/netease/download/downloader/DownloadParams;->setMd5(Ljava/lang/String;)V

    .line 550
    const-string v22, "list"

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 554
    .end local v18    # "size":J
    :cond_6
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/netease/download/downloader/DownloadParams;->hashCode()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Lcom/netease/download/downloader/DownloadParams;->setFileId(Ljava/lang/String;)V

    .line 555
    const-string v22, "DownloadParams"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "params="

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/netease/download/downloader/DownloadParams;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-interface {v13, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 494
    :catch_2
    move-exception v9

    .line 495
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 506
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    .line 508
    .local v9, "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_5

    .line 529
    .end local v9    # "e":Lorg/json/JSONException;
    :catch_4
    move-exception v9

    .line 531
    .local v9, "e":Ljava/lang/Exception;
    const-wide/16 v18, -0x64

    .line 534
    .restart local v18    # "size":J
    goto/16 :goto_6

    .line 535
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v18    # "size":J
    :cond_7
    const-string v22, "DownloadParams"

    const-string v23, "\u53c2\u6570\u9009\u62e9size\u65b9\u5f0f\uff0c\u5ffd\u7565first last\u5b57\u6bb5"

    invoke-static/range {v22 .. v23}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :try_start_5
    const-string v22, "size"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .restart local v18    # "size":J
    goto/16 :goto_6

    .line 540
    .end local v18    # "size":J
    :catch_5
    move-exception v9

    .line 542
    .local v9, "e":Ljava/lang/NumberFormatException;
    const-wide/16 v18, -0x64

    .restart local v18    # "size":J
    goto/16 :goto_6
.end method

.method private getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/download/downloader/DownloadParams;->mUrlPrefix:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/netease/download/downloader/DownloadParams;->mUrlPrefix:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/netease/download/downloader/DownloadParams;->mUrlSuffix:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/netease/download/downloader/DownloadParams;->mUrlSuffix:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/netease/download/downloader/DownloadParams;->mUrlSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private setPart(I)V
    .locals 0
    .param p1, "mPart"    # I

    .prologue
    .line 333
    iput p1, p0, Lcom/netease/download/downloader/DownloadParams;->mPart:I

    .line 334
    return-void
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 632
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 353
    iget v0, p0, Lcom/netease/download/downloader/DownloadParams;->mCode:I

    return v0
.end method

.method public getDomainFromUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/netease/download/downloader/DownloadParams;->getOriginPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/download/util/StrUtil;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mHttpdnsIp:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/netease/download/downloader/DownloadParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 226
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/netease/download/downloader/DownloadParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/download/downloader/DownloadParams;->mHttpdnsIp:Ljava/lang/String;

    const-string v2, "/"

    invoke-static {v0, v1, v2}, Lcom/netease/download/util/StrUtil;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDownloadUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/netease/download/downloader/DownloadParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-static {v0, p1, v1}, Lcom/netease/download/util/StrUtil;->replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadedSize()J
    .locals 2

    .prologue
    .line 271
    iget-wide v0, p0, Lcom/netease/download/downloader/DownloadParams;->mDownloadedSize:J

    return-wide v0
.end method

.method public getFileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mFileId:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mMd5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    const-string v0, "12345678"

    iput-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mMd5:Ljava/lang/String;

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mOriginPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getPart()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/netease/download/downloader/DownloadParams;->mPart:I

    return v0
.end method

.method public getSegmentEnd()J
    .locals 2

    .prologue
    .line 313
    iget-wide v0, p0, Lcom/netease/download/downloader/DownloadParams;->mSegmentEnd:J

    return-wide v0
.end method

.method public getSegmentStart()J
    .locals 2

    .prologue
    .line 321
    iget-wide v0, p0, Lcom/netease/download/downloader/DownloadParams;->mSegmentStart:J

    return-wide v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 263
    iget-wide v0, p0, Lcom/netease/download/downloader/DownloadParams;->mSize:J

    return-wide v0
.end method

.method public getTargetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mTargetUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalPart()I
    .locals 1

    .prologue
    .line 349
    iget v0, p0, Lcom/netease/download/downloader/DownloadParams;->mTotalPart:I

    return v0
.end method

.method public getUrlPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mUrlPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mUrlSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getmChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mChannel:Ljava/lang/String;

    return-object v0
.end method

.method public getmHttpdnsIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/netease/download/downloader/DownloadParams;->mHttpdnsIp:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 613
    invoke-virtual {p0}, Lcom/netease/download/downloader/DownloadParams;->getCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 614
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/netease/download/downloader/DownloadParams;->getUrlSuffix()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/netease/download/util/HashUtil;->getCrc([Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/DownloadParams;->setCode(I)V

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ad-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/download/downloader/DownloadParams;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/download/downloader/DownloadParams;->setIdentifier(Ljava/lang/String;)V

    .line 618
    :cond_0
    invoke-virtual {p0}, Lcom/netease/download/downloader/DownloadParams;->getCode()I

    move-result v0

    return v0
.end method

.method public isParted()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/netease/download/downloader/DownloadParams;->mIsPart:Z

    return v0
.end method

.method isUiCallback()Z
    .locals 1

    .prologue
    .line 298
    iget-boolean v0, p0, Lcom/netease/download/downloader/DownloadParams;->mIsUiCallback:Z

    return v0
.end method

.method public isValid()Z
    .locals 3

    .prologue
    .line 306
    const-string v0, "DownloadParams"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "TextUtils.isEmpty(getUrlSuffix()="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/download/downloader/DownloadParams;->getUrlSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 307
    const-string v2, ", TextUtils.isEmpty(getFilePath())="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lcom/netease/download/downloader/DownloadParams;->getUrlSuffix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public produceSegment(IJJLjava/lang/String;)Lcom/netease/download/downloader/DownloadParams;
    .locals 10
    .param p1, "pPart"    # I
    .param p2, "pStart"    # J
    .param p4, "pEnd"    # J
    .param p6, "pHost"    # Ljava/lang/String;

    .prologue
    .line 402
    new-instance v1, Lcom/netease/download/downloader/DownloadParams;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/netease/download/downloader/DownloadParams;-><init>(Lcom/netease/download/downloader/DownloadParams;IJJLjava/lang/String;)V

    return-object v1
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "pCode"    # I

    .prologue
    .line 357
    iput p1, p0, Lcom/netease/download/downloader/DownloadParams;->mCode:I

    .line 358
    return-void
.end method

.method public setConfigParam(Lcom/netease/download/config2/ConfigParams2;)V
    .locals 0
    .param p1, "pCachedConfigParam"    # Lcom/netease/download/config2/ConfigParams2;

    .prologue
    .line 579
    return-void
.end method

.method public setDownloadedSize(J)V
    .locals 1
    .param p1, "pDownloadedSize"    # J

    .prologue
    .line 275
    iput-wide p1, p0, Lcom/netease/download/downloader/DownloadParams;->mDownloadedSize:J

    .line 276
    return-void
.end method

.method public setFileId(Ljava/lang/String;)V
    .locals 0
    .param p1, "mFileId"    # Ljava/lang/String;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams;->mFileId:Ljava/lang/String;

    .line 375
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "mFilePath"    # Ljava/lang/String;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams;->mLocalPath:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "mHost"    # Ljava/lang/String;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams;->mHost:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0
    .param p1, "mIdentifier"    # Ljava/lang/String;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams;->mIdentifier:Ljava/lang/String;

    .line 367
    return-void
.end method

.method public setIsParted(Z)V
    .locals 0
    .param p1, "isPart"    # Z

    .prologue
    .line 345
    iput-boolean p1, p0, Lcom/netease/download/downloader/DownloadParams;->mIsPart:Z

    .line 346
    return-void
.end method

.method public setIsUiCallback(Z)V
    .locals 0
    .param p1, "mIsUiCallback"    # Z

    .prologue
    .line 302
    iput-boolean p1, p0, Lcom/netease/download/downloader/DownloadParams;->mIsUiCallback:Z

    .line 303
    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0
    .param p1, "pMd5"    # Ljava/lang/String;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams;->mMd5:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public setOriginPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "pPrefix"    # Ljava/lang/String;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams;->mOriginPrefix:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setSegmentEnd(J)V
    .locals 1
    .param p1, "mSegmentEnd"    # J

    .prologue
    .line 317
    iput-wide p1, p0, Lcom/netease/download/downloader/DownloadParams;->mSegmentEnd:J

    .line 318
    return-void
.end method

.method public setSegmentStart(J)V
    .locals 1
    .param p1, "mSegmentStart"    # J

    .prologue
    .line 325
    iput-wide p1, p0, Lcom/netease/download/downloader/DownloadParams;->mSegmentStart:J

    .line 326
    return-void
.end method

.method public setSize(J)V
    .locals 1
    .param p1, "pSize"    # J

    .prologue
    .line 267
    iput-wide p1, p0, Lcom/netease/download/downloader/DownloadParams;->mSize:J

    .line 268
    return-void
.end method

.method public setTargetUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "mTargetUrl"    # Ljava/lang/String;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams;->mTargetUrl:Ljava/lang/String;

    .line 383
    return-void
.end method

.method public setTotalPart(I)V
    .locals 0
    .param p1, "total"    # I

    .prologue
    .line 329
    iput p1, p0, Lcom/netease/download/downloader/DownloadParams;->mTotalPart:I

    .line 330
    return-void
.end method

.method public setTotalWeight(I)V
    .locals 0
    .param p1, "pTotalWeight"    # I

    .prologue
    .line 190
    iput p1, p0, Lcom/netease/download/downloader/DownloadParams;->mTotalWeight:I

    .line 191
    return-void
.end method

.method public setUrlPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "mUrl"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams;->mUrlPrefix:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setUrlSuffix(Ljava/lang/String;)V
    .locals 0
    .param p1, "pSuffix"    # Ljava/lang/String;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams;->mUrlSuffix:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setmChannel(Ljava/lang/String;)V
    .locals 0
    .param p1, "mChannel"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams;->mChannel:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setmHttpdnsIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "mHttpdnsIp"    # Ljava/lang/String;

    .prologue
    .line 398
    iput-object p1, p0, Lcom/netease/download/downloader/DownloadParams;->mHttpdnsIp:Ljava/lang/String;

    .line 399
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DownloadParams{mUrlPrefix=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/download/downloader/DownloadParams;->mUrlPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOriginPrefix=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/download/downloader/DownloadParams;->mOriginPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mChannel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/download/downloader/DownloadParams;->mChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 624
    const-string v1, ", mUrlSuffix=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/download/downloader/DownloadParams;->mUrlSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocalPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/download/downloader/DownloadParams;->mLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMd5=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/download/downloader/DownloadParams;->mMd5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 625
    const-string v1, ", mSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netease/download/downloader/DownloadParams;->mSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDownloadedSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netease/download/downloader/DownloadParams;->mDownloadedSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRenew="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netease/download/downloader/DownloadParams;->mRenew:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsUiCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netease/download/downloader/DownloadParams;->mIsUiCallback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netease/download/downloader/DownloadParams;->mPart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTotalPart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netease/download/downloader/DownloadParams;->mTotalPart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/download/downloader/DownloadParams;->mFileId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 626
    const-string v1, ", mSegmentStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netease/download/downloader/DownloadParams;->mSegmentStart:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSegmentEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/netease/download/downloader/DownloadParams;->mSegmentEnd:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netease/download/downloader/DownloadParams;->mCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 627
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIdentifier=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/download/downloader/DownloadParams;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 628
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 623
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
