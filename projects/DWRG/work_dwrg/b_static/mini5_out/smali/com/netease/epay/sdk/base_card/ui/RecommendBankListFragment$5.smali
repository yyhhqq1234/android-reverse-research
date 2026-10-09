.class Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$5;
.super Ljava/lang/Object;
.source "RecommendBankListFragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->initBanksView(Landroid/view/LayoutInflater;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->jumpToBankPage(Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object p1, p1, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;->bankName:Ljava/lang/String;

    const-string v1, "recommendInfo"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;

    const-string v1, "recommendBank"

    const-string v2, "click"

    invoke-virtual {p1, v1, v1, v2, v0}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onItemDelete(Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)V
    .locals 0

    return-void
.end method
