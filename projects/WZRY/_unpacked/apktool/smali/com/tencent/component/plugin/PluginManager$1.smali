.class Lcom/tencent/component/plugin/PluginManager$1;
.super Ljava/lang/Object;
.source "PluginManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/component/plugin/PluginManager;->bindService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/component/plugin/PluginManager;


# direct methods
.method constructor <init>(Lcom/tencent/component/plugin/PluginManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/component/plugin/PluginManager;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginManager$1;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 94
    const-string v0, "PluginManager"

    const-string v1, "pluginService connected."

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager$1;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v0}, Lcom/tencent/component/plugin/PluginManager;->access$000(Lcom/tencent/component/plugin/PluginManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager$1;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {p2}, Lcom/tencent/component/plugin/IPluginManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/component/plugin/IPluginManager;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/component/plugin/PluginManager;->access$102(Lcom/tencent/component/plugin/PluginManager;Lcom/tencent/component/plugin/IPluginManager;)Lcom/tencent/component/plugin/IPluginManager;

    .line 97
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager$1;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v0}, Lcom/tencent/component/plugin/PluginManager;->access$000(Lcom/tencent/component/plugin/PluginManager;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 98
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager$1;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v0}, Lcom/tencent/component/plugin/PluginManager;->access$200(Lcom/tencent/component/plugin/PluginManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager$1;->this$0:Lcom/tencent/component/plugin/PluginManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/component/plugin/PluginManager;->access$202(Lcom/tencent/component/plugin/PluginManager;Z)Z

    .line 101
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager$1;->this$0:Lcom/tencent/component/plugin/PluginManager;

    invoke-static {v0}, Lcom/tencent/component/plugin/PluginManager;->access$300(Lcom/tencent/component/plugin/PluginManager;)V

    .line 103
    :cond_0
    return-void

    .line 98
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginManager$1;->this$0:Lcom/tencent/component/plugin/PluginManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/component/plugin/PluginManager;->access$202(Lcom/tencent/component/plugin/PluginManager;Z)Z

    .line 108
    const-string v0, "PluginManager"

    const-string v1, "pluginService disconnected."

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method
