.class Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$2$1;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "AddCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$2;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$2$1;->this$1:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$2;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 2

    .line 1
    iget-boolean v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->isSuccess:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$2$1;->this$1:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$2;

    iget-object v0, v0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$2;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    iget-object v0, v0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->lvBanks:Lcom/netease/epay/sdk/base_card/ui/view/CardBankListView;

    iget-object p1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->msg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base_card/ui/view/CardBankListView;->setBankCardNumber(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->code:Ljava/lang/String;

    const-string v1, "FC0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$2$1;->this$1:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$2;

    iget-object v0, v0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$2;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->msg:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
