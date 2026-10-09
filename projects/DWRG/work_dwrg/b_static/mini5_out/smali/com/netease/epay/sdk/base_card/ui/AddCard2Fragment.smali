.class public Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;
.super Lcom/netease/epay/sdk/base/ui/FullSdkFragment;
.source "AddCard2Fragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base_card/ui/IAddCardView;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$IAddCardSecondPresenter;
    }
.end annotation


# instance fields
.field btnNext:Landroid/widget/Button;

.field protected defaultSignAgreementInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/epay/sdk/base/model/SignAgreementInfo;",
            ">;"
        }
    .end annotation
.end field

.field private idCardContent:Ljava/lang/String;

.field inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

.field protected isNeedCvv2:Z

.field private llAgreement:Landroid/widget/LinearLayout;

.field private nameContent:Ljava/lang/String;

.field public phoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

.field protected showPeriod:Z

.field private showUrsIdentity:Z

.field private textChangeListener:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout$OnInputTextChangeListener;

.field protected tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

.field protected tvOrderDiscount:Landroid/widget/TextView;

.field protected tvTopGuideTip:Landroid/widget/TextView;

.field private util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->isNeedCvv2:Z

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->showPeriod:Z

    .line 13
    new-instance v1, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v2, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->btnNext:Landroid/widget/Button;

    invoke-direct {v1, v2}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    .line 15
    iput-boolean v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->showUrsIdentity:Z

    .line 17
    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$1;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->textChangeListener:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout$OnInputTextChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->showUrsIdentity:Z

    return p0
.end method

