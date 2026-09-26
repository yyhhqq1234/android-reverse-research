.class Lcom/netease/epay/sdk/pay/ui/card/h$3;
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
        "Lcom/netease/epay/sdk/base/model/AddCardInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/card/h;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/card/h;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/card/h$3;->a:Lcom/netease/epay/sdk/pay/ui/card/h;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/AddCardInfo;)V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p2, Lcom/netease/epay/sdk/base/model/AddCardInfo;->quickPayId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h$3;->a:Lcom/netease/epay/sdk/pay/ui/card/h;

    iget-object v1, p2, Lcom/netease/epay/sdk/base/model/AddCardInfo;->quickPayId:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/epay/sdk/pay/ui/card/h;->d:Ljava/lang/String;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h$3;->a:Lcom/netease/epay/sdk/pay/ui/card/h;

    iget-object v1, p2, Lcom/netease/epay/sdk/base/model/AddCardInfo;->attach:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/epay/sdk/pay/ui/card/h;->f:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h$3;->a:Lcom/netease/epay/sdk/pay/ui/card/h;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/h;->n:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7ed1\u5b9a\u94f6\u884c\u5361\u9700\u8981\u77ed\u4fe1\u786e\u8ba4\n\u9a8c\u8bc1\u7801\u5df2\u53d1\u9001\u81f3\u624b\u673a\u53f7\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/h$3;->a:Lcom/netease/epay/sdk/pay/ui/card/h;

    iget-object v2, v2, Lcom/netease/epay/sdk/pay/ui/card/h;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->formatPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    return-void
.end method

.method public parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
    .locals 2
    .param p1, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h$3;->a:Lcom/netease/epay/sdk/pay/ui/card/h;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/h;->n:Landroid/widget/TextView;

    const-string v1, "\u7ed1\u5b9a\u94f6\u884c\u5361\u9700\u8981\u77ed\u4fe1\u786e\u8ba4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h$3;->a:Lcom/netease/epay/sdk/pay/ui/card/h;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/h;->k:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    iget-object v1, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/h$3;->a:Lcom/netease/epay/sdk/pay/ui/card/h;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/h;->m:Lcom/netease/epay/sdk/base/view/SendSmsButton;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/SendSmsButton;->resetColdTime()V

    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 147
    check-cast p2, Lcom/netease/epay/sdk/base/model/AddCardInfo;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/pay/ui/card/h$3;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/AddCardInfo;)V

    return-void
.end method
