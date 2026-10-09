.class public Lcom/tencent/igame/a/a/a/a;
.super Ljava/lang/Object;


# direct methods
.method private static a(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 5

    const/4 v4, 0x0

    const/16 v0, 0x20

    new-array v1, v0, [B

    const/16 v0, 0x58

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([BB)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v0, v2

    array-length v3, v1

    if-ge v0, v3, :cond_0

    array-length v0, v2

    :goto_0
    invoke-static {v2, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0

    :cond_0
    array-length v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 6

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/tencent/igame/a/a/a/a;->a(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    const-string v2, "UTF8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x10

    new-array v3, v3, [B

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([BB)V

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5, v1, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v3, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_4
    move-exception v1

    invoke-static {v1}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_5
    move-exception v1

    invoke-static {v1}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_6
    move-exception v1

    invoke-static {v1}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static a([BLjava/lang/String;)[B
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [B

    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/tencent/igame/a/a/a/a;->a(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v1

    const/16 v2, 0x10

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v2, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-static {v1}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_3
    move-exception v1

    invoke-static {v1}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_4
    move-exception v1

    invoke-static {v1}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_5
    move-exception v1

    invoke-static {v1}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_6
    move-exception v1

    invoke-static {v1}, Lcom/tencent/igame/priority/sdk/g/b;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
