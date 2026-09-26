.class public Lcom/netease/epay/sdk/pay/c/e;
.super Ljava/lang/Object;
.source "EpayPaySmsPresenter.java"

# interfaces
.implements Lcom/netease/epay/sdk/pay/ui/p$a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/netease/epay/sdk/pay/ui/p;

.field private e:Lcom/netease/epay/sdk/NetCallback;
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
.method public constructor <init>(Lcom/netease/epay/sdk/pay/ui/p;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/netease/epay/sdk/pay/c/e$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/pay/c/e$1;-><init>(Lcom/netease/epay/sdk/pay/c/e;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/c/e;->e:Lcom/netease/epay/sdk/NetCallback;

    .line 31
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/c/e;->d:Lcom/netease/epay/sdk/pay/ui/p;

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/pay/c/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/c/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/netease/epay/sdk/pay/c/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/c/e;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/netease/epay/sdk/pay/c/e;)Lcom/netease/epay/sdk/pay/ui/p;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/c/e;->d:Lcom/netease/epay/sdk/pay/ui/p;

    return-object v0
.end method

.method static synthetic b(Lcom/netease/epay/sdk/pay/c/e;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/c/e;->b:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 35
    sget-boolean v0, Lcom/netease/epay/sdk/base/core/BaseData;->hasShortPwd:Z

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/c/e;->d:Lcom/netease/epay/sdk/pay/ui/p;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/p;->e()V

    .line 37
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/c/e;->d:Lcom/netease/epay/sdk/pay/ui/p;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/p;->d()V

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/c/e;->d:Lcom/netease/epay/sdk/pay/ui/p;

    sget v0, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/pay/ui/p;->a(Z)V

    .line 40
    return-void

    .line 39
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 46
    :try_start_0
    const-string v1, "challengeType"

    const-string v2, "sms"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    sget v1, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    if-ltz v1, :cond_0

    .line 48
    const-string v1, "chargeId"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/c/e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v1, "attach"

    iget-object v2, p0, Lcom/netease/epay/sdk/pay/c/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    :cond_0
    const-string v1, "authcode"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v1, "hasShortPwd"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 53
    const-string v1, "bizType"

    const-string v2, "order"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/c/e;->d:Lcom/netease/epay/sdk/pay/ui/p;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/pay/ui/p;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public b()V
    .locals 5

    .prologue
    .line 62
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->addBizType()Lcom/netease/epay/sdk/model/JsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 63
    sget v1, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    if-gez v1, :cond_0

    .line 64
    const-string v1, "payMethod"

    const-string v2, "balance"

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    sget-object v1, Lcom/netease/epay/sdk/base/core/BaseData;->accountMobile:Ljava/lang/String;

    iput-object v1, p0, Lcom/netease/epay/sdk/pay/c/e;->c:Ljava/lang/String;

    .line 71
    :goto_0
    const-string v1, "hongbaoIds"

    invoke-static {}, Lcom/netease/epay/sdk/pay/PayConstants;->getSelectedRedPaperId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    const-string v1, "voucherId"

    invoke-static {}, Lcom/netease/epay/sdk/pay/PayConstants;->getSelectedVoucherId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    const-string v1, "promotionId"

    invoke-static {}, Lcom/netease/epay/sdk/pay/PayConstants;->getSelectedPromotionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    const-string v1, "payAdditionalInfo"

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->payAdditionalInfo:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    const-string v1, "send_pay_authcode.htm"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/epay/sdk/pay/c/e;->d:Lcom/netease/epay/sdk/pay/ui/p;

    invoke-virtual {v3}, Lcom/netease/epay/sdk/pay/ui/p;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/epay/sdk/pay/c/e;->e:Lcom/netease/epay/sdk/NetCallback;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 76
    return-void

    .line 67
    :cond_0
    const-string v1, "payMethod"

    const-string v2, "quickpay"

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    const-string v1, "quickPayId"

    sget v2, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    invoke-static {v2}, Lcom/netease/epay/sdk/base/model/Card;->getSelectedCardBankQuickPayId(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    sget v1, Lcom/netease/epay/sdk/base/core/CoreData;->lastCheckIndex:I

    invoke-static {v1}, Lcom/netease/epay/sdk/base/model/Card;->getSelectedCardMobile(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/epay/sdk/pay/c/e;->c:Ljava/lang/String;

    goto :goto_0
.end method
