.class Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1;
.super Ljava/lang/Object;
.source "IdentityVerificationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1;->a:Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 70
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 71
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 72
    const-string v2, "validContent"

    iget-object v3, p0, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1;->a:Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;

    invoke-static {v3}, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->a(Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;)Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/epay/sdk/base/view/ContentWithSpaceEditText;->getTextWithoutSpace()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    const-string v2, "identityCardItem"

    invoke-static {v0, v2, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    const-string v1, "businessType"

    iget-object v2, p0, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1;->a:Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;

    invoke-static {v2}, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->b(Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    const-string v1, "security_validate.htm"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1;->a:Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;

    new-instance v4, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1$1;

    invoke-direct {v4, p0}, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1$1;-><init>(Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1;)V

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 93
    return-void
.end method
