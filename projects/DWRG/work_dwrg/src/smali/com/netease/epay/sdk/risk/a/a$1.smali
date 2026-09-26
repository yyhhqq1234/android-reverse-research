.class Lcom/netease/epay/sdk/risk/a/a$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "EpayRiskSmsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/risk/a/a;
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
.field final synthetic a:Lcom/netease/epay/sdk/risk/a/a;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/risk/a/a;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/netease/epay/sdk/risk/a/a$1;->a:Lcom/netease/epay/sdk/risk/a/a;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/SmsCode;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 58
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/a/a$1;->a:Lcom/netease/epay/sdk/risk/a/a;

    invoke-static {v0}, Lcom/netease/epay/sdk/risk/a/a;->a(Lcom/netease/epay/sdk/risk/a/a;)Lcom/netease/epay/sdk/risk/ui/e;

    move-result-object v0

    const-string v1, "\u77ed\u4fe1\u9a8c\u8bc1\u7801"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u9a8c\u8bc1\u7801\u5df2\u53d1\u9001\u81f3\u624b\u673a\u53f7:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/epay/sdk/risk/a/a$1;->a:Lcom/netease/epay/sdk/risk/a/a;

    iget-object v3, v3, Lcom/netease/epay/sdk/risk/a/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/netease/epay/sdk/risk/ui/e;->a(Ljava/lang/String;Ljava/lang/CharSequence;ZZ)V

    .line 59
    return-void
.end method

.method public parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
    .locals 5
    .param p1, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    const/4 v4, 0x0

    .line 63
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/a/a$1;->a:Lcom/netease/epay/sdk/risk/a/a;

    invoke-static {v0}, Lcom/netease/epay/sdk/risk/a/a;->a(Lcom/netease/epay/sdk/risk/a/a;)Lcom/netease/epay/sdk/risk/ui/e;

    move-result-object v0

    const-string v1, "\u77ed\u4fe1\u9a8c\u8bc1\u7801"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u77ed\u4fe1\u9a8c\u8bc1\u7801\u5c06\u53d1\u81f3:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/epay/sdk/risk/a/a$1;->a:Lcom/netease/epay/sdk/risk/a/a;

    iget-object v3, v3, Lcom/netease/epay/sdk/risk/a/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4, v4}, Lcom/netease/epay/sdk/risk/ui/e;->a(Ljava/lang/String;Ljava/lang/CharSequence;ZZ)V

    .line 64
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/a/a$1;->a:Lcom/netease/epay/sdk/risk/a/a;

    invoke-static {v0}, Lcom/netease/epay/sdk/risk/a/a;->a(Lcom/netease/epay/sdk/risk/a/a;)Lcom/netease/epay/sdk/risk/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/risk/ui/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 55
    check-cast p2, Lcom/netease/epay/sdk/base/model/SmsCode;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/risk/a/a$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/SmsCode;)V

    return-void
.end method
