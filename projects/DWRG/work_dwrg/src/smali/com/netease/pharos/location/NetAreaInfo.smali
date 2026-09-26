.class public Lcom/netease/pharos/location/NetAreaInfo;
.super Ljava/lang/Object;
.source "NetAreaInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetAreaInfo"

.field private static sNetAreaInfo:Lcom/netease/pharos/location/NetAreaInfo;


# instance fields
.field private mIpHashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLocation:Ljava/lang/String;

.field private mTimezonehashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUdphashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/pharos/location/NetAreaInfo;->sNetAreaInfo:Lcom/netease/pharos/location/NetAreaInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/pharos/location/NetAreaInfo;->mLocation:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/location/NetAreaInfo;->mIpHashMap:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/location/NetAreaInfo;->mTimezonehashMap:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/pharos/location/NetAreaInfo;->mUdphashMap:Ljava/util/Map;

    .line 36
    return-void
.end method

.method public static getInstances()Lcom/netease/pharos/location/NetAreaInfo;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/netease/pharos/location/NetAreaInfo;->sNetAreaInfo:Lcom/netease/pharos/location/NetAreaInfo;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/netease/pharos/location/NetAreaInfo;

    invoke-direct {v0}, Lcom/netease/pharos/location/NetAreaInfo;-><init>()V

    sput-object v0, Lcom/netease/pharos/location/NetAreaInfo;->sNetAreaInfo:Lcom/netease/pharos/location/NetAreaInfo;

    .line 42
    :cond_0
    sget-object v0, Lcom/netease/pharos/location/NetAreaInfo;->sNetAreaInfo:Lcom/netease/pharos/location/NetAreaInfo;

    return-object v0
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 339
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-void
.end method


