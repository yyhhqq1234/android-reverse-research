.class public Lcom/tencent/msdk/tools/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# static fields
.field public static final APN_PROP_PROXY:Ljava/lang/String; = "proxy"

.field public static final MPROXYTYPE_3GNET:I = 0xb

.field public static final MPROXYTYPE_3GWAP:I = 0xa

.field public static final MPROXYTYPE_CMNET:I = 0x1

.field public static final MPROXYTYPE_CMWAP:I = 0x2

.field public static final MPROXYTYPE_CTNET:I = 0x8

.field public static final MPROXYTYPE_CTWAP:I = 0x9

.field public static final MPROXYTYPE_DEFAULT:I = 0x0

.field public static final MPROXYTYPE_NET:I = 0x6

.field public static final MPROXYTYPE_UNINET:I = 0x4

.field public static final MPROXYTYPE_UNIWAP:I = 0x5

.field public static final MPROXYTYPE_WAP:I = 0x7

.field public static final MPROXYTYPE_WIFI:I = 0x3

.field private static PREFERRED_APN_URI:Landroid/net/Uri;

.field private static mIMEI:Ljava/lang/String;

.field private static mTotalMem:Ljava/lang/String;


# instance fields
.field clz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Landroid/os/Build;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/msdk/tools/DeviceUtils;->PREFERRED_APN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-class v0, Landroid/os/Build;

    iput-object v0, p0, Lcom/tencent/msdk/tools/DeviceUtils;->clz:Ljava/lang/Class;

    return-void
.end method

