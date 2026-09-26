.class public Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;
.super Lcom/netease/epay/sdk/base/ui/SdkActivity;
.source "ModifyPwdActivity.java"


# instance fields
.field a:Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;

.field private b:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

.field private c:Lcom/netease/epay/sdk/NetCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;-><init>()V

    .line 49
    new-instance v0, Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity$1;-><init>(Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;->c:Lcom/netease/epay/sdk/NetCallback;

    .line 77
    new-instance v0, Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity$2;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity$2;-><init>(Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;->a:Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;

    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;)Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;->b:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;)Lcom/netease/epay/sdk/NetCallback;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;->c:Lcom/netease/epay/sdk/NetCallback;

    return-object v0
.end method


# virtual methods
.method public back(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->back(Landroid/view/View;)V

    .line 92
    const-string v0, "modifyPwd"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/psw/ModifyPwdController;

    .line 93
    if-eqz v0, :cond_0

    .line 94
    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    sget-object v2, Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;->USER_ABORT:Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;

    invoke-direct {v1, v2}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Lcom/netease/epay/sdk/base/util/ErrorCode$CUSTOM_CODE;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/psw/ModifyPwdController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 96
    :cond_0
    return-void
.end method

.method protected onCreateSdkActivity(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    sget v0, Lcom/netease/epay/sdk/psw/R$layout;->epaysdk_actv_verify_pwd:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;->setContentView(I)V

    .line 42
    sget v0, Lcom/netease/epay/sdk/psw/R$id;->et_setshorty_pwd:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    iput-object v0, p0, Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;->b:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    .line 43
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;->b:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    iget-object v1, p0, Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;->a:Lcom/netease/epay/sdk/base/view/gridpwd/EpaySdkPasswordChangedListener;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->setOnPasswordChangedListener(Lcom/netease/epay/sdk/base/view/gridpwd/OnPasswordChangedListener;)V

    .line 44
    invoke-virtual {p0}, Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/UiUtil;->isLandScape(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/modifypwd/ModifyPwdActivity;->b:Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/gridpwd/GridPasswordView;->showKeyBoard()V

    .line 47
    :cond_0
    return-void
.end method
