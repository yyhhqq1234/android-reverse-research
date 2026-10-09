.class public Lcom/netease/epay/sdk/passwdfreepay/SetPasswdFreePayLimitController;
.super Lcom/netease/epay/sdk/passwdfreepay/BaseSetPasswordFreePayPropController;
.source "SetPasswdFreePayLimitController.java"


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/passwdfreepay/BaseSetPasswordFreePayPropController;-><init>(Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    return-void
.end method

.method public static dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 4

    const-string v0, "setPasswdFreePayLimit"

    .line 1
    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/passwdfreepay/SetPasswdFreePayLimitController;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    iget-object v2, p0, Lcom/netease/epay/sdk/controller/ControllerResult;->code:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/epay/sdk/controller/ControllerResult;->msg:Ljava/lang/String;

    iget-object p0, p0, Lcom/netease/epay/sdk/controller/ControllerResult;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-direct {v1, v2, v3, p0}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/passwdfreepay/BaseSetPasswordFreePayPropController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected go(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-class v0, Lcom/netease/epay/sdk/passwdfreepay/ui/SetPasswdFreePayLimitAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "setPasswdFreePayLimit"

    .line 3
    invoke-static {p1, v2, v0, v1}, Lcom/netease/epay/sdk/base/ui/CommonEntranceActivity;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
