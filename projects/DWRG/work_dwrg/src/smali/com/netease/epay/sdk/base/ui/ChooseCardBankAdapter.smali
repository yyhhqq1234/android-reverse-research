.class public Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;
.super Landroid/widget/BaseAdapter;
.source "ChooseCardBankAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;->data:Ljava/util/ArrayList;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;->lastSelectBankPosition:I

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 32
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;->data:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;->data:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/SupportBanks;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 70
    int-to-long v0, p1

    return-wide v0
.end method

.method public getLastSelectBankPosition()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;->lastSelectBankPosition:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 76
    if-nez p2, :cond_0

    .line 77
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/netease/epay/sdk/base/R$layout;->epaysdk_item_choose_bank:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 78
    new-instance v1, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter$ViewHolder;-><init>(Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;)V

    .line 79
    sget v0, Lcom/netease/epay/sdk/base/R$id;->tv_bank_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter$ViewHolder;->tvBankInfo:Landroid/widget/TextView;

    .line 80
    sget v0, Lcom/netease/epay/sdk/base/R$id;->iv_item_cards_checked:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter$ViewHolder;->ivChecked:Landroid/widget/ImageView;

    .line 81
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 87
    :goto_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/SupportBanks;

    .line 89
    iget-object v2, v1, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter$ViewHolder;->tvBankInfo:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/model/SupportBanks;->bankName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;->lastSelectBankPosition:I

    if-ne p1, v0, :cond_1

    .line 91
    iget-object v0, v1, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter$ViewHolder;->ivChecked:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    :goto_1
    return-object p2

    .line 83
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, v1, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter$ViewHolder;->ivChecked:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public selectBank(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 44
    iget v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;->lastSelectBankPosition:I

    if-ne v0, p1, :cond_0

    .line 52
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_1

    if-ltz p1, :cond_1

    .line 49
    iput p1, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;->lastSelectBankPosition:I

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/epay/sdk/base/model/SupportBanks;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/epay/sdk/base/model/SupportBanks;>;"
    if-nez p1, :cond_0

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/epay/sdk/base/model/SupportBanks;>;"
    const/4 v0, 0x5

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    .restart local p1    # "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/epay/sdk/base/model/SupportBanks;>;"
    :cond_0
    iput-object p1, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;->data:Ljava/util/ArrayList;

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/netease/epay/sdk/base/ui/ChooseCardBankAdapter;->lastSelectBankPosition:I

    .line 41
    return-void
.end method
