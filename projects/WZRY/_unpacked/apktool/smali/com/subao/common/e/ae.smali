.class public abstract Lcom/subao/common/e/ae;
.super Lcom/subao/common/e/ab;
.source "PortalKeyValuesDownloader.java"


# direct methods
.method protected constructor <init>(Lcom/subao/common/e/ab$a;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/subao/common/e/ab;-><init>(Lcom/subao/common/e/ab$a;)V

    .line 22
    return-void
.end method

.method public static a(Lcom/subao/common/e/ae;)V
    .locals 3

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/subao/common/e/ae;->j()Lcom/subao/common/e/ac;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0, v0}, Lcom/subao/common/e/ae;->d(Lcom/subao/common/e/ac;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    invoke-virtual {p0, v0}, Lcom/subao/common/e/ae;->b(Lcom/subao/common/e/ac;)V

    .line 44
    :cond_0
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/subao/common/e/ac;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/subao/common/e/ae;->b([Lcom/subao/common/e/ac;)Z

    .line 45
    return-void

    .line 41
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/subao/common/e/ac;)V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/subao/common/e/ab;->a(Lcom/subao/common/e/ac;)V

    .line 50
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/subao/common/e/ac;->d:Z

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lcom/subao/common/e/ae;->b(Lcom/subao/common/e/ac;)V

    .line 54
    :cond_0
    return-void
.end method

.method protected abstract a(Ljava/lang/String;Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method protected a(Z)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method b(Lcom/subao/common/e/ac;)V
    .locals 9

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    :try_start_0
    invoke-static {}, Lcom/subao/common/e/ae;->h()Z

    move-result v2

    .line 71
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/subao/common/e/ac;->b()I

    move-result v3

    if-gt v3, v4, :cond_3

    .line 72
    :cond_0
    if-eqz v2, :cond_1

    .line 73
    const-string v2, "config is null"

    invoke-virtual {p0, v2}, Lcom/subao/common/e/ae;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v2, p1, Lcom/subao/common/e/ac;->d:Z

    if-eqz v2, :cond_2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/subao/common/e/ae;->a(Z)V

    .line 95
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 93
    goto :goto_0

    .line 77
    :cond_3
    :try_start_1
    new-instance v3, Landroid/util/JsonReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p1, Lcom/subao/common/e/ac;->c:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :try_start_2
    invoke-virtual {v3}, Landroid/util/JsonReader;->beginObject()V

    .line 80
    :goto_2
    invoke-virtual {v3}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 81
    invoke-virtual {v3}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-static {v3}, Lcom/subao/common/n/g;->a(Landroid/util/JsonReader;)Ljava/lang/String;

    move-result-object v5

    .line 83
    if-eqz v2, :cond_4

    .line 84
    const-string v6, "process \"%s\":\"%s\""

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    const/4 v8, 0x1

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/subao/common/e/ae;->a(Ljava/lang/String;)V

    .line 86
    :cond_4
    invoke-virtual {p0, v4, v5}, Lcom/subao/common/e/ae;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 89
    :catch_0
    move-exception v2

    .line 90
    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    :goto_4
    if-eqz p1, :cond_6

    iget-boolean v2, p1, Lcom/subao/common/e/ac;->d:Z

    if-eqz v2, :cond_6

    :goto_5
    invoke-virtual {p0, v0}, Lcom/subao/common/e/ae;->a(Z)V

    goto :goto_1

    .line 88
    :cond_5
    :try_start_4
    invoke-virtual {v3}, Landroid/util/JsonReader;->endObject()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 89
    :catch_1
    move-exception v2

    goto :goto_3

    :cond_6
    move v0, v1

    .line 93
    goto :goto_5

    :catchall_0
    move-exception v2

    if-eqz p1, :cond_7

    iget-boolean v3, p1, Lcom/subao/common/e/ac;->d:Z

    if-eqz v3, :cond_7

    :goto_6
    invoke-virtual {p0, v0}, Lcom/subao/common/e/ae;->a(Z)V

    throw v2

    :cond_7
    move v0, v1

    goto :goto_6

    .line 89
    :catch_2
    move-exception v2

    goto :goto_3
.end method
