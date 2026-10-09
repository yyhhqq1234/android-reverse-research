.class Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1;
.super Ljava/lang/Object;
.source "RecommendBankListFragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->initCardsView(Landroid/view/LayoutInflater;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;

.field final synthetic val$adapter:Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;

    iput-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1;->val$adapter:Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;

    const-string v1, "recommendCard"

    const-string v2, "recommendAddCard"

    const-string v3, "click"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->jumpToReSignCardPage(Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)V

    return-void
.end method

.method public onItemDelete(Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;

    const-string v1, "recommendCard"

    const-string v2, "recommendDeleteCard"

    const-string v3, "click"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 4
    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1$1;

    invoke-direct {v0, p0, p1}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1$1;-><init>(Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1;Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)V

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;->getInstance(Lcom/netease/epay/sdk/base/simpleimpl/TwoBtnFragCallback;)Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;

    move-result-object p1

    .line 35
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentWithHide(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroidx/fragment/app/FragmentActivity;Z)V

    .line 36
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;

    const-string v0, "cancelRecommendPop"

    const-string v1, "enter"

    invoke-virtual {p1, v0, v4, v1, v4}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
