.class Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$1;
.super Ljava/lang/Object;
.source "AddCardFragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base_card/ui/view/CardBankListView$OnCardBankListViewChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->bankFilter()Z

    move-result v0

    return v0
.end method

.method public jumpToAddBankPage(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/epay/sdk/base_card/model/SupportAllBank;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->jumpToBankPage(Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)V

    .line 7
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-static {v0, p1}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->access$000(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public jumpToRecommendBankList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/epay/sdk/base_card/model/SupportAllBank;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Lcom/netease/epay/sdk/base/util/SdkGson;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->jumpToRecommendBanks(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-static {v0, p1}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->access$000(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setScanViewVisible(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->updateScanViewVisible(Landroid/view/View;)V

    return-void
.end method
