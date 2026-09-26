.class public abstract Lcom/netease/epay/sdk/base/ui/BaseSDKAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseSDKAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Holder:",
        "Lcom/netease/epay/sdk/base/ui/BaseHolder;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field public context:Landroid/content/Context;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field layoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 20
    .local p0, "this":Lcom/netease/epay/sdk/base/ui/BaseSDKAdapter;, "Lcom/netease/epay/sdk/base/ui/BaseSDKAdapter<TT;THolder;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/BaseSDKAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 22
    iput-object p1, p0, Lcom/netease/epay/sdk/base/ui/BaseSDKAdapter;->context:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public abstract bindData(Lcom/netease/epay/sdk/base/ui/BaseHolder;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THolder;TT;)V"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/BaseSDKAdapter;->datas:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/BaseSDKAdapter;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

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
    .line 37
    .local p0, "this":Lcom/netease/epay/sdk/base/ui/BaseSDKAdapter;, "Lcom/netease/epay/sdk/base/ui/BaseSDKAdapter<TT;THolder;>;"
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/BaseSDKAdapter;->datas:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/BaseSDKAdapter;->datas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

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
    .line 42
    .local p0, "this":Lcom/netease/epay/sdk/base/ui/BaseSDKAdapter;, "Lcom/netease/epay/sdk/base/ui/BaseSDKAdapter<TT;THolder;>;"
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract getLayoutRes()I
.end method

.method public getRealDataPosition(I)I
    .locals 0
    .param p1, "listPosition"    # I

    .prologue
    .line 70
    .local p0, "this":Lcom/netease/epay/sdk/base/ui/BaseSDKAdapter;, "Lcom/netease/epay/sdk/base/ui/BaseSDKAdapter<TT;THolder;>;"
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 48
    .local p0, "this":Lcom/netease/epay/sdk/base/ui/BaseSDKAdapter;, "Lcom/netease/epay/sdk/base/ui/BaseSDKAdapter<TT;THolder;>;"
    if-nez p2, :cond_1

    .line 49
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/BaseSDKAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/BaseSDKAdapter;->getLayoutRes()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 50
    invoke-virtual {p0, p2}, Lcom/netease/epay/sdk/base/ui/BaseSDKAdapter;->newHolder(Landroid/view/View;)Lcom/netease/epay/sdk/base/ui/BaseHolder;

    move-result-object v0

    .line 51
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    :goto_0
    iget-object v1, p0, Lcom/netease/epay/sdk/base/ui/BaseSDKAdapter;->datas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base/ui/BaseSDKAdapter;->getRealDataPosition(I)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 56
    iget-object v1, p0, Lcom/netease/epay/sdk/base/ui/BaseSDKAdapter;->datas:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base/ui/BaseSDKAdapter;->getRealDataPosition(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p0, v0, v1}, Lcom/netease/epay/sdk/base/ui/BaseSDKAdapter;->bindData(Lcom/netease/epay/sdk/base/ui/BaseHolder;Ljava/lang/Object;)V

    .line 61
    :cond_0
    return-object p2

    .line 53
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/ui/BaseHolder;

    goto :goto_0
.end method

.method public abstract newHolder(Landroid/view/View;)Lcom/netease/epay/sdk/base/ui/BaseHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")THolder;"
        }
    .end annotation
.end method

.method public setDatas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/netease/epay/sdk/base/ui/BaseSDKAdapter;, "Lcom/netease/epay/sdk/base/ui/BaseSDKAdapter<TT;THolder;>;"
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/netease/epay/sdk/base/ui/BaseSDKAdapter;->datas:Ljava/util/List;

    .line 27
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/BaseSDKAdapter;->notifyDataSetChanged()V

    .line 28
    return-void
.end method
