.class Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$2;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "AddCard1Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->lambda$initAddCardView$1$com-netease-epay-sdk-base_card-ui-AddCard1Fragment(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$2;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

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
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$2;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->access$000(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    move-result-object v0

    iget-object p1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->msg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->code:Ljava/lang/String;

    const-string v1, "FC0000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$2;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->msg:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
