.class public abstract Lcom/subao/common/e/ab;
.super Ljava/lang/Object;
.source "PortalDataDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/e/ab$c;,
        Lcom/subao/common/e/ab$b;,
        Lcom/subao/common/e/ab$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile b:J


# instance fields
.field private final c:Lcom/subao/common/e/ab$a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/subao/common/e/ab;->a:Ljava/util/List;

    .line 77
    invoke-static {}, Lcom/subao/common/e/ab;->f()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/subao/common/e/ab;->b:J

    return-void
.end method

.method protected constructor <init>(Lcom/subao/common/e/ab$a;)V
    .locals 0
    .param p1    # Lcom/subao/common/e/ab$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/subao/common/e/ab;->c:Lcom/subao/common/e/ab$a;

    .line 93
    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;)J
    .locals 7

    .prologue
    const-wide/32 v0, 0x36ee80

    const-wide/16 v2, 0x0

    .line 118
    const-string v4, "Cache-Control"

    invoke-virtual {p0, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-wide v0, v2

    .line 142
    :goto_0
    return-wide v0

    .line 122
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "max-age="

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-gt v5, v6, :cond_1

    move-wide v0, v2

    .line 123
    goto :goto_0

    .line 125
    :cond_1
    const-string v5, "max-age="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    move-wide v0, v2

    .line 126
    goto :goto_0

    .line 128
    :cond_2
    const-string v5, "max-age="

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 131
    :try_start_0
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 135
    cmp-long v6, v4, v2

    if-gtz v6, :cond_3

    move-wide v0, v2

    .line 136
    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    move-wide v0, v2

    .line 133
    goto :goto_0

    .line 138
    :cond_3
    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v4

    .line 139
    cmp-long v4, v2, v0

    if-lez v4, :cond_4

    .line 142
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_4
    move-wide v0, v2

    goto :goto_1
.end method

.method private b(Lcom/subao/common/e/ac;)V
    .locals 3

    .prologue
    .line 420
    invoke-static {}, Lcom/subao/common/e/ab;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {p1}, Lcom/subao/common/e/ac;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/subao/common/n/c;->b(J)Ljava/util/Calendar;

    move-result-object v0

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save data, expire time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x7

    .line 423
    invoke-static {v0, v2}, Lcom/subao/common/n/c;->a(Ljava/util/Calendar;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 422
    invoke-virtual {p0, v0}, Lcom/subao/common/e/ab;->a(Ljava/lang/String;)V

    .line 426
    :cond_0
    invoke-direct {p0}, Lcom/subao/common/e/ab;->e()Lcom/subao/common/f/c;

    move-result-object v1

    .line 427
    const/4 v0, 0x0

    .line 428
    monitor-enter p0

    .line 430
    :try_start_0
    invoke-interface {v1}, Lcom/subao/common/f/c;->c()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/subao/common/e/ac;->a(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    invoke-direct {p0, v0}, Lcom/subao/common/e/ab;->b(Ljava/lang/String;)V

    .line 436
    return-void

    .line 431
    :catch_0
    move-exception v0

    .line 432
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 434
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 155
    if-eqz p1, :cond_0

    .line 156
    const-string v0, "SubaoData"

    invoke-direct {p0, p1}, Lcom/subao/common/e/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Portal."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/subao/common/e/ab;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/subao/common/e/ab;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".portal2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()Lcom/subao/common/f/c;
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/subao/common/e/ab;->c:Lcom/subao/common/e/ab$a;

    invoke-direct {p0}, Lcom/subao/common/e/ab;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/subao/common/e/ab$a;->a(Ljava/lang/String;)Lcom/subao/common/f/c;

    move-result-object v0

    return-object v0
.end method

.method public static f()J
    .locals 2

    .prologue
    .line 96
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static declared-synchronized g()J
    .locals 4

    .prologue
    .line 103
    const-class v0, Lcom/subao/common/e/ab;

    monitor-enter v0

    :try_start_0
    sget-wide v2, Lcom/subao/common/e/ab;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-wide v2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static h()Z
    .locals 1

    .prologue
    .line 107
    const-string v0, "SubaoData"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected varargs a([Lcom/subao/common/e/ac;)Lcom/subao/common/e/ac;
    .locals 12

    .prologue
    const-wide/16 v10, 0x3e8

    .line 301
    invoke-static {}, Lcom/subao/common/e/ab;->h()Z

    move-result v8

    .line 305
    array-length v0, p1

    if-lez v0, :cond_1

    .line 306
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 308
    if-eqz v8, :cond_2

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use init data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/subao/common/n/h;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/subao/common/e/ab;->a(Ljava/lang/String;)V

    move-object v7, v0

    .line 319
    :goto_0
    iget-object v0, p0, Lcom/subao/common/e/ab;->c:Lcom/subao/common/e/ab$a;

    iget-object v0, v0, Lcom/subao/common/e/ab$a;->d:Lcom/subao/common/j/j;

    invoke-interface {v0}, Lcom/subao/common/j/j;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 320
    if-eqz v8, :cond_0

    .line 321
    const-string v0, "No network connection"

    invoke-virtual {p0, v0}, Lcom/subao/common/e/ab;->a(Ljava/lang/String;)V

    .line 414
    :cond_0
    :goto_1
    return-object v7

    .line 312
    :cond_1
    invoke-virtual {p0}, Lcom/subao/common/e/ab;->j()Lcom/subao/common/e/ac;

    move-result-object v0

    .line 313
    if-eqz v8, :cond_2

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load from file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/subao/common/n/h;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/subao/common/e/ab;->a(Ljava/lang/String;)V

    :cond_2
    move-object v7, v0

    goto :goto_0

    .line 327
    :cond_3
    invoke-virtual {p0, v7}, Lcom/subao/common/e/ab;->d(Lcom/subao/common/e/ac;)Z

    move-result v0

    .line 328
    if-eqz v0, :cond_5

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v7}, Lcom/subao/common/e/ac;->e()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 330
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_5

    .line 332
    const-wide/32 v4, -0x36ee80

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    .line 333
    if-eqz v8, :cond_0

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data not expired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-long/2addr v2, v10

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/subao/common/e/ab;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 338
    :cond_4
    if-eqz v8, :cond_5

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too large cache alive time: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    div-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/subao/common/e/ab;->a(Ljava/lang/String;)V

    .line 346
    :cond_5
    if-eqz v8, :cond_6

    .line 347
    const-string v1, "Try download from network ..."

    invoke-virtual {p0, v1}, Lcom/subao/common/e/ab;->a(Ljava/lang/String;)V

    .line 353
    :cond_6
    :try_start_0
    new-instance v1, Lcom/subao/common/j/a;

    const/16 v2, 0x3a98

    const/16 v3, 0x3a98

    invoke-direct {v1, v2, v3}, Lcom/subao/common/j/a;-><init>(II)V

    .line 354
    invoke-virtual {p0}, Lcom/subao/common/e/ab;->c()Ljava/net/URL;

    move-result-object v2

    sget-object v3, Lcom/subao/common/j/a$b;->a:Lcom/subao/common/j/a$b;

    sget-object v4, Lcom/subao/common/j/a$a;->c:Lcom/subao/common/j/a$a;

    iget-object v4, v4, Lcom/subao/common/j/a$a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/subao/common/j/a;->a(Ljava/net/URL;Lcom/subao/common/j/a$b;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 355
    invoke-virtual {p0}, Lcom/subao/common/e/ab;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/subao/common/j/a;->b(Ljava/net/HttpURLConnection;Ljava/lang/String;)V

    .line 356
    if-eqz v0, :cond_7

    .line 358
    const-string v1, "If-None-Match"

    invoke-virtual {v7}, Lcom/subao/common/e/ac;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    if-eqz v8, :cond_7

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache TAG: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/subao/common/e/ac;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/subao/common/e/ab;->a(Ljava/lang/String;)V

    .line 363
    :cond_7
    invoke-static {v2}, Lcom/subao/common/j/a;->b(Ljava/net/HttpURLConnection;)Lcom/subao/common/j/a$c;

    move-result-object v5

    .line 364
    const-string v1, "ETag"

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 365
    invoke-static {v2}, Lcom/subao/common/e/ab;->a(Ljava/net/HttpURLConnection;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    .line 374
    iget v4, v5, Lcom/subao/common/j/a$c;->a:I

    sparse-switch v4, :sswitch_data_0

    .line 403
    if-eqz v8, :cond_8

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Server response: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v5, Lcom/subao/common/j/a$c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/subao/common/e/ab;->a(Ljava/lang/String;)V

    .line 410
    :cond_8
    :goto_2
    const-class v1, Lcom/subao/common/e/ab;

    monitor-enter v1

    .line 411
    :try_start_1
    invoke-static {}, Lcom/subao/common/e/ab;->f()J

    move-result-wide v2

    sput-wide v2, Lcom/subao/common/e/ab;->b:J

    .line 412
    monitor-exit v1

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 366
    :catch_0
    move-exception v0

    .line 367
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/subao/common/e/ab;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 369
    :catch_1
    move-exception v0

    .line 370
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/subao/common/e/ab;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 376
    :sswitch_0
    new-instance v0, Lcom/subao/common/e/ac;

    iget-object v4, p0, Lcom/subao/common/e/ab;->c:Lcom/subao/common/e/ab$a;

    iget-object v4, v4, Lcom/subao/common/e/ab$a;->b:Ljava/lang/String;

    iget-object v5, v5, Lcom/subao/common/j/a$c;->b:[B

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/subao/common/e/ac;-><init>(Ljava/lang/String;JLjava/lang/String;[BZ)V

    .line 377
    invoke-virtual {p0, v0}, Lcom/subao/common/e/ab;->c(Lcom/subao/common/e/ac;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 379
    if-eqz v8, :cond_9

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Serialize download data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/subao/common/e/ab;->a(Ljava/lang/String;)V

    .line 382
    :cond_9
    invoke-direct {p0, v0}, Lcom/subao/common/e/ab;->b(Lcom/subao/common/e/ac;)V

    move-object v7, v0

    goto :goto_2

    .line 384
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid download data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/subao/common/e/ab;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 388
    :sswitch_1
    if-eqz v8, :cond_b

    .line 389
    const-string v1, "Portal data not modified."

    invoke-virtual {p0, v1}, Lcom/subao/common/e/ab;->a(Ljava/lang/String;)V

    .line 391
    :cond_b
    if-eqz v0, :cond_8

    .line 392
    invoke-virtual {v7, v2, v3}, Lcom/subao/common/e/ac;->a(J)V

    .line 393
    invoke-direct {p0, v7}, Lcom/subao/common/e/ab;->b(Lcom/subao/common/e/ac;)V

    goto :goto_2

    .line 397
    :sswitch_2
    if-eqz v8, :cond_c

    .line 398
    const-string v0, "Response 404 not found, remove local cache."

    invoke-virtual {p0, v0}, Lcom/subao/common/e/ab;->a(Ljava/lang/String;)V

    .line 400
    :cond_c
    invoke-virtual {p0}, Lcom/subao/common/e/ab;->k()V

    goto/16 :goto_2

    .line 374
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x130 -> :sswitch_1
        0x194 -> :sswitch_2
    .end sparse-switch
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method protected a(Lcom/subao/common/e/ac;)V
    .locals 0

    .prologue
    .line 417
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 149
    if-eqz p1, :cond_0

    .line 150
    const-string v0, "SubaoData"

    invoke-direct {p0, p1}, Lcom/subao/common/e/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    return-void
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected varargs b([Lcom/subao/common/e/ac;)Z
    .locals 4

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/subao/common/e/ab;->b()Ljava/lang/String;

    move-result-object v1

    .line 265
    sget-object v2, Lcom/subao/common/e/ab;->a:Ljava/util/List;

    monitor-enter v2

    .line 266
    :try_start_0
    sget-object v0, Lcom/subao/common/e/ab;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 267
    const/4 v0, 0x0

    .line 272
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    if-eqz v0, :cond_0

    .line 274
    new-instance v1, Lcom/subao/common/e/ab$c;

    invoke-direct {v1, p0}, Lcom/subao/common/e/ab$c;-><init>(Lcom/subao/common/e/ab;)V

    .line 275
    invoke-static {}, Lcom/subao/common/m/d;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/subao/common/e/ab$c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 277
    :cond_0
    invoke-static {}, Lcom/subao/common/e/ab;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "execute() return: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/subao/common/e/ab;->a(Ljava/lang/String;)V

    .line 280
    :cond_1
    return v0

    .line 269
    :cond_2
    const/4 v0, 0x1

    .line 270
    :try_start_1
    sget-object v3, Lcom/subao/common/e/ab;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method varargs c([Lcom/subao/common/e/ac;)Lcom/subao/common/e/ac;
    .locals 4

    .prologue
    .line 286
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/subao/common/e/ab;->a([Lcom/subao/common/e/ac;)Lcom/subao/common/e/ac;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 288
    sget-object v1, Lcom/subao/common/e/ab;->a:Ljava/util/List;

    monitor-enter v1

    .line 289
    :try_start_1
    sget-object v2, Lcom/subao/common/e/ab;->a:Ljava/util/List;

    invoke-virtual {p0}, Lcom/subao/common/e/ab;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 290
    monitor-exit v1

    .line 292
    return-object v0

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 288
    :catchall_1
    move-exception v0

    sget-object v1, Lcom/subao/common/e/ab;->a:Ljava/util/List;

    monitor-enter v1

    .line 289
    :try_start_2
    sget-object v2, Lcom/subao/common/e/ab;->a:Ljava/util/List;

    invoke-virtual {p0}, Lcom/subao/common/e/ab;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 290
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method protected c()Ljava/net/URL;
    .locals 5

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/api/v1/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/subao/common/e/ab;->c:Lcom/subao/common/e/ab$a;

    iget-object v1, v1, Lcom/subao/common/e/ab$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/subao/common/e/ab;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/subao/common/e/ab;->c:Lcom/subao/common/e/ab$a;

    iget-object v2, v2, Lcom/subao/common/e/ab$a;->c:Lcom/subao/common/e/al;

    iget-object v2, v2, Lcom/subao/common/e/al;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/subao/common/e/ab;->c:Lcom/subao/common/e/ab$a;

    iget-object v3, v3, Lcom/subao/common/e/ab$a;->c:Lcom/subao/common/e/al;

    iget-object v3, v3, Lcom/subao/common/e/al;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/subao/common/e/ab;->c:Lcom/subao/common/e/ab$a;

    iget-object v4, v4, Lcom/subao/common/e/ab$a;->c:Lcom/subao/common/e/al;

    iget v4, v4, Lcom/subao/common/e/al;->c:I

    invoke-direct {v1, v2, v3, v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v1
.end method

.method protected c(Lcom/subao/common/e/ac;)Z
    .locals 1

    .prologue
    .line 216
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d(Lcom/subao/common/e/ac;)Z
    .locals 2

    .prologue
    .line 253
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/subao/common/e/ab;->c:Lcom/subao/common/e/ab$a;

    iget-object v0, v0, Lcom/subao/common/e/ab$a;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/subao/common/e/ac;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/subao/common/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/subao/common/j/a$a;->c:Lcom/subao/common/j/a$a;

    iget-object v0, v0, Lcom/subao/common/j/a$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected j()Lcom/subao/common/e/ac;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 226
    .line 227
    invoke-direct {p0}, Lcom/subao/common/e/ab;->e()Lcom/subao/common/f/c;

    move-result-object v0

    .line 229
    monitor-enter p0

    .line 230
    :try_start_0
    invoke-interface {v0}, Lcom/subao/common/f/c;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    :try_start_1
    invoke-interface {v0}, Lcom/subao/common/f/c;->b()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/subao/common/e/ac;->a(Ljava/io/InputStream;)Lcom/subao/common/e/ac;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    move-object v0, v1

    .line 237
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 238
    invoke-direct {p0, v0}, Lcom/subao/common/e/ab;->b(Ljava/lang/String;)V

    .line 239
    return-object v2

    .line 233
    :catch_0
    move-exception v0

    .line 234
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    move-object v2, v1

    goto :goto_0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_0
    move-object v0, v1

    move-object v2, v1

    goto :goto_0
.end method

.method final k()V
    .locals 1

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/subao/common/e/ab;->e()Lcom/subao/common/f/c;

    move-result-object v0

    .line 244
    monitor-enter p0

    .line 245
    :try_start_0
    invoke-interface {v0}, Lcom/subao/common/f/c;->d()Z

    .line 246
    monitor-exit p0

    .line 247
    return-void

    .line 246
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final l()Lcom/subao/common/e/ab$a;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/subao/common/e/ab;->c:Lcom/subao/common/e/ab$a;

    return-object v0
.end method
