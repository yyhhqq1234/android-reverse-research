.class public Lcom/tencent/msdk/lbs/LocationInfo$Cell;
.super Lorg/json/JSONObject;
.source "LocationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/lbs/LocationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cell"
.end annotation


# instance fields
.field private cellid:I

.field private lac:I

.field private mcc:I

.field private mnc:I

.field private rssi:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 172
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 173
    iput v0, p0, Lcom/tencent/msdk/lbs/LocationInfo$Cell;->mcc:I

    .line 174
    iput v0, p0, Lcom/tencent/msdk/lbs/LocationInfo$Cell;->mnc:I

    .line 175
    iput v0, p0, Lcom/tencent/msdk/lbs/LocationInfo$Cell;->lac:I

    .line 176
    iput v0, p0, Lcom/tencent/msdk/lbs/LocationInfo$Cell;->cellid:I

    .line 177
    iput v0, p0, Lcom/tencent/msdk/lbs/LocationInfo$Cell;->rssi:I

    return-void
.end method


# virtual methods
.method public getCellid()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/tencent/msdk/lbs/LocationInfo$Cell;->cellid:I

    return v0
.end method

.method public getLac()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/tencent/msdk/lbs/LocationInfo$Cell;->lac:I

    return v0
.end method

.method public getMcc()I
    .locals 1

    .prologue
    .line 229
    iget v0, p0, Lcom/tencent/msdk/lbs/LocationInfo$Cell;->mcc:I

    return v0
.end method

.method public getMnc()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Lcom/tencent/msdk/lbs/LocationInfo$Cell;->mnc:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lcom/tencent/msdk/lbs/LocationInfo$Cell;->rssi:I

    return v0
.end method

.method public setCellid(I)V
    .locals 2
    .param p1, "cellid"    # I

    .prologue
    .line 209
    :try_start_0
    const-string v1, "cellid"

    invoke-virtual {p0, v1, p1}, Lcom/tencent/msdk/lbs/LocationInfo$Cell;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setLac(I)V
    .locals 2
    .param p1, "lac"    # I

    .prologue
    .line 197
    :try_start_0
    const-string v1, "lac"

    invoke-virtual {p0, v1, p1}, Lcom/tencent/msdk/lbs/LocationInfo$Cell;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setMcc(I)V
    .locals 2
    .param p1, "mcc"    # I

    .prologue
    .line 234
    :try_start_0
    const-string v1, "mcc"

    invoke-virtual {p0, v1, p1}, Lcom/tencent/msdk/lbs/LocationInfo$Cell;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setMnc(I)V
    .locals 2
    .param p1, "mnc"    # I

    .prologue
    .line 185
    :try_start_0
    const-string v1, "mnc"

    invoke-virtual {p0, v1, p1}, Lcom/tencent/msdk/lbs/LocationInfo$Cell;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setRssi(I)V
    .locals 2
    .param p1, "rss"    # I

    .prologue
    .line 222
    :try_start_0
    const-string v1, "rss"

    invoke-virtual {p0, v1, p1}, Lcom/tencent/msdk/lbs/LocationInfo$Cell;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
