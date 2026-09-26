.class Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;
.super Ljava/lang/Object;
.source "ManageRSAActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->a(Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;)Lcom/netease/epay/sdk/base/view/LongCommonButton;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 150
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 151
    const-string v1, "businessType"

    const-string v2, "installCertificate"

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    const-string v1, "query_biz_precheck_list.htm"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;

    new-instance v4, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$1;

    invoke-direct {v4, p0}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$1;-><init>(Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;)V

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;

    invoke-static {v0}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->b(Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 182
    new-instance v0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$2;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2$2;-><init>(Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;)V

    .line 215
    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;->getInstance(Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;)Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity$2;->a:Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;

    invoke-virtual {v1}, Lcom/netease/epay/sdk/rsa/ui/ManageRSAActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "twoButtonMsg"

    invoke-virtual {v0, v1, v2}, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
