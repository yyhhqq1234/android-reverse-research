.class Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$3;
.super Ljava/lang/Object;
.source "RecommendBankListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$recommendManage:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;Landroid/widget/TextView;Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;

    iput-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$3;->val$recommendManage:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$3;->val$adapter:Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;

    invoke-static {p1}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->access$200(Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "click"

    const-string v2, "recommendCard"

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;

    const-string v3, "recommendManageCard"

    invoke-virtual {p1, v2, v3, v1, v0}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;

    const-string v3, "recommendFinishManageCard"

    invoke-virtual {p1, v2, v3, v1, v0}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;

    invoke-static {p1}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->access$200(Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->access$202(Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;Z)Z

    .line 11
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$3;->val$recommendManage:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->access$200(Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5b8c\u6210"

    goto :goto_1

    :cond_1
    const-string v0, "\u7ba1\u7406"

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$3;->val$adapter:Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->access$200(Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;->setAllowEdite(Z)V

    .line 13
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$3;->val$adapter:Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
