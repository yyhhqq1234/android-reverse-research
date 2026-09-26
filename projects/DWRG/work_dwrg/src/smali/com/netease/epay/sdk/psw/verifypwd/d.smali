.class public Lcom/netease/epay/sdk/psw/verifypwd/d;
.super Lcom/netease/epay/sdk/psw/verifypwd/e;
.source "VerifyLongPwdFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Landroid/text/TextWatcher;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/netease/epay/sdk/psw/verifypwd/e;-><init>()V

    .line 67
    new-instance v0, Lcom/netease/epay/sdk/psw/verifypwd/d$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/psw/verifypwd/d$1;-><init>(Lcom/netease/epay/sdk/psw/verifypwd/d;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/d;->a:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/psw/verifypwd/d;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/d;->b:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/netease/epay/sdk/psw/R$layout;->epaysdk_frag_wlaat_check_longpwd:I

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/d;->b:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 54
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/netease/epay/sdk/psw/R$id;->btn_done:I

    if-ne v0, v1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/d;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/DigestUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/psw/verifypwd/d;->a(Ljava/lang/String;)V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/netease/epay/sdk/psw/R$id;->tvTips:I

    if-ne v0, v1, :cond_0

    .line 62
    const-string v1, "resetPwd"

    invoke-virtual {p0}, Lcom/netease/epay/sdk/psw/verifypwd/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 63
    invoke-static {v0, v3}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getResetPwdJson(ZI)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0}, Lcom/netease/epay/sdk/psw/verifypwd/d;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/psw/verifypwd/VerifyPwdActivity;->b()Lcom/netease/epay/sdk/controller/ControllerCallback;

    move-result-object v0

    .line 62
    invoke-static {v1, v2, v3, v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/netease/epay/sdk/psw/verifypwd/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    .line 35
    sget v0, Lcom/netease/epay/sdk/psw/R$id;->btn_done:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 36
    const-string v1, "\u786e \u5b9a"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    sget v1, Lcom/netease/epay/sdk/psw/R$id;->et_paypwd_input_pwd:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/netease/epay/sdk/psw/verifypwd/d;->b:Landroid/widget/EditText;

    .line 39
    iget-object v1, p0, Lcom/netease/epay/sdk/psw/verifypwd/d;->b:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/netease/epay/sdk/psw/verifypwd/d;->a:Landroid/text/TextWatcher;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 40
    new-instance v1, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    invoke-direct {v1, v0}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;-><init>(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/d;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->addEditText(Landroid/widget/TextView;)V

    .line 41
    sget v0, Lcom/netease/epay/sdk/psw/R$id;->tvTips:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/d;->c:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/netease/epay/sdk/psw/verifypwd/d;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-object v2
.end method
