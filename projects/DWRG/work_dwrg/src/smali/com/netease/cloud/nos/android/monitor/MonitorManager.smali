.class public Lcom/netease/cloud/nos/android/monitor/MonitorManager;
.super Ljava/lang/Object;
.source "MonitorManager.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field private static conn:Landroid/content/ServiceConnection;

.field private static iSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

.field private static monitorConfigInit:Z

.field private static refCount:I

.field private static running:Z


# instance fields
.field private ctx:Landroid/content/Context;

.field private instConn:Landroid/content/ServiceConnection;

.field private instSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

.field private item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    const-class v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    .line 18
    sput-boolean v1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->monitorConfigInit:Z

    .line 116
    sput-boolean v1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->running:Z

    .line 117
    sput v1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->refCount:I

    .line 118
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->iSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    .line 119
    new-instance v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager$2;

    invoke-direct {v0}, Lcom/netease/cloud/nos/android/monitor/MonitorManager$2;-><init>()V

    sput-object v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->conn:Landroid/content/ServiceConnection;

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netease/cloud/nos/android/monitor/StatisticItem;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->ctx:Landroid/content/Context;

    .line 22
    iput-object v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    .line 23
    iput-object v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    .line 24
    new-instance v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager$1;

    invoke-direct {v0, p0}, Lcom/netease/cloud/nos/android/monitor/MonitorManager$1;-><init>(Lcom/netease/cloud/nos/android/monitor/MonitorManager;)V

    iput-object v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instConn:Landroid/content/ServiceConnection;

    .line 44
    iput-object p1, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->ctx:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/netease/cloud/nos/android/monitor/MonitorManager;Lcom/netease/cloud/nos/android/monitor/ISendStat;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    return-void
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/netease/cloud/nos/android/monitor/MonitorManager;)Lcom/netease/cloud/nos/android/monitor/ISendStat;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    return-object v0
.end method

.method static synthetic access$3(Lcom/netease/cloud/nos/android/monitor/ISendStat;)V
    .locals 0

    .prologue
    .line 118
    sput-object p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->iSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    return-void
.end method

.method static synthetic access$4()Lcom/netease/cloud/nos/android/monitor/ISendStat;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->iSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    return-object v0
.end method

