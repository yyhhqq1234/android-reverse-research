.class public Lcom/netease/pushservice/PushServiceInfo;
.super Ljava/lang/Object;
.source "PushServiceInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private charArray:[C

.field public mDevId:Ljava/lang/String;

.field public mPushSrv:Ljava/lang/String;

.field private mbReset:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NGPush_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/netease/pushservice/PushServiceInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/pushservice/PushServiceInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "unipush.x.netease.com:50441"

    iput-object v0, p0, Lcom/netease/pushservice/PushServiceInfo;->mPushSrv:Ljava/lang/String;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/pushservice/PushServiceInfo;->mbReset:Z

    .line 107
    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 108
    iput-object v0, p0, Lcom/netease/pushservice/PushServiceInfo;->charArray:[C

    .line 42
    return-void

    .line 107
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
    .end array-data
.end method

.method private appendString(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 8
    .param p1, "dstStringBuilder"    # Ljava/lang/StringBuilder;
    .param p2, "srcString"    # Ljava/lang/String;
    .param p3, "nsize"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 190
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 191
    .local v2, "size":I
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\W+"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 193
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v2, :cond_0

    .line 194
    if-lez p3, :cond_1

    .line 195
    invoke-virtual {p2, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 200
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .local v3, "tmpStringBuilder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 202
    .local v1, "r":Ljava/util/Random;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, v2, :cond_2

    .line 212
    invoke-virtual {v3, v7, v2}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 213
    return-void

    .line 197
    .end local v0    # "i":I
    .end local v1    # "r":Ljava/util/Random;
    .end local v3    # "tmpStringBuilder":Ljava/lang/StringBuilder;
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 203
    .restart local v0    # "i":I
    .restart local v1    # "r":Ljava/util/Random;
    .restart local v3    # "tmpStringBuilder":Ljava/lang/StringBuilder;
    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v0, v4, :cond_4

    .line 204
    const/16 v4, 0x5f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 205
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v0, v4, :cond_5

    .line 206
    iget-object v4, p0, Lcom/netease/pushservice/PushServiceInfo;->charArray:[C

    iget-object v5, p0, Lcom/netease/pushservice/PushServiceInfo;->charArray:[C

    array-length v5, v5

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-char v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 207
    :cond_5
    iget-object v4, p0, Lcom/netease/pushservice/PushServiceInfo;->charArray:[C

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v4

    if-gez v4, :cond_3

    .line 209
    iget-object v4, p0, Lcom/netease/pushservice/PushServiceInfo;->charArray:[C

    iget-object v5, p0, Lcom/netease/pushservice/PushServiceInfo;->charArray:[C

    array-length v5, v5

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-char v4, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2
.end method

.method private createFixUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const-string v7, "phone"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 85
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    const-string v6, ""

    .line 86
    .local v6, "uniqueId":Ljava/lang/String;
    const-string v4, ""

    .line 87
    .local v4, "tmDevice":Ljava/lang/String;
    const-string v5, ""

    .line 88
    .local v5, "tmSerial":Ljava/lang/String;
    const-string v0, ""

    .line 90
    .local v0, "androidId":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 91
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 96
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "android_id"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    new-instance v1, Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    int-to-long v10, v7

    const/16 v7, 0x20

    shl-long/2addr v10, v7

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    int-to-long v12, v7

    or-long/2addr v10, v12

    invoke-direct {v1, v8, v9, v10, v11}, Ljava/util/UUID;-><init>(JJ)V

    .line 98
    .local v1, "deviceUuid":Ljava/util/UUID;
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    .line 99
    return-object v6

    .line 92
    .end local v1    # "deviceUuid":Ljava/util/UUID;
    :catch_0
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/netease/pushservice/PushServiceInfo;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "createFixUUID exception:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private createRandom(I[C)Ljava/lang/String;
    .locals 6
    .param p1, "size"    # I
    .param p2, "array"    # [C

    .prologue
    .line 217
    array-length v2, p2

    .line 219
    .local v2, "length":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 221
    .local v3, "random":Ljava/util/Random;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 226
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 222
    :cond_0
    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 223
    .local v1, "iRandom":I
    aget-char v5, p2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createRandomUUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createSpecialUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 22
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .local v10, "stringBuilder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceInfo;->charArray:[C

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v5, v0

    .line 113
    .local v5, "length":I
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .local v15, "tmpStringBuilder":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 116
    .local v12, "timeStamp":J
    sget-object v18, Lcom/netease/pushservice/PushServiceInfo;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "time:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/16 v9, 0x8

    .line 118
    .local v9, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v9, :cond_4

    .line 122
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 123
    .local v16, "ts":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceInfo;->charArray:[C

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v9, v1}, Lcom/netease/pushservice/PushServiceInfo;->createRandom(I[C)Ljava/lang/String;

    move-result-object v16

    .line 126
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v10, v1, v9}, Lcom/netease/pushservice/PushServiceInfo;->appendString(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 129
    const/4 v9, 0x6

    .line 130
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 131
    .local v8, "sModel":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceInfo;->charArray:[C

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v9, v1}, Lcom/netease/pushservice/PushServiceInfo;->createRandom(I[C)Ljava/lang/String;

    move-result-object v8

    .line 134
    :cond_1
    sget-object v18, Lcom/netease/pushservice/PushServiceInfo;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "model:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v8, v9}, Lcom/netease/pushservice/PushServiceInfo;->appendString(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 138
    const/4 v9, 0x6

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceInfo;->charArray:[C

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v9, v1}, Lcom/netease/pushservice/PushServiceInfo;->createRandom(I[C)Ljava/lang/String;

    move-result-object v14

    .line 141
    .local v14, "tmDevice":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "android_id"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 142
    const-string v18, "phone"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 143
    .local v11, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 144
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 150
    .end local v11    # "tm":Landroid/telephony/TelephonyManager;
    :cond_2
    :goto_1
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceInfo;->charArray:[C

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v9, v1}, Lcom/netease/pushservice/PushServiceInfo;->createRandom(I[C)Ljava/lang/String;

    move-result-object v14

    .line 153
    :cond_3
    sget-object v18, Lcom/netease/pushservice/PushServiceInfo;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "IMEI:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    neg-int v0, v9

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v10, v14, v1}, Lcom/netease/pushservice/PushServiceInfo;->appendString(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 157
    const/4 v9, 0x6

    .line 158
    const-string v7, ""

    .line 159
    .local v7, "sMac":Ljava/lang/String;
    const-string v18, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/WifiManager;

    .line 160
    .local v17, "wifiMgr":Landroid/net/wifi/WifiManager;
    if-nez v17, :cond_5

    const/4 v4, 0x0

    .line 161
    .local v4, "info":Landroid/net/wifi/WifiInfo;
    :goto_2
    if-eqz v4, :cond_7

    .line 162
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v7

    .line 165
    const-string v18, "40:F3:08:3F:FA:D3"

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 166
    const-string v18, "etrl52GTI95035737640F308png781lw"

    .line 185
    :goto_3
    return-object v18

    .line 119
    .end local v4    # "info":Landroid/net/wifi/WifiInfo;
    .end local v7    # "sMac":Ljava/lang/String;
    .end local v8    # "sModel":Ljava/lang/String;
    .end local v14    # "tmDevice":Ljava/lang/String;
    .end local v16    # "ts":Ljava/lang/String;
    .end local v17    # "wifiMgr":Landroid/net/wifi/WifiManager;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceInfo;->charArray:[C

    move-object/from16 v18, v0

    int-to-long v0, v5

    move-wide/from16 v20, v0

    rem-long v20, v12, v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v19, v0

    aget-char v18, v18, v19

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    int-to-long v0, v5

    move-wide/from16 v18, v0

    div-long v12, v12, v18

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 146
    .restart local v8    # "sModel":Ljava/lang/String;
    .restart local v14    # "tmDevice":Ljava/lang/String;
    .restart local v16    # "ts":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 147
    .local v2, "e":Ljava/lang/Exception;
    sget-object v18, Lcom/netease/pushservice/PushServiceInfo;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "createSpecialUUID exception:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 160
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v7    # "sMac":Ljava/lang/String;
    .restart local v17    # "wifiMgr":Landroid/net/wifi/WifiManager;
    :cond_5
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    goto :goto_2

    .line 168
    .restart local v4    # "info":Landroid/net/wifi/WifiInfo;
    :cond_6
    if-nez v7, :cond_7

    .line 169
    const-string v7, ""

    .line 171
    :cond_7
    const-string v18, "00:00:00"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceInfo;->charArray:[C

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v9, v1}, Lcom/netease/pushservice/PushServiceInfo;->createRandom(I[C)Ljava/lang/String;

    move-result-object v7

    .line 174
    :cond_8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceInfo;->charArray:[C

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v9, v1}, Lcom/netease/pushservice/PushServiceInfo;->createRandom(I[C)Ljava/lang/String;

    move-result-object v7

    .line 177
    :cond_9
    sget-object v18, Lcom/netease/pushservice/PushServiceInfo;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "MAC:"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    neg-int v0, v9

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v10, v7, v1}, Lcom/netease/pushservice/PushServiceInfo;->appendString(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 181
    const/4 v9, 0x6

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/netease/pushservice/PushServiceInfo;->charArray:[C

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v9, v1}, Lcom/netease/pushservice/PushServiceInfo;->createRandom(I[C)Ljava/lang/String;

    move-result-object v6

    .line 183
    .local v6, "randomString":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v6, v9}, Lcom/netease/pushservice/PushServiceInfo;->appendString(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    .line 185
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_3
.end method

.method private patchPlaceholder()V
    .locals 2

    .prologue
    .line 54
    sget-object v0, Lcom/netease/pushservice/PushServiceInfo;->TAG:Ljava/lang/String;

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method


# virtual methods
.method public createUUID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/netease/pushservice/PushServiceInfo;->createSpecialUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPushSrv()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/netease/pushservice/PushServiceInfo;->mPushSrv:Ljava/lang/String;

    return-object v0
.end method

.method public resetUUID()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/pushservice/PushServiceInfo;->mbReset:Z

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/netease/pushservice/PushServiceInfo;->mDevId:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setPushSrv(Ljava/lang/String;)V
    .locals 1
    .param p1, "pushSrv"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iput-object p1, p0, Lcom/netease/pushservice/PushServiceInfo;->mPushSrv:Ljava/lang/String;

    .line 65
    :cond_0
    return-void
.end method
