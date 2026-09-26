.class Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment$3;
.super Ljava/lang/Object;
.source "ChooseCardBankFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment$3;->this$0:Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/netease/epay/sdk/base/R$id;->ivBack:I

    if-ne v0, v1, :cond_1

    .line 152
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment$3;->this$0:Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->dismiss()V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/netease/epay/sdk/base/R$id;->tv_titlebar_done:I

    if-ne v0, v1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment$3;->this$0:Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->access$200(Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment$3;->this$0:Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->access$000(Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;)Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 155
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment$3;->this$0:Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->access$100(Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;)Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;->getLastSelectBankPosition()I

    move-result v1

    .line 156
    const/4 v0, 0x0

    .line 157
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment$3;->this$0:Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;

    invoke-static {v2}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->access$000(Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;)Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;

    move-result-object v2

    iget-object v2, v2, Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;->banks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 158
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment$3;->this$0:Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->access$000(Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;)Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;

    move-result-object v0

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;->banks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/SupportBanks;

    .line 161
    :cond_2
    new-instance v1, Lcom/netease/epay/sdk/base/event/BankTypeChangedEvent;

    invoke-direct {v1, v0}, Lcom/netease/epay/sdk/base/event/BankTypeChangedEvent;-><init>(Lcom/netease/epay/sdk/base/model/SupportBanks;)V

    invoke-static {v1}, Lcom/netease/epay/sdk/base/util/EventBusUtil;->post(Ljava/lang/Object;)V

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment$3;->this$0:Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->dismiss()V

    goto :goto_0
.end method
