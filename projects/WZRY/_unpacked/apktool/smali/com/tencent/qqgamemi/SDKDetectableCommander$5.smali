.class Lcom/tencent/qqgamemi/SDKDetectableCommander$5;
.super Ljava/lang/Object;
.source "SDKDetectableCommander.java"

# interfaces
.implements Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qqgamemi/SDKDetectableCommander;->checkSDKFeatrueInner(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qqgamemi/SDKDetectableCommander;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/tencent/qqgamemi/SDKDetectableCommander;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/qqgamemi/SDKDetectableCommander;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$5;->this$0:Lcom/tencent/qqgamemi/SDKDetectableCommander;

    iput-object p2, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$5;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;Ljava/lang/String;)V
    .locals 3
    .param p1, "status"    # Lcom/tencent/qqgamemi/protocol/pbproxy/BaseProxy$ProxyStatus;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 201
    const-string v0, "SDKDetectableCommander"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkSDKFeature fail is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$5;->this$0:Lcom/tencent/qqgamemi/SDKDetectableCommander;

    iget-object v1, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$5;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->access$600(Lcom/tencent/qqgamemi/SDKDetectableCommander;Landroid/content/Context;I)V

    .line 203
    return-void
.end method

.method public varargs onSuccess([Ljava/lang/Object;)V
    .locals 4
    .param p1, "param"    # [Ljava/lang/Object;

    .prologue
    .line 193
    iget-object v2, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$5;->this$0:Lcom/tencent/qqgamemi/SDKDetectableCommander;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v2, Lcom/tencent/qqgamemi/SDKDetectableCommander;->videoBusId:I

    .line 194
    const/4 v1, 0x2

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 195
    .local v0, "sdkFeature":I
    const-string v1, "SDKDetectableCommander"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sdkFeature is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",videoBusId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$5;->this$0:Lcom/tencent/qqgamemi/SDKDetectableCommander;

    iget v3, v3, Lcom/tencent/qqgamemi/SDKDetectableCommander;->videoBusId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$5;->this$0:Lcom/tencent/qqgamemi/SDKDetectableCommander;

    iget-object v2, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$5;->val$context:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->access$600(Lcom/tencent/qqgamemi/SDKDetectableCommander;Landroid/content/Context;I)V

    .line 197
    return-void
.end method

.method public onTimeOut(Lcom/tencent/qt/base/net/Request;)V
    .locals 3
    .param p1, "request"    # Lcom/tencent/qt/base/net/Request;

    .prologue
    .line 207
    const-string v0, "SDKDetectableCommander"

    const-string v1, "checkSDKFeature onTimeOut === "

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$5;->this$0:Lcom/tencent/qqgamemi/SDKDetectableCommander;

    iget-object v1, p0, Lcom/tencent/qqgamemi/SDKDetectableCommander$5;->val$context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tencent/qqgamemi/SDKDetectableCommander;->access$600(Lcom/tencent/qqgamemi/SDKDetectableCommander;Landroid/content/Context;I)V

    .line 209
    return-void
.end method