.method public static getApnProxy(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/tencent/msdk/tools/DeviceUtils;->PREFERRED_APN_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 155
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 156
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 162
    :goto_0
    return-object v2

    .line 160
    :cond_0
    const-string v0, "proxy"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 161
    .local v7, "strResult":Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v2, v7

    .line 162
    goto :goto_0
.end method

.method public static getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getCpuInfo()Ljava/lang/String;
    .locals 11

    .prologue
    .line 257
    const/4 v4, -0x1

    .line 258
    .local v4, "maxFreq":I
    const/4 v5, 0x0

    .line 261
    .local v5, "reader":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v6, Ljava/io/RandomAccessFile;

    const-string v9, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    const-string v10, "r"

    invoke-direct {v6, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .local v6, "reader":Ljava/io/RandomAccessFile;
    const/4 v0, 0x0

    .line 266
    .local v0, "done":Z
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 267
    :try_start_1
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, "line":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 269
    const/4 v0, 0x1

    .line 283
    .end local v3    # "line":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    .line 288
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

    .line 272
    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .restart local v0    # "done":Z
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/RandomAccessFile;
    :cond_2
    :try_start_2
    const-string v9, "\\s+"

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 273
    .local v7, "splits":[Ljava/lang/String;
    array-length v9, v7

    const/4 v10, 0x2

    if-lt v9, v10, :cond_0

    .line 274
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 275
    .local v8, "timeInState":I
    if-lez v8, :cond_0

    .line 276
    const/4 v9, 0x0

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    div-int/lit16 v2, v9, 0x3e8
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 277
    .local v2, "freq":I
    if-le v2, v4, :cond_0

    .line 278
    move v4, v2

    goto :goto_0

    .line 284
    .end local v0    # "done":Z
    .end local v2    # "freq":I
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/RandomAccessFile;
    .end local v7    # "splits":[Ljava/lang/String;
    .end local v8    # "timeInState":I
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    :catch_0
    move-exception v1

    .line 285
    .local v1, "ex":Ljava/io/IOException;
    :goto_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 284
    .end local v1    # "ex":Ljava/io/IOException;
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

.method public static getImei(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    sget-object v1, Lcom/tencent/msdk/tools/DeviceUtils;->mIMEI:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    :try_start_0
    invoke-static {}, Lcom/tencent/beacon/event/UserAction;->getQIMEI()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/msdk/tools/DeviceUtils;->mIMEI:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_0
    :goto_0
    sget-object v1, Lcom/tencent/msdk/tools/DeviceUtils;->mIMEI:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    const-string v1, ""

    sput-object v1, Lcom/tencent/msdk/tools/DeviceUtils;->mIMEI:Ljava/lang/String;

    .line 241
    :cond_1
    sget-object v1, Lcom/tencent/msdk/tools/DeviceUtils;->mIMEI:Ljava/lang/String;

    return-object v1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 11
    .param p0, "act"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0x9

    const/16 v8, 0x8

    const/4 v6, 0x0

    .line 87
    if-nez p0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return v6

    .line 91
    :cond_1
    :try_start_0
    const-string v9, "connectivity"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 92
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 96
    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    .line 98
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, "typeName":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "typeName:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 102
    sget-object v9, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v5, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "WIFI"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 103
    const/4 v6, 0x3

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "extraInfo":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "extraInfo:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 109
    const-string v9, "cmwap"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 110
    const/4 v6, 0x2

    goto :goto_0

    .line 111
    :cond_3
    const-string v9, "cmnet"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "epc.tmobile.com"

    .line 112
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 113
    :cond_4
    const/4 v6, 0x1

    goto :goto_0

    .line 114
    :cond_5
    const-string/jumbo v9, "uniwap"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 115
    const/4 v6, 0x5

    goto/16 :goto_0

    .line 116
    :cond_6
    const-string/jumbo v9, "uninet"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 117
    const/4 v6, 0x4

    goto/16 :goto_0

    .line 118
    :cond_7
    const-string/jumbo v9, "wap"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 119
    const/4 v6, 0x7

    goto/16 :goto_0

    .line 120
    :cond_8
    const-string v9, "net"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 121
    const/4 v6, 0x6

    goto/16 :goto_0

    .line 122
    :cond_9
    const-string v9, "ctwap"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    move v6, v7

    .line 123
    goto/16 :goto_0

    .line 124
    :cond_a
    const-string v9, "ctnet"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    move v6, v8

    .line 125
    goto/16 :goto_0

    .line 126
    :cond_b
    const-string v9, "3gwap"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 127
    const/16 v6, 0xa

    goto/16 :goto_0

    .line 128
    :cond_c
    const-string v9, "3gnet"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 129
    const/16 v6, 0xb

    goto/16 :goto_0

    .line 131
    :cond_d
    const-string v9, "#777"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 132
    invoke-static {p0}, Lcom/tencent/msdk/tools/DeviceUtils;->getApnProxy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 133
    .local v4, "proxy":Ljava/lang/String;
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lez v6, :cond_e

    move v6, v7

    .line 134
    goto/16 :goto_0

    :cond_e
    move v6, v8

    .line 136
    goto/16 :goto_0

    .line 140
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "extraInfo":Ljava/lang/String;
    .end local v3    # "info":Landroid/net/NetworkInfo;
    .end local v4    # "proxy":Ljava/lang/String;
    .end local v5    # "typeName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public static getRAMInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 211
    sget-object v0, Lcom/tencent/msdk/tools/DeviceUtils;->mTotalMem:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 213
    invoke-static {p0}, Lcom/tencent/msdk/tools/DeviceUtils;->getTotalRAMFromInfo(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/msdk/tools/DeviceUtils;->mTotalMem:Ljava/lang/String;

    .line 219
    :cond_0
    :goto_0
    sget-object v0, Lcom/tencent/msdk/tools/DeviceUtils;->mTotalMem:Ljava/lang/String;

    return-object v0

    .line 215
    :cond_1
    invoke-static {}, Lcom/tencent/msdk/tools/DeviceUtils;->getTotalRAMFromProcFile()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/msdk/tools/DeviceUtils;->mTotalMem:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getROMInfo()Ljava/lang/String;
    .locals 10

    .prologue
    .line 244
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 245
    .local v2, "file":Ljava/io/File;
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 246
    .local v3, "statFs":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v0, v5

    .line 247
    .local v0, "blockSize":J
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockCount()I

    move-result v5

    int-to-long v6, v5

    .line 250
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

    .line 253
    .local v4, "total":Ljava/lang/String;
    return-object v4
.end method

.method public static getScreenResolution(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 78
    if-nez p0, :cond_0

    .line 79
    const-string v1, ""

    .line 83
    :goto_0
    return-object v1

    .line 81
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 82
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getTotalRAMFromInfo(Landroid/content/Context;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 199
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 200
    .local v2, "mi":Landroid/app/ActivityManager$MemoryInfo;
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 202
    .local v0, "activityManager":Landroid/app/ActivityManager;
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    iget-wide v4, v2, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    return-wide v4

    .line 203
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getTotalRAMFromProcFile()J
    .locals 12

    .prologue
    .line 166
    const/4 v4, 0x0

    .line 167
    .local v4, "reader":Ljava/io/RandomAccessFile;
    const-wide/16 v6, 0x0

    .line 169
    .local v6, "total":J
    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v9, "/proc/meminfo"

    const-string v10, "r"

    invoke-direct {v5, v9, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    .end local v4    # "reader":Ljava/io/RandomAccessFile;
    .local v5, "reader":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "content":Ljava/lang/String;
    const-string v9, "(\\d+)"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 174
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 175
    .local v2, "m":Ljava/util/regex/Matcher;
    const-string v8, ""

    .line 176
    .local v8, "value":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 177
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 180
    :cond_0
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v6

    .line 181
    const-wide/16 v10, 0x400

    mul-long/2addr v6, v10

    .line 185
    if-eqz v5, :cond_3

    .line 187
    :try_start_2
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    .line 194
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "p":Ljava/util/regex/Pattern;
    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .end local v8    # "value":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/RandomAccessFile;
    :cond_1
    :goto_1
    return-wide v6

    .line 188
    .end local v4    # "reader":Ljava/io/RandomAccessFile;
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v2    # "m":Ljava/util/regex/Matcher;
    .restart local v3    # "p":Ljava/util/regex/Pattern;
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 189
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v5

    .line 190
    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .restart local v4    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_1

    .line 182
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "p":Ljava/util/regex/Pattern;
    .end local v8    # "value":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 183
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 185
    if-eqz v4, :cond_1

    .line 187
    :try_start_4
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 188
    :catch_2
    move-exception v1

    .line 189
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 185
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v4, :cond_2

    .line 187
    :try_start_5
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 190
    :cond_2
    :goto_4
    throw v9

    .line 188
    :catch_3
    move-exception v1

    .line 189
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 185
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "reader":Ljava/io/RandomAccessFile;
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .restart local v4    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 182
    .end local v4    # "reader":Ljava/io/RandomAccessFile;
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .restart local v4    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_2

    .end local v4    # "reader":Ljava/io/RandomAccessFile;
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v2    # "m":Ljava/util/regex/Matcher;
    .restart local v3    # "p":Ljava/util/regex/Pattern;
    .restart local v5    # "reader":Ljava/io/RandomAccessFile;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_3
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/RandomAccessFile;
    .restart local v4    # "reader":Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method public static getVersionRelease()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method
