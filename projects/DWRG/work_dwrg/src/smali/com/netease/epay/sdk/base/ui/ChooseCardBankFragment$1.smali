.class Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment$1;
.super Ljava/lang/Object;
.source "ChooseCardBankFragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout$OnCardTypeSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 119
    iput-object p1, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment$1;->this$0:Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "info"    # Ljava/lang/Object;

    .prologue
    .line 122
    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment$1;->this$0:Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;

    check-cast p2, Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;

    .end local p2    # "info":Ljava/lang/Object;
    invoke-static {v0, p2}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->access$002(Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;)Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;

    .line 124
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment$1;->this$0:Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->access$100(Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;)Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment$1;->this$0:Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;

    invoke-static {v1}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->access$000(Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;)Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;->banks:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;->setData(Ljava/util/ArrayList;)V

    .line 125
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment$1;->this$0:Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->access$200(Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment$1;->this$0:Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->access$100(Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;)Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment$1;->this$0:Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;

    invoke-static {v1}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->access$000(Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;)Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;

    move-result-object v1

    iget v1, v1, Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;->selectIndex:I

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;->selectBank(I)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment$1;->this$0:Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;->access$100(Lcom/netease/epay/sdk/base/ui/ChooseCardBankFragment;)Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
