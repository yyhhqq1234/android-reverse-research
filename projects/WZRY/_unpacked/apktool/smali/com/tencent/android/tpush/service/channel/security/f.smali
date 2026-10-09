.class public Lcom/tencent/android/tpush/service/channel/security/f;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Ljava/security/interfaces/RSAPublicKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/service/channel/security/f;->a:Ljava/security/interfaces/RSAPublicKey;

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 8

    .prologue
    .line 148
    sget-object v0, Lcom/tencent/android/tpush/service/channel/security/f;->a:Ljava/security/interfaces/RSAPublicKey;

    if-nez v0, :cond_0

    .line 149
    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDyMrH3s73WgYu7MnBDurisRILqXwj1enRsuO7lPZCrPIxRd1RpTrv0xoWzKSyl2gwhY+l6/csBqs/Ako70II7wFWP3ugyKroHaWgvPw9M090xowDqBhQjcEfWKMd8A/cimVAlO/1p7kQDH0eTvZvOsv7sLmfTsMe8PkT2t22gZWQIDAQAB"

    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/security/f;->a(Ljava/lang/String;)V

    .line 153
    :cond_0
    :try_start_0
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 154
    const/4 v0, 0x2

    sget-object v1, Lcom/tencent/android/tpush/service/channel/security/f;->a:Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {v2, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 156
    sget-object v0, Lcom/tencent/android/tpush/service/channel/security/f;->a:Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v1, v0, 0x8

    .line 158
    const-string v0, ""

    .line 159
    invoke-static {p0, v1}, Lcom/tencent/android/tpush/service/channel/security/f;->a([BI)[[B

    move-result-object v3

    .line 160
    array-length v4, v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    .line 161
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v6, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    const-string v7, "UTF-8"

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v0

    .line 160
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "\u65e0\u6b64\u89e3\u5bc6\u7b97\u6cd5"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :catch_1
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    .line 168
    const/4 v0, 0x0

    :cond_1
    return-object v0

    .line 169
    :catch_2
    move-exception v0

    .line 170
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "\u89e3\u5bc6\u79c1\u94a5\u975e\u6cd5,\u8bf7\u68c0\u67e5"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :catch_3
    move-exception v0

    .line 172
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "\u5bc6\u6587\u957f\u5ea6\u975e\u6cd5"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :catch_4
    move-exception v0

    .line 174
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "\u5bc6\u6587\u6570\u636e\u5df2\u635f\u574f"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lcom/tencent/android/tpush/service/channel/security/a;->a(Ljava/lang/String;I)[B

    move-result-object v0

    .line 47
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 48
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 49
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    sput-object v0, Lcom/tencent/android/tpush/service/channel/security/f;->a:Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 57
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "\u65e0\u6b64\u7b97\u6cd5"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :catch_1
    move-exception v0

    .line 53
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "\u516c\u94a5\u975e\u6cd5"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :catch_2
    move-exception v0

    .line 55
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "\u516c\u94a5\u6570\u636e\u4e3a\u7a7a"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a([BI)[[B
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 245
    array-length v0, p0

    div-int v3, v0, p1

    .line 246
    array-length v0, p0

    rem-int v4, v0, p1

    .line 248
    if-eqz v4, :cond_2

    .line 249
    const/4 v0, 0x1

    .line 251
    :goto_0
    add-int v2, v3, v0

    new-array v5, v2, [[B

    move v2, v1

    .line 253
    :goto_1
    add-int v6, v3, v0

    if-ge v2, v6, :cond_1

    .line 254
    new-array v6, p1, [B

    .line 255
    add-int v7, v3, v0

    add-int/lit8 v7, v7, -0x1

    if-ne v2, v7, :cond_0

    if-eqz v4, :cond_0

    .line 256
    mul-int v7, v2, p1

    invoke-static {p0, v7, v6, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    :goto_2
    aput-object v6, v5, v2

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 258
    :cond_0
    mul-int v7, v2, p1

    invoke-static {p0, v7, v6, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 262
    :cond_1
    return-object v5

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 205
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 206
    :cond_0
    new-array v0, v1, [B

    .line 215
    :cond_1
    return-object v0

    .line 208
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v3, v0, 0x2

    .line 210
    new-array v0, v3, [B

    .line 211
    :goto_0
    if-ge v1, v3, :cond_1

    .line 212
    mul-int/lit8 v4, v1, 0x2

    mul-int/lit8 v5, v1, 0x2

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 213
    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
