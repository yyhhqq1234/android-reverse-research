.class final Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;
.super Ljava/lang/Object;
.source "PluginManagerServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/server/PluginManagerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PluginRecord"
.end annotation


# instance fields
.field pluginInfo:Lcom/tencent/component/plugin/PluginInfo;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method isEnabled()Z
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;->pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;->pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    iget-boolean v0, v0, Lcom/tencent/component/plugin/PluginInfo;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 384
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;->pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/tencent/component/plugin/server/PluginManagerServer$PluginRecord;->pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    iput-boolean p1, v0, Lcom/tencent/component/plugin/PluginInfo;->enabled:Z

    .line 387
    :cond_0
    return-void
.end method
