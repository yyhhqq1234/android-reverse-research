.class public Lcom/tencent/android/tpush/service/s;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Lcom/tencent/android/tpush/service/s;

.field private static b:Lorg/json/JSONArray;

.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Lcom/tencent/android/tpush/service/channel/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/tencent/android/tpush/service/s;

    invoke-direct {v0}, Lcom/tencent/android/tpush/service/s;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/service/s;->a:Lcom/tencent/android/tpush/service/s;

    .line 70
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/tencent/android/tpush/service/s;->b:Lorg/json/JSONArray;

    .line 71
    const-string v0, "com.tencent.tpush.last_wifi_ts"

    invoke-static {v0}, Lcom/tencent/android/tpush/encrypt/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/android/tpush/service/s;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Lcom/tencent/android/tpush/service/t;

    invoke-direct {v0, p0}, Lcom/tencent/android/tpush/service/t;-><init>(Lcom/tencent/android/tpush/service/s;)V

    iput-object v0, p0, Lcom/tencent/android/tpush/service/s;->d:Lcom/tencent/android/tpush/service/channel/t;

    return-void
.end method

.method public static a(Z)B
    .locals 1

    .prologue
    .line 681
    if-eqz p0, :cond_0

    .line 682
    const/4 v0, 0x1

    .line 684
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;
    .locals 4

    .prologue
    .line 279
    new-instance v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;

    invoke-direct {v0}, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;-><init>()V

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/tencent/android/tpush/service/e/h;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->apiLevel:Ljava/lang/String;

    .line 281
    invoke-static {p0}, Lcom/tencent/android/tpush/service/e/h;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->imei:Ljava/lang/String;

    .line 282
    invoke-static {}, Lcom/tencent/android/tpush/service/e/h;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->model:Ljava/lang/String;

    .line 283
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->manu:Ljava/lang/String;

    .line 284
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->model:Ljava/lang/String;

    .line 285
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/a/h;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->network:Ljava/lang/String;

    .line 287
    const-string v1, "android"

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->os:Ljava/lang/String;

    .line 288
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/a/h;->c(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->resolution:Ljava/lang/String;

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->apiLevel:Ljava/lang/String;

    .line 292
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/a/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->sdCard:Ljava/lang/String;

    .line 294
    invoke-static {p0}, Lcom/tencent/android/tpush/stat/a/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->sdDouble:Ljava/lang/String;

    .line 296
    const v1, 0x40466666    # 3.1f

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->sdkVersion:Ljava/lang/String;

    .line 297
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->sdkVersionName:Ljava/lang/String;

    .line 298
    invoke-static {p0}, Lcom/tencent/android/tpush/service/e/h;->m(Landroid/content/Context;)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->isRooted:J

    .line 299
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->language:Ljava/lang/String;

    .line 300
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->timezone:Ljava/lang/String;

    .line 301
    invoke-static {p0}, Lcom/tencent/android/tpush/service/e/h;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;->launcherName:Ljava/lang/String;

    .line 302
    return-object v0
.end method

.method public static a()Lcom/tencent/android/tpush/service/s;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/tencent/android/tpush/service/s;->a:Lcom/tencent/android/tpush/service/s;

    return-object v0
.end method

.method private a(ILjava/lang/String;Lcom/tencent/android/tpush/service/channel/a;)V
    .locals 3

    .prologue
    .line 449
    const-string v0, "PushServiceNetworkHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ loadConfiguraionFailHandler("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Lcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;Lcom/tencent/android/tpush/service/channel/a;)V
    .locals 3

    .prologue
    .line 531
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 532
    const-string v0, "XGService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@@ uninstallReportFailedHandler("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/s;ILjava/lang/String;Lcom/tencent/android/tpush/service/channel/a;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/android/tpush/service/s;->a(ILjava/lang/String;Lcom/tencent/android/tpush/service/channel/a;)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/android/tpush/service/s;ILjava/lang/String;Ljava/lang/String;Lcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;Lcom/tencent/android/tpush/service/channel/a;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct/range {p0 .. p5}, Lcom/tencent/android/tpush/service/s;->a(ILjava/lang/String;Ljava/lang/String;Lcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;Lcom/tencent/android/tpush/service/channel/a;)V

    return-void
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 245
    const-string v2, ""

    .line 246
    if-eqz p1, :cond_4

    .line 247
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/tencent/android/tpush/common/e;->a(Landroid/content/Context;I)Lorg/json/JSONArray;

    move-result-object v4

    .line 248
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 250
    sget-object v0, Lcom/tencent/android/tpush/service/s;->c:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-static {p1, v0, v6, v7}, Lcom/tencent/android/tpush/service/e/e;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    .line 253
    sget-object v0, Lcom/tencent/android/tpush/service/s;->b:Lorg/json/JSONArray;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/tencent/android/tpush/service/s;->b:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 255
    sget-object v0, Lcom/tencent/android/tpush/service/s;->b:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    const-string v0, ""

    .line 274
    :goto_0
    return-object v0

    .line 259
    :cond_0
    sget-object v0, Lcom/tencent/android/tpush/service/s;->b:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 261
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 263
    const/4 v5, 0x3

    if-lt v0, v5, :cond_3

    move v0, v3

    .line 265
    :goto_2
    if-nez v0, :cond_1

    sub-long v6, v8, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v10, 0x1b7740

    cmp-long v0, v6, v10

    if-lez v0, :cond_2

    :cond_1
    move v1, v3

    .line 267
    :cond_2
    if-eqz v1, :cond_4

    .line 268
    sget-object v0, Lcom/tencent/android/tpush/service/s;->c:Ljava/lang/String;

    invoke-static {p1, v0, v8, v9}, Lcom/tencent/android/tpush/service/e/e;->a(Landroid/content/Context;Ljava/lang/String;J)Z

    .line 269
    invoke-virtual {v4}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    sput-object v4, Lcom/tencent/android/tpush/service/s;->b:Lorg/json/JSONArray;

    goto :goto_0

    :cond_3
    move v0, v1

    .line 263
    goto :goto_2

    :cond_4
    move-object v0, v2

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .prologue
    .line 388
    new-instance v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsConfigReq;

    invoke-direct {v0, p1, p2}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsConfigReq;-><init>(J)V

    .line 389
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v1

    new-instance v2, Lcom/tencent/android/tpush/service/u;

    invoke-direct {v2, p0}, Lcom/tencent/android/tpush/service/u;-><init>(Lcom/tencent/android/tpush/service/s;)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/t;)V

    .line 438
    return-void
