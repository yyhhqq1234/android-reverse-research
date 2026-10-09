.class Lcom/subao/common/l/c$m;
.super Ljava/lang/Object;
.source "QosManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "m"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/subao/common/l/c$m$a;
    }
.end annotation


# direct methods
.method static a(Lcom/subao/common/l/f$a;)Lcom/subao/common/e/f$a;
    .locals 3
    .param p0    # Lcom/subao/common/l/f$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 514
    sget-object v1, Lcom/subao/common/l/c$1;->a:[I

    invoke-virtual {p0}, Lcom/subao/common/l/f$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 524
    const-string v1, "qos.189.cn"

    .line 528
    :goto_0
    new-instance v2, Lcom/subao/common/e/f$a;

    invoke-direct {v2, v1, v0}, Lcom/subao/common/e/f$a;-><init>(Ljava/lang/String;I)V

    return-object v2

    .line 516
    :pswitch_0
    const-string v1, "i.speeed.cn"

    goto :goto_0

    .line 520
    :pswitch_1
    const-string v1, "rd.go.10086.cn"

    .line 521
    const/16 v0, 0x2337

    .line 522
    goto :goto_0

    .line 514
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lcom/subao/common/l/c$a;Lcom/subao/common/l/h;Lcom/subao/common/e/f$a;)Lcom/subao/common/l/c$m$a;
    .locals 4
    .param p0    # Lcom/subao/common/l/c$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/subao/common/l/h;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/subao/common/e/f$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 561
    invoke-static {p0, p1, p2}, Lcom/subao/common/l/c$m;->b(Lcom/subao/common/l/c$a;Lcom/subao/common/l/h;Lcom/subao/common/e/f$a;)Lcom/subao/common/l/c$m$a;

    move-result-object v0

    .line 562
    const-string v1, "SubaoQos"

    invoke-static {v1}, Lcom/subao/common/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    const-string v1, "SubaoQos"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Token Get Result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_0
    return-object v0
.end method

