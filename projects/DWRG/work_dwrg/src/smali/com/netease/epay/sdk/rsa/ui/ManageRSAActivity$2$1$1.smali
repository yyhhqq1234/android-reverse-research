.class Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$1$1;
.super Lcom/netease/epay/sdk/controller/ControllerCallback;
.source "ManageRSAActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/rsa/model/QueryBizPrecheck;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$1;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$1;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$1$1;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$1;

    invoke-direct {p0}, Lcom/netease/epay/sdk/controller/ControllerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public dealResult(Lcom/netease/epay/sdk/controller/ControllerResult;)V
    .locals 3
    .param p1, "controllerResult"    # Lcom/netease/epay/sdk/controller/ControllerResult;

    .prologue
    .line 170
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 171
    iget-boolean v1, p1, Lcom/netease/epay/sdk/controller/ControllerResult;->isSuccess:Z

    if-eqz v1, :cond_0

    .line 172
    const-string v1, "keyStartInstall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$1$1;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$1;

    iget-object v1, v1, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$1;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;

    iget-object v1, v1, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;

    const-class v2, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;

    invoke-static {v1, v2, v0}, Lcom/netease/epay/sdk/base/util/JumpUtil;->go2Activity(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 175
    return-void
.end method
