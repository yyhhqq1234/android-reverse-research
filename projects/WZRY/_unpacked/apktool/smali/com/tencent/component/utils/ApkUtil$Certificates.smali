.class public Lcom/tencent/component/utils/ApkUtil$Certificates;
.super Ljava/lang/Object;
.source "ApkUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/utils/ApkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Certificates"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/utils/ApkUtil$Certificates$JarFileEnumerator;
    }
.end annotation


# static fields
.field private static final ANDROID_DEX_FILENAME:Ljava/lang/String; = "classes.dex"

.field private static final ANDROID_MANIFEST_FILENAME:Ljava/lang/String; = "AndroidManifest.xml"

.field private static final DEBUG_JAR:Z = false

.field public static final IMPORTANT_ENTRY:[Ljava/lang/String;

.field public static final MANIFEST_ENTRY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "Certificates"

.field private static mReadBuffer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<[B>;"
        }
    .end annotation
.end field

.field private static final mSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 234
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "AndroidManifest.xml"

    aput-object v1, v0, v2

    sput-object v0, Lcom/tencent/component/utils/ApkUtil$Certificates;->MANIFEST_ENTRY:[Ljava/lang/String;

    .line 237
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "AndroidManifest.xml"

    aput-object v1, v0, v2

    const-string v1, "classes.dex"

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/component/utils/ApkUtil$Certificates;->IMPORTANT_ENTRY:[Ljava/lang/String;

    .line 240
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/component/utils/ApkUtil$Certificates;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    return-void
.end method

.method public static collectCertificates(Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 1
    .param p0, "archivePath"    # Ljava/lang/String;

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/component/utils/ApkUtil$Certificates;->collectCertificates(Ljava/lang/String;Z)[Landroid/content/pm/Signature;

    move-result-object v0

    return-object v0
.end method

.method public static collectCertificates(Ljava/lang/String;Z)[Landroid/content/pm/Signature;
    .locals 1
    .param p0, "archivePath"    # Ljava/lang/String;
    .param p1, "importantOnly"    # Z

    .prologue
    .line 261
    if-eqz p1, :cond_0

    sget-object v0, Lcom/tencent/component/utils/ApkUtil$Certificates;->IMPORTANT_ENTRY:[Ljava/lang/String;

    :goto_0
    invoke-static {p0, v0}, Lcom/tencent/component/utils/ApkUtil$Certificates;->collectCertificates(Ljava/lang/String;[Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs collectCertificates(Ljava/lang/String;[Ljava/lang/String;)[Landroid/content/pm/Signature;
    .locals 19
    .param p0, "archivePath"    # Ljava/lang/String;
    .param p1, "entryNames"    # [Ljava/lang/String;

    .prologue
    .line 272
    invoke-static/range {p0 .. p0}, Lcom/tencent/component/utils/ApkUtil$Certificates;->isArchiveValid(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_1

    .line 273
    const/4 v15, 0x0

    .line 373
    :cond_0
    :goto_0
    return-object v15

    .line 276
    :cond_1
    const/4 v15, 0x0

    .line 279
    .local v15, "signatures":[Landroid/content/pm/Signature;
    const/4 v13, 0x0

    .line 280
    .local v13, "readBuffer":[B
    sget-object v17, Lcom/tencent/component/utils/ApkUtil$Certificates;->mSync:Ljava/lang/Object;

    monitor-enter v17

    .line 281
    :try_start_0
    sget-object v14, Lcom/tencent/component/utils/ApkUtil$Certificates;->mReadBuffer:Ljava/lang/ref/WeakReference;

    .line 282
    .local v14, "readBufferRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[B>;"
    if-eqz v14, :cond_2

    .line 283
    const/16 v16, 0x0

    sput-object v16, Lcom/tencent/component/utils/ApkUtil$Certificates;->mReadBuffer:Ljava/lang/ref/WeakReference;

    .line 284
    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, [B

    move-object v13, v0

    .line 286
    :cond_2
    if-nez v13, :cond_3

    .line 287
    const/16 v16, 0x2000

    move/from16 v0, v16

    new-array v13, v0, [B

    .line 288
    new-instance v14, Ljava/lang/ref/WeakReference;

    .end local v14    # "readBufferRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[B>;"
    invoke-direct {v14, v13}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 290
    .restart local v14    # "readBufferRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[B>;"
    :cond_3
    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :try_start_1
    new-instance v9, Ljava/util/jar/JarFile;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 295
    .local v9, "jarFile":Ljava/util/jar/JarFile;
    const/4 v3, 0x0

    .line 297
    .local v3, "certs":[Ljava/security/cert/Certificate;
    move-object/from16 v0, p1

    invoke-static {v9, v0}, Lcom/tencent/component/utils/ApkUtil$Certificates;->createJarEntries(Ljava/util/jar/JarFile;[Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v5

    .line 298
    .local v5, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v16

    if-eqz v16, :cond_b

    .line 299
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/jar/JarEntry;

    .line 300
    .local v10, "je":Ljava/util/jar/JarEntry;
    if-eqz v10, :cond_4

    .line 301
    invoke-virtual {v10}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v16

    if-nez v16, :cond_4

    .line 303
    invoke-virtual {v10}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v12

    .line 305
    .local v12, "name":Ljava/lang/String;
    const-string v16, "META-INF/"

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 308
    invoke-static {v9, v10, v13}, Lcom/tencent/component/utils/ApkUtil$Certificates;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v11

    .line 315
    .local v11, "localCerts":[Ljava/security/cert/Certificate;
    if-nez v11, :cond_5

    .line 316
    const-string v16, "Certificates"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "File "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " has no certificates at entry "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 318
    invoke-virtual {v10}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "; ignoring!"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 316
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {v9}, Ljava/util/jar/JarFile;->close()V
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 320
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 290
    .end local v3    # "certs":[Ljava/security/cert/Certificate;
    .end local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v9    # "jarFile":Ljava/util/jar/JarFile;
    .end local v10    # "je":Ljava/util/jar/JarEntry;
    .end local v11    # "localCerts":[Ljava/security/cert/Certificate;
    .end local v12    # "name":Ljava/lang/String;
    .end local v14    # "readBufferRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[B>;"
    :catchall_0
    move-exception v16

    :try_start_2
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v16

    .line 321
    .restart local v3    # "certs":[Ljava/security/cert/Certificate;
    .restart local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v9    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v10    # "je":Ljava/util/jar/JarEntry;
    .restart local v11    # "localCerts":[Ljava/security/cert/Certificate;
    .restart local v12    # "name":Ljava/lang/String;
    .restart local v14    # "readBufferRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[B>;"
    :cond_5
    if-nez v3, :cond_6

    .line 322
    move-object v3, v11

    goto :goto_1

    .line 325
    :cond_6
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    :try_start_3
    array-length v0, v3

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v7, v0, :cond_4

    .line 326
    const/4 v6, 0x0

    .line 327
    .local v6, "found":Z
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_3
    array-length v0, v11

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v8, v0, :cond_7

    .line 328
    aget-object v16, v3, v7

    if-eqz v16, :cond_9

    aget-object v16, v3, v7

    aget-object v17, v11, v8

    .line 329
    invoke-virtual/range {v16 .. v17}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 330
    const/4 v6, 0x1

    .line 334
    :cond_7
    if-eqz v6, :cond_8

    array-length v0, v3

    move/from16 v16, v0

    array-length v0, v11

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_a

    .line 335
    :cond_8
    const-string v16, "Certificates"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "File "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " has mismatched certificates at entry "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 337
    invoke-virtual {v10}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "; ignoring!"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 335
    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {v9}, Ljava/util/jar/JarFile;->close()V

    .line 339
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 327
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 325
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 344
    .end local v6    # "found":Z
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v10    # "je":Ljava/util/jar/JarEntry;
    .end local v11    # "localCerts":[Ljava/security/cert/Certificate;
    .end local v12    # "name":Ljava/lang/String;
    :cond_b
    invoke-virtual {v9}, Ljava/util/jar/JarFile;->close()V

    .line 346
    sget-object v17, Lcom/tencent/component/utils/ApkUtil$Certificates;->mSync:Ljava/lang/Object;

    monitor-enter v17
    :try_end_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 347
    :try_start_4
    sput-object v14, Lcom/tencent/component/utils/ApkUtil$Certificates;->mReadBuffer:Ljava/lang/ref/WeakReference;

    .line 348
    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 350
    if-eqz v3, :cond_c

    :try_start_5
    array-length v0, v3

    move/from16 v16, v0

    if-lez v16, :cond_c

    .line 351
    array-length v2, v3

    .line 352
    .local v2, "N":I
    array-length v0, v3

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v15, v0, [Landroid/content/pm/Signature;

    .line 353
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v2, :cond_0

    .line 354
    new-instance v16, Landroid/content/pm/Signature;

    aget-object v17, v3, v7

    .line 355
    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v16, v15, v7
    :try_end_5
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .line 353
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 348
    .end local v2    # "N":I
    .end local v7    # "i":I
    :catchall_1
    move-exception v16

    :try_start_6
    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v16
    :try_end_7
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    .line 362
    .end local v3    # "certs":[Ljava/security/cert/Certificate;
    .end local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v9    # "jarFile":Ljava/util/jar/JarFile;
    :catch_0
    move-exception v4

    .line 363
    .local v4, "e":Ljava/security/cert/CertificateEncodingException;
    const-string v16, "Certificates"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception reading "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 364
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 358
    .end local v4    # "e":Ljava/security/cert/CertificateEncodingException;
    .restart local v3    # "certs":[Ljava/security/cert/Certificate;
    .restart local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v9    # "jarFile":Ljava/util/jar/JarFile;
    :cond_c
    :try_start_8
    const-string v16, "Certificates"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "File "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " has no certificates; ignoring!"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    .line 360
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 365
    .end local v3    # "certs":[Ljava/security/cert/Certificate;
    .end local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v9    # "jarFile":Ljava/util/jar/JarFile;
    :catch_1
    move-exception v4

    .line 366
    .local v4, "e":Ljava/io/IOException;
    const-string v16, "Certificates"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception reading "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 367
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 368
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 369
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string v16, "Certificates"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Exception reading "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method private static varargs createJarEntries(Ljava/util/jar/JarFile;[Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .param p0, "jarFile"    # Ljava/util/jar/JarFile;
    .param p1, "entryNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/util/jar/JarEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 415
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 416
    :cond_0
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 418
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/tencent/component/utils/ApkUtil$Certificates$JarFileEnumerator;

    invoke-direct {v0, p0, p1}, Lcom/tencent/component/utils/ApkUtil$Certificates$JarFileEnumerator;-><init>(Ljava/util/jar/JarFile;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isArchiveValid(Ljava/lang/String;)Z
    .locals 3
    .param p0, "archivePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 407
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 411
    :cond_0
    :goto_0
    return v1

    .line 410
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 411
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .locals 7
    .param p0, "jarFile"    # Ljava/util/jar/JarFile;
    .param p1, "je"    # Ljava/util/jar/JarEntry;
    .param p2, "readBuffer"    # [B

    .prologue
    const/4 v3, 0x0

    .line 378
    const/4 v1, 0x0

    .line 382
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    .end local v1    # "is":Ljava/io/InputStream;
    .local v2, "is":Ljava/io/InputStream;
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    array-length v5, p2

    invoke-virtual {v2, p2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 386
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 395
    :cond_1
    if-eqz v2, :cond_2

    .line 396
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    move-object v1, v2

    .line 403
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :cond_3
    :goto_1
    return-object v3

    .line 398
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Certificates"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Close IS Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 400
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 399
    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 387
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .line 388
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v4, "Certificates"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 389
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 388
    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 395
    if-eqz v1, :cond_3

    .line 396
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 398
    :catch_2
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Certificates"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Close IS Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 400
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 399
    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 390
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_3
    :try_start_5
    const-string v4, "Certificates"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 392
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 391
    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 395
    if-eqz v1, :cond_3

    .line 396
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    .line 398
    :catch_4
    move-exception v0

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Certificates"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Close IS Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 400
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 399
    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 394
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 395
    :goto_4
    if-eqz v1, :cond_4

    .line 396
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 401
    :cond_4
    :goto_5
    throw v3

    .line 398
    :catch_5
    move-exception v0

    .line 399
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v4, "Certificates"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Close IS Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 400
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 399
    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 394
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto :goto_4

    .line 390
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_6
    move-exception v0

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto/16 :goto_3

    .line 387
    .end local v1    # "is":Ljava/io/InputStream;
    .restart local v2    # "is":Ljava/io/InputStream;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "is":Ljava/io/InputStream;
    .restart local v1    # "is":Ljava/io/InputStream;
    goto/16 :goto_2
.end method
