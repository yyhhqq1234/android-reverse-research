.class Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$2;
.super Ljava/lang/Object;
.source "CardBankListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;

.field final synthetic val$obj:Lcom/netease/epay/sdk/base_card/model/SupportAddBank;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$2;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;

    iput-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$2;->val$obj:Lcom/netease/epay/sdk/base_card/model/SupportAddBank;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$2;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;

    invoke-static {p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;->access$100(Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;)Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$2;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;

    invoke-static {p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;->access$100(Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;)Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$2;->val$obj:Lcom/netease/epay/sdk/base_card/model/SupportAddBank;

    invoke-interface {p1, v0}, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$OnItemClickListener;->onItemDelete(Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)V

    :cond_0
    return-void
.end method
