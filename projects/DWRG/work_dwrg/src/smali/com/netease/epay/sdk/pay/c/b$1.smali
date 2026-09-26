.class Lcom/netease/epay/sdk/pay/c/b$1;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "EpayPayFragPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/c/b;->a(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/netease/epay/sdk/pay/c/b;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/c/b;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/c/b$1;->b:Lcom/netease/epay/sdk/pay/c/b;

    iput-object p2, p0, Lcom/netease/epay/sdk/pay/c/b$1;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 4
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 107
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->otherParams:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/c/b$1;->a:Lorg/json/JSONObject;

    const-string v1, "paySign"

    iget-object v2, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->otherParams:Lorg/json/JSONObject;

    const-string v3, "pay_rca_sign_data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    :cond_0
    return-void
.end method