.end method

.method public a(JLjava/lang/String;ILjava/lang/String;Lcom/tencent/android/tpush/service/channel/t;)V
    .locals 5

    .prologue
    .line 568
    new-instance v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsTokenTagReq;

    invoke-direct {v0}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsTokenTagReq;-><init>()V

    .line 569
    iput-wide p1, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsTokenTagReq;->accessId:J

    .line 570
    iput p4, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsTokenTagReq;->flag:I

    .line 571
    iput-object p5, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsTokenTagReq;->tag:Ljava/lang/String;

    .line 572
    sget-boolean v1, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v1, :cond_0

    .line 573
    const-string v1, "PushServiceNetworkHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action -> sendTag to server ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :cond_0
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v1

    invoke-virtual {v1, v0, p6}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/t;)V

    .line 577
    return-void
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/android/tpush/service/channel/t;)V
    .locals 7

    .prologue
    .line 698
    new-instance v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUpdateTokenReq;

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUpdateTokenReq;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v0

    invoke-virtual {v0, v1, p6}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/t;)V

    .line 700
    return-void
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/android/tpush/service/channel/t;)V
    .locals 9

    .prologue
    .line 317
    new-instance v4, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;

    invoke-direct {v4}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;-><init>()V

    .line 318
    iput-wide p1, v4, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->accessId:J

    .line 319
    iput-object p3, v4, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->accessKey:Ljava/lang/String;

    .line 320
    iput-object p4, v4, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->deviceId:Ljava/lang/String;

    .line 321
    move-object/from16 v0, p8

    iput-object v0, v4, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->appCert:Ljava/lang/String;

    .line 322
    iput-object p5, v4, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->account:Ljava/lang/String;

    .line 323
    iput-object p6, v4, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->ticket:Ljava/lang/String;

    .line 324
    move/from16 v0, p7

    int-to-short v2, v0

    iput-short v2, v4, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->ticketType:S

    .line 325
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/s;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;

    move-result-object v2

    iput-object v2, v4, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->deviceInfo:Lcom/tencent/android/tpush/service/channel/protocol/DeviceInfo;

    .line 326
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->token:Ljava/lang/String;

    .line 327
    const/4 v2, 0x1

    iput-short v2, v4, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->version:S

    .line 329
    move-object/from16 v0, p9

    iput-object v0, v4, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->appVersion:Ljava/lang/String;

    .line 330
    move-object/from16 v0, p10

    iput-object v0, v4, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->reserved:Ljava/lang/String;

    .line 331
    sget-boolean v2, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v2, :cond_0

    .line 332
    const-string v2, "PushServiceNetworkHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Register("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",token: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v4, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->token:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/android/tpush/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :cond_0
    const/4 v2, 0x0

    .line 337
    :goto_0
    const-string v3, "0"

    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/tencent/android/tpush/stat/b/c;->a()Z

    move-result v3

    if-nez v3, :cond_1

    .line 338
    add-int/lit8 v3, v2, 0x1

    const/16 v5, 0x8

    if-lt v2, v5, :cond_3

    .line 348
    :cond_1
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/tencent/android/tpush/service/channel/protocol/TpnsRegisterReq;->token:Ljava/lang/String;

    .line 349
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v2

    move-object/from16 v0, p11

    invoke-virtual {v2, v4, v0}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/t;)V

    .line 350
    const-string v2, "0"

    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 351
    invoke-static {}, Lcom/tencent/android/tpush/stat/b/c;->b()V

    .line 353
    :cond_2
    return-void

    .line 342
    :cond_3
    const-wide/16 v6, 0x1f4

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 345
    goto :goto_0

    .line 343
    :catch_0
    move-exception v2

    move v2, v3

    .line 345
    goto :goto_0
