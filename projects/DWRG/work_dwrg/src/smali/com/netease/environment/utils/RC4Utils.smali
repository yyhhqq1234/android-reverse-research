.class public Lcom/netease/environment/utils/RC4Utils;
.super Ljava/lang/Object;
.source "RC4Utils.java"


# static fields
.field public static final ALGORITHM:Ljava/lang/String; = "RC4"

.field private static final TAG:Ljava/lang/String; = "RC4Utils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p0}, Lcom/netease/environment/utils/Base64Utils;->decode(Ljava/lang/String;)[B

    move-result-object v0

    .line 50
    .local v0, "decodedData":[B
    invoke-static {v0, p1}, Lcom/netease/environment/utils/RC4Utils;->decryptData([BLjava/lang/String;)[B

    move-result-object v1

    .line 52
    .local v1, "decryptedData":[B
    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :goto_0
    return-object v3

    .line 53
    :catch_0
    move-exception v2

    .line 54
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static decryptData([BLjava/lang/String;)[B
    .locals 6
    .param p0, "encryptedData"    # [B
    .param p1, "rc4Key"    # Ljava/lang/String;

    .prologue
    .line 107
    const/4 v1, 0x0

    .line 109
    .local v1, "decryptedData":[B
    if-eqz p0, :cond_0

    .line 111
    :try_start_0
    const-string v4, "RC4"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 112
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "RC4"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 114
    .local v3, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 115
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v1

    .line 132
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    :cond_0
    :goto_0
    return-object v1

    .line 117
    :catch_0
    move-exception v2

    .line 118
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "RC4Utils"

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .line 120
    .local v2, "e":Ljavax/crypto/NoSuchPaddingException;
    const-string v4, "RC4Utils"

    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    .end local v2    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v2

    .line 122
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "RC4Utils"

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_3
    move-exception v2

    .line 124
    .local v2, "e":Ljava/security/InvalidKeyException;
    const-string v4, "RC4Utils"

    invoke-virtual {v2}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    .end local v2    # "e":Ljava/security/InvalidKeyException;
    :catch_4
    move-exception v2

    .line 126
    .local v2, "e":Ljavax/crypto/IllegalBlockSizeException;
    const-string v4, "RC4Utils"

    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    .end local v2    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v2

    .line 128
    .local v2, "e":Ljavax/crypto/BadPaddingException;
    const-string v4, "RC4Utils"

    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static encryptData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, p1}, Lcom/netease/environment/utils/RC4Utils;->encryptData([BLjava/lang/String;)[B

    move-result-object v0

    .line 39
    .local v0, "encryptedData":[B
    invoke-static {v0}, Lcom/netease/environment/utils/Base64Utils;->encode([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static encryptData([BLjava/lang/String;)[B
    .locals 6
    .param p0, "data"    # [B
    .param p1, "rc4Key"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .prologue
    .line 69
    const/4 v2, 0x0

    .line 71
    .local v2, "encryptedData":[B
    if-eqz p0, :cond_0

    .line 73
    :try_start_0
    const-string v4, "RC4"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 75
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "RC4"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 77
    .local v3, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 78
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v2

    .line 95
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v3    # "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    :cond_0
    :goto_0
    return-object v2

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "RC4Utils"

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 83
    .local v1, "e":Ljavax/crypto/NoSuchPaddingException;
    const-string v4, "RC4Utils"

    invoke-virtual {v1}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    .end local v1    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v1

    .line 85
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "RC4Utils"

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_3
    move-exception v1

    .line 87
    .local v1, "e":Ljava/security/InvalidKeyException;
    const-string v4, "RC4Utils"

    invoke-virtual {v1}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_4
    move-exception v1

    .line 89
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    const-string v4, "RC4Utils"

    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    .end local v1    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_5
    move-exception v1

    .line 91
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    const-string v4, "RC4Utils"

    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
