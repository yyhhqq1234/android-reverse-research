.class Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout$1;
.super Ljava/lang/Object;
.source "ChooseCardBankHeadLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout$1;->this$0:Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 90
    invoke-static {}, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->access$000()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->access$000()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->access$000()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 92
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout$1;->this$0:Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;

    invoke-static {v1}, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->access$100(Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 93
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout$1;->this$0:Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->access$200(Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;I)V

    .line 94
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout$1;->this$0:Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->access$102(Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;I)I

    .line 95
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout$1;->this$0:Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;

    invoke-static {v1}, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->access$300(Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;)Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout$OnCardTypeSelectListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout$1;->this$0:Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;

    invoke-static {v1}, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->access$300(Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;)Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout$OnCardTypeSelectListener;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout$OnCardTypeSelectListener;->onSelect(ILjava/lang/Object;)V

    .line 100
    :cond_0
    return-void
.end method
