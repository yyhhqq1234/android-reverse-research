.class Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$5;
.super Lcom/netease/epay/sdk/NetCallback;
.source "CardBankDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->requestCheckIdentityInfo(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

.field final synthetic val$certNo:Ljava/lang/String;

.field final synthetic val$trueName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    iput-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$5;->val$certNo:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$5;->val$trueName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnhandledFail(Landroidx/fragment/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 2

    .line 1
    iget-object v0, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    const-string v1, "050023"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    iget-object p2, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->showSecurityDialog(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/netease/epay/sdk/NetCallback;->onUnhandledFail(Landroidx/fragment/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V

    .line 8
    iget-object p1, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    const-string v0, "069124"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    invoke-virtual {p1, p2}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->dealError(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V

    :cond_1
    return-void
.end method

.method public parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/netease/epay/sdk/base/error/ErrorConstant;->alertErrorList:Ljava/util/List;

    iget-object v1, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    iget-object v1, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    iget-object p1, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->showErrorAlert(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 6
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "result"

    const-string v2, "FAILED"

    .line 7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "errorSource"

    const-string v2, "after"

    .line 8
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    const-string v2, "errorCode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p1, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    const-string v2, "errorMsg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, p0, Lcom/netease/epay/sdk/NetCallback;->clientRequestId:Ljava/lang/String;

    const-string v2, "frid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    const-string v2, "cardTypeSelect"

    const-string v3, "nextButton"

    const-string v4, "callResult"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 14
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/NetCallback;->parseFailureBySelf(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)Z

    move-result p1

    return p1
.end method

.method public success(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 3

    .line 1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "result"

    const-string v0, "SUCCESS"

    .line 2
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p2, p0, Lcom/netease/epay/sdk/NetCallback;->clientRequestId:Ljava/lang/String;

    const-string v0, "frid"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    const-string v0, "cardTypeSelect"

    const-string v1, "nextButton"

    const-string v2, "callResult"

    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 8
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    iget-object p1, p1, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->presenter:Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;

    if-eqz p1, :cond_0

    .line 9
    iget-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$5;->val$certNo:Ljava/lang/String;

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$5;->val$trueName:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;->initRealNameInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    invoke-static {p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->access$300(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)V

    return-void
.end method
