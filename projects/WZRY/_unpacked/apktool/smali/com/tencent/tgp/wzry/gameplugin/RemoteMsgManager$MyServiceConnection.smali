.class Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MyServiceConnection;
.super Ljava/lang/Object;
.source "RemoteMsgManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;


# direct methods
.method private constructor <init>(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MyServiceConnection;->this$0:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;
    .param p2, "x1"    # Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$1;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MyServiceConnection;-><init>(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MyServiceConnection;->this$0:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    invoke-static {p2}, Lcom/tencent/tgp/wzry/service/IRemoteService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/tgp/wzry/service/IRemoteService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->access$102(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;Lcom/tencent/tgp/wzry/service/IRemoteService;)Lcom/tencent/tgp/wzry/service/IRemoteService;

    .line 89
    iget-object v1, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MyServiceConnection;->this$0:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    invoke-static {v1}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->access$200(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :try_start_1
    iget-object v1, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MyServiceConnection;->this$0:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->access$302(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;Z)Z

    .line 91
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :try_start_2
    iget-object v1, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MyServiceConnection;->this$0:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    invoke-static {v1}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->access$400(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 93
    :try_start_3
    iget-object v1, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MyServiceConnection;->this$0:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    invoke-static {v1}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->access$400(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 94
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    :try_start_4
    invoke-static {}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->access$500()Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MyServiceConnection;->this$0:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    invoke-static {v1}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->access$600(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    invoke-static {}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->access$500()Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->access$700(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)Z

    .line 97
    iget-object v1, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MyServiceConnection;->this$0:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->access$602(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;Z)Z

    .line 100
    :cond_0
    const-string v1, "MessageManger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected, bounded:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MyServiceConnection;->this$0:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    invoke-static {v3}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->access$300(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mInited:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MyServiceConnection;->this$0:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    invoke-static {v3}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->access$600(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 104
    :goto_0
    return-void

    .line 91
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "MessageManger"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 94
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_1
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MyServiceConnection;->this$0:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->access$102(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;Lcom/tencent/tgp/wzry/service/IRemoteService;)Lcom/tencent/tgp/wzry/service/IRemoteService;

    .line 111
    iget-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MyServiceConnection;->this$0:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    invoke-static {v0}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->access$200(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager$MyServiceConnection;->this$0:Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;->access$302(Lcom/tencent/tgp/wzry/gameplugin/RemoteMsgManager;Z)Z

    .line 113
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    const-string v0, "MessageManger"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    return-void

    .line 113
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
