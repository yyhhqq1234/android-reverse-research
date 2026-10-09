.class public Lcom/tencent/msdk/stat/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field public static final APN_PROP_PROXY:Ljava/lang/String; = "proxy"

.field private static PREFERRED_APN_URI:Landroid/net/Uri;

.field private static mImei:Ljava/lang/String;


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/msdk/stat/DeviceInfo;->PREFERRED_APN_URI:Landroid/net/Uri;

    .line 41
    const-string v0, ""

    sput-object v0, Lcom/tencent/msdk/stat/DeviceInfo;->mImei:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/tencent/msdk/stat/DeviceInfo;->mCtx:Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/stat/DeviceInfo;->mPm:Landroid/content/pm/PackageManager;

    .line 46
    return-void
.end method

.method public static getApnProxy(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 251
    const/4 v6, 0x0

    .line 253
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/tencent/msdk/stat/DeviceInfo;->PREFERRED_APN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 255
    if-nez v6, :cond_1

    .line 266
    if-eqz v6, :cond_0

    .line 267
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v8

    .line 256
    :cond_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 257
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    if-eqz v6, :cond_0

    .line 267
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 260
    :cond_2
    :try_start_2
    const-string v0, "proxy"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 266
    .local v8, "strResult":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 267
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 262
    .end local v8    # "strResult":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 263
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 266
    if-eqz v6, :cond_0

    .line 267
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 266
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 267
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/tencent/msdk/stat/DeviceInfo;->mImei:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    sget-object v0, Lcom/tencent/msdk/stat/DeviceInfo;->mImei:Ljava/lang/String;

    .line 136
    :goto_0
    return-object v0

    .line 132
    :cond_0
    invoke-static {}, Lcom/tencent/beacon/event/UserAction;->getQIMEI()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/msdk/stat/DeviceInfo;->mImei:Ljava/lang/String;

    .line 133
    sget-object v0, Lcom/tencent/msdk/stat/DeviceInfo;->mImei:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    const-string v0, ""

    sput-object v0, Lcom/tencent/msdk/stat/DeviceInfo;->mImei:Ljava/lang/String;

    .line 136
    :cond_1
    sget-object v0, Lcom/tencent/msdk/stat/DeviceInfo;->mImei:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getAllDeviceInfo()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 376
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 378
    .local v0, "deviceInfo":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "mid"

    invoke-virtual {p0}, Lcom/tencent/msdk/stat/DeviceInfo;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    const-string v2, "qImei"

    invoke-virtual {p0}, Lcom/tencent/msdk/stat/DeviceInfo;->getQImei()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 381
    const-string v2, "appVersion"

    invoke-virtual {p0}, Lcom/tencent/msdk/stat/DeviceInfo;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    const-string v2, "appVersionCode"

    invoke-virtual {p0}, Lcom/tencent/msdk/stat/DeviceInfo;->getVersionCode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 384
    const-string v2, "osSystem"

    const-string v3, "android"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    const-string v2, "osVersion"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 386
    const-string v2, "deviceResolution"

    invoke-virtual {p0}, Lcom/tencent/msdk/stat/DeviceInfo;->getResolution()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 387
    const-string v2, "deviceApn"

    invoke-virtual {p0}, Lcom/tencent/msdk/stat/DeviceInfo;->getApn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    const-string v2, "mobileService"

    invoke-virtual {p0}, Lcom/tencent/msdk/stat/DeviceInfo;->getProvidersName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 389
    const-string v2, "deviceTradeMark"

    invoke-virtual {p0}, Lcom/tencent/msdk/stat/DeviceInfo;->getBrand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 391
    const-string v2, "deviceManufacturer"

    invoke-virtual {p0}, Lcom/tencent/msdk/stat/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 393
    const-string v2, "deviceModel"

    invoke-virtual {p0}, Lcom/tencent/msdk/stat/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 395
    const-string v2, "deviceImei"

    invoke-static {}, Lcom/tencent/msdk/stat/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 397
    const-string v2, "deviceName"

    invoke-virtual {p0}, Lcom/tencent/msdk/stat/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 398
    const-string v2, "deviceRom"

    invoke-virtual {p0}, Lcom/tencent/msdk/stat/DeviceInfo;->getROMInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 399
    const-string v2, "deviceRam"

    invoke-virtual {p0}, Lcom/tencent/msdk/stat/DeviceInfo;->getRAMInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 400
    const-string v2, "deviceCPU"

    invoke-virtual {p0}, Lcom/tencent/msdk/stat/DeviceInfo;->getCpuInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 405
    :goto_0
    return-object v0

    .line 403
    :catch_0
    move-exception v1

    .line 404
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getApn()Ljava/lang/String;
    .locals 9

    .prologue
    .line 182
    const-string v0, ""

    .line 183
    .local v0, "apn":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "connectivity"

    .line 184
    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 185
    .local v2, "cm":Landroid/net/ConnectivityManager;
    if-nez v2, :cond_0

    .line 186
    const-string v7, ""

    move-object v1, v0

    .line 240
    .end local v0    # "apn":Ljava/lang/String;
    .local v1, "apn":Ljava/lang/String;
    :goto_0
    return-object v7

    .line 188
    .end local v1    # "apn":Ljava/lang/String;
    .restart local v0    # "apn":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 189
    .local v4, "info":Landroid/net/NetworkInfo;
    if-nez v4, :cond_1

    .line 190
    const-string v7, ""

    move-object v1, v0

    .end local v0    # "apn":Ljava/lang/String;
    .restart local v1    # "apn":Ljava/lang/String;
    goto :goto_0

    .line 192
    .end local v1    # "apn":Ljava/lang/String;
    .restart local v0    # "apn":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    .line 193
    .local v6, "typeName":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 194
    const-string v7, ""

    move-object v1, v0

    .end local v0    # "apn":Ljava/lang/String;
    .restart local v1    # "apn":Ljava/lang/String;
    goto :goto_0

    .line 197
    .end local v1    # "apn":Ljava/lang/String;
    .restart local v0    # "apn":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "typeName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 199
    sget-object v7, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "WIFI"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 200
    const-string/jumbo v0, "wifi"

    :cond_3
    :goto_1
    move-object v1, v0

    .end local v0    # "apn":Ljava/lang/String;
    .restart local v1    # "apn":Ljava/lang/String;
    move-object v7, v0

    .line 240
    goto :goto_0

    .line 202
    .end local v1    # "apn":Ljava/lang/String;
    .restart local v0    # "apn":Ljava/lang/String;
    :cond_4
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    .line 203
    const-string v7, ""

    move-object v1, v0

    .end local v0    # "apn":Ljava/lang/String;
    .restart local v1    # "apn":Ljava/lang/String;
    goto :goto_0

    .line 205
    .end local v1    # "apn":Ljava/lang/String;
    .restart local v0    # "apn":Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "extraInfo":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "extraInfo:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 209
    const-string v7, "cmwap"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 210
    const-string v0, "cmwap"

    goto :goto_1

    .line 211
    :cond_6
    const-string v7, "cmnet"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "epc.tmobile.com"

    .line 212
    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 213
    :cond_7
    const-string v0, "cmnet"

    goto :goto_1

    .line 214
    :cond_8
    const-string/jumbo v7, "uniwap"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 215
    const-string/jumbo v0, "uniwap"

    goto :goto_1

    .line 216
    :cond_9
    const-string/jumbo v7, "uninet"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 217
    const-string/jumbo v0, "uninet"

    goto :goto_1

    .line 218
    :cond_a
    const-string/jumbo v7, "wap"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 219
    const-string/jumbo v0, "wap"

    goto :goto_1

    .line 220
    :cond_b
    const-string v7, "net"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 221
    const-string v0, "net"

    goto :goto_1

    .line 222
    :cond_c
    const-string v7, "ctwap"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 223
    const-string v0, "ctwap"

    goto/16 :goto_1

    .line 224
    :cond_d
    const-string v7, "ctnet"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 225
    const-string v0, "ctnet"

    goto/16 :goto_1

    .line 226
    :cond_e
    const-string v7, "3gwap"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 227
    const-string v0, "3gwap"

    goto/16 :goto_1

    .line 228
    :cond_f
    const-string v7, "3gnet"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 229
    const-string v0, "3gnet"

    goto/16 :goto_1

    .line 231
    :cond_10
    const-string v7, "#777"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 232
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/msdk/stat/DeviceInfo;->getApnProxy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 233
    .local v5, "proxy":Ljava/lang/String;
    if-eqz v5, :cond_11

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_11

    .line 234
    const-string v0, "cdma wap"

    goto/16 :goto_1

    .line 236
    :cond_11
    const-string v0, "cdma net"

    goto/16 :goto_1
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuInfo()Ljava/lang/String;
    .locals 11

    .prologue
    .line 327
    const/4 v4, -0x1

    .line 328
    .local v4, "maxFreq":I
    const/4 v5, 0x0

    .line 331
    .local v5, "reader":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v9, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    const-string v10, "r"

    invoke-direct {v6, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .local v6, "reader":Ljava/io/RandomAccessFile;
    const/4 v0, 0x0

    .line 334
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 335
    :try_start_1
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 337
    const/4 v0, 0x1

    .line 352
    .end local v3    # "line":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    .line 357
    .end local v0    # "done":Z
    .end local v6    # "reader":Ljava/io/RandomAccessFile;
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 340
    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .restart local v0    # "done":Z
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/RandomAccessFile;
    :cond_2
    :try_start_2
    const-string v9, "\\s+"

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 341
    .local v7, "splits":[Ljava/lang/String;
    array-length v9, v7

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 342
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 343
    .local v8, "timeInState":I
    if-lez v8, :cond_0

    .line 344
    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    div-int/lit16 v2, v9, 0x3e8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 345
    .local v2, "freq":I
    if-le v2, v4, :cond_0

    .line 346
    move v4, v2

    goto :goto_0

    .line 353
    .end local v0    # "done":Z
    .end local v2    # "freq":I
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/RandomAccessFile;
    .end local v7    # "splits":[Ljava/lang/String;
    .end local v8    # "timeInState":I
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 354
    .local v1, "ex":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 353
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .restart local v0    # "done":Z
    .restart local v6    # "reader":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v1

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/RandomAccessFile;
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public getMid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    iget-object v1, p0, Lcom/tencent/msdk/stat/DeviceInfo;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/mid/api/MidService;->getMid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "mid":Ljava/lang/String;
    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 5

    .prologue
    .line 95
    iget-object v3, p0, Lcom/tencent/msdk/stat/DeviceInfo;->mCtx:Landroid/content/Context;

    const-string v4, "connectivity"

    .line 96
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 97
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 98
    const-string v2, ""

    .line 105
    :cond_0
    :goto_0
    return-object v2

    .line 100
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 101
    .local v1, "info":Landroid/net/NetworkInfo;
    const-string v2, ""

    .line 102
    .local v2, "network":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "android"

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 367
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 368
    .local v0, "deviceName":Ljava/lang/String;
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 369
    .local v1, "myDevice":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    .line 370
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    .line 372
    :cond_0
    return-object v0
.end method

.method public getProvidersName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 154
    const/4 v1, 0x0

    .line 155
    .local v1, "ProvidersName":Ljava/lang/String;
    iget-object v5, p0, Lcom/tencent/msdk/stat/DeviceInfo;->mCtx:Landroid/content/Context;

    const-string v6, "phone"

    .line 156
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 159
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .line 162
    .local v0, "IMSI":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 167
    :goto_0
    if-nez v0, :cond_0

    .line 168
    const-string v5, ""

    move-object v2, v1

    .line 178
    .end local v1    # "ProvidersName":Ljava/lang/String;
    .local v2, "ProvidersName":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 163
    .end local v2    # "ProvidersName":Ljava/lang/String;
    .restart local v1    # "ProvidersName":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 164
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v5, "46000"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "46002"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 172
    :cond_1
    const-string/jumbo v1, "\u4e2d\u56fd\u79fb\u52a8"

    :cond_2
    :goto_2
    move-object v2, v1

    .end local v1    # "ProvidersName":Ljava/lang/String;
    .restart local v2    # "ProvidersName":Ljava/lang/String;
    move-object v5, v1

    .line 178
    goto :goto_1

    .line 173
    .end local v2    # "ProvidersName":Ljava/lang/String;
    .restart local v1    # "ProvidersName":Ljava/lang/String;
    :cond_3
    const-string v5, "46001"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 174
    const-string/jumbo v1, "\u4e2d\u56fd\u8054\u901a"

    goto :goto_2

    .line 175
    :cond_4
    const-string v5, "46003"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 176
    const-string/jumbo v1, "\u4e2d\u56fd\u7535\u4fe1"

    goto :goto_2
.end method

.method public getQImei()Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    const/4 v1, 0x0

    .line 142
    .local v1, "qImei":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/tencent/beacon/event/UserAction;->getQIMEI()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 146
    :goto_0
    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    const-string v1, ""

    .line 150
    .end local v1    # "qImei":Ljava/lang/String;
    :cond_0
    return-object v1

    .line 143
    .restart local v1    # "qImei":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getRAMInfo()Ljava/lang/String;
    .locals 12

    .prologue
    .line 287
    const-string v6, "/proc/meminfo"

    .line 290
    .local v6, "str1":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 292
    .local v2, "initialMemory":J
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 293
    .local v5, "localFileReader":Ljava/io/FileReader;
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v8, 0x2000

    invoke-direct {v4, v5, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 294
    .local v4, "localBufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 295
    .local v7, "str2":Ljava/lang/String;
    if-nez v7, :cond_0

    .line 296
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 297
    const-string v8, ""

    .line 307
    .end local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .end local v7    # "str2":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 299
    .restart local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .restart local v5    # "localFileReader":Ljava/io/FileReader;
    .restart local v7    # "str2":Ljava/lang/String;
    :cond_0
    const-string v8, "\\s+"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "arrayOfString":[Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x400

    mul-long v2, v8, v10

    .line 303
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 304
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 305
    .end local v0    # "arrayOfString":[Ljava/lang/String;
    .end local v4    # "localBufferedReader":Ljava/io/BufferedReader;
    .end local v5    # "localFileReader":Ljava/io/FileReader;
    .end local v7    # "str2":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 307
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, ""

    goto :goto_0
.end method

.method public getROMInfo()Ljava/lang/String;
    .locals 10

    .prologue
    .line 314
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 315
    .local v2, "file":Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 316
    .local v3, "statFs":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v0, v5

    .line 317
    .local v0, "blockSize":J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-long v6, v5

    .line 320
    .local v6, "totalBlocks":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-long v8, v6, v0

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 323
    .local v4, "total":Ljava/lang/String;
    return-object v4
.end method

.method public getResolution()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    iget-object v1, p0, Lcom/tencent/msdk/stat/DeviceInfo;->mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 87
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    if-nez v0, :cond_0

    .line 88
    const-string v1, ""

    .line 90
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getVersionCode()I
    .locals 5

    .prologue
    .line 63
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    iget v2, v2, Lcom/tencent/msdk/WeGame;->appVersionCode:I

    if-ltz v2, :cond_0

    .line 64
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    iget v2, v2, Lcom/tencent/msdk/WeGame;->appVersionCode:I

    .line 72
    :goto_0
    return v2

    .line 68
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/tencent/msdk/stat/DeviceInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/tencent/msdk/stat/DeviceInfo;->mCtx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 69
    .local v0, "appInfo":Landroid/content/pm/PackageInfo;
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    .end local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 49
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/msdk/WeGame;->appVersionName:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/msdk/WeGame;->appVersionName:Ljava/lang/String;

    .line 58
    :goto_0
    return-object v2

    .line 54
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/tencent/msdk/stat/DeviceInfo;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/tencent/msdk/stat/DeviceInfo;->mCtx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 55
    .local v0, "appInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    .end local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    const-string v2, ""

    goto :goto_0
.end method
