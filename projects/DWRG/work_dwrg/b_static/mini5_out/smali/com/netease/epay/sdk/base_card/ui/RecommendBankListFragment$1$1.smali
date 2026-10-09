.class Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1$1;
.super Lcom/netease/epay/sdk/base/simpleimpl/TwoBtnFragCallback;
.source "RecommendBankListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1;->onItemDelete(Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1;

.field final synthetic val$bank:Lcom/netease/epay/sdk/base_card/model/SupportAddBank;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1;Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1$1;->this$1:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1;

    iput-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1$1;->val$bank:Lcom/netease/epay/sdk/base_card/model/SupportAddBank;

    invoke-direct {p0}, Lcom/netease/epay/sdk/base/simpleimpl/TwoBtnFragCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeft()Ljava/lang/String;
    .locals 1

    const-string v0, "\u53d6\u6d88"

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    const-string v0, "\u786e\u5b9a\u4e0d\u518d\u63a8\u8350\u6dfb\u52a0\u8be5\u94f6\u884c\u5361\uff1f"

    return-object v0
.end method

.method public getRight()Ljava/lang/String;
    .locals 1

    const-string v0, "\u786e\u8ba4"

    return-object v0
.end method

.method public leftClick()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/netease/epay/sdk/base/simpleimpl/TwoBtnFragCallback;->leftClick()V

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1$1;->this$1:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1;

    iget-object v0, v0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;

    const-string v1, "cancelRecommendPop"

    const-string v2, "quitButton"

    const-string v3, "click"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public rightClick()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1$1;->this$1:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1;

    iget-object v0, v0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;

    const-string v1, "cancelRecommendPop"

    const-string v2, "continueButton"

    const-string v3, "click"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1$1;->this$1:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1;

    iget-object v1, v0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;

    iget-object v2, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1$1;->val$bank:Lcom/netease/epay/sdk/base_card/model/SupportAddBank;

    iget-object v0, v0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$1;->val$adapter:Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;

    invoke-static {v1, v2, v0}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->access$000(Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;Lcom/netease/epay/sdk/base_card/model/SupportAddBank;Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;)V

    return-void
.end method
