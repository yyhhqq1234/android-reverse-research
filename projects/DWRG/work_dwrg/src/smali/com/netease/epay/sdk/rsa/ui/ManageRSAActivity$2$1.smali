.class Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "ManageRSAActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netease/epay/sdk/NetCallback",
        "<",
        "Lcom/netease/epay/sdk/rsa/model/QueryBizPrecheck;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$1;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/rsa/model/QueryBizPrecheck;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 155
    iget-object v0, p2, Lcom/netease/epay/sdk/rsa/model/QueryBizPrecheck;->preCheckList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/netease/epay/sdk/rsa/model/QueryBizPrecheck;->preCheckList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    iget-object v0, p2, Lcom/netease/epay/sdk/rsa/model/QueryBizPrecheck;->preCheckList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/rsa/model/QueryBizPrecheck$PreCheck;

    iget-object v0, v0, Lcom/netease/epay/sdk/rsa/model/QueryBizPrecheck$PreCheck;->checkType:Ljava/lang/String;

    const-string v1, "IDENTITY_NO&MOBILE_SMS"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 158
    const-string v2, "IdentityVerificationActivity_bindMobile"

    iget-object v0, p2, Lcom/netease/epay/sdk/rsa/model/QueryBizPrecheck;->preCheckList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/rsa/model/QueryBizPrecheck$PreCheck;

    iget-object v0, v0, Lcom/netease/epay/sdk/rsa/model/QueryBizPrecheck$PreCheck;->bindMobile:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v2, "IdentityVerificationActivity_accountName"

    iget-object v0, p2, Lcom/netease/epay/sdk/rsa/model/QueryBizPrecheck;->preCheckList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/rsa/model/QueryBizPrecheck$PreCheck;

    iget-object v0, v0, Lcom/netease/epay/sdk/rsa/model/QueryBizPrecheck$PreCheck;->accountName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v0, "IdentityVerificationActivity_businessType"

    const-string v2, "installCertificate"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p2, Lcom/netease/epay/sdk/rsa/model/QueryBizPrecheck;->preCheckList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$1;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;

    iget-object v0, v0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;

    iget-object v2, p2, Lcom/netease/epay/sdk/rsa/model/QueryBizPrecheck;->preCheckList:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->a(Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const-string v0, "faceDetect"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$1;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;

    iget-object v0, v0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;

    const-class v2, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;

    invoke-static {v0, v2, v1, v4}, Lcom/netease/epay/sdk/base/util/JumpUtil;->go2Activity(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 179
    :cond_1
    :goto_0
    return-void

    .line 165
    :cond_2
    iget-object v0, p2, Lcom/netease/epay/sdk/rsa/model/QueryBizPrecheck;->preCheckList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/rsa/model/QueryBizPrecheck$PreCheck;

    iget-object v0, v0, Lcom/netease/epay/sdk/rsa/model/QueryBizPrecheck$PreCheck;->checkType:Ljava/lang/String;

    const-string v1, "FACE_RECOGNITION"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    const-string v0, "face"

    iget-object v1, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$1;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;

    iget-object v1, v1, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;

    const-string v2, "verify_installcertificate"

    const/4 v3, 0x0

    .line 167
    invoke-static {v2, v3}, Lcom/netease/epay/sdk/controller/ControllerJsonBuilder;->getFaceJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$1$1;

    invoke-direct {v3, p0}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$1$1;-><init>(Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$1;)V

    .line 166
    invoke-static {v0, v1, v2, v3}, Lcom/netease/epay/sdk/controller/ControllerRouter;->route(Ljava/lang/String;Landroid/content/Context;Lorg/json/JSONObject;Lcom/netease/epay/sdk/controller/ControllerCallback;)V

    goto :goto_0
.end method

.method public synthetic success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 152
    check-cast p2, Lcom/netease/epay/sdk/rsa/model/QueryBizPrecheck;

    invoke-virtual {p0, p1, p2}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/rsa/model/QueryBizPrecheck;)V

    return-void
.end method
