.class Lcom/tencent/midas/control/APMidasPayHelper$4$1;
.super Ljava/lang/Object;
.source "APMidasPayHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/midas/control/APMidasPayHelper$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/midas/control/APMidasPayHelper$4;


# direct methods
.method constructor <init>(Lcom/tencent/midas/control/APMidasPayHelper$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tencent/midas/control/APMidasPayHelper$4;

    .prologue
    .line 534
    iput-object p1, p0, Lcom/tencent/midas/control/APMidasPayHelper$4$1;->this$1:Lcom/tencent/midas/control/APMidasPayHelper$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 538
    :try_start_0
    iget-object v1, p0, Lcom/tencent/midas/control/APMidasPayHelper$4$1;->this$1:Lcom/tencent/midas/control/APMidasPayHelper$4;

    iget-object v1, v1, Lcom/tencent/midas/control/APMidasPayHelper$4;->this$0:Lcom/tencent/midas/control/APMidasPayHelper;

    iget-object v2, p0, Lcom/tencent/midas/control/APMidasPayHelper$4$1;->this$1:Lcom/tencent/midas/control/APMidasPayHelper$4;

    iget-object v2, v2, Lcom/tencent/midas/control/APMidasPayHelper$4;->val$context:Landroid/content/Context;

    sget-object v3, Lcom/tencent/midas/control/APMidasPayHelper;->MIDAS_PLUGIN_NAME:Ljava/lang/String;

    sget-object v4, Lcom/tencent/midas/control/APMidasPayHelper;->PKG_DISTRIBUTE:Ljava/lang/String;

    sget-object v5, Lcom/tencent/midas/control/APMidasPayHelper;->MED_DISTRIBUTE_CALL2:Ljava/lang/String;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/tencent/midas/control/APMidasPayHelper$4$1;->this$1:Lcom/tencent/midas/control/APMidasPayHelper$4;

    iget-object v8, v8, Lcom/tencent/midas/control/APMidasPayHelper$4;->val$methodName:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/tencent/midas/control/APMidasPayHelper$4$1;->this$1:Lcom/tencent/midas/control/APMidasPayHelper$4;

    iget-object v8, v8, Lcom/tencent/midas/control/APMidasPayHelper$4;->val$params:[Ljava/lang/Object;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/tencent/midas/control/APMidasPayHelper$4$1;->this$1:Lcom/tencent/midas/control/APMidasPayHelper$4;

    iget-object v8, v8, Lcom/tencent/midas/control/APMidasPayHelper$4;->val$paramsType:[Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-static {v2, v3, v4, v5, v6}, Lcom/tencent/midas/plugin/APPluginInterfaceManager;->initPluginInterface2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/midas/control/APMidasPayHelper;->retobj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :goto_0
    return-void

    .line 543
    :catch_0
    move-exception v0

    .line 544
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "callWithContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error1 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
