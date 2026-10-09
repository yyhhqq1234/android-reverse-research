.class public Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;
.super Landroid/widget/BaseAdapter;
.source "CardBankAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$OnItemClickListener;,
        Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;
    }
.end annotation


# static fields
.field public static final FIRSTLETTER:Ljava/lang/String; = "\u514d\u8f93\u5361\u53f7\u6dfb\u52a0"


# instance fields
.field private allData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/epay/sdk/base_card/model/SupportAllBank;",
            ">;"
        }
    .end annotation
.end field

.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/epay/sdk/base_card/model/SupportAllBank;",
            ">;"
        }
    .end annotation
.end field

.field private isFilter:Z

.field private itemClickListener:Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$OnItemClickListener;

.field private layoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->data:Ljava/util/ArrayList;

    .line 3
    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->allData:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->isFilter:Z

    .line 12
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getArrLetters()[Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->allData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/epay/sdk/base_card/model/SupportAllBank;

    .line 3
    iget-object v3, v2, Lcom/netease/epay/sdk/base_card/model/SupportAllBank;->index:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4
    iget-object v2, v2, Lcom/netease/epay/sdk/base_card/model/SupportAllBank;->index:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->data:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getData()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/epay/sdk/base_card/model/SupportAllBank;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->allData:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->allData:Ljava/util/ArrayList;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->allData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->getSectionForPosition(I)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getSectionForPosition(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base_card/model/SupportAllBank;

    iget-object v0, v0, Lcom/netease/epay/sdk/base_card/model/SupportAllBank;->index:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u514d\u8f93\u5361\u53f7\u6dfb\u52a0"

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/epay/sdk/base_card/model/SupportAllBank;

    iget-object p1, p1, Lcom/netease/epay/sdk/base_card/model/SupportAllBank;->index:Ljava/lang/String;

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/netease/epay/sdk/base_card/R$layout;->epaysdk_item_bank:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/netease/epay/sdk/base/theme/LightDarkSupport;->setLightOrDarkMode(Landroid/content/Context;Landroid/view/View;)V

    .line 4
    new-instance p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;-><init>(Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;)V

    .line 5
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->iv_item_cards_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/NetLoadImageView;

    iput-object v0, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->bankIcon:Lcom/netease/epay/sdk/base/view/NetLoadImageView;

    .line 6
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->tv_item_cards_card_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->txtBankName:Landroid/widget/TextView;

    .line 7
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->tv_item_cards_card_discount:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->txtBankDiscount:Landroid/widget/TextView;

    .line 8
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->tv_item_cards_card_tip:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->txtTip:Landroid/widget/TextView;

    .line 9
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->iv_item_cards_next:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->ivNext:Landroid/widget/ImageView;

    .line 10
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->v_divier:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->divider:Landroid/view/View;

    .line 12
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->rl_item_bank_header:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->rlBankHeader:Landroid/view/View;

    .line 13
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->textView_item_firstletter:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->tvfirstletter:Landroid/widget/TextView;

    .line 14
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->rl_item_bank_card:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->rlBank:Landroid/view/View;

    .line 15
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->ll_item_bank_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->rlBankContainer:Landroid/view/View;

    .line 17
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;

    .line 23
    iget-object v1, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->bankIcon:Lcom/netease/epay/sdk/base/view/NetLoadImageView;

    sget v2, Lcom/netease/epay/sdk/base_card/R$drawable;->epaysdk_icon_bankdefault:I

    invoke-virtual {v1, v2}, Lcom/netease/epay/sdk/base/view/NetLoadImageView;->defaultRes(I)Lcom/netease/epay/sdk/base/view/NetLoadImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netease/epay/sdk/base/view/NetLoadImageView;->setImageUrl(Ljava/lang/String;)Lcom/netease/epay/sdk/base/view/NetLoadImageView;

    .line 24
    iget-object v1, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->txtBankName:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;->bankName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-boolean v1, v0, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;->maintain:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    .line 26
    iget-object v1, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->txtBankName:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/netease/epay/sdk/base_card/R$color;->epaysdk_v3_Text_Tertiary:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 27
    iget-object v1, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->bankIcon:Lcom/netease/epay/sdk/base/view/NetLoadImageView;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v1, v4}, Lcom/netease/epay/sdk/base/view/NetLoadImageView;->setAlpha(F)V

    .line 28
    iget-object v1, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->txtBankDiscount:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 29
    iget-object v1, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->ivNext:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 30
    iget-object v1, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->txtTip:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 32
    :cond_1
    iget-object v1, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->txtBankName:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/netease/epay/sdk/base_card/R$color;->epaysdk_v3_Text_Primary:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    iget-object v1, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->bankIcon:Lcom/netease/epay/sdk/base/view/NetLoadImageView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4}, Lcom/netease/epay/sdk/base/view/NetLoadImageView;->setAlpha(F)V

    .line 34
    iget-object v1, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->ivNext:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 35
    iget-object v1, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->txtTip:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 36
    iget-object v1, v0, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;->proposalCoupon:Lcom/netease/epay/sdk/base/model/SupportCouponInfo;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/netease/epay/sdk/base/model/SupportCouponInfo;->amountDesc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 39
    :cond_2
    iget-object v1, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->txtBankDiscount:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 40
    iget-object v1, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->txtBankDiscount:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/netease/epay/sdk/base_card/model/SupportAddBank;->proposalCoupon:Lcom/netease/epay/sdk/base/model/SupportCouponInfo;

    iget-object v4, v4, Lcom/netease/epay/sdk/base/model/SupportCouponInfo;->amountDesc:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 41
    :cond_3
    :goto_1
    iget-object v1, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->txtBankDiscount:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    :goto_2
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->getSectionForPosition(I)Ljava/lang/String;

    move-result-object v1

    .line 49
    iget-object v4, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->tvfirstletter:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    invoke-virtual {p0, v1}, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->getPositionForSection(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_4

    iget-boolean v1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->isFilter:Z

    if-nez v1, :cond_4

    .line 52
    iget-object v1, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->rlBankHeader:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 54
    :cond_4
    iget-object v1, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->rlBankHeader:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 56
    :goto_3
    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 57
    iget-object v1, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->rlBankContainer:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/netease/epay/sdk/base_card/R$drawable;->epaysdk_bg_container_white:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_5
    if-nez p1, :cond_6

    .line 59
    iget-object v1, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->rlBankContainer:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/netease/epay/sdk/base_card/R$drawable;->epaysdk_bg_container_white_top:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 60
    :cond_6
    iget-object v1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v4

    if-ne p1, v1, :cond_7

    .line 61
    iget-object v1, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->rlBankContainer:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/netease/epay/sdk/base_card/R$drawable;->epaysdk_bg_container_white_bottom:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 63
    :cond_7
    iget-object v1, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->rlBankContainer:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/netease/epay/sdk/base_card/R$color;->epaysdk_v3_BG:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 66
    :goto_4
    iget-object v1, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->rlBank:Landroid/view/View;

    new-instance v5, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v0}, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object p3, p3, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$ViewHolder;->divider:Landroid/view/View;

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    if-ne p1, v0, :cond_8

    const/16 v2, 0x8

    :cond_8
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    return-object p2
.end method

.method public isFilter()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->isFilter:Z

    return v0
.end method

.method synthetic lambda$getView$0$com-netease-epay-sdk-base_card-ui-CardBankAdapter(Lcom/netease/epay/sdk/base_card/model/SupportAddBank;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->itemClickListener:Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$OnItemClickListener;

    if-eqz p2, :cond_0

    .line 2
    invoke-interface {p2, p1}, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$OnItemClickListener;->onItemClick(Lcom/netease/epay/sdk/base_card/model/SupportAddBank;)V

    :cond_0
    return-void
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/epay/sdk/base_card/model/SupportAllBank;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->data:Ljava/util/ArrayList;

    .line 4
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->allData:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$OnItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->itemClickListener:Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter$OnItemClickListener;

    return-void
.end method

.method public updateData(Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/epay/sdk/base_card/model/SupportAllBank;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->data:Ljava/util/ArrayList;

    .line 2
    iput-boolean p2, p0, Lcom/netease/epay/sdk/base_card/ui/CardBankAdapter;->isFilter:Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
