.class Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$4;
.super Lcom/netease/epay/sdk/NetCallback;
.source "RecommendBankListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->deleteRecommendCard(Lcom/netease/epay/sdk/base_card/model/SupportAddBank;Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback<",
        "Lcom/netease/epay/sdk/base_card/model/QueryBankInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;

.field final synthetic val$adapter:Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;

.field final synthetic val$bank:Lcom/netease/epay/sdk/base_card/model/SupportAddBank;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;Lcom/netease/epay/sdk/base_card/model/SupportAddBank;Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;

    iput-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$4;->val$bank:Lcom/netease/epay/sdk/base_card/model/SupportAddBank;

    iput-object p3, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$4;->val$adapter:Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnhandledFail(Landroidx/fragment/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/netease/epay/sdk/NetCallback;->onUnhandledFail(Landroidx/fragment/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V

    .line 2
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "result"

    const-string v1, "FAILED"

    .line 3
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "errorSource"

    const-string v1, "after"

    .line 4
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retcode:Ljava/lang/String;

    const-string v1, "errorCode"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p2, p2, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    const-string v0, "errorMsg"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p2, p0, Lcom/netease/epay/sdk/NetCallback;->clientRequestId:Ljava/lang/String;

    const-string v0, "frid"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;

    const-string v0, "recommendCard"

    const-string v1, "recommendDeleteCard"

    const-string v2, "callResult"

    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public success(Landroidx/fragment/app/FragmentActivity;Lcom/netease/epay/sdk/base_card/model/QueryBankInfo;)V
    .locals 3

    .line 2
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;

    iget-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$4;->val$bank:Lcom/netease/epay/sdk/base_card/model/SupportAddBank;

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$4;->val$adapter:Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;

    invoke-static {p1, p2, v0}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->access$300(Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;Lcom/netease/epay/sdk/base_card/model/SupportAddBank;Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;)V

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "result"

    const-string v0, "SUCCESS"

    .line 5
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p2, p0, Lcom/netease/epay/sdk/NetCallback;->clientRequestId:Ljava/lang/String;

    const-string v0, "frid"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;

    const-string v0, "recommendCard"

    const-string v1, "recommendDeleteCard"

    const-string v2, "callResult"

    invoke-virtual {p2, v0, v1, v2, p1}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic success(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/netease/epay/sdk/base_card/model/QueryBankInfo;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$4;->success(Landroidx/fragment/app/FragmentActivity;Lcom/netease/epay/sdk/base_card/model/QueryBankInfo;)V

    return-void
.end method
