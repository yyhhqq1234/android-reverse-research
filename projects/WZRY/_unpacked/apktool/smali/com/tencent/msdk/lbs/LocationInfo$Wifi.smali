.class public Lcom/tencent/msdk/lbs/LocationInfo$Wifi;
.super Lorg/json/JSONObject;
.source "LocationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/lbs/LocationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wifi"
.end annotation


# instance fields
.field private mac:Ljava/lang/String;

.field private rssi:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 241
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 242
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/lbs/LocationInfo$Wifi;->mac:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/tencent/msdk/lbs/LocationInfo$Wifi;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/tencent/msdk/lbs/LocationInfo$Wifi;->rssi:I

    return v0
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 251
    :try_start_0
    const-string v1, "mac"

    invoke-virtual {p0, v1, p1}, Lcom/tencent/msdk/lbs/LocationInfo$Wifi;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setRssi(I)V
    .locals 2
    .param p1, "rssi"    # I

    .prologue
    .line 263
    :try_start_0
    const-string v1, "rssi"

    invoke-virtual {p0, v1, p1}, Lcom/tencent/msdk/lbs/LocationInfo$Wifi;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_0
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
