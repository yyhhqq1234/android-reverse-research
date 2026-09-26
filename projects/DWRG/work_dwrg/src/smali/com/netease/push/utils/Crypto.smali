.class public Lcom/netease/push/utils/Crypto;
.super Ljava/lang/Object;
.source "Crypto.java"


# static fields
.field public static final RSA_PUBLIC_KEY:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAv18+t+6aTdcLH3PaWco5oYofBANFCKmf+z84SXo1vv4Hr+FEBAY2cJsmT/DlrFPYi6N37fgDhV9FRUB+Eo83b58UkLUAfs3XDNwAExcoZy79WhHyOMfzGmAa05wyz7GiqiBjVx9YAm0NkSnJ71Yeled7gdS6/wfRZZIBPUPCJ/rCH8cdNiALiXN/ySy9AAj7leYkR7apV2UDOyYx8dntooLGfsNQgTc3Ok0n8dcrxyj8j8/u+c9BXKdAeBpPNIGCw6gJjP3uXuDY8HXgALcCk6Cou2VPCOy50gTZC4hQ0wwDWMf3/BWtoBPquDErYLfR1umJabmJE+F19Q3ssAfpwwIDAQAB"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NGPush_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/netease/push/utils/Crypto;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/push/utils/Crypto;->TAG:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static aesDecrypt([BLjava/lang/String;)[B
    .locals 9
    .param p0, "data"    # [B
    .param p1, "_key"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 72
    invoke-static {p1, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v5

    .line 73
    .local v5, "key":[B
    const/16 v3, 0x10

    .line 74
    .local v3, "ivLen":I
    new-array v2, v3, [B

    .line 75
    .local v2, "iv":[B
    invoke-static {p0, v8, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v6, v5, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 77
    .local v6, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 78
    .local v4, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const-string v8, "AES/CTR/NoPadding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 79
    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v8, 0x2

    invoke-virtual {v1, v8, v6, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 80
    array-length v8, p0

    invoke-static {p0, v3, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 81
    .local v0, "_data":[B
    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    .line 82
    .local v7, "raw":[B
    return-object v7
.end method

.method public static aesEncrypt([BLjava/lang/String;)[B
    .locals 9
    .param p0, "input"    # [B
    .param p1, "_key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v8, 0x0

    invoke-static {p1, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 55
    .local v4, "key":[B
    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    .line 56
    .local v7, "random":Ljava/security/SecureRandom;
    const/16 v8, 0x10

    new-array v2, v8, [B

    .line 58
    .local v2, "iv":[B
    invoke-virtual {v7, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 59
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "AES"

    invoke-direct {v5, v4, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 60
    .local v5, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v3, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 61
    .local v3, "ivSpec":Ljavax/crypto/spec/IvParameterSpec;
    const-string v8, "AES/CTR/NoPadding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 62
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v5, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 63
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 64
    .local v1, "ciphered":[B
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 65
    .local v6, "outputStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v6, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 66
    invoke-virtual {v6, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 67
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    return-object v8
.end method

.method private static append([B[B)[B
    .locals 4
    .param p0, "prefix"    # [B
    .param p1, "suffix"    # [B

    .prologue
    .line 134
    array-length v2, p0

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v1, v2, [B

    .line 135
    .local v1, "toReturn":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_0

    .line 138
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-lt v0, v2, :cond_1

    .line 141
    return-object v1

    .line 136
    :cond_0
    aget-byte v2, p0, v0

    aput-byte v2, v1, v0

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_1
    array-length v2, p0

    add-int/2addr v2, v0

    aget-byte v3, p1, v0

    aput-byte v3, v1, v2

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static blockCipher(Ljavax/crypto/Cipher;[BI)[B
    .locals 8
    .param p0, "cipher"    # Ljavax/crypto/Cipher;
    .param p1, "bytes"    # [B
    .param p2, "mode"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 113
    new-array v3, v7, [B

    .line 114
    .local v3, "scrambled":[B
    new-array v5, v7, [B

    .line 115
    .local v5, "toReturn":[B
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v1

    .line 117
    .local v1, "blockSize":I
    const/4 v0, 0x0

    .line 118
    .local v0, "begin":I
    const/4 v2, 0x0

    .line 119
    .local v2, "end":I
    array-length v6, p1

    .line 120
    .local v6, "total":I
    :goto_0
    if-lt v0, v6, :cond_0

    .line 130
    return-object v5

    .line 121
    :cond_0
    add-int v2, v0, v1

    .line 122
    if-le v2, v6, :cond_1

    .line 123
    move v2, v6

    .line 125
    :cond_1
    invoke-static {p1, v0, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 126
    .local v4, "slice":[B
    invoke-virtual {p0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 127
    invoke-static {v5, v3}, Lcom/netease/push/utils/Crypto;->append([B[B)[B

    move-result-object v5

    .line 128
    move v0, v2

    goto :goto_0
.end method

.method public static genAESKey()Ljava/lang/String;
    .locals 6

    .prologue
    .line 40
    const-string v1, "kPPuJVCnRXFOM3eNhKfiPQF+Sibk/pb6iWwjJ4ngTO4="

    .line 42
    .local v1, "key":Ljava/lang/String;
    :try_start_0
    const-string v4, "AES"

    invoke-static {v4}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v2

    .line 43
    .local v2, "keyGen":Ljavax/crypto/KeyGenerator;
    const/16 v4, 0x100

    invoke-virtual {v2, v4}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 44
    invoke-virtual {v2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 45
    .local v3, "secretKey":Ljavax/crypto/SecretKey;
    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 49
    .end local v2    # "keyGen":Ljavax/crypto/KeyGenerator;
    .end local v3    # "secretKey":Ljavax/crypto/SecretKey;
    :goto_0
    return-object v1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private patchPlaceholder()V
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/netease/push/utils/Crypto;->TAG:Ljava/lang/String;

    const-class v1, Lcom/netease/ntunisdk/base/PatchPlaceholder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method

.method public static rsaDecrypt(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 9
    .param p0, "encrypted"    # Ljava/lang/String;
    .param p1, "privateKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 101
    const-string v6, "RSA"

    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 102
    .local v4, "keyf":Ljava/security/KeyFactory;
    invoke-static {p1, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 103
    .local v3, "key":[B
    new-instance v6, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v6, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v4, v6}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v5

    .line 104
    .local v5, "priKey":Ljava/security/PrivateKey;
    const-string v6, "RSA/NONE/PKCS1Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 105
    .local v1, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v1, v8, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 106
    invoke-static {p0, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 107
    .local v0, "bytes":[B
    invoke-static {v1, v0, v8}, Lcom/netease/push/utils/Crypto;->blockCipher(Ljavax/crypto/Cipher;[BI)[B

    move-result-object v2

    .line 108
    .local v2, "decrypted":[B
    return-object v2
.end method

.method public static rsaEncrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "plaintext"    # Ljava/lang/String;
    .param p1, "publicKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 86
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 87
    .local v0, "bytes":[B
    invoke-static {v0, p1}, Lcom/netease/push/utils/Crypto;->rsaEncrypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static rsaEncrypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B
    .param p1, "publicKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 91
    const-string v5, "RSA"

    invoke-static {v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 92
    .local v3, "keyf":Ljava/security/KeyFactory;
    invoke-static {p1, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 93
    .local v2, "key":[B
    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v5, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v3, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    .line 94
    .local v4, "pubKey":Ljava/security/PublicKey;
    const-string v5, "RSA/NONE/PKCS1Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 95
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0, v7, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 96
    invoke-static {v0, p0, v7}, Lcom/netease/push/utils/Crypto;->blockCipher(Ljavax/crypto/Cipher;[BI)[B

    move-result-object v1

    .line 97
    .local v1, "encrypted":[B
    invoke-static {v1, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
