.class Lcom/netease/cloud/nos/android/monitor/MonitorManager$1;
.super Ljava/lang/Object;
.source "MonitorManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cloud/nos/android/monitor/MonitorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/cloud/nos/android/monitor/MonitorManager;


# direct methods
.method constructor <init>(Lcom/netease/cloud/nos/android/monitor/MonitorManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager$1;->this$0:Lcom/netease/cloud/nos/android/monitor/MonitorManager;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager$1;->this$0:Lcom/netease/cloud/nos/android/monitor/MonitorManager;

    invoke-static {p2}, Lcom/netease/cloud/nos/android/monitor/ISendStat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/netease/cloud/nos/android/monitor/ISendStat;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->access$0(Lcom/netease/cloud/nos/android/monitor/MonitorManager;Lcom/netease/cloud/nos/android/monitor/ISendStat;)V

    .line 34
    invoke-static {}, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stat onServiceConnected, instSendStat="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager$1;->this$0:Lcom/netease/cloud/nos/android/monitor/MonitorManager;

    invoke-static {v2}, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->access$2(Lcom/netease/cloud/nos/android/monitor/MonitorManager;)Lcom/netease/cloud/nos/android/monitor/ISendStat;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager$1;->this$0:Lcom/netease/cloud/nos/android/monitor/MonitorManager;

    invoke-virtual {v0}, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instSendConfig()V

    .line 38
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager$1;->this$0:Lcom/netease/cloud/nos/android/monitor/MonitorManager;

    invoke-virtual {v0}, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instSendStatItem()V

    .line 39
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager$1;->this$0:Lcom/netease/cloud/nos/android/monitor/MonitorManager;

    invoke-virtual {v0}, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->instEndService()V

    .line 40
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/netease/cloud/nos/android/monitor/MonitorManager$1;->this$0:Lcom/netease/cloud/nos/android/monitor/MonitorManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->access$0(Lcom/netease/cloud/nos/android/monitor/MonitorManager;Lcom/netease/cloud/nos/android/monitor/ISendStat;)V

    .line 29
    return-void
.end method
