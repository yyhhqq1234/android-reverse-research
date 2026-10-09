.class Lcom/tencent/component/plugin/TreeService$1;
.super Lcom/tencent/component/plugin/service/ILeafServiceManager$Stub;
.source "TreeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/TreeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/TreeService;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/TreeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/TreeService;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/tencent/component/plugin/TreeService$1;->this$0:Lcom/tencent/component/plugin/TreeService;

    invoke-direct {p0}, Lcom/tencent/component/plugin/service/ILeafServiceManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public bindService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/component/plugin/service/ILeafServiceConnection;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "platformId"    # Ljava/lang/String;
    .param p2, "pluginId"    # Ljava/lang/String;
    .param p3, "leafServiceClassName"    # Ljava/lang/String;
    .param p4, "connection"    # Lcom/tencent/component/plugin/service/ILeafServiceConnection;
    .param p5, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeService$1;->this$0:Lcom/tencent/component/plugin/TreeService;

    invoke-static {v0, p1}, Lcom/tencent/component/plugin/TreeService;->access$000(Lcom/tencent/component/plugin/TreeService;Ljava/lang/String;)V

    .line 57
    iget-object v7, p0, Lcom/tencent/component/plugin/TreeService$1;->this$0:Lcom/tencent/component/plugin/TreeService;

    new-instance v0, Lcom/tencent/component/plugin/TreeService$1$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/tencent/component/plugin/TreeService$1$1;-><init>(Lcom/tencent/component/plugin/TreeService$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/tencent/component/plugin/service/ILeafServiceConnection;)V

    invoke-static {v7, v0}, Lcom/tencent/component/plugin/TreeService;->access$300(Lcom/tencent/component/plugin/TreeService;Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method public startService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "platformId"    # Ljava/lang/String;
    .param p2, "pluginId"    # Ljava/lang/String;
    .param p3, "leafServiceClassName"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeService$1;->this$0:Lcom/tencent/component/plugin/TreeService;

    invoke-static {v0, p1}, Lcom/tencent/component/plugin/TreeService;->access$000(Lcom/tencent/component/plugin/TreeService;Ljava/lang/String;)V

    .line 97
    iget-object v6, p0, Lcom/tencent/component/plugin/TreeService$1;->this$0:Lcom/tencent/component/plugin/TreeService;

    new-instance v0, Lcom/tencent/component/plugin/TreeService$1$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/component/plugin/TreeService$1$3;-><init>(Lcom/tencent/component/plugin/TreeService$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v6, v0}, Lcom/tencent/component/plugin/TreeService;->access$300(Lcom/tencent/component/plugin/TreeService;Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method

.method public stopService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "platformId"    # Ljava/lang/String;
    .param p2, "pluginId"    # Ljava/lang/String;
    .param p3, "leafServiceClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v1, p0, Lcom/tencent/component/plugin/TreeService$1;->this$0:Lcom/tencent/component/plugin/TreeService;

    invoke-static {v1, p1, p2, p3}, Lcom/tencent/component/plugin/TreeService;->access$400(Lcom/tencent/component/plugin/TreeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/component/plugin/LeafService;

    move-result-object v0

    .line 115
    .local v0, "leafService":Lcom/tencent/component/plugin/LeafService;
    if-eqz v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/tencent/component/plugin/TreeService$1;->this$0:Lcom/tencent/component/plugin/TreeService;

    invoke-static {v1, p1, p2, p3}, Lcom/tencent/component/plugin/TreeService;->access$500(Lcom/tencent/component/plugin/TreeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/tencent/component/plugin/TreeService$1;->this$0:Lcom/tencent/component/plugin/TreeService;

    new-instance v2, Lcom/tencent/component/plugin/TreeService$1$4;

    invoke-direct {v2, p0, v0}, Lcom/tencent/component/plugin/TreeService$1$4;-><init>(Lcom/tencent/component/plugin/TreeService$1;Lcom/tencent/component/plugin/LeafService;)V

    invoke-static {v1, v2}, Lcom/tencent/component/plugin/TreeService;->access$300(Lcom/tencent/component/plugin/TreeService;Ljava/lang/Runnable;)V

    .line 124
    :cond_0
    return-void
.end method

.method public unbindService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/component/plugin/service/ILeafServiceConnection;)V
    .locals 7
    .param p1, "platformId"    # Ljava/lang/String;
    .param p2, "pluginId"    # Ljava/lang/String;
    .param p3, "leafServiceClassName"    # Ljava/lang/String;
    .param p4, "connection"    # Lcom/tencent/component/plugin/service/ILeafServiceConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeService$1;->this$0:Lcom/tencent/component/plugin/TreeService;

    invoke-static {v0, p1, p2, p3}, Lcom/tencent/component/plugin/TreeService;->access$400(Lcom/tencent/component/plugin/TreeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/component/plugin/LeafService;

    move-result-object v5

    .line 80
    .local v5, "leafService":Lcom/tencent/component/plugin/LeafService;
    if-eqz v5, :cond_0

    .line 81
    iget-object v0, p0, Lcom/tencent/component/plugin/TreeService$1;->this$0:Lcom/tencent/component/plugin/TreeService;

    invoke-static {v0, p1, p2, p3}, Lcom/tencent/component/plugin/TreeService;->access$500(Lcom/tencent/component/plugin/TreeService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v6, p0, Lcom/tencent/component/plugin/TreeService$1;->this$0:Lcom/tencent/component/plugin/TreeService;

    new-instance v0, Lcom/tencent/component/plugin/TreeService$1$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/component/plugin/TreeService$1$2;-><init>(Lcom/tencent/component/plugin/TreeService$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/component/plugin/LeafService;)V

    invoke-static {v6, v0}, Lcom/tencent/component/plugin/TreeService;->access$300(Lcom/tencent/component/plugin/TreeService;Ljava/lang/Runnable;)V

    .line 92
    :cond_0
    return-void
.end method
