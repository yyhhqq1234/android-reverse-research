.class Lcom/tencent/midas/control/APMidasPayHelper$5;
.super Ljava/lang/Object;
.source "APMidasPayHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/midas/control/APMidasPayHelper;->toMidas(Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/midas/control/APMidasPayHelper;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$fromMethod:Ljava/lang/String;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;

.field final synthetic val$request:Lcom/tencent/midas/api/request/APMidasBaseRequest;

.field final synthetic val$startTime:J

.field final synthetic val$toMethod:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/midas/control/APMidasPayHelper;Landroid/app/ProgressDialog;JLandroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/tencent/midas/control/APMidasPayHelper;

    .prologue
    .line 624
    iput-object p1, p0, Lcom/tencent/midas/control/APMidasPayHelper$5;->this$0:Lcom/tencent/midas/control/APMidasPayHelper;

    iput-object p2, p0, Lcom/tencent/midas/control/APMidasPayHelper$5;->val$progressDialog:Landroid/app/ProgressDialog;

    iput-wide p3, p0, Lcom/tencent/midas/control/APMidasPayHelper$5;->val$startTime:J

    iput-object p5, p0, Lcom/tencent/midas/control/APMidasPayHelper$5;->val$activity:Landroid/app/Activity;

    iput-object p6, p0, Lcom/tencent/midas/control/APMidasPayHelper$5;->val$request:Lcom/tencent/midas/api/request/APMidasBaseRequest;

    iput-object p7, p0, Lcom/tencent/midas/control/APMidasPayHelper$5;->val$toMethod:Ljava/lang/String;

    iput-object p8, p0, Lcom/tencent/midas/control/APMidasPayHelper$5;->val$fromMethod:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 629
    :try_start_0
    invoke-static {}, Lcom/tencent/midas/control/APMidasPayHelper;->access$600()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    :try_start_1
    invoke-static {}, Lcom/tencent/midas/control/APMidasPayHelper;->access$600()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 631
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 639
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/tencent/midas/control/APMidasPayHelper$5;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 640
    iget-object v1, p0, Lcom/tencent/midas/control/APMidasPayHelper$5;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 645
    :cond_0
    :goto_1
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {v2}, Lcom/pay/tool/APMidasTools;->getCurrentThreadName(Ljava/lang/Thread;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sdk.plugin.launchPay.wait.init.time"

    iget-wide v4, p0, Lcom/tencent/midas/control/APMidasPayHelper$5;->val$startTime:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/tencent/midas/data/APPluginReportManager;->insertTimeDataEx(Ljava/lang/String;Ljava/lang/String;J)V

    .line 646
    iget-object v1, p0, Lcom/tencent/midas/control/APMidasPayHelper$5;->this$0:Lcom/tencent/midas/control/APMidasPayHelper;

    iget-object v2, p0, Lcom/tencent/midas/control/APMidasPayHelper$5;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/tencent/midas/control/APMidasPayHelper$5;->val$request:Lcom/tencent/midas/api/request/APMidasBaseRequest;

    iget-object v4, p0, Lcom/tencent/midas/control/APMidasPayHelper$5;->val$toMethod:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/midas/control/APMidasPayHelper$5;->val$fromMethod:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/midas/control/APMidasPayHelper;->access$700(Lcom/tencent/midas/control/APMidasPayHelper;Landroid/app/Activity;Lcom/tencent/midas/api/request/APMidasBaseRequest;Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    return-void

    .line 631
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 632
    :catch_0
    move-exception v0

    .line 634
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "APMidasPayHelper"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 642
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    goto :goto_1
.end method
