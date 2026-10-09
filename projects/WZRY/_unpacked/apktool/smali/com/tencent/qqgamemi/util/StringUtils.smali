.class public Lcom/tencent/qqgamemi/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareVersion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 63
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v8

    .line 65
    :cond_1
    if-nez p0, :cond_2

    move v8, v9

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    if-nez p1, :cond_3

    move v8, v10

    .line 68
    goto :goto_0

    .line 70
    :cond_3
    const-string v11, "[^a-zA-Z0-9]+"

    invoke-virtual {p0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr1":[Ljava/lang/String;
    const-string v11, "[^a-zA-Z0-9]+"

    .line 71
    invoke-virtual {p1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "arr2":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "ii":I
    array-length v11, v0

    array-length v12, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v6

    .local v6, "max":I
    :goto_1
    if-gt v5, v6, :cond_0

    .line 76
    array-length v11, v0

    if-ne v5, v11, :cond_4

    .line 77
    array-length v10, v1

    if-eq v5, v10, :cond_0

    move v8, v9

    goto :goto_0

    .line 78
    :cond_4
    array-length v11, v1

    if-ne v5, v11, :cond_5

    move v8, v10

    .line 79
    goto :goto_0

    .line 82
    :cond_5
    :try_start_0
    aget-object v11, v0, v5

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 88
    .local v2, "i1":I
    :goto_2
    :try_start_1
    aget-object v11, v1, v5

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 93
    .local v3, "i2":I
    :goto_3
    if-eq v2, v3, :cond_6

    .line 94
    sub-int v8, v2, v3

    goto :goto_0

    .line 83
    .end local v2    # "i1":I
    .end local v3    # "i2":I
    :catch_0
    move-exception v7

    .line 84
    .local v7, "x":Ljava/lang/Exception;
    const v2, 0x7fffffff

    .restart local v2    # "i1":I
    goto :goto_2

    .line 89
    .end local v7    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 90
    .restart local v7    # "x":Ljava/lang/Exception;
    const v3, 0x7fffffff

    .restart local v3    # "i2":I
    goto :goto_3

    .line 97
    .end local v7    # "x":Ljava/lang/Exception;
    :cond_6
    aget-object v11, v0, v5

    aget-object v12, v1, v5

    invoke-virtual {v11, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .line 99
    .local v4, "i3":I
    if-eqz v4, :cond_7

    move v8, v4

    .line 100
    goto :goto_0

    .line 75
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public static getUtf8(Ljava/lang/String;)[B
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 108
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 109
    .local v1, "keyBytes":[B
    return-object v1

    .line 110
    .end local v1    # "keyBytes":[B
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "unsupport utf-8 encoding"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static isHttpUrl(Ljava/lang/String;)Z
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 48
    if-eqz p0, :cond_0

    .line 49
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    const/4 v1, 0x7

    .line 50
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isHttpsUrl(Ljava/lang/String;)Z
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 57
    if-eqz p0, :cond_0

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-le v1, v2, :cond_0

    const/16 v1, 0x8

    .line 59
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isNetworkUrl(Ljava/lang/String;)Z
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 38
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 41
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/tencent/qqgamemi/util/StringUtils;->isHttpUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/tencent/qqgamemi/util/StringUtils;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static richNumber(J)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # J

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static transStringToSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "defaultValue":Ljava/lang/Object;, "TT;"
    move-object v1, p1

    .line 121
    .local v1, "transValue":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    .line 123
    :try_start_0
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 124
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 133
    .end local v1    # "transValue":Ljava/lang/Object;, "TT;"
    :cond_0
    :goto_0
    return-object v1

    .line 125
    .restart local v1    # "transValue":Ljava/lang/Object;, "TT;"
    :cond_1
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_0

    .line 126
    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "transValue":Ljava/lang/Float;, "TT;"
    goto :goto_0

    .line 129
    .local v1, "transValue":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Exception;
    move-object v1, p1

    .line 131
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
