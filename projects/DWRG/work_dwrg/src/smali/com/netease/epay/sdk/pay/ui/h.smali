.class public Lcom/netease/epay/sdk/pay/ui/h;
.super Landroid/widget/BaseAdapter;
.source "PayChooserAdapter.java"


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/epay/sdk/base/model/IPayChooser;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/h;->b:Ljava/util/ArrayList;

    .line 22
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/h;->c:Landroid/content/Context;

    .line 23
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/h;->a:Landroid/view/LayoutInflater;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/ui/h;->b:Ljava/util/ArrayList;

    .line 26
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cardInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/h;->b:Ljava/util/ArrayList;

    sget-object v1, Lcom/netease/epay/sdk/base/core/BaseData;->cardInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 29
    :cond_0
    sget-object v0, Lcom/netease/epay/sdk/pay/c;->a:Lcom/netease/epay/sdk/pay/model/BalanceInfo;

    if-eqz v0, :cond_1

    .line 30
    invoke-static {}, Lcom/netease/epay/sdk/pay/model/BalanceInfo;->isBalanceUsable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/h;->b:Ljava/util/ArrayList;

    const/4 v1, 0x0

    sget-object v2, Lcom/netease/epay/sdk/pay/c;->a:Lcom/netease/epay/sdk/pay/model/BalanceInfo;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 36
    :cond_1
    :goto_0
    return-void

    .line 33
    :cond_2
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/h;->b:Ljava/util/ArrayList;

    sget-object v1, Lcom/netease/epay/sdk/pay/c;->a:Lcom/netease/epay/sdk/pay/model/BalanceInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public a(I)Lcom/netease/epay/sdk/base/model/IPayChooser;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/IPayChooser;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/pay/ui/h;->a(I)Lcom/netease/epay/sdk/base/model/IPayChooser;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 69
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 41
    if-nez p2, :cond_0

    .line 42
    new-instance p2, Lcom/netease/epay/sdk/pay/ui/g;

    .end local p2    # "view":Landroid/view/View;
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/h;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/netease/epay/sdk/pay/ui/g;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 54
    :goto_1
    return-object p2

    .line 44
    .restart local p2    # "view":Landroid/view/View;
    :cond_0
    check-cast p2, Lcom/netease/epay/sdk/pay/ui/g;

    goto :goto_0

    .line 49
    .end local p2    # "view":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/model/IPayChooser;

    .line 50
    invoke-interface {v0}, Lcom/netease/epay/sdk/base/model/IPayChooser;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/netease/epay/sdk/pay/ui/g;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    invoke-interface {v0}, Lcom/netease/epay/sdk/base/model/IPayChooser;->isUsable()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/netease/epay/sdk/pay/ui/g;->setEnabled(Z)V

    .line 52
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/ui/h;->c:Landroid/content/Context;

    invoke-interface {v0}, Lcom/netease/epay/sdk/base/model/IPayChooser;->getBankId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->getIcon(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/netease/epay/sdk/pay/ui/g;->setImageResource(I)V

    .line 53
    invoke-interface {v0}, Lcom/netease/epay/sdk/base/model/IPayChooser;->getDesp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/netease/epay/sdk/pay/ui/g;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
