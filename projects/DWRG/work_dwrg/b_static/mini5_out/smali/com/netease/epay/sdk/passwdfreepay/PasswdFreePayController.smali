.class public Lcom/netease/epay/sdk/passwdfreepay/PasswdFreePayController;
.super Lcom/netease/epay/sdk/controller/BaseController;
.source "PasswdFreePayController.java"


# instance fields
.field public h5cScene:Ljava/lang/String;

.field public isMerChantEwalletObj:Z

.field public isOpenAndPay:Z

.field public orderId:Ljava/lang/String;

.field public payFailGuideInfo:Lcom/netease/epay/sdk/passwdfreepay/model/ResponseResultData$PayFailGuideInfo;

.field public useH5cScene:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/controller/BaseController;-><init>(Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreePayController;->isOpenAndPay:Z

    .line 4
    iput-boolean p2, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreePayController;->useH5cScene:Z

    if-eqz p1, :cond_0

    const-string p2, "orderId"

    .line 11
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreePayController;->orderId:Ljava/lang/String;

    const-string p2, "isOpenAndPay"

    .line 12
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreePayController;->isOpenAndPay:Z

    .line 13
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreePayController;->initH5cScene(Lorg/json/JSONObject;)V

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/controller/BaseController;->getBus()Lcom/netease/epay/sdk/base/model/CustomerDataBus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/model/CustomerDataBus;->isMerChantEwallet()Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreePayController;->isMerChantEwalletObj:Z

    return-void
.end method

.method private initH5cScene(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "h5cScene"

    const-string v1, "pay.passwdFree"

    .line 1
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreePayController;->h5cScene:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/netease/epay/sdk/h5c/H5cRouteUtil;->getDemoteH5cUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreePayController;->h5cScene:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreePayController;->useH5cScene:Z

    return-void
.end method


# virtual methods
.method public deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/controller/BaseController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 2
    iget-boolean v0, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x1

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isPasswdFreePay"

    invoke-static {v0, v2, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iput-object v0, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->obj:Ljava/lang/Object;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/controller/BaseController;->callback:Lcom/netease/epay/sdk/controller/ControllerCallback;

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/controller/BaseController;->exitSDK(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    goto :goto_0

    .line 12
    :cond_1
    new-instance v0, Lcom/netease/epay/sdk/controller/ControllerResult;

    iget-object v1, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->code:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->msg:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/epay/sdk/controller/ControllerResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v1, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->obj:Ljava/lang/Object;

    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_2

    .line 14
    check-cast v1, Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/netease/epay/sdk/controller/ControllerResult;->otherParams:Lorg/json/JSONObject;

    .line 16
    :cond_2
    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/controller/BaseController;->exitByCallBack(Lcom/netease/epay/sdk/controller/ControllerResult;)V

    .line 19
    :goto_0
    iget-object v0, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->activity:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 20
    iget-object p1, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_3
    return-void
.end method

.method public getH5cScene()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreePayController;->h5cScene:Ljava/lang/String;

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/netease/epay/sdk/controller/BaseController;->onDestroy()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreePayController;->payFailGuideInfo:Lcom/netease/epay/sdk/passwdfreepay/model/ResponseResultData$PayFailGuideInfo;

    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreePayController;->orderId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "EP2107"

    const-string v0, "\u514d\u5bc6\u652f\u4ed8\u8ba2\u5355\u53f7\u4e3a\u7a7a"

    .line 2
    invoke-static {p1, v0}, Lcom/netease/epay/sdk/base/util/ExceptionUtil;->uploadSentry(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "FC2202"

    const-string v0, "\u53c2\u6570\u975e\u6cd5"

    .line 3
    invoke-static {p1, v0}, Lcom/netease/epay/sdk/ExitUtil;->failCallback(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreePayController;->startPasswdFreePay(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public startPasswdFreePay(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-class v0, Lcom/netease/epay/sdk/passwdfreepay/ui/PasswdFreePayAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "passwdFreePay"

    .line 3
    invoke-static {p1, v2, v0, v1}, Lcom/netease/epay/sdk/base/ui/CommonEntranceActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
