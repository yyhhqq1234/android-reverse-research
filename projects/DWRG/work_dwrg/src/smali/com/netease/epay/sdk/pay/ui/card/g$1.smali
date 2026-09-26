.class Lcom/netease/epay/sdk/pay/ui/card/g$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "AddCardPay3SmsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/pay/ui/card/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Lcom/netease/epay/sdk/base/model/AddCardInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/card/g;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/card/g;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/card/g$1;->a:Lcom/netease/epay/sdk/pay/ui/card/g;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/AddCardInfo;)V
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/g$1;->a:Lcom/netease/epay/sdk/pay/ui/card/g;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/g;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/g$1;->a:Lcom/netease/epay/sdk/pay/ui/card/g;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/g;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/g$1;->a:Lcom/netease/epay/sdk/pay/ui/card/g;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/g;->n:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ed1\u5b9a\u94f6\u884c\u5361\u9700\u8981\u77ed\u4fe1\u786e\u8ba4\n\u9a8c\u8bc1\u7801\u5df2\u53d1\u9001\u81f3\u624b\u673a\u53f7\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/g$1;->a:Lcom/netease/epay/sdk/pay/ui/card/g;

    iget-object v2, v2, Lcom/netease/epay/sdk/pay/ui/card/g;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/g$1;->a:Lcom/netease/epay/sdk/pay/ui/card/g;

    iget-object v1, p2, Lcom/netease/epay/sdk/base/model/AddCardInfo;->quickPayId:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/epay/sdk/pay/ui/card/g;->d:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/g$1;->a:Lcom/netease/epay/sdk/pay/ui/card/g;

    iget-object v1, p2, Lcom/netease/epay/sdk/base/model/AddCardInfo;->chargeId:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/epay/sdk/pay/ui/card/g;->e:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/g$1;->a:Lcom/netease/epay/sdk/pay/ui/card/g;

    iget-object v1, p2, Lcom/netease/epay/sdk/base/model/AddCardInfo;->attach:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/epay/sdk/pay/ui/card/g;->f:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public onUnhandledFail(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 2
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/g$1;->a:Lcom/netease/epay/sdk/pay/ui/card/g;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/g;->n:Landroid/widget/TextView;

    const-string v1, "\u7ed1\u5b9a\u94f6\u884c\u5361\u9700\u8981\u77ed\u4fe1\u786e\u8ba4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/g$1;->a:Lcom/netease/epay/sdk/pay/ui/card/g;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/g;->m:Lcom/netease/epay/sdk/base/view/SendSmsButton;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->resetColdTime()V

    .line 139
    return-void
.end method

.method public parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
    .locals 2
    .param p1, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 131
    new-instance v0, Lcom/netease/epay/sdk/pay/a/a;

    invoke-direct {v0}, Lcom/netease/epay/sdk/pay/a/a;-><init>()V

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/g$1;->a:Lcom/netease/epay/sdk/pay/ui/card/g;

    iget-object v1, v1, Lcom/netease/epay/sdk/pay/ui/card/g;->k:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    invoke-virtual {v0, p1, v1}, Lcom/netease/epay/sdk/pay/a/a;->a(Lcom/netease/epay/sdk/base/network/NewBaseResponse;Landroid/support/v4/app/FragmentActivity;)Z

    move-result v0

    return v0
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 117
    check-cast p2, Lcom/netease/epay/sdk/base/model/AddCardInfo;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/pay/ui/card/g$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/AddCardInfo;)V

    return-void
.end method