# virtual methods
.method public getDefaultData()Ljava/lang/String;
    .locals 11

    .prologue
    .line 225
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 227
    .local v4, "result":Lorg/json/JSONObject;
    :try_start_0
    const-string v8, "location"

    const-string v9, "cn"

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 230
    .local v3, "iphash":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 231
    .local v0, "continent":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 233
    .local v1, "country":Lorg/json/JSONObject;
    const-string v8, "australia"

    const-string v9, "au"

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const-string v8, "oceania"

    const-string v9, "au"

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    const-string v8, "europe"

    const-string v9, "eu"

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    const-string v8, "china"

    const-string v9, "cn"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    const-string v8, "hongkong"

    const-string v9, "jp"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    const-string v8, "macao"

    const-string v9, "jp"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    const-string v8, "japan"

    const-string v9, "jp"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    const-string v8, "republicofkorea"

    const-string v9, "jp"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string v8, "northKorea"

    const-string v9, "jp"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string v8, "taiwan"

    const-string v9, "jp"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string v8, "singapore"

    const-string v9, "sg"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    const-string v8, "malaysia"

    const-string v9, "sg"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string v8, "thailand"

    const-string v9, "sg"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string v8, "vietnam"

    const-string v9, "sg"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    const-string v8, "indonesia"

    const-string v9, "sg"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    const-string v8, "india"

    const-string v9, "sg"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    const-string v8, "laos"

    const-string v9, "sg"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    const-string v8, "philippines"

    const-string v9, "sg"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    const-string v8, "myanmar"

    const-string v9, "sg"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string v8, "continent"

    invoke-virtual {v3, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string v8, "country"

    invoke-virtual {v3, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string v8, "iphash"

    invoke-virtual {v4, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 259
    .local v6, "timezonehash":Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 260
    .local v5, "timezone":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    .end local v0    # "continent":Lorg/json/JSONObject;
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 261
    .restart local v0    # "continent":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    .end local v1    # "country":Lorg/json/JSONObject;
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 263
    .restart local v1    # "country":Lorg/json/JSONObject;
    const-string v8, "australia"

    const-string v9, "au"

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string v8, "antarctica"

    const-string v9, "au"

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string v8, "europe"

    const-string v9, "eu"

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string v8, "america"

    const-string v9, "us"

    invoke-virtual {v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    const-string v8, "hongkong"

    const-string v9, "jp"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string v8, "macau"

    const-string v9, "jp"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    const-string v8, "pyongyang"

    const-string v9, "jp"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string v8, "seoul"

    const-string v9, "jp"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    const-string v8, "singapore"

    const-string v9, "sg"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    const-string v8, "brunei"

    const-string v9, "sg"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    const-string v8, "kualalumpur"

    const-string v9, "sg"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    const-string v8, "vientiane"

    const-string v9, "sg"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    const-string v8, "jakarta"

    const-string v9, "sg"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    const-string v8, "manila"

    const-string v9, "sg"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    const-string v8, "philippines"

    const-string v9, "sg"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    const-string v8, "manado"

    const-string v9, "sg"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    const-string v8, "mataram"

    const-string v9, "sg"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    const-string v8, "denpasar"

    const-string v9, "sg"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    const-string v8, "ende"

    const-string v9, "sg"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    const-string v8, "raba"

    const-string v9, "sg"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    const-string v8, "singaraja"

    const-string v9, "sg"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    const-string v8, "kupang"

    const-string v9, "sg"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 288
    const-string v8, "+7"

    const-string v9, "sg"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    const-string v8, "+8"

    const-string v9, "cn"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    const-string v8, "+9"

    const-string v9, "jp"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    const-string v8, "default"

    const-string v9, "us"

    invoke-virtual {v5, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    const-string v8, "continent"

    invoke-virtual {v6, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    const-string v8, "country"

    invoke-virtual {v6, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    const-string v8, "timezone"

    invoke-virtual {v6, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 296
    const-string v8, "timezonehash"

    invoke-virtual {v4, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 299
    .local v7, "udphash":Lorg/json/JSONObject;
    const-string v8, "au"

    const-string v9, "54.79.7.114:9999"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 300
    const-string v8, "eu"

    const-string v9, "52.59.177.115:9999"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    const-string v8, "us"

    const-string v9, "13.56.172.0:9999"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    const-string v8, "jp"

    const-string v9, "52.192.8.71:9999"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    const-string v8, "sg"

    const-string v9, "13.228.230.21:9999"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 304
    const-string v8, "cn"

    const-string v9, "106.2.42.123:9999"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    const-string v8, "udphash"

    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    .end local v0    # "continent":Lorg/json/JSONObject;
    .end local v1    # "country":Lorg/json/JSONObject;
    .end local v3    # "iphash":Lorg/json/JSONObject;
    .end local v5    # "timezone":Lorg/json/JSONObject;
    .end local v6    # "timezonehash":Lorg/json/JSONObject;
    .end local v7    # "udphash":Lorg/json/JSONObject;
    :goto_0
    const-string v8, "NetAreaInfo"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\u914d\u7f6e\u6587\u4ef6\u9ed8\u8ba4\u6570\u636e="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 308
    :catch_0
    move-exception v2

    .line 309
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getMudphashMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lcom/netease/pharos/location/NetAreaInfo;->mUdphashMap:Ljava/util/Map;

    return-object v0
.end method

.method public getmIpHashMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/netease/pharos/location/NetAreaInfo;->mIpHashMap:Ljava/util/Map;

    return-object v0
.end method

.method public getmLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/netease/pharos/location/NetAreaInfo;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getmTimezonehashMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, Lcom/netease/pharos/location/NetAreaInfo;->mTimezonehashMap:Ljava/util/Map;

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 17
    .param p1, "resp"    # Ljava/lang/String;

    .prologue
    .line 51
    const-string v14, "NetAreaInfo"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "\u4e0b\u8f7d\u5173\u7cfb\u6620\u5c04\u8868, \u89e3\u6790\u5185\u5bb9---"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 56
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    .local v2, "info":Lorg/json/JSONObject;
    const-string v14, "location"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    const-string v14, "location"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :goto_0
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/netease/pharos/location/NetAreaInfo;->mLocation:Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->getInstances()Lcom/netease/pharos/deviceinfo/DeviceInfo;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/netease/pharos/location/NetAreaInfo;->mLocation:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/netease/pharos/deviceinfo/DeviceInfo;->setmLocation(Ljava/lang/String;)V

    .line 59
    const-string v14, "iphash"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    const-string v14, "iphash"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 61
    .local v3, "iphash":Lorg/json/JSONObject;
    :goto_1
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v14

    if-lez v14, :cond_0

    .line 62
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 64
    .local v4, "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_5

    .line 85
    .end local v4    # "it":Ljava/util/Iterator;
    :cond_0
    const-string v14, "timezonehash"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    const-string v14, "timezonehash"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 87
    .local v9, "timeZoneHash":Lorg/json/JSONObject;
    :goto_3
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lorg/json/JSONObject;->length()I

    move-result v14

    if-lez v14, :cond_1

    .line 88
    invoke-virtual {v9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 90
    .restart local v4    # "it":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_9

    .line 110
    .end local v4    # "it":Ljava/util/Iterator;
    :cond_1
    const-string v14, "udphash"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    const-string v14, "udphash"

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 112
    .local v10, "udpHash":Lorg/json/JSONObject;
    :goto_5
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Lorg/json/JSONObject;->length()I

    move-result v14

    if-lez v14, :cond_2

    .line 113
    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 115
    .restart local v4    # "it":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    if-nez v14, :cond_d

    .line 129
    .end local v2    # "info":Lorg/json/JSONObject;
    .end local v3    # "iphash":Lorg/json/JSONObject;
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v9    # "timeZoneHash":Lorg/json/JSONObject;
    .end local v10    # "udpHash":Lorg/json/JSONObject;
    :cond_2
    :goto_7
    const-string v14, "NetAreaInfo"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "\u4e0b\u8f7d\u5173\u7cfb\u6620\u5c04\u8868, \u89e3\u6790\u5185\u5bb9\uff0c\u7ed3\u679c= "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/netease/pharos/location/NetAreaInfo;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void

    .line 57
    .restart local v2    # "info":Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    const-string v14, ""

    goto/16 :goto_0

    .line 59
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 65
    .restart local v3    # "iphash":Lorg/json/JSONObject;
    .restart local v4    # "it":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 66
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 68
    .local v12, "value":Lorg/json/JSONObject;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;>;"
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lorg/json/JSONObject;->length()I

    move-result v14

    if-lez v14, :cond_6

    .line 71
    invoke-virtual {v12}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 73
    .local v8, "tempIt":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_7

    .line 81
    .end local v8    # "tempIt":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/pharos/location/NetAreaInfo;->mIpHashMap:Ljava/util/Map;

    invoke-interface {v14, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 123
    .end local v2    # "info":Lorg/json/JSONObject;
    .end local v3    # "iphash":Lorg/json/JSONObject;
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;>;"
    .end local v12    # "value":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Lorg/json/JSONException;
    const-string v14, "NetAreaInfo"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "\u4e0b\u8f7d\u5173\u7cfb\u6620\u5c04\u8868, \u89e3\u6790\u5185\u5bb9="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_7

    .line 74
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v2    # "info":Lorg/json/JSONObject;
    .restart local v3    # "iphash":Lorg/json/JSONObject;
    .restart local v4    # "it":Ljava/util/Iterator;
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;>;"
    .restart local v8    # "tempIt":Ljava/util/Iterator;
    .restart local v12    # "value":Lorg/json/JSONObject;
    :cond_7
    :try_start_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 75
    .local v6, "key1":Ljava/lang/String;
    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 76
    .local v13, "value1":Ljava/lang/String;
    new-instance v11, Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v6, v13}, Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;-><init>(Lcom/netease/pharos/location/NetAreaInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .local v11, "unit":Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 85
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "key1":Ljava/lang/String;
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;>;"
    .end local v8    # "tempIt":Ljava/util/Iterator;
    .end local v11    # "unit":Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;
    .end local v12    # "value":Lorg/json/JSONObject;
    .end local v13    # "value1":Ljava/lang/String;
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 91
    .restart local v4    # "it":Ljava/util/Iterator;
    .restart local v9    # "timeZoneHash":Lorg/json/JSONObject;
    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 92
    .restart local v5    # "key":Ljava/lang/String;
    invoke-virtual {v9, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 94
    .restart local v12    # "value":Lorg/json/JSONObject;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .restart local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;>;"
    if-eqz v12, :cond_a

    invoke-virtual {v12}, Lorg/json/JSONObject;->length()I

    move-result v14

    if-lez v14, :cond_a

    .line 97
    invoke-virtual {v12}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 99
    .restart local v8    # "tempIt":Ljava/util/Iterator;
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_b

    .line 106
    .end local v8    # "tempIt":Ljava/util/Iterator;
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/pharos/location/NetAreaInfo;->mTimezonehashMap:Ljava/util/Map;

    invoke-interface {v14, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 100
    .restart local v8    # "tempIt":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 101
    .restart local v6    # "key1":Ljava/lang/String;
    invoke-virtual {v12, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 102
    .restart local v13    # "value1":Ljava/lang/String;
    new-instance v11, Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v6, v13}, Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;-><init>(Lcom/netease/pharos/location/NetAreaInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .restart local v11    # "unit":Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 110
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "key1":Ljava/lang/String;
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;>;"
    .end local v8    # "tempIt":Ljava/util/Iterator;
    .end local v11    # "unit":Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;
    .end local v12    # "value":Lorg/json/JSONObject;
    .end local v13    # "value1":Ljava/lang/String;
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 116
    .restart local v4    # "it":Ljava/util/Iterator;
    .restart local v10    # "udpHash":Lorg/json/JSONObject;
    :cond_d
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 117
    .restart local v5    # "key":Ljava/lang/String;
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 118
    .local v12, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/netease/pharos/location/NetAreaInfo;->mUdphashMap:Ljava/util/Map;

    invoke-interface {v14, v5, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_6
.end method

.method public ipHashMapGetValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 190
    const/4 v4, 0x0

    .line 192
    .local v4, "result":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move-object v5, v4

    .line 211
    .end local v4    # "result":Ljava/lang/String;
    .local v5, "result":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 196
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    :cond_1
    const-string v6, "NetAreaInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mIpHashMap="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/netease/pharos/location/NetAreaInfo;->mIpHashMap:Ljava/util/Map;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v6, p0, Lcom/netease/pharos/location/NetAreaInfo;->mIpHashMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 199
    iget-object v6, p0, Lcom/netease/pharos/location/NetAreaInfo;->mIpHashMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 201
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;>;"
    :cond_3
    move-object v5, v4

    .line 211
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    goto :goto_0

    .line 201
    .end local v5    # "result":Ljava/lang/String;
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;>;"
    .restart local v4    # "result":Ljava/lang/String;
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;

    .line 202
    .local v1, "netAreaInfoUnit":Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;
    iget-object v2, v1, Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;->mKey:Ljava/lang/String;

    .line 203
    .local v2, "pKey":Ljava/lang/String;
    iget-object v3, v1, Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;->mValue:Ljava/lang/String;

    .line 205
    .local v3, "pValue":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 206
    move-object v4, v3

    goto :goto_1
.end method

.method public setMudphashMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 161
    .local p1, "mudphashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/netease/pharos/location/NetAreaInfo;->mUdphashMap:Ljava/util/Map;

    .line 162
    return-void
.end method

.method public setmIpHashMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 145
    .local p1, "mIpHashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;>;>;"
    iput-object p1, p0, Lcom/netease/pharos/location/NetAreaInfo;->mIpHashMap:Ljava/util/Map;

    .line 146
    return-void
.end method

.method public setmLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLocation"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/netease/pharos/location/NetAreaInfo;->mLocation:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setmTimezonehashMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "mTimezonehashMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/ArrayList<Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;>;>;"
    iput-object p1, p0, Lcom/netease/pharos/location/NetAreaInfo;->mTimezonehashMap:Ljava/util/Map;

    .line 154
    return-void
.end method

.method public timezonehashMapGetValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;

    .prologue
    .line 165
    const/4 v4, 0x0

    .line 167
    .local v4, "result":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move-object v5, v4

    .line 186
    .end local v4    # "result":Ljava/lang/String;
    .local v5, "result":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 171
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    :cond_1
    const-string v6, "NetAreaInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mTimezonehashMap="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/netease/pharos/location/NetAreaInfo;->mTimezonehashMap:Ljava/util/Map;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v6, p0, Lcom/netease/pharos/location/NetAreaInfo;->mTimezonehashMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 174
    iget-object v6, p0, Lcom/netease/pharos/location/NetAreaInfo;->mTimezonehashMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 176
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;>;"
    :cond_3
    move-object v5, v4

    .line 186
    .end local v4    # "result":Ljava/lang/String;
    .restart local v5    # "result":Ljava/lang/String;
    goto :goto_0

    .line 176
    .end local v5    # "result":Ljava/lang/String;
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;>;"
    .restart local v4    # "result":Ljava/lang/String;
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;

    .line 177
    .local v1, "netAreaInfoUnit":Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;
    iget-object v2, v1, Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;->mKey:Ljava/lang/String;

    .line 178
    .local v2, "pKey":Ljava/lang/String;
    iget-object v3, v1, Lcom/netease/pharos/location/NetAreaInfo$NetAreaInfoUnit;->mValue:Ljava/lang/String;

    .line 180
    .local v3, "pValue":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 181
    move-object v4, v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 217
    .local v0, "result":Ljava/lang/StringBuffer;
    const-string v1, "mLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/location/NetAreaInfo;->mLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    const-string v1, "mIpHashMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/location/NetAreaInfo;->mIpHashMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    const-string v1, "mTimezonehashMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/location/NetAreaInfo;->mTimezonehashMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    const-string v1, "mudphashMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/pharos/location/NetAreaInfo;->mUdphashMap:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
