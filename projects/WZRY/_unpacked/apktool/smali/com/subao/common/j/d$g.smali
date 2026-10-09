.class Lcom/subao/common/j/d$g;
.super Ljava/lang/Object;
.source "IPInfoQuery.java"

# interfaces
.implements Lcom/subao/common/j/d$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/j/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/j/d$g$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/subao/common/e/al;


# direct methods
.method constructor <init>(Lcom/subao/common/e/al;)V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    iput-object p1, p0, Lcom/subao/common/j/d$g;->a:Lcom/subao/common/e/al;

    .line 417
    return-void
.end method

.method private a(Ljava/io/InputStream;)Lcom/subao/common/j/d$c;
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 470
    .line 471
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 472
    new-instance v5, Landroid/util/JsonReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v2}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 474
    :try_start_0
    invoke-virtual {v5}, Landroid/util/JsonReader;->beginObject()V

    move-object v2, v4

    move-object v3, v4

    .line 475
    :cond_0
    :goto_0
    invoke-virtual {v5}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 476
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 477
    const-string v6, "ip"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 478
    invoke-static {v5}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 479
    :cond_1
    const-string v6, "ipLib"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 480
    invoke-virtual {v5}, Landroid/util/JsonReader;->beginObject()V

    .line 481
    :goto_1
    invoke-virtual {v5}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 482
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 483
    const-string v6, "province"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 484
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    goto :goto_1

    .line 485
    :cond_2
    const-string v6, "operators"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 486
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextInt()I

    move-result v0

    goto :goto_1

    .line 487
    :cond_3
    const-string v6, "detail"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 488
    invoke-static {v5}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 490
    :cond_4
    invoke-virtual {v5}, Landroid/util/JsonReader;->skipValue()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 499
    :catchall_0
    move-exception v0

    invoke-static {v5}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0

    .line 494
    :cond_5
    :try_start_1
    invoke-virtual {v5}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 497
    :cond_6
    invoke-virtual {v5}, Landroid/util/JsonReader;->endObject()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 499
    invoke-static {v5}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    .line 501
    new-instance v4, Lcom/subao/common/j/d$c;

    invoke-direct {v4, v3, v1, v0, v2}, Lcom/subao/common/j/d$c;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    return-object v4
.end method

.method private b(Ljava/lang/String;)Lcom/subao/common/j/d$c;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x7d0

    .line 448
    invoke-direct {p0, p1}, Lcom/subao/common/j/d$g;->c(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 449
    new-instance v2, Lcom/subao/common/j/a;

    invoke-direct {v2, v3, v3}, Lcom/subao/common/j/a;-><init>(II)V

    .line 450
    invoke-virtual {v2, v1, v0}, Lcom/subao/common/j/a;->a(Ljava/net/URL;Ljava/lang/String;)Lcom/subao/common/j/a$c;

    move-result-object v1

    .line 451
    iget v2, v1, Lcom/subao/common/j/a$c;->a:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    .line 452
    iget-object v0, v1, Lcom/subao/common/j/a$c;->b:[B

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/subao/common/j/a$c;->b:[B

    array-length v0, v0

    if-nez v0, :cond_1

    .line 453
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Response Code is 200, but body is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, v1, Lcom/subao/common/j/a$c;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/subao/common/j/d$g;->a(Ljava/io/InputStream;)Lcom/subao/common/j/d$c;

    move-result-object v0

    .line 457
    :cond_2
    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/net/URL;
    .locals 5

    .prologue
    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 462
    const-string v1, "/resolve"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 464
    const-string v1, "?ip="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    :cond_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/subao/common/j/d$g;->a:Lcom/subao/common/e/al;

    iget-object v2, v2, Lcom/subao/common/e/al;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/subao/common/j/d$g;->a:Lcom/subao/common/e/al;

    iget-object v3, v3, Lcom/subao/common/e/al;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/subao/common/j/d$g;->a:Lcom/subao/common/e/al;

    iget v4, v4, Lcom/subao/common/e/al;->c:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/subao/common/j/d$c;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 427
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    new-instance v0, Lcom/subao/common/j/d$g$a;

    invoke-direct {v0, v1}, Lcom/subao/common/j/d$g$a;-><init>(Lcom/subao/common/j/d$1;)V

    .line 429
    invoke-static {v0}, Lcom/subao/common/m/d;->a(Ljava/lang/Runnable;)V

    .line 434
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 437
    :try_start_0
    invoke-direct {p0, p1}, Lcom/subao/common/j/d$g;->b(Ljava/lang/String;)Lcom/subao/common/j/d$c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 440
    :goto_1
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 441
    const-wide/16 v4, 0xfa0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    sub-long v2, v4, v2

    .line 442
    invoke-virtual {v0, v2, v3}, Lcom/subao/common/j/d$g$a;->a(J)Lcom/subao/common/j/d$c;

    move-result-object v0

    .line 444
    :goto_2
    return-object v0

    :cond_0
    move-object v0, v1

    .line 431
    goto :goto_0

    .line 438
    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_2
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 421
    const/4 v0, 0x1

    return v0
.end method