.end method

.method public a(Landroid/content/Intent;Lcom/tencent/android/tpush/service/channel/t;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 705
    new-instance v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;

    invoke-direct {v0}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;-><init>()V

    .line 706
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->type:J

    .line 708
    :try_start_0
    const-string v1, "accessId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->accessId:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    :goto_0
    const-string v1, "msgId"

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->msgId:J

    .line 713
    const-string v1, "broadcastId"

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->broadcastId:J

    .line 714
    const-string v1, "msgTimestamp"

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->msgTimestamp:J

    .line 715
    const-string v1, "clientTimestamp"

    invoke-virtual {p1, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->clientTimestamp:J

    .line 716
    const-string v1, "pkgName"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->pkgName:Ljava/lang/String;

    .line 717
    const-string v1, "msg"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 718
    if-eqz v1, :cond_0

    .line 719
    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->msg:Ljava/lang/String;

    .line 721
    :cond_0
    const-string v1, "ext"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/android/tpush/encrypt/Rijndael;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 722
    if-eqz v1, :cond_1

    .line 723
    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushCommReportReq;->ext:Ljava/lang/String;

    .line 725
    :cond_1
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/t;)V

    .line 726
    return-void

    .line 709
    :catch_0
    move-exception v1

    .line 710
    const-string v1, "PushServiceNetworkHandler"

    const-string v2, "sendCommReportMessage NumberFormatException"

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/a;)V
    .locals 4

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 95
    :cond_0
    instance-of v0, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReq;

    if-eqz v0, :cond_1

    .line 96
    check-cast p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReq;

    .line 97
    invoke-static {}, Lcom/tencent/android/tpush/service/c/a;->a()Lcom/tencent/android/tpush/service/c/a;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReq;->msgList:Ljava/util/ArrayList;

    iget-wide v2, p1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClientReq;->timeUs:J

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/tencent/android/tpush/service/c/a;->a(Ljava/util/ArrayList;JLcom/tencent/android/tpush/service/channel/a;)V

    goto :goto_0

    .line 100
    :cond_1
    const-string v0, "PushServiceNetworkHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedServicePush unhandle message type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 464
    sget-boolean v0, Lcom/tencent/android/tpush/XGPushConfig;->enableDebug:Z

    if-eqz v0, :cond_0

    .line 465
    const-string v0, "PushServiceNetworkHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action uninstallReport : pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :cond_0
    invoke-static {p1}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getRegisterInfoByPkgName(Ljava/lang/String;)Lcom/tencent/android/tpush/data/RegisterEntity;

    move-result-object v0

    .line 469
    if-eqz v0, :cond_1

    .line 471
    new-instance v7, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;

    invoke-direct {v7}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;-><init>()V

    .line 472
    new-instance v8, Lcom/tencent/android/tpush/service/channel/protocol/UnregInfo;

    new-instance v1, Lcom/tencent/android/tpush/service/channel/protocol/AppInfo;

    iget-wide v2, v0, Lcom/tencent/android/tpush/data/RegisterEntity;->accessId:J

    iget-object v4, v0, Lcom/tencent/android/tpush/data/RegisterEntity;->accessKey:Ljava/lang/String;

    const-string v5, ""

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/tencent/android/tpush/service/channel/protocol/AppInfo;-><init>(JLjava/lang/String;Ljava/lang/String;B)V

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v8, v1, v0, v2, v3}, Lcom/tencent/android/tpush/service/channel/protocol/UnregInfo;-><init>(Lcom/tencent/android/tpush/service/channel/protocol/AppInfo;BJ)V

    iput-object v8, v7, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;->unregInfo:Lcom/tencent/android/tpush/service/channel/protocol/UnregInfo;

    .line 475
    invoke-static {p1}, Lcom/tencent/android/tpush/service/cache/CacheManager;->UninstallInfoByPkgName(Ljava/lang/String;)V

    .line 476
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v0

    new-instance v1, Lcom/tencent/android/tpush/service/v;

    invoke-direct {v1, p0, p1}, Lcom/tencent/android/tpush/service/v;-><init>(Lcom/tencent/android/tpush/service/s;Ljava/lang/String;)V

    invoke-virtual {v0, v7, v1}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/t;)V

    .line 527
    :goto_0
    return-void

    .line 524
    :cond_1
    const-string v0, "PushServiceNetworkHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The RegisterEntity entity is null, PkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/tencent/android/tpush/service/channel/t;)V
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 367
    new-instance v9, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;

    invoke-direct {v9}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;-><init>()V

    .line 368
    const-string v7, ""

    .line 370
    :try_start_0
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 372
    invoke-static {v2}, Lcom/tencent/android/tpush/service/channel/security/TpnsSecurity;->getEncryptAPKSignature(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 377
    :goto_0
    new-instance v2, Lcom/tencent/android/tpush/service/channel/protocol/UnregInfo;

    new-instance v3, Lcom/tencent/android/tpush/service/channel/protocol/AppInfo;

    move-wide v4, p3

    move-object/from16 v6, p5

    invoke-direct/range {v3 .. v8}, Lcom/tencent/android/tpush/service/channel/protocol/AppInfo;-><init>(JLjava/lang/String;Ljava/lang/String;B)V

    const-wide/16 v4, 0x0

    invoke-direct {v2, v3, v8, v4, v5}, Lcom/tencent/android/tpush/service/channel/protocol/UnregInfo;-><init>(Lcom/tencent/android/tpush/service/channel/protocol/AppInfo;BJ)V

    iput-object v2, v9, Lcom/tencent/android/tpush/service/channel/protocol/TpnsUnregisterReq;->unregInfo:Lcom/tencent/android/tpush/service/channel/protocol/UnregInfo;

    .line 379
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v9, v0}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/t;)V

    .line 380
    return-void

    .line 373
    :catch_0
    move-exception v2

    .line 374
    const-string v3, "PushServiceNetworkHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> create context [for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] fail."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/util/ArrayList;Lcom/tencent/android/tpush/service/channel/t;)V
    .locals 2

    .prologue
    .line 550
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 551
    new-instance v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushVerifyReq;

    invoke-direct {v0, p1}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushVerifyReq;-><init>(Ljava/util/ArrayList;)V

    .line 554
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/t;)V

    .line 556
    :cond_0
    return-void
