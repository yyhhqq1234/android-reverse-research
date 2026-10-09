.class public Lcom/tencent/tp/TssJavaMethod;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/tencent/tp/ITssJavaMethod2;

.field public static runtime_sdk_version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tp/TssJavaMethod;->a:Lcom/tencent/tp/ITssJavaMethod2;

    const-string v0, "3.3.17(2018/03/07)-jar-version"

    sput-object v0, Lcom/tencent/tp/TssJavaMethod;->runtime_sdk_version:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/tp/TssJavaMethod;->b()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x10

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    new-instance v2, Ljava/lang/StringBuffer;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_0

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    aget-char v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    aget-byte v3, p0, v0

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

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

.method private static a()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-class v2, Lcom/tencent/tp/TssJavaMethod;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.tencent.tp.TssJavaMethod"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/tencent/tp/TssSdkRuntime;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/tencent/tp/TssSdkRuntime;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/files/tersafeupdate2.jar"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-ne v2, v0, :cond_0

    const-string v2, "3.3.17(2018/03/07)-jar-version"

    :try_start_0
    new-instance v2, Ljava/util/jar/JarFile;

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;Z)V

    invoke-static {v2}, Lcom/tencent/tp/TssJavaMethod;->a(Ljava/util/jar/JarFile;)Z

    move-result v4

    if-eq v4, v0, :cond_2

    const-string v0, "*#06#:!jar.ver"

    invoke-static {v0}, Lcom/tencent/tp/m;->a(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "version.txt"

    invoke-virtual {v2, v4}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    const/16 v5, 0x80

    new-array v5, v5, [B

    invoke-virtual {v4, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v5, v7, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "3.3.17(2018/03/07)-jar-version"

    invoke-virtual {v2, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_3

    sput-object v6, Lcom/tencent/tp/TssJavaMethod;->runtime_sdk_version:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tencent/tp/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private static a(Ljava/util/jar/JarFile;)Z
    .locals 11

    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v0, 0x1000

    :try_start_0
    new-array v7, v0, [B

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move v2, v5

    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "META-INF/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v0, v7}, Lcom/tencent/tp/TssJavaMethod;->a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v3

    if-nez v3, :cond_2

    move v2, v5

    :cond_1
    :goto_1
    return v2

    :cond_2
    if-nez v4, :cond_3

    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    const-string v4, "2BD6F965D7704D957A7AF1462EC17E5F"

    invoke-static {v0}, Lcom/tencent/tp/TssJavaMethod;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    :goto_2
    move-object v4, v3

    move v2, v0

    goto :goto_0

    :cond_3
    move v6, v5

    :goto_3
    array-length v0, v4

    if-ge v6, v0, :cond_8

    move v0, v5

    :goto_4
    array-length v9, v3

    if-ge v0, v9, :cond_7

    aget-object v9, v4, v6

    if-eqz v9, :cond_5

    aget-object v9, v4, v6

    aget-object v10, v3, v0

    invoke-virtual {v9, v10}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v0, v1

    :goto_5
    if-eqz v0, :cond_4

    array-length v0, v4

    array-length v9, v3
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    if-eq v0, v9, :cond_6

    :cond_4
    move v2, v5

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_3

    :catch_0
    move-exception v0

    move v2, v5

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move v2, v5

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    :cond_7
    move v0, v5

    goto :goto_5

    :cond_8
    move-object v3, v4

    move v0, v2

    goto :goto_2

    :cond_9
    move v0, v2

    goto :goto_2
.end method

.method private static a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_0
    const/4 v2, 0x0

    array-length v3, p2

    invoke-virtual {v1, p2, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private static b()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/tencent/tp/TssJavaMethod;->a:Lcom/tencent/tp/ITssJavaMethod2;

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/tencent/tp/TssJavaMethod;->a()Z

    move-result v0

    if-eq v0, v2, :cond_2

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tp/TssJavaMethod;->a:Lcom/tencent/tp/ITssJavaMethod2;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcom/tencent/tp/TssJavaMethod;->a:Lcom/tencent/tp/ITssJavaMethod2;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/tp/k;

    invoke-direct {v0}, Lcom/tencent/tp/k;-><init>()V

    sput-object v0, Lcom/tencent/tp/TssJavaMethod;->a:Lcom/tencent/tp/ITssJavaMethod2;

    :cond_1
    return-void

    :cond_2
    :try_start_1
    const-string v0, "com.tencent.up_tp.TssJavaMethodImp2"

    invoke-static {v0}, Lcom/tencent/tp/c;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tp/ITssJavaMethod2;

    sput-object v0, Lcom/tencent/tp/TssJavaMethod;->a:Lcom/tencent/tp/ITssJavaMethod2;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/tencent/tp/m;->c()I

    move-result v1

    if-ne v1, v2, :cond_0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*#06#:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/tp/m;->b(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "com.tencent.up_tp.TssJavaMethodImp2 not found"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public static initialize()V
    .locals 1

    sget-object v0, Lcom/tencent/tp/TssJavaMethod;->a:Lcom/tencent/tp/ITssJavaMethod2;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tp/TssJavaMethod;->a:Lcom/tencent/tp/ITssJavaMethod2;

    invoke-interface {v0}, Lcom/tencent/tp/ITssJavaMethod2;->initialize()V

    :cond_0
    return-void
.end method

.method public static invokeForceUpdateRootkitAppRequest()V
    .locals 1

    sget-object v0, Lcom/tencent/tp/TssJavaMethod;->a:Lcom/tencent/tp/ITssJavaMethod2;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tp/TssJavaMethod;->a:Lcom/tencent/tp/ITssJavaMethod2;

    invoke-interface {v0}, Lcom/tencent/tp/ITssJavaMethod2;->invokeForceUpdateRootkitAppRequest()V

    :cond_0
    return-void
.end method

.method public static invokeRootkitAppRequest()V
    .locals 1

    sget-object v0, Lcom/tencent/tp/TssJavaMethod;->a:Lcom/tencent/tp/ITssJavaMethod2;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tp/TssJavaMethod;->a:Lcom/tencent/tp/ITssJavaMethod2;

    invoke-interface {v0}, Lcom/tencent/tp/ITssJavaMethod2;->invokeRootkitAppRequest()V

    :cond_0
    return-void
.end method

.method public static invokeRootkitIsRunningTip()V
    .locals 1

    sget-object v0, Lcom/tencent/tp/TssJavaMethod;->a:Lcom/tencent/tp/ITssJavaMethod2;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tp/TssJavaMethod;->a:Lcom/tencent/tp/ITssJavaMethod2;

    invoke-interface {v0}, Lcom/tencent/tp/ITssJavaMethod2;->invokeRootkitIsRunningTip()V

    :cond_0
    return-void
.end method

.method public static scan()V
    .locals 1

    sget-object v0, Lcom/tencent/tp/TssJavaMethod;->a:Lcom/tencent/tp/ITssJavaMethod2;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tp/TssJavaMethod;->a:Lcom/tencent/tp/ITssJavaMethod2;

    invoke-interface {v0}, Lcom/tencent/tp/ITssJavaMethod2;->scan()V

    :cond_0
    return-void
.end method

.method public static sendCmd(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/tencent/tp/TssJavaMethod;->a:Lcom/tencent/tp/ITssJavaMethod2;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tp/TssJavaMethod;->a:Lcom/tencent/tp/ITssJavaMethod2;

    invoke-interface {v0, p0}, Lcom/tencent/tp/ITssJavaMethod2;->sendCmd(Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static sendCmdEx(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/tencent/tp/TssJavaMethod;->a:Lcom/tencent/tp/ITssJavaMethod2;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tp/TssJavaMethod;->a:Lcom/tencent/tp/ITssJavaMethod2;

    invoke-interface {v0, p0}, Lcom/tencent/tp/ITssJavaMethod2;->sendCmd(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static showMsgBoxEx()V
    .locals 1

    sget-object v0, Lcom/tencent/tp/TssJavaMethod;->a:Lcom/tencent/tp/ITssJavaMethod2;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/tp/TssJavaMethod;->a:Lcom/tencent/tp/ITssJavaMethod2;

    invoke-interface {v0}, Lcom/tencent/tp/ITssJavaMethod2;->showMsgBoxEx()V

    :cond_0
    return-void
.end method
