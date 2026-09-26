.class Lcom/netease/epay/sdk/pay/ui/e$2;
.super Ljava/lang/Object;
.source "FingerprintAuthenticationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/e;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/e;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/e$2;->a:Lcom/netease/epay/sdk/pay/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/e$2;->a:Lcom/netease/epay/sdk/pay/ui/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/pay/ui/e;->a(Lcom/netease/epay/sdk/pay/ui/e;Z)V

    .line 66
    return-void
.end method
