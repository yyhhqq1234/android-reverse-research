.class public Lcom/netease/epay/sdk/passwdfreepay/PasswdFreePayUpgradeController;
.super Lcom/netease/epay/sdk/controller/BaseController;
.source "PasswdFreePayUpgradeController.java"


# instance fields
.field public isUpgradeAfterPay:Z

.field public passwordFreePayH5cScene:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/controller/BaseController;-><init>(Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreePayUpgradeController;->isUpgradeAfterPay:Z

    .line 7
    iput-boolean p2, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreePayUpgradeController;->passwordFreePayH5cScene:Z

    if-eqz p1, :cond_0

    const-string p2, "isUpgradeAfterPay"

    .line 14
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreePayUpgradeController;->isUpgradeAfterPay:Z

    const-string p2, "useH5cScene"

    .line 15
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreePayUpgradeController;->passwordFreePayH5cScene:Z

    :cond_0
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
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreePayUpgradeController;->passwordFreePayH5cScene:Z

    if-eqz v0, :cond_0

    const-string v0, "internal.passwdFree.upgrade"

    .line 2
    invoke-static {p1, v0}, Lcom/netease/epay/sdk/h5c/H5cRouteUtil;->getH5cUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/netease/epay/sdk/passwdfreepay/PasswdFreePayUpgradeController;->passwordFreePayH5cScene:Z

    .line 4
    invoke-static {p1}, Lcom/netease/epay/sdk/passwdfreepay/ui/PasswdFreePayUpgradeGuideActivity;->startActivity(Landroid/content/Context;)V

    return-void
.end method
