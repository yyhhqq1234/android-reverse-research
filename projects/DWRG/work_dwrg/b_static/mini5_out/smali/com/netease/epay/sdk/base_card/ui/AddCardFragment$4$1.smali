.class Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4$1;
.super Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;
.source "AddCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4;

.field final synthetic val$cardNo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4$1;->this$1:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4;

    iput-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4$1;->val$cardNo:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeft()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4$1;->this$1:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4;

    iget-object v0, v0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    sget v1, Lcom/netease/epay/sdk/base_card/R$string;->epaysdk_addcard_num_uncompleted_ok:I

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4$1;->this$1:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4;

    iget-object v0, v0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    sget v1, Lcom/netease/epay/sdk/base_card/R$string;->epaysdk_addcard_num_uncompleted_tip:I

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRight()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4$1;->this$1:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4;

    iget-object v0, v0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    sget v1, Lcom/netease/epay/sdk/base_card/R$string;->epaysdk_addcard_num_uncompleted_repeat:I

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public leftClick()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4$1;->this$1:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4;

    iget-object v0, v0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4$1;->val$cardNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->nextClick(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4$1;->this$1:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4;

    iget-object v0, v0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    const-string v1, "cardNoIncompletePop"

    const-string v2, "continueBind"

    const-string v3, "click"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public rightClick()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4$1;->this$1:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4;

    iget-object v0, v0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->access$200(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->requestFocus()Z

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4$1;->this$1:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4;

    iget-object v0, v0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    const-string v1, "cardNoIncompletePop"

    const-string v2, "renewInput"

    const-string v3, "click"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