.method public static declared-synchronized endService(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 175
    const-class v1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->refCount:I

    if-eqz v0, :cond_0

    sget v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->refCount:I

    add-int/lit8 v2, v0, -0x1

    sput v2, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->refCount:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 176
    :cond_0
    sget-object v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MonitorService has binded to else or unbinded: refCount="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    sget v3, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->refCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-static {v0, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    :goto_0
    monitor-exit v1

    return-void

    .line 182
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 183
    sget-object v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    const-string v2, "unbind MonitorService success"

    invoke-static {v0, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized runService(Landroid/content/Context;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 187
    const-class v1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 194
    :goto_0
    monitor-exit v1

    return-void

    .line 191
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->running:Z

    .line 192
    sget-object v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    const-string v2, "init MonitorService"

    invoke-static {v0, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/netease/cloud/nos/android/service/MonitorService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static sendStatItem(Landroid/content/Context;Lcom/netease/cloud/nos/android/monitor/StatisticItem;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "item"    # Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    .prologue
    .line 137
    sget-object v1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->iSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    if-nez v1, :cond_0

    .line 138
    sget-object v1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    const-string v2, "iSendStat is null, bind to MonitorService"

    invoke-static {v1, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {p0}, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->runService(Landroid/content/Context;)V

    .line 141
    new-instance v1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;

    invoke-direct {v1, p0, p1}, Lcom/netease/cloud/nos/android/monitor/MonitorManager;-><init>(Landroid/content/Context;Lcom/netease/cloud/nos/android/monitor/StatisticItem;)V

    invoke-virtual {v1}, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instStartService()V

    .line 153
    :goto_0
    return-void

    .line 146
    :cond_0
    :try_start_0
    sget-object v1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->iSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    invoke-interface {v1, p1}, Lcom/netease/cloud/nos/android/monitor/ISendStat;->sendStat(Lcom/netease/cloud/nos/android/monitor/StatisticItem;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    .line 149
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send Statistic data exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 150
    const-string v3, "iSendStat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->iSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-static {v1, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized startService(Landroid/content/Context;)V
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 157
    const-class v3, Lcom/netease/cloud/nos/android/monitor/MonitorManager;

    monitor-enter v3

    :try_start_0
    sget v2, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->refCount:I

    add-int/lit8 v4, v2, 0x1

    sput v4, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->refCount:I

    if-lez v2, :cond_1

    .line 158
    sget-object v2, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "MonitorService has binded: refCount="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->refCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :cond_0
    :goto_0
    monitor-exit v3

    return-void

    .line 162
    :cond_1
    :try_start_1
    sget-object v2, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->iSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    if-nez v2, :cond_0

    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 168
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/netease/cloud/nos/android/service/MonitorService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .local v1, "service":Landroid/content/Intent;
    sget-object v2, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->conn:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 170
    sget-object v2, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bind MonitorService, iSendStat="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->iSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 157
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "service":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public instEndService()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 112
    sget-object v0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    const-string v1, "unbind MonitorService success"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method public instSendConfig()V
    .locals 7

    .prologue
    .line 53
    iget-object v1, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    if-nez v1, :cond_1

    .line 54
    sget-object v1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    const-string v2, "instSendStat is null, not bind to MonitorService"

    invoke-static {v1, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    sget-boolean v1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->monitorConfigInit:Z

    if-nez v1, :cond_0

    .line 62
    :try_start_0
    new-instance v0, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;

    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getMonitorHost()Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getConnectionTimeout()I

    move-result v2

    .line 64
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getSoTimeout()I

    move-result v3

    .line 65
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getMonitorInterval()J

    move-result-wide v4

    .line 62
    invoke-direct/range {v0 .. v5}, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;-><init>(Ljava/lang/String;IIJ)V

    .line 66
    .local v0, "config":Lcom/netease/cloud/nos/android/monitor/MonitorConfig;
    iget-object v1, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    invoke-interface {v1, v0}, Lcom/netease/cloud/nos/android/monitor/ISendStat;->sendConfig(Lcom/netease/cloud/nos/android/monitor/MonitorConfig;)V

    .line 67
    sget-object v1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    const-string v2, "send config to MonitorService"

    invoke-static {v1, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    .end local v0    # "config":Lcom/netease/cloud/nos/android/monitor/MonitorConfig;
    :catch_0
    move-exception v6

    .line 69
    .local v6, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send MonitorConfig exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 71
    const-string v3, "instSendStat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 69
    invoke-static {v1, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public instSendStatItem()V
    .locals 4

    .prologue
    .line 80
    iget-object v1, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    if-nez v1, :cond_0

    .line 81
    sget-object v1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    const-string v2, "instSendStat is null, not bind to MonitorService"

    invoke-static {v1, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_0
    return-void

    .line 86
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    iget-object v2, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->item:Lcom/netease/cloud/nos/android/monitor/StatisticItem;

    invoke-interface {v1, v2}, Lcom/netease/cloud/nos/android/monitor/ISendStat;->sendStat(Lcom/netease/cloud/nos/android/monitor/StatisticItem;)Z

    move-result v1

    sput-boolean v1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->monitorConfigInit:Z

    .line 87
    sget-object v1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send statistic to MonitorService, get configInit "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    sget-boolean v3, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->monitorConfigInit:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {v1, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    .line 91
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "send Statistic data exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 92
    const-string v3, "instSendStat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-static {v1, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public instStartService()V
    .locals 4

    .prologue
    .line 99
    iget-object v1, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    if-eqz v1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->ctx:Landroid/content/Context;

    const-class v2, Lcom/netease/cloud/nos/android/service/MonitorService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .local v0, "service":Landroid/content/Intent;
    iget-object v1, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 106
    sget-object v1, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bind MonitorService, instSendStat="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instSendStat:Lcom/netease/cloud/nos/android/monitor/ISendStat;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
