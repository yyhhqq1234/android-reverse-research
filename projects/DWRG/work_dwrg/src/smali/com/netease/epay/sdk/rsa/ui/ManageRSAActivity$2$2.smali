.class Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$2;
.super Ljava/lang/Object;
.source "ManageRSAActivity.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$2;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeft()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$2;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;

    iget-object v0, v0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;

    sget v1, Lcom/netease/epay/sdk/rsa/R$string;->epaysdk_uninstall:I

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$2;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;

    iget-object v0, v0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;

    sget v1, Lcom/netease/epay/sdk/rsa/R$string;->epaysdk_do_delete_certificate:I

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRight()Ljava/lang/String;
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$2;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;

    iget-object v0, v0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;

    sget v1, Lcom/netease/epay/sdk/rsa/R$string;->epaysdk_cancel:I

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public leftClick()V
    .locals 5

    .prologue
    .line 189
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 190
    const-string v1, "uninstall_certificate.htm"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$2;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;

    iget-object v3, v3, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;

    new-instance v4, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$2$1;

    invoke-direct {v4, p0}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$2$1;-><init>(Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$2;)V

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 198
    return-void
.end method

.method public rightClick()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method
