.class public Lim/yixin/sdk/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CR2Blank(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 141
    if-eqz p0, :cond_0

    .end local p0    # "src":Ljava/lang/String;
    :goto_0
    const-string v0, "\\n"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .restart local p0    # "src":Ljava/lang/String;
    :cond_0
    const-string p0, ""

    goto :goto_0
.end method

.method public static decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 156
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 157
    .local v6, "params":Landroid/os/Bundle;
    if-eqz p0, :cond_0

    .line 158
    const-string v8, "&"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "array":[Ljava/lang/String;
    move-object v1, v0

    .local v1, "as":[Ljava/lang/String;
    array-length v4, v0

    .line 161
    .local v4, "j":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v4, :cond_1

    .line 172
    .end local v0    # "array":[Ljava/lang/String;
    .end local v1    # "as":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_0
    return-object v6

    .line 162
    .restart local v0    # "array":[Ljava/lang/String;
    .restart local v1    # "as":[Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    :cond_1
    aget-object v5, v1, v3

    .line 163
    .local v5, "parameter":Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 165
    .local v7, "v":[Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_0
    aget-object v8, v7, v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v7, v9

    const-string v10, "UTF-8"

    invoke-static {v9, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public static isBlank(Ljava/lang/CharSequence;)Z
    .locals 4
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    .line 35
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, "strLen":I
    if-nez v1, :cond_1

    .line 43
    .end local v1    # "strLen":I
    :cond_0
    :goto_0
    return v2

    .line 38
    .restart local v1    # "strLen":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 39
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    .line 40
    const/4 v2, 0x0

    goto :goto_0

    .line 38
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static isNotBlank(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 69
    invoke-static {p0}, Lim/yixin/sdk/util/StringUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static parseUrl(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 146
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 147
    .local v2, "u":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lim/yixin/sdk/util/StringUtil;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 148
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {v2}, Ljava/net/URL;->getRef()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lim/yixin/sdk/util/StringUtil;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "u":Ljava/net/URL;
    :goto_0
    return-object v0

    .line 150
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/net/MalformedURLException;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public static substringByByteCount(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 9
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "byteCount"    # I
    .param p2, "needDots"    # Z

    .prologue
    const/4 v7, 0x1

    .line 84
    if-nez p0, :cond_0

    .line 85
    const-string v6, ""

    .line 108
    :goto_0
    return-object v6

    .line 88
    :cond_0
    invoke-static {p0}, Lim/yixin/sdk/util/StringUtil;->CR2Blank(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "curNum":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v3, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 93
    .local v4, "tempChar":[C
    const/4 v1, 0x0

    .line 94
    .local v1, "i":I
    const/4 v5, 0x0

    .line 95
    .local v5, "trimed":Z
    const/4 v1, 0x0

    :goto_1
    array-length v6, v4

    if-lt v1, v6, :cond_2

    .line 106
    :goto_2
    if-eqz p2, :cond_1

    if-eqz v5, :cond_1

    .line 107
    const-string v6, "..."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 96
    :cond_2
    aget-char v6, v4, v1

    const/16 v8, 0x7f

    if-gt v6, v8, :cond_3

    move v2, v7

    .line 97
    .local v2, "isAscii":Z
    :goto_3
    if-eqz v2, :cond_4

    move v6, v7

    :goto_4
    add-int/2addr v0, v6

    .line 98
    if-le v0, p1, :cond_5

    .line 99
    const/4 v5, 0x1

    .line 100
    goto :goto_2

    .line 96
    .end local v2    # "isAscii":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 97
    .restart local v2    # "isAscii":Z
    :cond_4
    const/4 v6, 0x2

    goto :goto_4

    .line 103
    :cond_5
    aget-char v6, v4, v1

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static substringByCharCount(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "charCount"    # I
    .param p2, "needDots"    # Z

    .prologue
    .line 120
    if-nez p0, :cond_1

    .line 121
    const-string v0, ""

    .line 130
    :cond_0
    :goto_0
    return-object v0

    .line 123
    :cond_1
    move-object v0, p0

    .line 124
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 125
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 126
    if-eqz p2, :cond_0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
