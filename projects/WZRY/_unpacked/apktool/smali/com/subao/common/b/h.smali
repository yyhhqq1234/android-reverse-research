.class public Lcom/subao/common/b/h;
.super Ljava/lang/Object;
.source "JWTTokenRespSerializer.java"


# direct methods
.method public static a(J[B)Lcom/subao/common/b/g;
    .locals 2
    .param p2    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    array-length v1, p2

    invoke-static {p0, p1, p2, v0, v1}, Lcom/subao/common/b/h;->a(J[BII)Lcom/subao/common/b/g;

    move-result-object v0

    return-object v0
.end method

.method public static a(J[BII)Lcom/subao/common/b/g;
    .locals 10
    .param p2    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v3, 0x0

    .line 68
    new-instance v4, Landroid/util/JsonReader;

    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p2, p3, p4}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v0}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 71
    const-wide/16 v0, -0x1

    .line 72
    :try_start_0
    invoke-virtual {v4}, Landroid/util/JsonReader;->beginObject()V

    move-object v2, v3

    .line 73
    :goto_0
    invoke-virtual {v4}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 74
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v5

    .line 75
    const-string v6, "birth"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 76
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v0

    goto :goto_0

    .line 77
    :cond_0
    const-string v6, "data"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 78
    invoke-static {v4}, Lcom/subao/common/b/g;->a(Landroid/util/JsonReader;)Lcom/subao/common/b/g;

    move-result-object v2

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v4}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    :goto_1
    move-object v0, v3

    .line 91
    :goto_2
    return-object v0

    .line 83
    :cond_2
    invoke-virtual {v4}, Landroid/util/JsonReader;->endObject()V

    .line 84
    invoke-virtual {v4}, Landroid/util/JsonReader;->close()V

    .line 85
    if-eqz v2, :cond_3

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_4

    :cond_3
    move-object v0, v3

    .line 86
    goto :goto_2

    .line 88
    :cond_4
    iget-wide v4, v2, Lcom/subao/common/b/g;->b:J

    mul-long/2addr v4, v8

    sub-long v0, p0, v0

    sub-long v0, v4, v0

    .line 89
    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Lcom/subao/common/b/g;->a(J)Lcom/subao/common/b/g;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_2

    .line 90
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static a(Lcom/subao/common/b/g;J)[B
    .locals 7
    .param p0    # Lcom/subao/common/b/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 35
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 36
    new-instance v1, Landroid/util/JsonWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 37
    invoke-virtual {v1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 38
    const-string/jumbo v2, "ver"

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 39
    const-string v2, "birth"

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 40
    const-string v2, "data"

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 41
    invoke-virtual {p0, v1}, Lcom/subao/common/b/g;->serialize(Landroid/util/JsonWriter;)V

    .line 42
    invoke-virtual {v1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 43
    invoke-virtual {v1}, Landroid/util/JsonWriter;->close()V

    .line 44
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
