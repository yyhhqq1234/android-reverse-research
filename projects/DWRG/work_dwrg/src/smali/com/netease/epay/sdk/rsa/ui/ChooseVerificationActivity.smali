.class public Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;
.super Lcom/netease/epay/sdk/base/ui/SdkActivity;
.source "ChooseVerificationActivity.java"


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;-><init>()V

    .line 61
    new-instance v0, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity$1;-><init>(Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;->a:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;->c:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    sget v0, Lcom/netease/epay/sdk/rsa/R$id;->rlFace:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;->b:Landroid/widget/RelativeLayout;

    .line 36
    sget v0, Lcom/netease/epay/sdk/rsa/R$id;->rlId:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;->c:Landroid/widget/RelativeLayout;

    .line 38
    invoke-virtual {p0}, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    const-string v1, "faceDetect"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 45
    :goto_0
    :try_start_0
    const-string v0, "face"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/RegisterCenter;->getController(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    .line 52
    :goto_1
    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 57
    :goto_2
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;->b:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move v0, v2

    .line 51
    goto :goto_1

    .line 49
    :catch_1
    move-exception v0

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;->b:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_2

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method static synthetic b(Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;->b:Landroid/widget/RelativeLayout;

    return-object v0
.end method


# virtual methods
.method protected onCreateSdkActivity(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    sget v0, Lcom/netease/epay/sdk/rsa/R$layout;->epaysdk_actv_choose_verify:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;->setContentView(I)V

    .line 31
    invoke-direct {p0}, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;->a()V

    .line 32
    return-void
.end method
