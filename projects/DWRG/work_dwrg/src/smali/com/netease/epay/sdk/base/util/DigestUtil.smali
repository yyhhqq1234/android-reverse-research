.class public Lcom/netease/epay/sdk/base/util/DigestUtil;
.super Ljava/lang/Object;
.source "DigestUtil.java"


# static fields
.field private static final HEX_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/netease/epay/sdk/base/util/DigestUtil;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byte2hex([B)Ljava/lang/String;
    .locals 7
    .param p0, "abyte0"    # [B

    .prologue
    const/16 v6, 0x10

    .line 88
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 89
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 90
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    if-ge v2, v6, :cond_0

    .line 91
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    :cond_0
    aget-byte v2, p0, v0

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    invoke-static {v2, v3, v6}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "psw"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-static {p0}, Lcom/netease/epay/sdk/base/util/DigestUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 118
    invoke-static {}, Lcom/netease/epay/sdk/base/util/DigestUtil;->getAesKey()Ljava/lang/String;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    invoke-static {p0, v0}, Lcom/netease/epay/sdk/base/util/AES;->encode(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/SdkBase64;->encode([B)Ljava/lang/String;

    move-result-object p0

    .line 122
    .end local p0    # "psw":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static fix2char(Ljava/lang/String;Ljava/lang/String;)[C
    .locals 5
    .param p0, "m"    # Ljava/lang/String;
    .param p1, "n"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x21

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v1, v0, [C

    .line 39
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v1, v0

    .line 41
    aget-char v2, v1, v0

    if-lt v2, v4, :cond_0

    aget-char v2, v1, v0

    const/16 v3, 0x7e

    if-le v2, v3, :cond_1

    .line 42
    :cond_0
    aput-char v4, v1, v0

    .line 39
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v0, v2, :cond_4

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v0, v2, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 50
    :cond_3
    :goto_1
    return-object v1

    .line 47
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 48
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v0, v2, v1, v3}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_1
.end method

.method public static getAesKey()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 147
    sget-object v1, Lcom/netease/epay/sdk/base/core/BaseData;->sessionId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 149
    :try_start_0
    sget-object v1, Lcom/netease/epay/sdk/base/core/BaseData;->sessionId:Ljava/lang/String;

    sget v2, Lcom/netease/epay/sdk/base/core/BaseData;->wordStart:I

    sget v3, Lcom/netease/epay/sdk/base/core/BaseData;->wordEnd:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 150
    sget-object v2, Lcom/netease/epay/sdk/base/core/BaseData;->sessionId:Ljava/lang/String;

    sget v3, Lcom/netease/epay/sdk/base/core/BaseData;->mStart:I

    sget v4, Lcom/netease/epay/sdk/base/core/BaseData;->mEnd:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 151
    sget-object v3, Lcom/netease/epay/sdk/base/core/BaseData;->sessionId:Ljava/lang/String;

    sget v4, Lcom/netease/epay/sdk/base/core/BaseData;->nStart:I

    sget v5, Lcom/netease/epay/sdk/base/core/BaseData;->nEnd:I

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-static {v1, v2, v3}, Lcom/netease/epay/sdk/base/util/DigestUtil;->getEncyptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-static {v1}, Lcom/netease/epay/sdk/base/util/DigestUtil;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 160
    :cond_0
    :goto_0
    return-object v0

    .line 154
    :catch_0
    move-exception v1

    .line 155
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    const-string v1, "Error happens when get subString from sessionId"

    invoke-static {v1}, Lcom/netease/epay/sdk/base/util/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getBinary(II)I
    .locals 4
    .param p0, "okey"    # I
    .param p1, "index"    # I

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 63
    and-int/lit8 v0, p0, 0x1

    .line 65
    :goto_0
    return v0

    :cond_0
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    int-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    and-int/2addr v0, p0

    goto :goto_0
.end method

.method private static getEncyptKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "word"    # Ljava/lang/String;
    .param p1, "m"    # Ljava/lang/String;
    .param p2, "n"    # Ljava/lang/String;

    .prologue
    .line 16
    const-wide/16 v2, 0x0

    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, p1, p2}, Lcom/netease/epay/sdk/base/util/DigestUtil;->getEncyptedItem(ILjava/lang/String;Ljava/lang/String;)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 17
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getEncyptedItem(ILjava/lang/String;Ljava/lang/String;)D
    .locals 7
    .param p0, "item"    # I
    .param p1, "m"    # Ljava/lang/String;
    .param p2, "n"    # Ljava/lang/String;

    .prologue
    .line 25
    const-wide/16 v2, 0x0

    .line 27
    const/4 v0, 0x7

    move v6, v0

    move-wide v0, v2

    move v2, v6

    :goto_0
    if-ltz v2, :cond_1

    .line 28
    invoke-static {p0, v2}, Lcom/netease/epay/sdk/base/util/DigestUtil;->getBinary(II)I

    move-result v3

    shr-int/2addr v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 29
    invoke-static {p1, p2}, Lcom/netease/epay/sdk/base/util/DigestUtil;->fix2char(Ljava/lang/String;Ljava/lang/String;)[C

    move-result-object v3

    .line 30
    invoke-static {v3}, Lcom/netease/epay/sdk/base/util/DigestUtil;->getIntFromChars([C)D

    move-result-wide v4

    add-double/2addr v0, v4

    .line 32
    :cond_0
    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double/2addr v4, v0

    .line 27
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    move-wide v0, v4

    goto :goto_0

    .line 34
    :cond_1
    return-wide v0
.end method

.method public static getFlexibleSecret(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    const/4 v0, 0x4

    const/16 v1, 0x1d

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "QmvT6nQ~:iNVBf:gJ9^tv5lad"

    goto :goto_0
.end method

.method private static getIntFromChars([C)D
    .locals 6
    .param p0, "word"    # [C

    .prologue
    .line 54
    const-wide/16 v2, 0x0

    .line 55
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 56
    aget-char v1, p0, v0

    int-to-double v4, v1

    add-double/2addr v2, v4

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    return-wide v2
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 103
    .line 105
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 107
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 108
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/DigestUtil;->toHexString2([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 109
    .end local p0    # "message":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 113
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 110
    .restart local p0    # "message":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, p0

    .line 111
    .end local p0    # "message":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 110
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, p0

    goto :goto_1
.end method

.method public static getMd5WithSecret(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "secret"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 79
    :try_start_1
    const-string v2, "utf-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    :goto_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/netease/epay/sdk/base/util/DigestUtil;->byte2hex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no md5 support"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static toHexString2([B)Ljava/lang/String;
    .locals 4
    .param p0, "b"    # [B

    .prologue
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 127
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 128
    sget-object v2, Lcom/netease/epay/sdk/base/util/DigestUtil;->HEX_DIGITS:[C

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v3, v3, 0x4

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    sget-object v2, Lcom/netease/epay/sdk/base/util/DigestUtil;->HEX_DIGITS:[C

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
