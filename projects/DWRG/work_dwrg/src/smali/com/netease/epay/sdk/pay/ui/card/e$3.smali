.class Lcom/netease/epay/sdk/pay/ui/card/e$3;
.super Lcom/netease/epay/sdk/NetCallback;
.source "AddCardFirstPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/card/e;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Lcom/netease/epay/sdk/base/model/AddCardNumber;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/card/e;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/card/e;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/card/e$3;->a:Lcom/netease/epay/sdk/pay/ui/card/e;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/AddCardNumber;)V
    .locals 5

    .prologue
    .line 104
    const-string v0, "NOTSUPPORT"

    iget-object v1, p2, Lcom/netease/epay/sdk/base/model/AddCardNumber;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UNKNOW"

    iget-object v1, p2, Lcom/netease/epay/sdk/base/model/AddCardNumber;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/e$3;->a:Lcom/netease/epay/sdk/pay/ui/card/e;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/e;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/e$3;->a:Lcom/netease/epay/sdk/pay/ui/card/e;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/e;->b:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    const-string v1, "\u6682\u4e0d\u652f\u6301\u8be5\u94f6\u884c\u5361,\u8bf7\u66f4\u6362\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 108
    :cond_1
    const/4 v1, 0x0

    .line 109
    const/4 v0, 0x0

    .line 110
    iget-object v2, p2, Lcom/netease/epay/sdk/base/model/AddCardNumber;->bankId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 118
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/netease/epay/sdk/pay/ui/card/e$3;->a:Lcom/netease/epay/sdk/pay/ui/card/e;

    iget-object v3, p2, Lcom/netease/epay/sdk/base/model/AddCardNumber;->bankId:Ljava/lang/String;

    iget-object v4, p2, Lcom/netease/epay/sdk/base/model/AddCardNumber;->accountName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v1, v4}, Lcom/netease/epay/sdk/pay/ui/card/e;->a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_3
    const-string v2, "credit"

    iget-object v3, p2, Lcom/netease/epay/sdk/base/model/AddCardNumber;->cardType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/netease/epay/sdk/base/model/AddCardNumber;->bankName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u4fe1\u7528\u5361"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    const/4 v0, 0x1

    goto :goto_1

    .line 115
    :cond_4
    const-string v2, "debit"

    iget-object v3, p2, Lcom/netease/epay/sdk/base/model/AddCardNumber;->cardType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcom/netease/epay/sdk/base/model/AddCardNumber;->bankName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u50a8\u84c4\u5361"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public onResponseArrived()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/e$3;->a:Lcom/netease/epay/sdk/pay/ui/card/e;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/e;->a:Lcom/netease/epay/sdk/pay/ui/card/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/ui/card/a;->a(Z)V

    .line 100
    return-void
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 96
    check-cast p2, Lcom/netease/epay/sdk/base/model/AddCardNumber;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/pay/ui/card/e$3;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/AddCardNumber;)V

    return-void
.end method
