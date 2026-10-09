.class Lcom/tencent/component/plugin/PluginManager$3;
.super Lcom/tencent/component/plugin/PluginManager$Code;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/PluginManager;->onHelloFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/PluginManager;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/PluginManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginManager$3;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/PluginManager$Code;-><init>(Lcom/tencent/component/plugin/PluginManager;)V

    return-void
.end method


# virtual methods
.method public code()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 196
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager$3;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v3}, Lcom/tencent/component/plugin/PluginManager;->access$400(Lcom/tencent/component/plugin/PluginManager;)Lcom/tencent/component/plugin/IPluginManager;

    move-result-object v2

    .line 197
    .local v2, "pm":Lcom/tencent/component/plugin/IPluginManager;
    if-eqz v2, :cond_1

    .line 198
    const/4 v1, 0x0

    .line 200
    .local v1, "pluginInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    :try_start_0
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager$3;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v3}, Lcom/tencent/component/plugin/PluginManager;->access$700(Lcom/tencent/component/plugin/PluginManager;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/tencent/component/plugin/IPluginManager;->getAllPluginInfos(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 204
    :goto_0
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager$3;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iget-object v3, v3, Lcom/tencent/component/plugin/PluginManager;->pluginPlatformConfig:Lcom/tencent/component/plugin/PluginPlatformConfig;

    iget-boolean v3, v3, Lcom/tencent/component/plugin/PluginPlatformConfig;->enbaleCorePlugin:Z

    if-eqz v3, :cond_0

    .line 206
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager$3;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v3, v1}, Lcom/tencent/component/plugin/PluginManager;->access$800(Lcom/tencent/component/plugin/PluginManager;Ljava/util/List;)V

    .line 209
    :cond_0
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager$3;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v3, v1}, Lcom/tencent/component/plugin/PluginManager;->access$900(Lcom/tencent/component/plugin/PluginManager;Ljava/util/List;)V

    .line 211
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager$3;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v3, v1}, Lcom/tencent/component/plugin/PluginManager;->access$1000(Lcom/tencent/component/plugin/PluginManager;Ljava/util/List;)V

    .line 213
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager$3;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v3, v1}, Lcom/tencent/component/plugin/PluginManager;->access$1100(Lcom/tencent/component/plugin/PluginManager;Ljava/util/List;)V

    .line 215
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager$3;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v3, v5}, Lcom/tencent/component/plugin/PluginManager;->access$202(Lcom/tencent/component/plugin/PluginManager;Z)Z

    .line 216
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager$3;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v3, v5}, Lcom/tencent/component/plugin/PluginManager;->access$1202(Lcom/tencent/component/plugin/PluginManager;Z)Z

    .line 217
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager$3;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v3}, Lcom/tencent/component/plugin/PluginManager;->access$1300(Lcom/tencent/component/plugin/PluginManager;)V

    .line 218
    const-string v3, "PluginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "say hello finished (platformId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/component/plugin/PluginManager$3;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v5}, Lcom/tencent/component/plugin/PluginManager;->access$700(Lcom/tencent/component/plugin/PluginManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .end local v1    # "pluginInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    :goto_1
    return-void

    .line 201
    .restart local v1    # "pluginInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "PluginManager"

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 220
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "pluginInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    :cond_1
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager$3;->this$0:Lcom/tencent/component/plugin/PluginManager;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/tencent/component/plugin/PluginManager;->access$202(Lcom/tencent/component/plugin/PluginManager;Z)Z

    .line 221
    const-string v3, "PluginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "say hello failed as pluginManager binder is null (platformId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/component/plugin/PluginManager$3;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v5}, Lcom/tencent/component/plugin/PluginManager;->access$700(Lcom/tencent/component/plugin/PluginManager;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
