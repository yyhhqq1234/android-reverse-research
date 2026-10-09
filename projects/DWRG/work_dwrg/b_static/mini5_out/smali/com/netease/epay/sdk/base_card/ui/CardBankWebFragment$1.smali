.class Lcom/netease/epay/sdk/base_card/ui/CardBankWebFragment$1;
.super Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;
.source "CardBankWebFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base_card/ui/CardBankWebFragment;->onClosePage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankWebFragment;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base_card/ui/CardBankWebFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankWebFragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankWebFragment;

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

    const-string v0, "\u8bf7\u8010\u5fc3\u7b49\u5f85\uff0c\u90e8\u5206\u94f6\u884c\u4f1a\u6709\u5ef6\u8fdf\uff0c\u4e5f\u53ef\u9009\u62e9\u8f93\u5165\u5361\u53f7\u6dfb\u52a0\u3002"

    return-object v0
.end method

.method public getRight()Ljava/lang/String;
    .locals 1

    const-string v0, "\u7ee7\u7eed\u9a8c\u8bc1"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "\u662f\u5426\u9047\u5230\u95ee\u9898\uff1f"

    return-object v0
.end method

.method public leftClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankWebFragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankWebFragment;

    const-string v1, "bankPagePop"

    const-string v2, "reSelect"

    const-string v3, "click"

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/epay/sdk/base_card/ui/CardBankWebFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankWebFragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankWebFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base_card/ui/CardBankWebFragment;->access$001(Lcom/netease/epay/sdk/base_card/ui/CardBankWebFragment;)V

    return-void
.end method

.method public rightClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankWebFragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankWebFragment;

    const-string v1, "bankPagePop"

    const-string v2, "continueCodeInput"

    const-string v3, "click"

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/epay/sdk/base_card/ui/CardBankWebFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
