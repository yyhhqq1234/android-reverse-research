.class public Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final DEVICE_ID_KEY_NAME:Ljava/lang/String; = "deviceId_v1"

.field private static final DEVICE_ID_PREFIX:Ljava/lang/String; = "deviceId_"

.field private static final DEVICE_ID_VERSION:Ljava/lang/String; = "v1"

.field private static final SETTINGS_DEVICE_ID_KEY_NAME:Ljava/lang/String; = ".com.tencent.tpush.cache.deviceId_v1"

.field private static final SETTINGS_DEVICE_ID_PREFIX:Ljava/lang/String; = ".com.tencent.tpush.cache"

.field private static final SHAREPREFERENCE_FILE_NAME:Ljava/lang/String; = "device_id"

.field private static loadedTpnsSecuritySo:Z = false

.field public static tea:Lcom/tencent/android/tpush/service/channel/security/g; = null

.field public static final tpnsSecurityLibFullName:Ljava/lang/String; = "libtpnsSecurity.so"

.field private static final tpnsSecurityLibName:Ljava/lang/String; = "tpnsSecurity"


# instance fields
.field protected encKey:[B

.field protected inc:J

.field protected incRemote:J

.field protected iv:[B

.field protected key:[B

.field modulusStr:Ljava/lang/String;

.field protected random:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 27
    sput-boolean v3, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->loadedTpnsSecuritySo:Z

    .line 34
    :try_start_0
    const-string/jumbo v0, "tpnsSecurity"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->loadedTpnsSecuritySo:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->tea:Lcom/tencent/android/tpush/service/channel/security/g;

    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    const-string v1, "XGService"

    const-string v2, "can not load library,error:"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    sput-boolean v3, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->loadedTpnsSecuritySo:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->inc:J

    .line 440
    const-string v0, "C0EF17C0E492C4D366E236902188EF567990289AF267DDC48134C78F3D5632BACB469E1961DD7D61EFEC6B045A138C4DC2E53CC850E796B20664B8F8F58B96F81C9827F7F0C3A15CC4B5BDB5DA2AED5D70E804765F6025613522779A381F5EF3A20A9B043ECA001DB50F873E1CDF335AD382AC66BE3E419CA8F67009BFF3253F"

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->modulusStr:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public static checkTpnsSecurityLibSo(Landroid/content/Context;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 46
    sget-boolean v1, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->loadedTpnsSecuritySo:Z

    if-eqz v1, :cond_0

    .line 73
    :goto_0
    return v0

    .line 50
    :cond_0
    if-eqz p0, :cond_1

    .line 52
    const-string v1, ""

    .line 54
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lib"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "lib"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "libtpnsSecurity.so"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->loadedTpnsSecuritySo:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_1
    :goto_1
    sget-boolean v0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->loadedTpnsSecuritySo:Z

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    sput-boolean v4, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->loadedTpnsSecuritySo:Z

    .line 64
    const-string v2, "XGService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can not load library from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",error:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static native generateAESKey()[B
.end method

.method public static native generateIV(J)[B
.end method

.method public static generateLocalSocketServieName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 282
    if-eqz p0, :cond_0

    .line 284
    :try_start_0
    invoke-static {p0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->generateLocalSocketServieNameNative(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    const-string v1, "XGService"

    const-string v2, "generateLocalSocketServieName \u672a\u77e5\u9519\u8bef"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "generate local socket server name error"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native generateLocalSocketServieNameNative(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public static getBusinessDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 317
    if-nez p0, :cond_0

    .line 318
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "get device id error cause context is null"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_0
    invoke-static {p0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->getSettingsLocalDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_1

    .line 336
    :goto_0
    return-object v0

    .line 327
    :cond_1
    invoke-static {p0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->getPreferenceLocalDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_2

    .line 329
    invoke-static {p0, v0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->setSettingsLocalDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_2
    invoke-static {p0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->getBusinessDeviceIdNative(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 334
    invoke-static {p0, v0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->setPreferenceLocalDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    .line 335
    invoke-static {p0, v0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->setSettingsLocalDeviceId(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static native getBusinessDeviceIdNative(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public static getEncryptAPKSignature(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 407
    if-eqz p0, :cond_0

    .line 408
    invoke-static {p0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->getEncryptAPKSignatureNative(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 410
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "get encrypt apk signature error"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native getEncryptAPKSignatureNative(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method private static getPreferenceLocalDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 346
    const-string v1, "device_id"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 348
    const-string v2, "deviceId_v1"

    invoke-static {v2}, Lcom/tencent/android/tpush/encrypt/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-object v0

    .line 351
    :cond_1
    const-string v2, "deviceId_v1"

    invoke-static {v2}, Lcom/tencent/android/tpush/encrypt/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 353
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 356
    invoke-static {v1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-static {v1}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 360
    goto :goto_0
.end method

.method private static getSettingsLocalDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 380
    const-string v1, ".com.tencent.tpush.cache.deviceId_v1"

    invoke-static {p0, v1}, Lcom/tencent/android/tpush/service/e/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 381
    if-nez v1, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-object v0

    .line 384
    :cond_1
    invoke-static {v1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 385
    invoke-static {v1}, Lcom/tencent/android/tpush/service/e/h;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 388
    goto :goto_0
.end method

.method public static getTEA()Lcom/tencent/android/tpush/service/channel/security/g;
    .locals 2

    .prologue
    .line 481
    sget-object v0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->tea:Lcom/tencent/android/tpush/service/channel/security/g;

    if-nez v0, :cond_0

    .line 482
    new-instance v0, Lcom/tencent/android/tpush/service/channel/security/g;

    const-string v1, "0123456789abcdef"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/android/tpush/service/channel/security/g;-><init>([B)V

    sput-object v0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->tea:Lcom/tencent/android/tpush/service/channel/security/g;

    .line 484
    :cond_0
    sget-object v0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->tea:Lcom/tencent/android/tpush/service/channel/security/g;

    return-object v0
.end method

.method public static java_generateAESKey()[B
    .locals 2

    .prologue
    .line 417
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 418
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 419
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 420
    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public static java_generateIV(J)[B
    .locals 8

    .prologue
    .line 426
    const/16 v0, 0x10

    new-array v1, v0, [B

    .line 427
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 428
    mul-int/lit8 v2, v0, 0x4

    .line 429
    mul-int/lit8 v3, v0, 0x8

    shr-long v4, p0, v3

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v3, v4

    int-to-byte v3, v3

    .line 430
    aput-byte v3, v1, v2

    .line 431
    add-int/lit8 v4, v2, 0x1

    aput-byte v3, v1, v4

    .line 432
    add-int/lit8 v4, v2, 0x2

    aput-byte v3, v1, v4

    .line 433
    add-int/lit8 v2, v2, 0x3

    aput-byte v3, v1, v2

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    :cond_0
    return-object v1
.end method

.method public static java_oiSymmetryDecrypt2Byte([B)[B
    .locals 1

    .prologue
    .line 494
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->getTEA()Lcom/tencent/android/tpush/service/channel/security/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/android/tpush/service/channel/security/g;->b([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static java_oiSymmetryEncrypt2Byte(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 488
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->getTEA()Lcom/tencent/android/tpush/service/channel/security/g;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/android/tpush/service/channel/security/g;->a([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static oiSymmetryDecrypt2(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 247
    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 249
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 250
    :cond_0
    const-string v0, "XGService"

    const-string v1, ">> oiSymmetryDecrypt2 \u89e3\u5bc6\u5185\u5bb9\u8f93\u5165\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v0, ""

    .line 270
    :goto_0
    return-object v0

    .line 254
    :cond_1
    invoke-static {p0}, Lcom/tencent/android/tpush/service/channel/security/d;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 255
    if-eqz v0, :cond_2

    array-length v1, v0

    if-gtz v1, :cond_3

    .line 256
    :cond_2
    const-string v0, "XGService"

    const-string v1, ">> oiSymmetryDecrypt2 \u89e3\u7801\u5931\u8d25\uff0c\u8fd4\u56de\u7a7a\u5b57\u7b26\u4e32"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v0, "failed"

    goto :goto_0

    .line 260
    :cond_3
    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->oiSymmetryDecrypt2Byte([B)[B

    move-result-object v1

    .line 261
    if-eqz v1, :cond_4

    array-length v0, v1

    if-gtz v0, :cond_5

    .line 262
    :cond_4
    const-string v0, "XGService"

    const-string v1, ">> oiSymmetryDecrypt2 \u89e3\u5bc6\u5931\u8d25\uff0c\u8fd4\u56de\u7a7a\u5b57\u7b26\u4e32"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v0, "failed"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    :catch_0
    move-exception v0

    .line 267
    const-string v1, "XGService"

    const-string v2, ">> oiSymmetryEncrypt2 \u672a\u77e5\u9519\u8bef"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    const-string v0, "failed"

    goto :goto_0

    .line 270
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static native oiSymmetryDecrypt2Byte([B)[B
.end method

.method public static oiSymmetryEncrypt2(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 210
    const-string v0, ""

    .line 212
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    .line 213
    :cond_0
    const-string v0, "XGService"

    const-string v1, ">> oiSymmetryEncrypt2 \u52a0\u5bc6\u5185\u5bb9\u8f93\u5165\u4e3a\u7a7a"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v0, ""

    .line 237
    :cond_1
    :goto_0
    return-object v0

    .line 218
    :cond_2
    invoke-static {p0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->oiSymmetryEncrypt2Byte(Ljava/lang/String;)[B

    move-result-object v0

    .line 219
    if-nez v0, :cond_3

    .line 220
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> oiSymmetryEncrypt2 \u52a0\u5bc6\u5931\u8d25\uff0c\u8fd4\u56de\u7a7a\u5b57\u7b26\u4e32 inBuff:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string v0, "failed"

    goto :goto_0

    .line 227
    :cond_3
    invoke-static {v0}, Lcom/tencent/android/tpush/service/channel/security/e;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 228
    if-nez v0, :cond_1

    .line 229
    const-string v0, "XGService"

    const-string v1, ">> oiSymmetryEncrypt2 Base64\u7f16\u7801\u5931\u8d25\uff0c\u8fd4\u56de\u7a7a\u5b57\u7b26\u4e32"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v0, "failed"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    const-string v1, "XGService"

    const-string v2, ">> oiSymmetryEncrypt2 \u672a\u77e5\u9519\u8bef"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    const-string v0, "failed"

    goto :goto_0
.end method

.method public static native oiSymmetryEncrypt2Byte(Ljava/lang/String;)[B
.end method

.method private static setPreferenceLocalDeviceId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 365
    const-string v0, "device_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 367
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 368
    const-string v1, "deviceId_v1"

    invoke-static {v1}, Lcom/tencent/android/tpush/encrypt/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 370
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 371
    return-void
.end method

.method private static setSettingsLocalDeviceId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 393
    const-string v0, ".com.tencent.tpush.cache.deviceId_v1"

    invoke-static {p1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/tencent/android/tpush/service/e/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 395
    return-void
.end method

.method private static toCharsString([B)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 188
    .line 189
    array-length v2, p0

    .line 190
    mul-int/lit8 v0, v2, 0x2

    .line 191
    new-array v3, v0, [C

    .line 192
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    .line 193
    aget-byte v4, p0, v1

    .line 194
    shr-int/lit8 v0, v4, 0x4

    and-int/lit8 v0, v0, 0xf

    .line 195
    mul-int/lit8 v5, v1, 0x2

    if-lt v0, v6, :cond_0

    add-int/lit8 v0, v0, 0x61

    add-int/lit8 v0, v0, -0xa

    :goto_1
    int-to-char v0, v0

    aput-char v0, v3, v5

    .line 196
    and-int/lit8 v0, v4, 0xf

    .line 197
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    if-lt v0, v6, :cond_1

    add-int/lit8 v0, v0, 0x61

    add-int/lit8 v0, v0, -0xa

    :goto_2
    int-to-char v0, v0

    aput-char v0, v3, v4

    .line 192
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 195
    :cond_0
    add-int/lit8 v0, v0, 0x30

    goto :goto_1

    .line 197
    :cond_1
    add-int/lit8 v0, v0, 0x30

    goto :goto_2

    .line 199
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public checkRemoteInc(J)V
    .locals 3

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->incRemote:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "\u68c0\u67e5\u7684inc\u5c0f\u4e8e\u7b49\u4e8e\u5f53\u524d\u8bb0\u5f55\u7684\u8fdc\u7aefinc"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    iput-wide p1, p0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->incRemote:J

    .line 131
    return-void
.end method

.method public native decryptByAES([BJ)[B
.end method

.method public decryptData([B)[B
    .locals 2

    .prologue
    .line 162
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->random:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->decryptByAES([BJ)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 166
    :goto_0
    return-object p1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public native encryptByAES([BJ)[B
.end method

.method public native encryptByRSA([B)[B
.end method

.method public encryptData([B)[B
    .locals 2

    .prologue
    .line 172
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->random:J

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->encryptByAES([BJ)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 176
    :goto_0
    return-object p1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getEncKey()[B
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->encKey:[B

    return-object v0
.end method

.method public getInc()J
    .locals 4

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->inc:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->inc:J

    return-wide v0
.end method

.method public getRandom()J
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->random:J

    return-wide v0
.end method

.method public java_decryptByAES([BJ)[B
    .locals 4

    .prologue
    .line 469
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->key:[B

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 470
    const-string v1, "AES/CFB8/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 471
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v3, p0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->iv:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 472
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 473
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public java_encryptByAES([BJ)[B
    .locals 4

    .prologue
    .line 458
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->key:[B

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 459
    const-string v1, "AES/CFB8/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 460
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v3, p0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->iv:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 461
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 462
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public java_encryptByRSA([B)[B
    .locals 4

    .prologue
    const/16 v3, 0x10

    .line 443
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->modulusStr:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 444
    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "010001"

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 445
    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v2, v0, v1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 447
    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 448
    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    .line 449
    const-string v1, "RSA/ECB/PKCS1PADDING"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 450
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 451
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0
.end method

.method public needsUpdate()Z
    .locals 4

    .prologue
    .line 138
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->random:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 134
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->random:J

    .line 135
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 142
    iput-wide v4, p0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->random:J

    .line 143
    :goto_0
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->random:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 144
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->random:J

    goto :goto_0

    .line 147
    :cond_0
    iget-wide v0, p0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->random:J

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->generateIV(J)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->iv:[B

    .line 151
    :try_start_0
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->generateAESKey()[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->key:[B

    .line 153
    iget-object v0, p0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->key:[B

    invoke-virtual {p0, v0}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->encryptByRSA([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->encKey:[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_1
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    const-string v1, "XGService"

    const-string/jumbo v2, "update error:"

    invoke-static {v1, v2, v0}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
