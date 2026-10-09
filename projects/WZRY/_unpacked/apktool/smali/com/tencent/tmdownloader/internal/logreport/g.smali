.class public Lcom/tencent/tmdownloader/internal/logreport/g;
.super Lcom/tencent/tmdownloader/internal/logreport/b;
.source "ProGuard"


# static fields
.field protected static d:Lcom/tencent/tmdownloader/internal/logreport/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmdownloader/internal/logreport/g;->d:Lcom/tencent/tmdownloader/internal/logreport/g;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/tencent/tmdownloader/internal/logreport/b;-><init>()V

    .line 25
    return-void
.end method

.method public static declared-synchronized h()Lcom/tencent/tmdownloader/internal/logreport/g;
    .locals 2

    .prologue
    .line 34
    const-class v1, Lcom/tencent/tmdownloader/internal/logreport/g;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmdownloader/internal/logreport/g;->d:Lcom/tencent/tmdownloader/internal/logreport/g;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/tencent/tmdownloader/internal/logreport/g;

    invoke-direct {v0}, Lcom/tencent/tmdownloader/internal/logreport/g;-><init>()V

    sput-object v0, Lcom/tencent/tmdownloader/internal/logreport/g;->d:Lcom/tencent/tmdownloader/internal/logreport/g;

    .line 38
    :cond_0
    sget-object v0, Lcom/tencent/tmdownloader/internal/logreport/g;->d:Lcom/tencent/tmdownloader/internal/logreport/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;B)V
    .locals 4

    .prologue
    .line 52
    const-string v0, "InstallReportManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " buildInstallLogInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/a;->a()Lcom/tencent/tmdownloader/internal/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/tmdownloader/internal/b/a;->c(Ljava/lang/String;)Lcom/tencent/tmdownloader/internal/a/d;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    new-instance v1, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;

    invoke-direct {v1}, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;-><init>()V

    .line 56
    iget-wide v2, v0, Lcom/tencent/tmdownloader/internal/a/d;->t:J

    iput-wide v2, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->appId:J

    .line 57
    iget-object v2, v0, Lcom/tencent/tmdownloader/internal/a/d;->C:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->channelId:Ljava/lang/String;

    .line 58
    iget-wide v2, v0, Lcom/tencent/tmdownloader/internal/a/d;->y:J

    iput-wide v2, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->downloadDate:J

    .line 59
    iget-object v2, v0, Lcom/tencent/tmdownloader/internal/a/d;->E:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->extradata:Ljava/lang/String;

    .line 60
    iget-object v2, v0, Lcom/tencent/tmdownloader/internal/a/d;->u:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->taskPackageName:Ljava/lang/String;

    .line 61
    iget-object v2, v0, Lcom/tencent/tmdownloader/internal/a/d;->v:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->taskVersioncode:Ljava/lang/String;

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->time:J

    .line 63
    iget-wide v2, v0, Lcom/tencent/tmdownloader/internal/a/d;->z:J

    iput-wide v2, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->uin:J

    .line 64
    iget-object v2, v0, Lcom/tencent/tmdownloader/internal/a/d;->A:Ljava/lang/String;

    iput-object v2, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->uintype:Ljava/lang/String;

    .line 65
    iget-object v0, v0, Lcom/tencent/tmdownloader/internal/a/d;->B:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->via:Ljava/lang/String;

    .line 66
    iput-byte p2, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->type:B

    .line 67
    const-string v0, "1.0"

    iput-object v0, v1, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->sdkVersionInfo:Ljava/lang/String;

    .line 68
    invoke-virtual {p0, v1}, Lcom/tencent/tmdownloader/internal/logreport/g;->a(Lcom/qq/taf/jce/JceStruct;)V

    .line 69
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/logreport/g;->c()V

    .line 70
    invoke-virtual {p0}, Lcom/tencent/tmdownloader/internal/logreport/g;->d()V

    .line 71
    const-string v0, "InstallReportManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " install log msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/tencent/tmdownloader/internal/protocol/jce/InstalledStatLogInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method

.method protected e()Lcom/tencent/tmdownloader/internal/b/c/a;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/tencent/tmdownloader/internal/b/c/k;->g()Lcom/tencent/tmdownloader/internal/b/c/k;

    move-result-object v0

    return-object v0
.end method

.method protected f()B
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x5

    return v0
.end method

.method protected g()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method
