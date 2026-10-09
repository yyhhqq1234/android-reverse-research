.class Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment$2;
.super Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;
.source "AddCard3Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;->onCloseClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment$2;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;

    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeft()Ljava/lang/String;
    .locals 1

    const-string v0, "\u91cd\u65b0\u9009\u62e9\u94f6\u884c"

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8bf7\u8010\u5fc3\u7b49\u5f85\uff0c\u90e8\u5206\u94f6\u884c\u77ed\u4fe1\u53d1\u9001\u4f1a\u6709\u5ef6\u8fdf\uff0c1\u5206\u949f\u540e\u53ef\u70b9\u51fb\u91cd\u65b0\u83b7\u53d6\u3002"

    return-object v0
.end method

.method public getRight()Ljava/lang/String;
    .locals 1

    const-string v0, "\u7ee7\u7eed\u9a8c\u8bc1"

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "\u6536\u4e0d\u5230\u9a8c\u8bc1\u7801\uff1f"

    return-object v0
.end method

.method public leftClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment$2;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;

    const-string v1, "cancelCodeInputPop"

    const-string v2, "reSelectBank"

    const-string v3, "click"

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment$2;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;->onDialogBackPressed()Z

    return-void
.end method

.method public rightClick()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment$2;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;

    const-string v1, "cancelCodeInputPop"

    const-string v2, "continueCodeInput"

    const-string v3, "click"

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment$2;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;->access$000(Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;)Lcom/netease/epay/sdk/base/view/SmsAuthCodeEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;->access$100(Lcom/netease/epay/sdk/base_card/ui/AddCard3Fragment;Landroid/view/View;)V

    return-void
.end method
