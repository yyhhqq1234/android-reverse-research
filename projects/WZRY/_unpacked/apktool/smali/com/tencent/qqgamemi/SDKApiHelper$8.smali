.class Lcom/tencent/qqgamemi/SDKApiHelper$8;
.super Ljava/lang/Object;
.source "SDKApiHelper.java"

# interfaces
.implements Lcom/tencent/qqgamemi/CheckSDKFeatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qqgamemi/SDKApiHelper;->showVideoListDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qqgamemi/SDKApiHelper;


# direct methods
.method constructor <init>(Lcom/tencent/qqgamemi/SDKApiHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/qqgamemi/SDKApiHelper;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/tencent/qqgamemi/SDKApiHelper$8;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(I)V
    .locals 5
    .param p1, "sdkFeature"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper$8;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    invoke-static {v0, p1}, Lcom/tencent/qqgamemi/SDKApiHelper;->access$300(Lcom/tencent/qqgamemi/SDKApiHelper;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKApiHelper$8;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    invoke-static {v0}, Lcom/tencent/qqgamemi/SDKApiHelper;->access$100(Lcom/tencent/qqgamemi/SDKApiHelper;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "showVideoListDialog onSuccess====="

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/tencent/qqgamemi/SDKApiHelper;->getInstance()Lcom/tencent/qqgamemi/SDKApiHelper;

    move-result-object v0

    const-string v1, "qmi.showVideoListDialog"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/qqgamemi/SDKApiHelper$8;->this$0:Lcom/tencent/qqgamemi/SDKApiHelper;

    iget v4, v4, Lcom/tencent/qqgamemi/SDKApiHelper;->videoBusId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKApiHelper;->invokeQmiWriteCmd(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    :cond_0
    return-void
.end method
