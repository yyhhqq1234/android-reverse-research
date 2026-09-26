.class Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$1;
.super Ljava/lang/Object;
.source "SMSVerificationActivity.java"

# interfaces
.implements Lcom/netease/epay/sdk/base/view/SendSmsButton$ISendSmsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$1;->a:Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendSms()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 70
    iget-object v0, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$1;->a:Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;

    invoke-static {v0, v4}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->a(Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;Z)V

    .line 71
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 72
    const-string v1, "businessType"

    iget-object v2, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$1;->a:Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;

    invoke-static {v2}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;->a(Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    const-string v1, "send_auth_code.htm"

    iget-object v2, p0, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$1;->a:Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity;

    new-instance v3, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$1$1;

    invoke-direct {v3, p0}, Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$1$1;-><init>(Lcom/netease/epay/sdk/rsa/ui/SMSVerificationActivity$1;)V

    invoke-static {v1, v0, v4, v2, v3}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 79
    return-void
.end method
