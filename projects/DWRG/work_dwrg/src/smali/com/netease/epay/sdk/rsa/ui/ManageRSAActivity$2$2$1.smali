.class Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$2$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "ManageRSAActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$2;->leftClick()V
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
.field final synthetic a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$2;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$2;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$2$1;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$2;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 3
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$2$1;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$2;

    iget-object v0, v0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$2;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;

    iget-object v0, v0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;

    iget-object v1, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$2$1;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$2;

    iget-object v1, v1, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$2;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;

    iget-object v1, v1, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;

    sget v2, Lcom/netease/epay/sdk/rsa/R$string;->epaysdk_uninstall_success:I

    invoke-virtual {v1, v2}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/ToastUtil;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$2$1;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$2;

    iget-object v0, v0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$2;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;

    iget-object v0, v0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->a(Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;ZLjava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$2$1;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$2;

    iget-object v0, v0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$2;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;

    iget-object v0, v0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;

    sget-object v1, Lcom/netease/epay/sdk/base/core/BaseData;->accountId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/rsa/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 196
    return-void
.end method
