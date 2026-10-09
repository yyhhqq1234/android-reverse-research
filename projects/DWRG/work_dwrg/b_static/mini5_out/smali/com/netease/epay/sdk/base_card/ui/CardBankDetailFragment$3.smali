.class Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$3;
.super Ljava/lang/Object;
.source "CardBankDetailFragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base_card/ui/view/BankCardChooseLayout$OnCardSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->initRealNameLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/netease/epay/sdk/base_card/model/SupportBankCard;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$3;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->changeBankCard(Lcom/netease/epay/sdk/base_card/model/SupportBankCard;)V

    return-void
.end method
