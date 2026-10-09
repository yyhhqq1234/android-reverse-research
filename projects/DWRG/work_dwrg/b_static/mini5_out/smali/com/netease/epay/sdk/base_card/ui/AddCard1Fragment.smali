.class public Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;
.super Lcom/netease/epay/sdk/base/ui/FullSdkFragment;
.source "AddCard1Fragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base_card/ui/IAddCardView;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected btnNext:Landroid/widget/Button;

.field private cardInfo:Ljava/lang/String;

.field private cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

.field private cardNumInputStart:I

.field private cardNumLength:I

.field private creditExpire:Ljava/lang/String;

.field private defaultSignAgreementInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/epay/sdk/base/model/SignAgreementInfo;",
            ">;"
        }
    .end annotation
.end field

.field private inputCardTypeDivider:Landroid/view/View;

.field private inputCardTypeLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

.field private inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

.field private inputPhoneDivider:Landroid/view/View;

.field private inputPhoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

.field private isNeedCvv2:Z

.field private llAgreement:Landroid/widget/LinearLayout;

.field protected rootView:Landroid/view/View;

.field private scanView:Landroid/view/View;

.field private showPeriod:Z

.field protected tvAddCardNumGuide:Landroid/widget/TextView;

.field private tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

.field protected tvOrderDiscount:Landroid/widget/TextView;

