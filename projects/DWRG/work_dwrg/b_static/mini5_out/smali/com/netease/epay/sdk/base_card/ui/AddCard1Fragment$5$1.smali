.class Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$5$1;
.super Ljava/lang/Object;
.source "AddCard1Fragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/view/listener/CreditDatePickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$5;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$5$1;->this$1:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$5$1;->this$1:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$5;

    iget-object v0, v0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->access$500(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setContent(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$5$1;->this$1:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$5;

    iget-object p1, p1, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    invoke-static {p1, p2}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->access$602(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$5$1;->this$1:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$5;

    iget-object p1, p1, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$5;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    invoke-static {p1}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->access$600(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->updateCreditExpire(Ljava/lang/String;)V

    return-void
.end method
