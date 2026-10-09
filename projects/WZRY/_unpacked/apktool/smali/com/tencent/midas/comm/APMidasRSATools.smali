.class public Lcom/tencent/midas/comm/APMidasRSATools;
.super Ljava/lang/Object;
.source "APMidasRSATools.java"


# instance fields
.field private final DEFAULT_PUBLIC_KEY:Ljava/lang/String;

.field private publicKey:Ljava/security/interfaces/RSAPublicKey;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAy+ZF2XdZ6RwK/lAtyC7h\rLA4KaURXrD7gEGcx+t/l8KKLTLfR3j4vOHXHXjixipSXicyJcDH74rfO7ISnFkWQ\r+kVmB5kfhdrq5z6D/h/q7ko7MdU9SUlfZfAxwnS4VJY4xWoFWG9ZAoh5ZHJcloDU\rol0qYTUX/yWNiHkoUtnU+SP+ZJjODpqcYuVdLxlA0YelafeBc3SCeuEcPH9lIiRZ\rw0I91wQvPq7gM7/6qnMEdzm7nJdCIni83INl2bh3gW5UBwFBpNrI/fZkgDA4aVGV\rpplEP9bChkCpq2e1T9gw0ODuEVmgVaSvdwHLMYcGn+nYjWDYy16b6ImdkubF8q5l\rhwIDAQAB\r"

    iput-object v0, p0, Lcom/tencent/midas/comm/APMidasRSATools;->DEFAULT_PUBLIC_KEY:Ljava/lang/String;

    .line 37
    return-void
.end method

.method private charToByte(C)B
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 56
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method private decrypt(Ljava/security/interfaces/RSAPublicKey;[B)[B
    .locals 5
    .param p1, "publicKey"    # Ljava/security/interfaces/RSAPublicKey;
    .param p2, "cipherData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 116
    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u89e3\u5bc6\u79c1\u94a5\u4e3a\u7a7a, \u8bf7\u8bbe\u7f6e"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 118
    :cond_0
    const/4 v0, 0x0

    .line 120
    .local v0, "cipher":Ljavax/crypto/Cipher;
    :try_start_0
    const-string v3, "RSA"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 121
    const/4 v3, 0x2

    invoke-virtual {v0, v3, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 122
    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v2

    .line 123
    .local v2, "output":[B
    return-object v2

    .line 125
    .end local v2    # "output":[B
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u6ca1\u6709\u8fd9\u6837\u7684\u89e3\u5bc6\u7b97\u6cd5"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 127
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 128
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u5bc6\u94a5\u65e0\u6548\uff0c\u8bf7\u68c0\u67e5\u786e\u8ba4"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 129
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :catch_2
    move-exception v1

    .line 130
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u5bc6\u6587\u957f\u5ea6\u65e0\u6548\u6216\u8005\u8fc7\u957f"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 131
    .end local v1    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_3
    move-exception v1

    .line 132
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u5bc6\u6587\u6570\u636e\u5df2\u635f\u574f"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3

    .line 133
    .end local v1    # "e":Ljavax/crypto/BadPaddingException;
    :catch_4
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    const-string v3, "APMidasRSATools exception"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v3, Ljava/lang/Exception;

    const-string/jumbo v4, "\u5176\u4ed6\u9519\u8bef"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getByte(Ljava/lang/String;)[B
    .locals 1
    .param p1, "strMwen"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/tencent/midas/comm/APMidasRSATools;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 62
    .local v0, "decrypt":[B
    return-object v0
.end method

.method private hexStringToBytes(Ljava/lang/String;)[B
    .locals 7
    .param p1, "hexString"    # Ljava/lang/String;

    .prologue
    .line 41
    if-eqz p1, :cond_0

    const-string v5, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 52
    :cond_1
    return-object v0

    .line 44
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v3, v5, 0x2

    .line 46
    .local v3, "length":I
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 47
    .local v1, "hexChars":[C
    new-array v0, v3, [B

    .line 48
    .local v0, "d":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 49
    mul-int/lit8 v4, v2, 0x2

    .line 50
    .local v4, "pos":I
    aget-char v5, v1, v4

    invoke-direct {p0, v5}, Lcom/tencent/midas/comm/APMidasRSATools;->charToByte(C)B

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v4, 0x1

    aget-char v6, v1, v6

    invoke-direct {p0, v6}, Lcom/tencent/midas/comm/APMidasRSATools;->charToByte(C)B

    move-result v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private loadPublicKey(Ljava/lang/String;)V
    .locals 5
    .param p1, "publicKeyStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    const/4 v4, 0x0

    :try_start_0
    invoke-static {p1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 69
    .local v0, "btye":[B
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 70
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 71
    .local v3, "x509KeySpec":Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    check-cast v4, Ljava/security/interfaces/RSAPublicKey;

    iput-object v4, p0, Lcom/tencent/midas/comm/APMidasRSATools;->publicKey:Ljava/security/interfaces/RSAPublicKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v0    # "btye":[B
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    .end local v3    # "x509KeySpec":Ljava/security/spec/X509EncodedKeySpec;
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public deCodeKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "strDecryt"    # Ljava/lang/String;

    .prologue
    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "data":[B
    const/4 v1, 0x0

    .line 89
    .local v1, "decrypt":[B
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAy+ZF2XdZ6RwK/lAtyC7h\rLA4KaURXrD7gEGcx+t/l8KKLTLfR3j4vOHXHXjixipSXicyJcDH74rfO7ISnFkWQ\r+kVmB5kfhdrq5z6D/h/q7ko7MdU9SUlfZfAxwnS4VJY4xWoFWG9ZAoh5ZHJcloDU\rol0qYTUX/yWNiHkoUtnU+SP+ZJjODpqcYuVdLxlA0YelafeBc3SCeuEcPH9lIiRZ\rw0I91wQvPq7gM7/6qnMEdzm7nJdCIni83INl2bh3gW5UBwFBpNrI/fZkgDA4aVGV\rpplEP9bChkCpq2e1T9gw0ODuEVmgVaSvdwHLMYcGn+nYjWDYy16b6ImdkubF8q5l\rhwIDAQAB\r"

    invoke-direct {p0, v3}, Lcom/tencent/midas/comm/APMidasRSATools;->loadPublicKey(Ljava/lang/String;)V

    .line 91
    invoke-direct {p0, p1}, Lcom/tencent/midas/comm/APMidasRSATools;->getByte(Ljava/lang/String;)[B

    move-result-object v1

    .line 93
    iget-object v3, p0, Lcom/tencent/midas/comm/APMidasRSATools;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-direct {p0, v3, v1}, Lcom/tencent/midas/comm/APMidasRSATools;->decrypt(Ljava/security/interfaces/RSAPublicKey;[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v3

    .line 97
    :catch_0
    move-exception v2

    .line 98
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    const-string v3, ""

    goto :goto_0
.end method
