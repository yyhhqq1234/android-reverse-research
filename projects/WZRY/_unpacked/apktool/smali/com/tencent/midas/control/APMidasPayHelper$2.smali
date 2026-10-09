.class final Lcom/tencent/midas/control/APMidasPayHelper$2;
.super Ljava/lang/Object;
.source "APMidasPayHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/midas/control/APMidasPayHelper;->init(Landroid/content/Context;Lcom/tencent/midas/api/request/APMidasBaseRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/tencent/midas/control/APMidasPayHelper$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 241
    const-string v2, "APMidasPayHelper"

    const-string v3, "initcallback isInitSucc direct call init function"

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 243
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "version"

    const-string v3, "1.6.9a"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string v2, "req"

    invoke-static {}, Lcom/tencent/midas/control/APMidasPayHelper;->access$200()Lcom/tencent/midas/api/request/APMidasBaseRequest;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 245
    const-string v2, "env"

    invoke-static {}, Lcom/tencent/midas/control/APMidasPayHelper;->access$300()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v2, "logEnable"

    invoke-static {}, Lcom/tencent/midas/control/APMidasPayHelper;->access$400()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 247
    const-string v2, "launchInterfaceName"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    :try_start_0
    iget-object v2, p0, Lcom/tencent/midas/control/APMidasPayHelper$2;->val$context:Landroid/content/Context;

    sget-object v3, Lcom/tencent/midas/control/APMidasPayHelper;->MIDAS_PLUGIN_NAME:Ljava/lang/String;

    sget-object v4, Lcom/tencent/midas/control/APMidasPayHelper;->PKG_DISTRIBUTE:Ljava/lang/String;

    sget-object v5, Lcom/tencent/midas/control/APMidasPayHelper;->MED_DISTRIBUTE_INIT:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/tencent/midas/control/APMidasPayHelper$2;->val$context:Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tencent/midas/plugin/APPluginInterfaceManager;->initPluginInterface(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "APMidasPayHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initcallback isInitSucc direct call init function e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
