.class public Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;
.super Lcom/netease/epay/sdk/base/ui/FullSdkFragment;
.source "AddCardFragment.java"

# interfaces
.implements Lcom/netease/epay/sdk/base_card/ui/IAddCardView;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private adapter:Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;

.field bankScanReceiver:Landroid/content/BroadcastReceiver;

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

.field protected firstPresenter:Lcom/netease/epay/sdk/base_card/presenter/IAddCardPresenter;

.field private inputCardTypeDivider:Landroid/view/View;

.field private inputCardTypeLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

.field private inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

.field private inputPhoneDivider:Landroid/view/View;

.field private inputPhoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

.field private isNeedCvv2:Z

.field private llAgreement:Landroid/widget/LinearLayout;

.field protected lvBanks:Lcom/netease/epay/sdk/base_card/ui/view/CardBankListView;

.field protected presenter:Lcom/netease/epay/sdk/base_card/presenter/AddCardPresenter;

.field recommendCardsChangedReceiver:Landroid/content/BroadcastReceiver;

.field private scanView:Landroid/view/View;

.field private showPeriod:Z

.field private tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

.field private tvInputCardHint:Landroid/widget/TextView;

.field private tvOrderDiscount:Landroid/widget/TextView;

.field private util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;-><init>()V

    .line 237
    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$2;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$2;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->bankScanReceiver:Landroid/content/BroadcastReceiver;

    .line 254
    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$3;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$3;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->recommendCardsChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 289
    new-instance v0, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->btnNext:Landroid/widget/Button;

    invoke-direct {v0, v1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->creditExpire:Ljava/lang/String;

    const/4 v0, 0x0

    .line 292
    iput-boolean v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->isNeedCvv2:Z

    const/4 v1, 0x1

    .line 293
    iput-boolean v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->showPeriod:Z

    .line 397
    iput v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->cardNumInputStart:I

    .line 398
    iput v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->cardNumLength:I

    return-void
.end method

.method static synthetic access$000(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->trackRecommendCards(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->cardInfo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputPhoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->creditExpire:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->creditExpire:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->tvOrderDiscount:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->cardNumInputStart:I

    return p0
.end method

.method static synthetic access$402(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->cardNumInputStart:I

    return p1
.end method

.method static synthetic access$500(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->cardNumLength:I

    return p0
.end method

.method static synthetic access$502(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->cardNumLength:I

    return p1
.end method

.method static synthetic access$600(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->scanView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->tvInputCardHint:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->showBankCardListView()V

    return-void
.end method

.method static synthetic access$900(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->hideBankCardListView()V

    return-void
.end method

.method private addCardLayoutListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    new-instance v1, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$5;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$5;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 76
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    sget-object v1, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$$ExternalSyntheticLambda2;->INSTANCE:Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method private hideBankCardListView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->lvBanks:Lcom/netease/epay/sdk/base_card/ui/view/CardBankListView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/netease/epay/sdk/base_card/ui/view/CardBankListView;->updateListData(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private initAddCardView()V
    .locals 3

    .line 1
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->input_card:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    const/4 v1, 0x6

    .line 2
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setImeOptions(I)V

    .line 3
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->tv_input_card_hint:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->tvInputCardHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->ll_camera_scan:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->scanView:Landroid/view/View;

    .line 7
    new-instance v1, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$$ExternalSyntheticLambda0;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    invoke-direct {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->addCardLayoutListener()V

    .line 13
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->llAgreement:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->llAgreement:Landroid/widget/LinearLayout;

    .line 14
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->tvAgreement:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/AgreementTextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    .line 15
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->btn_next:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->btnNext:Landroid/widget/Button;

    const-string v1, "\u786e\u8ba4"

    .line 16
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->btnNext:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->btnNext:Landroid/widget/Button;

    new-instance v1, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$4;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->btnNext:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->setButton(Landroid/view/View;)V

    .line 72
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->addEditText(Landroid/widget/TextView;)V

    .line 74
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->input_card_type:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputCardTypeLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    .line 75
    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/netease/epay/sdk/base_card/R$color;->epaysdk_v3_Text_Lowest:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 76
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->divider_input_card_type:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputCardTypeDivider:Landroid/view/View;

    .line 77
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->divider_input_phone:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputPhoneDivider:Landroid/view/View;

    .line 78
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->input_phone:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputPhoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    .line 79
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->inputLayout:I

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->findV(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

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

.method private showBankCardListView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputCardTypeLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputCardTypeDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputPhoneDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputPhoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->llAgreement:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->btnNext:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->btnNext:Landroid/widget/Button;

    const-string v1, "\u786e\u8ba4"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private trackRecommendCards(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/epay/sdk/base_card/model/SupportAllBank;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;

    .line 4
    invoke-virtual {v2}, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;->isRecommendCard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    invoke-static {v0}, Lcom/netease/epay/sdk/base_card/biz/AddCardLogic;->getRecommendBankData(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "bindRecommendBankList"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {v1}, Lcom/netease/epay/sdk/base_card/biz/AddCardLogic;->getRecommendCardData(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "bindRecommendCardList"

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const-string v1, "click"

    const-string v2, "recommendBankBind"

    if-eqz v0, :cond_2

    const-string v0, "recommendBank"

    .line 14
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    :cond_2
    const-string v0, "recommendCard"

    .line 17
    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public autoJumpToFirstBankPage(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/epay/sdk/base_card/model/SupportAllBank;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected back(Landroid/view/View;)V
    .locals 4

    const-string v0, "topNavigationBar"

    const-string v1, "back"

    const-string v2, "click"

    const/4 v3, 0x0

    .line 1
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->back(Landroid/view/View;)V

    return-void
.end method

.method public bankFilter()Z
    .locals 1

    const/4 v0, 0x0

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->firstPresenter:Lcom/netease/epay/sdk/base_card/presenter/IAddCardPresenter;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/netease/epay/sdk/base_card/presenter/IAddCardPresenter;->changeCard()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u51fa\u9519\u4e86"

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected epayLogoBg()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->lvBanks:Lcom/netease/epay/sdk/base_card/ui/view/CardBankListView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base_card/ui/view/CardBankListView;->getHeaderView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getInputLayout()Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    return-object v0
.end method

.method public getMobilePhone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputPhoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

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
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->isIdentified()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->clearEditTexts()V

    .line 3
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->addEditText(Landroid/widget/TextView;)V

    .line 4
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputPhoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->addEditText(Landroid/widget/TextView;)V

    .line 5
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputPhoneDivider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputPhoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->btnNext:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->btnNext:Landroid/widget/Button;

    const-string v2, "\u540c\u610f\u534f\u8bae\u5e76\u7ee7\u7eed"

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->llAgreement:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    sget v2, Lcom/netease/epay/sdk/base_card/R$string;->epaysdk_addcard_detail_agreement:I

    invoke-virtual {p0, v2}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/epay/sdk/base_card/biz/AddCardUtils;->updateAgreementView(Lcom/netease/epay/sdk/base/view/AgreementTextView;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    iget-object v2, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->defaultSignAgreementInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/netease/epay/sdk/base/view/AgreementTextView;->setAgreementList(Ljava/util/ArrayList;)V

    if-eqz p1, :cond_3

    .line 16
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {p1, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->setVisibility(I)V

    .line 17
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->clear()V

    .line 18
    iget-boolean p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->isNeedCvv2:Z

    const/4 v0, 0x6

    if-eqz p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->add(I)V

    .line 20
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {p1, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    move-result-object p1

    .line 21
    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setImeOptions(I)V

    .line 23
    :cond_0
    iget-boolean p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->showPeriod:Z

    if-eqz p1, :cond_2

    .line 24
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->createItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 26
    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$7;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$7;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)V

    iput-object v0, p1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->listener:Landroid/view/View$OnClickListener;

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->add(Lcom/netease/epay/sdk/base/view/bankinput/InputItem;)V

    .line 46
    :cond_2
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->inflate()V

    .line 47
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->bindButton(Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;)V

    .line 51
    :cond_3
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->updateViews(Landroid/view/View;)V

    return-void
.end method

.method protected initStatusBarColor()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/base_card/R$color;->epaysdk_v3_BG:I

    const-string v2, "epaysdk_nav_bg"

    invoke-static {v0, v2, v1}, Lcom/netease/epay/sdk/base/theme/LightDarkSupport;->getColor(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/netease/epay/sdk/base/util/inbar/InnerBarUtils;->initStatusBarColor(Landroid/app/Activity;I)V

    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 2

    .line 1
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->ll_camera_scan_outside:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->updateScanViewVisible(Landroid/view/View;)V

    .line 3
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->lv_banks:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base_card/ui/view/CardBankListView;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->lvBanks:Lcom/netease/epay/sdk/base_card/ui/view/CardBankListView;

    .line 5
    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->adapter:Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;

    .line 6
    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->lvBanks:Lcom/netease/epay/sdk/base_card/ui/view/CardBankListView;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/base_card/ui/view/CardBankListView;->setAdapter(Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;)V

    .line 7
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->lvBanks:Lcom/netease/epay/sdk/base_card/ui/view/CardBankListView;

    new-instance v1, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$1;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$1;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base_card/ui/view/CardBankListView;->setOnCardBankListViewChangedListener(Lcom/netease/epay/sdk/base_card/ui/view/CardBankListView$OnCardBankListViewChangedListener;)V

    .line 44
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->lvBanks:Lcom/netease/epay/sdk/base_card/ui/view/CardBankListView;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base_card/ui/view/CardBankListView;->setOverlayView(Landroid/view/View;)V

    .line 45
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/UiUtil;->dp2px(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 47
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->lvBanks:Lcom/netease/epay/sdk/base_card/ui/view/CardBankListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 48
    invoke-direct {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->initAddCardView()V

    return-void
.end method

.method protected isIdentified()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->firstPresenter:Lcom/netease/epay/sdk/base_card/presenter/IAddCardPresenter;

    invoke-interface {v0}, Lcom/netease/epay/sdk/base_card/presenter/IAddCardPresenter;->isIdentified()Z

    move-result v0

    return v0
.end method

.method public isInputCardTypeVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputCardTypeLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

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

.method public jumpToBankPage(Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->lvBanks:Lcom/netease/epay/sdk/base_card/ui/view/CardBankListView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base_card/ui/view/CardBankListView;->clearSearchFocus()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    .line 4
    iget-object v1, p1, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;->bankName:Ljava/lang/String;

    const-string v2, "recommendInfo"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->adapter:Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->isFilter()Z

    move-result v1

    const-string v2, "click"

    if-eqz v1, :cond_1

    const-string p1, "searchBankBind"

    const-string v1, "searchBankList"

    .line 7
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;->supportGateSign()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "noCardInputBind"

    const-string v1, "noCardInputList"

    .line 11
    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public jumpToOneKeyAddCardBankList()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->presenter:Lcom/netease/epay/sdk/base_card/presenter/AddCardPresenter;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base_card/presenter/AddCardPresenter;->jumpToOneKeyAddCardBankList()V

    return-void
.end method

.method protected jumpToRecommendBanks(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method synthetic lambda$initAddCardView$1$com-netease-epay-sdk-base_card-ui-AddCardFragment(Landroid/view/View;)V
    .locals 1

    .line 1
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.netease.epaysdk.scan.bankcard"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method synthetic lambda$showCardInfo$3$com-netease-epay-sdk-base_card-ui-AddCardFragment(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->hideSoftInput(Landroid/app/Activity;)V

    .line 2
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->changeCard()V

    return-void
.end method

.method synthetic lambda$updateBankListView$0$com-netease-epay-sdk-base_card-ui-AddCardFragment(Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->jumpToBankPage(Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)V

    return-void
.end method

.method protected nextClick(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputPhoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->getMobilePhone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->checkPhoneInvalid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->firstPresenter:Lcom/netease/epay/sdk/base_card/presenter/IAddCardPresenter;

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->btnNext:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 8
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->firstPresenter:Lcom/netease/epay/sdk/base_card/presenter/IAddCardPresenter;

    invoke-interface {v0, p1}, Lcom/netease/epay/sdk/base_card/presenter/IAddCardPresenter;->nextClick(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "EP1922_P"

    const-string v0, "AddCardFragment firstPresenter is null"

    .line 10
    invoke-static {p1, v0}, Lcom/netease/epay/sdk/base/util/ExceptionUtil;->uploadSentry(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "\u51fa\u9519\u4e86"

    invoke-static {p1, v0}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->ll_camera_scan_outside:I

    if-ne p1, v0, :cond_0

    .line 2
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.netease.epaysdk.scan.bankcard"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    const/4 p1, 0x0

    const-string v0, "normalBind"

    const-string v1, "cardPhoto"

    const-string v2, "click"

    .line 4
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x0

    const-string v0, "enter"

    .line 2
    invoke-virtual {p0, p1, p1, v0, p1}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->trackData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 3
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->bankScanReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.netease.epaysdk.scan.bankcard"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 4
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->recommendCardsChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.netease.epaysdk.addcard.change.recommend.card"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 1
    sget p2, Lcom/netease/epay/sdk/base_card/R$layout;->epaysdk_frag_addcard:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->rootView:Landroid/view/View;

    .line 2
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->initView(Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->rootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->bankScanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->recommendCardsChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->firstPresenter:Lcom/netease/epay/sdk/base_card/presenter/IAddCardPresenter;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lcom/netease/epay/sdk/base_card/presenter/IAddCardPresenter;->destory()V

    :cond_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->initStatusBarColor()V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->presenter:Lcom/netease/epay/sdk/base_card/presenter/AddCardPresenter;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/netease/epay/sdk/base_card/presenter/AddCardPresenter;->initView()V

    :cond_0
    return-void
.end method

.method protected queryCardBin(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->firstPresenter:Lcom/netease/epay/sdk/base_card/presenter/IAddCardPresenter;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/netease/epay/sdk/base_card/presenter/IAddCardPresenter;->queryCardBin(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setButtonEnable(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->btnNext:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public setReSignCard(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "**** **** **** "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    invoke-virtual {p1, v1}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setEnabled(Z)V

    .line 5
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/netease/epay/sdk/base_card/R$color;->epaysdk_v3_Text_Lowest:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setTextColor(I)V

    .line 6
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 8
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
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->cardInfo:Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputCardTypeLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputCardTypeDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputCardTypeLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    const-string v0, "\u9009\u62e9\u94f6\u884c\u548c\u5361\u7c7b\u578b"

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setContent(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputCardTypeLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/netease/epay/sdk/base_card/R$color;->epaysdk_v3_Text_Lowest:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputCardTypeLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setContent(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputCardTypeLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/netease/epay/sdk/base_card/R$color;->epaysdk_v3_Text_Primary:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 12
    :goto_0
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputCardTypeLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$$ExternalSyntheticLambda1;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)V

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->btnNext:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 17
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->isIdentified()Z

    move-result p1

    if-nez p1, :cond_1

    .line 18
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->btnNext:Landroid/widget/Button;

    const-string v0, "\u4e0b\u4e00\u6b65"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public showDiscount(Lcom/netease/epay/sdk/base_card/model/GetDeductionByBankMsg;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->tvOrderDiscount:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 5
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->firstPresenter:Lcom/netease/epay/sdk/base_card/presenter/IAddCardPresenter;

    if-eqz v1, :cond_2

    .line 9
    invoke-interface {v1, v0, p1}, Lcom/netease/epay/sdk/base_card/presenter/IAddCardPresenter;->showDiscount(Landroid/widget/TextView;Lcom/netease/epay/sdk/base_card/model/GetDeductionByBankMsg;)V

    :cond_2
    return-void
.end method

.method public showInputAllInfo()V
    .locals 4

    .line 1
    new-instance v0, Lcom/netease/epay/sdk/base_card/biz/TrackProtocolEventBiz;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base_card/biz/TrackProtocolEventBiz;-><init>()V

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->tvAgreement:Lcom/netease/epay/sdk/base/view/AgreementTextView;

    iget-object v3, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->btnNext:Landroid/widget/Button;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/epay/sdk/base_card/biz/TrackProtocolEventBiz;->execute(Landroidx/fragment/app/FragmentActivity;Lcom/netease/epay/sdk/base/view/AgreementTextView;Landroid/widget/Button;)V

    return-void
.end method

.method public showPrefillMobilePhone(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputPhoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

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
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputPhoneDivider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputPhoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputPhoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setContent(Ljava/lang/String;)V

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputPhoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setModifyMode(Z)V

    .line 12
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputPhoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    new-instance v1, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$6;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$6;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)V

    invoke-virtual {p1, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setOnInputTextChangeListener(Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout$OnInputTextChangeListener;)V

    goto :goto_0

    .line 35
    :cond_1
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputPhoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setTipVisible(Z)V

    .line 38
    :goto_0
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    invoke-virtual {p1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->clearEditTexts()V

    .line 39
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->cardLayout:Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    invoke-virtual {p1, v1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->addEditText(Landroid/widget/TextView;)V

    .line 40
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->util:Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputPhoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;->addEditText(Landroid/widget/TextView;)V

    .line 41
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->inputPhoneLayout:Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->setLooseValidation(Z)V

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

    const-string v1, "addCard"

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

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->defaultSignAgreementInfos:Ljava/util/ArrayList;

    .line 3
    iget-object p1, p1, Lcom/netease/epay/sdk/base/model/BankPayGateInfo;->payGateInfo:Lcom/netease/epay/sdk/base/model/PayGateInfo;

    if-eqz p1, :cond_1

    .line 4
    iget-boolean v0, p1, Lcom/netease/epay/sdk/base/model/PayGateInfo;->isNeedCvv2:Z

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->isNeedCvv2:Z

    .line 5
    iget-boolean p1, p1, Lcom/netease/epay/sdk/base/model/PayGateInfo;->showPeriod:Z

    iput-boolean p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->showPeriod:Z

    :cond_1
    return-void
.end method

.method public updateBankListView(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/epay/sdk/base_card/model/SupportAllBank;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->adapter:Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->setData(Ljava/util/ArrayList;)V

    .line 2
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->adapter:Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;

    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment$$ExternalSyntheticLambda3;-><init>(Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;)V

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->setOnItemClickListener(Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$OnItemClickListener;)V

    .line 5
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->lvBanks:Lcom/netease/epay/sdk/base_card/ui/view/CardBankListView;

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->adapter:Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->getArrLetters()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/netease/epay/sdk/base_card/ui/view/CardBankListView;->updateArrLetters([Ljava/lang/String;)V

    return-void
.end method

.method protected updateCreditExpire(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->firstPresenter:Lcom/netease/epay/sdk/base_card/presenter/IAddCardPresenter;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/netease/epay/sdk/base_card/presenter/IAddCardPresenter;->updateCreditExpire(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateInputCardHint()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->lvBanks:Lcom/netease/epay/sdk/base_card/ui/view/CardBankListView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/netease/epay/sdk/base_card/ui/view/CardBankListView;->updateInputCardHint()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->tvInputCardHint:Landroid/widget/TextView;

    if-nez v0, :cond_1

    return-void

    .line 9
    :cond_1
    sget-object v1, Lcom/netease/epay/sdk/base/core/BaseData;->identityInfo:Lcom/netease/epay/sdk/base/model/IdentityInfo;

    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lcom/netease/epay/sdk/base/model/IdentityInfo;->identified:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 10
    iget-object v1, v1, Lcom/netease/epay/sdk/base/model/IdentityInfo;->trueNameMask:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "\u8f93\u5165\u94f6\u884c\u540d\u79f0\u6216%s\u7684\u94f6\u884c\u5361\u53f7"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public updateOrderInfo(Lcom/netease/epay/sdk/base/model/SupportCouponInfo;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->getHeaderView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    sget v1, Lcom/netease/epay/sdk/base_card/R$id;->tv_addcard_top_guide:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 7
    sget v2, Lcom/netease/epay/sdk/base_card/R$id;->tv_addcard_top_guide_tip:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 8
    sget v3, Lcom/netease/epay/sdk/base_card/R$id;->tv_paymethod_order_title:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 9
    sget v4, Lcom/netease/epay/sdk/base_card/R$id;->tv_paymethod_order_amount:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 10
    sget v5, Lcom/netease/epay/sdk/base_card/R$id;->tv_paymethod_order_discount:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->tvOrderDiscount:Landroid/widget/TextView;

    .line 11
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->cannotShowOrderAmount()Z

    move-result v0

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->getTopGuideContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 16
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->tvOrderDiscount:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    invoke-static {v4}, Lcom/netease/epay/sdk/base_card/biz/AddCardUtils;->updateMomeny(Landroid/widget/TextView;)V

    .line 21
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    if-eqz p1, :cond_2

    .line 24
    iget-object v0, p1, Lcom/netease/epay/sdk/base/model/SupportCouponInfo;->amountDesc:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 25
    iget-object p1, p1, Lcom/netease/epay/sdk/base/model/SupportCouponInfo;->amountDesc:Ljava/lang/String;

    sput-object p1, Lcom/netease/epay/sdk/base/core/BaseData;->amountDesc:Ljava/lang/String;

    .line 26
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->tvOrderDiscount:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 27
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->tvOrderDiscount:Landroid/widget/TextView;

    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->amountDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 30
    :cond_2
    iget-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->tvOrderDiscount:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public updateRecommendBanks(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/epay/sdk/base_card/model/SupportAllBank;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/AddCardFragment;->lvBanks:Lcom/netease/epay/sdk/base_card/ui/view/CardBankListView;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base_card/ui/view/CardBankListView;->updateRecommendBanks(Ljava/util/ArrayList;)V

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
