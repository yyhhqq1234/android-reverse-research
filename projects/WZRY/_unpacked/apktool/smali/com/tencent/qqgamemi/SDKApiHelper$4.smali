.class Lcom/tencent/qqgamemi/SDKApiHelper$4;
.super Ljava/lang/Object;
.source "SDKApiHelper.java"

# interfaces
.implements Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qqgamemi/SDKApiHelper;->showRecorder(Landroid/content/Context;Ljava/lang/String;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$gameEngineType:Ljava/lang/String;

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lcom/tencent/qqgamemi/SDKApiHelper;Landroid/content/Context;Ljava/lang/String;FF)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/qqgamemi/SDKApiHelper;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/tencent/qqgamemi/SDKApiHelper$4;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    iput-object p2, p0, Lcom/tencent/qqgamemi/SDKApiHelper$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/qqgamemi/SDKApiHelper$4;->val$gameEngineType:Ljava/lang/String;

    iput p4, p0, Lcom/tencent/qqgamemi/SDKApiHelper$4;->val$x:F

    iput p5, p0, Lcom/tencent/qqgamemi/SDKApiHelper$4;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(I)V
    .locals 7
    .param p1, "sdkFeature"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 119
    sget-object v0, Lcom/tencent/qqgamemi/SDKDetectableCommander$SDKFeauture;->Manual:Lcom/tencent/qqgamemi/SDKDetectableCommander$SDKFeauture;

    invoke-virtual {v0, p1}, Lcom/tencent/qqgamemi/SDKDetectableCommander$SDKFeauture;->isEnable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/tencent/qqgamemi/SDKDetectableCommander$SDKFeauture;->Maintaining:Lcom/tencent/qqgamemi/SDKDetectableCommander$SDKFeauture;

    invoke-virtual {v0, p1}, Lcom/tencent/qqgamemi/SDKDetectableCommander$SDKFeauture;->isEnable(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper$4;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    invoke-static {v0}, Lcom/tencent/qqgamemi/SDKApiHelper;->access$700(Lcom/tencent/qqgamemi/SDKApiHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper$4;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    invoke-static {v0}, Lcom/tencent/qqgamemi/SDKApiHelper;->access$100(Lcom/tencent/qqgamemi/SDKApiHelper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "showPluginLoadingDialog is called"

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->getInstance()Lcom/tencent/qqgamemi/QmiCorePluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqgamemi/SDKApiHelper$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/qqgamemi/QmiCorePluginManager;->showPluginLoadingDialog(Landroid/content/Context;)V

    .line 123
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper$4;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    invoke-static {v0, v5}, Lcom/tencent/qqgamemi/SDKApiHelper;->access$702(Lcom/tencent/qqgamemi/SDKApiHelper;Z)Z

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper$4;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    invoke-static {v0}, Lcom/tencent/qqgamemi/SDKApiHelper;->access$100(Lcom/tencent/qqgamemi/SDKApiHelper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "showRecorder is called success!"

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper$4;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    const-string v1, "qmi.startQmi"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/qqgamemi/SDKApiHelper$4;->val$context:Landroid/content/Context;

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/tencent/qqgamemi/SDKApiHelper$4;->val$gameEngineType:Ljava/lang/String;

    aput-object v3, v2, v5

    iget v3, p0, Lcom/tencent/qqgamemi/SDKApiHelper$4;->val$x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x3

    iget v4, p0, Lcom/tencent/qqgamemi/SDKApiHelper$4;->val$y:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/tencent/qqgamemi/SDKApiHelper$4;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    iget v4, v4, Lcom/tencent/qqgamemi/SDKApiHelper;->videoBusId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->invokeQmiWriteCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper$4;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    iget-object v1, p0, Lcom/tencent/qqgamemi/SDKApiHelper$4;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v6}, Lcom/tencent/qqgamemi/SDKApiHelper;->access$800(Lcom/tencent/qqgamemi/SDKApiHelper;Landroid/content/Context;I)V

    goto :goto_0
.end method
