.class public Lcom/netease/epay/sdk/psw/setpwd/c;
.super Lcom/netease/epay/sdk/base/ui/SdkFragment;
.source "SetShortyFragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/ui/IFullScreenDialogFragment;


# instance fields
.field a:Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;

.field private b:Lcom/netease/epay/sdk/psw/setpwd/b;

.field private c:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;-><init>()V

    .line 30
    new-instance v0, Lcom/netease/epay/sdk/psw/setpwd/b;

    invoke-direct {v0}, Lcom/netease/epay/sdk/psw/setpwd/b;-><init>()V

    iput-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/c;->b:Lcom/netease/epay/sdk/psw/setpwd/b;

    .line 82
    new-instance v0, Lcom/netease/epay/sdk/psw/setpwd/c$3;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/psw/setpwd/c$3;-><init>(Lcom/netease/epay/sdk/psw/setpwd/c;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/c;->a:Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;

    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/psw/setpwd/c;)Lcom/netease/epay/sdk/psw/setpwd/b;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/c;->b:Lcom/netease/epay/sdk/psw/setpwd/b;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/epay/sdk/psw/setpwd/c;)Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/c;->c:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 46
    sget v0, Lcom/netease/epay/sdk/psw/R$id;->ftb:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;

    .line 47
    iget-object v3, p0, Lcom/netease/epay/sdk/psw/setpwd/c;->b:Lcom/netease/epay/sdk/psw/setpwd/b;

    invoke-virtual {v3}, Lcom/netease/epay/sdk/psw/setpwd/b;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 48
    const-string v3, "\u8bbe\u7f6e\u652f\u4ed8\u5bc6\u7801"

    invoke-virtual {v0, v3}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->setTitle(Ljava/lang/String;)V

    .line 49
    iget-boolean v3, p0, Lcom/netease/epay/sdk/psw/setpwd/c;->d:Z

    if-nez v3, :cond_1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->setCloseShow(Z)V

    .line 50
    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->setBackShow(Z)V

    .line 51
    sget v1, Lcom/netease/epay/sdk/psw/R$id;->tv_setshorty_desc:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "\u8bbe\u7f6e6\u4f4d\u6570\u5b57\u5bc6\u7801\uff0c\u5efa\u8bae\u52ff\u4e0e\u94f6\u884c\u5361\u5bc6\u7801\u76f8\u540c"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :goto_1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/psw/setpwd/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/epay/sdk/base/util/UiUtil;->isLandScape(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/netease/epay/sdk/psw/setpwd/c;->c:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->showKeyBoard()V

    .line 61
    :cond_0
    new-instance v1, Lcom/netease/epay/sdk/psw/setpwd/c$1;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/psw/setpwd/c$1;-><init>(Lcom/netease/epay/sdk/psw/setpwd/c;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->setCloseListener(Landroid/view/View$OnClickListener;)V

    .line 72
    new-instance v1, Lcom/netease/epay/sdk/psw/setpwd/c$2;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/psw/setpwd/c$2;-><init>(Lcom/netease/epay/sdk/psw/setpwd/c;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->setBackListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void

    :cond_1
    move v1, v2

    .line 49
    goto :goto_0

    .line 53
    :cond_2
    const-string v3, "\u786e\u8ba4\u652f\u4ed8\u5bc6\u7801"

    invoke-virtual {v0, v3}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->setTitle(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->setCloseShow(Z)V

    .line 55
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->setBackShow(Z)V

    .line 56
    sget v1, Lcom/netease/epay/sdk/psw/R$id;->tv_setshorty_desc:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "\u786e\u8ba46\u4f4d\u6570\u5b57\u5bc6\u7801\uff0c\u5efa\u8bae\u52ff\u4e0e\u94f6\u884c\u5361\u5bc6\u7801\u76f8\u540c"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/epay/sdk/psw/setpwd/c;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    sget v0, Lcom/netease/epay/sdk/psw/R$layout;->epaysdk_frag_set_shorty:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 38
    invoke-virtual {p0}, Lcom/netease/epay/sdk/psw/setpwd/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "is_forced"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/psw/setpwd/c;->d:Z

    .line 39
    sget v0, Lcom/netease/epay/sdk/psw/R$id;->et_setshorty_pwd:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    iput-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/c;->c:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    .line 40
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/c;->c:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    iget-object v2, p0, Lcom/netease/epay/sdk/psw/setpwd/c;->a:Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->setOnPasswordChangedListener(Lcom/netease/epay/sdk/base/view/gridpwd/OnPasswordChangedListener;)V

    .line 41
    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/psw/setpwd/c;->a(Landroid/view/View;)V

    .line 42
    new-instance v0, Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/psw/setpwd/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object v0
.end method
