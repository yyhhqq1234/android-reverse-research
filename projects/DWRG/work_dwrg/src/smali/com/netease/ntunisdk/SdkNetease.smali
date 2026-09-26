.class public Lcom/netease/ntunisdk/SdkNetease;
.super Lcom/netease/ntunisdk/base/SdkBase;
.source "SdkNetease.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/StartupDialog$StartupFinishListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/SdkNetease$WebOrderCheckListener;,
        Lcom/netease/ntunisdk/SdkNetease$IndexCallback;,
        Lcom/netease/ntunisdk/SdkNetease$payCallback;,
        Lcom/netease/ntunisdk/SdkNetease$LoginCallback;,
        Lcom/netease/ntunisdk/SdkNetease$AnonymousLoginCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UniSDK netease"


# instance fields
.field private debugMode:Z

.field private initListener:Lcom/netease/ntunisdk/base/OnFinishInitListener;

.field private sdkInstance:Lcom/netease/mpay/MpayApi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkBase;-><init>(Landroid/content/Context;)V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/ntunisdk/SdkNetease;->debugMode:Z

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/ntunisdk/SdkNetease;->initListener:Lcom/netease/ntunisdk/base/OnFinishInitListener;

    .line 73
    return-void
.end method

.method static synthetic access$000(Lcom/netease/ntunisdk/SdkNetease;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/ntunisdk/SdkNetease;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/ntunisdk/SdkNetease;->setJFSauth(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/netease/ntunisdk/SdkNetease;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/ntunisdk/SdkNetease;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/SdkNetease;->codeScannerDone(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/netease/ntunisdk/SdkNetease;I)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/ntunisdk/SdkNetease;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkNetease;->webLoginByCodeScannerDone(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/netease/ntunisdk/SdkNetease;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/ntunisdk/SdkNetease;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/netease/ntunisdk/SdkNetease;->codeScannerDone(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/netease/ntunisdk/SdkNetease;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/ntunisdk/SdkNetease;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/netease/ntunisdk/base/OrderInfo;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/ntunisdk/SdkNetease;->notifyOrderFinish(Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/base/OrderInfo;)V

    return-void
.end method

.method static synthetic access$700([B)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # [B

    .prologue
    .line 64
    invoke-static {p0}, Lcom/netease/ntunisdk/SdkNetease;->stringMD5([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/netease/ntunisdk/SdkNetease;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/netease/ntunisdk/SdkNetease;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease;->myCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netease/ntunisdk/SdkNetease;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/netease/ntunisdk/SdkNetease;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease;->myCtx:Landroid/content/Context;

    return-object v0
.end method

.method private static byteArrayToHex([B)Ljava/lang/String;
    .locals 8
    .param p0, "byteArray"    # [B

    .prologue
    .line 1226
    const/16 v5, 0x10

    new-array v1, v5, [C

    fill-array-data v1, :array_0

    .line 1228
    .local v1, "hexDigits":[C
    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    new-array v4, v5, [C

    .line 1229
    .local v4, "resultCharArray":[C
    const/4 v2, 0x0

    .line 1230
    .local v2, "index":I
    array-length v6, p0

    const/4 v5, 0x0

    move v3, v2

    .end local v2    # "index":I
    .local v3, "index":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-byte v0, p0, v5

    .line 1231
    .local v0, "b":B
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    ushr-int/lit8 v7, v0, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v1, v7

    aput-char v7, v4, v3

    .line 1232
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    and-int/lit8 v7, v0, 0xf

    aget-char v7, v1, v7

    aput-char v7, v4, v2

    .line 1230
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1235
    .end local v0    # "b":B
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    return-object v5

    .line 1226
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

.method private disableLogin()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 362
    const-string v8, "ENABLE_EXLOGIN_NATIVE"

    invoke-virtual {p0, v8, v9}, Lcom/netease/ntunisdk/SdkNetease;->getPropInt(Ljava/lang/String;I)I

    move-result v4

    .line 363
    .local v4, "enableNative":I
    const-string v8, "ENABLE_EXLOGIN_GUEST_NEW"

    invoke-virtual {p0, v8, v9}, Lcom/netease/ntunisdk/SdkNetease;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    .line 364
    .local v2, "enableGuest":I
    const-string v8, "ENABLE_EXLOGIN_WEIBO_NEW"

    invoke-virtual {p0, v8, v9}, Lcom/netease/ntunisdk/SdkNetease;->getPropInt(Ljava/lang/String;I)I

    move-result v7

    .line 365
    .local v7, "enableWeibo":I
    const-string v8, "ENABLE_EXLOGIN_FACEBOOK"

    invoke-virtual {p0, v8, v9}, Lcom/netease/ntunisdk/SdkNetease;->getPropInt(Ljava/lang/String;I)I

    move-result v0

    .line 366
    .local v0, "enableFacebook":I
    const-string v8, "ENABLE_EXLOGIN_GOOGL"

    invoke-virtual {p0, v8, v9}, Lcom/netease/ntunisdk/SdkNetease;->getPropInt(Ljava/lang/String;I)I

    move-result v1

    .line 367
    .local v1, "enableGoogle":I
    const-string v8, "ENABLE_EXLOGIN_MOBILE_NEW"

    invoke-virtual {p0, v8, v9}, Lcom/netease/ntunisdk/SdkNetease;->getPropInt(Ljava/lang/String;I)I

    move-result v3

    .line 368
    .local v3, "enableMobile":I
    const-string v8, "ENABLE_EXLOGIN_WECHAT"

    invoke-virtual {p0, v8, v9}, Lcom/netease/ntunisdk/SdkNetease;->getPropInt(Ljava/lang/String;I)I

    move-result v6

    .line 369
    .local v6, "enableWechat":I
    const-string v8, "ENABLE_EXLOGIN_QQ"

    invoke-virtual {p0, v8, v9}, Lcom/netease/ntunisdk/SdkNetease;->getPropInt(Ljava/lang/String;I)I

    move-result v5

    .line 372
    .local v5, "enableQQ":I
    if-nez v4, :cond_0

    .line 373
    iget-object v8, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    invoke-virtual {v8, v9}, Lcom/netease/mpay/MpayApi;->disableLogin(I)V

    .line 375
    :cond_0
    if-nez v2, :cond_1

    .line 376
    iget-object v8, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/netease/mpay/MpayApi;->disableLogin(I)V

    .line 378
    :cond_1
    if-nez v7, :cond_2

    .line 379
    iget-object v8, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/netease/mpay/MpayApi;->disableLogin(I)V

    .line 381
    :cond_2
    if-nez v0, :cond_3

    .line 382
    iget-object v8, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/netease/mpay/MpayApi;->disableLogin(I)V

    .line 384
    :cond_3
    if-nez v1, :cond_4

    .line 385
    iget-object v8, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Lcom/netease/mpay/MpayApi;->disableLogin(I)V

    .line 387
    :cond_4
    if-nez v3, :cond_5

    .line 388
    iget-object v8, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Lcom/netease/mpay/MpayApi;->disableLogin(I)V

    .line 390
    :cond_5
    if-nez v6, :cond_6

    .line 391
    iget-object v8, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Lcom/netease/mpay/MpayApi;->disableLogin(I)V

    .line 393
    :cond_6
    if-nez v5, :cond_7

    .line 394
    iget-object v8, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Lcom/netease/mpay/MpayApi;->disableLogin(I)V

    .line 396
    :cond_7
    return-void
.end method

.method public static getChannelSts()Ljava/lang/String;
    .locals 1

    .prologue
    .line 612
    const-string v0, "netease"

    return-object v0
.end method

.method private getDeviceTicket(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    .line 982
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    new-instance v1, Lcom/netease/ntunisdk/SdkNetease$7;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/SdkNetease$7;-><init>(Lcom/netease/ntunisdk/SdkNetease;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Lcom/netease/mpay/MpayApi;->getDeviceTicket(Lcom/netease/mpay/DeviceTicketCallback;)V

    .line 1000
    return-void
.end method

.method private initLanguage()V
    .locals 4

    .prologue
    .line 399
    const-string v1, "LANGUAGE_CODE"

    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    .local v0, "languageCode":Ljava/lang/String;
    const-string v1, "UniSDK netease"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LANGUAGE_CODE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v1, "ZH_CN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 402
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/netease/mpay/MpayApi;->setLanguage(I)V

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    const-string v1, "ZH_HK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 404
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/netease/mpay/MpayApi;->setLanguage(I)V

    goto :goto_0

    .line 405
    :cond_2
    const-string v1, "ZH_TW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/netease/mpay/MpayApi;->setLanguage(I)V

    goto :goto_0
.end method

.method private notifyOrderFinish(Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 4
    .param p1, "uid"    # Ljava/lang/String;
    .param p2, "dataId"    # Ljava/lang/String;
    .param p3, "oi"    # Lcom/netease/ntunisdk/base/OrderInfo;

    .prologue
    .line 1261
    const-string v1, "UniSDK netease"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyOrderFinish, dataId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    const/4 v0, 0x2

    .line 1268
    .local v0, "status":I
    const/4 v1, 0x2

    invoke-virtual {p3}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderStatus()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/16 v1, 0xa

    invoke-virtual {p3}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderStatus()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 1269
    :cond_0
    const/4 v0, 0x0

    .line 1275
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    invoke-virtual {v1, p1, p2, v0}, Lcom/netease/mpay/MpayApi;->notifyOrderFinish(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1276
    return-void

    .line 1270
    :cond_2
    const/4 v1, 0x3

    invoke-virtual {p3}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderStatus()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 1271
    const/4 v0, 0x1

    goto :goto_0

    .line 1272
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p3}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderStatus()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1273
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private showRealnameDialog(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    new-instance v1, Lcom/netease/ntunisdk/SdkNetease$8;

    invoke-direct {v1, p0, p1}, Lcom/netease/ntunisdk/SdkNetease$8;-><init>(Lcom/netease/ntunisdk/SdkNetease;Lorg/json/JSONObject;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/MpayApi;->showRealnameDialog(Lcom/netease/mpay/SetRealnameCallback;Ljava/lang/Integer;)Z

    .line 1023
    return-void
.end method

.method private static stringMD5([B)Ljava/lang/String;
    .locals 4
    .param p0, "inputByteArray"    # [B

    .prologue
    .line 1216
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 1217
    .local v1, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 1218
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 1219
    .local v2, "resultByteArray":[B
    invoke-static {v2}, Lcom/netease/ntunisdk/SdkNetease;->byteArrayToHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1221
    .end local v1    # "messageDigest":Ljava/security/MessageDigest;
    .end local v2    # "resultByteArray":[B
    :goto_0
    return-object v3

    .line 1220
    :catch_0
    move-exception v0

    .line 1221
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v3, ""

    goto :goto_0
.end method


# virtual methods
.method public anonymousLogin()V
    .locals 7

    .prologue
    .line 491
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    const-string v2, "EXTERNAL_CHANNEL"

    invoke-interface {v1, v2}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "externalChannel":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNetease;->isLoginInst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 493
    const-string v1, "UniSDK netease"

    const-string v2, "miss anonymousLogin"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :goto_0
    return-void

    .line 497
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 498
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v0

    .line 504
    :goto_1
    const-string v1, "UniSDK netease"

    const-string v2, "try netease anonymous login, externalUid=%s, userName=%s, channel=%s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 505
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v5

    const-string v6, "UIN"

    invoke-interface {v5, v6}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 506
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v5

    const-string v6, "USERINFO_NAME"

    invoke-interface {v5, v6}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    .line 504
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v3, "UIN"

    invoke-interface {v2, v3}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v3

    const-string v4, "USERINFO_NAME"

    invoke-interface {v3, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/netease/mpay/MpayApi;->backgroundAuthenticateExternalUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 500
    :cond_1
    const-string v1, "UniSDK netease"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WTF!!!!!!!!!! game set EXTERNAL_CHANNEL to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public checkOrder(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 13
    .param p1, "order"    # Lcom/netease/ntunisdk/base/OrderInfo;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 513
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    if-nez v0, :cond_0

    .line 514
    const-string v0, "UniSDK netease"

    const-string v1, "SDK is uninitialized!"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :goto_0
    return-void

    .line 522
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNetease;->hasLogin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 523
    const-string v0, "UniSDK netease"

    const-string v1, "try checkOrder but has not login"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-virtual {p1, v12}, Lcom/netease/ntunisdk/base/OrderInfo;->setOrderStatus(I)V

    .line 525
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/SdkNetease;->checkOrderDone(Lcom/netease/ntunisdk/base/OrderInfo;)V

    .line 527
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNetease;->resetCommonProp()V

    .line 528
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkNetease;->loginDone(I)V

    goto :goto_0

    .line 532
    :cond_1
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductName()Ljava/lang/String;

    move-result-object v8

    .line 533
    .local v8, "productName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductCurrentPrice()F

    move-result v0

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getCount()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v7

    .line 536
    .local v7, "price":Ljava/lang/String;
    const-string v0, "anonymous_pay"

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderEtc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 537
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    const-string v1, "EXTERNAL_CHANNEL"

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 538
    .local v3, "externalChannel":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 539
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v3

    .line 544
    :goto_1
    const-string v0, "UniSDK netease"

    const-string v1, "try netease anonymous checkOrder, orderId=%s, externalUid=%s, externalChannel=%s, productName=%s, price=%s"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    .line 545
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v10

    .line 546
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v4

    const-string v5, "UIN"

    invoke-interface {v4, v5}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v11

    const/4 v4, 0x2

    aput-object v3, v2, v4

    aput-object v8, v2, v12

    const/4 v4, 0x4

    aput-object v7, v2, v4

    .line 544
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v2

    const-string v4, "UIN"

    invoke-interface {v2, v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 552
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/netease/ntunisdk/SdkNetease$payCallback;

    invoke-direct {v5, p0, p1}, Lcom/netease/ntunisdk/SdkNetease$payCallback;-><init>(Lcom/netease/ntunisdk/SdkNetease;Lcom/netease/ntunisdk/base/OrderInfo;)V

    .line 551
    invoke-virtual/range {v0 .. v5}, Lcom/netease/mpay/MpayApi;->externalUserPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/netease/mpay/PaymentCallback;)V

    goto/16 :goto_0

    .line 541
    :cond_2
    const-string v0, "UniSDK netease"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WTF!!!!!!!!!! game set EXTERNAL_CHANNEL to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 557
    .end local v3    # "externalChannel":Ljava/lang/String;
    :cond_3
    const-string v0, "UniSDK netease"

    const-string v1, "try netease checkOrder, orderId=%s"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const/4 v6, 0x1

    .line 564
    .local v6, "ACTIVITY_PAY":I
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNetease;->getLoginUid()Ljava/lang/String;

    move-result-object v9

    .line 565
    .local v9, "uid":Ljava/lang/String;
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/OrderInfo;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v4, Lcom/netease/ntunisdk/SdkNetease$payCallback;

    invoke-direct {v4, p0, p1}, Lcom/netease/ntunisdk/SdkNetease$payCallback;-><init>(Lcom/netease/ntunisdk/SdkNetease;Lcom/netease/ntunisdk/base/OrderInfo;)V

    invoke-virtual {v0, v1, v9, v2, v4}, Lcom/netease/mpay/MpayApi;->pay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/netease/mpay/PaymentCallback;)V

    goto/16 :goto_0
.end method

.method public exit()V
    .locals 5

    .prologue
    .line 571
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    invoke-virtual {v1}, Lcom/netease/mpay/MpayApi;->unregistEnterGame()V

    .line 572
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease;->myCtx:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 573
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    const-string v1, "UniSDK netease"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "netease exit current thread:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-super {p0}, Lcom/netease/ntunisdk/base/SdkBase;->exit()V

    .line 579
    :cond_0
    return-void
.end method

.method public extendFunc(Ljava/lang/String;)V
    .locals 6
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 965
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 967
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v3, "methodId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 968
    .local v1, "method":Ljava/lang/String;
    const-string v3, "UniSDK netease"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extendFunc:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    const-string v3, "getDeviceTicket"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 970
    invoke-direct {p0, v2}, Lcom/netease/ntunisdk/SdkNetease;->getDeviceTicket(Lorg/json/JSONObject;)V

    .line 979
    .end local v1    # "method":Ljava/lang/String;
    .end local v2    # "obj":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 971
    .restart local v1    # "method":Ljava/lang/String;
    .restart local v2    # "obj":Lorg/json/JSONObject;
    :cond_1
    const-string v3, "quickAuthenticateUser"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 972
    iget-object v3, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/netease/mpay/MpayApi;->quickAuthenticateUser(Ljava/lang/Integer;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 976
    .end local v1    # "method":Ljava/lang/String;
    .end local v2    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 977
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "UniSDK netease"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extendFunc JSONException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 973
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "method":Ljava/lang/String;
    .restart local v2    # "obj":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    const-string v3, "showRealnameDialog"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 974
    invoke-direct {p0, v2}, Lcom/netease/ntunisdk/SdkNetease;->showRealnameDialog(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public finishListener()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease;->initListener:Lcom/netease/ntunisdk/base/OnFinishInitListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease;->initListener:Lcom/netease/ntunisdk/base/OnFinishInitListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease;->initListener:Lcom/netease/ntunisdk/base/OnFinishInitListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

    goto :goto_0
.end method

.method public getAuthType()I
    .locals 10

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 684
    iget-object v7, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    if-nez v7, :cond_1

    .line 685
    const-string v3, "UniSDK netease"

    const-string v4, "SDK is uninitialized!"

    invoke-static {v3, v4}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    :cond_0
    :goto_0
    return v2

    .line 689
    :cond_1
    iget-object v7, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    invoke-virtual {v7}, Lcom/netease/mpay/MpayApi;->getAuthenticatedUser()Lcom/netease/mpay/User;

    move-result-object v1

    .line 690
    .local v1, "user":Lcom/netease/mpay/User;
    if-eqz v1, :cond_0

    .line 693
    iget v0, v1, Lcom/netease/mpay/User;->type:I

    .line 694
    .local v0, "type":I
    const-string v7, "UniSDK netease"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getAuthType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    if-ne v0, v3, :cond_2

    move v2, v3

    .line 696
    goto :goto_0

    .line 697
    :cond_2
    if-ne v0, v4, :cond_3

    move v2, v4

    .line 698
    goto :goto_0

    .line 699
    :cond_3
    if-ne v0, v5, :cond_4

    move v2, v5

    .line 700
    goto :goto_0

    .line 701
    :cond_4
    if-ne v0, v6, :cond_5

    move v2, v6

    .line 702
    goto :goto_0

    .line 703
    :cond_5
    const/4 v3, 0x5

    if-ne v0, v3, :cond_6

    .line 704
    const/4 v2, 0x5

    goto :goto_0

    .line 705
    :cond_6
    const/4 v3, 0x7

    if-ne v0, v3, :cond_7

    .line 706
    const/4 v2, 0x6

    goto :goto_0

    .line 707
    :cond_7
    const/16 v3, 0x9

    if-ne v0, v3, :cond_8

    .line 708
    const/16 v2, 0x8

    goto :goto_0

    .line 709
    :cond_8
    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    .line 710
    const/4 v2, 0x7

    goto :goto_0
.end method

.method public getAuthTypeName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 718
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    if-nez v2, :cond_0

    .line 719
    const-string v2, "UniSDK netease"

    const-string v3, "SDK is uninitialized!"

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v2, "unlogin"

    .line 746
    :goto_0
    return-object v2

    .line 723
    :cond_0
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    invoke-virtual {v2}, Lcom/netease/mpay/MpayApi;->getAuthenticatedUser()Lcom/netease/mpay/User;

    move-result-object v1

    .line 724
    .local v1, "user":Lcom/netease/mpay/User;
    if-nez v1, :cond_1

    .line 725
    const-string v2, "unlogin"

    goto :goto_0

    .line 727
    :cond_1
    iget v0, v1, Lcom/netease/mpay/User;->type:I

    .line 728
    .local v0, "type":I
    const-string v2, "UniSDK netease"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAuthType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 730
    const-string v2, "native"

    goto :goto_0

    .line 731
    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 732
    const-string v2, "guest"

    goto :goto_0

    .line 733
    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 734
    const-string v2, "weibo"

    goto :goto_0

    .line 735
    :cond_4
    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    .line 736
    const-string v2, "facebook"

    goto :goto_0

    .line 737
    :cond_5
    const/4 v2, 0x5

    if-ne v0, v2, :cond_6

    .line 738
    const-string v2, "google"

    goto :goto_0

    .line 739
    :cond_6
    const/4 v2, 0x7

    if-ne v0, v2, :cond_7

    .line 740
    const-string v2, "mobile"

    goto :goto_0

    .line 741
    :cond_7
    const/16 v2, 0x9

    if-ne v0, v2, :cond_8

    .line 742
    const-string v2, "wechat"

    goto :goto_0

    .line 743
    :cond_8
    const/16 v2, 0xa

    if-ne v0, v2, :cond_9

    .line 744
    const-string v2, "qq"

    goto :goto_0

    .line 746
    :cond_9
    const-string v2, "unlogin"

    goto :goto_0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 608
    invoke-static {}, Lcom/netease/ntunisdk/SdkNetease;->getChannelSts()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    if-nez v0, :cond_0

    .line 433
    const-string v0, "UniSDK netease"

    const-string v1, "SDK is uninitialized!"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v0, ""

    .line 440
    :goto_0
    return-object v0

    .line 437
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNetease;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    const-string v0, "DEVICE_ID"

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 440
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getLoginSession()Ljava/lang/String;
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    if-nez v0, :cond_0

    .line 419
    const-string v0, "UniSDK netease"

    const-string v1, "SDK is uninitialized!"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v0, "not_login"

    .line 426
    :goto_0
    return-object v0

    .line 423
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNetease;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    const-string v0, "SESSION"

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 426
    :cond_1
    const-string v0, "not_login"

    goto :goto_0
.end method

.method public getLoginUid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    if-nez v0, :cond_0

    .line 476
    const-string v0, "UniSDK netease"

    const-string v1, "SDK is uninitialized!"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v0, ""

    .line 483
    :goto_0
    return-object v0

    .line 480
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNetease;->hasLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 481
    const-string v0, "UIN"

    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 483
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 752
    invoke-static {}, Lcom/netease/mpay/MpayApi;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUniSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 757
    const-string v0, "2.14.1"

    return-object v0
.end method

.method public guestBind()V
    .locals 2

    .prologue
    .line 674
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    if-nez v0, :cond_0

    .line 675
    const-string v0, "UniSDK netease"

    const-string v1, "SDK is uninitialized!"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    :goto_0
    return-void

    .line 679
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    invoke-virtual {v0}, Lcom/netease/mpay/MpayApi;->bindGuestUser()Z

    goto :goto_0
.end method

.method public hasLogin()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 663
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    if-nez v2, :cond_1

    .line 664
    const-string v2, "UniSDK netease"

    const-string v3, "SDK is uninitialized!"

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    :cond_0
    :goto_0
    return v1

    .line 668
    :cond_1
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    invoke-virtual {v2}, Lcom/netease/mpay/MpayApi;->getAuthenticatedUser()Lcom/netease/mpay/User;

    move-result-object v0

    .line 669
    .local v0, "user":Lcom/netease/mpay/User;
    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/netease/ntunisdk/base/SdkBase;->hasLogin()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hasNotification()Z
    .locals 4

    .prologue
    .line 655
    const-string v1, "UniSDK netease"

    const-string v2, "call hasNotification"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    invoke-virtual {v1}, Lcom/netease/mpay/MpayApi;->hasNotification()Z

    move-result v0

    .line 657
    .local v0, "rlt":Z
    const-string v1, "UniSDK netease"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasNotification:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    return v0
.end method

.method public init(Lcom/netease/ntunisdk/base/OnFinishInitListener;)V
    .locals 25
    .param p1, "initListener"    # Lcom/netease/ntunisdk/base/OnFinishInitListener;

    .prologue
    .line 219
    const-string v2, "APP_KEY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "APPID"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "unisdk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "APPID"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "-dm0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 220
    const-string v2, "UniSDK netease"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "do not set APP_KEY in netease_data, "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "APP_KEY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/netease/ntunisdk/SdkNetease;->hasInit:Z

    .line 224
    :cond_0
    const-string v2, "UniSDK netease"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "try netease init current thread:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " debugMode:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/netease/ntunisdk/SdkNetease;->debugMode:Z

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v2, "FEATURE_HAS_MANAGER"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/netease/ntunisdk/SdkNetease;->setPropInt(Ljava/lang/String;I)V

    .line 228
    const-string v2, "FEATURE_HAS_GUEST"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/netease/ntunisdk/SdkNetease;->setPropInt(Ljava/lang/String;I)V

    .line 229
    const-string v2, "FEATURE_HAS_GUEST_BIND"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/netease/ntunisdk/SdkNetease;->setPropInt(Ljava/lang/String;I)V

    .line 230
    const-string v2, "FEATURE_EXIT_VIEW"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/netease/ntunisdk/SdkNetease;->setPropInt(Ljava/lang/String;I)V

    .line 231
    const-string v2, "FEATURE_HAS_SHARE"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/netease/ntunisdk/SdkNetease;->setPropInt(Ljava/lang/String;I)V

    .line 232
    const-string v2, "FEATURE_HAS_FRIEND"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/netease/ntunisdk/SdkNetease;->setPropInt(Ljava/lang/String;I)V

    .line 233
    const-string v2, "FEATURE_HAS_CONVERSATION"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/netease/ntunisdk/SdkNetease;->setPropInt(Ljava/lang/String;I)V

    .line 234
    const-string v2, "FEATURE_HAS_VERIFYMOBILE"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/netease/ntunisdk/SdkNetease;->setPropInt(Ljava/lang/String;I)V

    .line 236
    new-instance v8, Lcom/netease/mpay/MpayConfig;

    invoke-direct {v8}, Lcom/netease/mpay/MpayConfig;-><init>()V

    .line 237
    .local v8, "exConfig":Lcom/netease/mpay/MpayConfig;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/netease/ntunisdk/SdkNetease;->debugMode:Z

    invoke-virtual {v8, v2}, Lcom/netease/mpay/MpayConfig;->setDebugMode(Z)V

    .line 238
    const-string v2, "ENABLE_TV"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/netease/ntunisdk/SdkNetease;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v8, v2}, Lcom/netease/mpay/MpayConfig;->setTVMode(Z)V

    .line 239
    const-string v2, "SKIN_TYPE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 240
    .local v20, "skinType":Ljava/lang/String;
    const-string v2, "UniSDK netease"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SKIN_TYPE"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 242
    const-string v2, "SKIN_BLACK"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 243
    const-string v2, "mpay-black.skin"

    invoke-virtual {v8, v2}, Lcom/netease/mpay/MpayConfig;->setSkin(Ljava/lang/String;)V

    .line 256
    :cond_1
    :goto_1
    const-string v2, "SCR_ORIENTATION"

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/netease/ntunisdk/SdkNetease;->getPropInt(Ljava/lang/String;I)I

    move-result v19

    .line 257
    .local v19, "scr":I
    const-string v2, "UniSDK netease"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ConstProp.SCR_ORIENTATION:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const/4 v2, 0x2

    move/from16 v0, v19

    if-ne v0, v2, :cond_7

    .line 259
    const/4 v2, 0x2

    invoke-virtual {v8, v2}, Lcom/netease/mpay/MpayConfig;->setScreenOrientation(I)V

    .line 272
    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNetease;->myCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/ntunisdk/SdkNetease;->myCtx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x80

    invoke-virtual {v2, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 273
    .local v9, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v9, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "netease_mpay_remove_permission_list"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 274
    .local v18, "removePermissionList":Ljava/lang/String;
    const-string v2, "UniSDK netease"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removePermissionList:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 276
    const-string v2, "-"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 277
    .local v12, "list":[Ljava/lang/String;
    array-length v3, v12

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_b

    aget-object v16, v12, v2

    .line 278
    .local v16, "permission":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/netease/mpay/MpayConfig;->removePermission(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 238
    .end local v9    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "list":[Ljava/lang/String;
    .end local v16    # "permission":Ljava/lang/String;
    .end local v18    # "removePermissionList":Ljava/lang/String;
    .end local v19    # "scr":I
    .end local v20    # "skinType":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 244
    .restart local v20    # "skinType":Ljava/lang/String;
    :cond_3
    const-string v2, "SKIN_DEFAULT"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 245
    const-string v2, "mpay-white.skin"

    invoke-virtual {v8, v2}, Lcom/netease/mpay/MpayConfig;->setSkin(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 246
    :cond_4
    const-string v2, "SKIN_CHINESE_WHITE"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 247
    const-string v2, "mpay-chinese-white.skin"

    invoke-virtual {v8, v2}, Lcom/netease/mpay/MpayConfig;->setSkin(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 248
    :cond_5
    const-string v2, "SKIN_CHINESE_BLACK"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 249
    const-string v2, "mpay-chinese-black.skin"

    invoke-virtual {v8, v2}, Lcom/netease/mpay/MpayConfig;->setSkin(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 251
    :cond_6
    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Lcom/netease/mpay/MpayConfig;->setSkin(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 260
    .restart local v19    # "scr":I
    :cond_7
    const/4 v2, 0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_8

    .line 261
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Lcom/netease/mpay/MpayConfig;->setScreenOrientation(I)V

    goto/16 :goto_2

    .line 262
    :cond_8
    const/4 v2, 0x3

    move/from16 v0, v19

    if-ne v0, v2, :cond_9

    .line 263
    const/4 v2, 0x4

    invoke-virtual {v8, v2}, Lcom/netease/mpay/MpayConfig;->setScreenOrientation(I)V

    goto/16 :goto_2

    .line 264
    :cond_9
    const/4 v2, 0x5

    move/from16 v0, v19

    if-ne v0, v2, :cond_a

    .line 265
    const/4 v2, 0x3

    invoke-virtual {v8, v2}, Lcom/netease/mpay/MpayConfig;->setScreenOrientation(I)V

    goto/16 :goto_2

    .line 267
    :cond_a
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Lcom/netease/mpay/MpayConfig;->setScreenOrientation(I)V

    goto/16 :goto_2

    .line 281
    :catch_0
    move-exception v10

    .line 282
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "UniSDK netease"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get remove permission list exception:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_b
    const-string v2, "WELCOME_WINDOW_TYPE"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/netease/ntunisdk/SdkNetease;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/netease/mpay/MpayConfig;->setWelcomeWindow(I)V

    .line 289
    const-string v2, "APPID"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 290
    .local v4, "gameId":Ljava/lang/String;
    const-string v5, "Mpay_Product_Environment"

    .line 292
    .local v5, "environment":Ljava/lang/String;
    new-instance v2, Lcom/netease/mpay/MpayApi;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/netease/ntunisdk/SdkNetease;->myCtx:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/SdkNetease;->getUdid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/netease/ntunisdk/SdkNetease;->getAppChannel()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v2 .. v8}, Lcom/netease/mpay/MpayApi;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/netease/mpay/MpayConfig;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    .line 295
    const-string v2, "DEVICE_ID"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/netease/ntunisdk/SdkNetease;->setPropStr(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    if-eqz p1, :cond_c

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    if-nez v2, :cond_d

    .line 299
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/netease/ntunisdk/SdkNetease;->hasInit:Z

    .line 359
    :cond_c
    :goto_4
    return-void

    .line 302
    :cond_d
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 303
    .local v21, "supportOpList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "EXTERNAL_OP_LIST"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 304
    .local v14, "opList":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 305
    const-string v2, "UniSDK netease"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "opList:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v2, ","

    invoke-virtual {v14, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .line 307
    .local v15, "opes":[Ljava/lang/String;
    array-length v3, v15

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_e

    aget-object v13, v15, v2

    .line 308
    .local v13, "op":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 311
    .end local v13    # "op":Ljava/lang/String;
    .end local v15    # "opes":[Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    new-instance v3, Lcom/netease/ntunisdk/SdkNetease$LoginCallback;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6}, Lcom/netease/ntunisdk/SdkNetease$LoginCallback;-><init>(Lcom/netease/ntunisdk/SdkNetease;Lcom/netease/ntunisdk/SdkNetease$1;)V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v3}, Lcom/netease/mpay/MpayApi;->registEnterGame(Ljava/util/ArrayList;Lcom/netease/mpay/AuthenticationCallback;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    new-instance v3, Lcom/netease/ntunisdk/SdkNetease$LoginCallback;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6}, Lcom/netease/ntunisdk/SdkNetease$LoginCallback;-><init>(Lcom/netease/ntunisdk/SdkNetease;Lcom/netease/ntunisdk/SdkNetease$1;)V

    invoke-virtual {v2, v3}, Lcom/netease/mpay/MpayApi;->setAuthenticationCallback(Lcom/netease/mpay/AuthenticationCallback;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    new-instance v3, Lcom/netease/ntunisdk/SdkNetease$AnonymousLoginCallback;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v6}, Lcom/netease/ntunisdk/SdkNetease$AnonymousLoginCallback;-><init>(Lcom/netease/ntunisdk/SdkNetease;Lcom/netease/ntunisdk/SdkNetease$1;)V

    invoke-virtual {v2, v3}, Lcom/netease/mpay/MpayApi;->setBackgroundAuthenticationCallback(Lcom/netease/mpay/BackgroundAuthenticationCallback;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    const-string v3, "WEIBO_SSO_APP_KEY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "WEIBO_SSO_URL"

    const-string v7, "http://www.sina.com"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lcom/netease/mpay/MpayApi;->enableSinaWeiboSSO(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 323
    .local v11, "keys":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "SHARE_YIXIN_API"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 324
    .local v24, "yinxinApi":Ljava/lang/String;
    const-string v2, "SHARE_WEIXIN_API"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 325
    .local v23, "weixinApi":Ljava/lang/String;
    const-string v2, "UniSDK netease"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "weixinApi:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v2, "SHARE_WEIBO_API"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 327
    .local v22, "weiboApi":Ljava/lang/String;
    const-string v2, "SHARE_QQ_API"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 328
    .local v17, "qqApi":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 329
    const-string v2, "yixin"

    move-object/from16 v0, v24

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    :cond_f
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 332
    const-string v2, "weixin"

    move-object/from16 v0, v23

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v2, "UniSDK netease"

    const-string v3, "sdkInstance.enableWeixinSSO"

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/netease/mpay/MpayApi;->enableWeixinSSO(Ljava/lang/String;)V

    .line 336
    :cond_10
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 337
    const-string v2, "weibo"

    move-object/from16 v0, v22

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_11
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 340
    const-string v2, "qq"

    move-object/from16 v0, v17

    invoke-virtual {v11, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v2, "UniSDK netease"

    const-string v3, "sdkInstance.enableQQSSO"

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/netease/mpay/MpayApi;->enableQQSSO(Ljava/lang/String;)V

    .line 344
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    invoke-virtual {v2, v11}, Lcom/netease/mpay/MpayApi;->initThirdApiKeys(Ljava/util/HashMap;)V

    .line 347
    invoke-direct/range {p0 .. p0}, Lcom/netease/ntunisdk/SdkNetease;->disableLogin()V

    .line 349
    invoke-direct/range {p0 .. p0}, Lcom/netease/ntunisdk/SdkNetease;->initLanguage()V

    .line 351
    const-string v2, "SPLASH"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/netease/ntunisdk/SdkNetease;->getPropInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    .line 352
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/netease/ntunisdk/SdkNetease;->initListener:Lcom/netease/ntunisdk/base/OnFinishInitListener;

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/netease/ntunisdk/SdkNetease;->myCtx:Landroid/content/Context;

    const-string v3, "SPLASH_COLOR"

    const/4 v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/netease/ntunisdk/SdkNetease;->getPropInt(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-static {v2, v0, v3}, Lcom/netease/ntunisdk/base/StartupDialog;->popStartup(Landroid/content/Context;Lcom/netease/ntunisdk/base/StartupDialog$StartupFinishListener;I)V

    goto/16 :goto_4

    .line 355
    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/netease/ntunisdk/base/OnFinishInitListener;->finishInit(I)V

    goto/16 :goto_4
.end method

.method public isDarenUpdated()V
    .locals 4

    .prologue
    .line 643
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    if-nez v1, :cond_0

    .line 644
    const-string v1, "UniSDK netease"

    const-string v2, "SDK is uninitialized!"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :goto_0
    return-void

    .line 648
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    invoke-virtual {v1}, Lcom/netease/mpay/MpayApi;->hasNotification()Z

    move-result v0

    .line 649
    .local v0, "rlt":Z
    const-string v1, "UniSDK netease"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasNotification:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkNetease;->isDarenUpdatedFinished(Z)V

    goto :goto_0
.end method

.method public login()V
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    if-nez v0, :cond_0

    .line 584
    const-string v0, "UniSDK netease"

    const-string v1, "SDK is uninitialized!"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :goto_0
    return-void

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netease/mpay/MpayApi;->authenticateUser(Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public logout()V
    .locals 0

    .prologue
    .line 604
    return-void
.end method

.method public openExitView()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 762
    const-string v2, "UniSDK netease"

    const-string v3, "call openExitView"

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    if-nez v2, :cond_0

    .line 764
    const-string v2, "UniSDK netease"

    const-string v3, "SDK is uninitialized!"

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :goto_0
    return v1

    .line 768
    :cond_0
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    new-instance v3, Lcom/netease/ntunisdk/SdkNetease$1;

    invoke-direct {v3, p0}, Lcom/netease/ntunisdk/SdkNetease$1;-><init>(Lcom/netease/ntunisdk/SdkNetease;)V

    invoke-virtual {v2, v3}, Lcom/netease/mpay/MpayApi;->exitGame(Lcom/netease/mpay/ExitCallback;)Z

    move-result v0

    .line 780
    .local v0, "succ":Z
    if-nez v0, :cond_1

    .line 781
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNetease;->openExitViewFailed()V

    goto :goto_0

    .line 785
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public openManager()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    if-nez v0, :cond_0

    .line 594
    const-string v0, "UniSDK netease"

    const-string v1, "SDK is uninitialized!"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :goto_0
    return-void

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/mpay/MpayApi;->showUserDialog(Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public prePay()V
    .locals 3

    .prologue
    .line 790
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    if-nez v0, :cond_1

    .line 791
    const-string v0, "UniSDK netease"

    const-string v1, "SDK is uninitialized!"

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 795
    :cond_1
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    invoke-virtual {v0}, Lcom/netease/mpay/MpayApi;->prepayNeteaseCoin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease;->myCtx:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 797
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease;->myCtx:Landroid/content/Context;

    const-string v1, "\u4f7f\u7528\u7f51\u6613\u901a\u884c\u8bc1\u767b\u5f55\u7684\u73a9\u5bb6\u624d\u80fd\u591f\u4f7f\u7528\u5e73\u53f0\u5e01\u5145\u503c\u529f\u80fd"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public presentQRCodeScanner()V
    .locals 8

    .prologue
    .line 806
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 807
    .local v3, "sdkData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "jf_game_id"

    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v5

    const-string v6, "JF_GAMEID"

    invoke-interface {v5, v6}, Lcom/netease/ntunisdk/base/GamerInterface;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/netease/ntunisdk/base/GamerInterface;->getChannel()Ljava/lang/String;

    move-result-object v1

    .line 811
    .local v1, "payChannel":Ljava/lang/String;
    invoke-static {}, Lcom/netease/ntunisdk/base/OrderInfo;->getProductList()Ljava/util/Hashtable;

    move-result-object v2

    .line 812
    .local v2, "productList":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/netease/ntunisdk/base/OrderInfo$ProductInfo;>;"
    invoke-virtual {v2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 813
    invoke-virtual {v2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 814
    .local v0, "pId":Ljava/lang/String;
    invoke-static {}, Lcom/netease/ntunisdk/base/SdkMgr;->getInst()Lcom/netease/ntunisdk/base/GamerInterface;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/netease/ntunisdk/base/GamerInterface;->getPayChannelByPid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 815
    const-string v4, "UniSDK netease"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    .end local v0    # "pId":Ljava/lang/String;
    :cond_0
    const-string v4, "UniSDK netease"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "payChannel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const-string v4, "pay_channel"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    iget-object v4, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    new-instance v5, Lcom/netease/ntunisdk/SdkNetease$2;

    invoke-direct {v5, p0}, Lcom/netease/ntunisdk/SdkNetease$2;-><init>(Lcom/netease/ntunisdk/SdkNetease;)V

    new-instance v6, Lcom/netease/mpay/codescanner/QrScannerOptions$Builder;

    invoke-direct {v6}, Lcom/netease/mpay/codescanner/QrScannerOptions$Builder;-><init>()V

    new-instance v7, Lcom/netease/ntunisdk/SdkNetease$4;

    invoke-direct {v7, p0}, Lcom/netease/ntunisdk/SdkNetease$4;-><init>(Lcom/netease/ntunisdk/SdkNetease;)V

    .line 868
    invoke-virtual {v6, v7}, Lcom/netease/mpay/codescanner/QrScannerOptions$Builder;->addQrExtCallback(Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerExtCallback;)Lcom/netease/mpay/codescanner/QrScannerOptions$Builder;

    move-result-object v6

    new-instance v7, Lcom/netease/ntunisdk/SdkNetease$3;

    invoke-direct {v7, p0}, Lcom/netease/ntunisdk/SdkNetease$3;-><init>(Lcom/netease/ntunisdk/SdkNetease;)V

    .line 874
    invoke-virtual {v6, v7}, Lcom/netease/mpay/codescanner/QrScannerOptions$Builder;->addLoginCallback(Lcom/netease/mpay/codescanner/QrScannerOptions$QrCodeScannerLoginCallback;)Lcom/netease/mpay/codescanner/QrScannerOptions$Builder;

    move-result-object v6

    .line 884
    invoke-virtual {v6}, Lcom/netease/mpay/codescanner/QrScannerOptions$Builder;->build()Lcom/netease/mpay/codescanner/QrScannerOptions;

    move-result-object v6

    .line 820
    invoke-virtual {v4, v3, v5, v6}, Lcom/netease/mpay/MpayApi;->presentQRCodeScanner(Ljava/util/HashMap;Lcom/netease/mpay/QrCodeScannerCallback;Lcom/netease/mpay/codescanner/QrScannerOptions;)V

    .line 885
    return-void
.end method

.method public queryFriendList()V
    .locals 3

    .prologue
    .line 922
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 923
    .local v0, "friendList":Ljava/util/List;, "Ljava/util/List<Lcom/netease/ntunisdk/base/AccountInfo;>;"
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    if-nez v1, :cond_0

    .line 924
    const-string v1, "UniSDK netease"

    const-string v2, "SDK is uninitialized!"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkNetease;->queryFriendListFinished(Ljava/util/List;)V

    .line 927
    :cond_0
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    new-instance v2, Lcom/netease/ntunisdk/SdkNetease$6;

    invoke-direct {v2, p0, v0}, Lcom/netease/ntunisdk/SdkNetease$6;-><init>(Lcom/netease/ntunisdk/SdkNetease;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/netease/mpay/MpayApi;->getUserFriends(Lcom/netease/mpay/social/GetFriendsCallback;)V

    .line 955
    return-void
.end method

.method public queryMyAccount()V
    .locals 3

    .prologue
    .line 889
    new-instance v0, Lcom/netease/ntunisdk/base/AccountInfo;

    invoke-direct {v0}, Lcom/netease/ntunisdk/base/AccountInfo;-><init>()V

    .line 890
    .local v0, "account":Lcom/netease/ntunisdk/base/AccountInfo;
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    if-nez v1, :cond_0

    .line 891
    const-string v1, "UniSDK netease"

    const-string v2, "SDK is uninitialized!"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkNetease;->queryMyAccountFinished(Lcom/netease/ntunisdk/base/AccountInfo;)V

    .line 894
    :cond_0
    invoke-virtual {p0}, Lcom/netease/ntunisdk/SdkNetease;->getAuthType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 895
    iget-object v1, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    new-instance v2, Lcom/netease/ntunisdk/SdkNetease$5;

    invoke-direct {v2, p0, v0}, Lcom/netease/ntunisdk/SdkNetease$5;-><init>(Lcom/netease/ntunisdk/SdkNetease;Lcom/netease/ntunisdk/base/AccountInfo;)V

    invoke-virtual {v1, v2}, Lcom/netease/mpay/MpayApi;->getUserWeiboInfo(Lcom/netease/mpay/social/GetFriendsCallback;)V

    .line 918
    :goto_0
    return-void

    .line 915
    :cond_1
    const-string v1, "UniSDK netease"

    const-string v2, "\u975e\u5fae\u535a\u8d26\u53f7\u767b\u5f55\uff0c\u65e0\u6cd5\u83b7\u53d6\u5fae\u535a\u4fe1\u606f"

    invoke-static {v1, v2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    invoke-virtual {p0, v0}, Lcom/netease/ntunisdk/SdkNetease;->queryMyAccountFinished(Lcom/netease/ntunisdk/base/AccountInfo;)V

    goto :goto_0
.end method

.method public setDebugMode(Z)V
    .locals 3
    .param p1, "v"    # Z

    .prologue
    .line 412
    const-string v0, "UniSDK netease"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDebugMode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iput-boolean p1, p0, Lcom/netease/ntunisdk/SdkNetease;->debugMode:Z

    .line 414
    return-void
.end method

.method public share(Lcom/netease/ntunisdk/base/ShareInfo;)V
    .locals 5
    .param p1, "shareInfo"    # Lcom/netease/ntunisdk/base/ShareInfo;

    .prologue
    .line 446
    new-instance v0, Lcom/netease/mpay/sharer/ShareContent;

    invoke-direct {v0}, Lcom/netease/mpay/sharer/ShareContent;-><init>()V

    .line 447
    .local v0, "content":Lcom/netease/mpay/sharer/ShareContent;
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/netease/mpay/sharer/ShareContent;->setImage(Landroid/graphics/Bitmap;)Lcom/netease/mpay/sharer/ShareContent;

    move-result-object v3

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/netease/mpay/sharer/ShareContent;->setThumb(Landroid/graphics/Bitmap;)Lcom/netease/mpay/sharer/ShareContent;

    .line 448
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/netease/mpay/sharer/ShareContent;->setText(Ljava/lang/String;)Lcom/netease/mpay/sharer/ShareContent;

    .line 449
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/netease/mpay/sharer/ShareContent;->setTitle(Ljava/lang/String;)Lcom/netease/mpay/sharer/ShareContent;

    .line 450
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/netease/mpay/sharer/ShareContent;->setDesc(Ljava/lang/String;)Lcom/netease/mpay/sharer/ShareContent;

    .line 451
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/netease/mpay/sharer/ShareContent;->setWebUrl(Ljava/lang/String;)Lcom/netease/mpay/sharer/ShareContent;

    .line 453
    const-string v3, "TYPE_TEXT_ONLY"

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 454
    const/4 v3, 0x0

    iput v3, v0, Lcom/netease/mpay/sharer/ShareContent;->contentType:I

    .line 461
    :goto_0
    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getShareChannel()I

    move-result v2

    .line 462
    .local v2, "shareChannel":I
    const/16 v3, 0x69

    if-eq v3, v2, :cond_0

    const/16 v3, 0x6a

    if-eq v3, v2, :cond_0

    const/16 v3, 0x64

    if-eq v3, v2, :cond_0

    const/16 v3, 0x65

    if-eq v3, v2, :cond_0

    const/16 v3, 0x66

    if-eq v3, v2, :cond_0

    const/16 v3, 0x67

    if-eq v3, v2, :cond_0

    const/16 v3, 0x68

    if-ne v3, v2, :cond_3

    .line 465
    :cond_0
    iget-object v3, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    invoke-virtual {v3, v0, v2}, Lcom/netease/mpay/MpayApi;->shareTo(Lcom/netease/mpay/sharer/ShareContent;I)Z

    move-result v1

    .line 466
    .local v1, "res":Z
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/SdkNetease;->shareFinished(Z)V

    .line 471
    :goto_1
    return-void

    .line 455
    .end local v1    # "res":Z
    .end local v2    # "shareChannel":I
    :cond_1
    const-string v3, "TYPE_LINK"

    invoke-virtual {p1}, Lcom/netease/ntunisdk/base/ShareInfo;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 456
    const/4 v3, 0x2

    iput v3, v0, Lcom/netease/mpay/sharer/ShareContent;->contentType:I

    goto :goto_0

    .line 458
    :cond_2
    const/4 v3, 0x1

    iput v3, v0, Lcom/netease/mpay/sharer/ShareContent;->contentType:I

    goto :goto_0

    .line 468
    .restart local v2    # "shareChannel":I
    :cond_3
    iget-object v3, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    invoke-virtual {v3, v0}, Lcom/netease/mpay/MpayApi;->share(Lcom/netease/mpay/sharer/ShareContent;)Z

    move-result v1

    .line 469
    .restart local v1    # "res":Z
    invoke-virtual {p0, v1}, Lcom/netease/ntunisdk/SdkNetease;->shareFinished(Z)V

    goto :goto_1
.end method

.method public showConversation()V
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    invoke-virtual {v0}, Lcom/netease/mpay/MpayApi;->showForumDialog()V

    .line 960
    return-void
.end method

.method public upLoadUserInfo()V
    .locals 5

    .prologue
    .line 617
    const-string v2, "UniSDK netease"

    const-string v3, "call upLoadUserInfo..."

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 619
    .local v1, "roleInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "role_id"

    const-string v3, "USERINFO_UID"

    invoke-virtual {p0, v3}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    const-string v2, "nickname"

    const-string v3, "USERINFO_NAME"

    invoke-virtual {p0, v3}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const-string v2, "grade"

    const-string v3, "USERINFO_GRADE"

    invoke-virtual {p0, v3}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    const-string v2, "host_id"

    const-string v3, "USERINFO_HOSTID"

    invoke-virtual {p0, v3}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    const-string v2, "host_name"

    const-string v3, "USERINFO_HOSTNAME"

    invoke-virtual {p0, v3}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    const-string v2, "type_id"

    const-string v3, "USERINFO_ROLE_TYPE_ID"

    invoke-virtual {p0, v3}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    const-string v2, "type_name"

    const-string v3, "USERINFO_ROLE_TYPE_NAME"

    invoke-virtual {p0, v3}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    const-string v2, "menpai_id"

    const-string v3, "USERINFO_MENPAI_ID"

    invoke-virtual {p0, v3}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    const-string v2, "menpai_name"

    const-string v3, "USERINFO_MENPAI_NAME"

    invoke-virtual {p0, v3}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    const-string v2, "capability"

    const-string v3, "USERINFO_CAPABILITY"

    invoke-virtual {p0, v3}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    const-string v2, "vip"

    const-string v3, "USERINFO_VIP"

    invoke-virtual {p0, v3}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    const-string v2, "gang_id"

    const-string v3, "USERINFO_GANG_ID"

    invoke-virtual {p0, v3}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    const-string v2, "gang_name"

    const-string v3, "USERINFO_ORG"

    invoke-virtual {p0, v3}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    const-string v2, "region_id"

    const-string v3, "region_id"

    invoke-virtual {p0, v3}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const-string v2, "region_name"

    const-string v3, "region_name"

    invoke-virtual {p0, v3}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    iget-object v2, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    const-string v3, "UIN"

    invoke-virtual {p0, v3}, Lcom/netease/ntunisdk/SdkNetease;->getPropStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/netease/mpay/MpayApi;->setRoleInfo(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    .line 635
    .local v0, "res":Z
    const-string v2, "UniSDK netease"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upLoadUserInfo res:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method public verifyMobile(I)V
    .locals 3
    .param p1, "requestCode"    # I

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/netease/ntunisdk/SdkNetease;->sdkInstance:Lcom/netease/mpay/MpayApi;

    new-instance v1, Lcom/netease/ntunisdk/SdkNetease$9;

    invoke-direct {v1, p0}, Lcom/netease/ntunisdk/SdkNetease$9;-><init>(Lcom/netease/ntunisdk/SdkNetease;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/netease/mpay/MpayApi;->showMobileBindDialog(Lcom/netease/mpay/MobileBindCallback;Ljava/lang/Integer;)Z

    .line 1044
    return-void
.end method
