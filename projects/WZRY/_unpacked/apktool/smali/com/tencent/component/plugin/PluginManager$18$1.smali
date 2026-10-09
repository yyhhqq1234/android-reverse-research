.class Lcom/tencent/component/plugin/PluginManager$18$1;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/PluginManager$18;->onLoadPluginInfo(Lcom/tencent/component/plugin/PluginInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/component/plugin/PluginManager$18;

.field final synthetic val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/PluginManager$18;Lcom/tencent/component/plugin/PluginInfo;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tencent/component/plugin/PluginManager$18;

    .prologue
    .line 862
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginManager$18$1;->this$1:Lcom/tencent/component/plugin/PluginManager$18;

    iput-object p2, p0, Lcom/tencent/component/plugin/PluginManager$18$1;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 865
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager$18$1;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    if-eqz v2, :cond_2

    .line 866
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager$18$1;->this$1:Lcom/tencent/component/plugin/PluginManager$18;

    iget-object v2, v2, Lcom/tencent/component/plugin/PluginManager$18;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager$18$1;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    invoke-virtual {v2, v3}, Lcom/tencent/component/plugin/PluginManager;->getPlugin(Lcom/tencent/component/plugin/PluginInfo;)Lcom/tencent/component/plugin/Plugin;

    move-result-object v0

    .line 867
    .local v0, "plugin":Lcom/tencent/component/plugin/Plugin;
    if-eqz v0, :cond_1

    .line 868
    invoke-virtual {v0}, Lcom/tencent/component/plugin/Plugin;->getPluginCommander()Lcom/tencent/component/plugin/PluginCommander;

    move-result-object v1

    .line 869
    .local v1, "pluginDAO":Lcom/tencent/component/plugin/PluginCommander;
    if-eqz v1, :cond_0

    .line 870
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager$18$1;->this$1:Lcom/tencent/component/plugin/PluginManager$18;

    iget-object v2, v2, Lcom/tencent/component/plugin/PluginManager$18;->val$cmd:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager$18$1;->this$1:Lcom/tencent/component/plugin/PluginManager$18;

    iget-object v3, v3, Lcom/tencent/component/plugin/PluginManager$18;->val$args:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/tencent/component/plugin/PluginCommander;->write(Ljava/lang/String;Ljava/lang/Object;)V

    .line 880
    .end local v0    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .end local v1    # "pluginDAO":Lcom/tencent/component/plugin/PluginCommander;
    :goto_0
    return-void

    .line 872
    .restart local v0    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .restart local v1    # "pluginDAO":Lcom/tencent/component/plugin/PluginCommander;
    :cond_0
    const-string v2, "PluginManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to put data to plugin:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/component/plugin/PluginManager$18$1;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    iget-object v4, v4, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", pluginDAO is null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 875
    .end local v1    # "pluginDAO":Lcom/tencent/component/plugin/PluginCommander;
    :cond_1
    const-string v2, "PluginManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to put data to plugin:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/component/plugin/PluginManager$18$1;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    iget-object v4, v4, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", plugin is null."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 878
    .end local v0    # "plugin":Lcom/tencent/component/plugin/Plugin;
    :cond_2
    const-string v2, "PluginManager"

    const-string v3, "fail to put data to plugin, pluginInfo is null."

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
