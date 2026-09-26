.class Lcom/netease/epay/sdk/pay/a/a$1;
.super Ljava/lang/Object;
.source "EpayQuotaDealer.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/a/a;->a(Lcom/netease/epay/sdk/base/network/NewBaseResponse;Landroid/support/v4/app/FragmentActivity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/FragmentActivity;

.field final synthetic b:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

.field final synthetic c:Lcom/netease/epay/sdk/pay/a/a;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/a/a;Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/NewBaseResponse;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/a/a$1;->c:Lcom/netease/epay/sdk/pay/a/a;

    iput-object p2, p0, Lcom/netease/epay/sdk/pay/a/a$1;->a:Landroid/support/v4/app/FragmentActivity;

    iput-object p3, p0, Lcom/netease/epay/sdk/pay/a/a$1;->b:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeft()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a/a$1;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/pay/R$string;->epaysdk_change_paymethod:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a/a$1;->b:Lcom/netease/epay/sdk/base/network/NewBaseResponse;

    iget-object v0, v0, Lcom/netease/epay/sdk/base/network/NewBaseResponse;->retdesc:Ljava/lang/String;

    return-object v0
.end method

.method public getRight()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a/a$1;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/netease/epay/sdk/pay/R$string;->epaysdk_up_limit:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public leftClick()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a/a$1;->a:Landroid/support/v4/app/FragmentActivity;

    instance-of v0, v0, Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a/a$1;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/i;->a(Landroid/support/v4/app/FragmentActivity;)V

    .line 81
    :goto_0
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a/a$1;->c:Lcom/netease/epay/sdk/pay/a/a;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/a/a;->b(Lcom/netease/epay/sdk/pay/a/a;)V

    .line 78
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a/a$1;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 79
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a/a$1;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public rightClick()V
    .locals 4

    .prologue
    .line 57
    const-string v0, "face"

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/a/a$1;->a:Landroid/support/v4/app/FragmentActivity;

    const-string v2, "promote_limit"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getFaceJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/netease/epay/sdk/pay/a/a$1$1;

    invoke-direct {v3, p0}, Lcom/netease/epay/sdk/pay/a/a$1$1;-><init>(Lcom/netease/epay/sdk/pay/a/a$1;)V

    invoke-static {v0, v1, v2, v3}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    .line 70
    return-void
.end method
