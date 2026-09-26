.class Lcom/netease/epay/sdk/pay/ui/d$1;
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
.field final synthetic a:I

.field final synthetic b:Lcom/netease/epay/sdk/pay/ui/d;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/d;I)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/d$1;->b:Lcom/netease/epay/sdk/pay/ui/d;

    iput p2, p0, Lcom/netease/epay/sdk/pay/ui/d$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/d$1;->b:Lcom/netease/epay/sdk/pay/ui/d;

    iget v1, p0, Lcom/netease/epay/sdk/pay/ui/d$1;->a:I

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/pay/ui/d;->a(Lcom/netease/epay/sdk/pay/ui/d;I)V

    .line 102
    return-void
.end method
