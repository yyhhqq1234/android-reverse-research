.class final Lcom/tencent/component/plugin/service/ServiceManagerClient;
.super Ljava/lang/Object;
.source "ServiceManagerClient.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceManagerClient"

.field private static volatile sHandler:Landroid/os/Handler;


# instance fields
.field private final SERVICE_LOCK:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private volatile mService:Lcom/tencent/component/plugin/service/ILeafServiceManager;

.field private final mServiceCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mTreeServiceClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "treeServiceClass"    # Ljava/lang/Class;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient;->SERVICE_LOCK:Ljava/lang/Object;

    .line 30
    const-class v0, Lcom/tencent/component/plugin/TreeService;

    iput-object v0, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient;->mTreeServiceClass:Ljava/lang/Class;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient;->mServiceCache:Ljava/util/HashMap;

    .line 50
    iput-object p2, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient;->mTreeServiceClass:Ljava/lang/Class;

    .line 51
    iget-object v0, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient;->mTreeServiceClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 52
    const-class v0, Lcom/tencent/component/plugin/TreeService;

    iput-object v0, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient;->mTreeServiceClass:Ljava/lang/Class;

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient;->mContext:Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Lcom/tencent/component/plugin/service/ServiceManagerClient;->bindService()Z

    .line 56
    return-void
.end method

.method static synthetic access$002(Lcom/tencent/component/plugin/service/ServiceManagerClient;Lcom/tencent/component/plugin/service/ILeafServiceManager;)Lcom/tencent/component/plugin/service/ILeafServiceManager;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/component/plugin/service/ServiceManagerClient;
    .param p1, "x1"    # Lcom/tencent/component/plugin/service/ILeafServiceManager;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient;->mService:Lcom/tencent/component/plugin/service/ILeafServiceManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tencent/component/plugin/service/ServiceManagerClient;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/component/plugin/service/ServiceManagerClient;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient;->SERVICE_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/component/plugin/service/ServiceManagerClient;)Lcom/tencent/component/plugin/service/ILeafServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/component/plugin/service/ServiceManagerClient;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/tencent/component/plugin/service/ServiceManagerClient;->obtainServiceManager()Lcom/tencent/component/plugin/service/ILeafServiceManager;

    move-result-object v0

    return-object v0
.end method

