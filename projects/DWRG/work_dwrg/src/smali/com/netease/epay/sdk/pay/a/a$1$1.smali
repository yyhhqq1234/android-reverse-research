.class Lcom/netease/epay/sdk/pay/a/a$1$1;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "EpayQuotaDealer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/a/a$1;->rightClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/a/a$1;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/a/a$1;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/a/a$1$1;->a:Lcom/netease/epay/sdk/pay/a/a$1;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 2
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 61
    const-string v0, "pay"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/PayController;

    .line 62
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/a/a$1$1;->a:Lcom/netease/epay/sdk/pay/a/a$1;

    iget-object v1, v1, Lcom/netease/epay/sdk/pay/a/a$1;->c:Lcom/netease/epay/sdk/pay/a/a;

    invoke-static {v1}, Lcom/netease/epay/sdk/pay/a/a;->a(Lcom/netease/epay/sdk/pay/a/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/a/a$1$1;->a:Lcom/netease/epay/sdk/pay/a/a$1;

    iget-object v1, v1, Lcom/netease/epay/sdk/pay/a/a$1;->c:Lcom/netease/epay/sdk/pay/a/a;

    invoke-static {v1}, Lcom/netease/epay/sdk/pay/a/a;->a(Lcom/netease/epay/sdk/pay/a/a;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/epay/sdk/pay/PayController;->a:Ljava/lang/String;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a/a$1$1;->a:Lcom/netease/epay/sdk/pay/a/a$1;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/a/a$1;->c:Lcom/netease/epay/sdk/pay/a/a;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/a/a;->b(Lcom/netease/epay/sdk/pay/a/a;)V

    .line 66
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a/a$1$1;->a:Lcom/netease/epay/sdk/pay/a/a$1;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/a/a$1;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 67
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a/a$1$1;->a:Lcom/netease/epay/sdk/pay/a/a$1;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/a/a$1;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->a(Landroid/content/Context;)V

    .line 68
    return-void
.end method
