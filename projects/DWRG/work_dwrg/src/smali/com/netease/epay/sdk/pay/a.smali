.class public Lcom/netease/epay/sdk/pay/a;
.super Ljava/lang/Object;
.source "HomePageRequest.java"


# instance fields
.field private a:Lcom/netease/epay/sdk/pay/ui/PayingActivity;

.field private b:Lcom/netease/epay/sdk/pay/PayController;

.field private c:Lcom/netease/epay/sdk/NetCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netease/epay/sdk/NetCallback",
            "<",
            "Lcom/netease/epay/sdk/pay/model/HomeData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netease/epay/sdk/pay/ui/PayingActivity;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/netease/epay/sdk/pay/a$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/pay/a$1;-><init>(Lcom/netease/epay/sdk/pay/a;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/a;->c:Lcom/netease/epay/sdk/NetCallback;

    .line 44
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/a;->a:Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    .line 45
    const-string v0, "pay"

    invoke-static {v0}, Lcom/netease/epay/sdk/controller/ControllerRouter;->getController(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/pay/PayController;

    iput-object v0, p0, Lcom/netease/epay/sdk/pay/a;->b:Lcom/netease/epay/sdk/pay/PayController;

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/pay/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/pay/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 174
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v0

    .line 175
    const-string v1, "paymethod"

    const-string v2, "quickpay"

    invoke-static {v0, v1, v2}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    const-string v1, "cardId"

    invoke-static {v0, v1, p1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    :cond_0
    const-string v1, "get_pay_amount.htm"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/netease/epay/sdk/pay/a;->a:Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    new-instance v4, Lcom/netease/epay/sdk/pay/a$2;

    invoke-direct {v4, p0, p1}, Lcom/netease/epay/sdk/pay/a$2;-><init>(Lcom/netease/epay/sdk/pay/a;Ljava/lang/String;)V

    invoke-static {v1, v0, v2, v3, v4}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;)V

    .line 201
    return-void
.end method

.method static synthetic a(Lcom/netease/epay/sdk/pay/a;)Z
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/netease/epay/sdk/pay/a;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/netease/epay/sdk/pay/a;Lcom/netease/epay/sdk/pay/model/HomeData;)Z
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/pay/a;->a(Lcom/netease/epay/sdk/pay/model/HomeData;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/netease/epay/sdk/pay/model/HomeData;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 154
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/netease/epay/sdk/pay/model/HomeData;->h5Info:Lcom/netease/epay/sdk/pay/model/HomeData$H5Info;

    if-nez v1, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    iget-object v1, p1, Lcom/netease/epay/sdk/pay/model/HomeData;->h5Info:Lcom/netease/epay/sdk/pay/model/HomeData$H5Info;

    iget-object v1, v1, Lcom/netease/epay/sdk/pay/model/HomeData$H5Info;->directUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 159
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/a;->a:Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    const-class v2, Lcom/netease/epay/sdk/pay/ui/WebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    const-string v1, "WebActivity_h5PostUrl"

    iget-object v2, p1, Lcom/netease/epay/sdk/pay/model/HomeData;->h5Info:Lcom/netease/epay/sdk/pay/model/HomeData$H5Info;

    iget-object v2, v2, Lcom/netease/epay/sdk/pay/model/HomeData$H5Info;->directUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    iget-object v1, p0, Lcom/netease/epay/sdk/pay/a;->a:Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    invoke-virtual {v1, v0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->startActivity(Landroid/content/Intent;)V

    .line 162
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a;->a:Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->finish()V

    .line 163
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/netease/epay/sdk/pay/a;)Lcom/netease/epay/sdk/pay/PayController;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a;->b:Lcom/netease/epay/sdk/pay/PayController;

    return-object v0
.end method

.method private b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 133
    .line 136
    const-string v1, "FROZEN"

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->accountState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    const-string v1, "001"

    .line 138
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a;->a:Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/netease/epay/sdk/pay/R$string;->epaysdk_frozen:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 146
    :goto_0
    if-eqz v1, :cond_2

    .line 147
    sget-object v2, Lcom/netease/epay/sdk/Constants;->EXIT_CALLBACK:Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;

    invoke-static {v1, v0, v2}, Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;->getInstance(Ljava/lang/String;Ljava/lang/String;Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment$IOnlyMessageCallback;)Lcom/netease/epay/sdk/base/ui/OnlyMessageFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/epay/sdk/pay/a;->a:Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/util/LogicUtil;->showFragmentInActivity(Lcom/netease/epay/sdk/base/ui/SdkFragment;Landroid/support/v4/app/FragmentActivity;)Z

    .line 148
    const/4 v0, 0x1

    .line 150
    :goto_1
    return v0

    .line 139
    :cond_0
    const-string v1, "REPORT_LOSS"

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->accountState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    const-string v1, "002"

    .line 141
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a;->a:Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/netease/epay/sdk/pay/R$string;->epaysdk_report_loss:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_1
    const-string v1, "REPORT_LOSS_TIMEOUT"

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->accountState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    const-string v1, "003"

    .line 144
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a;->a:Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/pay/ui/PayingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/netease/epay/sdk/pay/R$string;->epaysdk_report_loss_timeout:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/netease/epay/sdk/pay/a;)Lcom/netease/epay/sdk/pay/ui/PayingActivity;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a;->a:Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 49
    new-instance v0, Lcom/netease/epay/sdk/model/JsonBuilder;

    invoke-direct {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/netease/epay/sdk/model/JsonBuilder;->build()Lorg/json/JSONObject;

    move-result-object v1

    .line 50
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/a;->b:Lcom/netease/epay/sdk/pay/PayController;

    iget-object v0, v0, Lcom/netease/epay/sdk/pay/PayController;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 52
    const-string v3, "quickPayId"

    iget-object v4, p0, Lcom/netease/epay/sdk/pay/a;->b:Lcom/netease/epay/sdk/pay/PayController;

    iget-object v4, v4, Lcom/netease/epay/sdk/pay/PayController;->a:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    const-string v3, "quickPayInfo"

    invoke-static {v1, v3, v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 56
    const-string v3, "cookieType"

    sget-object v4, Lcom/netease/epay/sdk/base/core/BaseData;->cookieType:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    const-string v3, "cookieVal"

    sget-object v4, Lcom/netease/epay/sdk/base/core/BaseData;->cookie:Ljava/lang/String;

    invoke-static {v0, v3, v4}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    const-string v3, "type"

    const-string v4, "COOKIE"

    invoke-static {v0, v3, v4}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    const-string v3, "loginParamDto"

    invoke-static {v1, v3, v0}, Lcom/netease/epay/sdk/base/util/LogicUtil;->jsonPut(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    const-string v0, "get_pay_method.htm"

    iget-object v3, p0, Lcom/netease/epay/sdk/pay/a;->a:Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    iget-object v4, p0, Lcom/netease/epay/sdk/pay/a;->c:Lcom/netease/epay/sdk/NetCallback;

    iget-object v5, p0, Lcom/netease/epay/sdk/pay/a;->a:Lcom/netease/epay/sdk/pay/ui/PayingActivity;

    invoke-static {v5}, Lcom/netease/epay/sdk/base/util/AppUtils;->isEpayApp(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v2

    :goto_0
    invoke-static/range {v0 .. v5}, Lcom/netease/epay/sdk/base/network/HttpClient;->startRequest(Ljava/lang/String;Lorg/json/JSONObject;ZLandroid/support/v4/app/FragmentActivity;Lcom/netease/epay/sdk/base/network/INetCallback;Z)V

    .line 61
    return-void

    .line 60
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method
