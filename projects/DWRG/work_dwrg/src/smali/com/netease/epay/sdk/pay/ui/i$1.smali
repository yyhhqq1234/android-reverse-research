.class final Lcom/netease/epay/sdk/pay/ui/i$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "PayChooserFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/i;->a(Landroid/support/v4/app/FragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Lcom/netease/epay/sdk/pay/model/MarketData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/i$1;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/MarketData;)V
    .locals 3

    .prologue
    .line 63
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 64
    const-string v2, "has_market"

    iget-object v0, p2, Lcom/netease/epay/sdk/pay/model/MarketData;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    const-string v0, "title"

    iget-object v2, p2, Lcom/netease/epay/sdk/pay/model/MarketData;->title:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "desc"

    iget-object v2, p2, Lcom/netease/epay/sdk/pay/model/MarketData;->desc:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/netease/epay/sdk/pay/ui/i;

    invoke-direct {v0}, Lcom/netease/epay/sdk/pay/ui/i;-><init>()V

    .line 68
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/ui/i;->setArguments(Landroid/os/Bundle;)V

    .line 69
    invoke-static {v0, p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    .line 70
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
    .locals 3
    .param p1, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    const-string v1, "has_market"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    new-instance v1, Lcom/netease/epay/sdk/pay/ui/i;

    invoke-direct {v1}, Lcom/netease/epay/sdk/pay/ui/i;-><init>()V

    .line 77
    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/pay/ui/i;->setArguments(Landroid/os/Bundle;)V

    .line 78
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/i$1;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 60
    check-cast p2, Lcom/netease/epay/sdk/pay/model/MarketData;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/pay/ui/i$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/MarketData;)V

    return-void
.end method
