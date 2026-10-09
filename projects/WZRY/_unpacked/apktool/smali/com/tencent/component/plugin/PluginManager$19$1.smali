.class Lcom/tencent/component/plugin/PluginManager$19$1;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/PluginManager$19;->onLoadPluginInfo(Lcom/tencent/component/plugin/PluginInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/component/plugin/PluginManager$19;

.field final synthetic val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/PluginManager$19;Lcom/tencent/component/plugin/PluginInfo;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tencent/component/plugin/PluginManager$19;

    .prologue
    .line 917
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginManager$19$1;->this$1:Lcom/tencent/component/plugin/PluginManager$19;

    iput-object p2, p0, Lcom/tencent/component/plugin/PluginManager$19$1;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 920
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager$19$1;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    if-eqz v3, :cond_3

    .line 921
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager$19$1;->this$1:Lcom/tencent/component/plugin/PluginManager$19;

    iget-object v3, v3, Lcom/tencent/component/plugin/PluginManager$19;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iget-object v4, p0, Lcom/tencent/component/plugin/PluginManager$19$1;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/tencent/component/plugin/PluginManager;->getPlugin(Lcom/tencent/component/plugin/PluginInfo;Z)Lcom/tencent/component/plugin/Plugin;

    move-result-object v0

    .line 922
    .local v0, "plugin":Lcom/tencent/component/plugin/Plugin;
    if-eqz v0, :cond_2

    .line 923
    invoke-virtual {v0}, Lcom/tencent/component/plugin/Plugin;->getPluginCommander()Lcom/tencent/component/plugin/PluginCommander;

    move-result-object v1

    .line 924
    .local v1, "pluginDAO":Lcom/tencent/component/plugin/PluginCommander;
    if-eqz v1, :cond_1

    .line 925
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager$19$1;->this$1:Lcom/tencent/component/plugin/PluginManager$19;

    iget-object v3, v3, Lcom/tencent/component/plugin/PluginManager$19;->val$cmd:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/component/plugin/PluginManager$19$1;->this$1:Lcom/tencent/component/plugin/PluginManager$19;

    iget-object v4, v4, Lcom/tencent/component/plugin/PluginManager$19;->val$args:Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/component/plugin/PluginManager$19$1;->this$1:Lcom/tencent/component/plugin/PluginManager$19;

    iget-object v5, v5, Lcom/tencent/component/plugin/PluginManager$19;->val$defaultValue:Ljava/lang/Object;

    iget-object v6, p0, Lcom/tencent/component/plugin/PluginManager$19$1;->this$1:Lcom/tencent/component/plugin/PluginManager$19;

    iget-object v6, v6, Lcom/tencent/component/plugin/PluginManager$19;->val$callback:Lcom/tencent/component/plugin/PluginCommander$ReadDataCallback;

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/tencent/component/plugin/PluginCommander;->read(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/tencent/component/plugin/PluginCommander$ReadDataCallback;)Ljava/lang/Object;

    move-result-object v2

    .line 926
    .local v2, "result":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 927
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager$19$1;->this$1:Lcom/tencent/component/plugin/PluginManager$19;

    iget-object v3, v3, Lcom/tencent/component/plugin/PluginManager$19;->val$callback:Lcom/tencent/component/plugin/PluginCommander$ReadDataCallback;

    iget-object v4, p0, Lcom/tencent/component/plugin/PluginManager$19$1;->this$1:Lcom/tencent/component/plugin/PluginManager$19;

    iget-object v4, v4, Lcom/tencent/component/plugin/PluginManager$19;->val$cmd:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lcom/tencent/component/plugin/PluginCommander$ReadDataCallback;->onReadDataFinish(Ljava/lang/String;Ljava/lang/Object;)V

    .line 938
    .end local v0    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .end local v1    # "pluginDAO":Lcom/tencent/component/plugin/PluginCommander;
    .end local v2    # "result":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 930
    .restart local v0    # "plugin":Lcom/tencent/component/plugin/Plugin;
    .restart local v1    # "pluginDAO":Lcom/tencent/component/plugin/PluginCommander;
    :cond_1
    const-string v3, "PluginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to get data from plugin:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/component/plugin/PluginManager$19$1;->this$1:Lcom/tencent/component/plugin/PluginManager$19;

    iget-object v5, v5, Lcom/tencent/component/plugin/PluginManager$19;->val$id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (pluginDAO is null,onLoadPluginInfo)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 933
    .end local v1    # "pluginDAO":Lcom/tencent/component/plugin/PluginCommander;
    :cond_2
    const-string v3, "PluginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to get data from plugin:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/component/plugin/PluginManager$19$1;->this$1:Lcom/tencent/component/plugin/PluginManager$19;

    iget-object v5, v5, Lcom/tencent/component/plugin/PluginManager$19;->val$id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (plugin is null,onLoadPluginInfo)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 936
    .end local v0    # "plugin":Lcom/tencent/component/plugin/Plugin;
    :cond_3
    const-string v3, "PluginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to get data from plugin:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/component/plugin/PluginManager$19$1;->this$1:Lcom/tencent/component/plugin/PluginManager$19;

    iget-object v5, v5, Lcom/tencent/component/plugin/PluginManager$19;->val$id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (pluginInfo is null,onLoadPluginInfo)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/component/utils/log/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
