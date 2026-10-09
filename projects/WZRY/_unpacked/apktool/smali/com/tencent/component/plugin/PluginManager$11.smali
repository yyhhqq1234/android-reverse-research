.class Lcom/tencent/component/plugin/PluginManager$11;
.super Lcom/tencent/component/plugin/PluginManager$Code;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/PluginManager;->uninstall(Lcom/tencent/component/plugin/PluginInfo;Lcom/tencent/component/plugin/UninstallPluginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/PluginManager;

.field final synthetic val$listener:Lcom/tencent/component/plugin/UninstallPluginListener;

.field final synthetic val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/PluginManager;Lcom/tencent/component/plugin/PluginInfo;Lcom/tencent/component/plugin/UninstallPluginListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginManager$11;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iput-object p2, p0, Lcom/tencent/component/plugin/PluginManager$11;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    iput-object p3, p0, Lcom/tencent/component/plugin/PluginManager$11;->val$listener:Lcom/tencent/component/plugin/UninstallPluginListener;

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
    .line 550
    iget-object v1, p0, Lcom/tencent/component/plugin/PluginManager$11;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v1}, Lcom/tencent/component/plugin/PluginManager;->access$400(Lcom/tencent/component/plugin/PluginManager;)Lcom/tencent/component/plugin/IPluginManager;

    move-result-object v0

    .line 551
    .local v0, "pm":Lcom/tencent/component/plugin/IPluginManager;
    if-eqz v0, :cond_0

    .line 552
    iget-object v1, p0, Lcom/tencent/component/plugin/PluginManager$11;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v1}, Lcom/tencent/component/plugin/PluginManager;->access$700(Lcom/tencent/component/plugin/PluginManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager$11;->val$pluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    iget-object v3, p0, Lcom/tencent/component/plugin/PluginManager$11;->val$listener:Lcom/tencent/component/plugin/UninstallPluginListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/component/plugin/IPluginManager;->uninstall(Ljava/lang/String;Lcom/tencent/component/plugin/PluginInfo;Lcom/tencent/component/plugin/UninstallPluginListener;)V

    .line 554
    :cond_0
    return-void
.end method
