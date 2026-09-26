.class Lcom/netease/epay/sdk/pay/ui/card/g$2;
.super Lcom/netease/epay/sdk/pay/b;
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
        "Lcom/netease/epay/sdk/pay/b",
        "<",
        "Lcom/netease/epay/sdk/pay/model/PayingResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/netease/epay/sdk/pay/ui/card/g;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/card/g;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/card/g$2;->b:Lcom/netease/epay/sdk/pay/ui/card/g;

    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/PayingResponse;)V
    .locals 2

    .prologue
    .line 146
    new-instance v0, Lcom/netease/epay/sdk/base/event/EACSuccessEvent;

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/g$2;->b:Lcom/netease/epay/sdk/pay/ui/card/g;

    iget-object v1, v1, Lcom/netease/epay/sdk/pay/ui/card/g;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/netease/epay/sdk/base/event/EACSuccessEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/EventBusUtil;->post(Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/g$2;->b:Lcom/netease/epay/sdk/pay/ui/card/g;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/card/g;->b(Lcom/netease/epay/sdk/pay/ui/card/g;)Lcom/netease/epay/sdk/pay/ui/card/f;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/g$2;->b:Lcom/netease/epay/sdk/pay/ui/card/g;

    invoke-static {v1}, Lcom/netease/epay/sdk/pay/ui/card/g;->a(Lcom/netease/epay/sdk/pay/ui/card/g;)Lcom/netease/epay/sdk/NetCallback;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/netease/epay/sdk/pay/ui/card/f;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/NetCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    sput-object p2, Lcom/netease/epay/sdk/pay/b;->a:Lcom/netease/epay/sdk/pay/model/PayingResponse;

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netease/epay/sdk/pay/b;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/PayingResponse;)V

    goto :goto_0
.end method

.method public onUnhandledFail(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 3
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 162
    const-string v0, "024072"

    iget-object v1, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->result:Ljava/lang/Object;

    instance-of v0, v0, Lcom/netease/epay/sdk/pay/model/PayingResponse;

    if-eqz v0, :cond_0

    .line 164
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 165
    const-string v2, "amount"

    iget-object v0, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->result:Ljava/lang/Object;

    check-cast v0, Lcom/netease/epay/sdk/pay/model/PayingResponse;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/PayingResponse;->orderAmount:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v2, "bank"

    iget-object v0, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->result:Ljava/lang/Object;

    check-cast v0, Lcom/netease/epay/sdk/pay/model/PayingResponse;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/PayingResponse;->refundPageInfo:Lcom/netease/epay/sdk/pay/model/RefundPageInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/RefundPageInfo;->bankName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v2, "cardNo"

    iget-object v0, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->result:Ljava/lang/Object;

    check-cast v0, Lcom/netease/epay/sdk/pay/model/PayingResponse;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/PayingResponse;->refundPageInfo:Lcom/netease/epay/sdk/pay/model/RefundPageInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/RefundPageInfo;->cardNo:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v2, "time"

    iget-object v0, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->result:Ljava/lang/Object;

    check-cast v0, Lcom/netease/epay/sdk/pay/model/PayingResponse;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/PayingResponse;->refundPageInfo:Lcom/netease/epay/sdk/pay/model/RefundPageInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/model/RefundPageInfo;->refundSec:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v0, "msg"

    iget-object v2, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {v1}, Lcom/netease/epay/sdk/pay/ui/j;->a(Landroid/os/Bundle;)Lcom/netease/epay/sdk/pay/ui/j;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/g$2;->b:Lcom/netease/epay/sdk/pay/ui/card/g;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/g;->l:Lcom/netease/epay/sdk/pay/ui/card/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/g$2;->b:Lcom/netease/epay/sdk/pay/ui/card/g;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/g;->l:Lcom/netease/epay/sdk/pay/ui/card/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/card/c;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/g$2;->b:Lcom/netease/epay/sdk/pay/ui/card/g;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/g;->l:Lcom/netease/epay/sdk/pay/ui/card/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/card/c;->a()V

    .line 177
    :cond_2
    iget-object v0, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    iget-object v1, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->getInstance(Ljava/lang/String;Ljava/lang/String;Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;)Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    goto :goto_0
.end method

.method public parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
    .locals 2
    .param p1, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 157
    new-instance v0, Lcom/netease/epay/sdk/pay/a/a;

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/g$2;->b:Lcom/netease/epay/sdk/pay/ui/card/g;

    iget-object v1, v1, Lcom/netease/epay/sdk/pay/ui/card/g;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/netease/epay/sdk/pay/a/a;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/g$2;->b:Lcom/netease/epay/sdk/pay/ui/card/g;

    iget-object v1, v1, Lcom/netease/epay/sdk/pay/ui/card/g;->k:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    invoke-virtual {v0, p1, v1}, Lcom/netease/epay/sdk/pay/a/a;->a(Lcom/netease/epay/sdk/base/network/NewBaseResponse;Landroid/support/v4/app/FragmentActivity;)Z

    move-result v0

    return v0
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 142
    check-cast p2, Lcom/netease/epay/sdk/pay/model/PayingResponse;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/pay/ui/card/g$2;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/pay/model/PayingResponse;)V

    return-void
.end method