.field private util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;-><init>()V

    .line 19
    new-instance v0, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->btnNext:Landroid/widget/Button;

    invoke-direct {v0, v1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->creditExpire:Ljava/lang/String;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->isNeedCvv2:Z

    const/4 v1, 0x1

    .line 23
    iput-boolean v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->showPeriod:Z

    .line 230
    iput v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->cardNumInputStart:I

    .line 231
    iput v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->cardNumLength:I

    return-void
.end method

.method static synthetic access$000(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->cardNumInputStart:I

    return p0
.end method

.method static synthetic access$102(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->cardNumInputStart:I

    return p1
.end method

.method static synthetic access$200(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->cardNumLength:I

    return p0
.end method

.method static synthetic access$202(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->cardNumLength:I

    return p1
.end method

.method static synthetic access$300(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->scanView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputPhoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->creditExpire:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->creditExpire:Ljava/lang/String;

    return-object p1
.end method

.method private addCardLayoutListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    new-instance v1, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$3;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$3;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 60
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    sget-object v1, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$$ExternalSyntheticLambda3;->INSTANCE:Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private initAddCardView()V
    .locals 4

    .line 1
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->input_card:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    const/4 v1, 0x6

    .line 2
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setImeOptions(I)V

    .line 4
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->identityInfo:Lcom/netease/epay/sdk/base/model/IdentityInfo;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/netease/epay/sdk/base/model/IdentityInfo;->identified:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/IdentityInfo;->trueNameMask:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "\u8f93\u5165%s\u7684\u94f6\u884c\u5361\u53f7"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    const-string v1, "\u8f93\u5165\u60a8\u7684\u94f6\u884c\u5361\u53f7"

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    const-string v1, "0123456789* "

    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 10
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 13
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->ll_camera_scan:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->scanView:Landroid/view/View;

    .line 14
    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->updateScanViewVisible(Landroid/view/View;)V

    .line 15
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->scanView:Landroid/view/View;

    new-instance v1, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$$ExternalSyntheticLambda0;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    invoke-direct {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->addCardLayoutListener()V

    .line 30
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->llAgreement:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->llAgreement:Landroid/widget/LinearLayout;

    .line 31
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->tvAgreement:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/AgreementTextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    .line 32
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->btn_next:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->btnNext:Landroid/widget/Button;

    const-string v1, "\u786e\u8ba4"

    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->btnNext:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->btnNext:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->setButton(Landroid/view/View;)V

    .line 36
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->addEditText(Landroid/widget/TextView;)V

    .line 38
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->input_card_type:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputCardTypeLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    .line 39
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->divider_input_card_type:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputCardTypeDivider:Landroid/view/View;

    .line 40
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->divider_input_phone:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputPhoneDivider:Landroid/view/View;

    .line 41
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->input_phone:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputPhoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    .line 42
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->inputLayout:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    return-void
.end method

.method static synthetic lambda$addCardLayoutListener$2(Landroid/view/View;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/netease/epay/sdk/base_card/R$drawable;->epaysdk_bg_edittext_gray_shape:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/netease/epay/sdk/base_card/R$drawable;->epaysdk_bg_container_gray:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private updateOrderInfo()V
    .locals 7

    .line 1
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->tv_addcard_top_guide:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    sget v1, Lcom/netease/epay/sdk/base_card/R$id;->tv_addcard_top_guide_tip:I

    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3
    sget v2, Lcom/netease/epay/sdk/base_card/R$id;->tv_paymethod_order_title:I

    invoke-virtual {p0, v2}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4
    sget v3, Lcom/netease/epay/sdk/base_card/R$id;->tv_paymethod_order_amount:I

    invoke-virtual {p0, v3}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 5
    sget v4, Lcom/netease/epay/sdk/base_card/R$id;->tv_paymethod_order_discount:I

    invoke-virtual {p0, v4}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->tvOrderDiscount:Landroid/widget/TextView;

    .line 6
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->cannotShowOrderAmount()Z

    move-result v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eqz v4, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->getTopGuideContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 10
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->tvOrderDiscount:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    invoke-static {v3}, Lcom/netease/epay/sdk/base_card/biz/AddCardUtils;->updateMomeny(Landroid/widget/TextView;)V

    .line 16
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    :goto_0
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->amountDesc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->tvOrderDiscount:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->tvOrderDiscount:Landroid/widget/TextView;

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->amountDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->tvOrderDiscount:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected back(Landroid/view/View;)V
    .locals 4

    const-string v0, "topNavigationBar"

    const-string v1, "back"

    const-string v2, "click"

    const/4 v3, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->hideSoftInput(Landroid/app/Activity;)V

    .line 4
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->back(Landroid/view/View;)V

    return-void
.end method

.method public backKeyAction()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/AgreementTextView;->isActionSheetShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

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

    .line 1
    invoke-static {}, Lcom/netease/epay/sdk/base_card/biz/AddCardUtils;->cannotShowOrderAmount()Z

    move-result v0

    return v0
.end method

.method protected changeCard()V
    .locals 0

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
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    return-object v0
.end method

.method public getMobilePhone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputPhoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTopGuideContent()Ljava/lang/String;
    .locals 1

    const-string v0, "\u6dfb\u52a0\u94f6\u884c\u5361"

    return-object v0
.end method

.method public initBankInputItemView(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->isIdentified()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->clearEditTexts()V

    .line 3
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->addEditText(Landroid/widget/TextView;)V

    .line 4
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputPhoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->addEditText(Landroid/widget/TextView;)V

    .line 5
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputPhoneDivider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputPhoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->btnNext:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->btnNext:Landroid/widget/Button;

    const-string v2, "\u540c\u610f\u534f\u8bae\u5e76\u7ee7\u7eed"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->llAgreement:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    sget v2, Lcom/netease/epay/sdk/base_card/R$string;->epaysdk_addcard_detail_agreement:I

    invoke-virtual {p0, v2}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/epay/sdk/base_card/biz/AddCardUtils;->updateAgreementView(Lcom/netease/epay/sdk/base/view/AgreementTextView;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    iget-object v2, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->defaultSignAgreementInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/view/AgreementTextView;->setAgreementList(Ljava/util/ArrayList;)V

    if-eqz p1, :cond_3

    .line 16
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {p1, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->clear()V

    .line 18
    iget-boolean p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->isNeedCvv2:Z

    const/4 v0, 0x6

    if-eqz p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->add(I)V

    .line 20
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {p1, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object p1

    .line 21
    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setImeOptions(I)V

    .line 23
    :cond_0
    iget-boolean p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->showPeriod:Z

    if-eqz p1, :cond_2

    .line 24
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->createItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 26
    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$5;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$5;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)V

    iput-object v0, p1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->listener:Landroid/view/View$OnClickListener;

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->add(Lcom/netease/epay/sdk/base/view/bankinput/InputItem;)V

    .line 46
    :cond_2
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->inflate()V

    .line 47
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->bindButton(Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;)V

    .line 54
    :cond_3
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->updateViews(Landroid/view/View;)V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 1
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->tv_addcardnum_guide:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->tvAddCardNumGuide:Landroid/widget/TextView;

    const-string v1, "\u8f93\u5165\u5361\u53f7\u6dfb\u52a0"

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->tv_query_card_num:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-direct {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->initAddCardView()V

    .line 5
    invoke-direct {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->updateOrderInfo()V

    .line 6
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->fl_addcardnum_panel:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$$ExternalSyntheticLambda1;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected isIdentified()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInputCardTypeVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputCardTypeLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$initAddCardView$1$com-netease-epay-sdk-base_card-ui-AddCard1Fragment(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->userName:Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getBankScanJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$2;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$2;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)V

    const-string v2, "bankcardScan"

    .line 2
    invoke-static {v2, p1, v0, v1}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    return-void
.end method

.method synthetic lambda$initView$0$com-netease-epay-sdk-base_card-ui-AddCard1Fragment(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->isSoftInputActive(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->hideSoftInput(Landroid/app/Activity;)V

    .line 4
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->clearFocus()V

    :cond_0
    return-void
.end method

.method synthetic lambda$showCardInfo$3$com-netease-epay-sdk-base_card-ui-AddCard1Fragment(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->hideSoftInput(Landroid/app/Activity;)V

    .line 2
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->changeCard()V

    return-void
.end method

.method protected nextClick(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/netease/epay/sdk/base_card/R$id;->btn_next:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    .line 2
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->hideSoftInput(Landroid/app/Activity;)V

    .line 3
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->cardInfo:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "\u8bf7\u9009\u62e9\u94f6\u884c\u5361\u7c7b\u578b"

    invoke-static {p1, v0}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->getTextWithoutSpace()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputPhoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 13
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->getMobilePhone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->checkPhoneInvalid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 18
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xd

    if-ge v0, v1, :cond_3

    .line 19
    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$1;

    invoke-direct {v0, p0, p1}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$1;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/VerticalTwoButtonMessageFragment;->getInstance(Lcom/netease/epay/sdk/base/simpleimpl/TwoBtnFragCallback;)Lcom/netease/epay/sdk/base/ui/VerticalTwoButtonMessageFragment;

    move-result-object p1

    .line 48
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-class v1, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/netease/epay/sdk/base/ui/VerticalTwoButtonMessageFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const-string p1, "cardNoIncompletePop"

    const-string v0, "enter"

    .line 49
    invoke-virtual {p0, p1, v2, v0, v2}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 54
    :cond_3
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->nextClick(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->tv_query_card_num:I

    if-ne p1, v0, :cond_6

    .line 58
    sget-object p1, Lcom/netease/epay/sdk/base/core/BaseData;->queryCardGuideUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 59
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->queryCardGuideUrl:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/netease/epay/sdk/base/ui/WebViewDialogActivity;->startActivity(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    const-string p1, "normalBind"

    const-string v0, "cardNoSelect"

    const-string v1, "click"

    .line 62
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const-string v0, "enter"

    .line 2
    invoke-virtual {p0, p1, p1, v0, p1}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    sget p2, Lcom/netease/epay/sdk/base_card/R$layout;->epaysdk_frag_addcard1:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->requestFocus()Z

    .line 3
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showSoftInput(Landroid/view/View;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->initView()V

    return-void
.end method

.method protected queryCardBin(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setButtonEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->btnNext:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public setReSignCard(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->rl_addcardnum_guide:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "**** **** **** "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    invoke-virtual {p1, v1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setEnabled(Z)V

    .line 6
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/netease/epay/sdk/base_card/R$color;->epaysdk_v3_Text_Lowest:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setTextColor(I)V

    .line 7
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 8
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    sget p2, Lcom/netease/epay/sdk/base_card/R$drawable;->epaysdk_bg_container_gray:I

    invoke-virtual {p1, p2}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setBackgroundResource(I)V

    goto :goto_0

    .line 10
    :cond_0
    sget p2, Lcom/netease/epay/sdk/base_card/R$string;->epaysdk_pls_input_tail_cardnum:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {p0, p2, v2}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showCardInfo(Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->cardInfo:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputCardTypeLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputCardTypeDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputCardTypeLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    const-string v0, "\u9009\u62e9\u94f6\u884c\u548c\u5361\u7c7b\u578b"

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setContent(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputCardTypeLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/base_card/R$color;->epaysdk_v3_Text_Lowest:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputCardTypeLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setContent(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputCardTypeLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/base_card/R$color;->epaysdk_v3_Text_Primary:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputCardTypeLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$$ExternalSyntheticLambda2;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)V

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setListener(Landroid/view/View$OnClickListener;)V

    .line 17
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->isIdentified()Z

    move-result p1

    if-nez p1, :cond_1

    .line 18
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->btnNext:Landroid/widget/Button;

    const-string v0, "\u4e0b\u4e00\u6b65"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public showDiscount(Lcom/netease/epay/sdk/base_card/model/GetDeductionByBankMsg;)V
    .locals 0

    return-void
.end method

.method public showInputAllInfo()V
    .locals 4

    .line 1
    new-instance v0, Lcom/netease/epay/sdk/base_card/biz/TrackProtocolEventBiz;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base_card/biz/TrackProtocolEventBiz;-><init>()V

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    iget-object v3, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->btnNext:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/epay/sdk/base_card/biz/TrackProtocolEventBiz;->execute(Landroidx/fragment/app/FragmentActivity;Lcom/netease/epay/sdk/base/view/AgreementTextView;Landroid/widget/Button;)V

    return-void
.end method

.method public showPrefillMobilePhone(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputPhoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    .line 2
    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputPhoneDivider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputPhoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputPhoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setContent(Ljava/lang/String;)V

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputPhoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setModifyMode(Z)V

    .line 12
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputPhoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$4;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment$4;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;)V

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setOnInputTextChangeListener(Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout$OnInputTextChangeListener;)V

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->clearEditTexts()V

    .line 37
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->addEditText(Landroid/widget/TextView;)V

    .line 38
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->inputPhoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->addEditText(Landroid/widget/TextView;)V

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
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p1, Lcom/netease/epay/sdk/base/model/BankPayGateInfo;->signAgreementInfos:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->defaultSignAgreementInfos:Ljava/util/ArrayList;

    .line 3
    iget-object p1, p1, Lcom/netease/epay/sdk/base/model/BankPayGateInfo;->payGateInfo:Lcom/netease/epay/sdk/base/model/PayGateInfo;

    if-eqz p1, :cond_1

    .line 4
    iget-boolean v0, p1, Lcom/netease/epay/sdk/base/model/PayGateInfo;->isNeedCvv2:Z

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->isNeedCvv2:Z

    .line 5
    iget-boolean p1, p1, Lcom/netease/epay/sdk/base/model/PayGateInfo;->showPeriod:Z

    iput-boolean p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCard1Fragment;->showPeriod:Z

    :cond_1
    return-void
.end method

.method protected updateCreditExpire(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateScanViewVisible(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/netease/epay/sdk/controller/ControllerRouter;->isSupportBankOcr()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "epaysdk_bankcard_scan_state"

    invoke-static {v0, v2, v1}, Lcom/netease/epay/sdk/base/util/SharedPreferencesUtil;->readBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 3
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
