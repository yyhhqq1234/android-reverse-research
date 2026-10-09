.class Lcom/tencent/component/plugin/server/PlatformServerContext;
.super Ljava/lang/Object;
.source "PlatformServerContext.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PlatformServerContext"

.field private static sInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/component/plugin/server/PlatformServerContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mBuiltinPluginLoader:Lcom/tencent/component/plugin/server/BuiltinPluginLoader;

.field private mContext:Landroid/content/Context;

.field private volatile mPlatformConfig:Lcom/tencent/component/plugin/PluginPlatformConfig;

.field private final mPlatformId:Ljava/lang/String;

.field private volatile mPluginInstaller:Lcom/tencent/component/plugin/server/PluginInstaller;

.field private volatile mPluginLoader:Lcom/tencent/component/plugin/server/PluginLoader;

.field private volatile mPluginManagerServer:Lcom/tencent/component/plugin/server/PluginManagerServer;

.field private volatile mPluginServerBroadcast:Lcom/tencent/component/plugin/server/PluginServerBroadcast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 167
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tencent/component/plugin/server/PlatformServerContext;->sInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "platformId"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mPlatformId:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/component/plugin/server/PlatformServerContext;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "platformId"    # Ljava/lang/String;

    .prologue
    .line 170
    sget-object v3, Lcom/tencent/component/plugin/server/PlatformServerContext;->sInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/component/plugin/server/PlatformServerContext;

    .line 171
    .local v1, "platformServerContext":Lcom/tencent/component/plugin/server/PlatformServerContext;
    if-nez v1, :cond_1

    .line 172
    const-class v4, Lcom/tencent/component/plugin/server/PlatformServerContext;

    monitor-enter v4

    .line 173
    :try_start_0
    sget-object v3, Lcom/tencent/component/plugin/server/PlatformServerContext;->sInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/tencent/component/plugin/server/PlatformServerContext;

    move-object v1, v0

    .line 174
    if-nez v1, :cond_0

    .line 175
    new-instance v2, Lcom/tencent/component/plugin/server/PlatformServerContext;

    invoke-direct {v2, p0, p1}, Lcom/tencent/component/plugin/server/PlatformServerContext;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .end local v1    # "platformServerContext":Lcom/tencent/component/plugin/server/PlatformServerContext;
    .local v2, "platformServerContext":Lcom/tencent/component/plugin/server/PlatformServerContext;
    :try_start_1
    sget-object v3, Lcom/tencent/component/plugin/server/PlatformServerContext;->sInstanceMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v2

    .line 178
    .end local v2    # "platformServerContext":Lcom/tencent/component/plugin/server/PlatformServerContext;
    .restart local v1    # "platformServerContext":Lcom/tencent/component/plugin/server/PlatformServerContext;
    :cond_0
    :try_start_2
    monitor-exit v4

    .line 180
    :cond_1
    return-object v1

    .line 178
    :catchall_0
    move-exception v3

    :goto_0
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .end local v1    # "platformServerContext":Lcom/tencent/component/plugin/server/PlatformServerContext;
    .restart local v2    # "platformServerContext":Lcom/tencent/component/plugin/server/PlatformServerContext;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "platformServerContext":Lcom/tencent/component/plugin/server/PlatformServerContext;
    .restart local v1    # "platformServerContext":Lcom/tencent/component/plugin/server/PlatformServerContext;
    goto :goto_0
.end method


