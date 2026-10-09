.class Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$6;
.super Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;
.source "CardBankDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->showSecurityDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

.field final synthetic val$errorMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$6;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    iput-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$6;->val$errorMsg:Ljava/lang/String;

    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeft()Ljava/lang/String;
    .locals 1

    const-string v0, "\u91cd\u65b0\u9009\u62e9"

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$6;->val$errorMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u6b64\u8eab\u4efd\u4fe1\u606f\u6682\u4e0d\u652f\u6301\u514d\u8f93\u5361\u53f7\u6dfb\u52a0\uff0c\u53ef\u91cd\u65b0\u8f93\u5165\u6301\u5361\u4eba\u4fe1\u606f\uff0c\u6216\u9009\u62e9\u8f93\u5165\u5361\u53f7\u6dfb\u52a0\u3002"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$6;->val$errorMsg:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getRight()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8f93\u5165\u5361\u53f7\u6dfb\u52a0"

    return-object v0
.end method

.method public leftClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$6;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    const-string v1, "changePop"

    const-string v2, "quitButton"

    const-string v3, "click"

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public rightClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$6;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    const-string v1, "changePop"

    const-string v2, "changeButton"

    const-string v3, "click"

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$6;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->onDialogBackPressed()Z

    .line 4
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$6;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    iget-object v0, v0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->presenter:Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;->jumpToAddCard1()V

    :cond_0
    return-void
.end method
