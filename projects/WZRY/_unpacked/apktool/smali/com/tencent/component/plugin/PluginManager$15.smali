.class Lcom/tencent/component/plugin/PluginManager$15;
.super Lcom/tencent/component/plugin/PluginManager$Code;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/PluginManager;->getPluginList(Lcom/tencent/component/plugin/PluginManager$GetPluginListCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/PluginManager;

.field final synthetic val$callback:Lcom/tencent/component/plugin/PluginManager$GetPluginListCallback;

.field final synthetic val$execludeCorePlugin:Z


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/PluginManager;ZLcom/tencent/component/plugin/PluginManager$GetPluginListCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    .line 670
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginManager$15;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iput-boolean p2, p0, Lcom/tencent/component/plugin/PluginManager$15;->val$execludeCorePlugin:Z

    iput-object p3, p0, Lcom/tencent/component/plugin/PluginManager$15;->val$callback:Lcom/tencent/component/plugin/PluginManager$GetPluginListCallback;

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
    .line 674
    iget-object v4, p0, Lcom/tencent/component/plugin/PluginManager$15;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v4}, Lcom/tencent/component/plugin/PluginManager;->access$400(Lcom/tencent/component/plugin/PluginManager;)Lcom/tencent/component/plugin/IPluginManager;

    move-result-object v3

    .line 675
    .local v3, "pm":Lcom/tencent/component/plugin/IPluginManager;
    if-eqz v3, :cond_3

    .line 676
    iget-object v4, p0, Lcom/tencent/component/plugin/PluginManager$15;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v4}, Lcom/tencent/component/plugin/PluginManager;->access$700(Lcom/tencent/component/plugin/PluginManager;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/tencent/component/plugin/IPluginManager;->getAllPluginInfos(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 677
    .local v2, "pluginInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    iget-boolean v4, p0, Lcom/tencent/component/plugin/PluginManager$15;->val$execludeCorePlugin:Z

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 678
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 679
    .local v0, "nonCorePluginList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/component/plugin/PluginInfo;

    .line 680
    .local v1, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    iget-boolean v5, v1, Lcom/tencent/component/plugin/PluginInfo;->corePlugin:Z

    if-nez v5, :cond_0

    .line 683
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 685
    .end local v1    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_1
    move-object v2, v0

    .line 687
    .end local v0    # "nonCorePluginList":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    :cond_2
    iget-object v4, p0, Lcom/tencent/component/plugin/PluginManager$15;->val$callback:Lcom/tencent/component/plugin/PluginManager$GetPluginListCallback;

    invoke-interface {v4, v2}, Lcom/tencent/component/plugin/PluginManager$GetPluginListCallback;->onGetPluginList(Ljava/util/List;)V

    .line 689
    .end local v2    # "pluginInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    :cond_3
    return-void
.end method
