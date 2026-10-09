.class Lcom/subao/common/l/c$g;
.super Ljava/lang/Object;
.source "QosManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/l/c$g$a;
    }
.end annotation


# static fields
.field private static a:Lcom/subao/common/e/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/subao/common/e/p",
            "<",
            "Lcom/subao/common/e/f$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 355
    new-instance v0, Lcom/subao/common/l/c$g$a;

    invoke-direct {v0}, Lcom/subao/common/l/c$g$a;-><init>()V

    sput-object v0, Lcom/subao/common/l/c$g;->a:Lcom/subao/common/e/p;

    return-void
.end method

.method static synthetic a()Lcom/subao/common/e/p;
    .locals 1

    .prologue
    .line 353
    sget-object v0, Lcom/subao/common/l/c$g;->a:Lcom/subao/common/e/p;

    return-object v0
.end method

.method static a(Lcom/subao/common/l/c$a;Lcom/subao/common/l/h;Lcom/subao/common/e/f$a;)Lcom/subao/common/l/c$f;
    .locals 9

    .prologue
    const/16 v8, 0x1b59

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 408
    const-string v0, "SubaoQos"

    invoke-static {v0}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v2

    .line 411
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "http"

    iget-object v3, p2, Lcom/subao/common/e/f$a;->a:Ljava/lang/String;

    iget v4, p2, Lcom/subao/common/e/f$a;->b:I

    const-string v5, "bdproxy/?appid=xunyou"

    invoke-direct {v0, v1, v3, v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 412
    new-instance v1, Lcom/subao/common/j/a;

    const/16 v3, 0x3a98

    const/16 v4, 0x3a98

    invoke-direct {v1, v3, v4}, Lcom/subao/common/j/a;-><init>(II)V

    .line 413
    sget-object v3, Lcom/subao/common/j/a$b;->a:Lcom/subao/common/j/a$b;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Lcom/subao/common/j/a;->a(Ljava/net/URL;Lcom/subao/common/j/a$b;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 414
    invoke-static {v0}, Lcom/subao/common/j/a;->b(Ljava/net/HttpURLConnection;)Lcom/subao/common/j/a$c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 422
    if-eqz v2, :cond_0

    .line 423
    const-string v1, "SubaoQos"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get phone number result:\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v3, Lcom/subao/common/j/a$c;->b:[B

    if-nez v0, :cond_2

    const-string v0, "(null)"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_0
    iget v0, v3, Lcom/subao/common/j/a$c;->a:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_5

    iget v0, v3, Lcom/subao/common/j/a$c;->a:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_5

    .line 426
    iget-object v0, v3, Lcom/subao/common/j/a$c;->b:[B

    invoke-static {v0}, Lcom/subao/common/l/c$g;->a([B)Lcom/subao/common/l/c$f;

    move-result-object v1

    .line 427
    if-eqz v2, :cond_1

    .line 428
    const-string v2, "SubaoQos"

    const-string v4, "Phone number parse: %s"

    new-array v5, v7, [Ljava/lang/Object;

    if-nez v1, :cond_3

    const-string v0, "null"

    :goto_1
    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_1
    if-nez v1, :cond_4

    .line 431
    const/16 v0, 0x1b5b

    iget-object v1, v3, Lcom/subao/common/j/a$c;->b:[B

    invoke-static {p0, p1, v0, v1}, Lcom/subao/common/l/c$f;->a(Lcom/subao/common/l/c$a;Lcom/subao/common/l/h;I[B)Lcom/subao/common/l/c$f;

    move-result-object v0

    .line 439
    :goto_2
    return-object v0

    .line 415
    :catch_0
    move-exception v0

    .line 416
    invoke-static {v0}, Lcom/subao/common/l/c$g;->a(Ljava/lang/Exception;)V

    .line 417
    invoke-static {p0, p1, v8, v0}, Lcom/subao/common/l/c$f;->a(Lcom/subao/common/l/c$a;Lcom/subao/common/l/h;ILjava/lang/Exception;)Lcom/subao/common/l/c$f;

    move-result-object v0

    goto :goto_2

    .line 418
    :catch_1
    move-exception v0

    .line 419
    invoke-static {v0}, Lcom/subao/common/l/c$g;->a(Ljava/lang/Exception;)V

    .line 420
    invoke-static {p0, p1, v8, v0}, Lcom/subao/common/l/c$f;->a(Lcom/subao/common/l/c$a;Lcom/subao/common/l/h;ILjava/lang/Exception;)Lcom/subao/common/l/c$f;

    move-result-object v0

    goto :goto_2

    .line 423
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v5, v3, Lcom/subao/common/j/a$c;->b:[B

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    .line 428
    :cond_3
    invoke-virtual {v1}, Lcom/subao/common/l/c$f;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 433
    goto :goto_2

    .line 436
    :cond_5
    if-eqz v2, :cond_6

    .line 437
    const-string v0, "SubaoQos"

    sget-object v1, Lcom/subao/common/e/q;->a:Ljava/util/Locale;

    const-string v2, "Get phone number failed, response code: %d"

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, v3, Lcom/subao/common/j/a$c;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_6
    iget v0, v3, Lcom/subao/common/j/a$c;->a:I

    add-int/lit16 v0, v0, 0x1b58

    iget-object v1, v3, Lcom/subao/common/j/a$c;->b:[B

    invoke-static {p0, p1, v0, v1}, Lcom/subao/common/l/c$f;->a(Lcom/subao/common/l/c$a;Lcom/subao/common/l/h;I[B)Lcom/subao/common/l/c$f;

    move-result-object v0

    goto :goto_2
.end method

.method public static a(Lcom/subao/common/l/c$a;Lcom/subao/common/l/h;Lcom/subao/common/e/p;)Lcom/subao/common/l/c$f;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/subao/common/l/c$a;",
            "Lcom/subao/common/l/h;",
            "Lcom/subao/common/e/p",
            "<",
            "Lcom/subao/common/e/f$a;",
            ">;)",
            "Lcom/subao/common/l/c$f;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 379
    if-nez p2, :cond_0

    .line 380
    sget-object p2, Lcom/subao/common/l/c$g;->a:Lcom/subao/common/e/p;

    .line 383
    :cond_0
    sget-object v5, Lcom/subao/common/e/p$a;->a:Lcom/subao/common/e/p$a;

    .line 385
    const/4 v0, 0x0

    move v3, v0

    move-object v1, v4

    move-object v2, v4

    :goto_0
    const/4 v0, 0x2

    if-ge v3, v0, :cond_1

    .line 386
    invoke-virtual {p2, v5, v1}, Lcom/subao/common/e/p;->a(Lcom/subao/common/e/p$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/subao/common/e/f$a;

    .line 387
    if-eqz v0, :cond_3

    .line 388
    invoke-static {p0, p1, v0}, Lcom/subao/common/l/c$g;->a(Lcom/subao/common/l/c$a;Lcom/subao/common/l/h;Lcom/subao/common/e/f$a;)Lcom/subao/common/l/c$f;

    move-result-object v1

    .line 389
    iget v2, v1, Lcom/subao/common/l/c$f;->a:I

    const/16 v4, 0x1b59

    if-eq v2, v4, :cond_2

    move-object v2, v1

    .line 400
    :cond_1
    return-object v2

    :cond_2
    move-object v2, v1

    .line 398
    :goto_1
    sget-object v4, Lcom/subao/common/e/p$a;->c:Lcom/subao/common/e/p$a;

    .line 385
    add-int/lit8 v3, v3, 0x1

    move-object v1, v0

    move-object v5, v4

    goto :goto_0

    .line 394
    :cond_3
    sget-object v0, Lcom/subao/common/e/p$a;->a:Lcom/subao/common/e/p$a;

    if-ne v5, v0, :cond_1

    move-object v0, v1

    goto :goto_1
.end method

.method private static a([B)Lcom/subao/common/l/c$f;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 443
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 474
    :goto_0
    return-object v0

    .line 448
    :cond_1
    new-instance v3, Landroid/util/JsonReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 450
    :try_start_0
    invoke-virtual {v3}, Landroid/util/JsonReader;->beginObject()V

    move-object v0, v2

    move-object v1, v2

    .line 451
    :goto_1
    invoke-virtual {v3}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 452
    invoke-virtual {v3}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 453
    const-string v5, "result"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 454
    invoke-static {v3}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 455
    :cond_2
    const-string v5, "privateip"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 456
    invoke-static {v3}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 458
    :cond_3
    invoke-virtual {v3}, Landroid/util/JsonReader;->skipValue()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 462
    :catch_0
    move-exception v0

    .line 463
    :try_start_1
    invoke-static {v0}, Lcom/subao/common/l/c$g;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    invoke-static {v3}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    move-object v0, v2

    goto :goto_0

    .line 461
    :cond_4
    :try_start_2
    invoke-virtual {v3}, Landroid/util/JsonReader;->endObject()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 469
    invoke-static {v3}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    .line 471
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, v2

    .line 472
    goto :goto_0

    .line 465
    :catch_1
    move-exception v0

    .line 466
    :try_start_3
    invoke-static {v0}, Lcom/subao/common/l/c$g;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 469
    invoke-static {v3}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0

    .line 474
    :cond_5
    new-instance v2, Lcom/subao/common/l/c$f;

    invoke-direct {v2, v1, v0}, Lcom/subao/common/l/c$f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0
.end method

.method private static a(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 478
    const-string v0, "SubaoQos"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/subao/common/d;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    const-string v0, "SubaoQos"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get phone number failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_0
    return-void
.end method

.method static a([Lcom/subao/common/e/f$a;[Lcom/subao/common/e/f$a;)V
    .locals 1

    .prologue
    .line 484
    if-eqz p0, :cond_0

    array-length v0, p0

    if-gtz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    array-length v0, p1

    if-lez v0, :cond_2

    .line 486
    :cond_1
    new-instance v0, Lcom/subao/common/e/p;

    invoke-direct {v0, p0, p1}, Lcom/subao/common/e/p;-><init>([Ljava/lang/Object;[Ljava/lang/Object;)V

    sput-object v0, Lcom/subao/common/l/c$g;->a:Lcom/subao/common/e/p;

    .line 492
    :goto_0
    return-void

    .line 490
    :cond_2
    new-instance v0, Lcom/subao/common/l/c$g$a;

    invoke-direct {v0}, Lcom/subao/common/l/c$g$a;-><init>()V

    sput-object v0, Lcom/subao/common/l/c$g;->a:Lcom/subao/common/e/p;

    goto :goto_0
.end method

.method static a(Lcom/subao/common/l/f;)Z
    .locals 2

    .prologue
    .line 361
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/subao/common/l/f;->b:Lcom/subao/common/l/f$a;

    sget-object v1, Lcom/subao/common/l/f$a;->c:Lcom/subao/common/l/f$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
