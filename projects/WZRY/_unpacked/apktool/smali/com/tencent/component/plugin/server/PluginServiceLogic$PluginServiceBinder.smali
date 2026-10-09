.class Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;
.super Lcom/tencent/component/plugin/IPluginManager$Stub;
.source "PluginServiceLogic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/server/PluginServiceLogic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PluginServiceBinder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mThreadPool:Lcom/tencent/component/utils/thread/ThreadPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/component/utils/thread/ThreadPool;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "platformId"    # Ljava/lang/String;
    .param p3, "threadPool"    # Lcom/tencent/component/utils/thread/ThreadPool;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/tencent/component/plugin/IPluginManager$Stub;-><init>()V

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;->mContext:Landroid/content/Context;

    .line 70
    iput-object p3, p0, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;->mThreadPool:Lcom/tencent/component/utils/thread/ThreadPool;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getPluginManagerServer(Ljava/lang/String;)Lcom/tencent/component/plugin/server/PluginManagerServer;
    .locals 1
    .param p1, "platformId"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/component/plugin/server/PlatformServerContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getPluginManagerServer()Lcom/tencent/component/plugin/server/PluginManagerServer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disablePlugin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "platfromId"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;->getPluginManagerServer(Ljava/lang/String;)Lcom/tencent/component/plugin/server/PluginManagerServer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/component/plugin/server/PluginManagerServer;->disablePlugin(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public enablePlugin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "platfromId"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;->getPluginManagerServer(Ljava/lang/String;)Lcom/tencent/component/plugin/server/PluginManagerServer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/component/plugin/server/PluginManagerServer;->enablePlugin(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAllPluginInfos(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "platfromId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/component/plugin/PluginInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;->getPluginManagerServer(Ljava/lang/String;)Lcom/tencent/component/plugin/server/PluginManagerServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/component/plugin/server/PluginManagerServer;->getAllPluginInfos()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPluginInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/component/plugin/PluginInfo;
    .locals 1
    .param p1, "platfromId"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;->getPluginManagerServer(Ljava/lang/String;)Lcom/tencent/component/plugin/server/PluginManagerServer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/component/plugin/server/PluginManagerServer;->getPluginInfo(Ljava/lang/String;)Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v0

    return-object v0
.end method

.method public handlePluginUri(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1
    .param p1, "platfromId"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;->getPluginManagerServer(Ljava/lang/String;)Lcom/tencent/component/plugin/server/PluginManagerServer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/tencent/component/plugin/server/PluginManagerServer;->handlePluginUri(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public hello(Lcom/tencent/component/plugin/PluginPlatformConfig;Lcom/tencent/component/plugin/server/PluginServerBroadcast;)V
    .locals 2
    .param p1, "platformConfig"    # Lcom/tencent/component/plugin/PluginPlatformConfig;
    .param p2, "broadcast"    # Lcom/tencent/component/plugin/server/PluginServerBroadcast;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;->mThreadPool:Lcom/tencent/component/utils/thread/ThreadPool;

    new-instance v1, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder$1;-><init>(Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;Lcom/tencent/component/plugin/PluginPlatformConfig;Lcom/tencent/component/plugin/server/PluginServerBroadcast;)V

    invoke-virtual {v0, v1}, Lcom/tencent/component/utils/thread/ThreadPool;->submit(Lcom/tencent/component/utils/thread/ThreadPool$Job;)Lcom/tencent/component/utils/thread/Future;

    .line 163
    return-void
.end method

.method public install(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/component/plugin/InstallPluginListener;)V
    .locals 1
    .param p1, "platfromId"    # Ljava/lang/String;
    .param p2, "pluginLocation"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/tencent/component/plugin/InstallPluginListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;->getPluginManagerServer(Ljava/lang/String;)Lcom/tencent/component/plugin/server/PluginManagerServer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/tencent/component/plugin/server/PluginManagerServer;->install(Ljava/lang/String;Lcom/tencent/component/plugin/InstallPluginListener;)V

    .line 132
    return-void
.end method

.method public isPluginEnabled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "platfromId"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;->getPluginManagerServer(Ljava/lang/String;)Lcom/tencent/component/plugin/server/PluginManagerServer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/component/plugin/server/PluginManagerServer;->isPluginEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPluginRegistered(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "platfromId"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;->getPluginManagerServer(Ljava/lang/String;)Lcom/tencent/component/plugin/server/PluginManagerServer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/component/plugin/server/PluginManagerServer;->isPluginRegistered(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public loadPluginInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/component/plugin/PluginInfo;
    .locals 1
    .param p1, "platfromId"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;->getPluginManagerServer(Ljava/lang/String;)Lcom/tencent/component/plugin/server/PluginManagerServer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/component/plugin/server/PluginManagerServer;->loadPluginInfo(Ljava/lang/String;)Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v0

    return-object v0
.end method

.method public markPluginSurviveable(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "platformId"    # Ljava/lang/String;
    .param p2, "pluginId"    # Ljava/lang/String;
    .param p3, "surviveable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;->getPluginManagerServer(Ljava/lang/String;)Lcom/tencent/component/plugin/server/PluginManagerServer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/tencent/component/plugin/server/PluginManagerServer;->markPluginSurviveable(Ljava/lang/String;Z)V

    .line 143
    return-void
.end method

.method public registerPlugin(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/component/plugin/PluginInfo;)Z
    .locals 1
    .param p1, "platfromId"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;->getPluginManagerServer(Ljava/lang/String;)Lcom/tencent/component/plugin/server/PluginManagerServer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/tencent/component/plugin/server/PluginManagerServer;->registerPlugin(Ljava/lang/String;Lcom/tencent/component/plugin/PluginInfo;)Z

    move-result v0

    return v0
.end method

.method public setPluginHandler(Ljava/lang/String;Lcom/tencent/component/plugin/PluginManageHandler;)V
    .locals 1
    .param p1, "platfromId"    # Ljava/lang/String;
    .param p2, "handler"    # Lcom/tencent/component/plugin/PluginManageHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;->getPluginManagerServer(Ljava/lang/String;)Lcom/tencent/component/plugin/server/PluginManagerServer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/component/plugin/server/PluginManagerServer;->setPluginHandler(Lcom/tencent/component/plugin/PluginManageHandler;)V

    .line 121
    return-void
.end method

.method public uninstall(Ljava/lang/String;Lcom/tencent/component/plugin/PluginInfo;Lcom/tencent/component/plugin/UninstallPluginListener;)V
    .locals 1
    .param p1, "platfromId"    # Ljava/lang/String;
    .param p2, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;
    .param p3, "listener"    # Lcom/tencent/component/plugin/UninstallPluginListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;->getPluginManagerServer(Ljava/lang/String;)Lcom/tencent/component/plugin/server/PluginManagerServer;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/tencent/component/plugin/server/PluginManagerServer;->uninstall(Lcom/tencent/component/plugin/PluginInfo;Lcom/tencent/component/plugin/UninstallPluginListener;)V

    .line 138
    return-void
.end method

.method public unregisterPlugin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "platfromId"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/server/PluginServiceLogic$PluginServiceBinder;->getPluginManagerServer(Ljava/lang/String;)Lcom/tencent/component/plugin/server/PluginManagerServer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/component/plugin/server/PluginManagerServer;->unregisterPlugin(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
