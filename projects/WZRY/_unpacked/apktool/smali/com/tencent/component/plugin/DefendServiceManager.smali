.class public Lcom/tencent/component/plugin/DefendServiceManager;
.super Ljava/lang/Object;
.source "DefendServiceManager.java"


# static fields
.field private static volatile instance:Lcom/tencent/component/plugin/DefendServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/component/plugin/DefendServiceManager;->instance:Lcom/tencent/component/plugin/DefendServiceManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildStartGameIntent(Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;JLjava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "pluginId"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "args"    # Landroid/os/Bundle;
    .param p4, "delayMillis"    # J
    .param p6, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 53
    if-nez p3, :cond_0

    .line 54
    new-instance p3, Landroid/os/Bundle;

    .end local p3    # "args":Landroid/os/Bundle;
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 56
    .restart local p3    # "args":Landroid/os/Bundle;
    :cond_0
    const-string v1, "_defend_service_plugin_id"

    invoke-virtual {p3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "_defend_service_delay_time"

    invoke-virtual {p3, v1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 58
    const-string v1, "_defend_service_startgame_pkgname"

    invoke-virtual {p3, v1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.tencent.component.platform.startgame"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 63
    return-object v0
.end method

.method public static getInstance()Lcom/tencent/component/plugin/DefendServiceManager;
    .locals 2
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation

    .prologue
    .line 23
    sget-object v0, Lcom/tencent/component/plugin/DefendServiceManager;->instance:Lcom/tencent/component/plugin/DefendServiceManager;

    if-nez v0, :cond_1

    .line 24
    const-class v1, Lcom/tencent/component/plugin/DefendServiceManager;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/tencent/component/plugin/DefendServiceManager;->instance:Lcom/tencent/component/plugin/DefendServiceManager;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/tencent/component/plugin/DefendServiceManager;

    invoke-direct {v0}, Lcom/tencent/component/plugin/DefendServiceManager;-><init>()V

    sput-object v0, Lcom/tencent/component/plugin/DefendServiceManager;->instance:Lcom/tencent/component/plugin/DefendServiceManager;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    :cond_1
    sget-object v0, Lcom/tencent/component/plugin/DefendServiceManager;->instance:Lcom/tencent/component/plugin/DefendServiceManager;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public delayStartGame(Landroid/content/Context;Landroid/os/Bundle;JLjava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "delayMillis"    # J
    .param p5, "pkgName"    # Ljava/lang/String;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation

    .prologue
    .line 42
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/tencent/component/plugin/PluginContextWrapper;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 43
    check-cast v0, Lcom/tencent/component/plugin/PluginContextWrapper;

    invoke-virtual {v0}, Lcom/tencent/component/plugin/PluginContextWrapper;->getPlugin()Lcom/tencent/component/plugin/Plugin;

    move-result-object v8

    .line 44
    .local v8, "plugin":Lcom/tencent/component/plugin/Plugin;
    if-eqz v8, :cond_0

    .line 45
    invoke-virtual {v8}, Lcom/tencent/component/plugin/Plugin;->getPluginInfo()Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v9

    .line 46
    .local v9, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    iget-object v1, v9, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/tencent/component/plugin/DefendServiceManager;->buildStartGameIntent(Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 47
    .local v7, "i":Landroid/content/Intent;
    invoke-virtual {p1, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 50
    .end local v7    # "i":Landroid/content/Intent;
    .end local v8    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .end local v9    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_0
    return-void
.end method
