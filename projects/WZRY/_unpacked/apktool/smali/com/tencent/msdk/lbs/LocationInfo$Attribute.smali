.class public Lcom/tencent/msdk/lbs/LocationInfo$Attribute;
.super Lorg/json/JSONObject;
.source "LocationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/lbs/LocationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attribute"
.end annotation


# instance fields
.field private imei:Ljava/lang/String;

.field private imsi:Ljava/lang/String;

.field private phonenum:Ljava/lang/String;

.field private qq:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/lbs/LocationInfo$Attribute;->imei:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/lbs/LocationInfo$Attribute;->imsi:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/lbs/LocationInfo$Attribute;->phonenum:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/lbs/LocationInfo$Attribute;->qq:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/msdk/lbs/LocationInfo$Attribute;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tencent/msdk/lbs/LocationInfo$Attribute;->imsi:Ljava/lang/String;

    return-object v0
.end method

.method public getPhonenum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/tencent/msdk/lbs/LocationInfo$Attribute;->phonenum:Ljava/lang/String;

    return-object v0
.end method

.method public getQq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/tencent/msdk/lbs/LocationInfo$Attribute;->qq:Ljava/lang/String;

    return-object v0
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 2
    .param p1, "imei"    # Ljava/lang/String;

    .prologue
    .line 87
    :try_start_0
    const-string v1, "imei"

    invoke-virtual {p0, v1, p1}, Lcom/tencent/msdk/lbs/LocationInfo$Attribute;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 2
    .param p1, "imsi"    # Ljava/lang/String;

    .prologue
    .line 99
    :try_start_0
    const-string v1, "imsi"

    invoke-virtual {p0, v1, p1}, Lcom/tencent/msdk/lbs/LocationInfo$Attribute;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPhonenum(Ljava/lang/String;)V
    .locals 2
    .param p1, "phonenum"    # Ljava/lang/String;

    .prologue
    .line 111
    :try_start_0
    const-string v1, "phonenum"

    invoke-virtual {p0, v1, p1}, Lcom/tencent/msdk/lbs/LocationInfo$Attribute;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setQq(Ljava/lang/String;)V
    .locals 2
    .param p1, "qq"    # Ljava/lang/String;

    .prologue
    .line 123
    :try_start_0
    const-string v1, "qq"

    invoke-virtual {p0, v1, p1}, Lcom/tencent/msdk/lbs/LocationInfo$Attribute;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
