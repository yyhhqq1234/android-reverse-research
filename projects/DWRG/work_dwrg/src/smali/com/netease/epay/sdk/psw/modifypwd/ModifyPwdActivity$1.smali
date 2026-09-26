.class Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "ModifyPwdActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity$1;->a:Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUIChanged(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "resp"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 65
    const-string v0, "060006"

    iget-object v1, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity$1;->a:Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;->a(Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;)Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->clearPassword()V

    .line 68
    :cond_0
    return-void
.end method

.method public onUnhandledFail(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 1
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/netease/epay/sdk/NetCallback;->onUnhandledFail(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V

    .line 73
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity$1;->a:Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;->a(Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;)Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->clearPassword()V

    .line 74
    return-void
.end method

.method public success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 3
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 52
    const-string v0, "setPwd"

    const/4 v1, 0x1

    invoke-static {v2, v2, v2, v1}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getSetPwdJson(ZZZZ)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity$1$1;

    invoke-direct {v2, p0, p1}, Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity$1$1;-><init>(Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity$1;Landroid/support/v4/app/FragmentActivity;)V

    invoke-static {v0, p1, v1, v2}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 62
    return-void
.end method
