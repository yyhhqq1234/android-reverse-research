.class Lcom/netease/epay/sdk/card/c/b$2;
.super Lcom/netease/epay/sdk/NetCallback;
.source "AddCardFirstPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/card/c/b;->a()V
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
.field final synthetic a:Lcom/netease/epay/sdk/card/c/b;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/card/c/b;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/netease/epay/sdk/card/c/b$2;->a:Lcom/netease/epay/sdk/card/c/b;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/QueryBankInfo;)V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p2, Lcom/netease/epay/sdk/base/model/QueryBankInfo;->supportBanks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->getSupportBanks(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/b$2;->a:Lcom/netease/epay/sdk/card/c/b;

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/card/c/b;->a(Lcom/netease/epay/sdk/card/c/b;Ljava/util/ArrayList;)V

    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/b$2;->a:Lcom/netease/epay/sdk/card/c/b;

    invoke-virtual {p2}, Lcom/netease/epay/sdk/base/model/QueryBankInfo;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/netease/epay/sdk/card/c/b;->c:Ljava/lang/String;

    .line 78
    :cond_0
    iget-boolean v1, p2, Lcom/netease/epay/sdk/base/model/QueryBankInfo;->ifShow:Z

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/b$2;->a:Lcom/netease/epay/sdk/card/c/b;

    iget-object v1, v1, Lcom/netease/epay/sdk/card/c/b;->a:Lcom/netease/epay/sdk/card/ui/a;

    invoke-virtual {p2}, Lcom/netease/epay/sdk/base/model/QueryBankInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/netease/epay/sdk/card/ui/a;->a(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 81
    :cond_1
    return-void
.end method

.method public onResponseArrived()V
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/netease/epay/sdk/NetCallback;->onResponseArrived()V

    .line 86
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/b$2;->a:Lcom/netease/epay/sdk/card/c/b;

    iget-object v0, v0, Lcom/netease/epay/sdk/card/c/b;->a:Lcom/netease/epay/sdk/card/ui/a;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/card/ui/a;->a()V

    .line 87
    return-void
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 69
    check-cast p2, Lcom/netease/epay/sdk/base/model/QueryBankInfo;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/card/c/b$2;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/QueryBankInfo;)V

    return-void
.end method
