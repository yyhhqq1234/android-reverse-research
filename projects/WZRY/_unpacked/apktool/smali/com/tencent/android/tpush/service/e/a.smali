.class public Lcom/tencent/android/tpush/service/e/a;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static a:I

.field private static final b:Ljava/lang/String;

.field private static c:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/tencent/android/tpush/service/e/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/service/e/a;->b:Ljava/lang/String;

    .line 89
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/service/e/a;->c:Landroid/net/Uri;

    .line 571
    const/4 v0, 0x0

    sput v0, Lcom/tencent/android/tpush/service/e/a;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)B
    .locals 1

    .prologue
    .line 277
    invoke-static {p0}, Lcom/tencent/android/tpush/service/e/a;->c(Landroid/content/Context;)I

    move-result v0

    .line 278
    sparse-switch v0, :sswitch_data_0

    .line 313
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 280
    :sswitch_0
    const/4 v0, 0x3

    goto :goto_0

    .line 283
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 286
    :sswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 289
    :sswitch_3
    const/4 v0, 0x5

    goto :goto_0

    .line 292
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 295
    :sswitch_5
    const/4 v0, 0x7

    goto :goto_0

    .line 298
    :sswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 301
    :sswitch_7
    const/16 v0, 0x9

    goto :goto_0

    .line 304
    :sswitch_8
    const/16 v0, 0x8

    goto :goto_0

    .line 307
    :sswitch_9
    const/16 v0, 0xa

    goto :goto_0

    .line 310
    :sswitch_a
    const/16 v0, 0xb

    goto :goto_0

    .line 278
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0x8 -> :sswitch_4
        0x10 -> :sswitch_3
        0x20 -> :sswitch_6
        0x40 -> :sswitch_5
        0x100 -> :sswitch_8
        0x200 -> :sswitch_7
        0x400 -> :sswitch_9
        0x800 -> :sswitch_a
    .end sparse-switch
.end method

.method public static a()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 554
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "ping -c 1 -w 10 www.qq.com"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 555
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v2

    .line 557
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 558
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 559
    const-string v3, ""

    .line 560
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 562
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 563
    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 568
    :cond_1
    :goto_0
    return v0

    .line 565
    :catch_0
    move-exception v1

    .line 566
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 376
    .line 378
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/tencent/android/tpush/service/e/a;->c:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 380
    if-nez v1, :cond_2

    .line 394
    if-eqz v1, :cond_0

    .line 396
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_0
    :goto_0
    move-object v0, v6

    .line 399
    :cond_1
    :goto_1
    return-object v0

    .line 383
    :cond_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 384
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-eqz v0, :cond_4

    .line 394
    if-eqz v1, :cond_3

    .line 396
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_3
    :goto_2
    move-object v0, v6

    .line 399
    goto :goto_1

    .line 387
    :cond_4
    :try_start_4
    const-string v0, "proxy"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 394
    if-eqz v1, :cond_1

    .line 396
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 397
    :catch_0
    move-exception v1

    goto :goto_1

    .line 390
    :catch_1
    move-exception v0

    .line 392
    :goto_3
    :try_start_6
    const-string v0, ""
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 394
    if-eqz v6, :cond_1

    .line 396
    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 397
    :catch_2
    move-exception v1

    goto :goto_1

    .line 394
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_4
    if-eqz v1, :cond_5

    .line 396
    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 399
    :cond_5
    :goto_5
    throw v0

    .line 397
    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_5

    .line 394
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v6

    goto :goto_4

    .line 390
    :catch_6
    move-exception v0

    move-object v6, v1

    goto :goto_3
.end method

.method public static c(Landroid/content/Context;)I
    .locals 6

    .prologue
    const/16 v2, 0x200

    const/16 v3, 0x100

    const/16 v1, 0x80

    .line 473
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 475
    if-nez v0, :cond_0

    move v0, v1

    .line 522
    :goto_0
    return v0

    .line 478
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 479
    if-nez v0, :cond_1

    move v0, v1

    .line 480
    goto :goto_0

    .line 481
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    .line 482
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "WIFI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 483
    const/4 v0, 0x2

    goto :goto_0

    .line 485
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    move v0, v1

    .line 486
    goto :goto_0

    .line 488
    :cond_3
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 489
    const-string v4, "cmwap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 490
    const/4 v0, 0x1

    goto :goto_0

    .line 491
    :cond_4
    const-string v4, "cmnet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "epc.tmobile.com"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 493
    :cond_5
    const/4 v0, 0x4

    goto :goto_0

    .line 494
    :cond_6
    const-string/jumbo v4, "uniwap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 495
    const/16 v0, 0x10

    goto :goto_0

    .line 496
    :cond_7
    const-string/jumbo v4, "uninet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 497
    const/16 v0, 0x8

    goto :goto_0

    .line 498
    :cond_8
    const-string/jumbo v4, "wap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 499
    const/16 v0, 0x40

    goto :goto_0

    .line 500
    :cond_9
    const-string v4, "net"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 501
    const/16 v0, 0x20

    goto :goto_0

    .line 502
    :cond_a
    const-string v4, "ctwap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v0, v2

    .line 503
    goto/16 :goto_0

    .line 504
    :cond_b
    const-string v4, "ctnet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    move v0, v3

    .line 505
    goto/16 :goto_0

    .line 506
    :cond_c
    const-string v4, "3gwap"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 507
    const/16 v0, 0x400

    goto/16 :goto_0

    .line 508
    :cond_d
    const-string v4, "3gnet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 509
    const/16 v0, 0x800

    goto/16 :goto_0

    .line 510
    :cond_e
    const-string v4, "#777"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 511
    invoke-static {p0}, Lcom/tencent/android/tpush/service/e/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 512
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-lez v0, :cond_f

    move v0, v2

    .line 513
    goto/16 :goto_0

    :cond_f
    move v0, v3

    .line 515
    goto/16 :goto_0

    .line 519
    :catch_0
    move-exception v0

    .line 520
    sget-object v2, Lcom/tencent/android/tpush/service/e/a;->b:Ljava/lang/String;

    const-string v3, "getMProxyType>>> "

    invoke-static {v2, v3, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_10
    move v0, v1

    .line 522
    goto/16 :goto_0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 576
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 577
    if-eqz v0, :cond_2

    .line 578
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    move v1, v0

    .line 592
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 578
    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    .line 582
    invoke-static {}, Lcom/tencent/android/tpush/service/e/a;->a()Z

    move-result v3

    if-nez v3, :cond_0

    .line 585
    sget-object v3, Lcom/tencent/android/tpush/service/e/a;->b:Ljava/lang/String;

    const-string v4, "APNUtil -> checkNetWork"

    invoke-static {v3, v4, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 586
    sget v0, Lcom/tencent/android/tpush/service/e/a;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/android/tpush/service/e/a;->a:I

    .line 587
    sget v0, Lcom/tencent/android/tpush/service/e/a;->a:I

    const/4 v3, 0x5

    if-lt v0, v3, :cond_2

    .line 588
    sput v2, Lcom/tencent/android/tpush/service/e/a;->a:I

    goto :goto_1

    :cond_2
    move v1, v2

    .line 592
    goto :goto_1
.end method
