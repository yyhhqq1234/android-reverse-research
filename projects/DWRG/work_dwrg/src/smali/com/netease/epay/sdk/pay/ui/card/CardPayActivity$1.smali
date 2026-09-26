.class Lcom/netease/epay/sdk/pay/ui/card/CardPayActivity$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "CardPayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/card/CardPayActivity;->onCreateSdkActivity(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/netease/epay/sdk/pay/ui/card/CardPayActivity;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/card/CardPayActivity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/card/CardPayActivity$1;->b:Lcom/netease/epay/sdk/pay/ui/card/CardPayActivity;

    iput-object p2, p0, Lcom/netease/epay/sdk/pay/ui/card/CardPayActivity$1;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/MarketData;)V
    .locals 3

    .prologue
    .line 39
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 40
    const-string v2, "has_market"

    iget-object v0, p2, Lcom/netease/epay/sdk/pay/model/MarketData;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    const-string v0, "title"

    iget-object v2, p2, Lcom/netease/epay/sdk/pay/model/MarketData;->title:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "desc"

    iget-object v2, p2, Lcom/netease/epay/sdk/pay/model/MarketData;->desc:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/CardPayActivity$1;->a:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/CardPayActivity$1;->b:Lcom/netease/epay/sdk/pay/ui/card/CardPayActivity;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/card/CardPayActivity;->getFirstFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 45
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 46
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/CardPayActivity$1;->b:Lcom/netease/epay/sdk/pay/ui/card/CardPayActivity;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/pay/ui/card/CardPayActivity;->setContentFragment(Landroid/support/v4/app/Fragment;)V

    .line 48
    :cond_0
    return-void

    .line 40
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
    .locals 2
    .param p1, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/CardPayActivity$1;->b:Lcom/netease/epay/sdk/pay/ui/card/CardPayActivity;

    new-instance v1, Lcom/netease/epay/sdk/pay/model/MarketData;

    invoke-direct {v1}, Lcom/netease/epay/sdk/pay/model/MarketData;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/netease/epay/sdk/pay/ui/card/CardPayActivity$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/MarketData;)V

    .line 53
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    check-cast p2, Lcom/netease/epay/sdk/pay/model/MarketData;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/pay/ui/card/CardPayActivity$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/MarketData;)V

    return-void
.end method
