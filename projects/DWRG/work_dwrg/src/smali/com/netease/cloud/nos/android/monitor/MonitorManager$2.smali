.class Lcom/netease/cloud/nos/android/monitor/MonitorManager$2;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 128
    invoke-static {p2}, Lcom/netease/cloud/nos/android/monitor/ISendStat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/netease/cloud/nos/android/monitor/ISendStat;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->access$3(Lcom/netease/cloud/nos/android/monitor/ISendStat;)V

    .line 129
    invoke-static {}, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stat onServiceConnected, iSendStat="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->access$4()Lcom/netease/cloud/nos/android/monitor/ISendStat;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/netease/cloud/nos/android/monitor/MonitorManager;->access$3(Lcom/netease/cloud/nos/android/monitor/ISendStat;)V

    .line 124
    return-void
.end method
