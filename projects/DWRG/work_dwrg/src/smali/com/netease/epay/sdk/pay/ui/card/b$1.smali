.class Lcom/netease/epay/sdk/pay/ui/card/b$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "AddCard2Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/card/b;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Lcom/netease/epay/sdk/base/model/BankPayGateInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/card/b;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/card/b;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/card/b$1;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/BankPayGateInfo;)V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b$1;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    iget-object v1, p2, Lcom/netease/epay/sdk/base/model/BankPayGateInfo;->payGateInfo:Lcom/netease/epay/sdk/base/model/PayGateInfo;

    iget-boolean v1, v1, Lcom/netease/epay/sdk/base/model/PayGateInfo;->isNeedCvv2:Z

    iput-boolean v1, v0, Lcom/netease/epay/sdk/pay/ui/card/b;->e:Z

    .line 98
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b$1;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/card/b;->a(Lcom/netease/epay/sdk/pay/ui/card/b;)Lcom/netease/epay/sdk/base/view/AgreementTextView;

    move-result-object v0

    iget-object v1, p2, Lcom/netease/epay/sdk/base/model/BankPayGateInfo;->signAgreementInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/AgreementTextView;->setAgreementList(Ljava/util/ArrayList;)V

    .line 99
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b$1;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/card/b;->b(Lcom/netease/epay/sdk/pay/ui/card/b;)Lcom/netease/epay/sdk/pay/ui/card/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b$1;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/card/b;->b(Lcom/netease/epay/sdk/pay/ui/card/b;)Lcom/netease/epay/sdk/pay/ui/card/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/card/i;->a()V

    .line 102
    :cond_0
    return-void
.end method

.method public parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
    .locals 2
    .param p1, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    const/4 v1, 0x1

    .line 106
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b$1;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    iput-boolean v1, v0, Lcom/netease/epay/sdk/pay/ui/card/b;->e:Z

    .line 107
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b$1;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/card/b;->b(Lcom/netease/epay/sdk/pay/ui/card/b;)Lcom/netease/epay/sdk/pay/ui/card/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b$1;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/card/b;->b(Lcom/netease/epay/sdk/pay/ui/card/b;)Lcom/netease/epay/sdk/pay/ui/card/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/card/i;->a()V

    .line 110
    :cond_0
    return v1
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 94
    check-cast p2, Lcom/netease/epay/sdk/base/model/BankPayGateInfo;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/pay/ui/card/b$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/BankPayGateInfo;)V

    return-void
.end method
