.class Lcom/tencent/component/plugin/PluginManager$6;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/PluginManager;->notifyBootCompleteInner(Lcom/tencent/component/plugin/PluginInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/PluginManager;

.field final synthetic val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/PluginManager;Lcom/tencent/component/plugin/PluginInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    .line 344
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginManager$6;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iput-object p2, p0, Lcom/tencent/component/plugin/PluginManager$6;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 348
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager$6;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager$6;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    invoke-virtual {v2, v3}, Lcom/tencent/component/plugin/PluginManager;->getPlugin(Lcom/tencent/component/plugin/PluginInfo;)Lcom/tencent/component/plugin/Plugin;

    move-result-object v0

    .line 349
    .local v0, "plugin":Lcom/tencent/component/plugin/Plugin;
    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0}, Lcom/tencent/component/plugin/Plugin;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager$6;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    invoke-static {v2, v3}, Lcom/tencent/component/plugin/BootCompleteReceiver;->instantiate(Landroid/content/Context;Lcom/tencent/component/plugin/PluginInfo;)Lcom/tencent/component/plugin/BootCompleteReceiver;

    move-result-object v1

    .line 352
    .local v1, "receiver":Lcom/tencent/component/plugin/BootCompleteReceiver;
    if-eqz v1, :cond_1

    .line 353
    const-string v2, "PluginManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify plugin:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/component/plugin/PluginManager$6;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    iget-object v4, v4, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " boot complete."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {v0}, Lcom/tencent/component/plugin/Plugin;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/component/plugin/BootCompleteReceiver;->onBootComplete(Landroid/content/Context;)V

    .line 359
    .end local v1    # "receiver":Lcom/tencent/component/plugin/BootCompleteReceiver;
    :cond_0
    :goto_0
    return-void

    .line 356
    .restart local v1    # "receiver":Lcom/tencent/component/plugin/BootCompleteReceiver;
    :cond_1
    const-string v2, "PluginManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify plugin:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/component/plugin/PluginManager$6;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    iget-object v4, v4, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " boot complete failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
