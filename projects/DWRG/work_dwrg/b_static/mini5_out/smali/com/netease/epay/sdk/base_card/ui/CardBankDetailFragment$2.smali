.class Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$2;
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
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$2;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    invoke-direct {p0}, Lcom/netease/epay/sdk/base/simpleimpl/SimpleTextWatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$2;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    const/4 v0, 0x0

    const-string v1, "twoElementsVerify"

    const-string v2, "identityNoInput"

    const-string v3, "input"

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$2;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    invoke-static {p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->access$000(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)V

    return-void
.end method
