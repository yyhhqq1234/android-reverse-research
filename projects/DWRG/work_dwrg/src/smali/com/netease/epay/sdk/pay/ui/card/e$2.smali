.class Lcom/netease/epay/sdk/pay/ui/card/e$2;
.super Lcom/netease/epay/sdk/NetCallback;
.source "AddCardFirstPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/card/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Lcom/netease/epay/sdk/base/model/QueryBankInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/card/e;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/card/e;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/card/e$2;->a:Lcom/netease/epay/sdk/pay/ui/card/e;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/QueryBankInfo;)V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p2, Lcom/netease/epay/sdk/base/model/QueryBankInfo;->supportBanks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->getSupportBanks(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/e$2;->a:Lcom/netease/epay/sdk/pay/ui/card/e;

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/pay/ui/card/e;->a(Lcom/netease/epay/sdk/pay/ui/card/e;Ljava/util/ArrayList;)V

    .line 69
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/e$2;->a:Lcom/netease/epay/sdk/pay/ui/card/e;

    invoke-virtual {p2}, Lcom/netease/epay/sdk/base/model/QueryBankInfo;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netease/epay/sdk/pay/ui/card/e;->c:Ljava/lang/String;

    .line 72
    :cond_0
    iget-boolean v1, p2, Lcom/netease/epay/sdk/base/model/QueryBankInfo;->ifShow:Z

    if-eqz v1, :cond_1

    .line 73
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/card/e$2;->a:Lcom/netease/epay/sdk/pay/ui/card/e;

    iget-object v1, v1, Lcom/netease/epay/sdk/pay/ui/card/e;->a:Lcom/netease/epay/sdk/pay/ui/card/a;

    invoke-virtual {p2}, Lcom/netease/epay/sdk/base/model/QueryBankInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/netease/epay/sdk/pay/ui/card/a;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 75
    :cond_1
    iget-object v0, p2, Lcom/netease/epay/sdk/base/model/QueryBankInfo;->toastMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/e$2;->a:Lcom/netease/epay/sdk/pay/ui/card/e;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/e;->a:Lcom/netease/epay/sdk/pay/ui/card/a;

    iget-object v1, p2, Lcom/netease/epay/sdk/base/model/QueryBankInfo;->toastMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/pay/ui/card/a;->a(Ljava/lang/String;)V

    .line 78
    :cond_2
    return-void
.end method

.method public onResponseArrived()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/netease/epay/sdk/NetCallback;->onResponseArrived()V

    .line 83
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/e$2;->a:Lcom/netease/epay/sdk/pay/ui/card/e;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/e;->a:Lcom/netease/epay/sdk/pay/ui/card/a;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/e$2;->a:Lcom/netease/epay/sdk/pay/ui/card/e;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/ui/card/e;->a:Lcom/netease/epay/sdk/pay/ui/card/a;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/card/a;->b()V

    .line 86
    :cond_0
    return-void
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 64
    check-cast p2, Lcom/netease/epay/sdk/base/model/QueryBankInfo;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/pay/ui/card/e$2;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/QueryBankInfo;)V

    return-void
.end method
