.class Lcom/netease/epay/sdk/pay/ui/l$1;
.super Ljava/lang/Object;
.source "PayFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/l;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/l;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/l;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/l$1;->a:Lcom/netease/epay/sdk/pay/ui/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/l$1;->a:Lcom/netease/epay/sdk/pay/ui/l;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/l;->a(Lcom/netease/epay/sdk/pay/ui/l;)Lcom/netease/epay/sdk/pay/ui/l$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/epay/sdk/pay/ui/l$a;->a()V

    .line 72
    return-void
.end method
