.class public Lcom/netease/epay/sdk/risk/ui/d;
.super Lcom/netease/epay/sdk/risk/ui/b;
.source "RiskLongPwdFragment.java"


# instance fields
.field private a:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/netease/epay/sdk/risk/ui/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/risk/ui/d;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/d;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method public static a()Lcom/netease/epay/sdk/risk/ui/d;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/netease/epay/sdk/risk/ui/d;

    invoke-direct {v0}, Lcom/netease/epay/sdk/risk/ui/d;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/d;->a:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 42
    sget v0, Lcom/netease/epay/sdk/risk/R$layout;->epaysdk_frag_risk_long:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 43
    sget v0, Lcom/netease/epay/sdk/risk/R$id;->et_token:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/epay/sdk/risk/ui/d;->a:Landroid/widget/EditText;

    .line 44
    sget v0, Lcom/netease/epay/sdk/risk/R$id;->ftb:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;

    .line 45
    new-instance v2, Lcom/netease/epay/sdk/risk/ui/d$1;

    invoke-direct {v2, p0}, Lcom/netease/epay/sdk/risk/ui/d$1;-><init>(Lcom/netease/epay/sdk/risk/ui/d;)V

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->setCloseListener(Landroid/view/View$OnClickListener;)V

    .line 55
    sget v0, Lcom/netease/epay/sdk/risk/R$id;->btn_riskverify_token_c:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 56
    new-instance v2, Lcom/netease/epay/sdk/risk/ui/d$2;

    invoke-direct {v2, p0}, Lcom/netease/epay/sdk/risk/ui/d$2;-><init>(Lcom/netease/epay/sdk/risk/ui/d;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    new-instance v2, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    invoke-direct {v2, v0}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;-><init>(Landroid/widget/Button;)V

    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/d;->a:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->addEditText(Landroid/widget/TextView;)V

    .line 72
    return-object v1
.end method
