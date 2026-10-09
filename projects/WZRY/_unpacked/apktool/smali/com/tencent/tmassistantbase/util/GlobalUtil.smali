.class public Lcom/tencent/tmassistantbase/util/GlobalUtil;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field protected static final SharedPreferencesName:Ljava/lang/String; = "TMAssistantSDKSharedPreference"

.field protected static final TAG:Ljava/lang/String;

.field protected static mInstance:Lcom/tencent/tmassistantbase/util/GlobalUtil;

.field protected static mMemUUID:I


# instance fields
.field public final JCE_CMDID_Empty:I

.field public final JCE_CMDID_GetAppSimpleDetail:I

.field public final JCE_CMDID_GetAppUpdate:I

.field public final JCE_CMDID_GetAuthorized:I

.field public final JCE_CMDID_GetSettings:I

.field public final JCE_CMDID_ReportLog:I

.field protected mContext:Landroid/content/Context;

.field public mJCECmdIdMap:Ljava/util/HashMap;

.field public mQUA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/tencent/tmassistantbase/util/GlobalUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->TAG:Ljava/lang/String;

    .line 66
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mInstance:Lcom/tencent/tmassistantbase/util/GlobalUtil;

    .line 74
    const/4 v0, 0x0

    sput v0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mMemUUID:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mQUA:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->JCE_CMDID_Empty:I

    .line 80
    iput v1, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->JCE_CMDID_ReportLog:I

    .line 81
    iput v3, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->JCE_CMDID_GetSettings:I

    .line 82
    iput v4, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->JCE_CMDID_GetAppUpdate:I

    .line 83
    iput v5, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->JCE_CMDID_GetAuthorized:I

    .line 84
    iput v6, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->JCE_CMDID_GetAppSimpleDetail:I

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mJCECmdIdMap:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mJCECmdIdMap:Ljava/util/HashMap;

    .line 92
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mJCECmdIdMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ReportLog"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mJCECmdIdMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GetSettings"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mJCECmdIdMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GetAppUpdate"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mJCECmdIdMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GetAuthorized"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mJCECmdIdMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GetAppSimpleDetail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-void
.end method

