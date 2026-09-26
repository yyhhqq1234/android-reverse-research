.class public Lcom/netease/epay/sdk/base/ui/ServiceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ServiceListAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mServiceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/epay/sdk/base/model/SignAgreementInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/epay/sdk/base/model/SignAgreementInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/epay/sdk/base/model/SignAgreementInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/netease/epay/sdk/base/ui/ServiceListAdapter;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/netease/epay/sdk/base/ui/ServiceListAdapter;->mServiceList:Ljava/util/ArrayList;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ServiceListAdapter;->mServiceList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ServiceListAdapter;->mServiceList:Ljava/util/ArrayList;

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
    .line 53
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ServiceListAdapter;->mServiceList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/ServiceListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/base/R$layout;->epaysdk_item_service:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 41
    sget v0, Lcom/netease/epay/sdk/base/R$id;->tv_service_item:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 42
    iget-object v1, p0, Lcom/netease/epay/sdk/base/ui/ServiceListAdapter;->mServiceList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/epay/sdk/base/model/SignAgreementInfo;

    iget-object v1, v1, Lcom/netease/epay/sdk/base/model/SignAgreementInfo;->agreementTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-object v2
.end method

.method public setDatas(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/epay/sdk/base/model/SignAgreementInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "serviceList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/epay/sdk/base/model/SignAgreementInfo;>;"
    iput-object p1, p0, Lcom/netease/epay/sdk/base/ui/ServiceListAdapter;->mServiceList:Ljava/util/ArrayList;

    .line 31
    return-void
.end method
