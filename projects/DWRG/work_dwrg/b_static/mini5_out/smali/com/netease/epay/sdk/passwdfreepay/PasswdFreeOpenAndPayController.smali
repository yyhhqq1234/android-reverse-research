.class public Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController;
.super Lcom/netease/epay/sdk/controller/BaseController;
.source "PasswdFreeOpenAndPayController.java"


# instance fields
.field public couponIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public couponType:Ljava/lang/String;

.field public h5cScene:Ljava/lang/String;

.field public isMerChantEwalletObj:Z

.field public isOpenDefault:Z

.field public orderId:Ljava/lang/String;

.field public useH5cScene:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/controller/BaseController;-><init>(Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController;->isOpenDefault:Z

    .line 12
    iput-boolean p2, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController;->useH5cScene:Z

    if-eqz p1, :cond_0

    const-string p2, "orderId"

    .line 19
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController;->orderId:Ljava/lang/String;

    const-string p2, "isOpenDefault"

    .line 20
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController;->isOpenDefault:Z

    .line 21
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController;->initH5cScene(Lorg/json/JSONObject;)V

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/controller/BaseController;->getBus()Lcom/netease/epay/sdk/base/model/CustomerDataBus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/model/CustomerDataBus;->isMerChantEwallet()Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController;->isMerChantEwalletObj:Z

    return-void
.end method

.method private initH5cScene(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "h5cScene"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController;->h5cScene:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController;->useH5cScene:Z

    return-void
.end method


# virtual methods
.method public deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/controller/BaseController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/controller/BaseController;->callback:Lcom/netease/epay/sdk/controller/ControllerCallback;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/controller/BaseController;->exitSDK(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/netease/epay/sdk/controller/ControllerResult;

    iget-object v1, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->code:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->msg:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/epay/sdk/controller/ControllerResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->obj:Ljava/lang/Object;

    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_1

    .line 7
    check-cast v1, Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/netease/epay/sdk/controller/ControllerResult;->otherParams:Lorg/json/JSONObject;

    .line 9
    :cond_1
    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/controller/BaseController;->exitByCallBack(Lcom/netease/epay/sdk/controller/ControllerResult;)V

    .line 12
    :goto_0
    iget-object v0, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->activity:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    iget-object p1, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_2
    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "isOpenAndPay"

    invoke-static {v0, v2, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-boolean v1, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController;->isOpenDefault:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isOpenDefault"

    invoke-static {v0, v2, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController;->h5cScene:Ljava/lang/String;

    const-string v2, "h5cScene"

    invoke-static {v0, v2, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    new-instance v1, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController$1;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController$1;-><init>(Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController;)V

    const-string v2, "openPasswdFreePay"

    invoke-static {v2, p1, v0, v1}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    return-void
.end method

.method public toPasswdFreePay(Landroid/content/Context;Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController;->orderId:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getPasswdFreePayJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "isOpenAndPay"

    invoke-static {v0, v2, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    iget-boolean v1, p2, Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;->useH5cScene:Z

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p2}, Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;->getH5cScene()Ljava/lang/String;

    move-result-object v1

    const-string v2, "h5cScene"

    invoke-static {v0, v2, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-boolean v1, p2, Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;->useH5cScene:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "useH5cScene"

    invoke-static {v0, v2, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    :cond_0
    new-instance v1, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController$2;

    invoke-direct {v1, p0, p2}, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController$2;-><init>(Lcom/netease/epay/sdk/passwdfreepay/PasswdFreeOpenAndPayController;Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;)V

    const-string p2, "passwdFreePay"

    invoke-static {p2, p1, v0, v1}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    return-void
.end method
