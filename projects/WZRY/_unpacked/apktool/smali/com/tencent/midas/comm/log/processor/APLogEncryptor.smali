.class public Lcom/tencent/midas/comm/log/processor/APLogEncryptor;
.super Ljava/lang/Object;
.source "APLogEncryptor.java"


# static fields
.field private static ENCRYPT_KEY:Ljava/lang/String; = null

.field private static final MAGIC_END:B = 0x0t

.field private static final MAGIC_START:B = 0x2t

.field private static PROTOCOL_VERSION:B

.field private static header:[B


# instance fields
.field private encryptCipher:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string/jumbo v0, "}VjZtoJF;dE+7iJs"

    sput-object v0, Lcom/tencent/midas/comm/log/processor/APLogEncryptor;->ENCRYPT_KEY:Ljava/lang/String;

    .line 21
    const/4 v0, 0x1

    sput-byte v0, Lcom/tencent/midas/comm/log/processor/APLogEncryptor;->PROTOCOL_VERSION:B

    .line 24
    const/4 v0, 0x7

    new-array v0, v0, [B

    sput-object v0, Lcom/tencent/midas/comm/log/processor/APLogEncryptor;->header:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/midas/comm/log/processor/APLogEncryptor;->encryptCipher:Ljavax/crypto/Cipher;

    return-void
.end method

.method private static assembleHeader(I)[B
    .locals 5
    .param p0, "length"    # I

    .prologue
    .line 98
    invoke-static {p0}, Lcom/tencent/midas/comm/log/util/APBytesUtil;->int2bytes(I)[B

    move-result-object v0

    .line 99
    .local v0, "lengthBytes":[B
    const/4 v1, 0x0

    sget-object v2, Lcom/tencent/midas/comm/log/processor/APLogEncryptor;->header:[B

    const/4 v3, 0x3

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    sget-object v1, Lcom/tencent/midas/comm/log/processor/APLogEncryptor;->header:[B

    return-object v1
.end method

.method public static create()Lcom/tencent/midas/comm/log/processor/APLogEncryptor;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/tencent/midas/comm/log/processor/APLogEncryptor;

    invoke-direct {v0}, Lcom/tencent/midas/comm/log/processor/APLogEncryptor;-><init>()V

    .line 32
    .local v0, "encryptor":Lcom/tencent/midas/comm/log/processor/APLogEncryptor;
    invoke-direct {v0}, Lcom/tencent/midas/comm/log/processor/APLogEncryptor;->init()V

    .line 33
    return-object v0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 38
    :try_start_0
    sget-object v2, Lcom/tencent/midas/comm/log/processor/APLogEncryptor;->header:[B

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput-byte v4, v2, v3

    .line 39
    sget-object v2, Lcom/tencent/midas/comm/log/processor/APLogEncryptor;->header:[B

    const/4 v3, 0x1

    sget-byte v4, Lcom/tencent/midas/comm/log/processor/APLogEncryptor;->PROTOCOL_VERSION:B

    aput-byte v4, v2, v3

    .line 41
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v2, Lcom/tencent/midas/comm/log/processor/APLogEncryptor;->ENCRYPT_KEY:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 42
    .local v1, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v2, "AES/ECB/NoPadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/midas/comm/log/processor/APLogEncryptor;->encryptCipher:Ljavax/crypto/Cipher;

    .line 43
    iget-object v2, p0, Lcom/tencent/midas/comm/log/processor/APLogEncryptor;->encryptCipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2

    .line 51
    .end local v1    # "key":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_0

    .line 46
    .end local v0    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_1
    move-exception v0

    .line 47
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 48
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v0

    .line 49
    .local v0, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setEncryptKey(Ljava/lang/String;)V
    .locals 0
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 89
    sput-object p0, Lcom/tencent/midas/comm/log/processor/APLogEncryptor;->ENCRYPT_KEY:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public static setProtocolVersion(B)V
    .locals 0
    .param p0, "version"    # B

    .prologue
    .line 93
    sput-byte p0, Lcom/tencent/midas/comm/log/processor/APLogEncryptor;->PROTOCOL_VERSION:B

    .line 94
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/midas/comm/log/processor/APLogEncryptor;->encryptCipher:Ljavax/crypto/Cipher;

    .line 86
    return-void
.end method

.method public encrypt([B)[B
    .locals 9
    .param p1, "content"    # [B

    .prologue
    const/4 v8, 0x0

    .line 54
    array-length v3, p1

    .line 55
    .local v3, "length":I
    rem-int/lit8 v4, v3, 0x10

    .line 57
    .local v4, "offset":I
    if-eqz v4, :cond_0

    .line 58
    rsub-int/lit8 v5, v4, 0x10

    .line 59
    .local v5, "patchNum":I
    add-int v6, v3, v5

    :try_start_0
    new-array v0, v6, [B

    .line 60
    .local v0, "data":[B
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p1, v6, v0, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    move-object p1, v0

    .line 63
    .end local v0    # "data":[B
    .end local v5    # "patchNum":I
    :cond_0
    iget-object v6, p0, Lcom/tencent/midas/comm/log/processor/APLogEncryptor;->encryptCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v6, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    .line 70
    :goto_0
    invoke-static {v3}, Lcom/tencent/midas/comm/log/processor/APLogEncryptor;->assembleHeader(I)[B

    move-result-object v2

    .line 73
    .local v2, "header":[B
    array-length v6, v2

    array-length v7, p1

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    new-array v0, v6, [B

    .line 75
    .restart local v0    # "data":[B
    array-length v6, v2

    invoke-static {v2, v8, v0, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    array-length v6, v2

    array-length v7, p1

    invoke-static {p1, v8, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    aput-byte v8, v0, v6

    .line 81
    return-object v0

    .line 64
    .end local v0    # "data":[B
    .end local v2    # "header":[B
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_0

    .line 66
    .end local v1    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_1
    move-exception v1

    .line 67
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_0
.end method