.end method

.method public a(ZJ)V
    .locals 6

    .prologue
    .line 590
    const-string v0, "PushServiceNetworkHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadIPList :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getLastLoadIpTime(Landroid/content/Context;)J

    move-result-wide v0

    .line 594
    if-eqz p1, :cond_1

    .line 595
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/android/tpush/service/a/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/a/a;

    move-result-object v4

    iget v4, v4, Lcom/tencent/android/tpush/service/a/a;->n:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 596
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/a/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/android/tpush/service/a/a;->b()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_0

    .line 597
    invoke-static {}, Lcom/tencent/android/tpush/service/s;->a()Lcom/tencent/android/tpush/service/s;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/tencent/android/tpush/service/s;->a(J)V

    .line 607
    :cond_0
    :goto_0
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/a/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/a/a;

    move-result-object v2

    .line 609
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    iget v2, v2, Lcom/tencent/android/tpush/service/a/a;->n:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 672
    :goto_1
    return-void

    .line 602
    :cond_1
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/a/a;->a(Landroid/content/Context;)Lcom/tencent/android/tpush/service/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/android/tpush/service/a/a;->b()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_0

    .line 603
    invoke-static {}, Lcom/tencent/android/tpush/service/s;->a()Lcom/tencent/android/tpush/service/s;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Lcom/tencent/android/tpush/service/s;->a(J)V

    goto :goto_0

    .line 612
    :cond_2
    new-instance v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsGetApListReq;

    invoke-direct {v0}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsGetApListReq;-><init>()V

    .line 613
    new-instance v1, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;

    invoke-direct {v1}, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;-><init>()V

    .line 614
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/e/h;->g(Landroid/content/Context;)B

    move-result v2

    iput-byte v2, v1, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->network:B

    .line 615
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/android/tpush/service/e/h;->h(Landroid/content/Context;)B

    move-result v2

    iput-byte v2, v1, Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;->op:B

    .line 616
    iput-object v1, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsGetApListReq;->netInfo:Lcom/tencent/android/tpush/service/channel/protocol/NetworkInfo;

    .line 617
    const-string v1, "PushServiceNetworkHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMessage TpnsGetApListReq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/android/tpush/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v1

    new-instance v2, Lcom/tencent/android/tpush/service/w;

    invoke-direct {v2, p0}, Lcom/tencent/android/tpush/service/w;-><init>(Lcom/tencent/android/tpush/service/s;)V

    invoke-virtual {v1, v0, v2}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/t;)V

    goto :goto_1
