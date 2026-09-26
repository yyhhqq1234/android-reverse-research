.class Lcom/netease/epay/sdk/card/c/e$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "OnlyAddCard3SmsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/card/c/e;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Lcom/netease/epay/sdk/base/model/SignCardData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/card/c/e;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/card/c/e;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/netease/epay/sdk/card/c/e$1;->a:Lcom/netease/epay/sdk/card/c/e;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/SignCardData;)V
    .locals 3

    .prologue
    .line 76
    new-instance v0, Lcom/netease/epay/sdk/base/event/EACSuccessEvent;

    iget-object v1, p2, Lcom/netease/epay/sdk/base/model/SignCardData;->cardInfo:Lcom/netease/epay/sdk/base/model/Card;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/model/Card;->getBankQuickPayId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/epay/sdk/base/event/EACSuccessEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/EventBusUtil;->post(Ljava/lang/Object;)V

    .line 77
    new-instance v0, Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    const-string v1, "000000"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/epay/sdk/base/network/NewBaseResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iput-object p2, v0, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->result:Ljava/lang/Object;

    .line 79
    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/e$1;->a:Lcom/netease/epay/sdk/card/c/e;

    invoke-static {v1}, Lcom/netease/epay/sdk/card/c/e;->a(Lcom/netease/epay/sdk/card/c/e;)Lcom/netease/epay/sdk/card/c/c;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/netease/epay/sdk/card/c/c;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z

    .line 80
    return-void
.end method

.method public parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
    .locals 2
    .param p1, "response"    # Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    .prologue
    .line 85
    sget-object v0, Lcom/netease/epay/sdk/base/util/ErrorCode;->alertErrorList:Ljava/util/List;

    iget-object v1, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->getInstance(Ljava/lang/String;)Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/card/c/e$1;->a:Lcom/netease/epay/sdk/card/c/e;

    iget-object v1, v1, Lcom/netease/epay/sdk/card/c/e;->k:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    .line 87
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/e$1;->a:Lcom/netease/epay/sdk/card/c/e;

    iget-object v0, v0, Lcom/netease/epay/sdk/card/c/e;->l:Lcom/netease/epay/sdk/card/ui/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/card/ui/c;->a()V

    .line 92
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/e$1;->a:Lcom/netease/epay/sdk/card/c/e;

    iget-object v0, v0, Lcom/netease/epay/sdk/card/c/e;->k:Lcom/netease/epay/sdk/base/ui/SdkActivity;

    iget-object v1, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/netease/epay/sdk/card/c/e$1;->a:Lcom/netease/epay/sdk/card/c/e;

    iget-object v0, v0, Lcom/netease/epay/sdk/card/c/e;->l:Lcom/netease/epay/sdk/card/ui/c;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/card/ui/c;->a()V

    goto :goto_0
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 73
    check-cast p2, Lcom/netease/epay/sdk/base/model/SignCardData;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/card/c/e$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/model/SignCardData;)V

    return-void
.end method
