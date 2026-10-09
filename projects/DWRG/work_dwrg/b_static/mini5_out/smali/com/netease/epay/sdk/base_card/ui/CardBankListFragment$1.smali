.class Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment$1;
.super Ljava/lang/Object;
.source "CardBankListFragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$OnItemClickListener;


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


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p1, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;->bankName:Ljava/lang/String;

    const-string v2, "bankName"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;

    const/4 v2, 0x0

    const-string v3, "noCardInputList"

    const-string v4, "click"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 4
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankListFragment;->jumpToCardBankDetail(Ljava/lang/String;)V

    return-void
.end method

.method public onItemDelete(Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)V
    .locals 0

    return-void
.end method
