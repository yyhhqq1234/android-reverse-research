.class Lcom/netease/epay/sdk/pay/ui/card/i$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "PayAddCardSecondPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/pay/ui/card/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Lcom/netease/epay/sdk/pay/model/IsSupportBindPay;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/card/i;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/card/i;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/card/i$1;->a:Lcom/netease/epay/sdk/pay/ui/card/i;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/IsSupportBindPay;)V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/i$1;->a:Lcom/netease/epay/sdk/pay/ui/card/i;

    iget-boolean v1, p2, Lcom/netease/epay/sdk/pay/model/IsSupportBindPay;->isSupport:Z

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/pay/ui/card/i;->a(Lcom/netease/epay/sdk/pay/ui/card/i;Z)Z

    .line 97
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/i$1;->a:Lcom/netease/epay/sdk/pay/ui/card/i;

    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/i$1;->a:Lcom/netease/epay/sdk/pay/ui/card/i;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/card/i;->a(Lcom/netease/epay/sdk/pay/ui/card/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "send_sign_pay_authcode.htm"

    :goto_0
    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/i$1;->a:Lcom/netease/epay/sdk/pay/ui/card/i;

    invoke-static {v2}, Lcom/netease/epay/sdk/pay/ui/card/i;->b(Lcom/netease/epay/sdk/pay/ui/card/i;)Lcom/netease/epay/sdk/NetCallback;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/netease/epay/sdk/pay/ui/card/i;->a(Ljava/lang/String;Lcom/netease/epay/sdk/NetCallback;)V

    .line 98
    return-void

    .line 97
    :cond_0
    const-string v0, "send_sign_authcode.htm"

    goto :goto_0
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 92
    check-cast p2, Lcom/netease/epay/sdk/pay/model/IsSupportBindPay;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/pay/ui/card/i$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/IsSupportBindPay;)V

    return-void
.end method
