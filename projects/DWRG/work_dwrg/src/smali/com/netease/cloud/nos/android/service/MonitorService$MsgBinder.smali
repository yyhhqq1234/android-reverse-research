.class public Lcom/netease/cloud/nos/android/service/MonitorService$MsgBinder;
.super Lcom/netease/cloud/nos/android/monitor/ISendStat$Stub;
.source "MonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cloud/nos/android/service/MonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MsgBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/cloud/nos/android/service/MonitorService;


# direct methods
.method public constructor <init>(Lcom/netease/cloud/nos/android/service/MonitorService;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/netease/cloud/nos/android/service/MonitorService$MsgBinder;->this$0:Lcom/netease/cloud/nos/android/service/MonitorService;

    invoke-direct {p0}, Lcom/netease/cloud/nos/android/monitor/ISendStat$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendConfig(Lcom/netease/cloud/nos/android/monitor/MonitorConfig;)V
    .locals 5
    .param p1, "config"    # Lcom/netease/cloud/nos/android/monitor/MonitorConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {}, Lcom/netease/cloud/nos/android/service/MonitorService;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Receive Monitor config"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->getMonitorHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v0

    .line 44
    .local v0, "conf":Lcom/netease/cloud/nos/android/core/AcceleratorConf;
    invoke-virtual {p1}, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->getMonitorHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->setMontiroHost(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->getMonitorInterval()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->setMonitorInterval(J)V

    .line 48
    :try_start_0
    invoke-virtual {p1}, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->getConnectionTimeout()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->setConnectionTimeout(I)V

    .line 49
    invoke-virtual {p1}, Lcom/netease/cloud/nos/android/monitor/MonitorConfig;->getSoTimeout()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->setSoTimeout(I)V
    :try_end_0
    .catch Lcom/netease/cloud/nos/android/exception/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    invoke-static {}, Lcom/netease/cloud/nos/android/service/MonitorService;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "current Monitor config"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/netease/cloud/nos/android/core/WanAccelerator;->getConf()Lcom/netease/cloud/nos/android/core/AcceleratorConf;

    move-result-object v4

    invoke-virtual {v4}, Lcom/netease/cloud/nos/android/core/AcceleratorConf;->getMonitorHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-static {v2, v3}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v2, p0, Lcom/netease/cloud/nos/android/service/MonitorService$MsgBinder;->this$0:Lcom/netease/cloud/nos/android/service/MonitorService;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/netease/cloud/nos/android/service/MonitorService;->access$3(Lcom/netease/cloud/nos/android/service/MonitorService;Z)V

    .line 58
    return-void

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Lcom/netease/cloud/nos/android/exception/InvalidParameterException;
    invoke-virtual {v1}, Lcom/netease/cloud/nos/android/exception/InvalidParameterException;->printStackTrace()V

    goto :goto_0
.end method

.method public sendStat(Lcom/netease/cloud/nos/android/monitor/StatisticItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/netease/cloud/nos/android/monitor/StatisticItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {p1}, Lcom/netease/cloud/nos/android/monitor/Monitor;->set(Lcom/netease/cloud/nos/android/monitor/StatisticItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lcom/netease/cloud/nos/android/service/MonitorService;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "send monitor data immediately"

    invoke-static {v0, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/netease/cloud/nos/android/service/MonitorService$MsgBinder;->this$0:Lcom/netease/cloud/nos/android/service/MonitorService;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/service/MonitorService;->access$1(Lcom/netease/cloud/nos/android/service/MonitorService;)V

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/netease/cloud/nos/android/service/MonitorService$MsgBinder;->this$0:Lcom/netease/cloud/nos/android/service/MonitorService;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/service/MonitorService;->access$2(Lcom/netease/cloud/nos/android/service/MonitorService;)Z

    move-result v0

    return v0
.end method
