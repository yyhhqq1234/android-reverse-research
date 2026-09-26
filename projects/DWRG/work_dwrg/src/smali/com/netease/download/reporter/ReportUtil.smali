.class public Lcom/netease/download/reporter/ReportUtil;
.super Ljava/lang/Object;
.source "ReportUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReportUtil"

.field private static sReportUtil:Lcom/netease/download/reporter/ReportUtil;


# instance fields
.field private mCfgTaskId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPatchTaskId:Ljava/lang/String;

.field private mSessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/download/reporter/ReportUtil;->sReportUtil:Lcom/netease/download/reporter/ReportUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/netease/download/reporter/ReportUtil;->mContext:Landroid/content/Context;

    .line 63
    iput-object v0, p0, Lcom/netease/download/reporter/ReportUtil;->mSessionId:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/netease/download/reporter/ReportUtil;->mPatchTaskId:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/netease/download/reporter/ReportUtil;->mCfgTaskId:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static getInstances()Lcom/netease/download/reporter/ReportUtil;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/netease/download/reporter/ReportUtil;->sReportUtil:Lcom/netease/download/reporter/ReportUtil;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/netease/download/reporter/ReportUtil;

    invoke-direct {v0}, Lcom/netease/download/reporter/ReportUtil;-><init>()V

    sput-object v0, Lcom/netease/download/reporter/ReportUtil;->sReportUtil:Lcom/netease/download/reporter/ReportUtil;

    .line 58
    :cond_0
    sget-object v0, Lcom/netease/download/reporter/ReportUtil;->sReportUtil:Lcom/netease/download/reporter/ReportUtil;

    return-object v0
.end method

.method public static getSystemModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 611
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private pingExec(Ljava/lang/String;II)I
    .locals 16
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "countPage"    # I
    .param p3, "countDatePake"    # I

    .prologue
    .line 391
    const/4 v8, 0x0

    .line 392
    .local v8, "process":Ljava/lang/Process;
    const-string v11, ""

    .line 395
    .local v11, "returnMsg":Ljava/lang/String;
    :try_start_0
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "/system/bin/ping -c "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -s "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 396
    .local v1, "cmd":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    .line 397
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v9, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 398
    .local v9, "r":Ljava/io/InputStreamReader;
    new-instance v10, Ljava/io/LineNumberReader;

    invoke-direct {v10, v9}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 399
    .local v10, "returnData":Ljava/io/LineNumberReader;
    const-string v5, ""

    .line 400
    .local v5, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v10}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    if-nez v5, :cond_3

    .line 413
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 419
    :goto_1
    const-string v13, "ReportUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---ping \u4fe1\u606f="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const/4 v4, -0x1

    .line 421
    .local v4, "index":I
    const-string v13, ","

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 423
    .local v12, "splitStr":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v13, v12

    if-lt v3, v13, :cond_4

    .line 432
    :goto_3
    move v6, v4

    .local v6, "m":I
    move v7, v6

    .line 434
    .end local v6    # "m":I
    .local v7, "m":I
    :goto_4
    add-int/lit8 v6, v7, -0x1

    .end local v7    # "m":I
    .restart local v6    # "m":I
    if-gtz v7, :cond_6

    .line 441
    :cond_1
    add-int/lit8 v13, v6, 0x1

    if-eq v13, v4, :cond_2

    add-int/lit8 v13, v6, 0x1

    if-ltz v13, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-le v4, v13, :cond_7

    .line 442
    :cond_2
    const/4 v13, -0x1

    .line 445
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "index":I
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "m":I
    .end local v9    # "r":Ljava/io/InputStreamReader;
    .end local v10    # "returnData":Ljava/io/LineNumberReader;
    .end local v12    # "splitStr":[Ljava/lang/String;
    :goto_5
    return v13

    .line 402
    .restart local v1    # "cmd":Ljava/lang/String;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v9    # "r":Ljava/io/InputStreamReader;
    .restart local v10    # "returnData":Ljava/io/LineNumberReader;
    :cond_3
    :try_start_2
    const-string v13, "loss"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "%"

    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 403
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v11

    goto :goto_0

    .line 407
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v5    # "line":Ljava/lang/String;
    .end local v9    # "r":Ljava/io/InputStreamReader;
    .end local v10    # "returnData":Ljava/io/LineNumberReader;
    :catch_0
    move-exception v2

    .line 408
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 413
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 409
    :goto_6
    const/4 v13, -0x1

    goto :goto_5

    .line 411
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 413
    :try_start_5
    invoke-virtual {v8}, Ljava/lang/Process;->destroy()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 417
    :goto_7
    throw v13

    .line 425
    .restart local v1    # "cmd":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "index":I
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v9    # "r":Ljava/io/InputStreamReader;
    .restart local v10    # "returnData":Ljava/io/LineNumberReader;
    .restart local v12    # "splitStr":[Ljava/lang/String;
    :cond_4
    aget-object v13, v12, v3

    const-string v14, "loss"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    aget-object v13, v12, v3

    const-string v14, "%"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 426
    aget-object v11, v12, v3

    .line 427
    const/16 v13, 0x25

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 428
    goto :goto_3

    .line 423
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 436
    .restart local v6    # "m":I
    :cond_6
    invoke-virtual {v11, v6}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x30

    if-lt v13, v14, :cond_1

    invoke-virtual {v11, v6}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x39

    if-gt v13, v14, :cond_1

    move v7, v6

    .end local v6    # "m":I
    .restart local v7    # "m":I
    goto :goto_4

    .line 445
    .end local v7    # "m":I
    .restart local v6    # "m":I
    :cond_7
    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v11, v13, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto :goto_5

    .line 414
    .end local v1    # "cmd":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "index":I
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "m":I
    .end local v9    # "r":Ljava/io/InputStreamReader;
    .end local v10    # "returnData":Ljava/io/LineNumberReader;
    .end local v12    # "splitStr":[Ljava/lang/String;
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v13

    goto :goto_6

    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v14

    goto :goto_7

    .restart local v1    # "cmd":Ljava/lang/String;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v9    # "r":Ljava/io/InputStreamReader;
    .restart local v10    # "returnData":Ljava/io/LineNumberReader;
    :catch_3
    move-exception v13

    goto/16 :goto_1