.method private static a(Lcom/subao/common/l/c$a;Lcom/subao/common/l/h;[B)Lcom/subao/common/l/c$m$a;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x1b5b

    .line 602
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 603
    :cond_0
    invoke-static {p0, v5, p1, p2}, Lcom/subao/common/l/c$m$a;->a(Lcom/subao/common/l/c$a;ILcom/subao/common/l/h;[B)Lcom/subao/common/l/c$m$a;

    move-result-object v0

    .line 632
    :goto_0
    return-object v0

    .line 606
    :cond_1
    new-instance v2, Landroid/util/JsonReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 608
    :try_start_0
    invoke-virtual {v2}, Landroid/util/JsonReader;->beginObject()V

    move-object v0, v1

    .line 609
    :goto_1
    invoke-virtual {v2}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 610
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    .line 611
    const-string v4, "result"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 612
    invoke-virtual {v2}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 613
    :cond_2
    const-string v4, "error"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 614
    invoke-virtual {v2}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v3

    sget-object v4, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-eq v3, v4, :cond_3

    .line 615
    const/16 v0, 0x1b5a

    invoke-static {p0, v0, p1, p2}, Lcom/subao/common/l/c$m$a;->a(Lcom/subao/common/l/c$a;ILcom/subao/common/l/h;[B)Lcom/subao/common/l/c$m$a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 627
    invoke-static {v2}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_0

    .line 617
    :cond_3
    :try_start_1
    invoke-virtual {v2}, Landroid/util/JsonReader;->skipValue()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 623
    :catch_0
    move-exception v0

    .line 624
    :goto_2
    :try_start_2
    invoke-static {v0}, Lcom/subao/common/l/c$m;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 627
    invoke-static {v2}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 629
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 630
    invoke-static {p0, v5, p1, p2}, Lcom/subao/common/l/c$m$a;->a(Lcom/subao/common/l/c$a;ILcom/subao/common/l/h;[B)Lcom/subao/common/l/c$m$a;

    move-result-object v0

    goto :goto_0

    .line 619
    :cond_4
    :try_start_3
    invoke-virtual {v2}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 623
    :catch_1
    move-exception v0

    goto :goto_2

    .line 622
    :cond_5
    invoke-virtual {v2}, Landroid/util/JsonReader;->endObject()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 627
    invoke-static {v2}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/subao/common/e;->a(Ljava/io/Closeable;)V

    throw v0

    .line 632
    :cond_6
    new-instance v1, Lcom/subao/common/l/c$m$a;

    invoke-direct {v1, v0}, Lcom/subao/common/l/c$m$a;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 595
    const-string v0, "SubaoQos"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get security token failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/subao/common/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    return-void
.end method

.method static a(Lcom/subao/common/l/f;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 535
    if-nez p0, :cond_0

    .line 544
    :goto_0
    return v0

    .line 538
    :cond_0
    sget-object v1, Lcom/subao/common/l/c$1;->a:[I

    iget-object v2, p0, Lcom/subao/common/l/f;->b:Lcom/subao/common/l/f$a;

    invoke-virtual {v2}, Lcom/subao/common/l/f$a;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 542
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 538
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Lcom/subao/common/l/c$a;Lcom/subao/common/l/h;Lcom/subao/common/e/f$a;)Lcom/subao/common/l/c$m$a;
    .locals 5
    .param p0    # Lcom/subao/common/l/c$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/subao/common/l/h;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/subao/common/e/f$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 576
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v1, "http"

    iget-object v2, p2, Lcom/subao/common/e/f$a;->a:Ljava/lang/String;

    iget v3, p2, Lcom/subao/common/e/f$a;->b:I

    const-string v4, "/t1?appid=6ed68a7c-7ac3-4156-be61-a3cfbdab9c89"

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 577
    const/16 v1, 0x2710

    .line 578
    new-instance v2, Lcom/subao/common/j/a;

    invoke-direct {v2, v1, v1}, Lcom/subao/common/j/a;-><init>(II)V

    sget-object v1, Lcom/subao/common/j/a$b;->a:Lcom/subao/common/j/a$b;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/subao/common/j/a;->a(Ljava/net/URL;Lcom/subao/common/j/a$b;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 579
    invoke-static {v0}, Lcom/subao/common/j/a;->b(Ljava/net/HttpURLConnection;)Lcom/subao/common/j/a$c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 587
    iget v1, v0, Lcom/subao/common/j/a$c;->a:I

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_0

    iget v1, v0, Lcom/subao/common/j/a$c;->a:I

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_0

    .line 588
    iget-object v0, v0, Lcom/subao/common/j/a$c;->b:[B

    invoke-static {p0, p1, v0}, Lcom/subao/common/l/c$m;->a(Lcom/subao/common/l/c$a;Lcom/subao/common/l/h;[B)Lcom/subao/common/l/c$m$a;

    move-result-object v0

    .line 590
    :goto_0
    return-object v0

    .line 580
    :catch_0
    move-exception v0

    .line 581
    invoke-static {v0}, Lcom/subao/common/l/c$m;->a(Ljava/lang/Exception;)V

    .line 582
    const/16 v1, 0x1b59

    invoke-static {p0, v1, p1, v0}, Lcom/subao/common/l/c$m$a;->a(Lcom/subao/common/l/c$a;ILcom/subao/common/l/h;Ljava/lang/Exception;)Lcom/subao/common/l/c$m$a;

    move-result-object v0

    goto :goto_0

    .line 583
    :catch_1
    move-exception v0

    .line 584
    invoke-static {v0}, Lcom/subao/common/l/c$m;->a(Ljava/lang/Exception;)V

    .line 585
    const/16 v1, 0x1b5c

    invoke-static {p0, v1, p1, v0}, Lcom/subao/common/l/c$m$a;->a(Lcom/subao/common/l/c$a;ILcom/subao/common/l/h;Ljava/lang/Exception;)Lcom/subao/common/l/c$m$a;

    move-result-object v0

    goto :goto_0

    .line 590
    :cond_0
    iget v1, v0, Lcom/subao/common/j/a$c;->a:I

    add-int/lit16 v1, v1, 0x1b58

    iget-object v0, v0, Lcom/subao/common/j/a$c;->b:[B

    invoke-static {p0, v1, p1, v0}, Lcom/subao/common/l/c$m$a;->a(Lcom/subao/common/l/c$a;ILcom/subao/common/l/h;[B)Lcom/subao/common/l/c$m$a;

    move-result-object v0

    goto :goto_0
.end method
