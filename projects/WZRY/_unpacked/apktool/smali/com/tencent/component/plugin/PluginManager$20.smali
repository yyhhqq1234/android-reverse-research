.class Lcom/tencent/component/plugin/PluginManager$20;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/PluginManager;->startPluginInner(Lcom/tencent/component/plugin/PluginInfo;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/PluginManager;

.field final synthetic val$args:Landroid/content/Intent;

.field final synthetic val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/PluginManager;Lcom/tencent/component/plugin/PluginInfo;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    .line 1040
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginManager$20;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iput-object p2, p0, Lcom/tencent/component/plugin/PluginManager$20;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    iput-object p3, p0, Lcom/tencent/component/plugin/PluginManager$20;->val$args:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1044
    iget-object v1, p0, Lcom/tencent/component/plugin/PluginManager$20;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager$20;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    invoke-virtual {v1, v2}, Lcom/tencent/component/plugin/PluginManager;->getPlugin(Lcom/tencent/component/plugin/PluginInfo;)Lcom/tencent/component/plugin/Plugin;

    move-result-object v0

    .line 1045
    .local v0, "plugin":Lcom/tencent/component/plugin/Plugin;
    if-eqz v0, :cond_0

    .line 1046
    invoke-virtual {v0}, Lcom/tencent/component/plugin/Plugin;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager$20;->val$args:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/component/plugin/Plugin;->start(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1050
    :goto_0
    return-void

    .line 1048
    :cond_0
    const-string v1, "PluginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to start plugin:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager$20;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    iget-object v3, v3, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