.method private bindService()Z
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient;->mTreeServiceClass:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Lcom/tencent/component/plugin/service/ServiceManagerClient$1;

    invoke-direct {v2, p0}, Lcom/tencent/component/plugin/service/ServiceManagerClient$1;-><init>(Lcom/tencent/component/plugin/service/ServiceManagerClient;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method private static getHandler()Landroid/os/Handler;
    .locals 4

    .prologue
    .line 33
    sget-object v1, Lcom/tencent/component/plugin/service/ServiceManagerClient;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 34
    const-class v2, Lcom/tencent/component/plugin/service/ServiceManagerClient;

    monitor-enter v2

    .line 35
    :try_start_0
    sget-object v1, Lcom/tencent/component/plugin/service/ServiceManagerClient;->sHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 36
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "service_mgr"

    const/16 v3, 0xa

    invoke-direct {v0, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 37
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 38
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/tencent/component/plugin/service/ServiceManagerClient;->sHandler:Landroid/os/Handler;

    .line 40
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_1
    sget-object v1, Lcom/tencent/component/plugin/service/ServiceManagerClient;->sHandler:Landroid/os/Handler;

    return-object v1

    .line 40
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static isServiceAlive(Landroid/os/IBinder;)Z
    .locals 1
    .param p0, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 221
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isServiceManagerAlive()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient;->mService:Lcom/tencent/component/plugin/service/ILeafServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient;->mService:Lcom/tencent/component/plugin/service/ILeafServiceManager;

    invoke-interface {v0}, Lcom/tencent/component/plugin/service/ILeafServiceManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private obtainServiceManager()Lcom/tencent/component/plugin/service/ILeafServiceManager;
    .locals 6

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/tencent/component/plugin/service/ServiceManagerClient;->isServiceManagerAlive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "count":I
    invoke-direct {p0}, Lcom/tencent/component/plugin/service/ServiceManagerClient;->bindService()Z

    .line 81
    :goto_0
    invoke-direct {p0}, Lcom/tencent/component/plugin/service/ServiceManagerClient;->isServiceManagerAlive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0xa

    if-le v0, v2, :cond_1

    .line 100
    .end local v0    # "count":I
    :cond_0
    iget-object v2, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient;->mService:Lcom/tencent/component/plugin/service/ILeafServiceManager;

    return-object v2

    .line 87
    .restart local v0    # "count":I
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient;->SERVICE_LOCK:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :try_start_1
    iget-object v2, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient;->SERVICE_LOCK:Ljava/lang/Object;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :goto_1
    :try_start_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "ServiceManagerClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService(Reason.Restart) exception  :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public bindService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/component/plugin/service/ILeafServiceConnection;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "platformId"    # Ljava/lang/String;
    .param p2, "pluginId"    # Ljava/lang/String;
    .param p3, "leafServiceClassName"    # Ljava/lang/String;
    .param p4, "connection"    # Lcom/tencent/component/plugin/service/ILeafServiceConnection;
    .param p5, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    iget-object v2, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient;->mServiceCache:Ljava/util/HashMap;

    monitor-enter v2

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient;->mServiceCache:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/IBinder;

    .line 111
    .local v8, "service":Landroid/os/IBinder;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    if-eqz v8, :cond_1

    invoke-static {v8}, Lcom/tencent/component/plugin/service/ServiceManagerClient;->isServiceAlive(Landroid/os/IBinder;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    :try_start_1
    invoke-interface {p4, p3, v8}, Lcom/tencent/component/plugin/service/ILeafServiceConnection;->connected(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 111
    .end local v8    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 120
    .restart local v8    # "service":Landroid/os/IBinder;
    :cond_1
    invoke-direct {p0}, Lcom/tencent/component/plugin/service/ServiceManagerClient;->isServiceManagerAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    invoke-direct {p0}, Lcom/tencent/component/plugin/service/ServiceManagerClient;->obtainServiceManager()Lcom/tencent/component/plugin/service/ILeafServiceManager;

    move-result-object v0

    .line 122
    .local v0, "leafServiceManager":Lcom/tencent/component/plugin/service/ILeafServiceManager;
    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 123
    invoke-interface/range {v0 .. v5}, Lcom/tencent/component/plugin/service/ILeafServiceManager;->bindService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/component/plugin/service/ILeafServiceConnection;Landroid/os/Bundle;)V

    goto :goto_0

    .line 127
    .end local v0    # "leafServiceManager":Lcom/tencent/component/plugin/service/ILeafServiceManager;
    :cond_2
    invoke-static {}, Lcom/tencent/component/plugin/service/ServiceManagerClient;->getHandler()Landroid/os/Handler;

    move-result-object v9

    new-instance v1, Lcom/tencent/component/plugin/service/ServiceManagerClient$2;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/tencent/component/plugin/service/ServiceManagerClient$2;-><init>(Lcom/tencent/component/plugin/service/ServiceManagerClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/component/plugin/service/ILeafServiceConnection;Landroid/os/Bundle;)V

    invoke-virtual {v9, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 116
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public startService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "platformId"    # Ljava/lang/String;
    .param p2, "pluginId"    # Ljava/lang/String;
    .param p3, "leafServiceClassName"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-direct {p0}, Lcom/tencent/component/plugin/service/ServiceManagerClient;->isServiceManagerAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    invoke-direct {p0}, Lcom/tencent/component/plugin/service/ServiceManagerClient;->obtainServiceManager()Lcom/tencent/component/plugin/service/ILeafServiceManager;

    move-result-object v6

    .line 174
    .local v6, "leafServiceManager":Lcom/tencent/component/plugin/service/ILeafServiceManager;
    if-eqz v6, :cond_0

    .line 175
    invoke-interface {v6, p1, p2, p3, p4}, Lcom/tencent/component/plugin/service/ILeafServiceManager;->startService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 193
    .end local v6    # "leafServiceManager":Lcom/tencent/component/plugin/service/ILeafServiceManager;
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-static {}, Lcom/tencent/component/plugin/service/ServiceManagerClient;->getHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/tencent/component/plugin/service/ServiceManagerClient$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/component/plugin/service/ServiceManagerClient$4;-><init>(Lcom/tencent/component/plugin/service/ServiceManagerClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public stopService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "platformId"    # Ljava/lang/String;
    .param p2, "pluginId"    # Ljava/lang/String;
    .param p3, "leafServiceClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/tencent/component/plugin/service/ServiceManagerClient;->isServiceManagerAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    invoke-direct {p0}, Lcom/tencent/component/plugin/service/ServiceManagerClient;->obtainServiceManager()Lcom/tencent/component/plugin/service/ILeafServiceManager;

    move-result-object v0

    .line 198
    .local v0, "leafServiceManager":Lcom/tencent/component/plugin/service/ILeafServiceManager;
    if-eqz v0, :cond_0

    .line 199
    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/component/plugin/service/ILeafServiceManager;->stopService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .end local v0    # "leafServiceManager":Lcom/tencent/component/plugin/service/ILeafServiceManager;
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    invoke-static {}, Lcom/tencent/component/plugin/service/ServiceManagerClient;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/tencent/component/plugin/service/ServiceManagerClient$5;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/tencent/component/plugin/service/ServiceManagerClient$5;-><init>(Lcom/tencent/component/plugin/service/ServiceManagerClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public unbindService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/component/plugin/service/ILeafServiceConnection;)V
    .locals 8
    .param p1, "platformId"    # Ljava/lang/String;
    .param p2, "pluginId"    # Ljava/lang/String;
    .param p3, "leafServiceClassName"    # Ljava/lang/String;
    .param p4, "connection"    # Lcom/tencent/component/plugin/service/ILeafServiceConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 145
    iget-object v1, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient;->mServiceCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient;->mServiceCache:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-direct {p0}, Lcom/tencent/component/plugin/service/ServiceManagerClient;->isServiceManagerAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-direct {p0}, Lcom/tencent/component/plugin/service/ServiceManagerClient;->obtainServiceManager()Lcom/tencent/component/plugin/service/ILeafServiceManager;

    move-result-object v6

    .line 150
    .local v6, "leafServiceManager":Lcom/tencent/component/plugin/service/ILeafServiceManager;
    if-eqz v6, :cond_0

    .line 151
    invoke-interface {v6, p1, p2, p3, p4}, Lcom/tencent/component/plugin/service/ILeafServiceManager;->unbindService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/component/plugin/service/ILeafServiceConnection;)V

    .line 169
    .end local v6    # "leafServiceManager":Lcom/tencent/component/plugin/service/ILeafServiceManager;
    :cond_0
    :goto_0
    return-void

    .line 147
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 155
    :cond_1
    invoke-static {}, Lcom/tencent/component/plugin/service/ServiceManagerClient;->getHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/tencent/component/plugin/service/ServiceManagerClient$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/component/plugin/service/ServiceManagerClient$3;-><init>(Lcom/tencent/component/plugin/service/ServiceManagerClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/component/plugin/service/ILeafServiceConnection;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
