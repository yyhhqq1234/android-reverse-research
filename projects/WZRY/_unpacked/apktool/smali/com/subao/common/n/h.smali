.class public Lcom/subao/common/n/h;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method private static a(II)C
    .locals 1

    .prologue
    .line 90
    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 91
    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    .line 93
    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p0, -0xa

    add-int/2addr v0, p1

    int-to-char v0, v0

    goto :goto_0
.end method

.method public static a(Ljava/io/Reader;Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 349
    const/16 v0, 0x2c

    invoke-static {p0, p1, v0}, Lcom/subao/common/n/h;->a(Ljava/io/Reader;Ljava/util/List;C)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/io/Reader;Ljava/util/List;C)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;C)I"
        }
    .end annotation

    .prologue
    const/16 v4, 0x5c

    .line 308
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 311
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v2

    .line 312
    if-gez v2, :cond_2

    .line 341
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 342
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int v0, v1, v0

    return v0

    .line 315
    :cond_2
    int-to-char v2, v2

    .line 316
    if-ne v2, v4, :cond_5

    .line 318
    invoke-virtual {p0}, Ljava/io/Reader;->read()I

    move-result v3

    .line 319
    if-gez v3, :cond_3

    .line 321
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 324
    :cond_3
    int-to-char v2, v3

    .line 325
    if-eq v2, v4, :cond_4

    if-eq v2, p2, :cond_4

    .line 326
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 329
    :cond_5
    if-ne v2, p2, :cond_6

    .line 331
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 332
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 337
    :cond_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    if-nez p0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 357
    if-nez p0, :cond_0

    .line 358
    const-string v0, "null"

    .line 377
    :goto_0
    return-object v0

    .line 360
    :cond_0
    array-length v1, p0

    .line 361
    const/16 v0, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 362
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 363
    const/16 v0, 0x5b

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 365
    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    add-int/lit8 v4, v0, 0x1

    const/16 v5, 0x41

    invoke-static {v3, p0, v0, v4, v5}, Lcom/subao/common/n/h;->a(Ljava/lang/StringBuilder;[BIIC)Ljava/lang/StringBuilder;

    .line 367
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_1

    .line 368
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 373
    :cond_1
    if-ge v2, v1, :cond_2

    .line 374
    const-string v0, ", ... (Total "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    :cond_2
    const/16 v0, 0x5d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a([BIIZ)Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    if-eqz p0, :cond_0

    if-ge p1, p2, :cond_0

    array-length v0, p0

    if-eqz v0, :cond_0

    array-length v0, p0

    if-lt p1, v0, :cond_1

    .line 108
    :cond_0
    const-string v0, ""

    .line 111
    :goto_0
    return-object v0

    .line 110
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 111
    if-eqz p3, :cond_2

    const/16 v0, 0x41

    :goto_1
    invoke-static {v1, p0, p1, p2, v0}, Lcom/subao/common/n/h;->a(Ljava/lang/StringBuilder;[BIIC)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x61

    goto :goto_1
.end method

.method public static a([BZ)Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    .line 121
    :cond_0
    const-string v0, ""

    .line 123
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lcom/subao/common/n/h;->a([BIIZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuilder;[BIIC)Ljava/lang/StringBuilder;
    .locals 2

    .prologue
    .line 127
    :goto_0
    if-ge p2, p3, :cond_0

    .line 128
    aget-byte v0, p1, p2

    .line 129
    shr-int/lit8 v1, v0, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-static {v1, p4}, Lcom/subao/common/n/h;->a(II)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    and-int/lit8 v0, v0, 0xf

    invoke-static {v0, p4}, Lcom/subao/common/n/h;->a(II)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 132
    :cond_0
    return-object p0
.end method

.method public static a(Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 16
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 1

    .prologue
    .line 27
    if-ne p0, p1, :cond_0

    .line 28
    const/4 v0, 0x1

    .line 34
    :goto_0
    return v0

    .line 31
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 32
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 45
    if-ne p0, p1, :cond_1

    .line 46
    const/4 v0, 0x1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    invoke-static {p0}, Lcom/subao/common/n/h;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 50
    invoke-static {p1}, Lcom/subao/common/n/h;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 51
    if-nez v1, :cond_0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    const/4 v0, 0x0

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
