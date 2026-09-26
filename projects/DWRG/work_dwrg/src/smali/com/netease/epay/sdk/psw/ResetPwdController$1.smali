.class Lcom/netease/epay/sdk/psw/ResetPwdController$1;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "ResetPwdController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/psw/ResetPwdController;->start(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/psw/ResetPwdController;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/psw/ResetPwdController;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/netease/epay/sdk/psw/ResetPwdController$1;->a:Lcom/netease/epay/sdk/psw/ResetPwdController;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 4
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 54
    iget-boolean v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->isSuccess:Z

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 56
    iget-object v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->otherParams:Lorg/json/JSONObject;

    const-string v1, "isSetPsw"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lcom/netease/epay/sdk/base/event/BaseEvent;

    const-string v1, "000000"

    invoke-direct {v0, v1, v3, v3}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    .line 59
    iget-object v1, p0, Lcom/netease/epay/sdk/psw/ResetPwdController$1;->a:Lcom/netease/epay/sdk/psw/ResetPwdController;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/psw/ResetPwdController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 74
    :goto_0
    return-void

    .line 61
    :cond_0
    const/4 v0, 0x1

    invoke-static {v2, v2, v2, v0}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getSetPwdJson(ZZZZ)Lorg/json/JSONObject;

    move-result-object v0

    .line 62
    const-string v1, "setPwd"

    iget-object v2, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->activity:Landroid/support/v4/app/FragmentActivity;

    new-instance v3, Lcom/netease/epay/sdk/psw/ResetPwdController$1$1;

    invoke-direct {v3, p0}, Lcom/netease/epay/sdk/psw/ResetPwdController$1$1;-><init>(Lcom/netease/epay/sdk/psw/ResetPwdController$1;)V

    invoke-static {v1, v2, v0, v3}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    goto :goto_0

    .line 71
    :cond_1
    new-instance v0, Lcom/netease/epay/sdk/base/event/BaseEvent;

    iget-object v1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->code:Ljava/lang/String;

    iget-object v2, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->msg:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    .line 72
    iget-object v1, p0, Lcom/netease/epay/sdk/psw/ResetPwdController$1;->a:Lcom/netease/epay/sdk/psw/ResetPwdController;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/psw/ResetPwdController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    goto :goto_0
.end method
