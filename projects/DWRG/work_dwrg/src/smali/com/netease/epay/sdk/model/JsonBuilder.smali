.class public Lcom/netease/epay/sdk/model/JsonBuilder;
.super Ljava/lang/Object;
.source "JsonBuilder.java"


# static fields
.field public static final APPPLATFORM_ID:Ljava/lang/String; = "appPlatformId"

.field public static final ORDER_ID:Ljava/lang/String; = "orderId"

.field public static final PLATFORM_ID:Ljava/lang/String; = "platformId"

.field public static final SESSION_ID:Ljava/lang/String; = "sessionId"


# instance fields
.field private isForgetPwd:Z

.field private isNeedBizType:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addBizType()Lcom/netease/epay/sdk/model/JsonBuilder;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/epay/sdk/model/JsonBuilder;->isNeedBizType:Z

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/model/JsonBuilder;->isForgetPwd:Z

    .line 30
    return-object p0
.end method

.method public addBizType(Z)Lcom/netease/epay/sdk/model/JsonBuilder;
    .locals 1
    .param p1, "isForgetPwd"    # Z

    .prologue
    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/epay/sdk/model/JsonBuilder;->isNeedBizType:Z

    .line 35
    iput-boolean p1, p0, Lcom/netease/epay/sdk/model/JsonBuilder;->isForgetPwd:Z

    .line 36
    return-object p0
.end method

.method public build()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 41
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 42
    const-string v1, "platformId"

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->orderPlatformId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string v1, "sdkVersion"

    const-string v2, "android4.4.1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v1, "appName"

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->appNameFromSelf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v1, "appVersion"

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->appVersionFromSelf:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string v1, "appPlatformId"

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->appPlatformId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 48
    const-string v2, "appId"

    sget-object v3, Lcom/netease/epay/sdk/base/core/BaseData;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v2, "appName"

    sget-object v3, Lcom/netease/epay/sdk/base/core/BaseData;->appNameFromSelf:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v2, "appVersion"

    sget-object v3, Lcom/netease/epay/sdk/base/core/BaseData;->appVersionFromSelf:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    const-string v2, "appMeta"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v1, "sessionId"

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    sget-object v1, Lcom/netease/epay/sdk/base/core/BaseData;->orderId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    const-string v1, "orderId"

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    :cond_0
    const/4 v1, 0x0

    .line 57
    iget-boolean v2, p0, Lcom/netease/epay/sdk/model/JsonBuilder;->isNeedBizType:Z

    if-eqz v2, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/netease/epay/sdk/model/JsonBuilder;->getRequestBizTypeJsonValue()Ljava/lang/String;

    move-result-object v1

    .line 60
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 61
    const-string v2, "bizType"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 65
    const-string v2, "deviceId"

    sget-object v3, Lcom/netease/epay/sdk/base/core/BaseData;->deviceId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v2, "antiSpamInfo"

    sget-object v3, Lcom/netease/epay/sdk/base/core/BaseData;->riskInfo:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v2, "model"

    sget-object v3, Lcom/netease/epay/sdk/base/core/BaseConstants;->PHONE_MODEL_NAME:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v2, "deviceInfo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v1, "antiSpamInfo"

    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->riskInfo:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-object v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 73
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method public getRequestBizTypeJsonValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 79
    iget-boolean v1, p0, Lcom/netease/epay/sdk/model/JsonBuilder;->isForgetPwd:Z

    if-eqz v1, :cond_0

    .line 81
    const-string v0, "modifyPwd"

    .line 114
    :goto_0
    return-object v0

    .line 83
    :cond_0
    sget v1, Lcom/netease/epay/sdk/base/core/CoreData;->bizType:I

    sparse-switch v1, :sswitch_data_0

    .line 112
    const-string v1, "\u672a\u627e\u5230\u5408\u9002\u7684biztype"

    invoke-static {v1}, Lcom/netease/epay/sdk/base/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :sswitch_0
    const-string v0, "order"

    goto :goto_0

    .line 89
    :sswitch_1
    const-string v0, "charge"

    goto :goto_0

    .line 92
    :sswitch_2
    const-string v0, "withdraw"

    goto :goto_0

    .line 95
    :sswitch_3
    const-string v0, "quickPaySign"

    goto :goto_0

    .line 100
    :sswitch_4
    const-string v0, "modifyPwd"

    goto :goto_0

    .line 103
    :sswitch_5
    const-string v0, "upgrade"

    goto :goto_0

    .line 106
    :sswitch_6
    const-string v0, "login"

    goto :goto_0

    .line 109
    :sswitch_7
    const-string v0, "apply_quhua"

    goto :goto_0

    .line 83
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x322 -> :sswitch_0
        0x323 -> :sswitch_3
        0x385 -> :sswitch_4
        0x386 -> :sswitch_4
        0x387 -> :sswitch_4
        0x38d -> :sswitch_5
        0x38e -> :sswitch_6
        0x392 -> :sswitch_7
    .end sparse-switch
.end method
