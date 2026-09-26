.class public Lcom/netease/epay/sdk/pay/ui/PayingActivity;
.super Lcom/netease/epay/sdk/base/ui/SdkActivity;
.source "PayingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/pay/ui/PayingActivity$a;
    }
.end annotation


# instance fields
.field private a:Lcom/netease/epay/sdk/pay/ui/PayingActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkActivity;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 29
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/netease/epay/sdk/pay/a;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/pay/a;-><init>(Lcom/netease/epay/sdk/pay/ui/PayingActivity;)V

    .line 50
    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/a;->a()V

    .line 51
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 58
    sget-boolean v0, Lcom/netease/epay/sdk/pay/c;->c:Z

    if-eqz v0, :cond_3

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 60
    const-string v0, "android.permission.USE_FINGERPRINT"

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/pay/R$string;->epaysdk_unavailable_finger:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    sget-boolean v0, Lcom/netease/epay/sdk/pay/c;->e:Z

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x1

    sput-boolean v0, Lcom/netease/epay/sdk/pay/c;->f:Z

    .line 66
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/netease/epay/sdk/pay/c;->c:Z

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->a:Lcom/netease/epay/sdk/pay/ui/PayingActivity$a;

    invoke-interface {v0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity$a;->a()V

    .line 73
    :cond_2
    :goto_0
    return-void

    .line 71
    :cond_3
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->a:Lcom/netease/epay/sdk/pay/ui/PayingActivity$a;

    invoke-interface {v0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity$a;->a()V

    goto :goto_0
.end method

.method public initStateBar()V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 82
    invoke-virtual {p0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v4

    move v3, v2

    .line 84
    :goto_0
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_3

    .line 85
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 86
    if-nez v0, :cond_1

    .line 84
    :cond_0
    :goto_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 89
    :cond_1
    instance-of v1, v0, Lcom/netease/epay/sdk/pay/ui/n;

    if-eqz v1, :cond_2

    .line 90
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 92
    if-eqz v1, :cond_4

    .line 93
    const-string v5, "isClose"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 95
    :goto_2
    check-cast v0, Lcom/netease/epay/sdk/pay/ui/n;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/n;->dismissAllowingStateLoss()V

    .line 96
    invoke-static {v1}, Lcom/netease/epay/sdk/pay/ui/n;->a(Z)Lcom/netease/epay/sdk/pay/ui/n;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    goto :goto_1

    .line 97
    :cond_2
    instance-of v1, v0, Lcom/netease/epay/sdk/pay/ui/j;

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 99
    check-cast v0, Lcom/netease/epay/sdk/pay/ui/j;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/j;->dismissAllowingStateLoss()V

    .line 100
    invoke-static {v1}, Lcom/netease/epay/sdk/pay/ui/j;->a(Landroid/os/Bundle;)Lcom/netease/epay/sdk/pay/ui/j;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    goto :goto_1

    .line 103
    :cond_3
    return-void

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method protected onCreateSdkActivity(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    sget v0, Lcom/netease/epay/sdk/pay/R$layout;->epaysdk_actv_transparent:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->setContentView(I)V

    .line 38
    new-instance v0, Lcom/netease/epay/sdk/pay/c/a;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/pay/c/a;-><init>(Lcom/netease/epay/sdk/pay/ui/PayingActivity;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->a:Lcom/netease/epay/sdk/pay/ui/PayingActivity$a;

    .line 39
    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->b()V

    .line 40
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/SdkActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 45
    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->b()V

    .line 46
    return-void
.end method
