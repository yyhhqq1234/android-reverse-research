.class Lcom/tencent/component/plugin/PluginManager$14;
.super Lcom/tencent/component/plugin/PluginManager$Code;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/PluginManager;->getPluginInfo(Ljava/lang/String;Lcom/tencent/component/plugin/PluginManager$GetPluginInfoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/PluginManager;

.field final synthetic val$getPluginInfoCallback:Lcom/tencent/component/plugin/PluginManager$GetPluginInfoCallback;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/PluginManager;Lcom/tencent/component/plugin/PluginManager$GetPluginInfoCallback;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginManager$14;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iput-object p2, p0, Lcom/tencent/component/plugin/PluginManager$14;->val$getPluginInfoCallback:Lcom/tencent/component/plugin/PluginManager$GetPluginInfoCallback;

    iput-object p3, p0, Lcom/tencent/component/plugin/PluginManager$14;->val$id:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/PluginManager$Code;-><init>(Lcom/tencent/component/plugin/PluginManager;)V

    return-void
.end method


# virtual methods
.method public code()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 631
    iget-object v1, p0, Lcom/tencent/component/plugin/PluginManager$14;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v1}, Lcom/tencent/component/plugin/PluginManager;->access$400(Lcom/tencent/component/plugin/PluginManager;)Lcom/tencent/component/plugin/IPluginManager;

    move-result-object v0

    .line 632
    .local v0, "pm":Lcom/tencent/component/plugin/IPluginManager;
    if-eqz v0, :cond_0

    .line 633
    iget-object v1, p0, Lcom/tencent/component/plugin/PluginManager$14;->val$getPluginInfoCallback:Lcom/tencent/component/plugin/PluginManager$GetPluginInfoCallback;

    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager$14;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v2}, Lcom/tencent/component/plugin/PluginManager;->access$700(Lcom/tencent/component/plugin/PluginManager;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager$14;->val$id:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Lcom/tencent/component/plugin/IPluginManager;->getPluginInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tencent/component/plugin/PluginManager$GetPluginInfoCallback;->onGetPluginInfo(Lcom/tencent/component/plugin/PluginInfo;)V

    .line 635
    :cond_0
    return-void
.end method
