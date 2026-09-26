.class Lcom/netease/epay/sdk/pay/c/e$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "EpayPaySmsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/pay/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Lcom/netease/epay/sdk/base/model/SmsCode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/c/e;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/c/e;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/c/e$1;->a:Lcom/netease/epay/sdk/pay/c/e;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/SmsCode;)V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/c/e$1;->a:Lcom/netease/epay/sdk/pay/c/e;

    iget-object v1, p2, Lcom/netease/epay/sdk/base/model/SmsCode;->chargeId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/pay/c/e;->a(Lcom/netease/epay/sdk/pay/c/e;Ljava/lang/String;)Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/c/e$1;->a:Lcom/netease/epay/sdk/pay/c/e;

    iget-object v1, p2, Lcom/netease/epay/sdk/base/model/SmsCode;->attach:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/pay/c/e;->b(Lcom/netease/epay/sdk/pay/c/e;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/c/e$1;->a:Lcom/netease/epay/sdk/pay/c/e;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/c/e;->b(Lcom/netease/epay/sdk/pay/c/e;)Lcom/netease/epay/sdk/pay/ui/p;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5df2\u53d1\u9001\u81f3:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/epay/sdk/pay/c/e$1;->a:Lcom/netease/epay/sdk/pay/c/e;

    invoke-static {v3}, Lcom/netease/epay/sdk/pay/c/e;->a(Lcom/netease/epay/sdk/pay/c/e;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netease/epay/sdk/pay/ui/p;->a(ZLjava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method public parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
    .locals 3
    .param p1, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/c/e$1;->a:Lcom/netease/epay/sdk/pay/c/e;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/c/e;->b(Lcom/netease/epay/sdk/pay/c/e;)Lcom/netease/epay/sdk/pay/ui/p;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "\u8bf7\u5148\u83b7\u53d6\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1, v2}, Lcom/netease/epay/sdk/pay/ui/p;->a(ZLjava/lang/CharSequence;)V

    .line 90
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/c/e$1;->a:Lcom/netease/epay/sdk/pay/c/e;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/c/e;->b(Lcom/netease/epay/sdk/pay/c/e;)Lcom/netease/epay/sdk/pay/ui/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 79
    check-cast p2, Lcom/netease/epay/sdk/base/model/SmsCode;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/pay/c/e$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/SmsCode;)V

    return-void
.end method
