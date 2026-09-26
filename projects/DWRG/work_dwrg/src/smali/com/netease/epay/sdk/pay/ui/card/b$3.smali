.class Lcom/netease/epay/sdk/pay/ui/card/b$3;
.super Ljava/lang/Object;
.source "AddCard2Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/card/b;->a(ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/card/b;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/card/b;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/card/b$3;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/card/b$3;->a:Lcom/netease/epay/sdk/pay/ui/card/b;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/card/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/netease/epay/sdk/pay/ui/card/b$3$1;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/pay/ui/card/b$3$1;-><init>(Lcom/netease/epay/sdk/pay/ui/card/b$3;)V

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->show(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/view/listener/CreditDatePickListener;)V

    .line 204
    return-void
.end method
