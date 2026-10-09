.class Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$7;
.super Ljava/lang/Object;
.source "CardBankDetailFragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout$OnInputTextChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$7;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private resetUrsIdentity(Landroid/widget/EditText;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$7;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->access$402(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;Z)Z

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->queryIdentityInfo:Lcom/netease/epay/sdk/base/model/QueryIdentityInfo;

    .line 4
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$7;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->access$500(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$7;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->access$500(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setModifyMode(Z)V

    .line 6
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$7;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->access$600(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$7;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->access$600(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setModifyMode(Z)V

    .line 8
    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 9
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$7;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    invoke-static {p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->access$700(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)Lcom/netease/epay/sdk/base/view/AgreementTextView;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$7;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    sget v1, Lcom/netease/epay/sdk/base_card/R$string;->epaysdk_addcard_detail_agreement:I

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/epay/sdk/base_card/biz/AddCardUtils;->updateAgreementView(Lcom/netease/epay/sdk/base/view/AgreementTextView;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$7;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    iget-object v0, p1, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->presenter:Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;->getCurrentSignAgreementInfos()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->updateAgreementInfos(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public onInputTextChange(Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;Ljava/lang/String;II)V
    .locals 0

    if-nez p4, :cond_0

    .line 1
    iget-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$7;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    invoke-static {p2}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->access$400(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$7;->resetUrsIdentity(Landroid/widget/EditText;)V

    :cond_0
    return-void
.end method

.method public onModifyClick(Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$7;->this$0:Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    invoke-static {p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->access$500(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$7;->resetUrsIdentity(Landroid/widget/EditText;)V

    return-void
.end method