.end method

.method public b()Lcom/tencent/android/tpush/service/channel/s;
    .locals 7

    .prologue
    .line 188
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    const-string v0, "PushServiceNetworkHandler"

    const-string v1, ">> no app registered!"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v0, 0x0

    .line 241
    :goto_0
    return-object v0

    .line 192
    :cond_0
    new-instance v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;

    invoke-direct {v1}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;-><init>()V

    .line 193
    invoke-static {}, Lcom/tencent/android/tpush/service/e/c;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;->deviceId:Ljava/lang/String;

    .line 194
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/e/h;->g(Landroid/content/Context;)B

    move-result v0

    int-to-short v0, v0

    iput-short v0, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;->networkType:S

    .line 195
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;->token:Ljava/lang/String;

    .line 196
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/android/tpush/service/cache/CacheManager;->getUninstallAndUnregisterInfo(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;->unregInfoList:Ljava/util/ArrayList;

    .line 198
    invoke-static {}, Lcom/tencent/android/tpush/service/c/a;->a()Lcom/tencent/android/tpush/service/c/a;

    move-result-object v0

    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/tencent/android/tpush/service/c/a;->a()Lcom/tencent/android/tpush/service/c/a;

    move-result-object v3

    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tencent/android/tpush/service/c/a;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/tencent/android/tpush/service/c/a;->b(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;->recvMsgList:Ljava/util/ArrayList;

    .line 202
    invoke-static {}, Lcom/tencent/android/tpush/service/c/a;->a()Lcom/tencent/android/tpush/service/c/a;

    move-result-object v0

    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/android/tpush/service/c/a;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;->msgClickList:Ljava/util/ArrayList;

    .line 204
    const v0, 0x40466666    # 3.1f

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;->sdkVersion:Ljava/lang/String;

    .line 205
    const-wide/16 v2, 0x3

    iput-wide v2, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;->connVersion:J

    .line 206
    invoke-static {}, Lcom/tencent/android/tpush/service/n;->f()Landroid/content/Context;

    move-result-object v2

    .line 207
    new-instance v3, Lcom/tencent/android/tpush/service/channel/protocol/MutableInfo;

    invoke-direct {v3}, Lcom/tencent/android/tpush/service/channel/protocol/MutableInfo;-><init>()V

    .line 208
    invoke-static {v2}, Lcom/tencent/android/tpush/stat/a/h;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/tencent/android/tpush/stat/a/h;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    invoke-static {v2}, Lcom/tencent/android/tpush/stat/a/h;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/android/tpush/service/channel/protocol/MutableInfo;->bssid:Ljava/lang/String;

    .line 214
    invoke-static {v2}, Lcom/tencent/android/tpush/stat/a/h;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/android/tpush/service/channel/protocol/MutableInfo;->ssid:Ljava/lang/String;

    .line 217
    :cond_1
    invoke-static {v2}, Lcom/tencent/android/tpush/stat/a/h;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/android/tpush/service/channel/protocol/MutableInfo;->mac:Ljava/lang/String;

    .line 220
    :try_start_0
    invoke-direct {p0, v2}, Lcom/tencent/android/tpush/service/s;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/android/tpush/service/channel/protocol/MutableInfo;->wflist:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 226
    invoke-static {v2}, Lcom/tencent/mid/api/MidService;->getNewMid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v5, 0x28

    if-ne v2, v5, :cond_2

    .line 229
    :try_start_1
    const-string v2, "new_mid"

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    const-string v0, "new_mid_v"

    const v2, 0x406e147b    # 3.72f

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 235
    :cond_2
    :goto_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 236
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;->reserved:Ljava/lang/String;

    .line 238
    :cond_3
    iput-object v3, v1, Lcom/tencent/android/tpush/service/channel/protocol/TpnsReconnectReq;->mutableInfo:Lcom/tencent/android/tpush/service/channel/protocol/MutableInfo;

    .line 239
    new-instance v0, Lcom/tencent/android/tpush/service/channel/s;

    iget-object v2, p0, Lcom/tencent/android/tpush/service/s;->d:Lcom/tencent/android/tpush/service/channel/t;

    invoke-direct {v0, v1, v2}, Lcom/tencent/android/tpush/service/channel/s;-><init>(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/t;)V

    goto/16 :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    const-string v4, "PushServiceNetworkHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">> getWifiList("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tencent/android/tpush/a/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 231
    :catch_1
    move-exception v0

    .line 232
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public b(Ljava/util/ArrayList;Lcom/tencent/android/tpush/service/channel/t;)V
    .locals 2

    .prologue
    .line 581
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    new-instance v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClickReq;

    invoke-direct {v0}, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClickReq;-><init>()V

    .line 585
    iput-object p1, v0, Lcom/tencent/android/tpush/service/channel/protocol/TpnsPushClickReq;->msgClickList:Ljava/util/ArrayList;

    .line 586
    invoke-static {}, Lcom/tencent/android/tpush/service/channel/b;->a()Lcom/tencent/android/tpush/service/channel/b;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/tencent/android/tpush/service/channel/b;->a(Lcom/qq/taf/jce/JceStruct;Lcom/tencent/android/tpush/service/channel/t;)V

    goto :goto_0
.end method
