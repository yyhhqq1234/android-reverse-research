.class public Lcom/netease/epay/sdk/pay/c/d;
.super Ljava/lang/Object;
.source "EpayPayShortyPresenter.java"

# interfaces
.implements Lcom/netease/epay/sdk/pay/ui/o$a;


# instance fields
.field private a:Lcom/netease/epay/sdk/pay/ui/o;

.field private b:Lcom/netease/epay/sdk/NetCallback;


# direct methods
.method public constructor <init>(Lcom/netease/epay/sdk/pay/ui/o;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/netease/epay/sdk/pay/c/d$2;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/pay/c/d$2;-><init>(Lcom/netease/epay/sdk/pay/c/d;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/c/d;->b:Lcom/netease/epay/sdk/NetCallback;

    .line 30
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/c/d;->a:Lcom/netease/epay/sdk/pay/ui/o;

    .line 31
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 77
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 79
    :try_start_0
    sget v1, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    if-ltz v1, :cond_0

    .line 80
    const-string v1, "quickPayId"

    sget v2, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    invoke-static {v2}, Lcom/netease/epay/sdk/base/model/Card;->getSelectedCardBankQuickPayId(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    :cond_0
    const-string v1, "challengeType"

    const-string v2, "paypwd"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v1, "shortPwdEncodeFactor"

    invoke-static {}, Lcom/netease/epay/sdk/base/util/LogicUtil;->getFactor()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    const-string v1, "payPwd"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    const-string v1, "hasShortPwd"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 86
    const-string v1, "bizType"

    const-string v2, "order"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/c/d;->a:Lcom/netease/epay/sdk/pay/ui/o;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/pay/ui/o;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 36
    sget v0, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    invoke-static {v0}, Lcom/netease/epay/sdk/base/model/Card;->isSelectedCardBankSend(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lcom/netease/epay/sdk/pay/c/d$1;

    invoke-direct {v0, p0, p1}, Lcom/netease/epay/sdk/pay/c/d$1;-><init>(Lcom/netease/epay/sdk/pay/c/d;Ljava/lang/String;)V

    .line 45
    const-string v1, "validate_pwd.htm"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/epay/sdk/pay/c/d;->a:Lcom/netease/epay/sdk/pay/ui/o;

    invoke-virtual {v3}, Lcom/netease/epay/sdk/pay/ui/o;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/epay/sdk/pay/c/d;->b:Lcom/netease/epay/sdk/NetCallback;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lcom/netease/epay/sdk/base/network/IParamsCallback;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_0
    invoke-static {p1}, Lcom/netease/epay/sdk/base/util/DigestUtil;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/pay/c/d;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
