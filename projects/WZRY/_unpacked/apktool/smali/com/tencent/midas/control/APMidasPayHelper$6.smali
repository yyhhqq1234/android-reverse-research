.class Lcom/tencent/midas/control/APMidasPayHelper$6;
.super Ljava/lang/Object;
.source "APMidasPayHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/midas/control/APMidasPayHelper;->toMidasPay(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/midas/control/APMidasPayHelper;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$request:Lcom/tencent/midas/api/request/APMidasBaseRequest;

.field final synthetic val$toMethod:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/midas/control/APMidasPayHelper;Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/midas/control/APMidasPayHelper;

    .prologue
    .line 692
    iput-object p1, p0, Lcom/tencent/midas/control/APMidasPayHelper$6;->this$0:Lcom/tencent/midas/control/APMidasPayHelper;

    iput-object p2, p0, Lcom/tencent/midas/control/APMidasPayHelper$6;->val$request:Lcom/tencent/midas/api/request/APMidasBaseRequest;

    iput-object p3, p0, Lcom/tencent/midas/control/APMidasPayHelper$6;->val$toMethod:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/midas/control/APMidasPayHelper$6;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 695
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 696
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "version"

    invoke-static {}, Lcom/tencent/midas/api/APMidasPayAPI;->getMidasPluginVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    const-string v3, "env"

    invoke-static {}, Lcom/tencent/midas/control/APMidasPayHelper;->access$300()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    const-string v3, "screenType"

    iget-object v4, p0, Lcom/tencent/midas/control/APMidasPayHelper$6;->this$0:Lcom/tencent/midas/control/APMidasPayHelper;

    iget v4, v4, Lcom/tencent/midas/control/APMidasPayHelper;->screenType:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 699
    const-string v3, "logEnable"

    invoke-static {}, Lcom/tencent/midas/control/APMidasPayHelper;->access$400()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 700
    const-string v3, "req"

    iget-object v4, p0, Lcom/tencent/midas/control/APMidasPayHelper$6;->val$request:Lcom/tencent/midas/api/request/APMidasBaseRequest;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 701
    const-string v3, "reqType"

    invoke-static {}, Lcom/tencent/midas/control/APMidasPayHelper;->access$800()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 702
    const-string v3, "method"

    iget-object v4, p0, Lcom/tencent/midas/control/APMidasPayHelper$6;->val$toMethod:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 703
    sget-boolean v3, Lcom/tencent/midas/control/APMidasPayHelper;->isNewProcess:Z

    if-eqz v3, :cond_0

    .line 705
    new-instance v3, Lcom/tencent/midas/control/APCallBackResultReceiver;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, v4}, Lcom/tencent/midas/control/APCallBackResultReceiver;-><init>(Landroid/os/Handler;)V

    invoke-static {v3}, Lcom/tencent/midas/control/APMidasPayHelper;->access$902(Lcom/tencent/midas/control/APCallBackResultReceiver;)Lcom/tencent/midas/control/APCallBackResultReceiver;

    .line 706
    invoke-static {}, Lcom/tencent/midas/control/APMidasPayHelper;->access$900()Lcom/tencent/midas/control/APCallBackResultReceiver;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/midas/control/APMidasPayHelper$6;->this$0:Lcom/tencent/midas/control/APMidasPayHelper;

    invoke-virtual {v3, v4}, Lcom/tencent/midas/control/APCallBackResultReceiver;->setReceiver(Lcom/tencent/midas/control/APCallBackResultReceiver$Receiver;)V

    .line 707
    const-string v3, "remoteReceiver"

    invoke-static {}, Lcom/tencent/midas/control/APMidasPayHelper;->access$900()Lcom/tencent/midas/control/APCallBackResultReceiver;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 710
    :cond_0
    const-string v3, "launchInterfaceName"

    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/midas/data/APPluginDataInterface;->getLaunchInterface()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 718
    :try_start_0
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/midas/data/APPluginDataInterface;->getProcessData()Lcom/tencent/midas/data/APMultiProcessData;

    move-result-object v2

    .line 719
    .local v2, "processData":Lcom/tencent/midas/data/APMultiProcessData;
    if-eqz v2, :cond_1

    .line 720
    const-string v3, "launchPayGUID"

    invoke-virtual {v2}, Lcom/tencent/midas/data/APMultiProcessData;->getGuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 721
    const-string v3, "launchPayTime"

    invoke-virtual {v2}, Lcom/tencent/midas/data/APMultiProcessData;->getPayInterfaceTime()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 722
    const-string v3, "launchPayDataid"

    invoke-static {}, Lcom/tencent/midas/data/APDataId;->getDataId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 723
    const-string v3, "launchIntervalTime"

    invoke-virtual {v2}, Lcom/tencent/midas/data/APMultiProcessData;->getIntervalTime()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    .end local v2    # "processData":Lcom/tencent/midas/data/APMultiProcessData;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/tencent/midas/control/APMidasPayHelper$6;->this$0:Lcom/tencent/midas/control/APMidasPayHelper;

    iget-object v4, p0, Lcom/tencent/midas/control/APMidasPayHelper$6;->val$activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/tencent/midas/control/APMidasPayHelper$6;->val$toMethod:Ljava/lang/String;

    invoke-static {v3, v4, v1, v5}, Lcom/tencent/midas/control/APMidasPayHelper;->access$1000(Lcom/tencent/midas/control/APMidasPayHelper;Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    .line 732
    return-void

    .line 725
    :catch_0
    move-exception v0

    .line 726
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
