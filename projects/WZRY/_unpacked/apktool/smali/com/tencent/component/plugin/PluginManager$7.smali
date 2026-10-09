.class Lcom/tencent/component/plugin/PluginManager$7;
.super Lcom/tencent/component/plugin/PluginManager$Code;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/PluginManager;->enablePlugin(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/PluginManager;

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginManager$7;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iput-object p2, p0, Lcom/tencent/component/plugin/PluginManager$7;->val$id:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/PluginManager$Code;-><init>(Lcom/tencent/component/plugin/PluginManager;)V

    return-void
.end method


# virtual methods
.method public code()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 443
    iget-object v1, p0, Lcom/tencent/component/plugin/PluginManager$7;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v1}, Lcom/tencent/component/plugin/PluginManager;->access$400(Lcom/tencent/component/plugin/PluginManager;)Lcom/tencent/component/plugin/IPluginManager;

    move-result-object v0

    .line 444
    .local v0, "pm":Lcom/tencent/component/plugin/IPluginManager;
    if-eqz v0, :cond_0

    .line 445
    iget-object v1, p0, Lcom/tencent/component/plugin/PluginManager$7;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v1}, Lcom/tencent/component/plugin/PluginManager;->access$700(Lcom/tencent/component/plugin/PluginManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager$7;->val$id:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/tencent/component/plugin/IPluginManager;->enablePlugin(Ljava/lang/String;Ljava/lang/String;)Z

    .line 447
    :cond_0
    return-void
.end method
