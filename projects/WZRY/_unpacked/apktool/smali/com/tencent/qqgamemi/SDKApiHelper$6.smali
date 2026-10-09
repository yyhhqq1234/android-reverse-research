.class Lcom/tencent/qqgamemi/SDKApiHelper$6;
.super Ljava/lang/Object;
.source "SDKApiHelper.java"

# interfaces
.implements Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qqgamemi/SDKApiHelper;->startJudgementRecording(Landroid/content/Context;Ljava/lang/String;)V
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
    .line 157
    iput-object p1, p0, Lcom/tencent/qqgamemi/SDKApiHelper$6;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    iput-object p2, p0, Lcom/tencent/qqgamemi/SDKApiHelper$6;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/qqgamemi/SDKApiHelper$6;->val$gameEngineType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(I)V
    .locals 5
    .param p1, "sdkFeature"    # I

    .prologue
    const/4 v4, 0x0

    .line 160
    sget-object v0, Lcom/tencent/qqgamemi/SDKDetectableCommander$SDKFeauture;->Report:Lcom/tencent/qqgamemi/SDKDetectableCommander$SDKFeauture;

    invoke-virtual {v0, p1}, Lcom/tencent/qqgamemi/SDKDetectableCommander$SDKFeauture;->isEnable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/qqgamemi/SDKDetectableCommander$SDKFeauture;->Maintaining:Lcom/tencent/qqgamemi/SDKDetectableCommander$SDKFeauture;

    invoke-virtual {v0, p1}, Lcom/tencent/qqgamemi/SDKDetectableCommander$SDKFeauture;->isEnable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper$6;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    invoke-static {v0}, Lcom/tencent/qqgamemi/SDKApiHelper;->access$100(Lcom/tencent/qqgamemi/SDKApiHelper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "startJudgementRecording  onSuccess===="

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper$6;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    const-string v1, "qmi.startJudgementRecording"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tencent/qqgamemi/SDKApiHelper$6;->val$context:Landroid/content/Context;

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tencent/qqgamemi/SDKApiHelper$6;->val$gameEngineType:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/tencent/qqgamemi/SDKApiHelper$6;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    iget v4, v4, Lcom/tencent/qqgamemi/SDKApiHelper;->videoBusId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->invokeQmiWriteCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper$6;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    invoke-static {v0}, Lcom/tencent/qqgamemi/SDKApiHelper;->access$100(Lcom/tencent/qqgamemi/SDKApiHelper;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u67e5\u8be2\u767d\u540d\u5355startJudgementRecording onFail"

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper$6;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqgamemi/util/GameMessageEventManager;->getInstance(Landroid/content/Context;)Lcom/tencent/qqgamemi/util/GameMessageEventManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqgamemi/SDKApiHelper$6;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1, v4}, Lcom/tencent/qqgamemi/util/GameMessageEventManager;->onStartJudgementRecordingStatus(Landroid/content/Context;I)V

    goto :goto_0
.end method
