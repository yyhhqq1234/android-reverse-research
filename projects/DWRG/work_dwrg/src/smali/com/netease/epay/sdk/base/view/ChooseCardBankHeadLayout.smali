.class public Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;
.super Landroid/widget/LinearLayout;
.source "ChooseCardBankHeadLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout$OnCardTypeSelectListener;
    }
.end annotation


# static fields
.field private static final KEY_TAG_CARD_INDEX:I


# instance fields
.field private cardClickListener:Landroid/view/View$OnClickListener;

.field private cardTypeSelectViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutParamsWidFill_HigWrap:Landroid/widget/LinearLayout$LayoutParams;

.field private onCardTypeSelectListener:Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout$OnCardTypeSelectListener;

.field private selectIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    sget v0, Lcom/netease/epay/sdk/base/R$layout;->epaysdk_item_bank_card:I

    sput v0, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->KEY_TAG_CARD_INDEX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    new-instance v0, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout$1;-><init>(Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->cardClickListener:Landroid/view/View$OnClickListener;

    .line 130
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->layoutParamsWidFill_HigWrap:Landroid/widget/LinearLayout$LayoutParams;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->cardTypeSelectViews:Ljava/util/List;

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->selectIndex:I

    .line 33
    invoke-virtual {p0, v4}, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->setOrientation(I)V

    .line 34
    const-string v0, "\u5361\u7c7b\u578b"

    invoke-direct {p0, v0, p1}, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->createTipView(Ljava/lang/String;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    .line 35
    const-string v1, "\u5361\u7247\u6240\u5c5e\u94f6\u884c\u6216\u5361\u7ec4\u7ec7"

    invoke-direct {p0, v1, p1}, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->createTipView(Ljava/lang/String;Landroid/content/Context;)Landroid/widget/TextView;

    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->layoutParamsWidFill_HigWrap:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v0, v2}, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 38
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->createDivierView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    iget-object v2, p0, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->layoutParamsWidFill_HigWrap:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->createDivierView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 25
    sget v0, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->KEY_TAG_CARD_INDEX:I

    return v0
.end method

.method static synthetic access$100(Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;

    .prologue
    .line 25
    iget v0, p0, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->selectIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;I)I
    .locals 0
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->selectIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;I)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->reFreshSelectImage(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;)Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout$OnCardTypeSelectListener;
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->onCardTypeSelectListener:Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout$OnCardTypeSelectListener;

    return-object v0
.end method

.method private createDivierView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 125
    sget v1, Lcom/netease/epay/sdk/base/R$color;->epaysdk_divier_color:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 126
    return-object v0
.end method

.method private createTipView(Ljava/lang/String;Landroid/content/Context;)Landroid/widget/TextView;
    .locals 3
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 114
    const/16 v1, 0xf

    invoke-static {p2, v1}, Lcom/netease/epay/sdk/base/util/UiUtil;->dp2px(Landroid/content/Context;I)I

    move-result v1

    .line 115
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 116
    const/4 v1, 0x1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 117
    const-string v1, "#999999"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 118
    sget v1, Lcom/netease/epay/sdk/base/R$color;->epaysdk_common_bg:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 119
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-object v0
.end method

.method private reFreshSelectImage(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->cardTypeSelectViews:Ljava/util/List;

    iget v1, p0, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->selectIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->cardTypeSelectViews:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public reloadDatas(Landroid/content/Context;Ljava/util/List;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "selectIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "cards":Ljava/util/List;, "Ljava/util/List<Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;>;"
    const/4 v3, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->getChildCount()I

    move-result v0

    .line 55
    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 56
    const/4 v1, 0x2

    add-int/lit8 v0, v0, -0x4

    invoke-virtual {p0, v1, v0}, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->removeViews(II)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->cardTypeSelectViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;

    .line 61
    if-eqz v0, :cond_4

    .line 62
    sget v1, Lcom/netease/epay/sdk/base/R$layout;->epaysdk_item_choose_bank:I

    const/4 v5, 0x0

    invoke-static {p1, v1, v5}, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 63
    sget v1, Lcom/netease/epay/sdk/base/R$id;->v_divier:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 64
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 65
    sget v1, Lcom/netease/epay/sdk/base/R$id;->iv_item_cards_checked:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 66
    if-eq v2, p3, :cond_1

    .line 67
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 75
    :goto_1
    iget-object v6, p0, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->cardTypeSelectViews:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    sget v1, Lcom/netease/epay/sdk/base/R$id;->tv_bank_name:I

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v6, v0, Lcom/netease/epay/sdk/base/model/SupportCardTypeObj;->description:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    add-int/lit8 v1, v2, 0x2

    iget-object v6, p0, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->layoutParamsWidFill_HigWrap:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v5, v1, v6}, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 78
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/view/View;->setClickable(Z)V

    .line 79
    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    sget v0, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->KEY_TAG_CARD_INDEX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->cardClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    add-int/lit8 v0, v2, 0x1

    :goto_2
    move v2, v0

    .line 84
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 70
    iget-object v6, p0, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->onCardTypeSelectListener:Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout$OnCardTypeSelectListener;

    if-eqz v6, :cond_2

    .line 71
    iget-object v6, p0, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->onCardTypeSelectListener:Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout$OnCardTypeSelectListener;

    invoke-interface {v6, p3, v0}, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout$OnCardTypeSelectListener;->onSelect(ILjava/lang/Object;)V

    .line 73
    :cond_2
    iput p3, p0, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->selectIndex:I

    goto :goto_1

    .line 85
    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public setOnItemSelectedListener(Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout$OnCardTypeSelectListener;)V
    .locals 0
    .param p1, "onCardTypeSelectListener"    # Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout$OnCardTypeSelectListener;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout;->onCardTypeSelectListener:Lcom/netease/epay/sdk/base/view/ChooseCardBankHeadLayout$OnCardTypeSelectListener;

    .line 50
    return-void
.end method
