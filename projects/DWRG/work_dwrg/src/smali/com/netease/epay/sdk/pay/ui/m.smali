.class public Lcom/netease/epay/sdk/pay/ui/m;
.super Lcom/netease/epay/sdk/pay/ui/l;
.source "PayPwdFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/pay/ui/m$a;
    }
.end annotation


# instance fields
.field c:Landroid/text/TextWatcher;

.field private d:Lcom/netease/epay/sdk/base/view/CleanUpEditText;

.field private e:Lcom/netease/epay/sdk/pay/ui/m$a;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/ui/l;-><init>()V

    .line 91
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/m$2;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/pay/ui/m$2;-><init>(Lcom/netease/epay/sdk/pay/ui/m;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/m;->c:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/pay/ui/m;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/m;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/epay/sdk/pay/ui/m;)Lcom/netease/epay/sdk/base/view/CleanUpEditText;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/m;->d:Lcom/netease/epay/sdk/base/view/CleanUpEditText;

    return-object v0
.end method

.method public static c()Lcom/netease/epay/sdk/pay/ui/m;
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/m;

    invoke-direct {v0}, Lcom/netease/epay/sdk/pay/ui/m;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/netease/epay/sdk/pay/ui/l;->a()V

    .line 88
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/m;->d:Lcom/netease/epay/sdk/base/view/CleanUpEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/CleanUpEditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    return-void
.end method

.method protected b()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/m;->d:Lcom/netease/epay/sdk/base/view/CleanUpEditText;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/CleanUpEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/m;->getView()Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/netease/epay/sdk/pay/R$id;->btn_done:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 77
    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/DigestUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/m;->e:Lcom/netease/epay/sdk/pay/ui/m$a;

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/m;->e:Lcom/netease/epay/sdk/pay/ui/m$a;

    invoke-interface {v1, v0}, Lcom/netease/epay/sdk/pay/ui/m$a;->a(Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/m;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u51fa\u9519\u4e86"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/pay/ui/l;->onClick(Landroid/view/View;)V

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/netease/epay/sdk/pay/R$id;->tvTips:I

    if-ne v0, v1, :cond_0

    .line 62
    const-string v0, "resetPwd"

    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/m;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getResetPwdJson(ZI)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/netease/epay/sdk/pay/ui/m$1;

    invoke-direct {v3, p0}, Lcom/netease/epay/sdk/pay/ui/m$1;-><init>(Lcom/netease/epay/sdk/pay/ui/m;)V

    invoke-static {v0, v1, v2, v3}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 71
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    sget v0, Lcom/netease/epay/sdk/pay/R$layout;->epaysdk_frag_paypwd:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 47
    sget v0, Lcom/netease/epay/sdk/pay/ui/l$b;->b:I

    iput v0, p0, Lcom/netease/epay/sdk/pay/ui/m;->a:I

    .line 48
    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/pay/ui/m;->a(Landroid/view/View;)V

    .line 49
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->et_paypwd_input_pwd:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/CleanUpEditText;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/m;->d:Lcom/netease/epay/sdk/base/view/CleanUpEditText;

    .line 50
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/m;->d:Lcom/netease/epay/sdk/base/view/CleanUpEditText;

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/m;->c:Landroid/text/TextWatcher;

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/view/CleanUpEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 51
    new-instance v0, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/m;->b:Landroid/widget/Button;

    invoke-direct {v0, v2}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;-><init>(Landroid/widget/Button;)V

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/m;->d:Lcom/netease/epay/sdk/base/view/CleanUpEditText;

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->addEditText(Landroid/widget/TextView;)V

    .line 52
    sget v0, Lcom/netease/epay/sdk/pay/R$id;->tvTips:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/m;->f:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/m;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    new-instance v0, Lcom/netease/epay/sdk/pay/c/c;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/pay/c/c;-><init>(Lcom/netease/epay/sdk/pay/ui/m;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/m;->e:Lcom/netease/epay/sdk/pay/ui/m$a;

    .line 55
    return-object v1
.end method
