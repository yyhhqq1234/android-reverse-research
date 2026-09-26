.class public Lcom/netease/pharos/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final RAW_OFFSET_EAST_8:I = 0x1b77400

.field private static final TAG:Ljava/lang/String; = "StrUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create2kFile(Landroid/content/Context;)Ljava/io/File;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, "path":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v6, "upload_file.txt"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v3, "file":Ljava/io/File;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 64
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    const/16 v6, 0x800

    :try_start_1
    new-array v0, v6, [B

    .line 71
    .local v0, "buf":[B
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 72
    .local v4, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 73
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 81
    .end local v0    # "buf":[B
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_1
    return-object v3

    .line 65
    :catch_0
    move-exception v2

    .line 66
    .local v2, "e1":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 74
    .end local v2    # "e1":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 75
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 76
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 77
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getCdnChannel(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 395
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 396
    const/4 v1, 0x0

    .line 411
    :cond_0
    :goto_0
    return-object v1

    .line 398
    :cond_1
    move-object v2, p0

    .line 399
    .local v2, "tempUrl":Ljava/lang/String;
    const-string v3, "https://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 400
    const-string v3, "https://"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 404
    :cond_2
    :goto_1
    const-string v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "parts":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 408
    .local v1, "result":Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 409
    const/4 v3, 0x1

    aget-object v1, v0, v3

    goto :goto_0

    .line 401
    .end local v0    # "parts":[Ljava/lang/String;
    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    const-string v3, "http://"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 402
    const-string v3, "http://"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static getCellId(Landroid/content/Context;)I
    .locals 15
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 243
    const/4 v3, -0x1

    .line 245
    .local v3, "cellId":I
    if-nez p0, :cond_0

    .line 246
    const-string v12, "StrUtil"

    const-string v13, "Util [getCellId] context is null"

    invoke-static {v12, v13}, Lcom/netease/pharos/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 288
    .end local v3    # "cellId":I
    .local v4, "cellId":I
    :goto_0
    return v4

    .line 252
    .end local v4    # "cellId":I
    .restart local v3    # "cellId":I
    :cond_0
    :try_start_0
    const-string v12, "connectivity"

    invoke-virtual {p0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 251
    check-cast v5, Landroid/net/ConnectivityManager;

    .line 253
    .local v5, "conMann":Landroid/net/ConnectivityManager;
    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 255
    .local v8, "mobileNetworkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 256
    const-string v12, "phone"

    invoke-virtual {p0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 257
    .local v11, "tel":Landroid/telephony/TelephonyManager;
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    .line 258
    .local v2, "cel":Landroid/telephony/CellLocation;
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v10

    .line 259
    .local v10, "nPhoneType":I
    const-string v12, "StrUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "getCellId nPhoneType="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    instance-of v12, v2, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v12, :cond_2

    .line 262
    const-string v12, "StrUtil"

    const-string v13, "\u79fb\u52a8\u6216\u8054\u901a"

    invoke-static {v12, v13}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    move-object v0, v2

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v7, v0

    .line 264
    .local v7, "gsmCellLocation":Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v7}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 266
    .local v9, "nGSMCID":I
    if-lez v9, :cond_1

    .line 267
    const v12, 0xffff

    if-eq v9, v12, :cond_1

    .line 268
    move v3, v9

    .line 287
    .end local v2    # "cel":Landroid/telephony/CellLocation;
    .end local v5    # "conMann":Landroid/net/ConnectivityManager;
    .end local v7    # "gsmCellLocation":Landroid/telephony/gsm/GsmCellLocation;
    .end local v8    # "mobileNetworkInfo":Landroid/net/NetworkInfo;
    .end local v9    # "nGSMCID":I
    .end local v10    # "nPhoneType":I
    .end local v11    # "tel":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_1
    const-string v12, "StrUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "cellId="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 288
    .end local v3    # "cellId":I
    .restart local v4    # "cellId":I
    goto :goto_0

    .line 272
    .end local v4    # "cellId":I
    .restart local v2    # "cel":Landroid/telephony/CellLocation;
    .restart local v3    # "cellId":I
    .restart local v5    # "conMann":Landroid/net/ConnectivityManager;
    .restart local v8    # "mobileNetworkInfo":Landroid/net/NetworkInfo;
    .restart local v10    # "nPhoneType":I
    .restart local v11    # "tel":Landroid/telephony/TelephonyManager;
    :cond_2
    :try_start_1
    instance-of v12, v2, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v12, :cond_1

    .line 273
    const-string v12, "StrUtil"

    const-string v13, "\u7535\u4fe1"

    invoke-static {v12, v13}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    move-object v0, v2

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v1, v0

    .line 275
    .local v1, "cdmaCellLocation":Landroid/telephony/cdma/CdmaCellLocation;
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v3

    .line 278
    goto :goto_1

    .line 279
    .end local v1    # "cdmaCellLocation":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v2    # "cel":Landroid/telephony/CellLocation;
    .end local v10    # "nPhoneType":I
    .end local v11    # "tel":Landroid/telephony/TelephonyManager;
    :cond_3
    const-string v12, "StrUtil"

    const-string v13, "getCellId \u8fde\u63a5\u7684\u662fWifi\u7f51\u7edc"

    invoke-static {v12, v13}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 283
    .end local v5    # "conMann":Landroid/net/ConnectivityManager;
    .end local v8    # "mobileNetworkInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v6

    .line 284
    .local v6, "e":Ljava/lang/Exception;
    const-string v12, "StrUtil"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "getCellId Exception = "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/netease/pharos/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "deviceId":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 178
    :goto_0
    return-object v0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "StrUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 120
    const-string v1, ""

    .line 122
    .local v1, "result":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 123
    const-string v3, "//"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 124
    .local v2, "start":I
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 125
    const/4 v0, 0x0

    .line 127
    .local v0, "end":I
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 128
    :cond_0
    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 134
    :goto_0
    if-gez v0, :cond_1

    .line 135
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 138
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 140
    .end local v0    # "end":I
    .end local v2    # "start":I
    :cond_2
    return-object v1

    .line 131
    .restart local v0    # "end":I
    .restart local v2    # "start":I
    :cond_3
    const/16 v3, 0x3f

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    goto :goto_0
.end method

.method public static getHttpdnsDomain2IpUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "ip"    # Ljava/lang/String;
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 380
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 381
    .local v0, "url":Ljava/lang/StringBuffer;
    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 382
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 383
    const-string v2, "/v1/?domain="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 384
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLocalIp(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 293
    const-string v3, ""

    .line 296
    .local v3, "localIp":Ljava/lang/String;
    :try_start_0
    const-string v8, "connectivity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 295
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 297
    .local v0, "conMann":Landroid/net/ConnectivityManager;
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 298
    .local v4, "mobileNetworkInfo":Landroid/net/NetworkInfo;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    .line 301
    .local v7, "wifiNetworkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 302
    invoke-static {}, Lcom/netease/pharos/util/Util;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v3

    .line 303
    const-string v8, "StrUtil"

    const-string v9, "getLocalIp \u79fb\u52a8\u7f51\u7edc"

    invoke-static {v8, v9}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v0    # "conMann":Landroid/net/ConnectivityManager;
    .end local v4    # "mobileNetworkInfo":Landroid/net/NetworkInfo;
    .end local v7    # "wifiNetworkInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    const-string v8, "StrUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getLocalIp ip = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    return-object v3

    .line 305
    .restart local v0    # "conMann":Landroid/net/ConnectivityManager;
    .restart local v4    # "mobileNetworkInfo":Landroid/net/NetworkInfo;
    .restart local v7    # "wifiNetworkInfo":Landroid/net/NetworkInfo;
    :cond_1
    :try_start_1
    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 306
    const-string v8, "wifi"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 307
    .local v6, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 308
    .local v5, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    .line 309
    .local v2, "ipAddress":I
    invoke-static {v2}, Lcom/netease/pharos/util/Util;->intToIp(I)Ljava/lang/String;

    move-result-object v3

    .line 310
    const-string v8, "StrUtil"

    const-string v9, "getLocalIp Wifi\u7f51\u7edc"

    invoke-static {v8, v9}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 312
    .end local v0    # "conMann":Landroid/net/ConnectivityManager;
    .end local v2    # "ipAddress":I
    .end local v4    # "mobileNetworkInfo":Landroid/net/NetworkInfo;
    .end local v5    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v6    # "wifiManager":Landroid/net/wifi/WifiManager;
    .end local v7    # "wifiNetworkInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 313
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "StrUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getLocalIp Exception = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/pharos/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getLocalIpAddress()Ljava/lang/String;
    .locals 9

    .prologue
    .line 327
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v5

    .line 329
    .local v5, "nilist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/NetworkInterface;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 345
    :goto_0
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 329
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 331
    .local v4, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    .line 333
    .local v2, "ialist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 335
    .local v0, "address":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .local v3, "ipv4":Ljava/lang/String;
    invoke-static {v3}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_1

    .line 341
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v2    # "ialist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InetAddress;>;"
    .end local v3    # "ipv4":Ljava/lang/String;
    .end local v4    # "ni":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v1

    .line 342
    .local v1, "ex":Ljava/net/SocketException;
    const-string v6, "localip"

    invoke-virtual {v1}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/netease/pharos/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getTimeZoneRawOffset()I
    .locals 1

    .prologue
    .line 366
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    return v0
.end method

.method public static intToIp(I)Ljava/lang/String;
    .locals 3
    .param p0, "ipInt"    # I

    .prologue
    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 355
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    shr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isApkDebugable(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    .line 205
    const/4 v5, 0x0

    .line 208
    .local v5, "result":Z
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 210
    .local v6, "sdCardExist":Z
    if-eqz v6, :cond_0

    .line 211
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "baseDir":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ntUniSDK"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "base"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "debug_log"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "debugLogFile":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_0

    .line 233
    .end local v0    # "baseDir":Ljava/lang/String;
    .end local v1    # "debugLogFile":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v6    # "sdCardExist":Z
    :goto_0
    return v7

    .line 220
    :catch_0
    move-exception v2

    .line 221
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "StrUtil"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "isApkDebugable Exception2="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 226
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    iget v8, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_1

    move v5, v7

    :goto_1
    move v7, v5

    .line 227
    goto :goto_0

    .line 226
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 229
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v2

    .line 230
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v7, "StrUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "isApkDebugable Exception1="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v7, v5

    .line 233
    goto :goto_0
.end method

.method public static isIpAddrDomain(Ljava/lang/String;)Z
    .locals 9
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 90
    invoke-static {p0}, Lcom/netease/pharos/util/Util;->getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "domain":Ljava/lang/String;
    const-string v6, "\\."

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "parts":[Ljava/lang/String;
    if-eqz v3, :cond_0

    array-length v6, v3

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v5

    .line 97
    :cond_1
    array-length v7, v3

    move v6, v5

    :goto_1
    if-lt v6, v7, :cond_2

    .line 110
    const-string v5, "StrUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "is IpAddr\uff0cAddr="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/pharos/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v5, 0x1

    goto :goto_0

    .line 97
    :cond_2
    aget-object v2, v3, v6

    .line 101
    .local v2, "part":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 102
    .local v4, "value":I
    if-ltz v4, :cond_0

    const/16 v8, 0xff

    if-lt v8, v4, :cond_0

    .line 97
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 105
    .end local v4    # "value":I
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static isZoneEast8()Z
    .locals 2

    .prologue
    .line 370
    const v0, 0x1b77400

    invoke-static {}, Lcom/netease/pharos/util/Util;->getTimeZoneRawOffset()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "ipAddr"    # Ljava/lang/String;
    .param p2, "subString"    # Ljava/lang/String;

    .prologue
    .line 182
    const-string v1, ""

    .line 184
    .local v1, "result":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 185
    const-string v4, "//"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 186
    .local v3, "start":I
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p0, p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 188
    .local v0, "end":I
    if-gez v3, :cond_0

    .line 189
    const/4 v3, -0x2

    .line 192
    :cond_0
    if-gez v0, :cond_1

    .line 193
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 196
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    .local v2, "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v2, v4, v0, p1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    .end local v0    # "end":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "start":I
    :cond_2
    return-object v1
.end method

.method public static string2Int(Ljava/lang/String;)I
    .locals 6
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 415
    const/4 v1, -0x1

    .line 417
    .local v1, "result":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    .line 427
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 422
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 427
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 423
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "StrUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "String2Int Exception ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/pharos/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 435
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/PharosReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/pharos/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method public static unicode2String(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "unicode"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    const/4 v3, 0x0

    .line 162
    :goto_0
    return-object v3

    .line 149
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v0, -0x1

    .line 151
    .local v0, "i":I
    const/4 v1, 0x0

    .line 153
    .local v1, "pos":I
    :cond_1
    :goto_1
    const-string v3, "\\u"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 162
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 154
    :cond_2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    add-int/lit8 v3, v0, 0x5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 157
    add-int/lit8 v1, v0, 0x6

    .line 158
    add-int/lit8 v3, v0, 0x2

    add-int/lit8 v4, v0, 0x6

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
