.class Lcom/tencent/midas/control/APMidasPayHelper$4;
.super Ljava/lang/Object;
.source "APMidasPayHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/midas/control/APMidasPayHelper;->callWithContext(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/midas/control/APMidasPayHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$methodName:Ljava/lang/String;

.field final synthetic val$params:[Ljava/lang/Object;

.field final synthetic val$paramsType:[Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/tencent/midas/control/APMidasPayHelper;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/midas/control/APMidasPayHelper;

    .prologue
    .line 525
    iput-object p1, p0, Lcom/tencent/midas/control/APMidasPayHelper$4;->this$0:Lcom/tencent/midas/control/APMidasPayHelper;

    iput-object p2, p0, Lcom/tencent/midas/control/APMidasPayHelper$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/midas/control/APMidasPayHelper$4;->val$methodName:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/midas/control/APMidasPayHelper$4;->val$params:[Ljava/lang/Object;

    iput-object p5, p0, Lcom/tencent/midas/control/APMidasPayHelper$4;->val$paramsType:[Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 529
    :try_start_0
    const-string v1, "callWithContext "

    const-string v2, "PLUGIN_INITING wait"

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-static {}, Lcom/tencent/midas/control/APMidasPayHelper;->access$000()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :try_start_1
    invoke-static {}, Lcom/tencent/midas/control/APMidasPayHelper;->access$000()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 532
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    :try_start_2
    const-string v1, "callWithContext "

    const-string v2, "PLUGIN_INITING go"

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v1, p0, Lcom/tencent/midas/control/APMidasPayHelper$4;->val$context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/tencent/midas/control/APMidasPayHelper$4$1;

    invoke-direct {v2, p0}, Lcom/tencent/midas/control/APMidasPayHelper$4$1;-><init>(Lcom/tencent/midas/control/APMidasPayHelper$4;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 553
    :goto_0
    return-void

    .line 532
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

    .line 549
    :catch_0
    move-exception v0

    .line 550
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "callWithContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error2 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
