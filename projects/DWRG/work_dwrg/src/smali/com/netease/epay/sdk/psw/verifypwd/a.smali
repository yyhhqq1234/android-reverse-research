.class public Lcom/netease/epay/sdk/psw/verifypwd/a;
.super Lcom/netease/epay/sdk/psw/verifypwd/c;
.source "AppVerifyPwdBasePresenter.java"


# direct methods
.method public constructor <init>(Lcom/netease/epay/sdk/psw/verifypwd/e;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/psw/verifypwd/c;-><init>(Lcom/netease/epay/sdk/psw/verifypwd/e;)V

    .line 19
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 23
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->addBizType()Lcom/netease/epay/sdk/model/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v1

    .line 24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 25
    const-string v2, "validContent"

    invoke-static {v0, v2, p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    iget-object v2, p0, Lcom/netease/epay/sdk/psw/verifypwd/a;->a:Lcom/netease/epay/sdk/psw/verifypwd/e;

    instance-of v2, v2, Lcom/netease/epay/sdk/psw/verifypwd/d;

    if-eqz v2, :cond_1

    .line 28
    const-string v2, "pwdValidItem"

    invoke-static {v1, v2, v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    :goto_0
    const-string v0, "verifyPwd"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/psw/VerifyPwdController;

    .line 33
    if-eqz v0, :cond_0

    .line 34
    const-string v2, "uuid"

    iget-object v0, v0, Lcom/netease/epay/sdk/psw/VerifyPwdController;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    :cond_0
    const-string v0, "security_validate.htm"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/epay/sdk/psw/verifypwd/a;->a:Lcom/netease/epay/sdk/psw/verifypwd/e;

    invoke-virtual {v3}, Lcom/netease/epay/sdk/psw/verifypwd/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/epay/sdk/psw/verifypwd/a;->b:Lcom/netease/epay/sdk/NetCallback;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 37
    return-void

    .line 30
    :cond_1
    const-string v2, "shortPwdValidItem"

    invoke-static {v1, v2, v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
