.class Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$7;
.super Ljava/lang/Object;
.source "AddCardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->initBankInputItemView(Z)V
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
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$7;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$7;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$7$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$7$1;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$7;)V

    invoke-static {p1, v0}, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->show(Landroidx/fragment/app/FragmentActivity;Lcom/netease/epay/sdk/base/view/listener/CreditDatePickListener;)V

    return-void
.end method
