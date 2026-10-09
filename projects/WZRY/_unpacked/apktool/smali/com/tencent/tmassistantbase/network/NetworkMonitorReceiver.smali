.class public Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# static fields
.field protected static final MSG_DELAY_TIME:I = 0xdac

.field protected static final MSG_resumeDownloadTime:I = 0x43

.field protected static final TAG:Ljava/lang/String; = "NetworkMonitorReceiver"

.field protected static mInstance:Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;

.field protected static mNetworkChangedHandler:Landroid/os/Handler;


# instance fields
.field a:Ljava/util/ArrayList;

.field protected isRegisterReceiver:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->mInstance:Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->isRegisterReceiver:Z

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;
    .locals 2

    .prologue
    .line 41
    const-class v1, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->mInstance:Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;

    invoke-direct {v0}, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;-><init>()V

    sput-object v0, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->mInstance:Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;

    .line 45
    :cond_0
    sget-object v0, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->mInstance:Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addNetworkChangedObserver(Lcom/tencent/tmassistantbase/network/INetworkChangedObserver;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_0
    return-void
.end method

.method public notifyNetworkChanged()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistantbase/network/INetworkChangedObserver;

    .line 138
    invoke-interface {v0}, Lcom/tencent/tmassistantbase/network/INetworkChangedObserver;->onNetworkChanged()V

    goto :goto_0

    .line 140
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/16 v2, 0x43

    .line 70
    const-string v0, "NetworkMonitorReceiver"

    const-string v1, "network changed!"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->mNetworkChangedHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver$NetMsgHandler;

    invoke-direct {v0, p0}, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver$NetMsgHandler;-><init>(Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;)V

    sput-object v0, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->mNetworkChangedHandler:Landroid/os/Handler;

    .line 74
    :cond_0
    sget-object v0, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->mNetworkChangedHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 75
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 76
    iput v2, v0, Landroid/os/Message;->what:I

    .line 77
    sget-object v1, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->mNetworkChangedHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xdac

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 78
    return-void
.end method

.method public registerReceiver()V
    .locals 3

    .prologue
    .line 84
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 85
    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    :try_start_0
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->isRegisterReceiver:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->isRegisterReceiver:Z

    .line 95
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public removeNetworkChangedObserver(Lcom/tencent/tmassistantbase/network/INetworkChangedObserver;)V
    .locals 1

    .prologue
    .line 131
    if-eqz p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 134
    :cond_0
    return-void
.end method

.method public unregisterReceiver()V
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->mInstance:Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;

    if-nez v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    .line 113
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->isRegisterReceiver:Z

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tmassistantbase/network/NetworkMonitorReceiver;->isRegisterReceiver:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
