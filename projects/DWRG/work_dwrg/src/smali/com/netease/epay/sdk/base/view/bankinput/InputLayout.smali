.class public Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;
.super Landroid/widget/LinearLayout;
.source "InputLayout.java"


# instance fields
.field private items:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;",
            ">;"
        }
    .end annotation
.end field

.field private types:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->setOrientation(I)V

    .line 28
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->createItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->add(Lcom/netease/epay/sdk/base/view/bankinput/InputItem;)V

    .line 42
    return-void
.end method

.method public add(Lcom/netease/epay/sdk/base/view/bankinput/InputItem;)V
    .locals 3
    .param p1, "item"    # Lcom/netease/epay/sdk/base/view/bankinput/InputItem;

    .prologue
    .line 45
    new-instance v0, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->init(Lcom/netease/epay/sdk/base/view/bankinput/InputItem;)V

    .line 47
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->items:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->items:Ljava/util/HashMap;

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->types:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->types:Ljava/util/ArrayList;

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->items:Ljava/util/HashMap;

    iget v2, p1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->itemType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->types:Ljava/util/ArrayList;

    iget v1, p1, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;->itemType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public bindButton(Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;)V
    .locals 2
    .param p1, "util"    # Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->items:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 79
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 81
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->bindButton(Lcom/netease/epay/sdk/base/util/EditBindButtonUtil;)V

    goto :goto_0

    .line 83
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->removeAllViews()V

    .line 32
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->items:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->items:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->types:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 36
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->types:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 38
    :cond_1
    return-void
.end method

.method public createItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItem;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 93
    new-instance v0, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;

    invoke-direct {v0, p1}, Lcom/netease/epay/sdk/base/view/bankinput/InputItem;-><init>(I)V

    return-object v0
.end method

.method public getContent(I)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 70
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->items:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->items:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    .line 74
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;->getContent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getItem(I)Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->items:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->items:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/bankinput/InputItemLayout;

    goto :goto_0
.end method

.method public inflate()V
    .locals 3

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/base/R$layout;->epaysdk_view_divider:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->types:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->types:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->items:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->types:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->addView(Landroid/view/View;)V

    .line 62
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->types:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/netease/epay/sdk/base/R$layout;->epaysdk_view_left_divider:I

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/bankinput/InputLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/base/R$layout;->epaysdk_view_divider:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 67
    return-void
.end method
