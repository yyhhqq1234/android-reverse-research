.class Lcom/netease/epay/sdk/card/ui/b$3;
.super Ljava/lang/Object;
.source "AddCard2Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/card/ui/b;->a(ZLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/card/ui/b;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/card/ui/b;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/netease/epay/sdk/card/ui/b$3;->a:Lcom/netease/epay/sdk/card/ui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/b$3;->a:Lcom/netease/epay/sdk/card/ui/b;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/card/ui/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/netease/epay/sdk/card/ui/b$3$1;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/card/ui/b$3$1;-><init>(Lcom/netease/epay/sdk/card/ui/b$3;)V

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->show(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/view/listener/CreditDatePickListener;)V

    .line 248
    return-void
.end method
