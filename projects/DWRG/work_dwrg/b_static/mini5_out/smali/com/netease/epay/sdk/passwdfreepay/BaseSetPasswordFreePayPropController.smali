.class public abstract Lcom/netease/epay/sdk/passwdfreepay/BaseSetPasswordFreePayPropController;
.super Lcom/netease/epay/sdk/controller/BaseController;
.source "BaseSetPasswordFreePayPropController.java"


# instance fields
.field public passwdFreePayId:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/controller/BaseController;-><init>(Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    if-eqz p1, :cond_0

    const-string p2, "passwdFreePayId"

    .line 3
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/epay/sdk/passwdfreepay/BaseSetPasswordFreePayPropController;->passwdFreePayId:Ljava/lang/String;

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

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/controller/BaseController;->exitByCallBack(Lcom/netease/epay/sdk/controller/ControllerResult;)V

    .line 8
    :goto_0
    iget-object v0, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->activity:Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object p1, p1, Lcom/netease/epay/sdk/base/event/BaseEvent;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_1
    return-void
.end method

.method protected abstract go(Landroid/content/Context;)V
.end method

.method public start(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/controller/BaseController;->start(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/passwdfreepay/BaseSetPasswordFreePayPropController;->passwdFreePayId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Lcom/netease/epay/sdk/controller/ControllerResult;

    const-string v0, "FC2202"

    const-string v1, "\u514d\u5bc6\u652f\u4ed8\u7b7e\u7ea6ID\u4e3a\u7a7a"

    invoke-direct {p1, v0, v1}, Lcom/netease/epay/sdk/controller/ControllerResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/controller/BaseController;->exitByCallBack(Lcom/netease/epay/sdk/controller/ControllerResult;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/passwdfreepay/BaseSetPasswordFreePayPropController;->go(Landroid/content/Context;)V

    return-void
.end method
