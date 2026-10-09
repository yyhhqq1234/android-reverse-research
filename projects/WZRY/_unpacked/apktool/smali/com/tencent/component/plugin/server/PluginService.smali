.class public final Lcom/tencent/component/plugin/server/PluginService;
.super Landroid/app/Service;
.source "PluginService.java"


# static fields
.field private static final ARGS_PLATFORM_ID:Ljava/lang/String; = "platformId"

.field private static final PLUGIN_SERVICE_ACTION:Ljava/lang/String; = "com.tencent.component.plugin.server.PluginService."


# instance fields
.field private mPluginServiceLogic:Lcom/tencent/component/plugin/server/PluginServiceLogic;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static bindPluginService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "connection"    # Landroid/content/ServiceConnection;
    .param p2, "platformId"    # Ljava/lang/String;

    .prologue
    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tencent/component/plugin/server/PluginService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "platformId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 39
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PluginService;->mPluginServiceLogic:Lcom/tencent/component/plugin/server/PluginServiceLogic;

    invoke-virtual {v0, p1}, Lcom/tencent/component/plugin/server/PluginServiceLogic;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 26
    new-instance v0, Lcom/tencent/component/plugin/server/PluginServiceLogic;

    invoke-virtual {p0}, Lcom/tencent/component/plugin/server/PluginService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/component/plugin/server/PluginServiceLogic;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/component/plugin/server/PluginService;->mPluginServiceLogic:Lcom/tencent/component/plugin/server/PluginServiceLogic;

    .line 27
    return-void
.end method
