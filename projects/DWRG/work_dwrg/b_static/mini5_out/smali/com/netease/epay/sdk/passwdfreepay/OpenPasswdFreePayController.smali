.class public Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;
.super Lcom/netease/epay/sdk/controller/BaseController;
.source "OpenPasswdFreePayController.java"


# instance fields
.field private a:Ljava/lang/String;

.field public amount:Ljava/lang/String;

.field private h5cScene:Ljava/lang/String;

.field public isOpenAfterPay:Z

.field public isOpenAndPay:Z

.field public isOpenDefault:Z

.field public merchantSelectedPayMethod:Ljava/lang/String;

.field public merchantSelectedQuickPayId:Ljava/lang/String;

.field public useH5cScene:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/controller/BaseController;-><init>(Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;->isOpenAfterPay:Z

    .line 3
    iput-boolean p2, p0, Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;->isOpenAndPay:Z

    .line 7
    iput-boolean p2, p0, Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;->isOpenDefault:Z

    .line 26
    iput-boolean p2, p0, Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;->useH5cScene:Z

    if-eqz p1, :cond_0

    const-string p2, "isOpenAfterPay"

    .line 34
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;->isOpenAfterPay:Z

    const-string p2, "isOpenAndPay"

    .line 35
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;->isOpenAndPay:Z

    const-string p2, "isOpenDefault"

    .line 36
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;->isOpenDefault:Z

    const-string p2, "a"

    .line 37
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;->a:Ljava/lang/String;

    const-string p2, "amount"

    .line 38
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;->amount:Ljava/lang/String;

    const-string p2, "payMethod"

    .line 39
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;->merchantSelectedPayMethod:Ljava/lang/String;

    const-string p2, "quickPayId"

    .line 40
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;->merchantSelectedQuickPayId:Ljava/lang/String;

    .line 41
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;->initH5cScene(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method private getH5cScene(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    const-string v0, "h5cScene"

    .line 1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initH5cScene(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;->getH5cScene(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;->h5cScene:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/netease/epay/sdk/h5c/H5cRouteUtil;->getDemoteH5cUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;->useH5cScene:Z

    return-void
.end method


# virtual methods
.method public deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/controller/BaseController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 3
    iget-object v0, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->obj:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    .line 4
    :goto_0
    sget-object v1, Lcom/netease/epay/sdk/base/core/CoreData;->biz:Lcom/netease/epay/sdk/base/model/EpayBiz;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/model/EpayBiz;->type()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "biztype"

    invoke-static {v0, v2, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    iget-boolean v1, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->isSuccess:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "isSuccess"

    invoke-static {v0, v2, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object v1, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->code:Ljava/lang/String;

    const-string v2, "code"

    invoke-static {v0, v2, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object v1, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->msg:Ljava/lang/String;

    const-string v2, "msg"

    invoke-static {v0, v2, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    iput-object v0, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->obj:Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/netease/epay/sdk/controller/BaseController;->callback:Lcom/netease/epay/sdk/controller/ControllerCallback;

    if-nez v0, :cond_1

    .line 11
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/controller/BaseController;->exitSDK(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    goto :goto_1

    .line 13
    :cond_1
    new-instance v0, Lcom/netease/epay/sdk/controller/ControllerResult;

    iget-object v1, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->code:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->msg:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/epay/sdk/controller/ControllerResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v1, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->obj:Ljava/lang/Object;

    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_2

    .line 15
    check-cast v1, Lorg/json/JSONObject;

    iput-object v1, v0, Lcom/netease/epay/sdk/controller/ControllerResult;->otherParams:Lorg/json/JSONObject;

    .line 17
    :cond_2
    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/controller/BaseController;->exitByCallBack(Lcom/netease/epay/sdk/controller/ControllerResult;)V

    .line 20
    :goto_1
    iget-object v0, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->activity:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    .line 21
    iget-object p1, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_3
    return-void
.end method

.method public getA()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getH5cScene()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;->h5cScene:Ljava/lang/String;

    return-object v0
.end method

.method public setA(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;->a:Ljava/lang/String;

    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/epay/sdk/passwdfreepay/OpenPasswdFreePayController;->isOpenAfterPay:Z

    if-eqz v0, :cond_0

    .line 3
    move-object v0, p1

    check-cast v0, Lcom/netease/epay/sdk/base/ui/SdkActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->clearAllFragments(Landroidx/fragment/app/FragmentActivity;)V

    .line 6
    :cond_0
    const-class v0, Lcom/netease/epay/sdk/passwdfreepay/ui/PreFetchOpenPasswdFreePayInfoAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "openPasswdFreePay"

    .line 8
    invoke-static {p1, v2, v0, v1}, Lcom/netease/epay/sdk/base/ui/CommonEntranceActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
