.class public Lcom/tencent/msdk/request/BaseRequest;
.super Ljava/lang/Object;
.source "BaseRequest.java"


# instance fields
.field protected appId:Ljava/lang/String;

.field protected channel:Ljava/lang/String;

.field protected offerId:Ljava/lang/String;

.field protected os:Ljava/lang/String;

.field protected platformId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/BaseRequest;->appId:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/BaseRequest;->channel:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/BaseRequest;->offerId:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/request/BaseRequest;->platformId:Ljava/lang/String;

    .line 14
    const-string v0, "android"

    iput-object v0, p0, Lcom/tencent/msdk/request/BaseRequest;->os:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getBaseJson()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 26
    new-instance v1, Lcom/tencent/msdk/remote/api/SafeJSONObject;

    invoke-direct {v1}, Lcom/tencent/msdk/remote/api/SafeJSONObject;-><init>()V

    .line 28
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "appid"

    iget-object v3, p0, Lcom/tencent/msdk/request/BaseRequest;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    const-string v2, "channel"

    iget-object v3, p0, Lcom/tencent/msdk/request/BaseRequest;->channel:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    const-string v2, "offerid"

    iget-object v3, p0, Lcom/tencent/msdk/request/BaseRequest;->offerId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string v2, "platform"

    iget-object v3, p0, Lcom/tencent/msdk/request/BaseRequest;->platformId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v2, "os"

    iget-object v3, p0, Lcom/tencent/msdk/request/BaseRequest;->os:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-object v1

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setBaseInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "channel"    # Ljava/lang/String;
    .param p3, "offerId"    # Ljava/lang/String;
    .param p4, "platformId"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/tencent/msdk/request/BaseRequest;->appId:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/tencent/msdk/request/BaseRequest;->channel:Ljava/lang/String;

    .line 20
    iput-object p3, p0, Lcom/tencent/msdk/request/BaseRequest;->offerId:Ljava/lang/String;

    .line 21
    iput-object p4, p0, Lcom/tencent/msdk/request/BaseRequest;->platformId:Ljava/lang/String;

    .line 22
    return-void
.end method
