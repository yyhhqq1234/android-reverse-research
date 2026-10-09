.class Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment$2;
.super Ljava/lang/Object;
.source "CardBankListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;

.field final synthetic val$lvBanks:Landroid/widget/ListView;

.field final synthetic val$mainView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;Landroid/view/View;Landroid/widget/ListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment$2;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;

    iput-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment$2;->val$mainView:Landroid/view/View;

    iput-object p3, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment$2;->val$lvBanks:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment$2;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;

    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment$2;->val$mainView:Landroid/view/View;

    iget-object v2, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment$2;->val$lvBanks:Landroid/widget/ListView;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;->access$000(Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;Landroid/view/View;Landroid/widget/ListView;)V

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment$2;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->updateViews(Landroid/view/View;)V

    return-void
.end method
