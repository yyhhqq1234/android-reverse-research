.class public Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;
.super Lcom/netease/epay/sdk/base/ui/SdkActivity;
.source "IdentityVerificationActivity.java"


# instance fields
.field a:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

.field private b:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;)Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->b:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    const-string v0, "IdentityVerificationActivity_bindMobile"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->c:Ljava/lang/String;

    .line 52
    const-string v0, "IdentityVerificationActivity_accountName"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    const-string v2, "IdentityVerificationActivity_businessType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->d:Ljava/lang/String;

    .line 54
    const-string v2, "faceDetect"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->e:Z

    move-object v1, v0

    .line 58
    :goto_0
    sget v0, Lcom/netease/epay/sdk/rsa/R$id;->tvName:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 59
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_0
    sget v0, Lcom/netease/epay/sdk/rsa/R$id;->etIdentity:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    iput-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->b:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    .line 63
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->b:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showSoftInput(Landroid/view/View;)V

    .line 64
    sget v0, Lcom/netease/epay/sdk/rsa/R$id;->btnNext:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/LongCommonButton;

    .line 65
    new-instance v1, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    invoke-direct {v1, v0}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;-><init>(Landroid/widget/Button;)V

    iput-object v1, p0, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->a:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    .line 66
    iget-object v1, p0, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->a:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v2, p0, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->b:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    invoke-virtual {v1, v2}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->addEditText(Landroid/widget/TextView;)V

    .line 67
    new-instance v1, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1;-><init>(Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/LongCommonButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    sget v0, Lcom/netease/epay/sdk/rsa/R$id;->tvChooseOther:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$2;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$2;-><init>(Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->e:Z

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v0, -0x1

    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 108
    packed-switch p1, :pswitch_data_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 110
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 111
    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->setResult(I)V

    .line 112
    invoke-virtual {p0}, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->finish()V

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreateSdkActivity(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    sget v0, Lcom/netease/epay/sdk/rsa/R$layout;->epaysdk_act_id_verify:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->setContentView(I)V

    .line 43
    invoke-direct {p0}, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->a()V

    .line 44
    return-void
.end method