.method static synthetic access$002(Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->showUrsIdentity:Z

    return p1
.end method

.method static synthetic access$102(Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->nameContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->saveIdentifyToCache()V

    return-void
.end method

.method static synthetic access$302(Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->idCardContent:Ljava/lang/String;

    return-object p1
.end method

.method private saveIdentifyToCache()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->nameContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->idCardContent:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->nameContent:Ljava/lang/String;

    const-string v1, "*"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->idCardContent:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->idCardContent:Ljava/lang/String;

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->nameContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    .line 10
    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->nameContent:Ljava/lang/String;

    sput-object v1, Lcom/netease/epay/sdk/base/core/BaseData;->cacheInputName:Ljava/lang/String;

    .line 11
    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cacheInputCertNo:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method private showUrsIdentify()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->queryIdentityInfo:Lcom/netease/epay/sdk/base/model/QueryIdentityInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/QueryIdentityInfo;->maskedTrueName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->queryIdentityInfo:Lcom/netease/epay/sdk/base/model/QueryIdentityInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/QueryIdentityInfo;->maskedCertNo:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateOrderInfo()V
    .locals 6

    .line 1
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->tv_addcard_top_guide:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    sget v1, Lcom/netease/epay/sdk/base_card/R$id;->tv_paymethod_order_title:I

    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3
    sget v2, Lcom/netease/epay/sdk/base_card/R$id;->tv_paymethod_order_amount:I

    invoke-virtual {p0, v2}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4
    sget v3, Lcom/netease/epay/sdk/base_card/R$id;->tv_paymethod_order_discount:I

    invoke-virtual {p0, v3}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->tvOrderDiscount:Landroid/widget/TextView;

    .line 5
    sget v3, Lcom/netease/epay/sdk/base_card/R$id;->tv_addcard_top_guide_tip:I

    invoke-virtual {p0, v3}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->tvTopGuideTip:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->cannotShowOrderAmount()Z

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->getTopGuideContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->tvTopGuideTip:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->tvOrderDiscount:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    invoke-static {v2}, Lcom/netease/epay/sdk/base_card/biz/AddCardUtils;->updateMomeny(Landroid/widget/TextView;)V

    .line 16
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->tvTopGuideTip:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public backKeyAction()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/AgreementTextView;->isActionSheetShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/AgreementTextView;->disMissSheet()V

    const/4 v0, 0x1

    return v0

    .line 5
    :cond_0
    invoke-super {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->backKeyAction()Z

    move-result v0

    return v0
.end method

.method protected cannotShowOrderAmount()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected checkPhoneInvalid()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->getMobilePhone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->checkPhoneInvalid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected doneClick()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->showUrsIdentity:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "BIND_CARD_OPTIMIZED_WITHOUT_IDENTITY"

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sput-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->bizScene:Ljava/lang/String;

    const-string v0, "cardInfoInput"

    const-string v2, "nextButton"

    const-string v3, "click"

    .line 2
    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected epayLogoBg()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getInputLayout()Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    return-object v0
.end method

.method public getMobilePhone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->phoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTopGuideContent()Ljava/lang/String;
    .locals 1

    const-string v0, "\u9a8c\u8bc1\u94f6\u884c\u5361\u4fe1\u606f"

    return-object v0
.end method

.method public initBankInputItemView(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->clear()V

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->clearEditTexts()V

    .line 3
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->phoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->addEditText(Landroid/widget/TextView;)V

    .line 4
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->phoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setLooseValidation(Z)V

    .line 6
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->createItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItem;

    move-result-object v0

    .line 7
    sget-object v3, Lcom/netease/epay/sdk/base/core/BaseData;->userName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    new-array v3, v1, [Ljava/lang/Object;

    .line 8
    sget-object v5, Lcom/netease/epay/sdk/base/core/BaseData;->userName:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v5, "*%s\uff08\u8bf7\u8f93\u5165\u5b8c\u6574\u59d3\u540d\uff09"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->hint:Ljava/lang/String;

    .line 10
    :cond_0
    iget-object v3, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {v3, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->add(Lcom/netease/epay/sdk/base/view/bankinput/InputItem;)V

    .line 11
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->add(I)V

    .line 12
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object v0

    iget-object v5, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->textChangeListener:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout$OnInputTextChangeListener;

    invoke-virtual {v0, v5}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setOnInputTextChangeListener(Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout$OnInputTextChangeListener;)V

    .line 13
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {v0, v3}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object v0

    iget-object v5, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->textChangeListener:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout$OnInputTextChangeListener;

    invoke-virtual {v0, v5}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setOnInputTextChangeListener(Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout$OnInputTextChangeListener;)V

    .line 14
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v5, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$2;

    invoke-direct {v5, p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$2;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;)V

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 24
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {v0, v3}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v5, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$3;

    invoke-direct {v5, p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$3;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;)V

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    if-eqz p1, :cond_3

    .line 37
    iget-boolean p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->isNeedCvv2:Z

    const/4 v0, 0x6

    if-eqz p1, :cond_1

    .line 38
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->add(I)V

    .line 39
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {p1, v5}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object p1

    .line 40
    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setImeOptions(I)V

    .line 42
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {p1, v5}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    new-instance v5, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$4;

    invoke-direct {v5, p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$4;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;)V

    invoke-virtual {p1, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 51
    :cond_1
    iget-boolean p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->showPeriod:Z

    if-eqz p1, :cond_3

    .line 52
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->createItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 54
    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$5;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment$5;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;)V

    iput-object v0, p1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->listener:Landroid/view/View$OnClickListener;

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->add(Lcom/netease/epay/sdk/base/view/bankinput/InputItem;)V

    .line 75
    :cond_3
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->inflate()V

    .line 76
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->bindButton(Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;)V

    .line 77
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->updateViews(Landroid/view/View;)V

    .line 79
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->llAgreement:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 82
    invoke-static {}, Lcom/netease/epay/sdk/base/core/BaseData;->hasCacheIdentify()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 84
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    sget v0, Lcom/netease/epay/sdk/base_card/R$string;->epaysdk_addcard_detail_agreement:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/epay/sdk/base_card/biz/AddCardUtils;->updateAgreementView(Lcom/netease/epay/sdk/base/view/AgreementTextView;Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->defaultSignAgreementInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/view/AgreementTextView;->setAgreementList(Ljava/util/ArrayList;)V

    .line 86
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {p1, v2}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object p1

    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cacheInputName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setContent(Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {p1, v3}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object p1

    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cacheInputCertNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setContent(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 88
    :cond_4
    invoke-direct {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->showUrsIdentify()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 89
    iput-boolean v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->showUrsIdentity:Z

    const-string p1, "cardInfoInput"

    const-string v0, "nameFill"

    const-string v5, "fill"

    const/4 v6, 0x0

    .line 90
    invoke-virtual {p0, p1, v0, v5, v6}, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v0, "identityNoFill"

    .line 91
    invoke-virtual {p0, p1, v0, v5, v6}, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 94
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {p1, v2}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object p1

    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->queryIdentityInfo:Lcom/netease/epay/sdk/base/model/QueryIdentityInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/QueryIdentityInfo;->maskedTrueName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setContent(Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {p1, v2}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setModifyMode(Z)V

    .line 96
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {p1, v3}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object p1

    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->queryIdentityInfo:Lcom/netease/epay/sdk/base/model/QueryIdentityInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/QueryIdentityInfo;->maskedCertNo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setContent(Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {p1, v3}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setModifyMode(Z)V

    .line 98
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    sget v0, Lcom/netease/epay/sdk/base_card/R$string;->epaysdk_addcard_detail_agreement_from_urs:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/epay/sdk/base_card/biz/AddCardUtils;->updateAgreementView(Lcom/netease/epay/sdk/base/view/AgreementTextView;Ljava/lang/String;)V

    .line 100
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->defaultSignAgreementInfos:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 101
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->queryIdentityInfo:Lcom/netease/epay/sdk/base/model/QueryIdentityInfo;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/QueryIdentityInfo;->agreementInfo:Lcom/netease/epay/sdk/base/model/SignAgreementInfo;

    if-eqz v0, :cond_5

    .line 102
    invoke-virtual {p1, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 104
    :cond_5
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/view/AgreementTextView;->setAgreementList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 107
    :cond_6
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    sget v0, Lcom/netease/epay/sdk/base_card/R$string;->epaysdk_addcard_detail_agreement:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/epay/sdk/base_card/biz/AddCardUtils;->updateAgreementView(Lcom/netease/epay/sdk/base/view/AgreementTextView;Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->defaultSignAgreementInfos:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/view/AgreementTextView;->setAgreementList(Ljava/util/ArrayList;)V

    .line 110
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->nameContent:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 111
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {p1, v2}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->nameContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setContent(Ljava/lang/String;)V

    .line 113
    :cond_7
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->idCardContent:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 114
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {p1, v3}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->idCardContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setContent(Ljava/lang/String;)V

    :cond_8
    :goto_0
    return-void
.end method

.method protected initView()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->updateOrderInfo()V

    .line 2
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->inputLayout:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    .line 3
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->input_phone:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->phoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setTipVisible(Z)V

    .line 5
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->llAgreement:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->llAgreement:Landroid/widget/LinearLayout;

    .line 6
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->tvAgreement:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/AgreementTextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    .line 7
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->btn_next:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->btnNext:Landroid/widget/Button;

    .line 8
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->btnNext:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->setButton(Landroid/view/View;)V

    return-void
.end method

.method public isInputCardTypeVisible()Z
    .locals 1

    const/4 v0, 0x0

    return v0
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

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    iget-object v2, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->btnNext:Landroid/widget/Button;

    invoke-virtual {p1, v0, v1, v2}, Lcom/netease/epay/sdk/base_card/biz/TrackProtocolEventBiz;->execute(Landroidx/fragment/app/FragmentActivity;Lcom/netease/epay/sdk/base/view/AgreementTextView;Landroid/widget/Button;)V

    .line 3
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->doneClick()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    sget p2, Lcom/netease/epay/sdk/base_card/R$layout;->epaysdk_actv_addcard_second:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public setButtonEnable(Z)V
    .locals 0

    return-void
.end method

.method public setReSignCard(Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public showCardInfo(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showDiscount(Lcom/netease/epay/sdk/base_card/model/GetDeductionByBankMsg;)V
    .locals 0

    return-void
.end method

.method public showInputAllInfo()V
    .locals 0

    return-void
.end method

.method public showPrefillMobile(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->phoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setContent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public showPrefillMobilePhone(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->phoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard2Fragment;->phoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setContent(Ljava/lang/String;)V

    :cond_0
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

    if-nez p4, :cond_0

    .line 1
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    :cond_0
    move-object v5, p4

    .line 4
    invoke-static {}, Lcom/netease/epay/sdk/base/core/BaseData;->getBus()Lcom/netease/epay/sdk/base/model/CustomerDataBus;

    move-result-object p4

    iget-object p4, p4, Lcom/netease/epay/sdk/base/model/CustomerDataBus;->orderId:Ljava/lang/String;

    const-string v0, "bizNo"

    invoke-interface {v5, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/netease/epay/sdk/base/core/BaseData;->isRealName()Z

    move-result p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p4

    const-string v0, "isRealName"

    invoke-interface {v5, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p4, Lcom/netease/epay/sdk/base/core/CoreData;->biz:Lcom/netease/epay/sdk/base/model/EpayBiz;

    invoke-virtual {p4}, Lcom/netease/epay/sdk/base/model/EpayBiz;->getBindCardEpayBizType()Ljava/lang/String;

    move-result-object p4

    const-string v0, "epayBizType"

    invoke-interface {v5, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cardBind"

    const-string v1, "cardInfoInput"

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 7
    invoke-static/range {v0 .. v5}, Lcom/netease/epay/sdk/base/datacoll/EpayDaTrackUtil;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public updateAgreementAndButton(Lcom/netease/epay/sdk/base/model/BankPayGateInfo;)V
    .locals 0

    return-void
.end method

.method protected updateCreditExpire(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
