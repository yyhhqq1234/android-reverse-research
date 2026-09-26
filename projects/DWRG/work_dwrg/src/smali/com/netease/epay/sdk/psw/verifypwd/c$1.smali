.class Lcom/netease/epay/sdk/psw/verifypwd/c$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "SdkInnerVerifyPwdBasePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/psw/verifypwd/c;
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
.field final synthetic a:Lcom/netease/epay/sdk/psw/verifypwd/c;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/psw/verifypwd/c;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/netease/epay/sdk/psw/verifypwd/c$1;->a:Lcom/netease/epay/sdk/psw/verifypwd/c;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLaterDeal(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 64
    const-string v0, "060006"

    iget-object v1, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/c$1;->a:Lcom/netease/epay/sdk/psw/verifypwd/c;

    invoke-static {v0}, Lcom/netease/epay/sdk/psw/verifypwd/c;->a(Lcom/netease/epay/sdk/psw/verifypwd/c;)Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;->c()V

    .line 67
    :cond_0
    return-void
.end method

.method public onUIChanged(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 57
    const-string v0, "060006"

    iget-object v1, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/c$1;->a:Lcom/netease/epay/sdk/psw/verifypwd/c;

    invoke-static {v0}, Lcom/netease/epay/sdk/psw/verifypwd/c;->a(Lcom/netease/epay/sdk/psw/verifypwd/c;)Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;->a()V

    .line 60
    :cond_0
    return-void
.end method

.method public onUnhandledFail(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 1
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 51
    iget-object v0, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/c$1;->a:Lcom/netease/epay/sdk/psw/verifypwd/c;

    iget-object v0, v0, Lcom/netease/epay/sdk/psw/verifypwd/c;->a:Lcom/netease/epay/sdk/psw/verifypwd/e;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/psw/verifypwd/e;->b()V

    .line 53
    return-void
.end method

.method public success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 5
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/c$1;->a:Lcom/netease/epay/sdk/psw/verifypwd/c;

    iget-object v0, v0, Lcom/netease/epay/sdk/psw/verifypwd/c;->a:Lcom/netease/epay/sdk/psw/verifypwd/e;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/psw/verifypwd/e;->dismissAllowingStateLoss()V

    .line 43
    const-string v0, "verifyPwd"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/psw/VerifyPwdController;

    .line 44
    if-eqz v0, :cond_0

    .line 45
    new-instance v1, Lcom/netease/epay/sdk/psw/verifypwd/f;

    const-string v2, "000000"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netease/epay/sdk/psw/verifypwd/c$1;->a:Lcom/netease/epay/sdk/psw/verifypwd/c;

    invoke-static {v4}, Lcom/netease/epay/sdk/psw/verifypwd/c;->a(Lcom/netease/epay/sdk/psw/verifypwd/c;)Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/netease/epay/sdk/psw/verifypwd/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/psw/VerifyPwdController;->a(Lcom/netease/epay/sdk/psw/verifypwd/f;)V

    .line 47
    :cond_0
    return-void
.end method
