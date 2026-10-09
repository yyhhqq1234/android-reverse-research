.class Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$4;
.super Ljava/lang/Object;
.source "AddCard1Fragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout$OnInputTextChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->showPrefillMobilePhone(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field showMobilePhone:Z

.field final synthetic this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$4;->showMobilePhone:Z

    return-void
.end method


# virtual methods
.method clearInputText()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$4;->showMobilePhone:Z

    .line 2
    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    invoke-static {v1}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->access$400(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    invoke-static {v1}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->access$400(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setModifyMode(Z)V

    .line 4
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$4;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->access$400(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method

.method public onInputTextChange(Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;Ljava/lang/String;II)V
    .locals 0

    if-nez p4, :cond_0

    .line 1
    iget-boolean p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$4;->showMobilePhone:Z

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$4;->clearInputText()V

    :cond_0
    return-void
.end method

.method public onModifyClick(Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$4;->clearInputText()V

    return-void
.end method
