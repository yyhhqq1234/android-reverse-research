.class public Lcom/tencent/tga/livesdk/uitl/SignUitl;
.super Ljava/lang/Object;
.source "SignUitl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static byte2HexFormatted([B)Ljava/lang/String;
    .locals 6
    .param p0, "arr"    # [B

    .prologue
    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 187
    .local v3, "str":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_3

    .line 188
    aget-byte v4, p0, v1

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, "h":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 190
    .local v2, "l":I
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 191
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    :cond_0
    const/4 v4, 0x2

    if-le v2, v4, :cond_1

    .line 193
    add-int/lit8 v4, v2, -0x2

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 194
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_2

    .line 196
    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    .end local v0    # "h":Ljava/lang/String;
    .end local v2    # "l":I
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getApkSignatureMD5(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 106
    :try_start_0
    const-string v7, "android.content.pm.PackageParser"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 107
    .local v2, "clazz":Ljava/lang/Class;
    invoke-static {v2}, Lcom/tencent/tga/livesdk/uitl/SignUitl;->getParserObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .line 109
    .local v6, "packageParser":Ljava/lang/Object;
    invoke-static {p0, v2, v6, p1}, Lcom/tencent/tga/livesdk/uitl/SignUitl;->getPackage(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 111
    .local v5, "packag":Ljava/lang/Object;
    const-string v7, "collectCertificates"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-string v10, "android.content.pm.PackageParser$Package"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 112
    .local v3, "collectCertificatesMethod":Ljava/lang/reflect/Method;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v8, 0x1

    const/16 v9, 0x40

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "mSignatures"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/pm/Signature;

    move-object v0, v7

    check-cast v0, [Landroid/content/pm/Signature;

    move-object v4, v0

    .line 115
    .local v4, "mSignatures":[Landroid/content/pm/Signature;
    array-length v7, v4

    if-lez v7, :cond_0

    const/4 v7, 0x0

    aget-object v1, v4, v7

    .line 117
    .local v1, "apkSignature":Landroid/content/pm/Signature;
    :goto_0
    invoke-static {v1}, Lcom/tencent/tga/livesdk/uitl/SignUitl;->getCertificateSHA1Fingerprint(Landroid/content/pm/Signature;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 121
    .end local v1    # "apkSignature":Landroid/content/pm/Signature;
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v3    # "collectCertificatesMethod":Ljava/lang/reflect/Method;
    .end local v4    # "mSignatures":[Landroid/content/pm/Signature;
    .end local v5    # "packag":Ljava/lang/Object;
    .end local v6    # "packageParser":Ljava/lang/Object;
    :goto_1
    return-object v7

    .line 115
    .restart local v2    # "clazz":Ljava/lang/Class;
    .restart local v3    # "collectCertificatesMethod":Ljava/lang/reflect/Method;
    .restart local v4    # "mSignatures":[Landroid/content/pm/Signature;
    .restart local v5    # "packag":Ljava/lang/Object;
    .restart local v6    # "packageParser":Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 118
    .end local v2    # "clazz":Ljava/lang/Class;
    .end local v3    # "collectCertificatesMethod":Ljava/lang/reflect/Method;
    .end local v4    # "mSignatures":[Landroid/content/pm/Signature;
    .end local v5    # "packag":Ljava/lang/Object;
    .end local v6    # "packageParser":Ljava/lang/Object;
    :catch_0
    move-exception v7

    .line 121
    const-string v7, ""

    goto :goto_1
.end method

.method public static getCertificateSHA1Fingerprint(Landroid/content/pm/Signature;)Ljava/lang/String;
    .locals 11
    .param p0, "signatures"    # Landroid/content/pm/Signature;

    .prologue
    .line 149
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    .line 151
    .local v2, "cert":[B
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 153
    .local v7, "input":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 155
    .local v3, "cf":Ljava/security/cert/CertificateFactory;
    :try_start_0
    const-string v10, "X509"

    invoke-static {v10}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 160
    :goto_0
    const/4 v1, 0x0

    .line 162
    .local v1, "c":Ljava/security/cert/X509Certificate;
    :try_start_1
    invoke-virtual {v3, v7}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    :goto_1
    const/4 v6, 0x0

    .line 167
    .local v6, "hexString":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 170
    :try_start_2
    const-string v10, "SHA1"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 172
    .local v8, "md":Ljava/security/MessageDigest;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v9

    .line 174
    .local v9, "publicKey":[B
    invoke-static {v9}, Lcom/tencent/tga/livesdk/uitl/SignUitl;->byte2HexFormatted([B)Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v6

    .line 182
    .end local v8    # "md":Ljava/security/MessageDigest;
    .end local v9    # "publicKey":[B
    :cond_0
    :goto_2
    return-object v6

    .line 156
    .end local v1    # "c":Ljava/security/cert/X509Certificate;
    .end local v6    # "hexString":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 157
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 163
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v1    # "c":Ljava/security/cert/X509Certificate;
    :catch_1
    move-exception v4

    .line 164
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 175
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "hexString":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 176
    .local v5, "e1":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v5}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_2

    .line 177
    .end local v5    # "e1":Ljava/security/NoSuchAlgorithmException;
    :catch_3
    move-exception v4

    .line 178
    .local v4, "e":Ljava/security/cert/CertificateEncodingException;
    invoke-virtual {v4}, Ljava/security/cert/CertificateEncodingException;->printStackTrace()V

    goto :goto_2
.end method

.method private static getPackage(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "clazz"    # Ljava/lang/Class;
    .param p2, "instance"    # Ljava/lang/Object;
    .param p3, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 131
    const/4 v1, 0x0

    .line 132
    .local v1, "pkg":Ljava/lang/Object;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 133
    const-string v2, "parsePackage"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Ljava/io/File;

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 134
    .local v0, "method":Ljava/lang/reflect/Method;
    new-array v2, v7, [Ljava/lang/Object;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 140
    :goto_0
    return-object v1

    .line 136
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_0
    const-string v2, "parsePackage"

    new-array v3, v8, [Ljava/lang/Class;

    const-class v4, Ljava/io/File;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Landroid/util/DisplayMetrics;

    aput-object v4, v3, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v9

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 137
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    new-array v2, v8, [Ljava/lang/Object;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v5

    const/4 v3, 0x0

    aput-object v3, v2, v6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-virtual {v0, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method private static getParserObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .param p0, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-array v0, v3, [Ljava/lang/Class;

    .line 126
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    :goto_0
    return-object v0

    .line 126
    :cond_0
    new-array v0, v2, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    aput-object v1, v0, v3

    .line 127
    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static parseSignature([B)V
    .locals 8
    .param p0, "signature"    # [B

    .prologue
    .line 90
    :try_start_0
    const-string v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 91
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 92
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "pubKey":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "signNumber":Ljava/lang/String;
    const-class v5, Lcom/tencent/tga/livesdk/uitl/SignUitl;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pubKey:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-interface {v7}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-class v5, Lcom/tencent/tga/livesdk/uitl/SignUitl;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "signName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-class v5, Lcom/tencent/tga/livesdk/uitl/SignUitl;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pubKey:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-class v5, Lcom/tencent/tga/livesdk/uitl/SignUitl;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "signNumber:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-class v5, Lcom/tencent/tga/livesdk/uitl/SignUitl;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "subjectDN:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v7

    invoke-interface {v7}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "pubKey":Ljava/lang/String;
    .end local v4    # "signNumber":Ljava/lang/String;
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Ljava/security/cert/CertificateException;
    const-class v5, Lcom/tencent/tga/livesdk/uitl/SignUitl;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static showUninstallAPKSignatures(Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p0, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 31
    const-string v1, "android.content.pm.PackageParser"

    .line 37
    .local v1, "PATH_PackageParser":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 38
    .local v7, "pkgParserCls":Ljava/lang/Class;
    const/4 v14, 0x1

    new-array v12, v14, [Ljava/lang/Class;

    .line 39
    .local v12, "typeArgs":[Ljava/lang/Class;
    const/4 v14, 0x0

    const-class v15, Ljava/lang/String;

    aput-object v15, v12, v14

    .line 40
    invoke-virtual {v7, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 41
    .local v8, "pkgParserCt":Ljava/lang/reflect/Constructor;
    const/4 v14, 0x1

    new-array v13, v14, [Ljava/lang/Object;

    .line 42
    .local v13, "valueArgs":[Ljava/lang/Object;
    const/4 v14, 0x0

    aput-object p0, v13, v14

    .line 43
    invoke-virtual {v8, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 44
    .local v6, "pkgParser":Ljava/lang/Object;
    const-class v14, Lcom/tencent/tga/livesdk/uitl/SignUitl;

    invoke-virtual {v14}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "pkgParser:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 47
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v4}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 51
    const/4 v14, 0x4

    new-array v12, v14, [Ljava/lang/Class;

    .line 52
    const/4 v14, 0x0

    const-class v15, Ljava/io/File;

    aput-object v15, v12, v14

    .line 53
    const/4 v14, 0x1

    const-class v15, Ljava/lang/String;

    aput-object v15, v12, v14

    .line 54
    const/4 v14, 0x2

    const-class v15, Landroid/util/DisplayMetrics;

    aput-object v15, v12, v14

    .line 55
    const/4 v14, 0x3

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v12, v14

    .line 56
    const-string v14, "parsePackage"

    invoke-virtual {v7, v14, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 58
    .local v11, "pkgParser_parsePackageMtd":Ljava/lang/reflect/Method;
    const/4 v14, 0x4

    new-array v13, v14, [Ljava/lang/Object;

    .line 59
    const/4 v14, 0x0

    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v15, v13, v14

    .line 60
    const/4 v14, 0x1

    aput-object p0, v13, v14

    .line 61
    const/4 v14, 0x2

    aput-object v4, v13, v14

    .line 62
    const/4 v14, 0x3

    const/16 v15, 0x40

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    .line 63
    invoke-virtual {v11, v6, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 65
    .local v9, "pkgParserPkg":Ljava/lang/Object;
    const/4 v14, 0x2

    new-array v12, v14, [Ljava/lang/Class;

    .line 66
    const/4 v14, 0x0

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    aput-object v15, v12, v14

    .line 67
    const/4 v14, 0x1

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v12, v14

    .line 68
    const-string v14, "collectCertificates"

    invoke-virtual {v7, v14, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 70
    .local v10, "pkgParser_collectCertificatesMtd":Ljava/lang/reflect/Method;
    const/4 v14, 0x2

    new-array v13, v14, [Ljava/lang/Object;

    .line 71
    const/4 v14, 0x0

    aput-object v9, v13, v14

    .line 72
    const/4 v14, 0x1

    const/16 v15, 0x40

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    .line 73
    invoke-virtual {v10, v6, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v15, "mSignatures"

    invoke-virtual {v14, v15}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 76
    .local v5, "packageInfoFld":Ljava/lang/reflect/Field;
    invoke-virtual {v5, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/content/pm/Signature;

    move-object v0, v14

    check-cast v0, [Landroid/content/pm/Signature;

    move-object v3, v0

    .line 81
    .local v3, "info":[Landroid/content/pm/Signature;
    const/4 v14, 0x0

    aget-object v14, v3, v14

    invoke-static {v14}, Lcom/tencent/tga/livesdk/uitl/SignUitl;->getCertificateSHA1Fingerprint(Landroid/content/pm/Signature;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 85
    .end local v3    # "info":[Landroid/content/pm/Signature;
    .end local v4    # "metrics":Landroid/util/DisplayMetrics;
    .end local v5    # "packageInfoFld":Ljava/lang/reflect/Field;
    .end local v6    # "pkgParser":Ljava/lang/Object;
    .end local v7    # "pkgParserCls":Ljava/lang/Class;
    .end local v8    # "pkgParserCt":Ljava/lang/reflect/Constructor;
    .end local v9    # "pkgParserPkg":Ljava/lang/Object;
    .end local v10    # "pkgParser_collectCertificatesMtd":Ljava/lang/reflect/Method;
    .end local v11    # "pkgParser_parsePackageMtd":Ljava/lang/reflect/Method;
    .end local v12    # "typeArgs":[Ljava/lang/Class;
    .end local v13    # "valueArgs":[Ljava/lang/Object;
    :goto_0
    return-object v14

    .line 82
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 85
    const/4 v14, 0x0

    goto :goto_0
.end method
