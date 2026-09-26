.class public Lcom/netease/epay/sdk/psw/VerifyPwdController;
.super Lcom/netease/epay/sdk/controller/BaseController;
.source "VerifyPwdController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/controller/BaseController",
        "<",
        "Lcom/netease/epay/sdk/psw/verifypwd/f;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V
    .locals 1
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "callback"    # Lcom/netease/epay/sdk/controller/ControllerCallback;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/netease/epay/sdk/controller/BaseController;-><init>(Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 59
    const-string v0, "pwdType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/psw/VerifyPwdController;->b:I

    .line 60
    const-string v0, "validateType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/psw/VerifyPwdController;->c:I

    .line 61
    const-string v0, "uuid"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/psw/VerifyPwdController;->a:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public a(Lcom/netease/epay/sdk/psw/verifypwd/f;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 76
    const-string v0, "060007"

    iget-object v1, p1, Lcom/netease/epay/sdk/psw/verifypwd/f;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/netease/epay/sdk/psw/verifypwd/f;->a:Z

    if-nez v0, :cond_1

    .line 77
    const-string v0, "resetPwd"

    iget-object v1, p1, Lcom/netease/epay/sdk/psw/verifypwd/f;->activity:Landroid/support/v4/app/FragmentActivity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getResetPwdJson(ZI)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2, v5}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/VerifyPwdController;->callback:Lcom/netease/epay/sdk/controller/ControllerCallback;

    if-nez v0, :cond_2

    .line 81
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/psw/VerifyPwdController;->exit(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    goto :goto_0

    .line 84
    :cond_2
    iget-object v0, p1, Lcom/netease/epay/sdk/psw/verifypwd/f;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 85
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/VerifyPwdController;->callback:Lcom/netease/epay/sdk/controller/ControllerCallback;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/VerifyPwdController;->callback:Lcom/netease/epay/sdk/controller/ControllerCallback;

    new-instance v1, Lcom/netease/epay/sdk/controller/ControllerResult;

    iget-object v2, p1, Lcom/netease/epay/sdk/psw/verifypwd/f;->code:Ljava/lang/String;

    iget-object v3, p1, Lcom/netease/epay/sdk/psw/verifypwd/f;->msg:Ljava/lang/String;

    iget-object v4, p1, Lcom/netease/epay/sdk/psw/verifypwd/f;->activity:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/netease/epay/sdk/controller/ControllerResult;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/controller/ControllerCallback;->sendResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V

    goto :goto_0
.end method

.method public synthetic deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V
    .locals 0

    .prologue
    .line 32
    check-cast p1, Lcom/netease/epay/sdk/psw/verifypwd/f;

    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/psw/VerifyPwdController;->a(Lcom/netease/epay/sdk/psw/verifypwd/f;)V

    return-void
.end method

.method public start(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 68
    const-string v2, "pwdtype"

    iget v3, p0, Lcom/netease/epay/sdk/psw/VerifyPwdController;->b:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 69
    const-string v2, "validate_type"

    iget v3, p0, Lcom/netease/epay/sdk/psw/VerifyPwdController;->c:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 71
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 72
    return-void
.end method
