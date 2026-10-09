.class public Lcom/tencent/component/plugin/service/LeafServiceManager;
.super Ljava/lang/Object;
.source "LeafServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/plugin/service/LeafServiceManager$1;,
        Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;,
        Lcom/tencent/component/plugin/service/LeafServiceManager$ConnectionInfo;,
        Lcom/tencent/component/plugin/service/LeafServiceManager$InnerConnection;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LeafServiceManager"

.field private static volatile sInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/component/plugin/service/LeafServiceManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mService:Lcom/tencent/component/plugin/service/ServiceManagerClient;

.field private final mServiceDispatchers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ServiceConnection;",
            "Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mTreeServiceClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/component/plugin/service/LeafServiceManager;->sInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "platformId"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/plugin/service/LeafServiceManager;->mServiceDispatchers:Ljava/util/HashMap;

    .line 36
    invoke-static {p1, p2}, Lcom/tencent/component/plugin/PluginManager;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/component/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/component/plugin/PluginManager;->getPluginPlatformConfig()Lcom/tencent/component/plugin/PluginPlatformConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/component/plugin/PluginPlatformConfig;->pluginTreeServiceClass:Ljava/lang/Class;

    iput-object v0, p0, Lcom/tencent/component/plugin/service/LeafServiceManager;->mTreeServiceClass:Ljava/lang/Class;

    .line 37
    new-instance v0, Lcom/tencent/component/plugin/service/ServiceManagerClient;

    iget-object v1, p0, Lcom/tencent/component/plugin/service/LeafServiceManager;->mTreeServiceClass:Ljava/lang/Class;

    invoke-direct {v0, p1, v1}, Lcom/tencent/component/plugin/service/ServiceManagerClient;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/tencent/component/plugin/service/LeafServiceManager;->mService:Lcom/tencent/component/plugin/service/ServiceManagerClient;

    .line 38
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/component/plugin/service/LeafServiceManager;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "platformId"    # Ljava/lang/String;

    .prologue
    .line 44
    sget-object v3, Lcom/tencent/component/plugin/service/LeafServiceManager;->sInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/component/plugin/service/LeafServiceManager;

    .line 45
    .local v1, "leafServiceManager":Lcom/tencent/component/plugin/service/LeafServiceManager;
    if-nez v1, :cond_1

    .line 46
    const-class v4, Lcom/tencent/component/plugin/service/LeafServiceManager;

    monitor-enter v4

    .line 47
    :try_start_0
    sget-object v3, Lcom/tencent/component/plugin/service/LeafServiceManager;->sInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/tencent/component/plugin/service/LeafServiceManager;

    move-object v1, v0

    .line 48
    if-nez v1, :cond_0

    .line 49
    new-instance v2, Lcom/tencent/component/plugin/service/LeafServiceManager;

    invoke-direct {v2, p0, p1}, Lcom/tencent/component/plugin/service/LeafServiceManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .end local v1    # "leafServiceManager":Lcom/tencent/component/plugin/service/LeafServiceManager;
    .local v2, "leafServiceManager":Lcom/tencent/component/plugin/service/LeafServiceManager;
    :try_start_1
    sget-object v3, Lcom/tencent/component/plugin/service/LeafServiceManager;->sInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 52
    .end local v2    # "leafServiceManager":Lcom/tencent/component/plugin/service/LeafServiceManager;
    .restart local v1    # "leafServiceManager":Lcom/tencent/component/plugin/service/LeafServiceManager;
    :cond_0
    :try_start_2
    monitor-exit v4

    .line 54
    :cond_1
    return-object v1

    .line 52
    :catchall_0
    move-exception v3

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .end local v1    # "leafServiceManager":Lcom/tencent/component/plugin/service/LeafServiceManager;
    .restart local v2    # "leafServiceManager":Lcom/tencent/component/plugin/service/LeafServiceManager;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "leafServiceManager":Lcom/tencent/component/plugin/service/LeafServiceManager;
    .restart local v1    # "leafServiceManager":Lcom/tencent/component/plugin/service/LeafServiceManager;
    goto :goto_0
.end method

.method private getServiceDispatcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Landroid/os/Looper;)Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;
    .locals 7
    .param p1, "platformId"    # Ljava/lang/String;
    .param p2, "pluginId"    # Ljava/lang/String;
    .param p3, "clazz"    # Ljava/lang/String;
    .param p4, "conn"    # Landroid/content/ServiceConnection;
    .param p5, "looper"    # Landroid/os/Looper;

    .prologue
    .line 131
    iget-object v6, p0, Lcom/tencent/component/plugin/service/LeafServiceManager;->mServiceDispatchers:Ljava/util/HashMap;

    monitor-enter v6

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/tencent/component/plugin/service/LeafServiceManager;->mServiceDispatchers:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;

    .line 133
    .local v0, "sd":Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;
    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;

    .end local v0    # "sd":Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Landroid/os/Looper;)V

    .line 135
    .restart local v0    # "sd":Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;
    iget-object v1, p0, Lcom/tencent/component/plugin/service/LeafServiceManager;->mServiceDispatchers:Ljava/util/HashMap;

    invoke-virtual {v1, p4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :goto_0
    monitor-exit v6

    .line 140
    return-object v0

    .line 137
    :cond_0
    invoke-virtual {v0, p5}, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->validate(Landroid/os/Looper;)V

    goto :goto_0

    .line 139
    .end local v0    # "sd":Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;
    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public bindService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Landroid/content/ServiceConnection;Landroid/os/Bundle;)Z
    .locals 7
    .param p1, "platformId"    # Ljava/lang/String;
    .param p2, "pluginId"    # Ljava/lang/String;
    .param p4, "conn"    # Landroid/content/ServiceConnection;
    .param p5, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/tencent/component/plugin/LeafService;",
            ">;",
            "Landroid/content/ServiceConnection;",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 74
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/tencent/component/plugin/LeafService;>;"
    if-nez p3, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/component/plugin/service/LeafServiceManager;->bindService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Landroid/os/Bundle;Landroid/os/Looper;)Z

    move-result v0

    goto :goto_0