.end method

.method private supportPatch()V
    .locals 2

    .prologue
    .line 624
    const-string v0, "patch"

    const-class v1, Lcom/netease/ntunisdk/base/ReplacebyPatch;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    return-void
.end method


# virtual methods
.method public createSessionId()V
    .locals 2

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AD_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/download/util/StrUtil;->getRandomId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/download/reporter/ReportUtil;->mSessionId:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public getAreaZone()Ljava/lang/String;
    .locals 5

    .prologue
    .line 241
    const-string v0, ""

    .line 242
    .local v0, "areaZone":Ljava/lang/String;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 243
    .local v1, "tz":Ljava/util/TimeZone;
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 244
    const-string v2, "ReportUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u5730\u533a="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-object v0
.end method

.method public getCfgTaskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/netease/download/reporter/ReportUtil;->mCfgTaskId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-static {}, Lcom/netease/download/util/StrUtil;->getRandomId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/download/reporter/ReportUtil;->mCfgTaskId:Ljava/lang/String;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/netease/download/reporter/ReportUtil;->mCfgTaskId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentSessionId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    const-string v0, ""

    .line 80
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/netease/download/reporter/ReportUtil;->mSessionId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/netease/download/reporter/ReportUtil;->mSessionId:Ljava/lang/String;

    .line 83
    :cond_0
    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 616
    iget-object v1, p0, Lcom/netease/download/reporter/ReportUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, "deviceId":Ljava/lang/String;
    return-object v0
.end method

.method public getDomainFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 558
    const-string v1, ""

    .line 560
    .local v1, "result":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 561
    const-string v3, "//"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 562
    .local v2, "start":I
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 563
    const/4 v0, 0x0

    .line 565
    .local v0, "end":I
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 566
    :cond_0
    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 572
    :goto_0
    if-gez v0, :cond_1

    .line 573
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 576
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 579
    .end local v0    # "end":I
    .end local v2    # "start":I
    :cond_2
    return-object v1

    .line 569
    .restart local v0    # "end":I
    .restart local v2    # "start":I
    :cond_3
    const/16 v3, 0x3f

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    goto :goto_0
.end method

.method public getLocalIp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 336
    const-string v0, ""

    .line 337
    .local v0, "localIp":Ljava/lang/String;
    iget-object v1, p0, Lcom/netease/download/reporter/ReportUtil;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/netease/download/network/NetUtil;->getLocalIpAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 338
    return-object v0
.end method

