.class Lcom/tencent/component/plugin/TreeService$1$1;
.super Ljava/lang/Object;
.source "TreeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/TreeService$1;->bindService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/component/plugin/service/ILeafServiceConnection;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/component/plugin/TreeService$1;

.field final synthetic val$args:Landroid/os/Bundle;

.field final synthetic val$connection:Lcom/tencent/component/plugin/service/ILeafServiceConnection;

.field final synthetic val$leafServiceClassName:Ljava/lang/String;

.field final synthetic val$platformId:Ljava/lang/String;

.field final synthetic val$pluginId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/TreeService$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/component/plugin/service/ILeafServiceConnection;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tencent/component/plugin/TreeService$1;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/tencent/component/plugin/TreeService$1$1;->this$1:Lcom/tencent/component/plugin/TreeService$1;

    iput-object p2, p0, Lcom/tencent/component/plugin/TreeService$1$1;->val$platformId:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/component/plugin/TreeService$1$1;->val$pluginId:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/component/plugin/TreeService$1$1;->val$leafServiceClassName:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/component/plugin/TreeService$1$1;->val$args:Landroid/os/Bundle;

    iput-object p6, p0, Lcom/tencent/component/plugin/TreeService$1$1;->val$connection:Lcom/tencent/component/plugin/service/ILeafServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 60
    iget-object v3, p0, Lcom/tencent/component/plugin/TreeService$1$1;->this$1:Lcom/tencent/component/plugin/TreeService$1;

    iget-object v3, v3, Lcom/tencent/component/plugin/TreeService$1;->this$0:Lcom/tencent/component/plugin/TreeService;

    iget-object v4, p0, Lcom/tencent/component/plugin/TreeService$1$1;->val$platformId:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/component/plugin/TreeService$1$1;->val$pluginId:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/component/plugin/TreeService$1$1;->val$leafServiceClassName:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/tencent/component/plugin/TreeService;->access$100(Lcom/tencent/component/plugin/TreeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/component/plugin/LeafService;

    move-result-object v2

    .line 61
    .local v2, "leafService":Lcom/tencent/component/plugin/LeafService;
    if-eqz v2, :cond_1

    .line 62
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 63
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/tencent/component/plugin/TreeService$1$1;->val$args:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 64
    iget-object v3, p0, Lcom/tencent/component/plugin/TreeService$1$1;->val$args:Landroid/os/Bundle;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 66
    :cond_0
    invoke-virtual {v2, v1}, Lcom/tencent/component/plugin/LeafService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    .line 67
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/tencent/component/plugin/TreeService$1$1;->this$1:Lcom/tencent/component/plugin/TreeService$1;

    iget-object v3, v3, Lcom/tencent/component/plugin/TreeService$1;->this$0:Lcom/tencent/component/plugin/TreeService;

    iget-object v4, p0, Lcom/tencent/component/plugin/TreeService$1$1;->val$platformId:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/component/plugin/TreeService$1$1;->val$pluginId:Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/component/plugin/TreeService$1$1;->val$leafServiceClassName:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6, v1}, Lcom/tencent/component/plugin/TreeService;->access$200(Lcom/tencent/component/plugin/TreeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V

    .line 69
    :try_start_0
    iget-object v3, p0, Lcom/tencent/component/plugin/TreeService$1$1;->val$connection:Lcom/tencent/component/plugin/service/ILeafServiceConnection;

    iget-object v4, p0, Lcom/tencent/component/plugin/TreeService$1$1;->val$leafServiceClassName:Ljava/lang/String;

    invoke-interface {v3, v4, v0}, Lcom/tencent/component/plugin/service/ILeafServiceConnection;->connected(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 70
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