.end method

.method public bindService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Landroid/os/Bundle;Landroid/os/Looper;)Z
    .locals 9
    .param p1, "platformId"    # Ljava/lang/String;
    .param p2, "pluginId"    # Ljava/lang/String;
    .param p3, "leafServiceName"    # Ljava/lang/String;
    .param p4, "conn"    # Landroid/content/ServiceConnection;
    .param p5, "args"    # Landroid/os/Bundle;
    .param p6, "looper"    # Landroid/os/Looper;

    .prologue
    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p4, :cond_2

    .line 90
    :cond_0
    const-string v0, "LeafServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindService failed [pluginId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | platformId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | clazz:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | conn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v8, 0x0

    .line 104
    :cond_1
    :goto_0
    return v8

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p6

    .line 93
    invoke-direct/range {v0 .. v5}, Lcom/tencent/component/plugin/service/LeafServiceManager;->getServiceDispatcher(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ServiceConnection;Landroid/os/Looper;)Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;

    move-result-object v7

    .line 94
    .local v7, "sd":Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;
    invoke-virtual {v7}, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->getILeafServiceConnection()Lcom/tencent/component/plugin/service/ILeafServiceConnection;

    move-result-object v4

    .line 95
    .local v4, "sc":Lcom/tencent/component/plugin/service/ILeafServiceConnection;
    const/4 v8, 0x0

    .line 96
    .local v8, "succeed":Z
    if-eqz v4, :cond_1

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/tencent/component/plugin/service/LeafServiceManager;->mService:Lcom/tencent/component/plugin/service/ServiceManagerClient;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/component/plugin/service/ServiceManagerClient;->bindService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/component/plugin/service/ILeafServiceConnection;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    const/4 v8, 0x1

    goto :goto_0

    .line 100
    :catch_0
    move-exception v6

    .line 101
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "LeafServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to bind service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public startService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "platformId"    # Ljava/lang/String;
    .param p2, "pluginId"    # Ljava/lang/String;
    .param p3, "leafServiceClassName"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/os/Bundle;

    .prologue
    .line 59
    :try_start_0
    iget-object v1, p0, Lcom/tencent/component/plugin/service/LeafServiceManager;->mService:Lcom/tencent/component/plugin/service/ServiceManagerClient;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/tencent/component/plugin/service/ServiceManagerClient;->startService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LeafServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to start service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public stopService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "platformId"    # Ljava/lang/String;
    .param p2, "pluginId"    # Ljava/lang/String;
    .param p3, "leafServiceClassName"    # Ljava/lang/String;

    .prologue
    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/tencent/component/plugin/service/LeafServiceManager;->mService:Lcom/tencent/component/plugin/service/ServiceManagerClient;

    invoke-virtual {v1, p1, p2, p3}, Lcom/tencent/component/plugin/service/ServiceManagerClient;->stopService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LeafServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to stop service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public unbindService(Landroid/content/ServiceConnection;)V
    .locals 7
    .param p1, "conn"    # Landroid/content/ServiceConnection;

    .prologue
    .line 114
    iget-object v4, p0, Lcom/tencent/component/plugin/service/LeafServiceManager;->mServiceDispatchers:Ljava/util/HashMap;

    monitor-enter v4

    .line 115
    :try_start_0
    iget-object v3, p0, Lcom/tencent/component/plugin/service/LeafServiceManager;->mServiceDispatchers:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;

    .line 116
    .local v2, "sd":Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    if-eqz v2, :cond_0

    .line 118
    invoke-virtual {v2}, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->getILeafServiceConnection()Lcom/tencent/component/plugin/service/ILeafServiceConnection;

    move-result-object v1

    .line 119
    .local v1, "sc":Lcom/tencent/component/plugin/service/ILeafServiceConnection;
    if-eqz v1, :cond_0

    iget-object v3, v2, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mClazz:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 121
    :try_start_1
    iget-object v3, p0, Lcom/tencent/component/plugin/service/LeafServiceManager;->mService:Lcom/tencent/component/plugin/service/ServiceManagerClient;

    iget-object v4, v2, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mPlatformId:Ljava/lang/String;

    iget-object v5, v2, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mPluginId:Ljava/lang/String;

    iget-object v6, v2, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mClazz:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v1}, Lcom/tencent/component/plugin/service/ServiceManagerClient;->unbindService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/component/plugin/service/ILeafServiceConnection;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    .end local v1    # "sc":Lcom/tencent/component/plugin/service/ILeafServiceConnection;
    :cond_0
    :goto_0
    return-void

    .line 116
    .end local v2    # "sd":Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 122
    .restart local v1    # "sc":Lcom/tencent/component/plugin/service/ILeafServiceConnection;
    .restart local v2    # "sd":Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "LeafServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to unbind service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/tencent/component/plugin/service/LeafServiceManager$ServiceDispatcher;->mClazz:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