.method public getNetworkIsp()Ljava/lang/String;
    .locals 6

    .prologue
    .line 206
    const-string v1, "-1"

    .line 207
    .local v1, "ProvidersName":Ljava/lang/String;
    iget-object v3, p0, Lcom/netease/download/reporter/ReportUtil;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 209
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "IMSI":Ljava/lang/String;
    const-string v3, "ReportUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IMSI="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    if-eqz v0, :cond_1

    .line 215
    const-string v3, "ReportUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IMSI="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v3, "46000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "46002"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 218
    :cond_0
    const-string v1, "\u4e2d\u56fd\u79fb\u52a8"

    .line 228
    :cond_1
    :goto_0
    return-object v1

    .line 220
    :cond_2
    const-string v3, "46001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 221
    const-string v1, "\u4e2d\u56fd\u8054\u901a"

    .line 223
    goto :goto_0

    :cond_3
    const-string v3, "46003"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    const-string v1, "\u4e2d\u56fd\u7535\u4fe1"

    goto :goto_0
.end method

.method public getNetworkSignal()I
    .locals 5

    .prologue
    .line 190
    const/4 v0, -0x1

    .line 192
    .local v0, "signalLevel":I
    iget-object v3, p0, Lcom/netease/download/reporter/ReportUtil;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 193
    iget-object v3, p0, Lcom/netease/download/reporter/ReportUtil;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 194
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 196
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 198
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    .line 202
    .end local v1    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v2    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    return v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 8

    .prologue
    .line 119
    const-string v4, ""

    .line 120
    .local v4, "strNetworkType":Ljava/lang/String;
    iget-object v5, p0, Lcom/netease/download/reporter/ReportUtil;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 121
    .local v1, "manager":Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 123
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 127
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 129
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 131
    const-string v4, "WIFI"

    .line 181
    :cond_1
    :goto_0
    const-string v5, "ReportUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---Network Type : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-object v4

    .line 133
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-nez v5, :cond_1

    .line 135
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "_strSubTypeName":Ljava/lang/String;
    const-string v5, "ReportUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---Network getSubtypeName : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    .line 141
    .local v3, "networkType":I
    packed-switch v3, :pswitch_data_0

    .line 165
    const-string v5, "TD-SCDMA"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "WCDMA"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "CDMA2000"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 167
    :cond_3
    const-string v4, "3G"

    .line 177
    :goto_1
    const-string v5, "ReportUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---Network getSubtype : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :pswitch_0
    const-string v4, "2G"

    .line 148
    goto :goto_1

    .line 158
    :pswitch_1
    const-string v4, "3G"

    .line 159
    goto :goto_1

    .line 161
    :pswitch_2
    const-string v4, "4G"

    .line 162
    goto :goto_1

    .line 171
    :cond_4
    move-object v4, v0

    goto :goto_1

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getOsName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 323
    const-string v0, "android"

    return-object v0
.end method

