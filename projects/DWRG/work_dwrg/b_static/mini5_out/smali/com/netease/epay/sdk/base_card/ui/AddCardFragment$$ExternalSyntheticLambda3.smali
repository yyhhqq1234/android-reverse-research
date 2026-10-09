.class public final synthetic Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$OnItemClickListener;


# instance fields
.field public final synthetic f$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$$ExternalSyntheticLambda3;->f$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    return-void
.end method


# virtual methods
.method public final onItemClick(Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$$ExternalSyntheticLambda3;->f$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->lambda$updateBankListView$0$com-netease-epay-sdk-base_card-ui-AddCardFragment(Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)V

    return-void
.end method
