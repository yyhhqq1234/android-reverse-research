.class public final Lcom/tencent/mna/base/f/a;
.super Ljava/lang/Object;
.source "AESUtils.java"


# static fields
.field public static final a:[B

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 11
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/tencent/mna/base/f/a;->b:[B

    .line 15
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/tencent/mna/base/f/a;->a:[B

    return-void

    .line 11
    nop

    :array_0
    .array-data 1
        0x4dt
        0x4et
        0x41t
        0x40t
        0x32t
        0x30t
        0x31t
        0x37t
        0x47t
        0x4ft
        0x48t
        0x45t
        0x41t
        0x44t
        0x21t
        0x21t
    .end array-data

    .line 15
    :array_1
    .array-data 1
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x35t
        0x37t
        0x38t
    .end array-data
.end method

.method public static a([BLjava/lang/String;)[B
    .locals 2

    .prologue
    .line 23
    .line 25
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 29
    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/tencent/mna/base/f/a;->a([B[BI)[B

    move-result-object v0

    :goto_0
    return-object v0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([B[B)[B
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x2

    invoke-static {p1, p0, v0}, Lcom/tencent/mna/base/f/a;->a([B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([B[BI)[B
    .locals 4

    .prologue
    .line 38
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 39
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 40
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v3, Lcom/tencent/mna/base/f/a;->b:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 41
    invoke-virtual {v1, p2, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 42
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "docrypt exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mna/base/f/h;->d(Ljava/lang/String;)V

    .line 46
    const/4 v0, 0x0

    goto :goto_0
.end method
