.class public Lcom/netease/epay/sdk/pay/ui/CreditPayActivity;
.super Lcom/netease/epay/sdk/base/ui/SdkActivity;
.source "CreditPayActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netease/epay/sdk/pay/ui/CreditPayActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 19
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 21
    return-void
.end method

.method private b()V
    .locals 0

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/CreditPayActivity;->a()V

    .line 37
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/b;

    invoke-direct {v0}, Lcom/netease/epay/sdk/pay/ui/b;-><init>()V

    .line 41
    invoke-static {v0, p0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    .line 42
    return-void
.end method

.method public initStateBar()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method protected onCreateSdkActivity(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    sget v0, Lcom/netease/epay/sdk/pay/R$layout;->epaysdk_actv_transparent:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/CreditPayActivity;->setContentView(I)V

    .line 26
    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/ui/CreditPayActivity;->b()V

    .line 27
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 32
    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/ui/CreditPayActivity;->b()V

    .line 33
    return-void
.end method
