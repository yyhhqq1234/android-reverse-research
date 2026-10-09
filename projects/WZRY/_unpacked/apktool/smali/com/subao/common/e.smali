.class public Lcom/subao/common/e;
.super Ljava/lang/Object;
.source "Misc.java"


# direct methods
.method public static a([BIIJ)J
    .locals 7

    .prologue
    .line 60
    array-length v0, p0

    if-le p2, v0, :cond_0

    .line 61
    array-length p2, p0

    .line 64
    :cond_0
    :goto_0
    if-ge p1, p2, :cond_2

    .line 65
    aget-byte v0, p0, p1

    .line 66
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    add-int/lit8 v0, v0, -0x30

    int-to-long p3, v0

    .line 68
    add-int/lit8 v0, p1, 0x1

    .line 69
    :goto_1
    if-ge v0, p2, :cond_2

    .line 70
    aget-byte v1, p0, v0

    .line 71
    invoke-static {v1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    const-wide/16 v2, 0xa

    mul-long/2addr v2, p3

    add-int/lit8 v1, v1, -0x30

    int-to-long v4, v1

    add-long p3, v2, v4

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    return-wide p3
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/subao/common/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 143
    :cond_0
    const-string p0, ""

    .line 148
    :goto_0
    return-object p0

    .line 146
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 23
    if-eqz p0, :cond_0

    .line 25
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 29
    :cond_0
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static a(I)Z
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0x2710

    if-lt p0, v0, :cond_0

    const/16 v0, 0x4e1f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 93
    if-ne p0, p1, :cond_0

    .line 94
    const/4 v0, 0x1

    .line 99
    :goto_0
    return v0

    .line 96
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 97
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 4

    .prologue
    const/16 v1, 0x400

    const/4 v3, 0x0

    .line 35
    if-nez p0, :cond_0

    .line 36
    const/4 v0, 0x0

    .line 48
    :goto_0
    return-object v0

    .line 38
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 39
    new-array v1, v1, [B

    .line 41
    :goto_1
    array-length v2, v1

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 42
    if-lez v2, :cond_1

    .line 43
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0
.end method
