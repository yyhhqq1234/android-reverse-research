.class Lcom/tencent/component/plugin/service/ServiceManagerClient$1;
.super Ljava/lang/Object;
.source "ServiceManagerClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/service/ServiceManagerClient;->bindService()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/service/ServiceManagerClient;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/service/ServiceManagerClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/service/ServiceManagerClient;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient$1;->this$0:Lcom/tencent/component/plugin/service/ServiceManagerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient$1;->this$0:Lcom/tencent/component/plugin/service/ServiceManagerClient;

    invoke-static {p2}, Lcom/tencent/component/plugin/service/ILeafServiceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/component/plugin/service/ILeafServiceManager;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/plugin/service/ServiceManagerClient;->access$002(Lcom/tencent/component/plugin/service/ServiceManagerClient;Lcom/tencent/component/plugin/service/ILeafServiceManager;)Lcom/tencent/component/plugin/service/ILeafServiceManager;

    .line 69
    iget-object v0, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient$1;->this$0:Lcom/tencent/component/plugin/service/ServiceManagerClient;

    invoke-static {v0}, Lcom/tencent/component/plugin/service/ServiceManagerClient;->access$100(Lcom/tencent/component/plugin/service/ServiceManagerClient;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/tencent/component/plugin/service/ServiceManagerClient$1;->this$0:Lcom/tencent/component/plugin/service/ServiceManagerClient;

    invoke-static {v0}, Lcom/tencent/component/plugin/service/ServiceManagerClient;->access$100(Lcom/tencent/component/plugin/service/ServiceManagerClient;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 71
    monitor-exit v1

    .line 72
    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 64
    return-void
.end method
