.class public Lcom/netease/epay/sdk/psw/setpwd/SetPwdFragmentActivity;
.super Lcom/netease/epay/sdk/base/ui/SdkActivity;
.source "SetPwdFragmentActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreateSdkActivity(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    sget v0, Lcom/netease/epay/sdk/psw/R$layout;->epaysdk_actv_transparent:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/psw/setpwd/SetPwdFragmentActivity;->setContentView(I)V

    .line 18
    new-instance v0, Lcom/netease/epay/sdk/psw/setpwd/c;

    invoke-direct {v0}, Lcom/netease/epay/sdk/psw/setpwd/c;-><init>()V

    .line 19
    invoke-virtual {p0}, Lcom/netease/epay/sdk/psw/setpwd/SetPwdFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/psw/setpwd/c;->setArguments(Landroid/os/Bundle;)V

    .line 20
    invoke-static {v0, p0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    .line 21
    return-void
.end method
