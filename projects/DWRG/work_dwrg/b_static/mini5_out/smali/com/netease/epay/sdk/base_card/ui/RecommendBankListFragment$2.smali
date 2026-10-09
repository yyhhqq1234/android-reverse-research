.class Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$2;
.super Ljava/lang/Object;
.source "RecommendBankListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

.field final synthetic val$mainView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$2;->this$0:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;

    iput-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$2;->val$mainView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$2;->this$0:Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;

    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment$2;->val$mainView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;->access$100(Lcom/netease/epay/sdk/base_card/ui/RecommendBankListFragment;Landroid/view/View;)V

    return-void
.end method
