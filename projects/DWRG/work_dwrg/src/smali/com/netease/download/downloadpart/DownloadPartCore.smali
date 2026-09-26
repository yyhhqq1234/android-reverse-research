.class public Lcom/netease/download/downloadpart/DownloadPartCore;
.super Ljava/lang/Object;
.source "DownloadPartCore.java"

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
.field private static final TAG:Ljava/lang/String; = "DownloadPartCore"


# instance fields
.field dealer:Lcom/netease/download/network/NetworkDealer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/download/network/NetworkDealer",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

.field private mHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHost:Ljava/lang/String;

.field private mIp:Ljava/lang/String;

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

.field private mNeedRemove:Z

.field private mOversea:Z

.field private mPartFileSize:J

.field private mRestart:Z

.field private mState:Lcom/netease/download/Const$Stage;

.field private mType:I

.field private tmpFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v1, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mLogData:Ljava/util/HashMap;

    .line 66
    iput-object v1, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->tmpFilePath:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHeader:Ljava/util/Map;

    .line 70
    iput-boolean v2, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mRestart:Z

    .line 72
    iput-object v1, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    .line 76
    iput-boolean v2, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mNeedRemove:Z

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mOversea:Z

    .line 80
    iput v2, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mType:I

    .line 82
    iput-object v1, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mState:Lcom/netease/download/Const$Stage;

    .line 128
    new-instance v0, Lcom/netease/download/downloadpart/DownloadPartCore$1;

    invoke-direct {v0, p0}, Lcom/netease/download/downloadpart/DownloadPartCore$1;-><init>(Lcom/netease/download/downloadpart/DownloadPartCore;)V

    iput-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->dealer:Lcom/netease/download/network/NetworkDealer;

    .line 56
    return-void
.end method

.method static synthetic access$1(Lcom/netease/download/downloadpart/DownloadPartCore;Z)V
    .locals 0

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mNeedRemove:Z

    return-void
.end method

