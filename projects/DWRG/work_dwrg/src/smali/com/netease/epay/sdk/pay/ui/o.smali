.class public Lcom/netease/epay/sdk/pay/ui/o;
.super Lcom/netease/epay/sdk/pay/ui/l;
.source "PayShortyFragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/ui/IFullScreenDialogFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/pay/ui/o$a;
    }
.end annotation


# instance fields
.field c:Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;

.field private d:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

.field private e:Lcom/netease/epay/sdk/pay/ui/o$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/ui/l;-><init>()V

    .line 56
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/o$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/pay/ui/o$1;-><init>(Lcom/netease/epay/sdk/pay/ui/o;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/o;->c:Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;

    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/pay/ui/o;)Lcom/netease/epay/sdk/pay/ui/o$a;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/o;->e:Lcom/netease/epay/sdk/pay/ui/o$a;

    return-object v0
.end method

.method public static c()Lcom/netease/epay/sdk/pay/ui/o;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/o;

    invoke-direct {v0}, Lcom/netease/epay/sdk/pay/ui/o;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/o;->d:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->clearPassword()V

    .line 87
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/pay/ui/l;->onClick(Landroid/view/View;)V

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/netease/epay/sdk/pay/R$id;->tvForgetPwd:I

    if-ne v0, v1, :cond_0

    .line 73
    const-string v0, "resetPwd"

    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getResetPwdJson(ZI)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/netease/epay/sdk/pay/ui/o$2;

    invoke-direct {v3, p0}, Lcom/netease/epay/sdk/pay/ui/o$2;-><init>(Lcom/netease/epay/sdk/pay/ui/o;)V

    invoke-static {v0, v1, v2, v3}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 82
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/pay/ui/l;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 92
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/o;->d:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->screenOrientationChange()V

    .line 93
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/epay/sdk/pay/ui/o;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    sget v0, Lcom/netease/epay/sdk/pay/R$layout;->epaysdk_frag_payshorty:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 44
    sget v0, Lcom/netease/epay/sdk/pay/ui/l$b;->a:I

    iput v0, p0, Lcom/netease/epay/sdk/pay/ui/o;->a:I

    .line 45
    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/pay/ui/o;->a(Landroid/view/View;)V

    .line 46
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->et_payshorty_pwd:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/o;->d:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    .line 47
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/o;->d:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/o;->c:Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->setOnPasswordChangedListener(Lcom/netease/epay/sdk/base/view/gridpwd/OnPasswordChangedListener;)V

    .line 48
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/o;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/UiUtil;->isLandScape(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/o;->d:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->showKeyBoard()V

    .line 51
    :cond_0
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tvForgetPwd:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    new-instance v0, Lcom/netease/epay/sdk/pay/c/d;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/pay/c/d;-><init>(Lcom/netease/epay/sdk/pay/ui/o;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/o;->e:Lcom/netease/epay/sdk/pay/ui/o$a;

    .line 53
    new-instance v0, Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v0
.end method