.method public getOsVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getPatchTaskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/netease/download/reporter/ReportUtil;->mPatchTaskId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Lcom/netease/download/util/StrUtil;->getRandomId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/download/reporter/ReportUtil;->mPatchTaskId:Ljava/lang/String;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/netease/download/reporter/ReportUtil;->mPatchTaskId:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()V
    .locals 3

    .prologue
    .line 254
    const-string v0, "ReportUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u8bf7\u6c42nstool\uff0c\u83b7\u53d6\u7f51\u5173\uff0cdns, ipDnsPicker="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/netease/download/config2/ConfigParams2;->getInstance()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v2

    iget-boolean v2, v2, Lcom/netease/download/config2/ConfigParams2;->ipDnsPicker:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-static {}, Lcom/netease/download/config2/ConfigParams2;->getInstance()Lcom/netease/download/config2/ConfigParams2;

    move-result-object v0

    iget-boolean v0, v0, Lcom/netease/download/config2/ConfigParams2;->ipDnsPicker:Z

    if-eqz v0, :cond_0

    .line 258
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/download/reporter/ReportUtil$1;

    invoke-direct {v1, p0}, Lcom/netease/download/reporter/ReportUtil$1;-><init>(Lcom/netease/download/reporter/ReportUtil;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 317
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 320
    :cond_0
    return-void
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 233
    const-string v0, ""

    .line 234
    .local v0, "timeZone":Ljava/lang/String;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 235
    .local v1, "tz":Ljava/util/TimeZone;
    invoke-virtual {v1, v2, v2}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v0

    .line 236
    const-string v2, "ReportUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u65f6\u5dee="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-object v0
.end method

.method public getUdtVer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    const-string v0, "1.1.6"

    return-object v0
.end method

.method public hasPhonePermission()Z
    .locals 5

    .prologue
    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "hasPhonePermission":Z
    iget-object v2, p0, Lcom/netease/download/reporter/ReportUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 344
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "ReportUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u5305\u540d="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/netease/download/reporter/ReportUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v2, "android.permission.READ_PHONE_STATE"

    iget-object v3, p0, Lcom/netease/download/reporter/ReportUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 346
    :goto_0
    const-string v2, "ReportUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---\u662f\u5426\u62e5\u6709READ_PHONE_STATE\u6743\u9650="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return v0

    .line 345
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/netease/download/reporter/ReportUtil;->mContext:Landroid/content/Context;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/download/reporter/ReportUtil;->mSessionId:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lcom/netease/download/reporter/ReportUtil;->createSessionId()V

    .line 74
    invoke-virtual {p0}, Lcom/netease/download/reporter/ReportUtil;->getPatchTaskId()Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/netease/download/reporter/ReportUtil;->getCfgTaskId()Ljava/lang/String;

    .line 76
    return-void
.end method

.method public ping(Ljava/lang/String;II)Ljava/lang/String;
    .locals 27
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "num"    # I
    .param p3, "timeout"    # I

    .prologue
    .line 458
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    .line 461
    .local v12, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v22, "ReportUtil"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---ping \u53c2\u6570 host= "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", num="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", timeout="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "ping -c "

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " -w "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v16

    .line 464
    .local v16, "p":Ljava/lang/Process;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Process;->waitFor()I

    .line 466
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 467
    .local v10, "input":Ljava/io/InputStream;
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v22, Ljava/io/InputStreamReader;

    move-object/from16 v0, v22

    invoke-direct {v0, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v22

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 468
    .local v8, "in":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 469
    .local v3, "buffer":Ljava/lang/StringBuffer;
    const-string v14, ""

    .line 470
    .local v14, "line":Ljava/lang/String;
    const-string v11, ""

    .line 471
    .local v11, "ip":Ljava/lang/String;
    const-string v4, ""

    .line 472
    .local v4, "cost":Ljava/lang/String;
    const-string v15, ""

    .line 474
    .local v15, "lost":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_3

    .line 510
    const-string v22, "ReportUtil"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "ping result:\n"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const/16 v17, -0x1

    .line 513
    .local v17, "pCost":I
    const-string v22, "ReportUtil"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "ping cost="

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v22, "ReportUtil"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "ping lost="

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 517
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v18

    .line 518
    .local v18, "pCost_d":D
    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v17, v0

    .line 520
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v22

    move/from16 v0, v17

    move-object/from16 v1, v22

    iput v0, v1, Lcom/netease/download/reporter/ReportInfo;->mLocalGwRtt:I

    .line 523
    .end local v18    # "pCost_d":D
    :cond_1
    const/16 v20, -0x1

    .line 525
    .local v20, "pLost":I
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_2

    .line 526
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 527
    invoke-static {}, Lcom/netease/download/reporter/ReportInfo;->getInstance()Lcom/netease/download/reporter/ReportInfo;

    move-result-object v22

    move/from16 v0, v20

    move-object/from16 v1, v22

    iput v0, v1, Lcom/netease/download/reporter/ReportInfo;->mLocalGwLoss:I

    .line 530
    :cond_2
    const-string v22, "cost"

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 531
    const-string v22, "lost"

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 532
    const-string v22, "ip"

    move-object/from16 v0, v22

    invoke-virtual {v12, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 548
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .end local v4    # "cost":Ljava/lang/String;
    .end local v8    # "in":Ljava/io/BufferedReader;
    .end local v10    # "input":Ljava/io/InputStream;
    .end local v11    # "ip":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "lost":Ljava/lang/String;
    .end local v16    # "p":Ljava/lang/Process;
    .end local v17    # "pCost":I
    .end local v20    # "pLost":I
    :goto_1
    const-string v22, "ReportUtil"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---ping\u7ed3\u679c="

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/netease/download/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v22

    return-object v22

    .line 475
    .restart local v3    # "buffer":Ljava/lang/StringBuffer;
    .restart local v4    # "cost":Ljava/lang/String;
    .restart local v8    # "in":Ljava/io/BufferedReader;
    .restart local v10    # "input":Ljava/io/InputStream;
    .restart local v11    # "ip":Ljava/lang/String;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v15    # "lost":Ljava/lang/String;
    .restart local v16    # "p":Ljava/lang/Process;
    :cond_3
    :try_start_1
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "\n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 477
    const-string v22, "/avg/"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 478
    const-string v22, "="

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 480
    .local v2, "avgTmp":[Ljava/lang/String;
    array-length v0, v2

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_4

    .line 481
    const/16 v22, 0x1

    aget-object v22, v2, v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 482
    .local v7, "first":I
    const/16 v22, 0x1

    aget-object v22, v2, v22

    const-string v23, "/"

    add-int/lit8 v24, v7, 0x1

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 484
    .local v6, "end":I
    add-int/lit8 v22, v7, 0x1

    move/from16 v0, v22

    if-ge v0, v6, :cond_4

    .line 485
    const/16 v22, 0x1

    aget-object v22, v2, v22

    add-int/lit8 v23, v7, 0x1

    const/16 v24, 0x1

    aget-object v24, v2, v24

    const-string v25, "/"

    add-int/lit8 v26, v7, 0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v24

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 490
    .end local v2    # "avgTmp":[Ljava/lang/String;
    .end local v6    # "end":I
    .end local v7    # "first":I
    :cond_4
    const-string v22, "% packet loss"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 491
    const-string v22, "% packet loss"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 492
    .local v9, "infos":[Ljava/lang/String;
    if-eqz v9, :cond_5

    array-length v0, v9

    move/from16 v22, v0

    if-lez v22, :cond_5

    .line 493
    const/16 v22, 0x0

    aget-object v22, v9, v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 494
    array-length v13, v9

    .line 495
    .local v13, "length":I
    add-int/lit8 v22, v13, -0x1

    aget-object v15, v9, v22

    .line 499
    .end local v9    # "infos":[Ljava/lang/String;
    .end local v13    # "length":I
    :cond_5
    const-string v22, "("

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_0

    const-string v22, ")"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 501
    const-string v22, "("

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    add-int/lit8 v21, v22, 0x1

    .line 502
    .local v21, "start":I
    const-string v22, ")"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 504
    .restart local v6    # "end":I
    move/from16 v0, v21

    if-ge v0, v6, :cond_0

    .line 505
    const-string v22, "("

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    const-string v23, ")"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v11

    goto/16 :goto_0

    .line 535
    .end local v3    # "buffer":Ljava/lang/StringBuffer;
    .end local v4    # "cost":Ljava/lang/String;
    .end local v6    # "end":I
    .end local v8    # "in":Ljava/io/BufferedReader;
    .end local v10    # "input":Ljava/io/InputStream;
    .end local v11    # "ip":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    .end local v15    # "lost":Ljava/lang/String;
    .end local v16    # "p":Ljava/lang/Process;
    .end local v21    # "start":I
    :catch_0
    move-exception v5

    .line 536
    .local v5, "e":Ljava/io/IOException;
    const-string v22, "ReportUtil"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---ping\u5f02\u5e38 IOException="

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 539
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 540
    .local v5, "e":Ljava/lang/InterruptedException;
    const-string v22, "ReportUtil"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---ping\u5f02\u5e38 InterruptedException="

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1

    .line 543
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :catch_2
    move-exception v5

    .line 544
    .local v5, "e":Lorg/json/JSONException;
    const-string v22, "ReportUtil"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "\u65e5\u5fd7\u4e0a\u4f20\u6a21\u5757---ping\u5f02\u5e38 JSONException="

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/netease/download/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public ping(Ljava/lang/String;)V
    .locals 2
    .param p1, "gateway"    # Ljava/lang/String;

    .prologue
    .line 352
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/netease/download/reporter/ReportUtil$2;

    invoke-direct {v1, p0, p1}, Lcom/netease/download/reporter/ReportUtil$2;-><init>(Lcom/netease/download/reporter/ReportUtil;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 382
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 383
    return-void
.end method

.method public replaceDomainWithIpAddr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "ipAddr"    # Ljava/lang/String;
    .param p3, "subString"    # Ljava/lang/String;

    .prologue
    .line 583
    const-string v1, ""

    .line 585
    .local v1, "result":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 586
    const-string v4, "//"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 587
    .local v3, "start":I
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {p1, p3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 589
    .local v0, "end":I
    if-gez v3, :cond_0

    .line 590
    const/4 v3, -0x2

    .line 593
    :cond_0
    if-gez v0, :cond_1

    .line 594
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 597
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 598
    .local v2, "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v4, v3, 0x2

    invoke-virtual {v2, v4, v0, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 602
    .end local v0    # "end":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "start":I
    :cond_2
    return-object v1
.end method
