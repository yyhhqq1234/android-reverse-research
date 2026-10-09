.class final Lcom/tencent/midas/control/APMidasPayHelper$10;
.super Ljava/lang/Object;
.source "APMidasPayHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/midas/control/APMidasPayHelper;->preLoadMidasPay(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/midas/control/IAPInitCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$from:Ljava/lang/String;

.field final synthetic val$initCallback:Lcom/tencent/midas/control/IAPInitCallBack;

.field final synthetic val$launchInterfaceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/tencent/midas/control/IAPInitCallBack;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1006
    iput-object p1, p0, Lcom/tencent/midas/control/APMidasPayHelper$10;->val$launchInterfaceName:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/midas/control/APMidasPayHelper$10;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/midas/control/APMidasPayHelper$10;->val$initCallback:Lcom/tencent/midas/control/IAPInitCallBack;

    iput-object p4, p0, Lcom/tencent/midas/control/APMidasPayHelper$10;->val$from:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1009
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1010
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "version"

    const-string v7, "1.6.9a"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1011
    const-string v6, "req"

    invoke-static {}, Lcom/tencent/midas/control/APMidasPayHelper;->access$200()Lcom/tencent/midas/api/request/APMidasBaseRequest;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1012
    const-string v6, "env"

    invoke-static {}, Lcom/tencent/midas/control/APMidasPayHelper;->access$300()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1013
    const-string v6, "logEnable"

    invoke-static {}, Lcom/tencent/midas/control/APMidasPayHelper;->access$400()Z

    move-result v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1014
    const-string v6, "launchInterfaceName"

    iget-object v7, p0, Lcom/tencent/midas/control/APMidasPayHelper$10;->val$launchInterfaceName:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1018
    iget-object v0, p0, Lcom/tencent/midas/control/APMidasPayHelper$10;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 1019
    .local v0, "activity":Landroid/app/Activity;
    const/4 v5, 0x0

    .line 1021
    .local v5, "obj":Ljava/lang/Object;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1022
    .local v2, "dateStart":J
    sget-object v6, Lcom/tencent/midas/control/APMidasPayHelper;->MIDAS_PLUGIN_NAME:Ljava/lang/String;

    sget-object v7, Lcom/tencent/midas/control/APMidasPayHelper;->PKG_DISTRIBUTE:Ljava/lang/String;

    sget-object v8, Lcom/tencent/midas/control/APMidasPayHelper;->MED_DISTRIBUTE_INIT:Ljava/lang/String;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    invoke-static {v0, v6, v7, v8, v9}, Lcom/tencent/midas/plugin/APPluginInterfaceManager;->initPluginInterface(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1024
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/midas/control/APMidasPayHelper$10;->val$launchInterfaceName:Ljava/lang/String;

    const-string v8, "sdk.plugin.init.kernel.totaltime"

    invoke-virtual {v6, v7, v8, v2, v3}, Lcom/tencent/midas/data/APPluginReportManager;->insertTimeDataEx(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1026
    iget-object v6, p0, Lcom/tencent/midas/control/APMidasPayHelper$10;->val$initCallback:Lcom/tencent/midas/control/IAPInitCallBack;

    if-eqz v6, :cond_0

    .line 1027
    iget-object v6, p0, Lcom/tencent/midas/control/APMidasPayHelper$10;->val$initCallback:Lcom/tencent/midas/control/IAPInitCallBack;

    const/4 v7, 0x0

    const-string/jumbo v8, "succ"

    iget-object v9, p0, Lcom/tencent/midas/control/APMidasPayHelper$10;->val$from:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v6, v7, v8, v9, v10}, Lcom/tencent/midas/control/IAPInitCallBack;->result(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    .end local v2    # "dateStart":J
    .end local v5    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    const-string v6, "APMidasPayHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "preLoadMidasPay openPlugin obj:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/midas/control/APMidasPayHelper$10;->val$launchInterfaceName:Ljava/lang/String;

    const-string v8, "sdk.plugin.init.totaltime"

    invoke-virtual {v6, v7, v8}, Lcom/tencent/midas/data/APPluginReportManager;->insertTimeData(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    const-string v6, "APMidasPayHelper"

    const-string v7, "preLoadMidasPay initState = PLUGIN_INITSUCC"

    invoke-static {v6, v7}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    sput v11, Lcom/tencent/midas/control/APMidasPayHelper;->initState:I

    .line 1042
    invoke-static {}, Lcom/tencent/midas/control/APMidasPayHelper;->access$600()Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 1043
    :try_start_1
    invoke-static {}, Lcom/tencent/midas/control/APMidasPayHelper;->access$600()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 1044
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1045
    return-void

    .line 1029
    :catch_0
    move-exception v1

    .line 1030
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1032
    iget-object v6, p0, Lcom/tencent/midas/control/APMidasPayHelper$10;->val$initCallback:Lcom/tencent/midas/control/IAPInitCallBack;

    if-eqz v6, :cond_0

    .line 1033
    iget-object v6, p0, Lcom/tencent/midas/control/APMidasPayHelper$10;->val$initCallback:Lcom/tencent/midas/control/IAPInitCallBack;

    const/4 v7, -0x2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/tencent/midas/control/APMidasPayHelper$10;->val$from:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v9, v12}, Lcom/tencent/midas/control/IAPInitCallBack;->result(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1044
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method
