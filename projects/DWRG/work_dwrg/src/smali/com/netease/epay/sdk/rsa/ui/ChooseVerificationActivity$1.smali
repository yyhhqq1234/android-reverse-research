.class Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity$1;
.super Ljava/lang/Object;
.source "ChooseVerificationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity$1;->a:Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity$1;->a:Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;->a(Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity$1;->a:Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;->finish()V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity$1;->a:Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;->b(Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 67
    const-string v0, "face"

    iget-object v1, p0, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity$1;->a:Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity;

    const-string v2, "verify_installcertificate"

    const/4 v3, 0x0

    .line 68
    invoke-static {v2, v3}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getFaceJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity$1$1;

    invoke-direct {v3, p0}, Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity$1$1;-><init>(Lcom/netease/epay/sdk/rsa/ui/ChooseVerificationActivity$1;)V

    .line 67
    invoke-static {v0, v1, v2, v3}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    goto :goto_0
.end method
