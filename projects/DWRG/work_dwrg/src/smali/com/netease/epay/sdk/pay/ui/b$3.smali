.class Lcom/netease/epay/sdk/pay/ui/b$3;
.super Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;
.source "CreditPayFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/pay/ui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/b;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/b;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/b$3;->a:Lcom/netease/epay/sdk/pay/ui/b;

    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onMaxLength(Ljava/lang/String;)V
    .locals 5
    .param p1, "psw"    # Ljava/lang/String;

    .prologue
    .line 83
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->addBizType()Lcom/netease/epay/sdk/model/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v1

    .line 84
    const-string v0, "payMethod"

    const-string v2, "quhua"

    invoke-static {v1, v0, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    const-string v0, "payAdditionalInfo"

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->payAdditionalInfo:Lorg/json/JSONObject;

    invoke-static {v1, v0, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    const-string v0, "pay"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/PayController;

    .line 87
    if-eqz v0, :cond_0

    .line 88
    const-string v2, "attach"

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/PayController;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    :cond_0
    const-string v0, "challengeType"

    const-string v2, "paypwd"

    invoke-static {v1, v0, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 91
    const-string v0, "payPwd"

    invoke-static {p1}, Lcom/netease/epay/sdk/base/util/DigestUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    const-string v0, "shortPwdEncodeFactor"

    invoke-static {}, Lcom/netease/epay/sdk/base/util/LogicUtil;->getFactor()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    const-string v0, "hasShortPwd"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    const-string v0, "bizType"

    const-string v2, "order"

    invoke-static {v1, v0, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    const-string v0, "pay.htm"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/epay/sdk/pay/ui/b$3;->a:Lcom/netease/epay/sdk/pay/ui/b;

    invoke-virtual {v3}, Lcom/netease/epay/sdk/pay/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/netease/epay/sdk/pay/ui/b$3$1;

    invoke-direct {v4, p0}, Lcom/netease/epay/sdk/pay/ui/b$3$1;-><init>(Lcom/netease/epay/sdk/pay/ui/b$3;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 127
    return-void
.end method