.method public static String2List(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5

    .prologue
    .line 385
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 386
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 387
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 388
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 389
    aget-object v3, v2, v0

    .line 390
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 391
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 388
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 395
    :cond_1
    return-object v1
.end method

.method public static assistantErrorCode2SDKErrorCode(I)I
    .locals 1

    .prologue
    const/16 v0, 0x25c

    .line 542
    .line 543
    sparse-switch p0, :sswitch_data_0

    .line 596
    :goto_0
    :sswitch_0
    return v0

    .line 545
    :sswitch_1
    const/4 v0, 0x0

    .line 546
    goto :goto_0

    .line 551
    :sswitch_2
    const/16 v0, 0x2c5

    .line 552
    goto :goto_0

    .line 554
    :sswitch_3
    const/16 v0, 0x2c4

    .line 555
    goto :goto_0

    .line 557
    :sswitch_4
    const/16 v0, 0x2da

    .line 558
    goto :goto_0

    .line 560
    :sswitch_5
    const/16 v0, 0x2bf

    .line 561
    goto :goto_0

    .line 563
    :sswitch_6
    const/4 v0, 0x1

    .line 564
    goto :goto_0

    .line 566
    :sswitch_7
    const/16 v0, 0x2db

    .line 567
    goto :goto_0

    .line 569
    :sswitch_8
    const/16 v0, 0x2bc

    .line 570
    goto :goto_0

    .line 572
    :sswitch_9
    const/16 v0, 0x2dc

    .line 573
    goto :goto_0

    .line 575
    :sswitch_a
    const/16 v0, 0x259

    .line 576
    goto :goto_0

    .line 581
    :sswitch_b
    const/16 v0, 0x25a

    .line 582
    goto :goto_0

    .line 587
    :sswitch_c
    const/16 v0, 0x25e

    .line 588
    goto :goto_0

    .line 590
    :sswitch_d
    const/16 v0, 0x2bd

    .line 591
    goto :goto_0

    .line 543
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e8 -> :sswitch_0
        -0x1c -> :sswitch_d
        -0x1b -> :sswitch_c
        -0x1a -> :sswitch_0
        -0x19 -> :sswitch_b
        -0x18 -> :sswitch_0
        -0x17 -> :sswitch_a
        -0x16 -> :sswitch_9
        -0x15 -> :sswitch_8
        -0x10 -> :sswitch_7
        -0xf -> :sswitch_6
        -0xd -> :sswitch_5
        -0xc -> :sswitch_4
        -0xb -> :sswitch_3
        -0x1 -> :sswitch_2
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method public static assistantState2SDKState(I)I
    .locals 1

    .prologue
    .line 508
    .line 509
    packed-switch p0, :pswitch_data_0

    .line 529
    :pswitch_0
    const/4 v0, 0x0

    .line 532
    :goto_0
    return v0

    .line 511
    :pswitch_1
    const/4 v0, 0x2

    .line 512
    goto :goto_0

    .line 514
    :pswitch_2
    const/4 v0, 0x1

    .line 515
    goto :goto_0

    .line 517
    :pswitch_3
    const/4 v0, 0x3

    .line 518
    goto :goto_0

    .line 520
    :pswitch_4
    const/4 v0, 0x4

    .line 521
    goto :goto_0

    .line 523
    :pswitch_5
    const/4 v0, 0x5

    .line 524
    goto :goto_0

    .line 526
    :pswitch_6
    const/4 v0, 0x6

    .line 527
    goto :goto_0

    .line 509
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public static calcMD5AsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 348
    const-string v0, ""

    .line 349
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 350
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 353
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 354
    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    .line 355
    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v3, v2, v4, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 356
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 358
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 359
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 360
    aget-byte v4, v2, v1

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 362
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 367
    :cond_1
    :goto_1
    return-object v0

    .line 363
    :catch_0
    move-exception v1

    .line 364
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1
.end method

.method public static deleteOldDB(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 620
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 621
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 622
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 624
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 625
    const-string v0, "GlobalUtil"

    const-string v1, "deleteDB"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 626
    :catch_0
    move-exception v0

    .line 627
    const-string v0, "GlobalUtil"

    const-string v1, "deleteDB failed"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getAppPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    if-eqz p0, :cond_0

    .line 172
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getAppVersionCode(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 183
    if-eqz p0, :cond_0

    .line 185
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 189
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_0
    :goto_0
    return v0

    .line 190
    :catch_0
    move-exception v1

    .line 191
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;
    .locals 2

    .prologue
    .line 100
    const-class v1, Lcom/tencent/tmassistantbase/util/GlobalUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mInstance:Lcom/tencent/tmassistantbase/util/GlobalUtil;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/tencent/tmassistantbase/util/GlobalUtil;

    invoke-direct {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;-><init>()V

    sput-object v0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mInstance:Lcom/tencent/tmassistantbase/util/GlobalUtil;

    .line 103
    :cond_0
    sget-object v0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mInstance:Lcom/tencent/tmassistantbase/util/GlobalUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getMemUUID()I
    .locals 3

    .prologue
    .line 376
    const-class v1, Lcom/tencent/tmassistantbase/util/GlobalUtil;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mMemUUID:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mMemUUID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getNetStatus()Ljava/lang/String;
    .locals 5

    .prologue
    .line 641
    const-class v1, Lcom/tencent/tmassistantbase/util/GlobalUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 643
    if-nez v0, :cond_0

    .line 644
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 669
    :goto_0
    monitor-exit v1

    return-object v0

    .line 648
    :cond_0
    :try_start_1
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 649
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 651
    :catch_0
    move-exception v0

    .line 652
    :try_start_2
    const-string v0, ""

    goto :goto_0

    .line 655
    :cond_1
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 656
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 657
    if-nez v0, :cond_2

    .line 658
    const-string v0, ""

    goto :goto_0

    .line 660
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 661
    const-string/jumbo v0, "wifi"

    goto :goto_0

    .line 663
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 664
    if-nez v0, :cond_4

    .line 665
    const-string v0, ""

    goto :goto_0

    .line 667
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 668
    sget-object v2, Lcom/tencent/tmassistantbase/util/GlobalUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "netInfo  =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 641
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isDBExist(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 606
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 607
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 608
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    const/4 v0, 0x1

    .line 612
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkConncted()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 673
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getInstance()Lcom/tencent/tmassistantbase/util/GlobalUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 674
    if-nez v0, :cond_0

    .line 675
    sget-object v0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->TAG:Ljava/lang/String;

    const-string v2, "GlobalUtil.getInstance().getContext() == null."

    invoke-static {v0, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :goto_0
    return v1

    .line 680
    :cond_0
    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 681
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 682
    if-eqz v0, :cond_1

    .line 683
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    :goto_1
    move v1, v0

    .line 685
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static updateFilePathAuthorized(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 480
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 481
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 482
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    .line 483
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    .line 485
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chmod 777 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 486
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 777 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 488
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chmod 777 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chmod 777"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :goto_0
    return-void

    .line 496
    :catch_0
    move-exception v0

    .line 497
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public canReportValue()Z
    .locals 2

    .prologue
    .line 410
    const-string/jumbo v0, "wifi"

    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getNetStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    const/4 v0, 0x1

    .line 413
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkPermission(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 694
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_1

    .line 695
    sget-object v0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no need to check permission,Build.VERSION.SDK_INT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    :cond_0
    :goto_0
    return-void

    .line 698
    :cond_1
    if-eqz p1, :cond_2

    .line 702
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 703
    sget-object v2, Lcom/tencent/tmassistantbase/util/GlobalUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPermission context = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v2, "checkSelfPermission"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 705
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v4, v2, v3

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 710
    :goto_1
    sget-object v1, Lcom/tencent/tmassistantbase/util/GlobalUtil;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkPermission hasWriteExternalStorage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 713
    sget-object v0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->TAG:Ljava/lang/String;

    const-string v1, "checkPermission Permission WRITE_EXTERNAL_STORAGE is DENIED"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    new-instance v0, Lcom/tencent/tmassistantbase/common/PermissionDeniedException;

    const-string v1, "Permission WRITE_EXTERNAL_STORAGE is DENIED!!Please request permission again"

    invoke-direct {v0, v1}, Lcom/tencent/tmassistantbase/common/PermissionDeniedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :catch_0
    move-exception v0

    .line 707
    sget-object v2, Lcom/tencent/tmassistantbase/util/GlobalUtil;->TAG:Ljava/lang/String;

    const-string v3, "checkPermission Exception"

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    goto :goto_1

    .line 717
    :cond_2
    sget-object v0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->TAG:Ljava/lang/String;

    const-string v1, "checkPermission context is null"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    .line 118
    sput-object v0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mInstance:Lcom/tencent/tmassistantbase/util/GlobalUtil;

    .line 119
    return-void
.end method

.method public getAndroidIdInPhone()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x0

    .line 236
    :goto_0
    return-object v0

    .line 231
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 236
    const-string v0, ""

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 274
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 293
    :goto_0
    return-object v0

    .line 278
    :cond_0
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    .line 279
    sget-boolean v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMEI:Z

    if-nez v0, :cond_1

    .line 280
    invoke-static {}, Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;->getKAUInstance()Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;->getDualSimIMEIInfoMethod(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 285
    :goto_1
    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    .line 286
    const/4 v2, 0x0

    aget-object v0, v0, v2

    goto :goto_0

    .line 282
    :cond_1
    invoke-static {}, Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;->getKAUInstance()Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;->getDualSimIMEIInfoNormalMethod(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 288
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 289
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    .line 292
    sget-object v2, Lcom/tencent/tmassistantbase/util/GlobalUtil;->TAG:Ljava/lang/String;

    const-string v3, "getImei Exception"

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 293
    goto :goto_0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 299
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 318
    :goto_0
    return-object v0

    .line 303
    :cond_0
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    .line 304
    sget-boolean v0, Lcom/tencent/tmassistantbase/kapalai/MobileIssueSettings;->isSupportDualSimIMSI:Z

    if-nez v0, :cond_1

    .line 305
    invoke-static {}, Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;->getKAUInstance()Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;->getDualSimIMSIInfoMethod(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 310
    :goto_1
    if-eqz v0, :cond_2

    array-length v2, v0

    if-lez v2, :cond_2

    .line 311
    const/4 v2, 0x0

    aget-object v0, v0, v2

    goto :goto_0

    .line 307
    :cond_1
    invoke-static {}, Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;->getKAUInstance()Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/tencent/tmassistantbase/kapalai/KapalaiAdapterUtil;->getDualSimIMSIInfoNormalMethod(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 313
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 314
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    sget-object v2, Lcom/tencent/tmassistantbase/util/GlobalUtil;->TAG:Ljava/lang/String;

    const-string v3, "getImsi Exception"

    invoke-static {v2, v3, v0}, Lcom/tencent/tmassistantbase/util/TMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 318
    goto :goto_0
.end method

.method public getJceCmdIdByClassName(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 128
    if-nez p1, :cond_0

    move v0, v2

    .line 144
    :goto_0
    return v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mJCECmdIdMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 133
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mJCECmdIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 135
    if-eqz v0, :cond_1

    .line 136
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 137
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 138
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 144
    goto :goto_0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 324
    const/4 v0, 0x0

    .line 336
    :goto_0
    return-object v0

    .line 328
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 329
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 330
    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 333
    :cond_1
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    const-string v0, ""

    goto :goto_0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 150
    const-string v0, ""

    .line 153
    :goto_0
    return-object v0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 153
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkType()I
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 162
    :goto_0
    return v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 162
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method public getPhoneGuid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 246
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 247
    const-string v0, ""

    .line 253
    :goto_0
    return-object v0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    const-string v1, "TMAssistantSDKSharedPreference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_1

    .line 251
    const-string v1, "TMAssistantSDKPhoneGUID"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 253
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getQQDownloaderAPILevel()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 422
    iget-object v1, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 423
    const-string v1, "SelfUpdateSDK"

    const-string v2, "context == null"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_0
    :goto_0
    return v0

    .line 427
    :cond_1
    const-string v1, "SelfUpdateSDK"

    const-string v2, "getQQDownloaderAPILevel"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 430
    const-string v2, "com.tencent.android.qqdownloader"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 431
    const-string v2, "SelfUpdateSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appInfo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 433
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.tencent.android.qqdownloader.sdk.apilevel"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 434
    const-string v2, "SelfUpdateSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apiLevel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 435
    goto :goto_0

    .line 439
    :catch_0
    move-exception v1

    .line 440
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getQQDownloaderVersionCode()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 451
    iget-object v1, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 473
    :cond_0
    :goto_0
    return v0

    .line 458
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 460
    if-eqz v1, :cond_0

    .line 462
    const-string v2, "com.tencent.android.qqdownloader"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 463
    if-eqz v1, :cond_0

    .line 466
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 469
    :catch_0
    move-exception v1

    .line 470
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 111
    iput-object p1, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    .line 112
    new-instance v0, Lcom/tencent/tmassistantbase/util/QUASetting;

    invoke-direct {v0, p1}, Lcom/tencent/tmassistantbase/util/QUASetting;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/tmassistantbase/util/QUASetting;->buildQUA()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mQUA:Ljava/lang/String;

    .line 113
    invoke-static {p1}, Lcom/tencent/tmassistantbase/util/TMLog;->initTMLog(Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method public setNetTypeValue(B)V
    .locals 0

    .prologue
    .line 403
    return-void
.end method

.method public setPhoneGuid(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    if-eqz p1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/tencent/tmassistantbase/util/GlobalUtil;->mContext:Landroid/content/Context;

    const-string v1, "TMAssistantSDKSharedPreference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_0

    .line 268
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TMAssistantSDKPhoneGUID"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
