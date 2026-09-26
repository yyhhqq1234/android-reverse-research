.class public Lcom/netease/epay/sdk/risk/a/a;
.super Ljava/lang/Object;
.source "EpayRiskSmsPresenter.java"

# interfaces
.implements Lcom/netease/epay/sdk/risk/ui/e$a;


# instance fields
.field public a:Ljava/lang/String;

.field private b:Lcom/netease/epay/sdk/risk/ui/e;

.field private c:Lcom/netease/epay/sdk/NetCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/epay/sdk/NetCallback",
            "<",
            "Lcom/netease/epay/sdk/base/model/SmsCode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netease/epay/sdk/risk/ui/e;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/netease/epay/sdk/risk/a/a$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/risk/a/a$1;-><init>(Lcom/netease/epay/sdk/risk/a/a;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/risk/a/a;->c:Lcom/netease/epay/sdk/NetCallback;

    .line 27
    iput-object p1, p0, Lcom/netease/epay/sdk/risk/a/a;->b:Lcom/netease/epay/sdk/risk/ui/e;

    .line 28
    invoke-virtual {p1}, Lcom/netease/epay/sdk/risk/ui/e;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p1}, Lcom/netease/epay/sdk/risk/ui/e;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "epaysdk_sms_mobile"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/risk/a/a;->a:Ljava/lang/String;

    .line 33
    :goto_0
    return-void

    .line 31
    :cond_0
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->accountMobile:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/epay/sdk/risk/a/a;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic a(Lcom/netease/epay/sdk/risk/a/a;)Lcom/netease/epay/sdk/risk/ui/e;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/netease/epay/sdk/risk/a/a;->b:Lcom/netease/epay/sdk/risk/ui/e;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 37
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->addBizType()Lcom/netease/epay/sdk/model/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 38
    const-string v1, "get_risk_challenge_info.htm"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/epay/sdk/risk/a/a;->b:Lcom/netease/epay/sdk/risk/ui/e;

    invoke-virtual {v3}, Lcom/netease/epay/sdk/risk/ui/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/epay/sdk/risk/a/a;->c:Lcom/netease/epay/sdk/NetCallback;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 39
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 44
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 45
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 46
    const-string v2, "sms"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v2, "challengeInfo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    iget-object v1, p0, Lcom/netease/epay/sdk/risk/a/a;->b:Lcom/netease/epay/sdk/risk/ui/e;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/risk/ui/e;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
