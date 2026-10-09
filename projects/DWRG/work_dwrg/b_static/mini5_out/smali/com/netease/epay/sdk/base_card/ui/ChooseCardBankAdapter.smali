.class public Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChooseCardBankAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/epay/sdk/base/model/SupportBanks;",
            ">;"
        }
    .end annotation
.end field

.field private lastSelectBankPosition:I

.field private layoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankAdapter;->data:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankAdapter;->lastSelectBankPosition:I

    .line 9
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankAdapter;->data:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankAdapter;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankAdapter;->data:Ljava/util/ArrayList;

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

.method public getLastSelectBankPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankAdapter;->lastSelectBankPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/netease/epay/sdk/base_card/R$layout;->epaysdk_item_choose_bank:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/netease/epay/sdk/base/theme/LightDarkSupport;->setLightOrDarkMode(Landroid/content/Context;Landroid/view/View;)V

    .line 3
    new-instance p3, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankAdapter$ViewHolder;-><init>(Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankAdapter;)V

    .line 4
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->tv_bank_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankAdapter$ViewHolder;->tvBankInfo:Landroid/widget/TextView;

    .line 5
    sget v0, Lcom/netease/epay/sdk/base_card/R$id;->iv_item_cards_checked:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankAdapter$ViewHolder;->ivChecked:Landroid/widget/ImageView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankAdapter$ViewHolder;

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/SupportBanks;

    .line 14
    iget-object v1, p3, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankAdapter$ViewHolder;->tvBankInfo:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/SupportBanks;->bankName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget v0, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankAdapter;->lastSelectBankPosition:I

    if-ne p1, v0, :cond_1

    .line 16
    iget-object p1, p3, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankAdapter$ViewHolder;->ivChecked:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 18
    :cond_1
    iget-object p1, p3, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankAdapter$ViewHolder;->ivChecked:Landroid/widget/ImageView;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-object p2
.end method

.method public selectBank(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankAdapter;->lastSelectBankPosition:I

    if-ne v0, p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    if-ltz p1, :cond_1

    .line 6
    iput p1, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankAdapter;->lastSelectBankPosition:I

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/epay/sdk/base/model/SupportBanks;",
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
    iput-object p1, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankAdapter;->data:Ljava/util/ArrayList;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/netease/epay/sdk/base_card/ui/ChooseCardBankAdapter;->lastSelectBankPosition:I

    return-void
.end method
