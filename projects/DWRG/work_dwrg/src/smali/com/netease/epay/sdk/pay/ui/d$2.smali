.class Lcom/netease/epay/sdk/pay/ui/d$2;
.super Ljava/lang/Object;
.source "DiscountExpandableAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/d;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/netease/epay/sdk/pay/ui/d;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/d;ZI)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/d$2;->c:Lcom/netease/epay/sdk/pay/ui/d;

    iput-boolean p2, p0, Lcom/netease/epay/sdk/pay/ui/d$2;->a:Z

    iput p3, p0, Lcom/netease/epay/sdk/pay/ui/d$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/d$2;->c:Lcom/netease/epay/sdk/pay/ui/d;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/d;->a(Lcom/netease/epay/sdk/pay/ui/d;)Landroid/widget/ExpandableListView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-boolean v0, p0, Lcom/netease/epay/sdk/pay/ui/d$2;->a:Z

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/d$2;->c:Lcom/netease/epay/sdk/pay/ui/d;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/d;->a(Lcom/netease/epay/sdk/pay/ui/d;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget v1, p0, Lcom/netease/epay/sdk/pay/ui/d$2;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/d$2;->c:Lcom/netease/epay/sdk/pay/ui/d;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/d;->a(Lcom/netease/epay/sdk/pay/ui/d;)Landroid/widget/ExpandableListView;

    move-result-object v0

    iget v1, p0, Lcom/netease/epay/sdk/pay/ui/d$2;->b:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_0
.end method
