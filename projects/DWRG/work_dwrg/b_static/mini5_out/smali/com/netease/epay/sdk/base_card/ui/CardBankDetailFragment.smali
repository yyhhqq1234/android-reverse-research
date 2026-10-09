.class public Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;
.super Lcom/netease/epay/sdk/base/ui/SdkFragment;
.source "CardBankDetailFragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/ui/IFullScreenDialogFragment;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private bankChangeView:Landroid/widget/TextView;

.field private bankIconView:Lcom/netease/epay/sdk/base/view/NetLoadImageView;

.field private bankNameView:Landroid/widget/TextView;

.field private blankFillView:Landroid/view/View;

.field private btnNext:Landroid/widget/Button;

.field private cardChooseLayout:Lcom/netease/epay/sdk/base_card/ui/view/BankCardChooseLayout;

.field private inputIdCard:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

.field private inputName:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

.field private ivNext:Landroid/widget/ImageView;

.field private llKeyboard:Landroid/widget/LinearLayout;

.field private llRealname:Landroid/widget/LinearLayout;

.field private llSubmitLayout:Landroid/widget/LinearLayout;

.field protected presenter:Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;

.field private showUrsIdentity:Z

.field private textChangeListener:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout$OnInputTextChangeListener;

.field private tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

.field private tvOrderDiscount:Landroid/widget/TextView;

