.class public Lcom/netease/epay/sdk/card/a/a;
.super Landroid/widget/BaseAdapter;
.source "CardListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/epay/sdk/card/a/a$a;
    }
.end annotation


# instance fields
.field public a:I

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/epay/sdk/base/model/Card;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/epay/sdk/base/model/Card;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/netease/epay/sdk/card/a/a;->a:I

    .line 21
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/netease/epay/sdk/card/a/a;->c:Landroid/view/LayoutInflater;

    .line 22
    iput-object p2, p0, Lcom/netease/epay/sdk/card/a/a;->b:Ljava/util/ArrayList;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Lcom/netease/epay/sdk/base/model/Card;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/netease/epay/sdk/base/model/Card;->bankName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/epay/sdk/base/model/Card;->cardType:Ljava/lang/String;

    invoke-static {v1}, Lcom/netease/epay/sdk/base/model/Card;->getCardDesFromCardType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\u5c3e\u53f7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/netease/epay/sdk/base/model/Card;->cardNoTail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/netease/epay/sdk/card/a/a;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/card/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netease/epay/sdk/card/a/a;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/card/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/netease/epay/sdk/card/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 67
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 28
    iget-object v1, p0, Lcom/netease/epay/sdk/card/a/a;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netease/epay/sdk/card/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/epay/sdk/base/model/Card;

    move-object v3, v1

    .line 29
    :goto_0
    if-nez v3, :cond_1

    move-object v0, p2

    .line 49
    .end local p2    # "view":Landroid/view/View;
    .local v0, "view":Landroid/view/View;
    :goto_1
    return-object v0

    .end local v0    # "view":Landroid/view/View;
    .restart local p2    # "view":Landroid/view/View;
    :cond_0
    move-object v3, v4

    .line 28
    goto :goto_0

    .line 32
    :cond_1
    if-nez p2, :cond_2

    .line 33
    new-instance v2, Lcom/netease/epay/sdk/card/a/a$a;

    invoke-direct {v2, p0}, Lcom/netease/epay/sdk/card/a/a$a;-><init>(Lcom/netease/epay/sdk/card/a/a;)V

    .line 34
    iget-object v1, p0, Lcom/netease/epay/sdk/card/a/a;->c:Landroid/view/LayoutInflater;

    sget v5, Lcom/netease/epay/sdk/card/R$layout;->epaysdk_item_bank_card:I

    invoke-virtual {v1, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 35
    sget v1, Lcom/netease/epay/sdk/card/R$id;->tv_item_cards_card_info:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/netease/epay/sdk/card/a/a$a;->a:Landroid/widget/TextView;

    .line 36
    sget v1, Lcom/netease/epay/sdk/card/R$id;->iv_item_cards_checked:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/netease/epay/sdk/card/a/a$a;->b:Landroid/widget/ImageView;

    .line 37
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 42
    :goto_2
    invoke-virtual {p0, v3}, Lcom/netease/epay/sdk/card/a/a;->a(Lcom/netease/epay/sdk/base/model/Card;)Ljava/lang/String;

    move-result-object v2

    .line 43
    iget-object v3, v1, Lcom/netease/epay/sdk/card/a/a$a;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget v2, p0, Lcom/netease/epay/sdk/card/a/a;->a:I

    if-ne v2, p1, :cond_3

    .line 45
    iget-object v1, v1, Lcom/netease/epay/sdk/card/a/a$a;->b:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_3
    move-object v0, p2

    .line 49
    .end local p2    # "view":Landroid/view/View;
    .restart local v0    # "view":Landroid/view/View;
    goto :goto_1

    .line 39
    .end local v0    # "view":Landroid/view/View;
    .restart local p2    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/epay/sdk/card/a/a$a;

    goto :goto_2

    .line 47
    :cond_3
    iget-object v1, v1, Lcom/netease/epay/sdk/card/a/a$a;->b:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method
