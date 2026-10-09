.class public Lcom/tencent/msdk/tools/ApkSigReader;
.super Ljava/lang/Object;
.source "ApkSigReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSign(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 24
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/16 v10, 0x40

    invoke-virtual {v7, v10}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 25
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 26
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageInfo;>;"
    const-string v9, ""

    .line 27
    .local v9, "sigOrigin":Ljava/lang/String;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 28
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 29
    .local v6, "packageinfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 30
    .local v5, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 31
    iget-object v10, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v10}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    .line 38
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "packageinfo":Landroid/content/pm/PackageInfo;
    :cond_1
    :try_start_0
    const-string v10, "MD5"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 39
    .local v4, "md":Ljava/security/MessageDigest;
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/security/MessageDigest;->update([B)V

    .line 40
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 41
    .local v1, "bs":[B
    invoke-static {v1}, Lcom/tencent/msdk/tools/HexUtil;->bytes2HexStr([B)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 45
    .end local v1    # "bs":[B
    .end local v4    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v8

    .line 43
    :catch_0
    move-exception v2

    .line 44
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 45
    const-string v8, ""

    goto :goto_0
.end method

.method public static getSignaturesFromApk(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 52
    .local v4, "pkgMgr":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 54
    .local v2, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x40

    invoke-virtual {v4, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 59
    if-nez v2, :cond_0

    .line 74
    :goto_0
    return-object v5

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 63
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 64
    .local v7, "sigs":[Landroid/content/pm/Signature;
    new-instance v6, Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/String;-><init>([B)V

    .line 67
    .local v6, "sigOrigin":Ljava/lang/String;
    :try_start_1
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 68
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 69
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 70
    .local v0, "bs":[B
    invoke-static {v0}, Lcom/tencent/msdk/tools/HexUtil;->bytes2HexStr([B)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v8, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 71
    .local v5, "sig":Ljava/lang/String;
    goto :goto_0

    .line 72
    .end local v0    # "bs":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v5    # "sig":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 73
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 74
    const-string v5, ""

    goto :goto_0
.end method

.method private static loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .locals 4
    .param p0, "jarFile"    # Ljava/util/jar/JarFile;
    .param p1, "je"    # Ljava/util/jar/JarEntry;
    .param p2, "readBuffer"    # [B

    .prologue
    const/4 v1, 0x0

    .line 80
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 81
    .local v0, "is":Ljava/io/InputStream;
    :cond_0
    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {v0, p2, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 83
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 84
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 87
    .end local v0    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_0
    return-object v1

    .line 85
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static toCharsString([B)Ljava/lang/String;
    .locals 10
    .param p0, "sigBytes"    # [B

    .prologue
    const/16 v9, 0xa

    .line 91
    move-object v4, p0

    .line 92
    .local v4, "sig":[B
    array-length v0, v4

    .line 93
    .local v0, "N":I
    mul-int/lit8 v1, v0, 0x2

    .line 94
    .local v1, "N2":I
    new-array v5, v1, [C

    .line 95
    .local v5, "text":[C
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 96
    aget-byte v6, v4, v3

    .line 97
    .local v6, "v":B
    shr-int/lit8 v7, v6, 0x4

    and-int/lit8 v2, v7, 0xf

    .line 98
    .local v2, "d":I
    mul-int/lit8 v8, v3, 0x2

    if-lt v2, v9, :cond_0

    add-int/lit8 v7, v2, 0x61

    add-int/lit8 v7, v7, -0xa

    :goto_1
    int-to-char v7, v7

    aput-char v7, v5, v8

    .line 99
    and-int/lit8 v2, v6, 0xf

    .line 100
    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v8, v7, 0x1

    if-lt v2, v9, :cond_1

    add-int/lit8 v7, v2, 0x61

    add-int/lit8 v7, v7, -0xa

    :goto_2
    int-to-char v7, v7

    aput-char v7, v5, v8

    .line 95
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    :cond_0
    add-int/lit8 v7, v2, 0x30

    goto :goto_1

    .line 100
    :cond_1
    add-int/lit8 v7, v2, 0x30

    goto :goto_2

    .line 102
    .end local v2    # "d":I
    .end local v6    # "v":B
    :cond_2
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([C)V

    return-object v7
.end method
