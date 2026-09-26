.class public Lcom/netease/download/downloadpart/DownloadAllCore;
.super Ljava/lang/Object;
.source "DownloadAllCore.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadAllCore"

.field private static mUseTime:J


# instance fields
.field private mCheckTime:Lcom/netease/download/check/CheckTime;

.field private mCode:I

.field private mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

.field private mHost:Ljava/lang/String;

.field private mLogData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMd5FailRetryDownloadCount:I

.field private mPartParams:[Lcom/netease/download/downloader/DownloadParams;

.field private mRetry:I

.field private mTotalFileSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/netease/download/downloadpart/DownloadAllCore;->mUseTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    .line 79
    iput-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mHost:Ljava/lang/String;

    .line 81
    const/4 v0, 0x3

    iput v0, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mRetry:I

    .line 82
    const/4 v0, 0x2

    iput v0, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mMd5FailRetryDownloadCount:I

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mLogData:Ljava/util/HashMap;

    .line 71
    return-void
.end method

.method static synthetic access$1(Lcom/netease/download/downloadpart/DownloadAllCore;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/netease/download/downloadpart/DownloadAllCore;Ljava/util/Map;)J
    .locals 2

    .prologue
    .line 603
    invoke-direct {p0, p1}, Lcom/netease/download/downloadpart/DownloadAllCore;->getContentLength(Ljava/util/Map;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3(Lcom/netease/download/downloadpart/DownloadAllCore;J)V
    .locals 1

    .prologue
    .line 635
    invoke-direct {p0, p1, p2}, Lcom/netease/download/downloadpart/DownloadAllCore;->setTotalFileSize(J)V

    return-void
.end method

.method private delFiles()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 792
    const/4 v1, 0x1

    .line 794
    .local v1, "result":Z
    invoke-direct {p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getPartParams()[Lcom/netease/download/downloader/DownloadParams;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_0
    if-lt v4, v6, :cond_0

    .line 799
    return v1

    .line 794
    :cond_0
    aget-object v0, v5, v4

    .line 795
    .local v0, "param":Lcom/netease/download/downloader/DownloadParams;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 796
    .local v2, "tmpFile":Ljava/io/File;
    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 794
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    .line 796
    goto :goto_1
.end method

.method private download_core(Lcom/netease/download/downloader/DownloadParams;Lcom/netease/download/Const$Stage;I)I
    .locals 40
    .param p1, "pParams"    # Lcom/netease/download/downloader/DownloadParams;
    .param p2, "pStage"    # Lcom/netease/download/Const$Stage;
    .param p3, "type"    # I

    .prologue
    .line 235
    const-string v5, "\u4e0b\u8f7d"

    invoke-static {v5}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadAllCore;->mLogData:Ljava/util/HashMap;

    const-string v6, "filetype"

    const-string v7, "UDT"

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->isValid()Z

    move-result v5

    if-nez v5, :cond_2

    .line 239
    :cond_0
    const-string v5, "DownloadAllCore"

    const-string v6, "invalid download params"

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/16 v27, 0xe

    .line 599
    :cond_1
    :goto_0
    return v27

    .line 243
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->hashCode()I

    move-result v4

    .line 244
    .local v4, "code":I
    const-string v5, "DownloadAllCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "download params("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/netease/download/downloadpart/DownloadAllCore;->mCode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pStage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", code="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/network/NetController;->isInterrupted()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 247
    const-string v5, "DownloadAllCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u7f51\u7edc\u5f02\u5e38="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/network/NetController;->getInterruptedCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/16 v5, 0xd

    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/network/NetController;->getInterruptedCode()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 250
    const/16 v27, 0xd

    goto :goto_0

    .line 253
    :cond_3
    const/16 v5, 0xc

    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/network/NetController;->getInterruptedCode()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 254
    const/16 v27, 0xc

    goto/16 :goto_0

    .line 262
    :cond_4
    const/16 v22, 0x0

    .line 263
    .local v22, "md5":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v12, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 264
    .local v12, "dlFile":Ljava/io/File;
    const-string v5, "DownloadAllCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u914d\u7f6e\u6587\u4ef6\u540d\u5b57="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 268
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v26

    .line 269
    .local v26, "passMd5":Ljava/lang/String;
    const-string v5, "NotMD5"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 271
    const-string v5, "DownloadAllCore"

    const-string v6, "\u6587\u4ef6\u5df2\u7ecf\u5b58\u5728\uff0c\u4e14\u6587\u4ef6\u5927\u5c0f\u548cmd5\u90fd\u662f\u5bf9\u7684\uff0c\u76f4\u63a5\u8fd4\u56de\u6210\u529f"

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 275
    :cond_5
    const-string v5, "MD5"

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/HashUtil;->calculateHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 276
    const-string v5, "MD5"

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/HashUtil;->calculateHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 277
    .local v23, "md55":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSize()J

    move-result-wide v28

    .line 280
    .local v28, "passSize":J
    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 282
    const-string v5, "DownloadAllCore"

    const-string v6, "\u6587\u4ef6\u5df2\u7ecf\u5b58\u5728\uff0c\u4e14\u6587\u4ef6\u5927\u5c0f\u548cmd5\u90fd\u662f\u5bf9\u7684\uff0c\u76f4\u63a5\u8fd4\u56de\u6210\u529f"

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    const/16 v27, 0x0

    goto/16 :goto_0

    .line 287
    :cond_6
    const-string v5, "DownloadAllCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "md5="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", md55="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pParams.getFilePath()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", dlFile.getAbsolutePath()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v5, "DownloadAllCore"

    const-string v6, "\u6587\u4ef6\u5b58\u5728\uff0c\u4f46\u662fmd5\u662f\u9519\u7684\uff0c\u5220\u9664\u6587\u4ef6"

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const/16 p3, 0x3

    .line 290
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 297
    .end local v23    # "md55":Ljava/lang/String;
    .end local v26    # "passMd5":Ljava/lang/String;
    .end local v28    # "passSize":J
    :cond_7
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/netease/download/downloadpart/DownloadAllCore;->setTotalFileSize(J)V

    .line 299
    invoke-static {}, Lcom/netease/download/config2/ConfigParams2;->getInstance()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v11

    .line 301
    .local v11, "configParams2":Lcom/netease/download/config2/ConfigParams2;
    const-string v5, "DownloadAllCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "file type="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/downloader/DownloadInitInfo;->getmType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance v17, Lcom/netease/download/downloadpart/DownloadAllCore$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v4, v2}, Lcom/netease/download/downloadpart/DownloadAllCore$1;-><init>(Lcom/netease/download/downloadpart/DownloadAllCore;ILcom/netease/download/downloader/DownloadParams;)V

    .line 375
    .local v17, "getSizeDealer":Lcom/netease/download/network/NetworkDealer;, "Lcom/netease/download/network/NetworkDealer<Ljava/lang/Boolean;>;"
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 376
    .local v18, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "Host"

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getDomainFromUrl()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getDownloadUrl()Ljava/lang/String;

    move-result-object v15

    .line 379
    .local v15, "downloadUrl":Ljava/lang/String;
    invoke-static {v15}, Lcom/netease/download/util/StrUtil;->isIpAddrDomain(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 380
    const-string v5, "DownloadAllCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u53c2\u6570\u8bbe\u7f6e\u7684host="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v5, "Host"

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getHost()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_8
    const/16 v27, 0x1

    .line 387
    .local v27, "reqCode":I
    const/16 v19, 0x0

    .line 390
    .local v19, "host":Ljava/lang/String;
    const/16 v21, 0x0

    .line 392
    .local v21, "ip":Ljava/lang/String;
    const-wide/16 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSegmentStart()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-ltz v5, :cond_9

    const-wide/16 v6, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSegmentEnd()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gez v5, :cond_16

    .line 393
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSize()J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7}, Lcom/netease/download/downloadpart/DownloadAllCore;->setTotalFileSize(J)V

    .line 511
    :cond_a
    const-string v5, "DownloadAllCore"

    const-string v6, "\u5206\u7247\u4e0b\u8f7d\u5f00\u59cb"

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/netease/download/dns/CdnIpController;->getCdnCount(Ljava/lang/String;)I

    move-result v35

    .line 514
    .local v35, "totalPart":I
    if-nez v35, :cond_b

    .line 515
    const/4 v5, 0x1

    invoke-virtual {v11}, Lcom/netease/download/config2/ConfigParams2;->getCndArray()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 518
    :cond_b
    const-string v5, "DownloadAllCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u4e0b\u8f7d\u7ebf\u7a0b\u6570="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getTotalFileSize()J

    move-result-wide v6

    invoke-virtual {v11}, Lcom/netease/download/config2/ConfigParams2;->getSplitThreshold()I

    move-result v5

    mul-int/lit16 v5, v5, 0x400

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-gtz v5, :cond_c

    .line 523
    const-string v5, "DownloadAllCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getTotalFileSize()="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getTotalFileSize()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", configParams.getSplitThreshold()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v11}, Lcom/netease/download/config2/ConfigParams2;->getSplitThreshold()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pStage"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/netease/download/Const$Stage;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const/16 v35, 0x1

    .line 527
    :cond_c
    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/netease/download/downloader/DownloadParams;->setTotalPart(I)V

    .line 529
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u5206\u7247\u5927\u5c0f\u5212\u5206, \u5c06\u8981\u4e0b\u8f7d\u7684\u5927\u5c0f="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getTotalFileSize()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getTotalFileSize()J

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v7}, Lcom/netease/download/downloadpart/DownloadAllCore;->produceSegmentParams(Lcom/netease/download/downloader/DownloadParams;J)[Lcom/netease/download/downloader/DownloadParams;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/netease/download/downloadpart/DownloadAllCore;->setPartParams([Lcom/netease/download/downloader/DownloadParams;)V

    .line 533
    const-string v5, "DownloadAllCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u53c2\u6570\u4e2a\u6570="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getPartParams()[Lcom/netease/download/downloader/DownloadParams;

    move-result-object v7

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-direct/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getPartParams()[Lcom/netease/download/downloader/DownloadParams;

    move-result-object v5

    if-nez v5, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getPartParams()[Lcom/netease/download/downloader/DownloadParams;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_e

    .line 537
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getPartParams()[Lcom/netease/download/downloader/DownloadParams;

    move-result-object v6

    array-length v7, v6

    const/4 v5, 0x0

    :goto_1
    if-lt v5, v7, :cond_24

    .line 543
    :cond_e
    invoke-static {}, Lcom/netease/download/check/CheckTime;->newInstance()Lcom/netease/download/check/CheckTime;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/netease/download/downloadpart/DownloadAllCore;->mCheckTime:Lcom/netease/download/check/CheckTime;

    .line 544
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sput-wide v6, Lcom/netease/download/downloadpart/DownloadAllCore;->mUseTime:J

    .line 545
    const/16 v31, 0x0

    .line 548
    .local v31, "resultCode":I
    new-instance v13, Lcom/netease/download/downloadpart/DonwonloadPartProxy;

    invoke-direct {v13}, Lcom/netease/download/downloadpart/DonwonloadPartProxy;-><init>()V

    .line 549
    .local v13, "donwonloadPartProxy":Lcom/netease/download/downloadpart/DonwonloadPartProxy;
    invoke-direct/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getPartParams()[Lcom/netease/download/downloader/DownloadParams;

    move-result-object v5

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v13, v5, v0, v1}, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->init([Lcom/netease/download/downloader/DownloadParams;Lcom/netease/download/Const$Stage;I)V

    .line 550
    invoke-virtual {v13}, Lcom/netease/download/downloadpart/DonwonloadPartProxy;->start()I

    move-result v31

    .line 552
    const-string v5, "DownloadAllCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u4e0b\u8f7d\u8017\u65f6="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-wide v38, Lcom/netease/download/downloadpart/DownloadAllCore;->mUseTime:J

    sub-long v8, v8, v38

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", \u6587\u4ef6\u540d\u5b57="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getUrlSuffix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", \u56de\u8c03\u7ed3\u679c="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadAllCore;->mCheckTime:Lcom/netease/download/check/CheckTime;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSize()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/netease/download/check/CheckTime;->mark(J)V

    .line 554
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadAllCore;->mCheckTime:Lcom/netease/download/check/CheckTime;

    invoke-virtual {v5}, Lcom/netease/download/check/CheckTime;->calculate()Lcom/netease/download/check/CheckTime;

    .line 557
    const/16 v25, 0x0

    .line 559
    .local v25, "mergeResult":Z
    if-nez v31, :cond_f

    .line 560
    const-string v5, "\u5408\u5e76\u6587\u4ef6"

    invoke-static {v5}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 561
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/netease/download/downloadpart/DownloadAllCore;->mergeFiles(Ljava/io/File;)Z

    move-result v25

    .line 564
    :cond_f
    if-eqz v25, :cond_10

    .line 565
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u8ba1\u7b97\u5408\u5e76\u6587\u4ef6\u7684md5,\u5408\u5e76\u540e\u7684\u6587\u4ef6\u8def\u5f84="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 566
    const-string v5, "MD5"

    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/HashUtil;->calculateHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 567
    const-string v5, "DownloadAllCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u63a5\u5165\u65b9\u4f20\u5165\u7684md5="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", \u6700\u540e\u5408\u5e76\u6587\u4ef6\u7684md5="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", \u6700\u540e\u5408\u5e76\u6587\u4ef6\u7684\u5927\u5c0f="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-static {}, Lcom/netease/download/util/SpUtil;->getInstance()Lcom/netease/download/util/SpUtil;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "md5"

    const/4 v8, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v5, v6, v7, v0, v8}, Lcom/netease/download/util/SpUtil;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 573
    invoke-static {}, Lcom/netease/download/util/SpUtil;->getInstance()Lcom/netease/download/util/SpUtil;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/netease/download/util/SpUtil;->setLong(Ljava/lang/Object;Ljava/lang/String;JZ)V

    .line 574
    invoke-direct/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->delFiles()Z

    .line 577
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_25

    const-string v5, "NotMD5"

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25

    if-eqz v22, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25

    :cond_11
    const/16 v24, 0x0

    .line 581
    .local v24, "md5Correct":Z
    :goto_2
    const-string v5, "DownloadAllCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u6587\u4ef6md5\u662f\u5426\u6b63\u786e="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    if-nez v31, :cond_12

    if-nez v24, :cond_12

    .line 584
    const/16 v31, 0x3

    .line 588
    :cond_12
    sget-object v5, Lcom/netease/download/Const$Stage;->NORMAL:Lcom/netease/download/Const$Stage;

    move-object/from16 v0, p2

    if-eq v5, v0, :cond_13

    sget-object v5, Lcom/netease/download/Const$Stage;->RE_DOWNLOAD:Lcom/netease/download/Const$Stage;

    move-object/from16 v0, p2

    if-ne v5, v0, :cond_14

    .line 589
    :cond_13
    const-string v5, "DownloadAllCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onfinish sendFinishMsg md5555="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :cond_14
    const-string v5, "DownloadAllCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "final download result="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-static {}, Lcom/netease/download/handler/Dispatcher;->getTaskParamsMap()Ljava/util/Map;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getFileId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/netease/download/downloader/TaskParams;

    .line 595
    .local v34, "task":Lcom/netease/download/downloader/TaskParams;
    if-eqz v34, :cond_15

    .line 596
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadAllCore;->mCheckTime:Lcom/netease/download/check/CheckTime;

    invoke-virtual {v5}, Lcom/netease/download/check/CheckTime;->getAverageSpeed()J

    move-result-wide v6

    long-to-double v6, v6

    move-object/from16 v0, v34

    invoke-virtual {v0, v6, v7}, Lcom/netease/download/downloader/TaskParams;->setPatchDlspeed(D)V

    :cond_15
    move/from16 v27, v31

    .line 599
    goto/16 :goto_0

    .line 400
    .end local v13    # "donwonloadPartProxy":Lcom/netease/download/downloadpart/DonwonloadPartProxy;
    .end local v24    # "md5Correct":Z
    .end local v25    # "mergeResult":Z
    .end local v31    # "resultCode":I
    .end local v34    # "task":Lcom/netease/download/downloader/TaskParams;
    .end local v35    # "totalPart":I
    :cond_16
    :try_start_0
    const-string v5, "\u83b7\u53d6\u6587\u4ef6\u5927\u5c0f"

    invoke-static {v5}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 401
    const-string v5, "DownloadAllCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u83b7\u53d6\u5927\u5c0f\uff0c\u8bf7\u6c42\u7684header \u8bf7\u6c42\u94fe\u63a5="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getDownloadUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const/16 v36, 0x0

    .line 409
    .local v36, "unit":Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/netease/download/dns/CdnIpController;->hasNextUnit(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 410
    const-string v5, "DownloadAllCore"

    const-string v6, "\u5207\u6362\u4e0b\u4e00\u4e2ahost"

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/netease/download/dns/CdnIpController;->nextUnit(Ljava/lang/String;)Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;

    move-result-object v36

    .line 414
    :cond_17
    if-eqz v36, :cond_18

    .line 415
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mDomain:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 417
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/netease/download/dns/CdnIpController;->hasNextIp(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 418
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/netease/download/dns/CdnIpController;->nextIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 419
    const-string v5, "DownloadAllCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u4e0b\u8f7d\u6587\u4ef6\u5927\u5c0f\u7684\u57df\u540d host="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ip="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pParams.getDownloadUrl()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/netease/download/downloader/DownloadParams;->getDownloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v5, "Host"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/netease/download/downloadpart/DownloadAllCore;->mHost:Ljava/lang/String;

    .line 422
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/netease/download/downloader/DownloadParams;->getDownloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "GET"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v5, v6, v7, v0, v1}, Lcom/netease/download/network/NetUtil;->doHttpReq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/netease/download/network/NetworkDealer;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v27

    .line 430
    .end local v36    # "unit":Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;
    :cond_18
    :goto_3
    const-string v5, "DownloadAllCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u83b7\u53d6\u6587\u4ef6\u5927\u5c0f\u7684\u8fd4\u56de\u7801="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getTotalFileSize()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/netease/download/storage/StorageUtil;->canStore(Ljava/lang/String;J)Z

    move-result v33

    .line 435
    .local v33, "spaceEnough":Z
    if-nez v33, :cond_19

    .line 436
    const-string v5, "DownloadAllCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onfinish SpaceNotEnough md5="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const/16 v27, 0x5

    goto/16 :goto_0

    .line 426
    .end local v33    # "spaceEnough":Z
    :catch_0
    move-exception v16

    .line 427
    .local v16, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 440
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v33    # "spaceEnough":Z
    :cond_19
    const-string v5, "DownloadAllCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "params size()="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSize()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", getTotalFileSize()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getTotalFileSize()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-virtual/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getTotalFileSize()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_1f

    .line 442
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSize()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_1a

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSize()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getTotalFileSize()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_1f

    .line 441
    :cond_1a
    const/16 v32, 0x1

    .line 444
    .local v32, "sizeCorrect":Z
    :goto_4
    if-nez v32, :cond_1b

    if-nez v27, :cond_1b

    .line 445
    const/16 v27, 0x2

    .line 448
    :cond_1b
    const-string v5, "DownloadAllCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "reqCode="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sizeCorrect="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    if-nez v27, :cond_20

    if-eqz v32, :cond_20

    const/16 v30, 0x1

    .line 451
    .local v30, "result":Z
    :goto_5
    if-nez v30, :cond_a

    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/network/NetController;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_a

    .line 452
    const-string v5, "DownloadAllCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "CdnIpController.getInstances().hasNextIp(host)="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/netease/download/dns/CdnIpController;->hasNextIp(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v5, "DownloadAllCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "CdnIpController.getInstances().hasNextUnit()="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/netease/download/dns/CdnIpController;->hasNextUnit(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/netease/download/dns/CdnIpController;->hasNextIp(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/netease/download/dns/CdnIpController;->hasNextUnit(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 456
    :cond_1c
    const-string v5, "\u5207\u6362\u5206\u7247"

    invoke-static {v5}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 457
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v5

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Lcom/netease/download/dns/CdnIpController;->removeIp(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/netease/download/dns/CdnIpController;->hasNextIp(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1d

    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/netease/download/dns/CdnIpController;->hasNextUnit(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 460
    const-string v5, "DownloadAllCore"

    const-string v6, "\u6ca1\u6709\u4e0b\u4e00\u4e2aip\u4e86\uff0c\u76f4\u63a5\u5220\u9664\u8fd9\u4e2a\u5355\u5143"

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lcom/netease/download/dns/CdnIpController;->removeUnit(Ljava/lang/String;)V

    .line 464
    :cond_1d
    sget-object v5, Lcom/netease/download/Const$Stage;->OTHER_SEG_USED:Lcom/netease/download/Const$Stage;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v5, v2}, Lcom/netease/download/downloadpart/DownloadAllCore;->download_core(Lcom/netease/download/downloader/DownloadParams;Lcom/netease/download/Const$Stage;I)I

    move-result v27

    .line 503
    :cond_1e
    :goto_6
    sget-object v5, Lcom/netease/download/Const$Stage;->NORMAL:Lcom/netease/download/Const$Stage;

    move-object/from16 v0, p2

    if-ne v5, v0, :cond_1

    .line 504
    const-string v5, "DownloadAllCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "onfinish sendFinishMsg md5444="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 441
    .end local v30    # "result":Z
    .end local v32    # "sizeCorrect":Z
    :cond_1f
    const/16 v32, 0x0

    goto/16 :goto_4

    .line 449
    .restart local v32    # "sizeCorrect":Z
    :cond_20
    const/16 v30, 0x0

    goto/16 :goto_5

    .line 468
    .restart local v30    # "result":Z
    :cond_21
    const-string v5, "DownloadAllCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u5207\u6362httpdns\u4e4b\u524d\uff0coverSea="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/downloader/DownloadInitInfo;->getOverSea()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v5, "1"

    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/downloader/DownloadInitInfo;->getOverSea()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "2"

    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/netease/download/downloader/DownloadInitInfo;->getOverSea()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    .line 471
    const-string v5, "\u5207\u6362httpdns"

    invoke-static {v5}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 472
    const-string v5, "DownloadAllCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u5206\u7247\u4e2d\uff0chttpdns\u4ee3\u7406\u4e2d\uff0c\u662f\u5426\u5df2\u7ecf\u89e3\u6790\u8fc7httpdns_config_cnd = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns2/HttpdnsProxy;

    move-result-object v7

    const-string v8, "httpdns_config_cnd"

    invoke-virtual {v7, v8}, Lcom/netease/download/httpdns2/HttpdnsProxy;->containKey(Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const/16 v36, 0x0

    .line 475
    .local v36, "unit":Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns2/HttpdnsProxy;

    move-result-object v5

    const-string v6, "httpdns_config_cnd"

    invoke-virtual {v5, v6}, Lcom/netease/download/httpdns2/HttpdnsProxy;->containKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_23

    .line 476
    const-string v5, "DownloadAllCore"

    const-string v6, "\u5206\u7247\u4e2d\uff0c\u5f00\u59cbhttpdns"

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns2/HttpdnsProxy;

    move-result-object v5

    const-string v6, "httpdns_config_cnd"

    invoke-static {}, Lcom/netease/download/config2/ConfigProxy;->getInstances()Lcom/netease/download/config2/ConfigProxy;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/config2/ConfigProxy;->getResult()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/config2/ConfigParams2;->getCndArray()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/netease/download/httpdns2/HttpdnsProxy;->synStart(Ljava/lang/String;[Ljava/lang/String;)V

    .line 488
    :cond_22
    :goto_7
    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns2/HttpdnsProxy;

    move-result-object v5

    const-string v6, "httpdns_config_cnd"

    invoke-virtual {v5, v6}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getHttpdnsUrlSwitcherCore(Ljava/lang/String;)Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;

    move-result-object v36

    .line 490
    if-eqz v36, :cond_1e

    invoke-virtual/range {v36 .. v36}, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 491
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;->next(Ljava/lang/String;)Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;

    move-result-object v20

    .line 493
    .local v20, "httpdnsUrlSwitcherCoreUnit":Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;
    if-eqz v20, :cond_1e

    .line 494
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->host:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/netease/download/downloader/DownloadParams;->setHost(Ljava/lang/String;)V

    .line 495
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->ip:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/netease/download/downloader/DownloadParams;->setmHttpdnsIp(Ljava/lang/String;)V

    .line 496
    const-string v5, "DownloadAllCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "host="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->host:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ip="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->ip:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    sget-object v5, Lcom/netease/download/Const$Stage;->OTHER_IP_USED:Lcom/netease/download/Const$Stage;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v5, v2}, Lcom/netease/download/downloadpart/DownloadAllCore;->download_core(Lcom/netease/download/downloader/DownloadParams;Lcom/netease/download/Const$Stage;I)I

    move-result v27

    goto/16 :goto_6

    .line 480
    .end local v20    # "httpdnsUrlSwitcherCoreUnit":Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;
    :cond_23
    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns2/HttpdnsProxy;

    move-result-object v5

    const-string v6, "httpdns_config_cnd"

    invoke-virtual {v5, v6}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getHttpdnsUrlSwitcherCore(Ljava/lang/String;)Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;

    move-result-object v36

    .line 482
    if-eqz v36, :cond_22

    .line 483
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;->next(Ljava/lang/String;)Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;

    move-result-object v20

    .line 484
    .restart local v20    # "httpdnsUrlSwitcherCoreUnit":Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;
    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->ip:Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;->remove(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 537
    .end local v20    # "httpdnsUrlSwitcherCoreUnit":Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;
    .end local v30    # "result":Z
    .end local v32    # "sizeCorrect":Z
    .end local v33    # "spaceEnough":Z
    .end local v36    # "unit":Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$KeyHttpdnsUrlSwitcherCoreUnit;
    .restart local v35    # "totalPart":I
    :cond_24
    aget-object v14, v6, v5

    .line 538
    .local v14, "downloadParams":Lcom/netease/download/downloader/DownloadParams;
    const-string v8, "DownloadAllCore"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u5206\u7247="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/netease/download/downloader/DownloadParams;->getPart()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", start="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v14}, Lcom/netease/download/downloader/DownloadParams;->getSegmentStart()J

    move-result-wide v38

    move-wide/from16 v0, v38

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 539
    const-string v10, ", end="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v14}, Lcom/netease/download/downloader/DownloadParams;->getSegmentEnd()J

    move-result-wide v38

    move-wide/from16 v0, v38

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", url="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v14}, Lcom/netease/download/downloader/DownloadParams;->getDownloadUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", \u6587\u4ef6\u540d\u5b57="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v14}, Lcom/netease/download/downloader/DownloadParams;->getUrlSuffix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 538
    invoke-static {v8, v9}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 577
    .end local v14    # "downloadParams":Lcom/netease/download/downloader/DownloadParams;
    .restart local v13    # "donwonloadPartProxy":Lcom/netease/download/downloadpart/DonwonloadPartProxy;
    .restart local v25    # "mergeResult":Z
    .restart local v31    # "resultCode":I
    :cond_25
    const/16 v24, 0x1

    goto/16 :goto_2
.end method

.method private getContentLength(Ljava/util/Map;)J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)J"
        }
    .end annotation

    .prologue
    .line 604
    .local p1, "pHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-wide/16 v2, 0x0

    .line 606
    .local v2, "totalSize":J
    if-nez p1, :cond_0

    move-wide v4, v2

    .line 627
    .end local v2    # "totalSize":J
    .local v4, "totalSize":J
    :goto_0
    return-wide v4

    .line 610
    .end local v4    # "totalSize":J
    .restart local v2    # "totalSize":J
    :cond_0
    const/4 v1, 0x0

    .line 612
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "Content-Length"

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 613
    const-string v6, "Content-Length"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/List;

    .line 616
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 617
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 618
    .local v0, "headerValue":Ljava/lang/String;
    const-string v6, "DownloadAllCore"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "processHeader, value="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/download/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 621
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v4, v2

    .line 622
    .end local v2    # "totalSize":J
    .restart local v4    # "totalSize":J
    goto :goto_0

    .line 626
    .end local v0    # "headerValue":Ljava/lang/String;
    .end local v4    # "totalSize":J
    .restart local v2    # "totalSize":J
    :cond_2
    const-string v6, "DownloadAllCore"

    const-string v7, "no Content-Length found"

    invoke-static {v6, v7}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v4, v2

    .line 627
    .end local v2    # "totalSize":J
    .restart local v4    # "totalSize":J
    goto :goto_0
.end method

.method private getPartParams()[Lcom/netease/download/downloader/DownloadParams;
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mPartParams:[Lcom/netease/download/downloader/DownloadParams;

    return-object v0
.end method

.method private isAllInterrupted([I)Z
    .locals 5
    .param p1, "Interrupted"    # [I

    .prologue
    .line 809
    const/4 v1, 0x0

    .line 811
    .local v1, "isAllInterrupted":Z
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 819
    :goto_1
    return v1

    .line 811
    :cond_0
    aget v0, p1, v2

    .line 813
    .local v0, "i":I
    const/16 v4, 0xc

    if-ne v4, v0, :cond_1

    .line 814
    const/4 v1, 0x1

    .line 815
    goto :goto_1

    .line 811
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private mergeFiles(Ljava/io/File;)Z
    .locals 12
    .param p1, "pOut"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 745
    const-string v7, "DownloadAllCore"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u5408\u5e76\u524d\u7684\u6587\u4ef6\u8def\u5f84="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", \u5927\u5c0f="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const/4 v3, 0x0

    .line 747
    .local v3, "outChannel":Ljava/nio/channels/FileChannel;
    const/4 v5, 0x0

    .line 749
    .local v5, "result":Z
    const/4 v7, 0x1

    invoke-direct {p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getPartParams()[Lcom/netease/download/downloader/DownloadParams;

    move-result-object v8

    array-length v8, v8

    if-ne v7, v8, :cond_1

    .line 750
    new-instance v7, Ljava/io/File;

    invoke-direct {p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getPartParams()[Lcom/netease/download/downloader/DownloadParams;

    move-result-object v8

    aget-object v6, v8, v6

    invoke-virtual {v6}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    .line 786
    :cond_0
    :goto_0
    const-string v6, "DownloadAllCore"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\u5408\u5e76\u540e\u7684\u6587\u4ef6\u8def\u5f84="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", \u5927\u5c0f="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    return v5

    .line 755
    :cond_1
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 757
    invoke-direct {p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->getPartParams()[Lcom/netease/download/downloader/DownloadParams;

    move-result-object v7

    array-length v8, v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-lt v6, v8, :cond_2

    .line 768
    const/4 v5, 0x1

    .line 777
    if-eqz v3, :cond_0

    .line 778
    :try_start_1
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 780
    :catch_0
    move-exception v6

    goto :goto_0

    .line 757
    :cond_2
    :try_start_2
    aget-object v4, v7, v6

    .line 758
    .local v4, "params":Lcom/netease/download/downloader/DownloadParams;
    new-instance v9, Ljava/io/FileInputStream;

    invoke-virtual {v4}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 759
    .local v1, "fc":Ljava/nio/channels/FileChannel;
    const v9, 0x8000

    invoke-static {v9}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 761
    .local v0, "bb":Ljava/nio/ByteBuffer;
    :goto_2
    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    .line 757
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 762
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 763
    invoke-virtual {v3, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 764
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 770
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v1    # "fc":Ljava/nio/channels/FileChannel;
    .end local v4    # "params":Lcom/netease/download/downloader/DownloadParams;
    :catch_1
    move-exception v2

    .line 771
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 777
    if-eqz v3, :cond_0

    .line 778
    :try_start_4
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 780
    :catch_2
    move-exception v6

    goto :goto_0

    .line 773
    .end local v2    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 777
    if-eqz v3, :cond_4

    .line 778
    :try_start_5
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 783
    :cond_4
    :goto_3
    throw v6

    .line 780
    :catch_3
    move-exception v7

    goto :goto_3
.end method

.method private produceSegmentParams(Lcom/netease/download/downloader/DownloadParams;J)[Lcom/netease/download/downloader/DownloadParams;
    .locals 26
    .param p1, "pOriginalParams"    # Lcom/netease/download/downloader/DownloadParams;
    .param p2, "pTotalSize"    # J

    .prologue
    .line 650
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getTotalPart()I

    move-result v13

    .line 651
    .local v13, "num":I
    new-array v14, v13, [Lcom/netease/download/downloader/DownloadParams;

    .line 653
    .local v14, "params":[Lcom/netease/download/downloader/DownloadParams;
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/netease/download/dns/CdnIpController;->getChannelWeight(Ljava/lang/String;)I

    move-result v15

    .line 655
    .local v15, "totalWeight":I
    const-string v2, "DownloadAllCore"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v21, "\u603b\u6743\u91cd="

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v21, ", \u5206\u7247\u6570="

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v21, ", \u539f\u59cb\u94fe\u63a5="

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getOriginPrefix()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/netease/download/dns/CdnIpController;->getHost(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    .line 659
    .local v12, "host":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v15, :cond_a

    .line 660
    const-string v2, "\u6309\u6743\u91cd\u5206"

    invoke-static {v2}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 662
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/netease/download/dns/CdnIpController;->getWeights(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v20

    .line 663
    .local v20, "weight":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-wide/16 v16, 0x0

    .line 664
    .local v16, "size":J
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSegmentStart()J

    move-result-wide v4

    .line 665
    .local v4, "start":J
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSegmentEnd()J

    move-result-wide v6

    .line 667
    .local v6, "end":J
    if-nez v12, :cond_1

    .line 723
    .end local v16    # "size":J
    .end local v20    # "weight":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    return-object v14

    .line 671
    .restart local v16    # "size":J
    .restart local v20    # "weight":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    const/4 v2, 0x1

    if-ne v2, v13, :cond_5

    .line 672
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSegmentEnd()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v2, v22, v24

    if-nez v2, :cond_3

    move-wide/from16 v6, p2

    .line 673
    :goto_0
    const-wide/16 v22, 0x1

    sub-long v6, v6, v22

    .line 674
    const/16 v21, 0x0

    const/4 v3, 0x0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v8, v2

    :goto_1
    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Lcom/netease/download/downloader/DownloadParams;->produceSegment(IJJLjava/lang/String;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v2

    aput-object v2, v14, v21

    .line 717
    .end local v16    # "size":J
    .end local v20    # "weight":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    const-string v2, "DownloadAllCore"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v21, "\u5206\u7247\u53c2\u6570\u4e2a\u6570="

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v14

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    array-length v8, v14

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v8, :cond_0

    aget-object v9, v14, v2

    .line 720
    .local v9, "downloadParams":Lcom/netease/download/downloader/DownloadParams;
    const-string v21, "DownloadAllCore"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "\u5206\u7247\u53c2\u6570="

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/netease/download/downloader/DownloadParams;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 672
    .end local v9    # "downloadParams":Lcom/netease/download/downloader/DownloadParams;
    .restart local v16    # "size":J
    .restart local v20    # "weight":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSegmentEnd()J

    move-result-wide v6

    goto :goto_0

    .line 674
    :cond_4
    const-string v8, ""

    goto :goto_1

    .line 678
    :cond_5
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    .line 679
    const-string v2, "DownloadAllCore"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v21, "weight[i]="

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v22, v0

    mul-long v22, v22, p2

    int-to-long v0, v15

    move-wide/from16 v24, v0

    div-long v16, v22, v24

    .line 682
    if-eqz v3, :cond_6

    .line 683
    const-wide/16 v22, 0x1

    add-long v4, v6, v22

    .line 686
    :cond_6
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v3, v2, :cond_8

    .line 688
    const-wide/16 v22, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSegmentEnd()J

    move-result-wide v24

    cmp-long v2, v22, v24

    if-nez v2, :cond_7

    .line 689
    const-wide/16 v22, 0x1

    sub-long v6, p2, v22

    .line 699
    :goto_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_9

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v8, v2

    :goto_5
    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Lcom/netease/download/downloader/DownloadParams;->produceSegment(IJJLjava/lang/String;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v2

    aput-object v2, v14, v3

    .line 700
    const-string v2, "DownloadAllCore"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v21, "\u5206\u7247\u53c2\u6570\u751f\u6210\uff0c\u5206\u7247="

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v21, ", start="

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v21, ", end="

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_3

    .line 692
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSegmentEnd()J

    move-result-wide v22

    const-wide/16 v24, 0x1

    sub-long v6, v22, v24

    .line 695
    goto :goto_4

    .line 696
    :cond_8
    add-long v22, v4, v16

    const-wide/16 v24, 0x1

    sub-long v6, v22, v24

    goto :goto_4

    .line 699
    :cond_9
    const-string v8, ""

    goto :goto_5

    .line 704
    .end local v3    # "i":I
    .end local v4    # "start":J
    .end local v6    # "end":J
    .end local v16    # "size":J
    .end local v20    # "weight":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_a
    const-string v2, "\u5e73\u5747\u5206"

    invoke-static {v2}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 705
    int-to-long v0, v13

    move-wide/from16 v22, v0

    div-long v18, p2, v22

    .line 706
    .local v18, "sizeEach":J
    int-to-long v0, v13

    move-wide/from16 v22, v0

    mul-long v22, v22, v18

    sub-long v10, p2, v22

    .line 707
    .local v10, "delta":J
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSegmentStart()J

    move-result-wide v4

    .line 708
    .restart local v4    # "start":J
    add-long v22, v18, v10

    const-wide/16 v24, 0x1

    sub-long v6, v22, v24

    .line 710
    .restart local v6    # "end":J
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_6
    if-eq v3, v13, :cond_2

    .line 711
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v3, :cond_b

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v8, v2

    :goto_7
    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Lcom/netease/download/downloader/DownloadParams;->produceSegment(IJJLjava/lang/String;)Lcom/netease/download/downloader/DownloadParams;

    move-result-object v2

    aput-object v2, v14, v3

    .line 712
    const-wide/16 v22, 0x1

    add-long v4, v6, v22

    .line 713
    add-long v22, v4, v18

    const-wide/16 v24, 0x1

    sub-long v6, v22, v24

    .line 710
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 711
    :cond_b
    const-string v8, ""

    goto :goto_7
.end method

.method private setPartParams([Lcom/netease/download/downloader/DownloadParams;)V
    .locals 0
    .param p1, "pParams"    # [Lcom/netease/download/downloader/DownloadParams;

    .prologue
    .line 727
    iput-object p1, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mPartParams:[Lcom/netease/download/downloader/DownloadParams;

    .line 728
    return-void
.end method

.method private setTotalFileSize(J)V
    .locals 1
    .param p1, "pTotalFileSize"    # J

    .prologue
    .line 636
    iput-wide p1, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mTotalFileSize:J

    .line 637
    return-void
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 840
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 824
    const/16 v1, 0xb

    .line 826
    .local v1, "result":I
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->start()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 831
    :goto_0
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getInstances()Lcom/netease/download/listener/DownloadListenerCore;

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;

    move-result-object v0

    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadInitInfo;->getAllSize()J

    move-result-wide v2

    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getInstances()Lcom/netease/download/listener/DownloadListenerCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/listener/DownloadListenerCore;->getTotalSize()J

    move-result-wide v4

    iget-object v6, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v6}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v7}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/netease/download/reporter/ReportUtil;->getInstances()Lcom/netease/download/reporter/ReportUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/netease/download/reporter/ReportUtil;->getCurrentSessionId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->sendFinishMsg(IJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const-string v0, "DownloadAllCore"

    const-string v2, "\u5927\u4e0b\u8f7d call\u7ed3\u675f\uff0c\u63a5\u4e0b\u6765\u5e94\u8be5\u8fd4\u56de\u5230\u7ebf\u7a0b\u6c60\u7684\u7ed3\u679c\u56de\u8c03"

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 827
    :catch_0
    move-exception v9

    .line 828
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "DownloadAllCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DownloadAllCore Exception e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/netease/download/downloadpart/DownloadAllCore;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public download(Lcom/netease/download/downloader/DownloadParams;Lcom/netease/download/Const$Stage;I)I
    .locals 5
    .param p1, "pParams"    # Lcom/netease/download/downloader/DownloadParams;
    .param p2, "pStage"    # Lcom/netease/download/Const$Stage;
    .param p3, "type"    # I

    .prologue
    .line 206
    const-string v1, "1"

    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadInitInfo;->getOverSea()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "2"

    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/download/downloader/DownloadInitInfo;->getOverSea()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 208
    const-string v1, "DownloadAllCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u662f\u5426\u5b58\u5728httpdns_config_cnd="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns2/HttpdnsProxy;

    move-result-object v3

    const-string v4, "httpdns_config_cnd"

    invoke-virtual {v3, v4}, Lcom/netease/download/httpdns2/HttpdnsProxy;->containKey(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string v1, "DownloadAllCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u662f\u5426\u8fd8\u5b58\u5728\u6ca1\u6709\u4f7f\u7528\u7684ip="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns2/HttpdnsProxy;

    move-result-object v3

    const-string v4, "httpdns_config_cnd"

    invoke-virtual {v3, v4}, Lcom/netease/download/httpdns2/HttpdnsProxy;->hasNext(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns2/HttpdnsProxy;

    move-result-object v1

    const-string v2, "httpdns_config_cnd"

    invoke-virtual {v1, v2}, Lcom/netease/download/httpdns2/HttpdnsProxy;->containKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns2/HttpdnsProxy;

    move-result-object v1

    const-string v2, "httpdns_config_cnd"

    invoke-virtual {v1, v2}, Lcom/netease/download/httpdns2/HttpdnsProxy;->hasNext(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    const-string v1, "DownloadAllCore"

    const-string v2, "\u505a\u4e86httpdns\u89e3\u6790\uff0c\u5df2\u7ecf\u6ca1\u6709ip\u53ef\u4ee5\u4f7f\u7528\u4e86"

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/netease/download/downloader/DownloadProxy;->stopAll()V

    .line 224
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mCode:I

    .line 225
    invoke-static {}, Lcom/netease/download/handler/Dispatcher;->getTaskParamsMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->getFileId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/netease/download/downloader/TaskParams;

    invoke-direct {v3}, Lcom/netease/download/downloader/TaskParams;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-virtual {p0, p1}, Lcom/netease/download/downloadpart/DownloadAllCore;->initData(Lcom/netease/download/downloader/DownloadParams;)V

    .line 227
    iget-object v1, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mLogData:Ljava/util/HashMap;

    const-string v2, "httpdns"

    const-string v3, "false"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/download/downloadpart/DownloadAllCore;->download_core(Lcom/netease/download/downloader/DownloadParams;Lcom/netease/download/Const$Stage;I)I

    move-result v0

    .line 229
    .local v0, "result":I
    const-string v1, "DownloadAllCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6587\u4ef6\u540d="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", \u603b\u4e0b\u8f7d\u4e0b\u8f7d\u7ed3\u679c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return v0

    .line 218
    .end local v0    # "result":I
    :cond_1
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/dns/CdnIpController;->hasNextIp()Z

    move-result v1

    if-nez v1, :cond_0

    .line 219
    const-string v1, "DownloadAllCore"

    const-string v2, "\u53ea\u505adns\u89e3\u6790\uff0c\u5df2\u7ecf\u6ca1\u6709ip\u53ef\u4ee5\u4f7f\u7528\u4e86"

    invoke-static {v1, v2}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/netease/download/downloader/DownloadProxy;->stopAll()V

    goto :goto_0
.end method

.method public getTotalFileSize()J
    .locals 2

    .prologue
    .line 631
    iget-wide v0, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mTotalFileSize:J

    return-wide v0
.end method

.method public init(Lcom/netease/download/downloader/DownloadParams;)V
    .locals 0
    .param p1, "downloadParams"    # Lcom/netease/download/downloader/DownloadParams;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    .line 87
    return-void
.end method

.method public initData(Lcom/netease/download/downloader/DownloadParams;)V
    .locals 2
    .param p1, "pParams"    # Lcom/netease/download/downloader/DownloadParams;

    .prologue
    .line 107
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/DownloadInitInfo;->getOverSea()Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "overSea":Ljava/lang/String;
    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 111
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    sget-object v1, Lcom/netease/download/Const;->REQ_IPS_WS_CHINA:[Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/download/Const;->setReqIpsForWs([Ljava/lang/String;)V

    .line 113
    sget-object v1, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG_CHINA:[Ljava/lang/String;

    sput-object v1, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG:[Ljava/lang/String;

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    sget-object v1, Lcom/netease/download/Const;->REQ_IPS_WS_OVERSEA:[Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/download/Const;->setReqIpsForWs([Ljava/lang/String;)V

    .line 117
    sget-object v1, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG_OVERSEA:[Ljava/lang/String;

    sput-object v1, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG:[Ljava/lang/String;

    goto :goto_0

    .line 119
    :cond_2
    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 120
    sget-object v1, Lcom/netease/download/Const;->REQ_IPS_WS_OVERSEA:[Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/download/Const;->setReqIpsForWs([Ljava/lang/String;)V

    .line 121
    sget-object v1, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG_OVERSEA:[Ljava/lang/String;

    sput-object v1, Lcom/netease/download/Const;->REQ_IPS_FOR_LOG:[Ljava/lang/String;

    .line 122
    const-string v1, "udt-sigma.proxima.nie.easebar.com"

    sput-object v1, Lcom/netease/download/Const;->URL_LOG:Ljava/lang/String;

    goto :goto_0
.end method

.method public start()I
    .locals 10

    .prologue
    const/16 v5, 0xd

    const/16 v6, 0xc

    .line 129
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/network/NetController;->isInterrupted()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 130
    const-string v7, "DownloadAllCore"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u7f51\u7edc\u5f02\u5e38="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/download/network/NetController;->getInterruptedCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/network/NetController;->getInterruptedCode()I

    move-result v7

    if-ne v5, v7, :cond_1

    move v3, v5

    .line 201
    :cond_0
    :goto_0
    return v3

    .line 137
    :cond_1
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/network/NetController;->getInterruptedCode()I

    move-result v7

    if-ne v6, v7, :cond_2

    move v3, v6

    .line 138
    goto :goto_0

    .line 144
    :cond_2
    iget-object v7, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    sget-object v8, Lcom/netease/download/Const$Stage;->NORMAL:Lcom/netease/download/Const$Stage;

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v8, v9}, Lcom/netease/download/downloadpart/DownloadAllCore;->download(Lcom/netease/download/downloader/DownloadParams;Lcom/netease/download/Const$Stage;I)I

    move-result v3

    .line 146
    .local v3, "result":I
    :cond_3
    :goto_1
    if-eqz v3, :cond_0

    iget v7, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mRetry:I

    if-lez v7, :cond_0

    .line 149
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/network/NetController;->isInterrupted()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 150
    const-string v7, "DownloadAllCore"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u7f51\u7edc\u5f02\u5e38="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/netease/download/network/NetController;->getInterruptedCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/network/NetController;->getInterruptedCode()I

    move-result v7

    if-ne v5, v7, :cond_4

    move v3, v5

    .line 153
    goto :goto_0

    .line 156
    :cond_4
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/network/NetController;->getInterruptedCode()I

    move-result v7

    if-ne v6, v7, :cond_5

    move v3, v6

    .line 157
    goto :goto_0

    .line 163
    :cond_5
    invoke-static {}, Lcom/netease/download/task/Pre;->getInstatnces()Lcom/netease/download/task/Pre;

    move-result-object v7

    invoke-virtual {v7}, Lcom/netease/download/task/Pre;->start()I

    move-result v2

    .line 164
    .local v2, "preResult":I
    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns2/HttpdnsProxy;

    move-result-object v7

    const-string v8, "httpdns_config_cnd"

    invoke-virtual {v7, v8}, Lcom/netease/download/httpdns2/HttpdnsProxy;->removeKey(Ljava/lang/String;)V

    .line 165
    const-string v7, "DownloadAllCore"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "result="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", patch\u6587\u4ef6\u91cd\u65b0\u4e0b\u8f7d,\u8fd8\u6709"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mRetry:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u6b21\u91cd\u8bd5\u673a\u4f1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", preResult="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    if-nez v2, :cond_3

    .line 167
    iget v7, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mRetry:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mRetry:I

    .line 170
    iget-object v7, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    invoke-virtual {v7}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "filepath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 174
    .local v4, "type":I
    const/4 v7, 0x3

    if-eq v7, v3, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 176
    :cond_6
    const/4 v4, 0x3

    .line 195
    :cond_7
    const-string v7, "DownloadAllCore"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "file.exists()="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v7, "DownloadAllCore"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "re download type="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v7, p0, Lcom/netease/download/downloadpart/DownloadAllCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    sget-object v8, Lcom/netease/download/Const$Stage;->OTHER_SEG_USED:Lcom/netease/download/Const$Stage;

    invoke-virtual {p0, v7, v8, v4}, Lcom/netease/download/downloadpart/DownloadAllCore;->download(Lcom/netease/download/downloader/DownloadParams;Lcom/netease/download/Const$Stage;I)I

    move-result v3

    goto/16 :goto_1
.end method
