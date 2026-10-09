.class Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$1;
.super Lcom/netease/epay/sdk/base/simpleimpl/SimpleTextWatcher;
.source "CardBankDetailFragment.java"


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
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    invoke-direct {p0}, Lcom/netease/epay/sdk/base/simpleimpl/SimpleTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 1
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    const/4 p2, 0x0

    const-string p3, "twoElementsVerify"

    const-string p4, "nameInput"

    const-string v0, "input"

    invoke-virtual {p1, p3, p4, v0, p2}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    invoke-static {p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->access$000(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)V

    return-void
.end method
