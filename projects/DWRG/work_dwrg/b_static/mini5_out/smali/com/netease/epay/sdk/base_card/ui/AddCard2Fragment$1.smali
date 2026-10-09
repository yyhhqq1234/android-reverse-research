.class Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$1;
.super Ljava/lang/Object;
.source "AddCard2Fragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout$OnInputTextChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private resetUrsIdentity(Landroid/widget/EditText;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->access$002(Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;Z)Z

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->queryIdentityInfo:Lcom/netease/epay/sdk/base/model/QueryIdentityInfo;

    .line 4
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;

    iget-object v0, v0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;

    iget-object v0, v0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setModifyMode(Z)V

    .line 6
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;

    iget-object v0, v0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;

    iget-object v0, v0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setModifyMode(Z)V

    .line 8
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 11
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;

    iget-object v0, p1, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    sget v1, Lcom/netease/epay/sdk/base_card/R$string;->epaysdk_addcard_detail_agreement:I

    invoke-virtual {p1, v1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/epay/sdk/base_card/biz/AddCardUtils;->updateAgreementView(Lcom/netease/epay/sdk/base/view/AgreementTextView;Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;

    iget-object v0, p1, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    iget-object p1, p1, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->defaultSignAgreementInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/view/AgreementTextView;->setAgreementList(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public onInputTextChange(Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;Ljava/lang/String;II)V
    .locals 0

    if-nez p4, :cond_0

    .line 1
    iget-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;

    invoke-static {p2}, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->access$000(Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$1;->resetUrsIdentity(Landroid/widget/EditText;)V

    :cond_0
    return-void
.end method

.method public onModifyClick(Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const-string v1, "click"

    const-string v2, "cardInfoInput"

    const/4 v3, 0x4

    if-ne v3, p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;

    const-string v4, "nameFillModify"

    invoke-virtual {p1, v2, v4, v1, v0}, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    if-ne v4, p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;

    const-string v4, "identityNoFillModify"

    invoke-virtual {p1, v2, v4, v1, v0}, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 11
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$1;->this$0:Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;

    iget-object p1, p1, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {p1, v3}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$1;->resetUrsIdentity(Landroid/widget/EditText;)V

    return-void
.end method
