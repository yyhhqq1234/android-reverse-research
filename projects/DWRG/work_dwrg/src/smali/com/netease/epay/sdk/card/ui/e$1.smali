.class Lcom/netease/epay/sdk/card/ui/e$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "ForgetPwdValidateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/card/ui/e;->a()V
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
.field final synthetic a:Lcom/netease/epay/sdk/card/ui/e;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/card/ui/e;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/netease/epay/sdk/card/ui/e$1;->a:Lcom/netease/epay/sdk/card/ui/e;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/BankPayGateInfo;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e$1;->a:Lcom/netease/epay/sdk/card/ui/e;

    iget-object v1, p2, Lcom/netease/epay/sdk/base/model/BankPayGateInfo;->payGateInfo:Lcom/netease/epay/sdk/base/model/PayGateInfo;

    iget-boolean v1, v1, Lcom/netease/epay/sdk/base/model/PayGateInfo;->isNeedCvv2:Z

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/card/ui/e;->a(Lcom/netease/epay/sdk/card/ui/e;Z)Z

    .line 109
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e$1;->a:Lcom/netease/epay/sdk/card/ui/e;

    invoke-static {v0}, Lcom/netease/epay/sdk/card/ui/e;->a(Lcom/netease/epay/sdk/card/ui/e;)Lcom/netease/epay/sdk/base/view/AgreementTextView;

    move-result-object v0

    iget-object v1, p2, Lcom/netease/epay/sdk/base/model/BankPayGateInfo;->signAgreementInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/AgreementTextView;->setAgreementList(Ljava/util/ArrayList;)V

    .line 110
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e$1;->a:Lcom/netease/epay/sdk/card/ui/e;

    invoke-static {v0}, Lcom/netease/epay/sdk/card/ui/e;->b(Lcom/netease/epay/sdk/card/ui/e;)V

    .line 111
    return-void
.end method

.method public parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
    .locals 2
    .param p1, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    const/4 v1, 0x1

    .line 115
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e$1;->a:Lcom/netease/epay/sdk/card/ui/e;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/card/ui/e;->a(Lcom/netease/epay/sdk/card/ui/e;Z)Z

    .line 116
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e$1;->a:Lcom/netease/epay/sdk/card/ui/e;

    invoke-static {v0}, Lcom/netease/epay/sdk/card/ui/e;->b(Lcom/netease/epay/sdk/card/ui/e;)V

    .line 117
    return v1
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 105
    check-cast p2, Lcom/netease/epay/sdk/base/model/BankPayGateInfo;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/card/ui/e$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/BankPayGateInfo;)V

    return-void
.end method
