.class public Lcom/netease/epay/sdk/psw/verifypwd/g;
.super Lcom/netease/epay/sdk/psw/verifypwd/e;
.source "VerifyShortPwdFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/netease/epay/sdk/base/ui/IFullScreenDialogFragment;


# instance fields
.field a:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

.field b:Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/netease/epay/sdk/psw/verifypwd/e;-><init>()V

    .line 54
    new-instance v0, Lcom/netease/epay/sdk/psw/verifypwd/g$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/psw/verifypwd/g$1;-><init>(Lcom/netease/epay/sdk/psw/verifypwd/g;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/g;->b:Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;

    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 46
    sget v0, Lcom/netease/epay/sdk/psw/R$layout;->epaysdk_frag_wallet_check_shorty:I

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/g;->a:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->clearPassword()V

    .line 52
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/netease/epay/sdk/psw/R$id;->tvForgetPwd:I

    if-ne v0, v1, :cond_0

    .line 65
    const-string v1, "resetPwd"

    invoke-virtual {p0}, Lcom/netease/epay/sdk/psw/verifypwd/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 66
    invoke-static {v0, v3}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getResetPwdJson(ZI)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netease/epay/sdk/psw/verifypwd/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;->b()Lcom/netease/epay/sdk/controller/ControllerCallback;

    move-result-object v0

    .line 65
    invoke-static {v1, v2, v3, v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 68
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/epay/sdk/psw/verifypwd/g;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/netease/epay/sdk/psw/verifypwd/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 34
    sget v0, Lcom/netease/epay/sdk/psw/R$id;->et_payshorty_pwd:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    iput-object v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/g;->a:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    .line 35
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/g;->a:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    iget-object v2, p0, Lcom/netease/epay/sdk/psw/verifypwd/g;->b:Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->setOnPasswordChangedListener(Lcom/netease/epay/sdk/base/view/gridpwd/OnPasswordChangedListener;)V

    .line 36
    invoke-virtual {p0}, Lcom/netease/epay/sdk/psw/verifypwd/g;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/UiUtil;->isLandScape(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/g;->a:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->showKeyBoard()V

    .line 39
    :cond_0
    sget v0, Lcom/netease/epay/sdk/psw/R$id;->tvForgetPwd:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 40
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    new-instance v0, Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/psw/verifypwd/g;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v0
.end method
