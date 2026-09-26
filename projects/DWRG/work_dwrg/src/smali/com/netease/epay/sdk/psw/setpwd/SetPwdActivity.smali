.class public Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;
.super Lcom/netease/epay/sdk/base/ui/SdkActivity;
.source "SetPwdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

.field private e:Lcom/netease/epay/sdk/psw/setpwd/b;

.field private f:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;-><init>()V

    .line 35
    new-instance v0, Lcom/netease/epay/sdk/psw/setpwd/b;

    invoke-direct {v0}, Lcom/netease/epay/sdk/psw/setpwd/b;-><init>()V

    iput-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->e:Lcom/netease/epay/sdk/psw/setpwd/b;

    .line 78
    new-instance v0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity$1;-><init>(Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->a:Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;

    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;)Lcom/netease/epay/sdk/psw/setpwd/b;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->e:Lcom/netease/epay/sdk/psw/setpwd/b;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 136
    const-string v0, "setPwd"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/psw/SetShortPwdController;

    .line 137
    if-eqz v0, :cond_0

    .line 138
    new-instance v1, Lcom/netease/epay/sdk/psw/setpwd/a;

    invoke-direct {v1, p1, p0}, Lcom/netease/epay/sdk/psw/setpwd/a;-><init>(Ljava/lang/String;Lcom/netease/epay/sdk/base/ui/SdkActivity;)V

    .line 139
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/psw/SetShortPwdController;->a(Lcom/netease/epay/sdk/psw/setpwd/a;)V

    .line 141
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;)Lcom/netease/epay/sdk/base/view/ActivityTitleBar;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->d:Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;)Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->f:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    return-object v0
.end method

.method static synthetic e(Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->b:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public back(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->e:Lcom/netease/epay/sdk/psw/setpwd/b;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/psw/setpwd/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->e:Lcom/netease/epay/sdk/psw/setpwd/b;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/psw/setpwd/b;->a()V

    .line 97
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->f:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->clearPassword()V

    .line 98
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->c:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u8bbe\u7f6e6\u4f4d\u6570\u5b57\u652f\u4ed8\u5bc6\u7801\uff0c\u5efa\u8bae\u52ff\u4e0e\u94f6\u884c\u5361\u53d6\u6b3e\u5bc6\u7801\u76f8\u540c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->d:Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    const-string v1, "\u8bbe\u7f6e\u652f\u4ed8\u5bc6\u7801"

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setTitle(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->b:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 133
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_1
    new-instance v0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity$2;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity$2;-><init>(Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;)V

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;->getInstance(Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;)Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "exitConfirm"

    invoke-virtual {v0, v1, v2}, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->b:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->f:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    iget-object v1, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->a:Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;->randomKey16Byte()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->getPassWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    .line 66
    :cond_0
    const-string v0, "\u8bf7\u8f93\u51656\u4f4d\u6570\u5b57\u652f\u4ed8\u5bc6\u7801"

    invoke-static {p0, v0}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    :cond_1
    :goto_0
    return-void

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->e:Lcom/netease/epay/sdk/psw/setpwd/b;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/psw/setpwd/b;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 70
    const-string v0, "\u4e24\u6b21\u8f93\u5165\u7684\u5bc6\u7801\u4e0d\u4e00\u6837\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    invoke-static {p0, v0}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->f:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->clearPassword()V

    goto :goto_0

    .line 74
    :cond_3
    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/DigestUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreateSdkActivity(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    sget v0, Lcom/netease/epay/sdk/psw/R$layout;->epaysdk_actv_reset_pwd:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_setpd_exit_warming_infos"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->g:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "qvhua_finishBtnString"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->h:Ljava/lang/String;

    .line 47
    :cond_0
    sget v0, Lcom/netease/epay/sdk/psw/R$id;->atb:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    iput-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->d:Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    .line 48
    sget v0, Lcom/netease/epay/sdk/psw/R$id;->tv_actvresetpwd_top_guide_x:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->c:Landroid/widget/TextView;

    .line 49
    sget v0, Lcom/netease/epay/sdk/psw/R$id;->et_setshorty_pwd:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    iput-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->f:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    .line 50
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->f:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    iget-object v1, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->a:Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->setOnPasswordChangedListener(Lcom/netease/epay/sdk/base/view/gridpwd/OnPasswordChangedListener;)V

    .line 51
    sget v0, Lcom/netease/epay/sdk/psw/R$id;->btn_actvresetpwd_next_c:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->b:Landroid/widget/Button;

    .line 52
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->h:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {p0}, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/UiUtil;->isLandScape(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/setpwd/SetPwdActivity;->f:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->showKeyBoard()V

    .line 59
    :cond_2
    return-void
.end method
