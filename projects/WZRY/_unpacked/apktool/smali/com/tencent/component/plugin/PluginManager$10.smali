.class Lcom/tencent/component/plugin/PluginManager$10;
.super Lcom/tencent/component/plugin/PluginManager$Code;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/PluginManager;->install(Ljava/lang/String;Lcom/tencent/component/plugin/InstallPluginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/PluginManager;

.field final synthetic val$listener:Lcom/tencent/component/plugin/InstallPluginListener;

.field final synthetic val$pluginLocation:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/PluginManager;Ljava/lang/String;Lcom/tencent/component/plugin/InstallPluginListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    .line 503
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginManager$10;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iput-object p2, p0, Lcom/tencent/component/plugin/PluginManager$10;->val$pluginLocation:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/component/plugin/PluginManager$10;->val$listener:Lcom/tencent/component/plugin/InstallPluginListener;

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
    .line 507
    iget-object v1, p0, Lcom/tencent/component/plugin/PluginManager$10;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v1}, Lcom/tencent/component/plugin/PluginManager;->access$400(Lcom/tencent/component/plugin/PluginManager;)Lcom/tencent/component/plugin/IPluginManager;

    move-result-object v0

    .line 508
    .local v0, "pm":Lcom/tencent/component/plugin/IPluginManager;
    if-eqz v0, :cond_0

    .line 509
    iget-object v1, p0, Lcom/tencent/component/plugin/PluginManager$10;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v1}, Lcom/tencent/component/plugin/PluginManager;->access$700(Lcom/tencent/component/plugin/PluginManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager$10;->val$pluginLocation:Ljava/lang/String;

    new-instance v3, Lcom/tencent/component/plugin/PluginManager$10$1;

    invoke-direct {v3, p0, v0}, Lcom/tencent/component/plugin/PluginManager$10$1;-><init>(Lcom/tencent/component/plugin/PluginManager$10;Lcom/tencent/component/plugin/IPluginManager;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/component/plugin/IPluginManager;->install(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/component/plugin/InstallPluginListener;)V

    .line 527
    :cond_0
    return-void
.end method
