.class Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$4;
.super Ljava/lang/Object;
.source "CardBankDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->addSecurityKeyboard()V
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
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    invoke-static {p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->access$100(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    invoke-static {p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->access$100(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    invoke-static {p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->access$200(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->hideSoftInput(Landroid/app/Activity;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    invoke-static {p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->access$100(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    invoke-static {p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->access$200(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
