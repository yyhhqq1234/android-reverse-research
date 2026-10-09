.class public Lcom/subao/common/n/e$a;
.super Ljava/lang/Object;
.source "InfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/n/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method static a(I)I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 407
    const/16 v0, 0xa

    if-gt p0, v0, :cond_0

    .line 418
    :goto_0
    return v1

    .line 415
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/subao/common/n/e;->b()Lcom/subao/common/n/d$a;

    move-result-object v0

    const-string v2, "/sys/devices/system/cpu/"

    invoke-interface {v0, v2}, Lcom/subao/common/n/d$a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/subao/common/n/e$a;->a(Ljava/io/File;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 416
    if-le v0, v1, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 417
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Ljava/io/File;)I
    .locals 1

    .prologue
    .line 423
    new-instance v0, Lcom/subao/common/n/e$a$1;

    invoke-direct {v0}, Lcom/subao/common/n/e$a$1;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 441
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    array-length v0, v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)J
    .locals 6

    .prologue
    .line 474
    const/4 v1, 0x0

    .line 476
    :try_start_0
    invoke-static {}, Lcom/subao/common/n/e;->b()Lcom/subao/common/n/d$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/subao/common/n/d$a;->c(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 477
    const/16 v0, 0x80

    new-array v0, v0, [B

    .line 478
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 479
    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-static {v0, v3, v2, v4, v5}, Lcom/subao/common/e;->a([BIIJ)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 481
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    return-wide v2

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 369
    :try_start_0
    invoke-static {}, Lcom/subao/common/n/e;->b()Lcom/subao/common/n/d$a;

    move-result-object v1

    const-string v2, "/proc/cpuinfo"

    invoke-interface {v1, v2}, Lcom/subao/common/n/d$a;->b(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v1

    invoke-static {v1}, Lcom/subao/common/n/e$a;->a(Ljava/io/Reader;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 373
    :goto_0
    return-object v0

    .line 372
    :catch_0
    move-exception v1

    goto :goto_0

    .line 370
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static a(Ljava/io/Reader;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 378
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 380
    :try_start_0
    const-string v0, "Hardware\\s*:\\s*(.+)"

    const/4 v2, 0x2

    invoke-static {v0, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 382
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 383
    if-nez v2, :cond_1

    .line 384
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0

    .line 386
    :cond_1
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 387
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 388
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 389
    if-eqz v2, :cond_0

    .line 390
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 395
    invoke-static {v1}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    return-object v0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 403
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Lcom/subao/common/n/e$a;->a(I)I

    move-result v0

    return v0
.end method

.method public static c()J
    .locals 11

    .prologue
    const/4 v0, 0x0

    const-wide/16 v4, -0x1

    .line 451
    :try_start_0
    invoke-static {}, Lcom/subao/common/n/e$a;->b()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    move v6, v0

    move-wide v2, v4

    .line 452
    :goto_0
    if-ge v6, v7, :cond_0

    .line 453
    :try_start_1
    sget-object v0, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v1, "%s/cpu%d/cpufreq/cpuinfo_max_freq"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "/sys/devices/system/cpu/"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v0, v1, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 454
    invoke-static {v0}, Lcom/subao/common/n/e$a;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 455
    cmp-long v8, v0, v2

    if-lez v8, :cond_2

    .line 452
    :goto_1
    add-int/lit8 v6, v6, 0x1

    move-wide v2, v0

    goto :goto_0

    .line 459
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    .line 460
    const-string v0, "/proc/cpuinfo"

    const-string v1, "cpu MHz"

    const-wide/16 v6, -0x1

    invoke-static {v0, v1, v6, v7}, Lcom/subao/common/n/e;->a(Ljava/lang/String;Ljava/lang/String;J)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v0

    .line 461
    cmp-long v4, v0, v4

    if-eqz v4, :cond_1

    .line 462
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v0

    .line 470
    :cond_1
    :goto_2
    return-wide v2

    .line 467
    :catch_0
    move-exception v0

    move-wide v2, v4

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    .line 465
    :catch_2
    move-exception v0

    move-wide v2, v4

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method