.method static synthetic access$10(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mLogData:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$11(Lcom/netease/download/downloadpart/DownloadPartCore;Ljava/util/Map;)J
    .locals 2

    .prologue
    .line 559
    invoke-direct {p0, p1}, Lcom/netease/download/downloadpart/DownloadPartCore;->getContentLength(Ljava/util/Map;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$12(Lcom/netease/download/downloadpart/DownloadPartCore;J)V
    .locals 1

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/netease/download/downloadpart/DownloadPartCore;->setPartFileSize(J)V

    return-void
.end method

.method static synthetic access$2(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHeader:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3(Lcom/netease/download/downloadpart/DownloadPartCore;)Lcom/netease/download/downloader/DownloadParams;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    return-object v0
.end method

.method static synthetic access$4(Lcom/netease/download/downloadpart/DownloadPartCore;)J
    .locals 2

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/netease/download/downloadpart/DownloadPartCore;->getPartFileSize()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$5(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->tmpFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/netease/download/downloadpart/DownloadPartCore;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/netease/download/downloadpart/DownloadPartCore;)I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mType:I

    return v0
.end method

.method static synthetic access$9(Lcom/netease/download/downloadpart/DownloadPartCore;)Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mOversea:Z

    return v0
.end method

.method private downloadPart(Lcom/netease/download/downloader/DownloadParams;Lcom/netease/download/Const$Stage;)I
    .locals 30
    .param p1, "pParams"    # Lcom/netease/download/downloader/DownloadParams;
    .param p2, "pStage"    # Lcom/netease/download/Const$Stage;

    .prologue
    .line 315
    const-string v3, "\u5206\u7247\u4e0b\u8f7d"

    invoke-static {v3}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 316
    const-string v3, "DownloadPartCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5206\u7247\u4e0b\u8f7d\u5f00\u59cb,\u5206\u7247="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPart()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \u53c2\u6570="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 319
    :cond_0
    const-string v3, "DownloadPartCore"

    const-string v4, "invalid downloadPart params"

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/16 v22, 0xe

    .line 555
    :goto_0
    return v22

    .line 323
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->hashCode()I

    move-result v9

    .line 325
    .local v9, "code":I
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/network/NetController;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 326
    const-string v3, "DownloadPartCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "download is interrupted("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") before action"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const/16 v3, 0xd

    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/network/NetController;->getInterruptedCode()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 329
    const/16 v22, 0xd

    goto :goto_0

    .line 332
    :cond_2
    const/16 v3, 0xc

    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/network/NetController;->getInterruptedCode()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 333
    const/16 v22, 0xc

    goto :goto_0

    .line 339
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->tmpFilePath:Ljava/lang/String;

    .line 340
    new-instance v26, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->tmpFilePath:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 341
    .local v26, "tmpDlFile":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .local v11, "dlFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    .line 345
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    .line 346
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 350
    :cond_4
    :try_start_0
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :goto_1
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    .line 358
    const-string v3, "DownloadPartCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6587\u4ef6\u751f\u6210\u5f02\u5e38\uff0c\u6587\u4ef6\u540d\u5b57="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->tmpFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_5
    const-string v3, "DownloadPartCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dlFile.exists()111= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dlFile.length()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mState:Lcom/netease/download/Const$Stage;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v3, "DownloadPartCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tmpDlFile.exists()111= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tmpDlFile.length()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mState:Lcom/netease/download/Const$Stage;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mRestart:Z

    if-nez v3, :cond_8

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mState:Lcom/netease/download/Const$Stage;

    sget-object v4, Lcom/netease/download/Const$Stage;->NORMAL:Lcom/netease/download/Const$Stage;

    if-ne v3, v4, :cond_8

    .line 368
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSegmentEnd()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSegmentStart()J

    move-result-wide v28

    sub-long v6, v6, v28

    const-wide/16 v28, 0x1

    add-long v6, v6, v28

    cmp-long v3, v4, v6

    if-nez v3, :cond_6

    .line 370
    const/16 v16, 0x0

    .line 371
    .local v16, "isRenameSuccess":Z
    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v16

    .line 372
    new-instance v11, Ljava/io/File;

    .end local v11    # "dlFile":Ljava/io/File;
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v11, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    .end local v16    # "isRenameSuccess":Z
    .restart local v11    # "dlFile":Ljava/io/File;
    :cond_6
    const-string v3, "DownloadPartCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5b58\u5728\u4e86\u6587\u4ef61="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->tmpFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \u957f\u5ea6="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \u5206\u7247="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPart()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->tmpFilePath:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPart()I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->sendHasDownloadMag(JLjava/lang/String;Ljava/lang/String;I)V

    .line 388
    :cond_7
    :goto_2
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->length()J

    move-result-wide v18

    .line 389
    .local v18, "lastSize":J
    const-string v3, "DownloadPartCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5206\u7247\u4e0b\u8f7d\uff0c\u6587\u4ef6\u540d="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->tmpFilePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff0c \u4e4b\u524d\u4e0b\u8f7d\u597d\u7684\u6587\u4ef6\u7684\u5927\u5c0f="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const/16 v17, 0x0

    .line 392
    .local v17, "md5":Ljava/lang/String;
    const-string v3, "DownloadPartCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6587\u4ef6\u662f\u5426\u5df2\u7ecf\u5b58\u5728="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 395
    const-string v3, "MD5"

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/HashUtil;->calculateHash(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 396
    invoke-static {}, Lcom/netease/download/util/SpUtil;->getInstance()Lcom/netease/download/util/SpUtil;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "md5"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/netease/download/util/SpUtil;->getString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 398
    .local v14, "existMd5":Ljava/lang/String;
    const-string v3, "DownloadPartCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "md5="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", existMd5="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dlFile.length()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", END - START = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSegmentEnd()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSegmentStart()J

    move-result-wide v28

    sub-long v6, v6, v28

    const-wide/16 v28, 0x1

    add-long v6, v6, v28

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    if-eqz v14, :cond_9

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 400
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSegmentEnd()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSegmentStart()J

    move-result-wide v28

    sub-long v6, v6, v28

    const-wide/16 v28, 0x1

    add-long v6, v6, v28

    cmp-long v3, v4, v6

    if-nez v3, :cond_9

    .line 402
    const-string v3, "DownloadPartCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "part("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") already downloaded. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v3, "DownloadPartCore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " \u6587\u4ef6\u5df2\u7ecf\u5b58\u5728 \u76f4\u63a5\u8fd4\u56de"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 352
    .end local v14    # "existMd5":Ljava/lang/String;
    .end local v17    # "md5":Ljava/lang/String;
    .end local v18    # "lastSize":J
    :catch_0
    move-exception v13

    .line 354
    .local v13, "e1":Ljava/io/IOException;
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 380
    .end local v13    # "e1":Ljava/io/IOException;
    :cond_8
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mState:Lcom/netease/download/Const$Stage;

    sget-object v4, Lcom/netease/download/Const$Stage;->NORMAL:Lcom/netease/download/Const$Stage;

    if-ne v3, v4, :cond_7

    .line 381
    const-string v3, "DownloadPartCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5b58\u5728\u4e86\u6587\u4ef62="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \u957f\u5ea6="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \u5206\u7247="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPart()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-static {}, Lcom/netease/download/listener/DownloadListenerCore;->getDownloadListenerHandler()Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;

    move-result-object v3

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getMd5()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPart()I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Lcom/netease/download/listener/DownloadListenerCore$DownloadListenerHandler;->sendHasDownloadMag(JLjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 410
    .restart local v17    # "md5":Ljava/lang/String;
    .restart local v18    # "lastSize":J
    :cond_9
    invoke-static {}, Lcom/netease/download/util/SpUtil;->getInstance()Lcom/netease/download/util/SpUtil;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "md5"

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/netease/download/util/SpUtil;->setString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 411
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHeader:Ljava/util/Map;

    .line 412
    invoke-static {}, Lcom/netease/download/util/SpUtil;->getInstance()Lcom/netease/download/util/SpUtil;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "time"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/netease/download/util/SpUtil;->getLong(Ljava/lang/Object;Ljava/lang/String;J)J

    move-result-wide v20

    .line 413
    .local v20, "lastTime":J
    const-string v3, "DownloadPartCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lastSize="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  act fileSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pParams.getPart()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPart()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v3, v4, v18

    if-gez v3, :cond_b

    .line 418
    :cond_a
    const-string v4, "DownloadPartCore"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "\u6587\u4ef6\u662f\u5426\u5df2\u7ecf\u5b58\u5728="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->exists()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", \u6587\u4ef6\u5927\u5c0f\u662f\u5426\u5f02\u5e38="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v3, v6, v18

    if-gez v3, :cond_f

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-wide/16 v18, 0x0

    .line 422
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSegmentStart()J

    move-result-wide v4

    add-long v24, v18, v4

    .line 423
    .local v24, "size":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHeader:Ljava/util/Map;

    const-string v4, "START"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string v4, "DownloadPartCore"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "\u65b0\u7684\u5934\u90e8\u4f4d\u7f6e="

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHeader:Ljava/util/Map;

    const-string v6, "START"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", size="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", pParams.getPart()="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPart()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", pParams.getCode()="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getCode()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSegmentEnd()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSegmentStart()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-lez v3, :cond_c

    .line 427
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHeader:Ljava/util/Map;

    const-string v4, "END"

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getSegmentEnd()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    const-string v4, "DownloadPartCore"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "\u65b0\u7684\u5c3e\u90e8\u4f4d\u7f6e="

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHeader:Ljava/util/Map;

    const-string v6, "END"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_c
    const-string v3, "DownloadPartCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")header="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHeader:Ljava/util/Map;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-static {}, Lcom/netease/download/config2/ConfigParams2;->getInstance()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v10

    .line 434
    .local v10, "configParams2":Lcom/netease/download/config2/ConfigParams2;
    const/16 v22, 0x1

    .line 437
    .local v22, "reqCode":I
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/netease/download/util/StrUtil;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    .line 438
    const-string v3, "DownloadPartCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DownloadPartCore [downloadPart] mHost="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v3, "DownloadPartCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5206\u7247="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPart()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u5206\u652f\u9009\u62e9\uff0c\u666e\u901acdn\u6e90\u5206\u652f\u4e0b\u8f7d="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/netease/download/dns/CdnIpController;->hasNextIp(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",  \u5207\u6362\u53e6\u5916\u4e00\u4e2ahost="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/netease/download/dns/CdnIpController;->hasNextUnit(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", httpdns\u5206\u652f\u4e0b\u8f7d="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns2/HttpdnsProxy;

    move-result-object v5

    const-string v6, "httpdns_config_cnd"

    invoke-virtual {v5, v6}, Lcom/netease/download/httpdns2/HttpdnsProxy;->hasNext(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/netease/download/dns/CdnIpController;->hasNextIp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 443
    const-string v3, "DownloadPartCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[QAQA] \u672chost\u4e0b\uff0c\u5207\u6362ip\uff0c\u5206\u7247="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPart()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/netease/download/dns/CdnIpController;->nextIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    .line 445
    const-string v3, "DownloadPartCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[QAQA] \u5206\u7247="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPart()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \u5206\u7247\u4e0b\u8f7d\u7684\u8bf7\u6c42\u7684host="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ip="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \u8bf7\u6c42\u94fe\u63a5="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/netease/download/downloader/DownloadParams;->getDownloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHeader:Ljava/util/Map;

    const-string v4, "Host"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    invoke-static {}, Lcom/netease/download/dns/CdnUseTimeProxy;->getInstance()Lcom/netease/download/dns/CdnUseTimeProxy;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/netease/download/dns/CdnUseTimeProxy;->start(Ljava/lang/String;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/netease/download/downloader/DownloadParams;->getDownloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "GET"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHeader:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->dealer:Lcom/netease/download/network/NetworkDealer;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/netease/download/network/NetUtil;->doHttpReq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/netease/download/network/NetworkDealer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v22

    .line 478
    :cond_d
    :goto_4
    invoke-static {}, Lcom/netease/download/dns/CdnUseTimeProxy;->getInstance()Lcom/netease/download/dns/CdnUseTimeProxy;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/netease/download/dns/CdnUseTimeProxy;->finish(Ljava/lang/String;)V

    .line 480
    if-nez v22, :cond_12

    .line 481
    invoke-static {}, Lcom/netease/download/util/SpUtil;->getInstance()Lcom/netease/download/util/SpUtil;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "md5"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/netease/download/util/SpUtil;->getString(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 537
    :cond_e
    move/from16 v23, v22

    .line 539
    .local v23, "resultCode":I
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/network/NetController;->isInterrupted()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 541
    const/16 v3, 0xd

    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/network/NetController;->getInterruptedCode()I

    move-result v4

    if-ne v3, v4, :cond_1b

    .line 542
    const/16 v22, 0xd

    goto/16 :goto_0

    .line 418
    .end local v10    # "configParams2":Lcom/netease/download/config2/ConfigParams2;
    .end local v22    # "reqCode":I
    .end local v23    # "resultCode":I
    .end local v24    # "size":J
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 450
    .restart local v10    # "configParams2":Lcom/netease/download/config2/ConfigParams2;
    .restart local v22    # "reqCode":I
    .restart local v24    # "size":J
    :cond_10
    :try_start_2
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/netease/download/dns/CdnIpController;->hasNextUnit(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 451
    const-string v3, "DownloadPartCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[QAQA] \u5207\u6362host\uff0c\u5206\u7247="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPart()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/netease/download/dns/CdnIpController;->nextUnit(Ljava/lang/String;)Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;

    move-result-object v2

    .line 453
    .local v2, "cndIpControllerUnit":Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;
    iget-object v3, v2, Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;->mDomain:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    .line 454
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/netease/download/dns/CdnIpController;->nextIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    .line 455
    const-string v3, "DownloadPartCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5206\u7247="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPart()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \u5206\u7247\u4e0b\u8f7d\u7684\u8bf7\u6c42\u7684host="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ip="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \u8bf7\u6c42\u94fe\u63a5="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/netease/download/downloader/DownloadParams;->getDownloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHeader:Ljava/util/Map;

    const-string v4, "Host"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    invoke-static {}, Lcom/netease/download/dns/CdnUseTimeProxy;->getInstance()Lcom/netease/download/dns/CdnUseTimeProxy;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/netease/download/dns/CdnUseTimeProxy;->start(Ljava/lang/String;)V

    .line 458
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/netease/download/downloader/DownloadParams;->getDownloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "GET"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHeader:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->dealer:Lcom/netease/download/network/NetworkDealer;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/netease/download/network/NetUtil;->doHttpReq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/netease/download/network/NetworkDealer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v22

    .line 460
    goto/16 :goto_4

    .end local v2    # "cndIpControllerUnit":Lcom/netease/download/dns/CdnIpController$CndIpControllerUnit;
    :cond_11
    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns2/HttpdnsProxy;

    move-result-object v3

    const-string v4, "httpdns_config_cnd"

    invoke-virtual {v3, v4}, Lcom/netease/download/httpdns2/HttpdnsProxy;->hasNext(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 461
    const-string v3, "DownloadPartCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "httpdns\u5206\u652f\u4e0b\u8f7d \uff0c \u5206\u7247="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPart()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \u9891\u9053="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns2/HttpdnsProxy;

    move-result-object v3

    const-string v4, "httpdns_config_cnd"

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/netease/download/httpdns2/HttpdnsProxy;->next(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;

    move-result-object v15

    .line 464
    .local v15, "httpdnsUrlSwitcherCoreUnit":Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;
    if-eqz v15, :cond_d

    .line 465
    iget-object v3, v15, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->host:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    .line 466
    iget-object v3, v15, Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;->ip:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    .line 467
    const-string v3, "DownloadPartCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5206\u7247="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPart()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u5206\u7247\u4e0b\u8f7d\u7684\u8bf7\u6c42\u7684host="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ip="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \u8bf7\u6c42\u94fe\u63a5="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/netease/download/downloader/DownloadParams;->getDownloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHeader:Ljava/util/Map;

    const-string v4, "Host"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    invoke-static {}, Lcom/netease/download/dns/CdnUseTimeProxy;->getInstance()Lcom/netease/download/dns/CdnUseTimeProxy;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/netease/download/dns/CdnUseTimeProxy;->start(Ljava/lang/String;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/netease/download/downloader/DownloadParams;->getDownloadUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "GET"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHeader:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->dealer:Lcom/netease/download/network/NetworkDealer;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/netease/download/network/NetUtil;->doHttpReq(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/Map;Lcom/netease/download/network/NetworkDealer;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v22

    goto/16 :goto_4

    .line 473
    .end local v15    # "httpdnsUrlSwitcherCoreUnit":Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;
    :catch_1
    move-exception v12

    .line 474
    .local v12, "e":Ljava/lang/Exception;
    const-string v3, "DownloadPartCore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 483
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_12
    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/download/network/NetController;->isInterrupted()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {}, Lcom/netease/download/network/NetworkStatus;->getNetStatus()I

    move-result v3

    if-eqz v3, :cond_e

    .line 485
    const-string v3, "DownloadPartCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[QAQA] part="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPart()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff0c\u5207\u6362\u5206\u7247\u4e4b\u524d\uff0chost\u4e3a="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ip="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    const-string v3, "DownloadPartCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "part="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPart()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff0cCdnIpController.getInstances().hasNextIp(host)="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/netease/download/dns/CdnIpController;->hasNextIp(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", CdnIpController.getInstances().hasNextUnit()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/netease/download/dns/CdnIpController;->hasNextUnit(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v3, "DownloadPartCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CdnIpController \u603b\u89c8="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/download/dns/CdnIpController;->mActualTimeMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/netease/download/dns/CdnIpController;->hasNextIp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/netease/download/dns/CdnIpController;->hasNextUnit(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 490
    :cond_13
    const-string v3, "\u5207\u6362\u5206\u7247"

    invoke-static {v3}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 491
    const-string v3, "DownloadPartCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isSlow="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mNeedRemove:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \u662f\u5426\u6700\u540e\u4e00\u4e2aip="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/netease/download/dns/CdnIpController;->isLastIp(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/netease/download/dns/CdnIpController;->isLastIp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mOversea:Z

    if-nez v3, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mOversea:Z

    if-nez v3, :cond_16

    .line 496
    :cond_15
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/netease/download/dns/CdnIpController;->removeIp(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :cond_16
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/netease/download/dns/CdnIpController;->hasNextIp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/netease/download/dns/CdnIpController;->hasNextUnit(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 500
    const-string v3, "DownloadPartCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6ca1\u6709\u4e0b\u4e00\u4e2aip\u4e86\uff0c\u76f4\u63a5\u5220\u9664\u8fd9\u4e2a\u5355\u5143\uff0c\u5220\u9664\u7684host="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mHost:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/netease/download/dns/CdnIpController;->removeUnit(Ljava/lang/String;)V

    .line 505
    :cond_17
    invoke-static {}, Lcom/netease/download/dns/CdnIpController;->getInstances()Lcom/netease/download/dns/CdnIpController;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/netease/download/dns/CdnIpController;->hasNextUnit(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 506
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mRestart:Z

    .line 507
    sget-object v3, Lcom/netease/download/Const$Stage;->RE_DOWNLOAD:Lcom/netease/download/Const$Stage;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/netease/download/downloadpart/DownloadPartCore;->downloadPart(Lcom/netease/download/downloader/DownloadParams;Lcom/netease/download/Const$Stage;)I

    move-result v22

    .line 530
    :cond_18
    :goto_5
    sget-object v3, Lcom/netease/download/Const$Stage;->NORMAL:Lcom/netease/download/Const$Stage;

    move-object/from16 v0, p2

    if-eq v0, v3, :cond_e

    goto/16 :goto_0

    .line 512
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mOversea:Z

    if-nez v3, :cond_18

    .line 513
    const-string v3, "\u5207\u6362httpdns"

    invoke-static {v3}, Lcom/netease/download/util/LogUtil;->stepLog(Ljava/lang/String;)V

    .line 515
    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns2/HttpdnsProxy;

    move-result-object v3

    const-string v4, "httpdns_config_cnd"

    invoke-virtual {v3, v4}, Lcom/netease/download/httpdns2/HttpdnsProxy;->containKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 516
    const-string v3, "DownloadPartCore"

    const-string v4, "\u5206\u7247\u4e2d\uff0c\u5f00\u59cbhttpdns"

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns2/HttpdnsProxy;

    move-result-object v3

    const-string v4, "httpdns_config_cnd"

    invoke-static {}, Lcom/netease/download/config2/ConfigProxy;->getInstances()Lcom/netease/download/config2/ConfigProxy;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/config2/ConfigProxy;->getResult()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v5

    invoke-virtual {v5}, Lcom/netease/download/config2/ConfigParams2;->getCndArray()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/netease/download/httpdns2/HttpdnsProxy;->synStart(Ljava/lang/String;[Ljava/lang/String;)V

    .line 524
    :goto_6
    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns2/HttpdnsProxy;

    move-result-object v3

    const-string v4, "httpdns_config_cnd"

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/netease/download/httpdns2/HttpdnsProxy;->next(Ljava/lang/String;Ljava/lang/String;)Lcom/netease/download/UrlSwitcher/HttpdnsUrlSwitcherCore$HttpdnsUrlSwitcherCoreUnit;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 525
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mRestart:Z

    .line 526
    sget-object v3, Lcom/netease/download/Const$Stage;->RE_DOWNLOAD:Lcom/netease/download/Const$Stage;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/netease/download/downloadpart/DownloadPartCore;->downloadPart(Lcom/netease/download/downloader/DownloadParams;Lcom/netease/download/Const$Stage;)I

    move-result v22

    goto :goto_5

    .line 520
    :cond_1a
    invoke-static {}, Lcom/netease/download/httpdns2/HttpdnsProxy;->getInstances()Lcom/netease/download/httpdns2/HttpdnsProxy;

    move-result-object v3

    const-string v4, "httpdns_config_cnd"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/netease/download/downloadpart/DownloadPartCore;->mIp:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getmChannel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/netease/download/httpdns2/HttpdnsProxy;->remove(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 545
    .restart local v23    # "resultCode":I
    :cond_1b
    const/16 v3, 0xc

    invoke-static {}, Lcom/netease/download/network/NetController;->getInstances()Lcom/netease/download/network/NetController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/download/network/NetController;->getInterruptedCode()I

    move-result v4

    if-ne v3, v4, :cond_1c

    .line 546
    const/16 v22, 0xc

    goto/16 :goto_0

    .line 551
    :cond_1c
    sget-object v3, Lcom/netease/download/Const$Stage;->NORMAL:Lcom/netease/download/Const$Stage;

    move-object/from16 v0, p2

    if-ne v0, v3, :cond_1d

    .line 552
    const-string v3, "DownloadPartCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5206\u7247"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/netease/download/downloader/DownloadParams;->getPart()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \u5206\u7247\u4e0b\u8f7d\uff0c\u6700\u540e\u7ed3\u679c resultCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    move/from16 v22, v23

    .line 555
    goto/16 :goto_0
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
    .line 560
    .local p1, "pHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-wide/16 v2, 0x0

    .line 562
    .local v2, "totalSize":J
    if-nez p1, :cond_0

    move-wide v4, v2

    .line 582
    .end local v2    # "totalSize":J
    .local v4, "totalSize":J
    :goto_0
    return-wide v4

    .line 566
    .end local v4    # "totalSize":J
    .restart local v2    # "totalSize":J
    :cond_0
    const/4 v1, 0x0

    .line 568
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v6, "Content-Length"

    invoke-interface {p1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 569
    const-string v6, "Content-Length"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/List;

    .line 572
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 573
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 574
    .local v0, "headerValue":Ljava/lang/String;
    const-string v6, "DownloadPartCore"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "processHeader, value="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/download/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 577
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-wide v4, v2

    .line 578
    .end local v2    # "totalSize":J
    .restart local v4    # "totalSize":J
    goto :goto_0

    .line 581
    .end local v0    # "headerValue":Ljava/lang/String;
    .end local v4    # "totalSize":J
    .restart local v2    # "totalSize":J
    :cond_2
    const-string v6, "DownloadPartCore"

    const-string v7, "no Content-Length found"

    invoke-static {v6, v7}, Lcom/netease/download/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v4, v2

    .line 582
    .end local v2    # "totalSize":J
    .restart local v4    # "totalSize":J
    goto :goto_0
.end method

.method private getPartFileSize()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mPartFileSize:J

    return-wide v0
.end method

.method private setPartFileSize(J)V
    .locals 1
    .param p1, "pPartFileSize"    # J

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mPartFileSize:J

    .line 87
    return-void
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 589
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/netease/download/downloadpart/DownloadPartCore;->start()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
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
    invoke-virtual {p0}, Lcom/netease/download/downloadpart/DownloadPartCore;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/netease/download/downloader/DownloadParams;Lcom/netease/download/Const$Stage;I)V
    .locals 2
    .param p1, "downloadParams"    # Lcom/netease/download/downloader/DownloadParams;
    .param p2, "stage"    # Lcom/netease/download/Const$Stage;
    .param p3, "type"    # I

    .prologue
    .line 110
    iput-object p1, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    .line 111
    iput p3, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mType:I

    .line 112
    iput-object p2, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mState:Lcom/netease/download/Const$Stage;

    .line 113
    invoke-static {}, Lcom/netease/download/downloader/DownloadInitInfo;->getInstances()Lcom/netease/download/downloader/DownloadInitInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/download/downloader/DownloadInitInfo;->getOverSea()Ljava/lang/String;

    move-result-object v0

    .line 115
    .local v0, "overSea":Ljava/lang/String;
    const-string v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mOversea:Z

    .line 118
    :cond_1
    return-void
.end method

.method public start()I
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mLogData:Ljava/util/HashMap;

    const-string v1, "removecdn"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    iget-object v0, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mDownloadParams:Lcom/netease/download/downloader/DownloadParams;

    iget-object v1, p0, Lcom/netease/download/downloadpart/DownloadPartCore;->mState:Lcom/netease/download/Const$Stage;

    invoke-direct {p0, v0, v1}, Lcom/netease/download/downloadpart/DownloadPartCore;->downloadPart(Lcom/netease/download/downloader/DownloadParams;Lcom/netease/download/Const$Stage;)I

    move-result v0

    return v0
.end method
