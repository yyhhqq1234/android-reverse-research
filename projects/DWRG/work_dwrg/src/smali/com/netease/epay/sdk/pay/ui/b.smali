.class public Lcom/netease/epay/sdk/pay/ui/b;
.super Lcom/netease/epay/sdk/base/ui/SdkFragment;
.source "CreditPayFragment.java"

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
    .line 40
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;-><init>()V

    .line 79
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/b$3;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/pay/ui/b$3;-><init>(Lcom/netease/epay/sdk/pay/ui/b;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/b;->b:Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/netease/epay/sdk/pay/R$id;->tvForgetPwd:I

    if-ne v0, v1, :cond_0

    .line 71
    const-string v0, "resetPwd"

    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getResetPwdJson(ZI)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/netease/epay/sdk/pay/ui/b$2;

    invoke-direct {v3, p0}, Lcom/netease/epay/sdk/pay/ui/b$2;-><init>(Lcom/netease/epay/sdk/pay/ui/b;)V

    invoke-static {v0, v1, v2, v3}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 77
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/epay/sdk/pay/ui/b;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 47
    sget v0, Lcom/netease/epay/sdk/pay/R$layout;->epaysdk_frag_creditpay:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 48
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->et_payshorty_pwd:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/b;->a:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    .line 49
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/b;->a:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/b;->b:Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->setOnPasswordChangedListener(Lcom/netease/epay/sdk/base/view/gridpwd/OnPasswordChangedListener;)V

    .line 50
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/UiUtil;->isLandScape(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/b;->a:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->showKeyBoard()V

    .line 53
    :cond_0
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->ftb:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;

    .line 54
    new-instance v2, Lcom/netease/epay/sdk/pay/ui/b$1;

    invoke-direct {v2, p0}, Lcom/netease/epay/sdk/pay/ui/b$1;-><init>(Lcom/netease/epay/sdk/pay/ui/b;)V

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->setCloseListener(Landroid/view/View$OnClickListener;)V

    .line 64
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tvForgetPwd:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    new-instance v0, Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v0
.end method
