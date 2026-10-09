.class Lcom/tencent/qqgamemi/QmiCorePluginManager$3;
.super Ljava/lang/Object;
.source "QmiCorePluginManager.java"

# interfaces
.implements Lcom/tencent/component/plugin/PluginManager$GetPluginListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qqgamemi/QmiCorePluginManager;->updatePluginList(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qqgamemi/QmiCorePluginManager;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/tencent/qqgamemi/QmiCorePluginManager;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/qqgamemi/QmiCorePluginManager;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager$3;->this$0:Lcom/tencent/qqgamemi/QmiCorePluginManager;

    iput-object p2, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager$3;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetPluginList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/component/plugin/PluginInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, "pluginInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    iget-object v2, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager$3;->this$0:Lcom/tencent/qqgamemi/QmiCorePluginManager;

    invoke-static {v2, p1}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->access$602(Lcom/tencent/qqgamemi/QmiCorePluginManager;Ljava/util/List;)Ljava/util/List;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 183
    .local v0, "corePluginList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/component/plugin/PluginInfo;>;"
    if-eqz p1, :cond_1

    .line 184
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/component/plugin/PluginInfo;

    .line 185
    .local v1, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    invoke-static {}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updatePluginList get pluginInfoID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    const-string v4, "com.tencent.qqgamemi.plugin.dpsrp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    .end local v1    # "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    :cond_1
    iget-object v2, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager$3;->this$0:Lcom/tencent/qqgamemi/QmiCorePluginManager;

    invoke-static {v2, v0}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->access$402(Lcom/tencent/qqgamemi/QmiCorePluginManager;Ljava/util/List;)Ljava/util/List;

    .line 195
    iget-object v2, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager$3;->val$runnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 196
    iget-object v2, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager$3;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 198
    :cond_2
    return-void
.end method
