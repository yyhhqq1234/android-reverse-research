.class public Lcom/tencent/msdk/framework/tools/MSDKJniHelper;
.super Ljava/lang/Object;
.source "MSDKJniHelper.java"


# static fields
.field private static final DEFAULT_CHANNEL:Ljava/lang/String; = "00000000"

.field private static networkChangeReceiver:Lcom/tencent/msdk/framework/tools/NetworkChangeReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkUrl(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 435
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 436
    .local v1, "urlPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 437
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method public static getAPN()Ljava/lang/String;
    .locals 5

    .prologue
    .line 241
    const-string v2, ""

    .line 242
    .local v2, "result":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/msdk/framework/MSDKEnv;->getDeviceInfo()Lcom/tencent/msdk/stat/DeviceInfo;

    move-result-object v1

    .line 243
    .local v1, "device":Lcom/tencent/msdk/stat/DeviceInfo;
    if-nez v1, :cond_0

    .line 244
    const-string v3, "DeviceInfo is null"

    invoke-static {v3}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 250
    :goto_0
    return-object v2

    .line 246
    :cond_0
    invoke-virtual {v1}, Lcom/tencent/msdk/stat/DeviceInfo;->getApn()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "apnStr":Ljava/lang/String;
    move-object v2, v0

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAPN:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/MSDKEnv;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCPUType()Ljava/lang/String;
    .locals 5

    .prologue
    .line 188
    const-string v2, ""

    .line 189
    .local v2, "result":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/msdk/framework/MSDKEnv;->getDeviceInfo()Lcom/tencent/msdk/stat/DeviceInfo;

    move-result-object v1

    .line 190
    .local v1, "device":Lcom/tencent/msdk/stat/DeviceInfo;
    if-nez v1, :cond_0

    .line 191
    const-string v3, "DeviceInfo is null"

    invoke-static {v3}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 196
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCPUType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 197
    return-object v2

    .line 193
    :cond_0
    invoke-virtual {v1}, Lcom/tencent/msdk/stat/DeviceInfo;->getCpuInfo()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "cpuTypeStr":Ljava/lang/String;
    move-object v2, v0

    goto :goto_0
.end method

.method public static getChannelId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 389
    invoke-static {}, Lcom/tencent/msdk/framework/tools/ChannelUtil;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChannelId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 391
    return-object v0
.end method

.method public static getDeciceInfoStr()Ljava/lang/String;
    .locals 5

    .prologue
    .line 409
    const-string v2, ""

    .line 410
    .local v2, "result":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/msdk/framework/MSDKEnv;->getDeviceInfo()Lcom/tencent/msdk/stat/DeviceInfo;

    move-result-object v0

    .line 411
    .local v0, "device":Lcom/tencent/msdk/stat/DeviceInfo;
    if-nez v0, :cond_0

    .line 412
    const-string v3, "DeviceInfo is null"

    invoke-static {v3}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 418
    :goto_0
    return-object v2

    .line 414
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/msdk/stat/DeviceInfo;->getAllDeviceInfo()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, "deviceInfoStr":Ljava/lang/String;
    move-object v2, v1

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeciceInfoStr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/framework/mlog/MLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 5

    .prologue
    .line 107
    const-string v2, ""

    .line 108
    .local v2, "result":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/msdk/framework/MSDKEnv;->getDeviceInfo()Lcom/tencent/msdk/stat/DeviceInfo;

    move-result-object v0

    .line 109
    .local v0, "device":Lcom/tencent/msdk/stat/DeviceInfo;
    if-nez v0, :cond_0

    .line 110
    const-string v3, "DeviceInfo is null"

    invoke-static {v3}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 115
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DeviceModel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 116
    return-object v2

    .line 112
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/msdk/stat/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "deviceModelStr":Ljava/lang/String;
    move-object v2, v1

    goto :goto_0
.end method

.method public static getFreeRamPercent()F
    .locals 20

    .prologue
    .line 147
    const/high16 v8, -0x40800000    # -1.0f

    .line 148
    .local v8, "freePercent":F
    const-string v13, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 150
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "sdcard is unavailable, state : "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    .line 184
    :goto_0
    return v8

    .line 154
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    .line 155
    .local v9, "sdcard":Ljava/io/File;
    if-nez v9, :cond_1

    .line 156
    const-string v13, "getExternalStorageDirectory is null"

    invoke-static {v13}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_3

    .line 161
    :cond_2
    const-string v13, "get sdcard path error!"

    invoke-static {v13}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_3
    new-instance v12, Landroid/os/StatFs;

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 167
    .local v12, "statFs":Landroid/os/StatFs;
    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockSize()I

    move-result v13

    int-to-long v4, v13

    .line 169
    .local v4, "blockSize":J
    invoke-virtual {v12}, Landroid/os/StatFs;->getBlockCount()I

    move-result v13

    int-to-long v2, v13

    .line 171
    .local v2, "blockCount":J
    invoke-virtual {v12}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v13

    int-to-long v6, v13

    .line 173
    .local v6, "blockavailable":J
    mul-long v16, v2, v4

    const-wide/16 v18, 0x400

    div-long v14, v16, v18

    .line 174
    .local v14, "totalSize":J
    mul-long v16, v6, v4

    const-wide/16 v18, 0x400

    div-long v10, v16, v18

    .line 175
    .local v10, "freeSize":J
    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_4

    .line 177
    const-string/jumbo v13, "total size is 0"

    invoke-static {v13}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_4
    long-to-double v0, v10

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    mul-double v16, v16, v18

    long-to-double v0, v14

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v8, v0

    .line 182
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "total size "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, "KB free size "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, "KB free percent "

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, "%"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static getIMEI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 235
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/msdk/framework/MSDKEnv;->getQimei()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIMEI:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 237
    return-object v0
.end method

.method public static getLocalIPAddress()Ljava/lang/String;
    .locals 5

    .prologue
    .line 254
    const-string v2, ""

    .line 255
    .local v2, "result":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/request/QosReport;->getInstance()Lcom/tencent/msdk/request/QosReport;

    move-result-object v1

    .line 256
    .local v1, "qosReport":Lcom/tencent/msdk/request/QosReport;
    if-nez v1, :cond_0

    .line 257
    const-string v3, "QosReport is null"

    invoke-static {v3}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 263
    :goto_0
    return-object v2

    .line 259
    :cond_0
    invoke-virtual {v1}, Lcom/tencent/msdk/request/QosReport;->getLocalIpAddress()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "localIpStr":Ljava/lang/String;
    move-object v2, v0

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLocalIPAddress:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMSDKEnv()Ljava/lang/String;
    .locals 3

    .prologue
    .line 329
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tencent/msdk/config/ConfigManager;->getMSDKEnv(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMSDKEnv:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->d(Ljava/lang/String;)V

    .line 332
    return-object v0
.end method

.method public static getMSDKKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 317
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/framework/MSDKEnv;->gameInfo:Lcom/tencent/msdk/api/MsdkBaseInfo;

    iget-object v0, v1, Lcom/tencent/msdk/api/MsdkBaseInfo;->msdkKey:Ljava/lang/String;

    .line 318
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMSDKKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->d(Ljava/lang/String;)V

    .line 319
    return-object v0
.end method

.method public static getMSDKUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 336
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tencent/msdk/config/ConfigManager;->getApiDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMSDKUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->d(Ljava/lang/String;)V

    .line 339
    return-object v0
.end method

.method public static getMSDKVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 267
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/msdk/framework/MSDKEnv;->getMSDKVersion()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMSDKVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 302
    return-object v0
.end method

.method public static getMatId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 229
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/msdk/framework/MSDKEnv;->getQimei()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMatId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 231
    return-object v0
.end method

.method public static getNoticeRefreshTime()I
    .locals 3

    .prologue
    .line 382
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tencent/msdk/config/ConfigManager;->getNoticeTime(Landroid/content/Context;)I

    move-result v0

    .line 384
    .local v0, "refreshTime":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNoticeRefreshTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 385
    mul-int/lit8 v1, v0, 0x3c

    return v1
.end method

.method public static getOSVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 201
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 202
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOSVersion:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 203
    return-object v0
.end method

.method public static getOfferId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 323
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/framework/MSDKEnv;->gameInfo:Lcom/tencent/msdk/api/MsdkBaseInfo;

    iget-object v0, v1, Lcom/tencent/msdk/api/MsdkBaseInfo;->offerId:Ljava/lang/String;

    .line 324
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOfferId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->d(Ljava/lang/String;)V

    .line 325
    return-object v0
.end method

.method public static getOpenUserAgent()Ljava/lang/String;
    .locals 3

    .prologue
    .line 402
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AndroidSDK_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOpenUserAgent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->d(Ljava/lang/String;)V

    .line 405
    return-object v0
.end method

.method public static getPlatformId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 396
    invoke-static {}, Lcom/tencent/msdk/framework/tools/ChannelUtil;->getPlatformId()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlatformId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 398
    return-object v0
.end method

.method public static getQQAppId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 305
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/framework/MSDKEnv;->gameInfo:Lcom/tencent/msdk/api/MsdkBaseInfo;

    iget-object v0, v1, Lcom/tencent/msdk/api/MsdkBaseInfo;->qqAppId:Ljava/lang/String;

    .line 306
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getQQAppId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->d(Ljava/lang/String;)V

    .line 307
    return-object v0
.end method

.method public static getRamSize()Ljava/lang/String;
    .locals 5

    .prologue
    .line 120
    const-string v2, ""

    .line 121
    .local v2, "result":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/msdk/framework/MSDKEnv;->getDeviceInfo()Lcom/tencent/msdk/stat/DeviceInfo;

    move-result-object v0

    .line 122
    .local v0, "device":Lcom/tencent/msdk/stat/DeviceInfo;
    if-nez v0, :cond_0

    .line 123
    const-string v3, "DeviceInfo is null"

    invoke-static {v3}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 128
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRamSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 129
    return-object v2

    .line 125
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/msdk/stat/DeviceInfo;->getRAMInfo()Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "ramSizeStr":Ljava/lang/String;
    move-object v2, v1

    goto :goto_0
.end method

.method public static getRealNameAuthSwitch()I
    .locals 3

    .prologue
    .line 343
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tencent/msdk/config/ConfigManager;->isRealNameAuth(Landroid/content/Context;)I

    move-result v0

    .line 345
    .local v0, "result":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRealNameAuthSwitch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 346
    return v0
.end method

.method public static getResolution()Ljava/lang/String;
    .locals 5

    .prologue
    .line 207
    const-string v2, ""

    .line 208
    .local v2, "result":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/msdk/framework/MSDKEnv;->getDeviceInfo()Lcom/tencent/msdk/stat/DeviceInfo;

    move-result-object v0

    .line 209
    .local v0, "device":Lcom/tencent/msdk/stat/DeviceInfo;
    if-nez v0, :cond_0

    .line 210
    const-string v3, "DeviceInfo is null"

    invoke-static {v3}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 215
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResolution:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 216
    return-object v2

    .line 212
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/msdk/stat/DeviceInfo;->getResolution()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, "resolutionStr":Ljava/lang/String;
    move-object v2, v1

    goto :goto_0
.end method

.method public static getRomSize()Ljava/lang/String;
    .locals 5

    .prologue
    .line 133
    const-string v1, ""

    .line 134
    .local v1, "result":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/msdk/framework/MSDKEnv;->getDeviceInfo()Lcom/tencent/msdk/stat/DeviceInfo;

    move-result-object v0

    .line 135
    .local v0, "device":Lcom/tencent/msdk/stat/DeviceInfo;
    if-nez v0, :cond_0

    .line 136
    const-string v3, "DeviceInfo is null"

    invoke-static {v3}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 141
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRomSize:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 142
    return-object v1

    .line 138
    :cond_0
    invoke-virtual {v0}, Lcom/tencent/msdk/stat/DeviceInfo;->getROMInfo()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "romSizeStr":Ljava/lang/String;
    move-object v1, v2

    goto :goto_0
.end method

.method public static getScreenDirection()I
    .locals 1

    .prologue
    .line 225
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/MSDKEnv;->getScreenDirection()I

    move-result v0

    return v0
.end method

.method public static getScreenDpi()F
    .locals 1

    .prologue
    .line 221
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/MSDKEnv;->getScreenDpi()F

    move-result v0

    return v0
.end method

.method public static getWXAppId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 311
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/framework/MSDKEnv;->gameInfo:Lcom/tencent/msdk/api/MsdkBaseInfo;

    iget-object v0, v1, Lcom/tencent/msdk/api/MsdkBaseInfo;->wxAppId:Ljava/lang/String;

    .line 312
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWXAppId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->d(Ljava/lang/String;)V

    .line 313
    return-object v0
.end method

.method public static isUtf8String([B)Z
    .locals 6
    .param p0, "strBytes"    # [B

    .prologue
    const/4 v3, 0x0

    .line 70
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v2, p0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 71
    .local v2, "utf8Str":Ljava/lang/String;
    const v4, 0xfffd

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "replacement":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 73
    const-string/jumbo v4, "utf8Str is null"

    invoke-static {v4}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    .line 83
    .end local v1    # "replacement":Ljava/lang/String;
    .end local v2    # "utf8Str":Ljava/lang/String;
    :goto_0
    return v3

    .line 75
    .restart local v1    # "replacement":Ljava/lang/String;
    .restart local v2    # "utf8Str":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "utf8Str:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", contain invalid utf8 character"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    .end local v1    # "replacement":Ljava/lang/String;
    .end local v2    # "utf8Str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 79
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "replacement":Ljava/lang/String;
    .restart local v2    # "utf8Str":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static needAutoRefresh()Z
    .locals 3

    .prologue
    .line 357
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tencent/msdk/config/ConfigManager;->needWXTokenRefresh(Landroid/content/Context;)Z

    move-result v0

    .line 359
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needAutoRefresh:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 360
    return v0
.end method

.method public static needAutoUpdate()Z
    .locals 3

    .prologue
    .line 371
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tencent/msdk/config/ConfigManager;->needAutoUpdate(Landroid/content/Context;)Z

    move-result v0

    .line 373
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needAutoUpdate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 374
    return v0
.end method

.method public static needNotice()Z
    .locals 3

    .prologue
    .line 350
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tencent/msdk/config/ConfigManager;->needNotice(Landroid/content/Context;)Z

    move-result v0

    .line 352
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needNotice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 353
    return v0
.end method

.method public static needPush()Z
    .locals 3

    .prologue
    .line 364
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tencent/msdk/config/ConfigManager;->needPushRefactor(Landroid/content/Context;)Z

    move-result v0

    .line 366
    .local v0, "result":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needPush:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 367
    return v0
.end method

.method public static openPseudoProtocol(Ljava/lang/String;)V
    .locals 5
    .param p0, "pseudoUrl"    # Ljava/lang/String;

    .prologue
    .line 91
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 92
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 93
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 94
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 96
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-lt v3, v4, :cond_0

    .line 97
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 99
    :cond_0
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "open pseudo protocol failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    .line 102
    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static showMSDKTestEnvTips(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 422
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 423
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 424
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 425
    const-string v1, "Sure"

    new-instance v2, Lcom/tencent/msdk/framework/tools/MSDKJniHelper$1;

    invoke-direct {v2}, Lcom/tencent/msdk/framework/tools/MSDKJniHelper$1;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 431
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 432
    const-string v1, "Show MSDKTestEnv Tips"

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 433
    return-void
.end method

.method public static startInternetConnectionNotifier()V
    .locals 3

    .prologue
    .line 33
    const-string v1, "Register NetworkChangeReceiver"

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 34
    sget-object v1, Lcom/tencent/msdk/framework/tools/MSDKJniHelper;->networkChangeReceiver:Lcom/tencent/msdk/framework/tools/NetworkChangeReceiver;

    if-eqz v1, :cond_0

    .line 35
    const-string v1, "no need register"

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 47
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Register NetworkChangeReceiver for activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 40
    new-instance v1, Lcom/tencent/msdk/framework/tools/NetworkChangeReceiver;

    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/tencent/msdk/framework/tools/NetworkChangeReceiver;-><init>(Landroid/app/Activity;)V

    sput-object v1, Lcom/tencent/msdk/framework/tools/MSDKJniHelper;->networkChangeReceiver:Lcom/tencent/msdk/framework/tools/NetworkChangeReceiver;

    .line 41
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 42
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    sget-object v2, Lcom/tencent/msdk/framework/tools/MSDKJniHelper;->networkChangeReceiver:Lcom/tencent/msdk/framework/tools/NetworkChangeReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 45
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    const-string v1, "currentActivity of MSDKEnv is null, may be not init MSDK!"

    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static stopInternetConnectionNotifier(Landroid/app/Activity;)V
    .locals 2
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    .line 50
    const-string/jumbo v0, "unRegister NetworkChangeReceiver"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 51
    sget-object v0, Lcom/tencent/msdk/framework/tools/MSDKJniHelper;->networkChangeReceiver:Lcom/tencent/msdk/framework/tools/NetworkChangeReceiver;

    if-nez v0, :cond_0

    .line 52
    const-string v0, "no need unregister"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void

    .line 55
    :cond_0
    if-nez p0, :cond_1

    .line 56
    const-string v0, "currentActivity to destroy is null"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unRegister NetworkChangeReceiver for activity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 60
    sget-object v0, Lcom/tencent/msdk/framework/tools/MSDKJniHelper;->networkChangeReceiver:Lcom/tencent/msdk/framework/tools/NetworkChangeReceiver;

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/tools/NetworkChangeReceiver;->getRegisterActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p0, :cond_2

    .line 61
    sget-object v0, Lcom/tencent/msdk/framework/tools/MSDKJniHelper;->networkChangeReceiver:Lcom/tencent/msdk/framework/tools/NetworkChangeReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/msdk/framework/tools/MSDKJniHelper;->networkChangeReceiver:Lcom/tencent/msdk/framework/tools/NetworkChangeReceiver;

    goto :goto_0

    .line 64
    :cond_2
    const-string v0, "Registered activity is not currentActivity"

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    goto :goto_0
.end method
