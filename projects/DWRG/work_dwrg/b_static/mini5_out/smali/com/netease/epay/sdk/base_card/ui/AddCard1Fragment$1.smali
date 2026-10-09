.class Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$1;
.super Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;
.source "AddCard1Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

.field final synthetic val$cardNo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    iput-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$1;->val$cardNo:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeft()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    sget v1, Lcom/netease/epay/sdk/base_card/R$string;->epaysdk_addcard_num_uncompleted_ok:I

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    sget v1, Lcom/netease/epay/sdk/base_card/R$string;->epaysdk_addcard_num_uncompleted_tip:I

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRight()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    sget v1, Lcom/netease/epay/sdk/base_card/R$string;->epaysdk_addcard_num_uncompleted_repeat:I

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public leftClick()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$1;->val$cardNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->nextClick(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    const-string v1, "cardNoIncompletePop"

    const-string v2, "continueBind"

    const-string v3, "click"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public rightClick()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->access$000(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->requestFocus()Z

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    const-string v1, "cardNoIncompletePop"

    const-string v2, "renewInput"

    const-string v3, "click"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
