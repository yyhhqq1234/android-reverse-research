.class public Lcom/tencent/component/utils/SecurityUtil;
.super Ljava/lang/Object;
.source "SecurityUtil.java"


# static fields
.field private static final INITIALCRC:J = -0x1L

.field private static final POLY64REV:J = -0x6a536cd653b4364bL

.field private static final digits:[C

.field private static sCrcTable:[J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x100

    .line 23
    const/16 v6, 0x10

    new-array v6, v6, [C

    fill-array-data v6, :array_0

    sput-object v6, Lcom/tencent/component/utils/SecurityUtil;->digits:[C

    .line 188
    new-array v6, v8, [J

    sput-object v6, Lcom/tencent/component/utils/SecurityUtil;->sCrcTable:[J

    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_2

    .line 207
    int-to-long v2, v0

    .line 208
    .local v2, "part":J
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/16 v6, 0x8

    if-ge v1, v6, :cond_1

    .line 209
    long-to-int v6, v2

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_0

    const-wide v4, -0x6a536cd653b4364bL    # -2.848111467964452E-204

    .line 210
    .local v4, "x":J
    :goto_2
    const/4 v6, 0x1

    shr-long v6, v2, v6

    xor-long v2, v6, v4

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 209
    .end local v4    # "x":J
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_2

    .line 212
    :cond_1
    sget-object v6, Lcom/tencent/component/utils/SecurityUtil;->sCrcTable:[J

    aput-wide v2, v6, v0

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    .end local v1    # "j":I
    .end local v2    # "part":J
    :cond_2
    return-void

    .line 23
    nop

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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private static bytes2HexStr([B)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    .line 152
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    .line 153
    :cond_0
    const/4 v3, 0x0

    .line 163
    :goto_0
    return-object v3

    .line 156
    :cond_1
    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v1, v3, [C

    .line 157
    .local v1, "buf":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 158
    aget-byte v0, p0, v2

    .line 159
    .local v0, "b":B
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/tencent/component/utils/SecurityUtil;->digits:[C

    and-int/lit8 v5, v0, 0xf

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 160
    ushr-int/lit8 v3, v0, 0x4

    int-to-byte v0, v3

    .line 161
    mul-int/lit8 v3, v2, 0x2

    sget-object v4, Lcom/tencent/component/utils/SecurityUtil;->digits:[C

    and-int/lit8 v5, v0, 0xf

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 163
    .end local v0    # "b":B
    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static crc64Long(Ljava/lang/String;)J
    .locals 2
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 197
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 198
    :cond_0
    const-wide/16 v0, 0x0

    .line 200
    :goto_0
    return-wide v0

    :cond_1
    invoke-static {p0}, Lcom/tencent/component/utils/SecurityUtil;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/component/utils/SecurityUtil;->crc64Long([B)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static crc64Long([B)J
    .locals 8
    .param p0, "buffer"    # [B

    .prologue
    .line 217
    const-wide/16 v0, -0x1

    .line 218
    .local v0, "crc":J
    const/4 v2, 0x0

    .local v2, "k":I
    array-length v3, p0

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 219
    sget-object v4, Lcom/tencent/component/utils/SecurityUtil;->sCrcTable:[J

    long-to-int v5, v0

    aget-byte v6, p0, v2

    xor-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget-wide v4, v4, v5

    const/16 v6, 0x8

    shr-long v6, v0, v6

    xor-long v0, v4, v6

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    :cond_0
    return-wide v0
.end method

.method public static decryptTea([B[B)[B
    .locals 1
    .param p0, "key"    # [B
    .param p1, "crypt"    # [B

    .prologue
    .line 177
    new-instance v0, Lcom/tencent/component/utils/TEA;

    invoke-direct {v0, p0}, Lcom/tencent/component/utils/TEA;-><init>([B)V

    invoke-virtual {v0, p1}, Lcom/tencent/component/utils/TEA;->decrypt([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static decryptTeaToString([B[B)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # [B
    .param p1, "crypt"    # [B

    .prologue
    .line 181
    new-instance v0, Lcom/tencent/component/utils/TEA;

    invoke-direct {v0, p0}, Lcom/tencent/component/utils/TEA;-><init>([B)V

    invoke-virtual {v0, p1}, Lcom/tencent/component/utils/TEA;->decryptToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encrypt(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 80
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lcom/tencent/component/utils/SecurityUtil;->encrypt(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encrypt(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 91
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    .line 92
    :cond_0
    const/4 v1, 0x0

    .line 103
    :goto_0
    return-object v1

    .line 94
    :cond_1
    const/4 v1, 0x0

    .line 96
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/component/utils/SecurityUtil;->encryptOrThrow(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 100
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 101
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public static encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lcom/tencent/component/utils/SecurityUtil;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 49
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tencent/component/utils/SecurityUtil;->encrypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static encrypt([B)Ljava/lang/String;
    .locals 1
    .param p0, "source"    # [B

    .prologue
    .line 54
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lcom/tencent/component/utils/SecurityUtil;->encrypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encrypt([BLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "source"    # [B
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 58
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    .line 59
    :cond_0
    const/4 v2, 0x0

    .line 70
    :goto_0
    return-object v2

    .line 61
    :cond_1
    const/4 v2, 0x0

    .line 63
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 64
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 65
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/component/utils/SecurityUtil;->bytes2HexStr([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 67
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0
.end method

.method public static encryptOrThrow(Ljava/io/File;)Ljava/lang/String;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 113
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lcom/tencent/component/utils/SecurityUtil;->encryptOrThrow(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encryptOrThrow(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "file"    # Ljava/io/File;
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 124
    if-nez p0, :cond_1

    .line 125
    const/4 v6, 0x0

    .line 148
    :cond_0
    :goto_0
    return-object v6

    .line 127
    :cond_1
    const/4 v6, 0x0

    .line 128
    .local v6, "result":Ljava/lang/String;
    const/4 v4, 0x0

    .line 130
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 131
    .local v2, "digest":Ljava/security/MessageDigest;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 133
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    const/16 v7, 0x400

    :try_start_1
    new-array v0, v7, [B

    .line 134
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, "count":I
    if-lez v1, :cond_3

    .line 135
    const/4 v7, 0x0

    invoke-virtual {v2, v0, v7, v1}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 140
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :catchall_0
    move-exception v7

    move-object v4, v5

    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :goto_2
    if-eqz v4, :cond_2

    .line 142
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 145
    :cond_2
    :goto_3
    throw v7

    .line 137
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v2    # "digest":Ljava/security/MessageDigest;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/component/utils/SecurityUtil;->bytes2HexStr([B)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v6

    .line 140
    if-eqz v5, :cond_0

    .line 142
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v3

    .line 144
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 143
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v2    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    .line 144
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 140
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v7

    goto :goto_2
.end method

.method public static encryptTea([BLjava/lang/String;)[B
    .locals 1
    .param p0, "key"    # [B
    .param p1, "datas"    # Ljava/lang/String;

    .prologue
    .line 169
    new-instance v0, Lcom/tencent/component/utils/TEA;

    invoke-direct {v0, p0}, Lcom/tencent/component/utils/TEA;-><init>([B)V

    invoke-virtual {v0, p1}, Lcom/tencent/component/utils/TEA;->encrypt(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encryptTea([B[B)[B
    .locals 1
    .param p0, "key"    # [B
    .param p1, "datas"    # [B

    .prologue
    .line 173
    new-instance v0, Lcom/tencent/component/utils/TEA;

    invoke-direct {v0, p0}, Lcom/tencent/component/utils/TEA;-><init>([B)V

    invoke-virtual {v0, p1}, Lcom/tencent/component/utils/TEA;->encrypt([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 8
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 226
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    new-array v4, v5, [B

    .line 227
    .local v4, "result":[B
    const/4 v2, 0x0

    .line 228
    .local v2, "output":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 229
    .local v1, "charArray":[C
    array-length v6, v1

    const/4 v5, 0x0

    move v3, v2

    .end local v2    # "output":I
    .local v3, "output":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-char v0, v1, v5

    .line 230
    .local v0, "ch":C
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "output":I
    .restart local v2    # "output":I
    and-int/lit16 v7, v0, 0xff

    int-to-byte v7, v7

    aput-byte v7, v4, v3

    .line 231
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "output":I
    .restart local v3    # "output":I
    shr-int/lit8 v7, v0, 0x8

    int-to-byte v7, v7

    aput-byte v7, v4, v2

    .line 229
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "ch":C
    :cond_0
    return-object v4
.end method

.method public static injectJs(Landroid/webkit/WebView;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 9
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 239
    :try_start_0
    const-string v3, "addJavascript"

    .line 240
    .local v3, "script":Ljava/lang/String;
    const-string v1, "Interface"

    .line 241
    .local v1, "inter":Ljava/lang/String;
    const-class v4, Landroid/webkit/WebView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/Object;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 242
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-static {}, Lcom/tencent/component/utils/PlatformUtil;->version()I

    move-result v4

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    .line 245
    const-string v4, "searchBoxJavaBridge_"

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 257
    .end local v1    # "inter":Ljava/lang/String;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "script":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 250
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 252
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 254
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method public static removeJs(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 7
    .param p0, "webView"    # Landroid/webkit/WebView;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 261
    :try_start_0
    const-class v2, Landroid/webkit/WebView;

    const-string v3, "removeJavascriptInterface"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 262
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 272
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 265
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 267
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 269
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method
