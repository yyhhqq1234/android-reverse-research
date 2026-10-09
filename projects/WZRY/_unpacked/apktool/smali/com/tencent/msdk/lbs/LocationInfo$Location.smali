.class public Lcom/tencent/msdk/lbs/LocationInfo$Location;
.super Lorg/json/JSONObject;
.source "LocationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/lbs/LocationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Location"
.end annotation


# instance fields
.field private additional:Ljava/lang/String;

.field private latitude:D

.field private longitude:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 130
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 131
    iput-wide v0, p0, Lcom/tencent/msdk/lbs/LocationInfo$Location;->latitude:D

    .line 132
    iput-wide v0, p0, Lcom/tencent/msdk/lbs/LocationInfo$Location;->longitude:D

    .line 133
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/lbs/LocationInfo$Location;->additional:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdditional()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/tencent/msdk/lbs/LocationInfo$Location;->additional:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/tencent/msdk/lbs/LocationInfo$Location;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/tencent/msdk/lbs/LocationInfo$Location;->longitude:D

    return-wide v0
.end method

.method public setAdditional(Ljava/lang/String;)V
    .locals 2
    .param p1, "additional"    # Ljava/lang/String;

    .prologue
    .line 165
    :try_start_0
    const-string v1, "additional"

    invoke-virtual {p0, v1, p1}, Lcom/tencent/msdk/lbs/LocationInfo$Location;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setLatitude(D)V
    .locals 3
    .param p1, "latitude"    # D

    .prologue
    .line 141
    :try_start_0
    const-string v1, "latitude"

    invoke-virtual {p0, v1, p1, p2}, Lcom/tencent/msdk/lbs/LocationInfo$Location;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setLongitude(D)V
    .locals 3
    .param p1, "longitude"    # D

    .prologue
    .line 153
    :try_start_0
    const-string v1, "longitude"

    invoke-virtual {p0, v1, p1, p2}, Lcom/tencent/msdk/lbs/LocationInfo$Location;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
