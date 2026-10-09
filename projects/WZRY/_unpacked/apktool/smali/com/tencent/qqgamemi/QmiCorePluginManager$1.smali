.class Lcom/tencent/qqgamemi/QmiCorePluginManager$1;
.super Ljava/lang/Object;
.source "QmiCorePluginManager.java"

# interfaces
.implements Lcom/tencent/component/plugin/PluginManager$PluginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qqgamemi/QmiCorePluginManager;->initIfNecessary(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qqgamemi/QmiCorePluginManager;


# direct methods
.method constructor <init>(Lcom/tencent/qqgamemi/QmiCorePluginManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/qqgamemi/QmiCorePluginManager;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager$1;->this$0:Lcom/tencent/qqgamemi/QmiCorePluginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPendingInstallFinish(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "corePlugin"    # Z
    .param p3, "extraInfo"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-static {}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPendingInstallFinish:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | extraInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | errorMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|corePlugin:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public onPlatformInitialFinish()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 94
    invoke-static {}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "init onPlatformInitialFinish"

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v2, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager$1;->this$0:Lcom/tencent/qqgamemi/QmiCorePluginManager;

    invoke-static {v2}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->access$100(Lcom/tencent/qqgamemi/QmiCorePluginManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 96
    :try_start_0
    iget-object v2, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager$1;->this$0:Lcom/tencent/qqgamemi/QmiCorePluginManager;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->access$202(Lcom/tencent/qqgamemi/QmiCorePluginManager;Z)Z

    .line 97
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    invoke-static {}, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->getCpuInfo()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "cpu":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/qqgamemi/util/DeviceDetectUtil;->getGpuInfo()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "gpu":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cpu="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",   gpu ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v2

    const-string v3, "qmi.getCpuGpuInfo"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    aput-object v0, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/tencent/qqgamemi/SDKApiHelper;->invokeQmiWriteCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    iget-object v2, p0, Lcom/tencent/qqgamemi/QmiCorePluginManager$1;->this$0:Lcom/tencent/qqgamemi/QmiCorePluginManager;

    invoke-static {v2}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->access$300(Lcom/tencent/qqgamemi/QmiCorePluginManager;)V

    .line 103
    return-void

    .line 97
    .end local v0    # "cpu":Ljava/lang/String;
    .end local v1    # "gpu":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onPlatformInitialStart()V
    .locals 2

    .prologue
    .line 89
    invoke-static {}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "init onPlatformInitialStart"

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public onPluginChanged(Ljava/lang/String;II)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "changeFlags"    # I
    .param p3, "statusFlags"    # I

    .prologue
    .line 79
    invoke-static {}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeFlags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";statusFlags:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public onPluginInstalled(Ljava/lang/String;II)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "lastVersion"    # I
    .param p3, "version"    # I

    .prologue
    .line 109
    return-void
.end method

.method public onPluginUninstall(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 114
    return-void
.end method

.method public onStartCheckPluginSurvive(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/component/plugin/PluginInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "pluginInfos":Ljava/util/List;, "Ljava/util/List<Lcom/tencent/component/plugin/PluginInfo;>;"
    return-void
.end method
