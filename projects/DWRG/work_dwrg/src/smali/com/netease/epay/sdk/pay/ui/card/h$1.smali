.class Lcom/netease/epay/sdk/pay/ui/card/h$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "OnlyAddCard3SmsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/pay/ui/card/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Lcom/netease/epay/sdk/base/model/SignCardData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/card/h;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/card/h;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/card/h$1;->a:Lcom/netease/epay/sdk/pay/ui/card/h;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/SignCardData;)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h$1;->a:Lcom/netease/epay/sdk/pay/ui/card/h;

    invoke-static {v0, p2}, Lcom/netease/epay/sdk/pay/ui/card/h;->a(Lcom/netease/epay/sdk/pay/ui/card/h;Lcom/netease/epay/sdk/base/model/SignCardData;)Lcom/netease/epay/sdk/base/model/SignCardData;

    .line 85
    new-instance v0, Lcom/netease/epay/sdk/base/event/EACSuccessEvent;

    iget-object v1, p2, Lcom/netease/epay/sdk/base/model/SignCardData;->cardInfo:Lcom/netease/epay/sdk/base/model/Card;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/model/Card;->getBankQuickPayId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/epay/sdk/base/event/EACSuccessEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/EventBusUtil;->post(Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h$1;->a:Lcom/netease/epay/sdk/pay/ui/card/h;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/card/h;->b(Lcom/netease/epay/sdk/pay/ui/card/h;)Lcom/netease/epay/sdk/pay/ui/card/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/h$1;->a:Lcom/netease/epay/sdk/pay/ui/card/h;

    invoke-static {v1}, Lcom/netease/epay/sdk/pay/ui/card/h;->a(Lcom/netease/epay/sdk/pay/ui/card/h;)Lcom/netease/epay/sdk/NetCallback;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/netease/epay/sdk/pay/ui/card/f;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/NetCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h$1;->a:Lcom/netease/epay/sdk/pay/ui/card/h;

    invoke-static {v0, p2}, Lcom/netease/epay/sdk/pay/ui/card/h;->b(Lcom/netease/epay/sdk/pay/ui/card/h;Lcom/netease/epay/sdk/base/model/SignCardData;)V

    goto :goto_0
.end method

.method public onResponseArrived()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h$1;->a:Lcom/netease/epay/sdk/pay/ui/card/h;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/h;->l:Lcom/netease/epay/sdk/pay/ui/card/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/card/c;->a()V

    .line 80
    return-void
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 75
    check-cast p2, Lcom/netease/epay/sdk/base/model/SignCardData;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/pay/ui/card/h$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/SignCardData;)V

    return-void
.end method
