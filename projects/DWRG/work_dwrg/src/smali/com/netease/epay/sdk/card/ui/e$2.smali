.class Lcom/netease/epay/sdk/card/ui/e$2;
.super Ljava/lang/Object;
.source "ForgetPwdValidateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/card/ui/e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/card/ui/e;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/card/ui/e;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/netease/epay/sdk/card/ui/e$2;->a:Lcom/netease/epay/sdk/card/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/netease/epay/sdk/card/ui/e$2;->a:Lcom/netease/epay/sdk/card/ui/e;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/card/ui/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/netease/epay/sdk/card/ui/e$2$1;

    invoke-direct {v1, p0}, Lcom/netease/epay/sdk/card/ui/e$2$1;-><init>(Lcom/netease/epay/sdk/card/ui/e$2;)V

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/ui/CreditCardDatePickDialog;->show(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/view/listener/CreditDatePickListener;)V

    .line 150
    return-void
.end method
