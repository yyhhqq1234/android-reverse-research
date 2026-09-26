.class Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$4;
.super Lcom/netease/epay/sdk/NetCallback;
.source "ManageRSAActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$4;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 5
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 252
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$4;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;

    const-string v1, "activate"

    invoke-static {v0, v3, v1}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->a(Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;ZLjava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$4;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;

    iget-object v1, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$4;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;

    sget v2, Lcom/netease/epay/sdk/rsa/R$string;->epaysdk_validate_success:I

    invoke-virtual {v1, v2}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 254
    sget v0, Lcom/netease/epay/sdk/base/core/CoreData;->bizType:I

    if-ne v0, v3, :cond_0

    .line 256
    const-string v0, "rsa"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/rsa/ManageRSAController;

    .line 257
    if-eqz v0, :cond_0

    .line 258
    new-instance v1, Lcom/netease/epay/sdk/base/event/BaseEvent;

    const-string v2, "000000"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$4;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;

    invoke-direct {v1, v2, v3, v4}, Lcom/netease/epay/sdk/base/event/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/rsa/ManageRSAController;->deal(Lcom/netease/epay/sdk/base/event/BaseEvent;)V

    .line 261
    :cond_0
    return-void
.end method
