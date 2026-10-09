.class public Lcom/tencent/component/plugin/LeafService;
.super Landroid/app/Service;
.source "LeafService.java"


# instance fields
.field private mHostService:Lcom/tencent/component/plugin/TreeService;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x136
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public init(Lcom/tencent/component/plugin/Plugin;Lcom/tencent/component/plugin/TreeService;)V
    .locals 1
    .param p1, "plugin"    # Lcom/tencent/component/plugin/Plugin;
    .param p2, "hostService"    # Lcom/tencent/component/plugin/TreeService;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x136
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p1}, Lcom/tencent/component/plugin/Plugin;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/component/plugin/LeafService;->attachBaseContext(Landroid/content/Context;)V

    .line 23
    iput-object p2, p0, Lcom/tencent/component/plugin/LeafService;->mHostService:Lcom/tencent/component/plugin/TreeService;

    .line 24
    invoke-virtual {p0}, Lcom/tencent/component/plugin/LeafService;->onCreate()V

    .line 25
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method protected setServiceBackground()V
    .locals 1
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/component/plugin/LeafService;->mHostService:Lcom/tencent/component/plugin/TreeService;

    invoke-virtual {v0}, Lcom/tencent/component/plugin/TreeService;->setTreeServiceBackground()V

    .line 40
    return-void
.end method

.method protected setServiceForeground()V
    .locals 1
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x190
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/tencent/component/plugin/LeafService;->mHostService:Lcom/tencent/component/plugin/TreeService;

    invoke-virtual {v0}, Lcom/tencent/component/plugin/TreeService;->setTreeServiceForeground()V

    .line 35
    return-void
.end method
