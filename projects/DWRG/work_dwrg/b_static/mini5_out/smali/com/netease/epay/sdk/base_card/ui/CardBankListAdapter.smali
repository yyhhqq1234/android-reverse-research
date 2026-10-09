.class public Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CardBankListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;,
        Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$OnItemClickListener;
    }
.end annotation


# instance fields
.field private allowEdite:Z

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/epay/sdk/base_card/model/SupportAddBank;",
            ">;"
        }
    .end annotation
.end field

.field private itemClickListener:Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$OnItemClickListener;

.field private layoutInflater:Landroid/view/LayoutInflater;

.field private needBottomDivider:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;->data:Ljava/util/List;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;->needBottomDivider:Z

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;->allowEdite:Z

    .line 11
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;->allowEdite:Z

    return p0
.end method

.method static synthetic access$100(Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;)Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$OnItemClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;->itemClickListener:Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$OnItemClickListener;

    return-object p0
.end method

.method public static updateCardBankItem(Landroid/view/View;Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->bankIcon:Lcom/netease/epay/sdk/base/view/NetLoadImageView;

    sget v1, Lcom/netease/epay/sdk/base_card/R$drawable;->epaysdk_icon_bankdefault:I

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/NetLoadImageView;->defaultRes(I)Lcom/netease/epay/sdk/base/view/NetLoadImageView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/NetLoadImageView;->setImageUrl(Ljava/lang/String;)Lcom/netease/epay/sdk/base/view/NetLoadImageView;

    .line 2
    iget-object v0, p1, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->txtBankName:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;->getRecommendCardName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-boolean v0, p2, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;->maintain:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p1, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->txtBankName:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/netease/epay/sdk/base_card/R$color;->epaysdk_v3_Text_Tertiary:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object p0, p1, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->bankIcon:Lcom/netease/epay/sdk/base/view/NetLoadImageView;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/NetLoadImageView;->setAlpha(F)V

    .line 6
    iget-object p0, p1, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->txtBankDiscount:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object p0, p1, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->ivNext:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object p0, p1, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->txtTip:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 10
    :cond_0
    iget-object v0, p1, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->txtBankName:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/netease/epay/sdk/base_card/R$color;->epaysdk_v3_Text_Primary:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    iget-object p0, p1, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->bankIcon:Lcom/netease/epay/sdk/base/view/NetLoadImageView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/NetLoadImageView;->setAlpha(F)V

    .line 12
    iget-object p0, p1, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->ivNext:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 13
    iget-object p0, p1, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->txtTip:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    iget-object p0, p2, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;->proposalCoupon:Lcom/netease/epay/sdk/base/model/SupportCouponInfo;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/netease/epay/sdk/base/model/SupportCouponInfo;->amountDesc:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 17
    :cond_1
    iget-object p0, p1, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->txtBankDiscount:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    iget-object p0, p1, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->txtBankDiscount:Landroid/widget/TextView;

    iget-object v0, p2, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;->proposalCoupon:Lcom/netease/epay/sdk/base/model/SupportCouponInfo;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/SupportCouponInfo;->amountDesc:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 19
    :cond_2
    :goto_0
    iget-object p0, p1, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->txtBankDiscount:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    :goto_1
    iget-object p0, p1, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->txtCardAdd:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;->isRecommendCard()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;->data:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Lcom/netease/epay/sdk/base_card/model/SupportAddBank;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;->data:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;->data:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;->getItem(I)Lcom/netease/epay/sdk/base_card/model/SupportAddBank;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/netease/epay/sdk/base_card/R$layout;->epaysdk_item_bank_card_one_click:I

    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/netease/epay/sdk/base/theme/LightDarkSupport;->setLightOrDarkMode(Landroid/content/Context;Landroid/view/View;)V

    .line 3
    new-instance v0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;-><init>()V

    .line 4
    sget v1, Lcom/netease/epay/sdk/base_card/R$id;->iv_item_cards_icon:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/netease/epay/sdk/base/view/NetLoadImageView;

    iput-object v1, v0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->bankIcon:Lcom/netease/epay/sdk/base/view/NetLoadImageView;

    .line 5
    sget v1, Lcom/netease/epay/sdk/base_card/R$id;->tv_item_cards_card_name:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->txtBankName:Landroid/widget/TextView;

    .line 6
    sget v1, Lcom/netease/epay/sdk/base_card/R$id;->tv_item_cards_card_discount:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->txtBankDiscount:Landroid/widget/TextView;

    .line 7
    sget v1, Lcom/netease/epay/sdk/base_card/R$id;->tv_item_cards_card_tip:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->txtTip:Landroid/widget/TextView;

    .line 8
    sget v1, Lcom/netease/epay/sdk/base_card/R$id;->iv_item_cards_next:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->ivNext:Landroid/widget/ImageView;

    .line 9
    sget v1, Lcom/netease/epay/sdk/base_card/R$id;->tv_item_cards_add:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->txtCardAdd:Landroid/widget/TextView;

    .line 10
    sget v1, Lcom/netease/epay/sdk/base_card/R$id;->v_divier:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->divider:Landroid/view/View;

    .line 11
    sget v1, Lcom/netease/epay/sdk/base_card/R$id;->v_divier_footer:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->dividerFooter:Landroid/view/View;

    .line 12
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;

    .line 16
    :goto_0
    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;->data:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;

    .line 18
    invoke-static {p2, v0, v1}, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;->updateCardBankItem(Landroid/view/View;Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)V

    .line 20
    new-instance v2, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$1;

    invoke-direct {v2, p0, v1}, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$1;-><init>(Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ne p1, v2, :cond_2

    .line 34
    iget-object p1, v0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->dividerFooter:Landroid/view/View;

    iget-boolean v2, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;->needBottomDivider:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    iget-object p1, v0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->divider:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 37
    :cond_2
    iget-object p1, v0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->dividerFooter:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 38
    iget-object p1, v0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->divider:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 40
    :goto_2
    iget-boolean p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;->allowEdite:Z

    if-eqz p1, :cond_3

    .line 41
    iget-object p1, v0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->ivNext:Landroid/widget/ImageView;

    sget p3, Lcom/netease/epay/sdk/base_card/R$drawable;->epaysdk_icon_close:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 42
    iget-object p1, v0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->ivNext:Landroid/widget/ImageView;

    new-instance p3, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$2;

    invoke-direct {p3, p0, v1}, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$2;-><init>(Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    iget-object p1, v0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->txtCardAdd:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 52
    :cond_3
    iget-object p1, v0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->ivNext:Landroid/widget/ImageView;

    sget v2, Lcom/netease/epay/sdk/base_card/R$drawable;->epaysdk_icon_next:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 53
    iget-object p1, v0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->ivNext:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object p1, v0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$ViewHolder;->txtCardAdd:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;->isRecommendCard()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_3

    :cond_4
    const/16 v3, 0x8

    :goto_3
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    return-object p2
.end method

.method public setAllowEdite(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;->allowEdite:Z

    return-void
.end method

.method public setData(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/epay/sdk/base_card/model/SupportAddBank;",
            ">;Z)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;->data:Ljava/util/List;

    .line 4
    iput-boolean p2, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;->needBottomDivider:Z

    return-void
.end method

.method public setOnItemClickListener(Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$OnItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter;->itemClickListener:Lcom/netease/epay/sdk/base_card/ui/CardBankListAdapter$OnItemClickListener;

    return-void
.end method
