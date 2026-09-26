.class public Lcom/netease/epay/sdk/risk/ui/a;
.super Lcom/netease/epay/sdk/risk/ui/b;
.source "RiskCardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:[Landroid/widget/TextView;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/CheckBox;

.field private d:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/netease/epay/sdk/risk/ui/b;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/ArrayList;)Lcom/netease/epay/sdk/risk/ui/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/netease/epay/sdk/risk/ui/a;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Lcom/netease/epay/sdk/risk/ui/a;

    invoke-direct {v0}, Lcom/netease/epay/sdk/risk/ui/a;-><init>()V

    .line 41
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 42
    const-string v2, "sdk_risk_card_tokens"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 43
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/risk/ui/a;->setArguments(Landroid/os/Bundle;)V

    .line 44
    return-object v0
.end method


# virtual methods
.method public b(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 102
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/a;->a:[Landroid/widget/TextView;

    aget-object v2, v0, v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/a;->b:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/a;->d:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 87
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 88
    const-string v3, "passProtectCard"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string v0, "challengeInfo"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v0, "isEnterAssistPwd"

    iget-object v2, p0, Lcom/netease/epay/sdk/risk/ui/a;->c:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 91
    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/risk/ui/a;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 49
    sget v0, Lcom/netease/epay/sdk/risk/R$layout;->epaysdk_frag_risk_token:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/risk/ui/a;->a:[Landroid/widget/TextView;

    .line 51
    iget-object v2, p0, Lcom/netease/epay/sdk/risk/ui/a;->a:[Landroid/widget/TextView;

    const/4 v3, 0x0

    sget v0, Lcom/netease/epay/sdk/risk/R$id;->tv_token1:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v3

    .line 52
    iget-object v2, p0, Lcom/netease/epay/sdk/risk/ui/a;->a:[Landroid/widget/TextView;

    sget v0, Lcom/netease/epay/sdk/risk/R$id;->tv_token2:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v4

    .line 53
    iget-object v2, p0, Lcom/netease/epay/sdk/risk/ui/a;->a:[Landroid/widget/TextView;

    const/4 v3, 0x2

    sget v0, Lcom/netease/epay/sdk/risk/R$id;->tv_token3:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v2, v3

    .line 54
    sget v0, Lcom/netease/epay/sdk/risk/R$id;->cb_set_psw_token:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/netease/epay/sdk/risk/ui/a;->c:Landroid/widget/CheckBox;

    .line 55
    sget v0, Lcom/netease/epay/sdk/base/core/CoreData;->bizType:I

    const/16 v2, 0x389

    if-ne v0, v2, :cond_0

    .line 57
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/a;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 58
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/a;->c:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 60
    :cond_0
    sget v0, Lcom/netease/epay/sdk/risk/R$id;->et_token:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/netease/epay/sdk/risk/ui/a;->b:Landroid/widget/EditText;

    .line 61
    sget v0, Lcom/netease/epay/sdk/risk/R$id;->btn_riskverify_token_c:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/epay/sdk/risk/ui/a;->d:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/ui/a;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    new-instance v0, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v2, p0, Lcom/netease/epay/sdk/risk/ui/a;->d:Landroid/widget/Button;

    invoke-direct {v0, v2}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;-><init>(Landroid/widget/Button;)V

    iget-object v2, p0, Lcom/netease/epay/sdk/risk/ui/a;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->addEditText(Landroid/widget/TextView;)V

    .line 64
    invoke-virtual {p0}, Lcom/netease/epay/sdk/risk/ui/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 65
    const-string v2, "sdk_risk_card_tokens"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 66
    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/risk/ui/a;->b(Ljava/util/ArrayList;)V

    .line 67
    sget v0, Lcom/netease/epay/sdk/risk/R$id;->ftb:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;

    .line 68
    new-instance v2, Lcom/netease/epay/sdk/risk/ui/a$1;

    invoke-direct {v2, p0}, Lcom/netease/epay/sdk/risk/ui/a$1;-><init>(Lcom/netease/epay/sdk/risk/ui/a;)V

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/view/FragmentTitleBar;->setCloseListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-object v1
.end method
