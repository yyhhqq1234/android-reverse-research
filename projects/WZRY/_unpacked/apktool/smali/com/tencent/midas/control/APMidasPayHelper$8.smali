.class Lcom/tencent/midas/control/APMidasPayHelper$8;
.super Ljava/lang/Object;
.source "APMidasPayHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/midas/control/APMidasPayHelper;->toH5MidasPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/midas/control/APMidasPayHelper;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/midas/control/APMidasPayHelper;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/midas/control/APMidasPayHelper;

    .prologue
    .line 817
    iput-object p1, p0, Lcom/tencent/midas/control/APMidasPayHelper$8;->this$0:Lcom/tencent/midas/control/APMidasPayHelper;

    iput-object p2, p0, Lcom/tencent/midas/control/APMidasPayHelper$8;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/midas/control/APMidasPayHelper$8;->val$message:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/midas/control/APMidasPayHelper$8;->val$activity:Landroid/app/Activity;

    iput-object p5, p0, Lcom/tencent/midas/control/APMidasPayHelper$8;->val$method:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 821
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 822
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "version"

    invoke-static {}, Lcom/tencent/midas/api/APMidasPayAPI;->getMidasPluginVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 823
    const-string v3, "env"

    invoke-static {}, Lcom/tencent/midas/control/APMidasPayHelper;->access$300()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 824
    const-string v3, "screenType"

    iget-object v4, p0, Lcom/tencent/midas/control/APMidasPayHelper$8;->this$0:Lcom/tencent/midas/control/APMidasPayHelper;

    iget v4, v4, Lcom/tencent/midas/control/APMidasPayHelper;->screenType:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 825
    const-string v3, "logEnable"

    invoke-static {}, Lcom/tencent/midas/control/APMidasPayHelper;->access$400()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 826
    const-string v3, "req"

    const-string v4, "H5Pay"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 827
    const-string/jumbo v3, "url"

    iget-object v4, p0, Lcom/tencent/midas/control/APMidasPayHelper$8;->val$url:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    const-string v3, "message"

    iget-object v4, p0, Lcom/tencent/midas/control/APMidasPayHelper$8;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    const-string v3, "reqType"

    invoke-static {}, Lcom/tencent/midas/control/APMidasPayHelper;->access$800()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 832
    :try_start_0
    invoke-static {}, Lcom/tencent/midas/data/APPluginDataInterface;->singleton()Lcom/tencent/midas/data/APPluginDataInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/midas/data/APPluginDataInterface;->getProcessData()Lcom/tencent/midas/data/APMultiProcessData;

    move-result-object v2

    .line 833
    .local v2, "processData":Lcom/tencent/midas/data/APMultiProcessData;
    if-eqz v2, :cond_0

    .line 834
    const-string v3, "launchPayGUID"

    invoke-virtual {v2}, Lcom/tencent/midas/data/APMultiProcessData;->getGuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 835
    const-string v3, "launchPayTime"

    invoke-virtual {v2}, Lcom/tencent/midas/data/APMultiProcessData;->getPayInterfaceTime()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 836
    const-string v3, "launchPayDataid"

    invoke-static {}, Lcom/tencent/midas/data/APDataId;->getDataId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 837
    const-string v3, "launchIntervalTime"

    invoke-virtual {v2}, Lcom/tencent/midas/data/APMultiProcessData;->getIntervalTime()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    .end local v2    # "processData":Lcom/tencent/midas/data/APMultiProcessData;
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/tencent/midas/control/APMidasPayHelper;->isNewProcess:Z

    if-eqz v3, :cond_1

    .line 845
    new-instance v3, Lcom/tencent/midas/control/APCallBackResultReceiver;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, v4}, Lcom/tencent/midas/control/APCallBackResultReceiver;-><init>(Landroid/os/Handler;)V

    invoke-static {v3}, Lcom/tencent/midas/control/APMidasPayHelper;->access$902(Lcom/tencent/midas/control/APCallBackResultReceiver;)Lcom/tencent/midas/control/APCallBackResultReceiver;

    .line 846
    invoke-static {}, Lcom/tencent/midas/control/APMidasPayHelper;->access$900()Lcom/tencent/midas/control/APCallBackResultReceiver;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/midas/control/APMidasPayHelper$8;->this$0:Lcom/tencent/midas/control/APMidasPayHelper;

    invoke-virtual {v3, v4}, Lcom/tencent/midas/control/APCallBackResultReceiver;->setReceiver(Lcom/tencent/midas/control/APCallBackResultReceiver$Receiver;)V

    .line 847
    const-string v3, "remoteReceiver"

    invoke-static {}, Lcom/tencent/midas/control/APMidasPayHelper;->access$900()Lcom/tencent/midas/control/APCallBackResultReceiver;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 850
    :cond_1
    iget-object v3, p0, Lcom/tencent/midas/control/APMidasPayHelper$8;->this$0:Lcom/tencent/midas/control/APMidasPayHelper;

    iget-object v4, p0, Lcom/tencent/midas/control/APMidasPayHelper$8;->val$activity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/tencent/midas/control/APMidasPayHelper$8;->val$method:Ljava/lang/String;

    invoke-static {v3, v4, v1, v5}, Lcom/tencent/midas/control/APMidasPayHelper;->access$1000(Lcom/tencent/midas/control/APMidasPayHelper;Landroid/app/Activity;Landroid/content/Intent;Ljava/lang/String;)V

    .line 851
    return-void

    .line 839
    :catch_0
    move-exception v0

    .line 840
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