# virtual methods
.method public broadcastPendingInstallFinish(ILjava/io/File;)V
    .locals 8
    .param p1, "result"    # I
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 122
    iget-object v5, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mPluginServerBroadcast:Lcom/tencent/component/plugin/server/PluginServerBroadcast;

    if-eqz v5, :cond_0

    .line 124
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "installLocation":Ljava/lang/String;
    iget-object v5, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/tencent/component/plugin/server/PluginConstant;->getCorePluginPendingInstallInfo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 126
    .local v0, "corePlugin":Z
    iget-object v5, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/tencent/component/plugin/server/PluginConstant;->getPendingInstallExtraInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "extraInfo":Ljava/lang/String;
    sget v5, Lcom/tencent/component/plugin/server/PluginInstaller;->INSTALL_SUCCEED:I

    if-ne p1, v5, :cond_1

    const/4 v4, 0x1

    .line 128
    .local v4, "success":Z
    :goto_0
    iget-object v6, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mPluginServerBroadcast:Lcom/tencent/component/plugin/server/PluginServerBroadcast;

    if-eqz v4, :cond_2

    const-string v5, ""

    :goto_1
    invoke-interface {v6, v4, v0, v2, v5}, Lcom/tencent/component/plugin/server/PluginServerBroadcast;->onPendingInstallFinish(ZZLjava/lang/String;Ljava/lang/String;)V

    .line 133
    .end local v0    # "corePlugin":Z
    .end local v2    # "extraInfo":Ljava/lang/String;
    .end local v3    # "installLocation":Ljava/lang/String;
    .end local v4    # "success":Z
    :cond_0
    :goto_2
    return-void

    .line 127
    .restart local v0    # "corePlugin":Z
    .restart local v2    # "extraInfo":Ljava/lang/String;
    .restart local v3    # "installLocation":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 128
    .restart local v4    # "success":Z
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "errorCode:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_1

    .line 129
    .end local v0    # "corePlugin":Z
    .end local v2    # "extraInfo":Ljava/lang/String;
    .end local v3    # "installLocation":Ljava/lang/String;
    .end local v4    # "success":Z
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "PlatformServerContext"

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public broadcastPluginChanged(Ljava/lang/String;II)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "changeFlags"    # I
    .param p3, "statusFlags"    # I

    .prologue
    .line 135
    iget-object v1, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mPluginServerBroadcast:Lcom/tencent/component/plugin/server/PluginServerBroadcast;

    if-eqz v1, :cond_0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mPluginServerBroadcast:Lcom/tencent/component/plugin/server/PluginServerBroadcast;

    invoke-interface {v1, p1, p2, p3}, Lcom/tencent/component/plugin/server/PluginServerBroadcast;->onPluginStateChange(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PlatformServerContext"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public broadcastPluginInstalled(Ljava/lang/String;II)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "oldVersion"    # I
    .param p3, "version"    # I

    .prologue
    .line 103
    iget-object v1, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mPluginServerBroadcast:Lcom/tencent/component/plugin/server/PluginServerBroadcast;

    if-eqz v1, :cond_0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mPluginServerBroadcast:Lcom/tencent/component/plugin/server/PluginServerBroadcast;

    invoke-interface {v1, p1, p2, p3}, Lcom/tencent/component/plugin/server/PluginServerBroadcast;->onPluginInstalled(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PlatformServerContext"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public broadcastPluginUninstalled(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-object v1, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mPluginServerBroadcast:Lcom/tencent/component/plugin/server/PluginServerBroadcast;

    if-eqz v1, :cond_0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mPluginServerBroadcast:Lcom/tencent/component/plugin/server/PluginServerBroadcast;

    invoke-interface {v1, p1}, Lcom/tencent/component/plugin/server/PluginServerBroadcast;->onPluginUninstalled(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PlatformServerContext"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getBuiltinPluginLoader()Lcom/tencent/component/plugin/server/BuiltinPluginLoader;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mBuiltinPluginLoader:Lcom/tencent/component/plugin/server/BuiltinPluginLoader;

    if-nez v0, :cond_1

    .line 48
    const-class v1, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;

    monitor-enter v1

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mBuiltinPluginLoader:Lcom/tencent/component/plugin/server/BuiltinPluginLoader;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;

    invoke-direct {v0, p0}, Lcom/tencent/component/plugin/server/BuiltinPluginLoader;-><init>(Lcom/tencent/component/plugin/server/PlatformServerContext;)V

    iput-object v0, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mBuiltinPluginLoader:Lcom/tencent/component/plugin/server/BuiltinPluginLoader;

    .line 52
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mBuiltinPluginLoader:Lcom/tencent/component/plugin/server/BuiltinPluginLoader;

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPlatformConfig()Lcom/tencent/component/plugin/PluginPlatformConfig;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mPlatformConfig:Lcom/tencent/component/plugin/PluginPlatformConfig;

    return-object v0
.end method

.method public getPlatformId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mPlatformId:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginInstaller()Lcom/tencent/component/plugin/server/PluginInstaller;
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mPluginInstaller:Lcom/tencent/component/plugin/server/PluginInstaller;

    if-nez v0, :cond_1

    .line 70
    const-class v1, Lcom/tencent/component/plugin/server/PluginInstaller;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mPluginInstaller:Lcom/tencent/component/plugin/server/PluginInstaller;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/tencent/component/plugin/server/PluginInstaller;

    invoke-direct {v0, p0}, Lcom/tencent/component/plugin/server/PluginInstaller;-><init>(Lcom/tencent/component/plugin/server/PlatformServerContext;)V

    iput-object v0, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mPluginInstaller:Lcom/tencent/component/plugin/server/PluginInstaller;

    .line 74
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mPluginInstaller:Lcom/tencent/component/plugin/server/PluginInstaller;

    return-object v0

    .line 74
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPluginLoader()Lcom/tencent/component/plugin/server/PluginLoader;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mPluginLoader:Lcom/tencent/component/plugin/server/PluginLoader;

    if-nez v0, :cond_1

    .line 59
    const-class v1, Lcom/tencent/component/plugin/server/PluginLoader;

    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mPluginLoader:Lcom/tencent/component/plugin/server/PluginLoader;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/tencent/component/plugin/server/PluginLoader;

    invoke-direct {v0, p0}, Lcom/tencent/component/plugin/server/PluginLoader;-><init>(Lcom/tencent/component/plugin/server/PlatformServerContext;)V

    iput-object v0, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mPluginLoader:Lcom/tencent/component/plugin/server/PluginLoader;

    .line 63
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mPluginLoader:Lcom/tencent/component/plugin/server/PluginLoader;

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getPluginManagerServer()Lcom/tencent/component/plugin/server/PluginManagerServer;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mPluginManagerServer:Lcom/tencent/component/plugin/server/PluginManagerServer;

    if-nez v0, :cond_1

    .line 81
    const-class v1, Lcom/tencent/component/plugin/server/PluginManagerServer;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mPluginManagerServer:Lcom/tencent/component/plugin/server/PluginManagerServer;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/tencent/component/plugin/server/PluginManagerServer;

    invoke-direct {v0, p0}, Lcom/tencent/component/plugin/server/PluginManagerServer;-><init>(Lcom/tencent/component/plugin/server/PlatformServerContext;)V

    iput-object v0, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mPluginManagerServer:Lcom/tencent/component/plugin/server/PluginManagerServer;

    .line 85
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mPluginManagerServer:Lcom/tencent/component/plugin/server/PluginManagerServer;

    return-object v0

    .line 85
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public notifyInitializeFinish()V
    .locals 3

    .prologue
    .line 155
    iget-object v1, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mPluginServerBroadcast:Lcom/tencent/component/plugin/server/PluginServerBroadcast;

    if-eqz v1, :cond_0

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mPluginServerBroadcast:Lcom/tencent/component/plugin/server/PluginServerBroadcast;

    invoke-interface {v1}, Lcom/tencent/component/plugin/server/PluginServerBroadcast;->onPlatformInitialFinish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PlatformServerContext"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public notifyInitializeStart()V
    .locals 3

    .prologue
    .line 145
    iget-object v1, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mPluginServerBroadcast:Lcom/tencent/component/plugin/server/PluginServerBroadcast;

    if-eqz v1, :cond_0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mPluginServerBroadcast:Lcom/tencent/component/plugin/server/PluginServerBroadcast;

    invoke-interface {v1}, Lcom/tencent/component/plugin/server/PluginServerBroadcast;->onPlatformInitialStart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PlatformServerContext"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setPlatformConfig(Lcom/tencent/component/plugin/PluginPlatformConfig;)V
    .locals 0
    .param p1, "platformConfig"    # Lcom/tencent/component/plugin/PluginPlatformConfig;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mPlatformConfig:Lcom/tencent/component/plugin/PluginPlatformConfig;

    .line 92
    return-void
.end method

.method public setPluginServerBroadcast(Lcom/tencent/component/plugin/server/PluginServerBroadcast;)V
    .locals 0
    .param p1, "broadcast"    # Lcom/tencent/component/plugin/server/PluginServerBroadcast;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/tencent/component/plugin/server/PlatformServerContext;->mPluginServerBroadcast:Lcom/tencent/component/plugin/server/PluginServerBroadcast;

    .line 100
    return-void
.end method
