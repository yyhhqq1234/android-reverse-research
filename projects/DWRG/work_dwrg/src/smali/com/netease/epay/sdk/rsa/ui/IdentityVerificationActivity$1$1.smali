.class Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1$1;
.super Lcom/netease/epay/sdk/NetCallback;
.source "IdentityVerificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1;->onClick(Landroid/view/View;)V
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
.field final synthetic a:Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1$1;->a:Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1;

    invoke-direct {p0}, Lcom/netease/epay/sdk/NetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V
    .locals 4
    .param p1, "activity"    # Landroid/support/v4/app/FragmentActivity;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 79
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 80
    const-string v1, "businessType"

    iget-object v2, p0, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1$1;->a:Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1;

    iget-object v2, v2, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1;->a:Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;

    invoke-static {v2}, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;->b(Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    const-string v1, "send_auth_code.htm"

    const/4 v2, 0x0

    new-instance v3, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1$1$1;

    invoke-direct {v3, p0}, Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1$1$1;-><init>(Lcom/netease/epay/sdk/rsa/ui/IdentityVerificationActivity$1$1;)V

    invoke-static {v1, v0, v2, p1, v3}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 91
    return-void
.end method
