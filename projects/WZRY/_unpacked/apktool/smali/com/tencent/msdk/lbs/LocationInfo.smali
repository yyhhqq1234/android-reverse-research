.class public Lcom/tencent/msdk/lbs/LocationInfo;
.super Ljava/lang/Object;
.source "LocationInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/lbs/LocationInfo$Wifi;,
        Lcom/tencent/msdk/lbs/LocationInfo$Cell;,
        Lcom/tencent/msdk/lbs/LocationInfo$Location;,
        Lcom/tencent/msdk/lbs/LocationInfo$Attribute;
    }
.end annotation


# instance fields
.field access_token:Ljava/lang/String;

.field address:I

.field attribute:Lcom/tencent/msdk/lbs/LocationInfo$Attribute;

.field cells:Lorg/json/JSONArray;

.field location:Lcom/tencent/msdk/lbs/LocationInfo$Location;

.field source:I

.field version:Ljava/lang/String;

.field wifis:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v5, ""

    iput-object v5, p0, Lcom/tencent/msdk/lbs/LocationInfo;->version:Ljava/lang/String;

    .line 23
    iput v6, p0, Lcom/tencent/msdk/lbs/LocationInfo;->address:I

    .line 24
    iput v6, p0, Lcom/tencent/msdk/lbs/LocationInfo;->source:I

    .line 25
    const-string v5, ""

    iput-object v5, p0, Lcom/tencent/msdk/lbs/LocationInfo;->access_token:Ljava/lang/String;

    .line 26
    new-instance v5, Lcom/tencent/msdk/lbs/LocationInfo$Attribute;

    invoke-direct {v5}, Lcom/tencent/msdk/lbs/LocationInfo$Attribute;-><init>()V

    iput-object v5, p0, Lcom/tencent/msdk/lbs/LocationInfo;->attribute:Lcom/tencent/msdk/lbs/LocationInfo$Attribute;

    .line 27
    new-instance v5, Lcom/tencent/msdk/lbs/LocationInfo$Location;

    invoke-direct {v5}, Lcom/tencent/msdk/lbs/LocationInfo$Location;-><init>()V

    iput-object v5, p0, Lcom/tencent/msdk/lbs/LocationInfo;->location:Lcom/tencent/msdk/lbs/LocationInfo$Location;

    .line 28
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    iput-object v5, p0, Lcom/tencent/msdk/lbs/LocationInfo;->cells:Lorg/json/JSONArray;

    .line 29
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    iput-object v5, p0, Lcom/tencent/msdk/lbs/LocationInfo;->wifis:Lorg/json/JSONArray;

    .line 32
    const-string v5, ""

    iput-object v5, p0, Lcom/tencent/msdk/lbs/LocationInfo;->access_token:Ljava/lang/String;

    .line 33
    iput v6, p0, Lcom/tencent/msdk/lbs/LocationInfo;->address:I

    .line 34
    const-string v5, "0.1.0"

    iput-object v5, p0, Lcom/tencent/msdk/lbs/LocationInfo;->version:Ljava/lang/String;

    .line 35
    const/16 v5, 0x3039

    iput v5, p0, Lcom/tencent/msdk/lbs/LocationInfo;->source:I

    .line 37
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/msdk/WeGame;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/tools/DeviceUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "imei":Ljava/lang/String;
    const-string v2, ""

    .line 40
    .local v2, "imsi":Ljava/lang/String;
    const-string v3, ""

    .line 42
    .local v3, "phoneNum":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v5

    .line 43
    invoke-virtual {v5}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 47
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    :try_start_0
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 53
    :goto_0
    iget-object v5, p0, Lcom/tencent/msdk/lbs/LocationInfo;->attribute:Lcom/tencent/msdk/lbs/LocationInfo$Attribute;

    invoke-virtual {v5, v1}, Lcom/tencent/msdk/lbs/LocationInfo$Attribute;->setImei(Ljava/lang/String;)V

    .line 54
    iget-object v5, p0, Lcom/tencent/msdk/lbs/LocationInfo;->attribute:Lcom/tencent/msdk/lbs/LocationInfo$Attribute;

    invoke-virtual {v5, v2}, Lcom/tencent/msdk/lbs/LocationInfo$Attribute;->setImsi(Ljava/lang/String;)V

    .line 55
    iget-object v5, p0, Lcom/tencent/msdk/lbs/LocationInfo;->attribute:Lcom/tencent/msdk/lbs/LocationInfo$Attribute;

    invoke-virtual {v5, v3}, Lcom/tencent/msdk/lbs/LocationInfo$Attribute;->setPhonenum(Ljava/lang/String;)V

    .line 56
    iget-object v5, p0, Lcom/tencent/msdk/lbs/LocationInfo;->attribute:Lcom/tencent/msdk/lbs/LocationInfo$Attribute;

    const-string v6, "10000"

    invoke-virtual {v5, v6}, Lcom/tencent/msdk/lbs/LocationInfo$Attribute;->setQq(Ljava/lang/String;)V

    .line 57
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 61
    :try_start_0
    new-instance v2, Lorg/json/JSONStringer;

    invoke-direct {v2}, Lorg/json/JSONStringer;-><init>()V

    .line 62
    .local v2, "js":Lorg/json/JSONStringer;
    invoke-virtual {v2}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v3

    const-string/jumbo v4, "version"

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/msdk/lbs/LocationInfo;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v3

    const-string v4, "address"

    .line 63
    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    iget v4, p0, Lcom/tencent/msdk/lbs/LocationInfo;->address:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v3

    const-string v4, "source"

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    iget v4, p0, Lcom/tencent/msdk/lbs/LocationInfo;->source:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v3

    const-string v4, "access_token"

    .line 64
    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/msdk/lbs/LocationInfo;->access_token:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v3

    const-string v4, "attribute"

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/msdk/lbs/LocationInfo;->attribute:Lcom/tencent/msdk/lbs/LocationInfo$Attribute;

    .line 65
    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v3

    const-string v4, "location"

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/msdk/lbs/LocationInfo;->location:Lcom/tencent/msdk/lbs/LocationInfo$Location;

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v3

    const-string v4, "cells"

    .line 66
    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/msdk/lbs/LocationInfo;->cells:Lorg/json/JSONArray;

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v3

    const-string/jumbo v4, "wifis"

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/msdk/lbs/LocationInfo;->wifis:Lorg/json/JSONArray;

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v3

    .line 67
    invoke-virtual {v3}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    move-result-object v0

    .line 68
    .local v0, "a":Lorg/json/JSONStringer;
    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 71
    .end local v0    # "a":Lorg/json/JSONStringer;
    .end local v2    # "js":Lorg/json/JSONStringer;
    :goto_0
    return-object v3

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 71
    const-string v3, ""

    goto :goto_0
.end method
