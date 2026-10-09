.class Lcom/tencent/component/plugin/PluginManager$10$1;
.super Lcom/tencent/component/plugin/InstallPluginListener$Stub;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/PluginManager$10;->code()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/component/plugin/PluginManager$10;

.field final synthetic val$pm:Lcom/tencent/component/plugin/IPluginManager;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/PluginManager$10;Lcom/tencent/component/plugin/IPluginManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tencent/component/plugin/PluginManager$10;

    .prologue
    .line 509
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginManager$10$1;->this$1:Lcom/tencent/component/plugin/PluginManager$10;

    iput-object p2, p0, Lcom/tencent/component/plugin/PluginManager$10$1;->val$pm:Lcom/tencent/component/plugin/IPluginManager;

    invoke-direct {p0}, Lcom/tencent/component/plugin/InstallPluginListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "failMsg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 521
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager$10$1;->this$1:Lcom/tencent/component/plugin/PluginManager$10;

    iget-object v0, v0, Lcom/tencent/component/plugin/PluginManager$10;->val$listener:Lcom/tencent/component/plugin/InstallPluginListener;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager$10$1;->this$1:Lcom/tencent/component/plugin/PluginManager$10;

    iget-object v0, v0, Lcom/tencent/component/plugin/PluginManager$10;->val$listener:Lcom/tencent/component/plugin/InstallPluginListener;

    invoke-interface {v0, p1}, Lcom/tencent/component/plugin/InstallPluginListener;->onInstallFailed(Ljava/lang/String;)V

    .line 524
    :cond_0
    return-void
.end method

.method public onInstallSuccess()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 513
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager$10$1;->this$1:Lcom/tencent/component/plugin/PluginManager$10;

    iget-object v0, v0, Lcom/tencent/component/plugin/PluginManager$10;->this$0:Lcom/tencent/component/plugin/PluginManager;

    iget-object v1, p0, Lcom/tencent/component/plugin/PluginManager$10$1;->val$pm:Lcom/tencent/component/plugin/IPluginManager;

    iget-object v2, p0, Lcom/tencent/component/plugin/PluginManager$10$1;->this$1:Lcom/tencent/component/plugin/PluginManager$10;

    iget-object v2, v2, Lcom/tencent/component/plugin/PluginManager$10;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v2}, Lcom/tencent/component/plugin/PluginManager;->access$700(Lcom/tencent/component/plugin/PluginManager;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tencent/component/plugin/IPluginManager;->getAllPluginInfos(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/plugin/PluginManager;->access$800(Lcom/tencent/component/plugin/PluginManager;Ljava/util/List;)V

    .line 514
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager$10$1;->this$1:Lcom/tencent/component/plugin/PluginManager$10;

    iget-object v0, v0, Lcom/tencent/component/plugin/PluginManager$10;->val$listener:Lcom/tencent/component/plugin/InstallPluginListener;

    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager$10$1;->this$1:Lcom/tencent/component/plugin/PluginManager$10;

    iget-object v0, v0, Lcom/tencent/component/plugin/PluginManager$10;->val$listener:Lcom/tencent/component/plugin/InstallPluginListener;

    invoke-interface {v0}, Lcom/tencent/component/plugin/InstallPluginListener;->onInstallSuccess()V

    .line 517
    :cond_0
    return-void
.end method
