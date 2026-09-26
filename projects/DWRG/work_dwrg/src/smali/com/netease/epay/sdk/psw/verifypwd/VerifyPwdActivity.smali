.class public Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;
.super Lcom/netease/epay/sdk/base/ui/SdkActivity;
.source "VerifyPwdActivity.java"


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 33
    iget v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 34
    new-instance v0, Lcom/netease/epay/sdk/psw/verifypwd/g;

    invoke-direct {v0}, Lcom/netease/epay/sdk/psw/verifypwd/g;-><init>()V

    .line 38
    :goto_0
    invoke-static {v0, p0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    .line 39
    return-void

    .line 36
    :cond_0
    new-instance v0, Lcom/netease/epay/sdk/psw/verifypwd/d;

    invoke-direct {v0}, Lcom/netease/epay/sdk/psw/verifypwd/d;-><init>()V

    goto :goto_0
.end method

.method public b()Lcom/netease/epay/sdk/controller/ControllerCallback;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity$1;-><init>(Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;)V

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    iput v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;->b:I

    .line 55
    invoke-virtual {p0}, Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;->a()V

    .line 56
    return-void
.end method

.method protected onCreateSdkActivity(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    sget v0, Lcom/netease/epay/sdk/psw/R$layout;->epaysdk_actv_transparent:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;->setContentView(I)V

    .line 25
    invoke-virtual {p0}, Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 26
    const-string v1, "pwdtype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;->b:I

    .line 27
    const-string v1, "validate_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;->a:I

    .line 28
    invoke-virtual {p0}, Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;->a()V

    .line 29
    return-void
.end method
