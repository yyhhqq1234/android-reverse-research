.class Lcom/tencent/qqgamemi/SDKApiHelper$2;
.super Ljava/lang/Object;
.source "SDKApiHelper.java"

# interfaces
.implements Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qqgamemi/SDKApiHelper;->initPlugin(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$gameEngineType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/qqgamemi/SDKApiHelper;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/qqgamemi/SDKApiHelper;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/tencent/qqgamemi/SDKApiHelper$2;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    iput-object p2, p0, Lcom/tencent/qqgamemi/SDKApiHelper$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/qqgamemi/SDKApiHelper$2;->val$gameEngineType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(I)V
    .locals 6
    .param p1, "sdkFeature"    # I

    .prologue
    const/4 v5, 0x1

    .line 63
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper$2;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    invoke-static {v0, p1}, Lcom/tencent/qqgamemi/SDKApiHelper;->access$300(Lcom/tencent/qqgamemi/SDKApiHelper;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper$2;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    invoke-static {v0}, Lcom/tencent/qqgamemi/SDKApiHelper;->access$400(Lcom/tencent/qqgamemi/SDKApiHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper$2;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    invoke-static {v0}, Lcom/tencent/qqgamemi/SDKApiHelper;->access$500(Lcom/tencent/qqgamemi/SDKApiHelper;)Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-exit v1

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper$2;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->access$502(Lcom/tencent/qqgamemi/SDKApiHelper;Z)Z

    .line 67
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper$2;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    const-string v1, "qmi.initQmi"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/qqgamemi/SDKApiHelper$2;->val$context:Landroid/content/Context;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/tencent/qqgamemi/SDKApiHelper$2;->val$gameEngineType:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->invokeQmiWriteCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper$2;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    new-instance v1, Lcom/tencent/qqgamemi/SDKApiHelper$2$1;

    invoke-direct {v1, p0}, Lcom/tencent/qqgamemi/SDKApiHelper$2$1;-><init>(Lcom/tencent/qqgamemi/SDKApiHelper$2;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqgamemi/SDKApiHelper;->runOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
