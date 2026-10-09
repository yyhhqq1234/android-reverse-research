.class public Lcom/tencent/tmdownloader/internal/logreport/d;
.super Lcom/tencent/tmdownloader/internal/logreport/b;
.source "ProGuard"


# static fields
.field protected static d:Lcom/tencent/tmdownloader/internal/logreport/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmdownloader/internal/logreport/d;->d:Lcom/tencent/tmdownloader/internal/logreport/d;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/tencent/tmdownloader/internal/logreport/b;-><init>()V

    .line 27
    return-void
.end method

.method public static a(Lcom/tencent/tmdownloader/internal/a/d;)Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;
    .locals 8

    .prologue
    .line 78
    new-instance v1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;

    invoke-direct {v1}, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;-><init>()V

    .line 79
    if-eqz p0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/d;->f:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->taskId:Ljava/lang/String;

    .line 84
    const-string v0, "1.0"

    iput-object v0, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->sdkVersion:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/d;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tmdownloader/internal/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->usedcard:Ljava/lang/String;

    .line 86
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/c;->d()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->memorySize:J

    .line 87
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/c;->e()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->remainsdCardSize:J

    .line 88
    iget-wide v2, p0, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    iput-wide v2, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->pkg_size:J

    .line 89
    iget-wide v2, p0, Lcom/tencent/tmdownloader/internal/a/d;->x:J

    iput-wide v2, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->startTime:J

    .line 90
    iget v0, p0, Lcom/tencent/tmdownloader/internal/a/d;->F:I

    int-to-byte v0, v0

    iput-byte v0, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->downType:B

    .line 91
    iget-object v0, p0, Lcom/tencent/tmdownloader/internal/a/d;->H:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->extMsg:Ljava/lang/String;

    .line 92
    iget v0, p0, Lcom/tencent/tmdownloader/internal/a/d;->o:I

    iput v0, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->taskResult:I

    .line 93
    iget v0, p0, Lcom/tencent/tmdownloader/internal/a/d;->i:I

    int-to-byte v0, v0

    iput-byte v0, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->result:B

    .line 94
    iget-object v0, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->taskId:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/tmdownloader/internal/logreport/d;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->downloadChunkLogList:Ljava/util/ArrayList;

    .line 95
    const-string v0, "DownloadQualityReportManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qulitylogInfo : info.taskId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " info.sdkVersion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->sdkVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "info.usedcard = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->usedcard:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " info.memorySize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->memorySize:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " info.remainsdCardSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->remainsdCardSize:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " info.pkg_size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->pkg_size:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " info.startTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->startTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " info.endTime= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->endTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " info.extMsg ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->extMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "info.downType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->downType:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "info.taskResult ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->taskResult:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "info.Result ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-byte v3, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->result:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->downloadChunkLogList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->downloadChunkLogList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadQualityLogInfo;->downloadChunkLogList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;

    .line 102
    const-string v3, "DownloadQualityReportManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "downloadChunkLogList: chunkinfo.segId ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->segId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " chunkinfo.taskId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "chunkinfo.downUrl = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->downUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " chunkinfo.jumpUrl="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->jumpUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "chunkinfo.finalDownloadUrl = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->finalDownloadUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " chunkinfo.networkType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->networkType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " chunkinfo.contentType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->contentType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " chunkinfo.down_Size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->down_Size:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " chunkinfo.costTime ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->costTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " chunkinfo.startTime= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->startTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " chunkinfo.endTime= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->endTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " chunkinfo.taskResult = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskResult:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " chunkinfo.result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-byte v0, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->result:B

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 113
    :cond_0
    return-object v1
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 141
    const-class v1, Lcom/tencent/tmdownloader/internal/logreport/d;

    monitor-enter v1

    :try_start_0
    const-string v0, "DownloadQualityReportManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delDownloadNewChunkLogData enter:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-static {p0}, Lcom/tencent/tmdownloader/internal/b/c/e;->a(Ljava/lang/String;)V

    .line 147
    :cond_0
    const-string v0, "DownloadQualityReportManager"

    const-string v2, "exit"

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit v1

    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    .prologue
    .line 151
    const-string v0, "DownloadQualityReportManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDownloadNewChunkLogInfoList enter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-static {p0}, Lcom/tencent/tmdownloader/internal/b/c/e;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 157
    :cond_0
    const-string v0, "DownloadQualityReportManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized h()Lcom/tencent/tmdownloader/internal/logreport/d;
    .locals 2

    .prologue
    .line 36
    const-class v1, Lcom/tencent/tmdownloader/internal/logreport/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmdownloader/internal/logreport/d;->d:Lcom/tencent/tmdownloader/internal/logreport/d;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/tencent/tmdownloader/internal/logreport/d;

    invoke-direct {v0}, Lcom/tencent/tmdownloader/internal/logreport/d;-><init>()V

    sput-object v0, Lcom/tencent/tmdownloader/internal/logreport/d;->d:Lcom/tencent/tmdownloader/internal/logreport/d;

    .line 40
    :cond_0
    sget-object v0, Lcom/tencent/tmdownloader/internal/logreport/d;->d:Lcom/tencent/tmdownloader/internal/logreport/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(B)Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;
    .locals 4

    .prologue
    .line 63
    const-string v0, "DownloadQualityReportManager"

    const-string v1, "createNewChunkLogInfo enter"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;

    invoke-direct {v0}, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;-><init>()V

    .line 66
    invoke-static {}, Lcom/tencent/tmdownloader/internal/a/c;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->networkType:Ljava/lang/String;

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->startTime:J

    .line 68
    const-string v1, "DownloadQualityReportManager"

    const-string v2, "exit"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-object v0
.end method

.method public declared-synchronized a(Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;)V
    .locals 5

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    const-string v0, "DownloadQualityReportManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDownloadNewChunkLogData enter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;->taskId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    if-eqz p1, :cond_0

    .line 128
    invoke-static {p1}, Lcom/tencent/tmdownloader/internal/b/c/e;->a(Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadNewChunkLogInfo;)J

    move-result-wide v0

    .line 129
    const-string v2, "DownloadQualityReportManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addDownloadNewChunkLogData ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_0
    const-string v0, "DownloadQualityReportManager"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected e()Lcom/tencent/tmdownloader/internal/b/c/a;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/c/h;->g()Lcom/tencent/tmdownloader/internal/b/c/h;

    move-result-object v0

    return-object v0
.end method

.method protected f()B
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x6

    return v0
.end method

.method protected g()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method