.field private util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;-><init>()V

    .line 539
    new-instance v0, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->btnNext:Landroid/widget/Button;

    invoke-direct {v0, v1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    const/4 v0, 0x0

    .line 542
    iput-boolean v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->showUrsIdentity:Z

    .line 544
    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$7;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$7;-><init>(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->textChangeListener:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout$OnInputTextChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->saveIdentifyToCache()V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->llKeyboard:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->blankFillView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->handleDoneClick()V

    return-void
.end method

.method static synthetic access$400(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->showUrsIdentity:Z

    return p0
.end method

.method static synthetic access$402(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->showUrsIdentity:Z

    return p1
.end method

.method static synthetic access$500(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->inputName:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->inputIdCard:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    return-object p0
.end method

.method static synthetic access$700(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)Lcom/netease/epay/sdk/base/view/AgreementTextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    return-object p0
.end method

.method private addSecurityKeyboard()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->llKeyboard:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->inputIdCard:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;-><init>(Landroid/content/Context;Z)V

    .line 6
    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->llKeyboard:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 7
    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->inputIdCard:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    check-cast v1, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    .line 8
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/gridpwd/NumKeyboardLayout;->bindInput(Landroid/view/View;)V

    .line 9
    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->bindCustomKeyBoard()V

    .line 10
    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$4;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$4;-><init>(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)V

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;-><init>()V

    .line 2
    invoke-static {v0, p0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->setArguments(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    return-object p0
.end method

.method private handleDoneClick()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->presenter:Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;

    if-eqz v0, :cond_0

    const-string v0, "cardTypeSelect"

    const-string v1, "nextButton"

    const-string v2, "click"

    .line 2
    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->presenter:Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;->doneClick()V

    goto :goto_0

    :cond_0
    const-string v0, "EP1505"

    const-string v1, "CardBankDetailFragment presenter is null"

    .line 6
    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ExceptionUtil;->uploadSentry(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u51fa\u9519\u4e86"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private initOrderInfoView(Landroid/view/View;)V
    .locals 3

    .line 1
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->tv_page_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    sget v1, Lcom/netease/epay/sdk/base_card/R$id;->tv_paymethod_order_amount:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3
    sget v2, Lcom/netease/epay/sdk/base_card/R$id;->tv_paymethod_order_discount:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->tvOrderDiscount:Landroid/widget/TextView;

    .line 4
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->cannotShowOrderAmount()Z

    move-result p1

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p1, "\u6dfb\u52a0\u94f6\u884c\u5361"

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    invoke-static {v1}, Lcom/netease/epay/sdk/base_card/biz/AddCardUtils;->updateMomeny(Landroid/widget/TextView;)V

    :goto_0
    return-void
.end method

.method private initRealNameLayout(Landroid/view/View;)V
    .locals 4

    .line 1
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->bankCardChooseLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base_card/ui/view/BankCardChooseLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->cardChooseLayout:Lcom/netease/epay/sdk/base_card/ui/view/BankCardChooseLayout;

    .line 2
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->ll_realname:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->llRealname:Landroid/widget/LinearLayout;

    .line 3
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->ll_submit_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->llSubmitLayout:Landroid/widget/LinearLayout;

    .line 4
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->input_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->inputName:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    .line 5
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->input_idcard:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->inputIdCard:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    .line 6
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->iv_item_cards_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/NetLoadImageView;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->bankIconView:Lcom/netease/epay/sdk/base/view/NetLoadImageView;

    .line 7
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->tv_item_cards_card_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->bankNameView:Landroid/widget/TextView;

    .line 8
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->tv_item_cards_card_switch:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->bankChangeView:Landroid/widget/TextView;

    .line 9
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->iv_item_cards_next:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->ivNext:Landroid/widget/ImageView;

    .line 10
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->ll_keyboard:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->llKeyboard:Landroid/widget/LinearLayout;

    .line 11
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->blank_fill:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->blankFillView:Landroid/view/View;

    .line 14
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->presenter:Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;->isIdentified()Z

    move-result p1

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 15
    invoke-static {}, Lcom/netease/epay/sdk/base/core/BaseData;->hasCacheIdentify()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 17
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    sget v3, Lcom/netease/epay/sdk/base_card/R$string;->epaysdk_addcard_detail_agreement:I

    invoke-virtual {p0, v3}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/netease/epay/sdk/base_card/biz/AddCardUtils;->updateAgreementView(Lcom/netease/epay/sdk/base/view/AgreementTextView;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->updateAgreementInfos(Ljava/util/ArrayList;)V

    .line 19
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->inputName:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    sget-object v1, Lcom/netease/epay/sdk/base/core/BaseData;->cacheInputName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setContent(Ljava/lang/String;)V

    .line 20
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->inputIdCard:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    sget-object v1, Lcom/netease/epay/sdk/base/core/BaseData;->cacheInputCertNo:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setContent(Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_0
    sget-object p1, Lcom/netease/epay/sdk/base/core/BaseData;->queryIdentityInfo:Lcom/netease/epay/sdk/base/model/QueryIdentityInfo;

    if-eqz p1, :cond_1

    .line 22
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->updateIdentityInfo(Lcom/netease/epay/sdk/base/model/QueryIdentityInfo;)V

    goto :goto_0

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    sget v3, Lcom/netease/epay/sdk/base_card/R$string;->epaysdk_addcard_detail_agreement:I

    invoke-virtual {p0, v3}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/netease/epay/sdk/base_card/biz/AddCardUtils;->updateAgreementView(Lcom/netease/epay/sdk/base/view/AgreementTextView;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->updateAgreementInfos(Ljava/util/ArrayList;)V

    .line 27
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->inputName:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->forceShowKeyboard(Landroid/view/View;)V

    .line 30
    :goto_0
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->cardChooseLayout:Lcom/netease/epay/sdk/base_card/ui/view/BankCardChooseLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 31
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->llRealname:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 32
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->llSubmitLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/base_card/R$drawable;->epaysdk_bg_container_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 34
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->clearEditTexts()V

    .line 35
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->inputName:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->addEditText(Landroid/widget/TextView;)V

    .line 36
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->inputName:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$1;-><init>(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 45
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->inputIdCard:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->addEditText(Landroid/widget/TextView;)V

    .line 46
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->inputIdCard:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setLooseValidation(Z)V

    .line 47
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->inputIdCard:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$2;-><init>(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 56
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->inputName:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->textChangeListener:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout$OnInputTextChangeListener;

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setOnInputTextChangeListener(Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout$OnInputTextChangeListener;)V

    .line 57
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->inputIdCard:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->textChangeListener:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout$OnInputTextChangeListener;

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setOnInputTextChangeListener(Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout$OnInputTextChangeListener;)V

    .line 59
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->bankChangeView:Landroid/widget/TextView;

    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$$ExternalSyntheticLambda0;-><init>(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->ivNext:Landroid/widget/ImageView;

    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$$ExternalSyntheticLambda1;-><init>(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-direct {p0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->addSecurityKeyboard()V

    goto :goto_1

    .line 75
    :cond_2
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->cardChooseLayout:Lcom/netease/epay/sdk/base_card/ui/view/BankCardChooseLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 76
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->cardChooseLayout:Lcom/netease/epay/sdk/base_card/ui/view/BankCardChooseLayout;

    new-instance v3, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$3;

    invoke-direct {v3, p0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$3;-><init>(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)V

    invoke-virtual {p1, v3}, Lcom/netease/epay/sdk/base_card/ui/view/BankCardChooseLayout;->setOnItemSelectedListener(Lcom/netease/epay/sdk/base_card/ui/view/BankCardChooseLayout$OnCardSelectListener;)V

    .line 82
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    sget v3, Lcom/netease/epay/sdk/base_card/R$string;->epaysdk_addcard_detail_agreement:I

    invoke-virtual {p0, v3}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/netease/epay/sdk/base_card/biz/AddCardUtils;->updateAgreementView(Lcom/netease/epay/sdk/base/view/AgreementTextView;Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->presenter:Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;->getCurrentSignAgreementInfos()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->updateAgreementInfos(Ljava/util/ArrayList;)V

    .line 85
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->llRealname:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 86
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->llSubmitLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 88
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->llSubmitLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 89
    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 90
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->llSubmitLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method private saveIdentifyToCache()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->inputName:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->inputIdCard:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "*"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x12

    if-ne v2, v3, :cond_1

    .line 11
    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cacheInputName:Ljava/lang/String;

    .line 12
    sput-object v1, Lcom/netease/epay/sdk/base/core/BaseData;->cacheInputCertNo:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public static setArguments(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "addcard_support_banks"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method protected appendAttrs(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected cannotShowOrderAmount()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/netease/epay/sdk/base_card/biz/AddCardUtils;->cannotShowOrderAmount()Z

    move-result v0

    return v0
.end method

.method public changeBankCard(Lcom/netease/epay/sdk/base_card/model/SupportBankCard;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->presenter:Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;->setSelectedCard(Lcom/netease/epay/sdk/base_card/model/SupportBankCard;)V

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->presenter:Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;->getCurrentSignAgreementInfos()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->updateAgreementInfos(Ljava/util/ArrayList;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->updateDiscountInfo(Lcom/netease/epay/sdk/base_card/model/SupportBankCard;)V

    const-string p1, "cardTypeSelect"

    const-string v0, "cardType"

    const-string v1, "click"

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected checkRealNameInfo()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->inputName:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u8bf7\u586b\u5199\u672c\u4eba\u59d3\u540d"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->inputIdCard:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u8eab\u4efd\u8bc1\u53f7"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x12

    if-eq v2, v3, :cond_2

    .line 11
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u6301\u5361\u4eba\u8eab\u4efd\u8bc1\u53f7"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->requestCheckIdentityInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected checkRealNameStatus()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->showUrsIdentity:Z

    if-eqz v0, :cond_0

    const-string v0, "BIND_CARD_OPTIMIZED_WITHOUT_IDENTITY"

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->bizScene:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->presenter:Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;->isIdentified()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->checkRealNameInfo()V

    goto :goto_1

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->handleDoneClick()V

    :goto_1
    return-void
.end method

.method protected dealError(Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 0

    return-void
.end method

.method public getSelectedCard()Lcom/netease/epay/sdk/base_card/model/SupportBankCard;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->cardChooseLayout:Lcom/netease/epay/sdk/base_card/ui/view/BankCardChooseLayout;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base_card/ui/view/BankCardChooseLayout;->getSelectedCard()Lcom/netease/epay/sdk/base_card/model/SupportBankCard;

    move-result-object v0

    return-object v0
.end method

.method protected initPresenter()V
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;-><init>(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->presenter:Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->iv_frag_close_c:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$$ExternalSyntheticLambda2;-><init>(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    :cond_0
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->btn_next:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->btnNext:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->btnNext:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->setButton(Landroid/view/View;)V

    .line 14
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->tvAgreement:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/AgreementTextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    .line 15
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->initOrderInfoView(Landroid/view/View;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->initRealNameLayout(Landroid/view/View;)V

    return-void
.end method

.method synthetic lambda$initRealNameLayout$1$com-netease-epay-sdk-base_card-ui-CardBankDetailFragment(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->presenter:Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;->changeCard()V

    :cond_0
    return-void
.end method

.method synthetic lambda$initRealNameLayout$2$com-netease-epay-sdk-base_card-ui-CardBankDetailFragment(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->presenter:Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;->changeCard()V

    :cond_0
    return-void
.end method

.method synthetic lambda$initView$0$com-netease-epay-sdk-base_card-ui-CardBankDetailFragment(Landroid/view/View;)V
    .locals 2

    const-string p1, "cardTypeSelect"

    const-string v0, "close"

    const-string v1, "click"

    .line 1
    invoke-virtual {p0, p1, v0, v1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->onDialogBackPressed()Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->btn_next:I

    if-ne p1, v0, :cond_0

    .line 2
    new-instance p1, Lcom/netease/epay/sdk/base_card/biz/TrackProtocolEventBiz;

    invoke-direct {p1}, Lcom/netease/epay/sdk/base_card/biz/TrackProtocolEventBiz;-><init>()V

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    iget-object v2, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->btnNext:Landroid/widget/Button;

    invoke-virtual {p1, v0, v1, v2}, Lcom/netease/epay/sdk/base_card/biz/TrackProtocolEventBiz;->execute(Landroidx/fragment/app/FragmentActivity;Lcom/netease/epay/sdk/base/view/AgreementTextView;Landroid/widget/Button;)V

    .line 3
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->checkRealNameStatus()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->initPresenter()V

    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;
    .locals 0

    .line 2
    invoke-super {p0, p1, p2, p3}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 3
    sget p2, Lcom/netease/epay/sdk/base_card/R$layout;->epaysdk_addcard_detail:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->initView(Landroid/view/View;)V

    .line 5
    iget-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->presenter:Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;

    invoke-virtual {p2}, Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;->initArguments()V

    const-string p2, "enter"

    .line 6
    invoke-virtual {p0, p3, p3, p2}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p2, Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/netease/epay/sdk/base/ui/MockDialogFragmentLayout;-><init>(Landroid/content/Context;Landroid/view/View;)V

    return-object p2
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method public onDialogBackPressed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/AgreementTextView;->isActionSheetShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/AgreementTextView;->disMissSheet()V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->dismissAllowingStateLoss()V

    .line 5
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 8
    :cond_1
    invoke-static {}, Lcom/netease/epay/sdk/base/util/FrameworkActivityManager;->getInstance()Lcom/netease/epay/sdk/base/util/FrameworkActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/FrameworkActivityManager;->popActivity(Landroid/app/Activity;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->presenter:Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;->hostResume()V

    return-void
.end method

.method protected requestCheckIdentityInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getTopBus()Lcom/netease/epay/sdk/base/model/CustomerDataBus;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/epay/sdk/base/util/DigestUtil;->getAesKey(Lcom/netease/epay/sdk/base/model/CustomerDataBus;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {p1, v1}, Lcom/netease/epay/sdk/base/util/AES;->encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/netease/epay/sdk/base/util/SdkBase64;->encode([B)Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {p2, v1}, Lcom/netease/epay/sdk/base/util/AES;->encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/netease/epay/sdk/base/util/SdkBase64;->encode([B)Ljava/lang/String;

    move-result-object v1

    const-string v3, "trueName"

    .line 6
    invoke-static {v0, v3, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "certNo"

    .line 7
    invoke-static {v0, v2, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$5;

    invoke-direct {v2, p0, p2, p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$5;-><init>(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string p2, "check_identity_info.htm"

    .line 11
    invoke-static {p2, v0, p1, v1, v2}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroidx/fragment/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    return-void
.end method

.method public setButtonEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->btnNext:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public showErrorAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/epay/sdk/Constants;->EXIT_CALLBACK:Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;

    invoke-static {p1, p2, v0}, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->getInstance(Ljava/lang/String;Ljava/lang/String;Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;)Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string v0, "AlertErrorFragment"

    invoke-static {p1, v0, p2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentKeepAll(Lcom/netease/epay/sdk/base/ui/SdkFragment;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public showSecurityDialog(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$6;

    invoke-direct {v0, p0, p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment$6;-><init>(Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;Ljava/lang/String;)V

    .line 34
    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;->getInstance(Lcom/netease/epay/sdk/base/simpleimpl/TwoBtnFragCallback;)Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "SecurityDialogFragment"

    invoke-static {p1, v1, v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentKeepAll(Lcom/netease/epay/sdk/base/ui/SdkFragment;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cardTypeSelect"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->presenter:Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;->isIdentified()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "twoElementsVerify"

    :cond_0
    move-object v2, p1

    if-nez p4, :cond_1

    .line 6
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    :cond_1
    move-object v5, p4

    .line 7
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->presenter:Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;->card:Lcom/netease/epay/sdk/base_card/model/SupportBankCard;

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p1, Lcom/netease/epay/sdk/base_card/model/SupportBankCard;->bankId:Ljava/lang/String;

    const-string p4, "bankId"

    invoke-interface {v5, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->presenter:Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;

    iget-object p1, p1, Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;->card:Lcom/netease/epay/sdk/base_card/model/SupportBankCard;

    iget-object p1, p1, Lcom/netease/epay/sdk/base_card/model/SupportBankCard;->bankName:Ljava/lang/String;

    const-string p4, "bankName"

    invoke-interface {v5, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->presenter:Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;

    iget-object p1, p1, Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;->card:Lcom/netease/epay/sdk/base_card/model/SupportBankCard;

    iget-object p1, p1, Lcom/netease/epay/sdk/base_card/model/SupportBankCard;->cardType:Ljava/lang/String;

    const-string p4, "cardType"

    invoke-interface {v5, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_2
    invoke-static {}, Lcom/netease/epay/sdk/base/core/BaseData;->isRealName()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    const-string p4, "isRealName"

    invoke-interface {v5, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object p1, Lcom/netease/epay/sdk/base/core/CoreData;->biz:Lcom/netease/epay/sdk/base/model/EpayBiz;

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/model/EpayBiz;->getBindCardEpayBizType()Ljava/lang/String;

    move-result-object p1

    const-string p4, "epayBizType"

    invoke-interface {v5, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p0, v5}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->appendAttrs(Ljava/util/Map;)V

    const-string v0, "cardBind"

    const-string v1, "noCardInputAddCard"

    move-object v3, p2

    move-object v4, p3

    .line 15
    invoke-static/range {v0 .. v5}, Lcom/netease/epay/sdk/base/datacoll/EpayDaTrackUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public updataCardChooseLayout(Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->presenter:Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;->isIdentified()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->cardChooseLayout:Lcom/netease/epay/sdk/base_card/ui/view/BankCardChooseLayout;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base_card/ui/view/BankCardChooseLayout;->update(Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)V

    .line 3
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->getSelectedCard()Lcom/netease/epay/sdk/base_card/model/SupportBankCard;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->setButtonEnable(Z)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;->getDefalutCard()Lcom/netease/epay/sdk/base_card/model/SupportBankCard;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->updateShowCard(Lcom/netease/epay/sdk/base_card/model/SupportBankCard;)V

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;->onlyOneCard()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 13
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->bankChangeView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->ivNext:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateAgreementInfos(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/epay/sdk/base/model/SignAgreementInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->presenter:Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;->getCurrentSignAgreementInfos()Ljava/util/ArrayList;

    move-result-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/view/AgreementTextView;->setAgreementList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public updateDiscountInfo(Lcom/netease/epay/sdk/base_card/model/SupportBankCard;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/netease/epay/sdk/base_card/model/SupportBankCard;->couponInfo:Lcom/netease/epay/sdk/base/model/SupportCouponInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/SupportCouponInfo;->amountDesc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->tvOrderDiscount:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->tvOrderDiscount:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/netease/epay/sdk/base_card/model/SupportBankCard;->couponInfo:Lcom/netease/epay/sdk/base/model/SupportCouponInfo;

    iget-object p1, p1, Lcom/netease/epay/sdk/base/model/SupportCouponInfo;->amountDesc:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->tvOrderDiscount:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateIdentityInfo(Lcom/netease/epay/sdk/base/model/QueryIdentityInfo;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->presenter:Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base_card/presenter/CardBankDetailPresenter;->getCurrentSignAgreementInfos()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2
    iget-object v1, p1, Lcom/netease/epay/sdk/base/model/QueryIdentityInfo;->maskedTrueName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/netease/epay/sdk/base/model/QueryIdentityInfo;->maskedCertNo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->showUrsIdentity:Z

    const-string v2, "twoElementsVerify"

    const-string v3, "identityNoFill"

    const-string v4, "fill"

    const/4 v5, 0x0

    .line 4
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v3, "nameFill"

    .line 5
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 7
    iget-object v2, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->inputName:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    iget-object v3, p1, Lcom/netease/epay/sdk/base/model/QueryIdentityInfo;->maskedTrueName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setContent(Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->inputName:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v2, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setModifyMode(Z)V

    .line 9
    iget-object v2, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->inputIdCard:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    iget-object v3, p1, Lcom/netease/epay/sdk/base/model/QueryIdentityInfo;->maskedCertNo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setContent(Ljava/lang/String;)V

    .line 10
    iget-object v2, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->inputIdCard:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v2, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setModifyMode(Z)V

    .line 11
    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    sget v2, Lcom/netease/epay/sdk/base_card/R$string;->epaysdk_addcard_detail_agreement_from_urs:I

    invoke-virtual {p0, v2}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/epay/sdk/base_card/biz/AddCardUtils;->updateAgreementView(Lcom/netease/epay/sdk/base/view/AgreementTextView;Ljava/lang/String;)V

    .line 12
    iget-object p1, p1, Lcom/netease/epay/sdk/base/model/QueryIdentityInfo;->agreementInfo:Lcom/netease/epay/sdk/base/model/SignAgreementInfo;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    sget v1, Lcom/netease/epay/sdk/base_card/R$string;->epaysdk_addcard_detail_agreement:I

    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/base/ui/SdkFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/epay/sdk/base_card/biz/AddCardUtils;->updateAgreementView(Lcom/netease/epay/sdk/base/view/AgreementTextView;Ljava/lang/String;)V

    .line 19
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->updateAgreementInfos(Ljava/util/ArrayList;)V

    return-void
.end method

.method public updateShowCard(Lcom/netease/epay/sdk/base_card/model/SupportBankCard;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->changeBankCard(Lcom/netease/epay/sdk/base_card/model/SupportBankCard;)V

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->bankIconView:Lcom/netease/epay/sdk/base/view/NetLoadImageView;

    sget v1, Lcom/netease/epay/sdk/base_card/R$drawable;->epaysdk_icon_bankdefault:I

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/NetLoadImageView;->defaultRes(I)Lcom/netease/epay/sdk/base/view/NetLoadImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base_card/model/SupportBankCard;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/NetLoadImageView;->setImageUrl(Ljava/lang/String;)Lcom/netease/epay/sdk/base/view/NetLoadImageView;

    .line 3
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->bankNameView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/netease/epay/sdk/base_card/model/SupportBankCard;->bankName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base_card/model/SupportBankCard;->getBankTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankDetailFragment;->bankChangeView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5207\u6362"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base_card/model/SupportBankCard;->getChangeCardType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
