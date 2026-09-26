.class Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "ManageRSAActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Lcom/netease/epay/sdk/rsa/model/QueryUserCertificate;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$1;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/rsa/model/QueryUserCertificate;)V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p2, Lcom/netease/epay/sdk/rsa/model/QueryUserCertificate;->userCertificate:Lcom/netease/epay/sdk/rsa/model/UserCertificate;

    .line 87
    iget-boolean v1, v0, Lcom/netease/epay/sdk/rsa/model/UserCertificate;->userHasCertificate:Z

    if-eqz v1, :cond_0

    const-string v1, "activate"

    iget-object v2, v0, Lcom/netease/epay/sdk/rsa/model/UserCertificate;->certificateState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$1;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->accountId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/netease/epay/sdk/rsa/a;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$1;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;

    iget-boolean v2, v0, Lcom/netease/epay/sdk/rsa/model/UserCertificate;->userHasCertificate:Z

    iget-object v0, v0, Lcom/netease/epay/sdk/rsa/model/UserCertificate;->certificateState:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->a(Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;ZLjava/lang/String;)V

    .line 92
    return-void
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 83
    check-cast p2, Lcom/netease/epay/sdk/rsa/model/QueryUserCertificate;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/rsa/model/QueryUserCertificate;)V

    return-void
.end method
