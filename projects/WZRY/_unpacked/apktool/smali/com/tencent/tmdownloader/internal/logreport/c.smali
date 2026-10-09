.class public Lcom/tencent/tmdownloader/internal/logreport/c;
.super Lcom/tencent/tmdownloader/internal/logreport/b;
.source "ProGuard"


# static fields
.field protected static final d:Ljava/lang/String;

.field protected static e:Lcom/tencent/tmdownloader/internal/logreport/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/tencent/tmdownloader/internal/logreport/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmdownloader/internal/logreport/c;->d:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmdownloader/internal/logreport/c;->e:Lcom/tencent/tmdownloader/internal/logreport/c;

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

.method public static declared-synchronized a(Lcom/tencent/tmdownloader/internal/a/d;)Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;
    .locals 5

    .prologue
    .line 35
    const-class v1, Lcom/tencent/tmdownloader/internal/logreport/c;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;

    invoke-direct {v0}, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;-><init>()V

    .line 36
    if-eqz p0, :cond_0

    .line 40
    iget-wide v2, p0, Lcom/tencent/tmdownloader/internal/a/d;->t:J

    iput-wide v2, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->appId:J

    .line 41
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/d;->u:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->taskPackageName:Ljava/lang/String;

    .line 42
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/d;->v:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->taskVersioncode:Ljava/lang/String;

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->starTime:J

    .line 44
    const-string v2, ""

    iput-object v2, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->clientIp:Ljava/lang/String;

    .line 45
    iget v2, p0, Lcom/tencent/tmdownloader/internal/a/d;->o:I

    iput v2, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->errorCode:I

    .line 46
    iget-wide v2, p0, Lcom/tencent/tmdownloader/internal/a/d;->k:J

    iput-wide v2, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->totalFileSize:J

    .line 47
    iget v2, p0, Lcom/tencent/tmdownloader/internal/a/d;->i:I

    int-to-byte v2, v2

    iput-byte v2, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->result:B

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->reportTime:J

    .line 49
    iget-wide v2, p0, Lcom/tencent/tmdownloader/internal/a/d;->z:J

    iput-wide v2, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->uin:J

    .line 50
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/d;->A:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->uintype:Ljava/lang/String;

    .line 51
    const-string v2, "1.0"

    iput-object v2, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->sdkVersionInfo:Ljava/lang/String;

    .line 52
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/d;->B:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->via:Ljava/lang/String;

    .line 53
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/d;->C:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->channelId:Ljava/lang/String;

    .line 54
    iget v2, p0, Lcom/tencent/tmdownloader/internal/a/d;->F:I

    int-to-byte v2, v2

    iput-byte v2, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->downType:B

    .line 55
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/d;->D:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->traceId:Ljava/lang/String;

    .line 56
    iget-object v2, p0, Lcom/tencent/tmdownloader/internal/a/d;->E:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->extradata:Ljava/lang/String;

    .line 57
    const-string v2, "BusinessDownloadReportManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "statlogInfo : | taskPackageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->taskPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->result:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " downloadType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->downType:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " via:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->via:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " traceId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/tencent/tmdownloader/internal/protocol/jce/DownloadStatLogInfo;->traceId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized h()Lcom/tencent/tmdownloader/internal/logreport/c;
    .locals 2

    .prologue
    .line 71
    const-class v1, Lcom/tencent/tmdownloader/internal/logreport/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmdownloader/internal/logreport/c;->e:Lcom/tencent/tmdownloader/internal/logreport/c;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/tencent/tmdownloader/internal/logreport/c;

    invoke-direct {v0}, Lcom/tencent/tmdownloader/internal/logreport/c;-><init>()V

    sput-object v0, Lcom/tencent/tmdownloader/internal/logreport/c;->e:Lcom/tencent/tmdownloader/internal/logreport/c;

    .line 75
    :cond_0
    sget-object v0, Lcom/tencent/tmdownloader/internal/logreport/c;->e:Lcom/tencent/tmdownloader/internal/logreport/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected e()Lcom/tencent/tmdownloader/internal/b/c/a;
    .locals 1

    .prologue
    .line 80
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/c/c;->g()Lcom/tencent/tmdownloader/internal/b/c/c;

    move-result-object v0

    return-object v0
.end method

.method protected f()B
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x4

    return v0
.end method

.method protected g()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method
