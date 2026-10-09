.class public final Lcom/tencent/msdk/WeGame;
.super Ljava/lang/Object;
.source "WeGame.java"


# static fields
.field private static final MSDK_SVN_CODE:Ljava/lang/String; = "94560"

.field private static final MSDK_VERSION:Ljava/lang/String; = "3.2.14a"

.field public static final QQHALL:I

.field public static final QQPLATID:I

.field public static final WXPLATID:I

.field public static bNeedMSDKEventReport:Z

.field public static bNeedMSDKLogReport:Z

.field private static volatile instance:Lcom/tencent/msdk/WeGame;


# instance fields
.field private final IMG_LIMIT_SIZE:J

.field private final IMG_MAX_SIZE:I

.field private final THUMB_MAX_SIZE:I

.field private final THUMB_SIZE:I

.field public api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field public appVersionCode:I

.field public appVersionName:Ljava/lang/String;

.field private firstGameActivity:Landroid/app/Activity;

.field private flag:I

.field private isGrayTest:I

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mFirstStart:Z

.field public mPermission:Ljava/lang/String;

.field private mPlatId:I

.field private mTencent:Lcom/tencent/tauth/Tencent;

.field public msdkIp:[Ljava/lang/String;

.field private msdkKey:Ljava/lang/String;

.field public offerId:Ljava/lang/String;

.field public qq_appid:Ljava/lang/String;

.field private wxRequestStartTime:J

.field public wx_appid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    sget-object v0, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_Weixin:Lcom/tencent/msdk/consts/EPlatform;

    invoke-virtual {v0}, Lcom/tencent/msdk/consts/EPlatform;->val()I

    move-result v0

    sput v0, Lcom/tencent/msdk/WeGame;->WXPLATID:I

    .line 49
    sget-object v0, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_QQ:Lcom/tencent/msdk/consts/EPlatform;

    invoke-virtual {v0}, Lcom/tencent/msdk/consts/EPlatform;->val()I

    move-result v0

    sput v0, Lcom/tencent/msdk/WeGame;->QQPLATID:I

    .line 50
    sget-object v0, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_QQHall:Lcom/tencent/msdk/consts/EPlatform;

    invoke-virtual {v0}, Lcom/tencent/msdk/consts/EPlatform;->val()I

    move-result v0

    sput v0, Lcom/tencent/msdk/WeGame;->QQHALL:I

    .line 77
    sput-boolean v1, Lcom/tencent/msdk/WeGame;->bNeedMSDKEventReport:Z

    .line 78
    sput-boolean v1, Lcom/tencent/msdk/WeGame;->bNeedMSDKLogReport:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v2, p0, Lcom/tencent/msdk/WeGame;->flag:I

    .line 56
    iput-object v3, p0, Lcom/tencent/msdk/WeGame;->mActivity:Landroid/app/Activity;

    .line 57
    iput-object v3, p0, Lcom/tencent/msdk/WeGame;->mContext:Landroid/content/Context;

    .line 59
    iput-object v3, p0, Lcom/tencent/msdk/WeGame;->firstGameActivity:Landroid/app/Activity;

    .line 60
    iput v2, p0, Lcom/tencent/msdk/WeGame;->mPlatId:I

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/WeGame;->qq_appid:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/WeGame;->msdkKey:Ljava/lang/String;

    .line 64
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const-string v1, ""

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/tencent/msdk/WeGame;->msdkIp:[Ljava/lang/String;

    .line 68
    const-string v0, "all"

    iput-object v0, p0, Lcom/tencent/msdk/WeGame;->mPermission:Ljava/lang/String;

    .line 71
    iput-object v3, p0, Lcom/tencent/msdk/WeGame;->offerId:Ljava/lang/String;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/WeGame;->appVersionName:Ljava/lang/String;

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/msdk/WeGame;->appVersionCode:I

    .line 83
    const/16 v0, 0xc8

    iput v0, p0, Lcom/tencent/msdk/WeGame;->THUMB_SIZE:I

    .line 86
    const/16 v0, 0x7d00

    iput v0, p0, Lcom/tencent/msdk/WeGame;->THUMB_MAX_SIZE:I

    .line 88
    const v0, 0x989680

    iput v0, p0, Lcom/tencent/msdk/WeGame;->IMG_MAX_SIZE:I

    .line 90
    const-wide/32 v0, 0x300000

    iput-wide v0, p0, Lcom/tencent/msdk/WeGame;->IMG_LIMIT_SIZE:J

    .line 91
    iput-boolean v4, p0, Lcom/tencent/msdk/WeGame;->mFirstStart:Z

    .line 92
    iput v2, p0, Lcom/tencent/msdk/WeGame;->isGrayTest:I

    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/msdk/WeGame;->wxRequestStartTime:J

    return-void
.end method

.method private checkWXEnv()I
    .locals 1

    .prologue
    .line 385
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/msdk/WeGame;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    const-string/jumbo v0, "weixin not install"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 387
    const/16 v0, 0x7d0

    .line 392
    :goto_0
    return v0

    .line 389
    :cond_0
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/msdk/WeGame;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->isWXAppSupportAPI()Z

    move-result v0

    if-nez v0, :cond_1

    .line 390
    const-string/jumbo v0, "weixin not support api"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 392
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/tencent/msdk/WeGame;
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lcom/tencent/msdk/WeGame;->instance:Lcom/tencent/msdk/WeGame;

    if-nez v0, :cond_1

    .line 110
    const-class v1, Lcom/tencent/msdk/WeGame;

    monitor-enter v1

    .line 111
    :try_start_0
    sget-object v0, Lcom/tencent/msdk/WeGame;->instance:Lcom/tencent/msdk/WeGame;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/tencent/msdk/WeGame;

    invoke-direct {v0}, Lcom/tencent/msdk/WeGame;-><init>()V

    sput-object v0, Lcom/tencent/msdk/WeGame;->instance:Lcom/tencent/msdk/WeGame;

    .line 114
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_1
    sget-object v0, Lcom/tencent/msdk/WeGame;->instance:Lcom/tencent/msdk/WeGame;

    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getMsdkIp()V
    .locals 5

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 262
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/msdk/WeGame;->getApiDomain()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "apiDomain":Ljava/lang/String;
    iget-object v1, p0, Lcom/tencent/msdk/WeGame;->msdkIp:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/msdk/WeGame;->msdkIp:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v2, :cond_1

    .line 264
    :cond_0
    new-array v1, v2, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, ""

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/tencent/msdk/WeGame;->msdkIp:[Ljava/lang/String;

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/tencent/msdk/WeGame;->msdkIp:[Ljava/lang/String;

    aput-object v0, v1, v4

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "domain is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " close report ip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method private isTestEnv()Z
    .locals 2

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/tencent/msdk/WeGame;->getApiDomain()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "domain":Ljava/lang/String;
    const-string/jumbo v1, "test"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "dev"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setDescribe(II)Ljava/lang/String;
    .locals 1
    .param p0, "flag"    # I
    .param p1, "platform"    # I

    .prologue
    .line 620
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public Initialized(Landroid/app/Activity;Lcom/tencent/msdk/api/MsdkBaseInfo;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "baseInfo"    # Lcom/tencent/msdk/api/MsdkBaseInfo;

    .prologue
    const/4 v9, 0x1

    .line 139
    invoke-static {p1}, Lcom/tencent/msdk/tools/Logger;->setLogType(Landroid/app/Activity;)V

    .line 140
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Initialized start: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/msdk/WeGame;->qq_appid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 141
    iput-object p1, p0, Lcom/tencent/msdk/WeGame;->mActivity:Landroid/app/Activity;

    .line 142
    iput-object p1, p0, Lcom/tencent/msdk/WeGame;->firstGameActivity:Landroid/app/Activity;

    .line 143
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/WeGame;->mContext:Landroid/content/Context;

    .line 145
    iget-object v6, p2, Lcom/tencent/msdk/api/MsdkBaseInfo;->qqAppId:Ljava/lang/String;

    iput-object v6, p0, Lcom/tencent/msdk/WeGame;->qq_appid:Ljava/lang/String;

    .line 146
    iget-object v6, p2, Lcom/tencent/msdk/api/MsdkBaseInfo;->wxAppId:Ljava/lang/String;

    iput-object v6, p0, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    .line 147
    iget-object v6, p2, Lcom/tencent/msdk/api/MsdkBaseInfo;->msdkKey:Ljava/lang/String;

    iput-object v6, p0, Lcom/tencent/msdk/WeGame;->msdkKey:Ljava/lang/String;

    .line 148
    iget-object v6, p2, Lcom/tencent/msdk/api/MsdkBaseInfo;->offerId:Ljava/lang/String;

    iput-object v6, p0, Lcom/tencent/msdk/WeGame;->offerId:Ljava/lang/String;

    .line 149
    iget-object v6, p2, Lcom/tencent/msdk/api/MsdkBaseInfo;->appVersionName:Ljava/lang/String;

    iput-object v6, p0, Lcom/tencent/msdk/WeGame;->appVersionName:Ljava/lang/String;

    .line 150
    iget v6, p2, Lcom/tencent/msdk/api/MsdkBaseInfo;->appVersionCode:I

    iput v6, p0, Lcom/tencent/msdk/WeGame;->appVersionCode:I

    .line 152
    iput-boolean v9, p0, Lcom/tencent/msdk/WeGame;->mFirstStart:Z

    .line 154
    iget-object v6, p0, Lcom/tencent/msdk/WeGame;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/WeGame;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 155
    iget-object v6, p0, Lcom/tencent/msdk/WeGame;->api:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    iget-object v7, p0, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 156
    iget-object v6, p0, Lcom/tencent/msdk/WeGame;->qq_appid:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 156
    invoke-static {v6, v7}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v6

    iput-object v6, p0, Lcom/tencent/msdk/WeGame;->mTencent:Lcom/tencent/tauth/Tencent;

    .line 178
    invoke-direct {p0}, Lcom/tencent/msdk/WeGame;->isTestEnv()Z

    move-result v0

    .line 184
    .local v0, "bTestEnv":Z
    iget-object v6, p0, Lcom/tencent/msdk/WeGame;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/tencent/msdk/config/ConfigManager;->isGrayTest(Landroid/content/Context;)I

    move-result v6

    iput v6, p0, Lcom/tencent/msdk/WeGame;->isGrayTest:I

    .line 185
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Initialized end: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/msdk/WeGame;->wx_appid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/msdk/WeGame;->qq_appid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 186
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WeGameSDK Version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/tencent/msdk/WeGame;->WGGetVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 188
    if-eqz v0, :cond_1

    .line 190
    sput-boolean v9, Lcom/tencent/msdk/WeGame;->bNeedMSDKLogReport:Z

    .line 191
    sput-boolean v9, Lcom/tencent/msdk/WeGame;->bNeedMSDKEventReport:Z

    .line 194
    new-instance v2, Lcom/tencent/msdk/doctor/MsdkDoctor;

    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/tencent/msdk/doctor/MsdkDoctor;-><init>(Landroid/app/Activity;)V

    .line 195
    .local v2, "doctor":Lcom/tencent/msdk/doctor/MsdkDoctor;
    invoke-virtual {v2}, Lcom/tencent/msdk/doctor/MsdkDoctor;->checkAll()Ljava/util/ArrayList;

    move-result-object v1

    .line 196
    .local v1, "checkResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .local v5, "resultBuilder":Ljava/lang/StringBuilder;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_3

    .line 198
    const-string v6, "MSDK Config Error!!!!"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 199
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check Result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 200
    const-string v6, "********************check result start********************"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 202
    .local v3, "errorMsg":Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 205
    .end local v3    # "errorMsg":Ljava/lang/String;
    :cond_0
    const-string v6, "********************check result end**********************"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 211
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "You are using "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/tencent/msdk/WeGame;->getApiDomain()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n Old v2 version"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 212
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 219
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 220
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "qqAppId"

    iget-object v7, p2, Lcom/tencent/msdk/api/MsdkBaseInfo;->qqAppId:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string/jumbo v6, "wxAppid"

    iget-object v7, p2, Lcom/tencent/msdk/api/MsdkBaseInfo;->wxAppId:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v6, "msdkKey"

    iget-object v7, p2, Lcom/tencent/msdk/api/MsdkBaseInfo;->msdkKey:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v6, "offerId"

    iget-object v7, p2, Lcom/tencent/msdk/api/MsdkBaseInfo;->offerId:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v6, "actName"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v6, "doctor"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .end local v1    # "checkResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "doctor":Lcom/tencent/msdk/doctor/MsdkDoctor;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "resultBuilder":Ljava/lang/StringBuilder;
    :cond_1
    const-string/jumbo v6, "true"

    invoke-virtual {p0}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "SAVE_UPDATE"

    invoke-static {v7, v8}, Lcom/tencent/msdk/config/ConfigManager;->readValueByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 250
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/msdk/WeGame;->logPlatformSDKVersion()V

    .line 258
    invoke-direct {p0}, Lcom/tencent/msdk/WeGame;->getMsdkIp()V

    .line 259
    return-void

    .line 207
    .restart local v1    # "checkResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2    # "doctor":Lcom/tencent/msdk/doctor/MsdkDoctor;
    .restart local v5    # "resultBuilder":Ljava/lang/StringBuilder;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check Result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 208
    const-string v6, "All Config OK!!!"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public IsDifferentActivity(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/tencent/msdk/WeGame;->firstGameActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/msdk/WeGame;->firstGameActivity:Landroid/app/Activity;

    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    const/4 v0, 0x1

    .line 124
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public OpenWXDeeplink(Ljava/lang/String;)V
    .locals 0
    .param p1, "deeplink"    # Ljava/lang/String;

    .prologue
    .line 688
    return-void
.end method

.method public RealNameAuth(Lcom/tencent/msdk/api/RealNameAuthInfo;)V
    .locals 0
    .param p1, "info"    # Lcom/tencent/msdk/api/RealNameAuthInfo;

    .prologue
    .line 694
    return-void
.end method

.method public ReportGameTime(I)V
    .locals 0
    .param p1, "eventType"    # I

    .prologue
    .line 685
    return-void
.end method

.method public WGAddCardToWXCardPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "cardId"    # Ljava/lang/String;
    .param p2, "timestamp"    # Ljava/lang/String;
    .param p3, "sign"    # Ljava/lang/String;

    .prologue
    .line 681
    return-void
.end method

.method public WGAddGameFriendToQQ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "fopenid"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 672
    return-void
.end method

.method public WGBindQQGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "unionid"    # Ljava/lang/String;
    .param p2, "union_name"    # Ljava/lang/String;
    .param p3, "zoneid"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;

    .prologue
    .line 667
    return-void
.end method

.method public WGGetVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 592
    const-string v0, "3.2.14a"

    return-object v0
.end method

.method public WGJoinQQGroup(Ljava/lang/String;)V
    .locals 0
    .param p1, "qqGroupKey"    # Ljava/lang/String;

    .prologue
    .line 657
    return-void
.end method

.method public WGReportEvent(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "isRealTime"    # Z

    .prologue
    .line 599
    return-void
.end method

.method public WGReportEvent(Ljava/lang/String;Ljava/util/HashMap;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "isRealTime"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 603
    .local p2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public WGSendToQQ(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "scene"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "imgUrl"    # Ljava/lang/String;
    .param p6, "imgUrlLen"    # I

    .prologue
    .line 569
    return-void
.end method

.method public WGSendToQQWithMusic(Lcom/tencent/msdk/api/eQQScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "scene"    # Lcom/tencent/msdk/api/eQQScene;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "musicUrl"    # Ljava/lang/String;
    .param p5, "musicDataUrl"    # Ljava/lang/String;
    .param p6, "imgUrl"    # Ljava/lang/String;

    .prologue
    .line 554
    return-void
.end method

.method public WGSendToQQWithPhoto(ILjava/lang/String;)V
    .locals 0
    .param p1, "scene"    # I
    .param p2, "imgFilePath"    # Ljava/lang/String;

    .prologue
    .line 565
    return-void
.end method

.method public WGSendToQQWithRichPhoto(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 576
    .local p2, "imgFilePaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public WGSendToQQWithVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;
    .param p2, "videoPath"    # Ljava/lang/String;

    .prologue
    .line 579
    return-void
.end method

.method public WGSendToQzoneWithPhoto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "imgFilePath"    # Ljava/lang/String;
    .param p2, "extraScene"    # Ljava/lang/String;
    .param p3, "messageExt"    # Ljava/lang/String;

    .prologue
    .line 776
    return-void
.end method

.method public WGSendToWXWithMiniApp(ILjava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "scene"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "thumbImgData"    # [B
    .param p5, "webpageUrl"    # Ljava/lang/String;
    .param p6, "userName"    # Ljava/lang/String;
    .param p7, "path"    # Ljava/lang/String;
    .param p8, "messageExt"    # Ljava/lang/String;
    .param p9, "messageAction"    # Ljava/lang/String;

    .prologue
    .line 779
    return-void
.end method

.method public WGSendToWeixin(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 0
    .param p1, "scene"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "mediaTagName"    # Ljava/lang/String;
    .param p6, "imgData"    # [B
    .param p7, "imgDataLen"    # I

    .prologue
    .line 477
    return-void
.end method

.method public WGSendToWeixin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "mediaTagName"    # Ljava/lang/String;
    .param p4, "imgData"    # [B
    .param p5, "imgDataLen"    # I
    .param p6, "messageExt"    # Ljava/lang/String;

    .prologue
    .line 485
    return-void
.end method

.method public WGSendToWeixinWithMusic(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "scene"    # Lcom/tencent/msdk/api/eWechatScene;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "musicUrl"    # Ljava/lang/String;
    .param p5, "musicDataUrl"    # Ljava/lang/String;
    .param p6, "mediaTagName"    # Ljava/lang/String;
    .param p7, "imgData"    # [B
    .param p8, "imgDataLen"    # I
    .param p9, "messageExt"    # Ljava/lang/String;
    .param p10, "messageAction"    # Ljava/lang/String;

    .prologue
    .line 532
    return-void
.end method

.method public WGSendToWeixinWithPhoto(ILjava/lang/String;[BI)V
    .locals 0
    .param p1, "scene"    # I
    .param p2, "mediaTagName"    # Ljava/lang/String;
    .param p3, "imgData"    # [B
    .param p4, "imgDataLen"    # I

    .prologue
    .line 489
    return-void
.end method

.method public WGSendToWeixinWithPhoto(ILjava/lang/String;[BILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "scene"    # I
    .param p2, "mediaTagName"    # Ljava/lang/String;
    .param p3, "imgData"    # [B
    .param p4, "imgDataLen"    # I
    .param p5, "messageExt"    # Ljava/lang/String;
    .param p6, "mediaAction"    # Ljava/lang/String;

    .prologue
    .line 493
    return-void
.end method

.method public WGSendToWeixinWithPhotoPath(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "scene"    # I
    .param p2, "mediaTagName"    # Ljava/lang/String;
    .param p3, "imgPath"    # Ljava/lang/String;
    .param p4, "messageExt"    # Ljava/lang/String;
    .param p5, "mediaAction"    # Ljava/lang/String;

    .prologue
    .line 497
    return-void
.end method

.method public WGSendToWeixinWithUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)V
    .locals 0
    .param p1, "scene"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "mediaTagName"    # Ljava/lang/String;
    .param p6, "thumbImgData"    # [B
    .param p7, "thumbImgDataLen"    # I
    .param p8, "messageExt"    # Ljava/lang/String;

    .prologue
    .line 442
    return-void
.end method

.method public WGSendToWeixinWithVideo(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "scene"    # Lcom/tencent/msdk/api/eWechatScene;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "thumbUrl"    # Ljava/lang/String;
    .param p5, "videoUrl"    # Ljava/lang/String;
    .param p6, "filePath"    # Ljava/lang/String;
    .param p7, "mediaTagName"    # Ljava/lang/String;
    .param p8, "mediaAction"    # Ljava/lang/String;
    .param p9, "mediaExt"    # Ljava/lang/String;

    .prologue
    .line 773
    return-void
.end method

.method public WGSetPermission(I)V
    .locals 0
    .param p1, "permissions"    # I

    .prologue
    .line 351
    return-void
.end method

.method public buglyLog(Lcom/tencent/msdk/stat/eBuglyLogLevel;Ljava/lang/String;)V
    .locals 0
    .param p1, "level"    # Lcom/tencent/msdk/stat/eBuglyLogLevel;
    .param p2, "log"    # Ljava/lang/String;

    .prologue
    .line 691
    return-void
.end method

.method public checkApiSupport(Lcom/tencent/msdk/qq/ApiName;)Z
    .locals 1
    .param p1, "api"    # Lcom/tencent/msdk/qq/ApiName;

    .prologue
    .line 628
    const/4 v0, 0x1

    return v0
.end method

.method public checkQQEnv()I
    .locals 1

    .prologue
    .line 396
    const/4 v0, 0x0

    return v0
.end method

.method public createWXGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "unionid"    # Ljava/lang/String;
    .param p2, "chatRoomName"    # Ljava/lang/String;
    .param p3, "chatRoomNickName"    # Ljava/lang/String;

    .prologue
    .line 698
    return-void
.end method

.method public enableCrashReport(ZZ)V
    .locals 0
    .param p1, "bRdmEnable"    # Z
    .param p2, "bMtaEnable"    # Z

    .prologue
    .line 596
    return-void
.end method

.method public feedback(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 651
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/tencent/msdk/WeGame;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getApiDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 613
    const-string v0, ""

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 624
    const-string v0, ""

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/tencent/msdk/WeGame;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getExpiresTime(Ljava/lang/String;)J
    .locals 4
    .param p1, "expiresTime"    # Ljava/lang/String;

    .prologue
    .line 413
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getFirstStartFlag()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/tencent/msdk/WeGame;->mFirstStart:Z

    return v0
.end method

.method public getFlag()I
    .locals 1

    .prologue
    .line 354
    iget v0, p0, Lcom/tencent/msdk/WeGame;->flag:I

    return v0
.end method

.method public getLocalTokenByType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 609
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMSDKKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/tencent/msdk/WeGame;->msdkKey:Ljava/lang/String;

    return-object v0
.end method

.method public getMSDKSVNCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 582
    const-string v0, "94560"

    return-object v0
.end method

.method public getMSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 588
    const-string v0, "3.2.14a"

    return-object v0
.end method

.method public getPlatId()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Lcom/tencent/msdk/WeGame;->mPlatId:I

    return v0
.end method

.method public getTencent()Lcom/tencent/tauth/Tencent;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/tencent/msdk/WeGame;->mTencent:Lcom/tencent/tauth/Tencent;

    return-object v0
.end method

.method public getWxRequestStartTime()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/tencent/msdk/WeGame;->wxRequestStartTime:J

    return-wide v0
.end method

.method public handleCallback(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 348
    return-void
.end method

.method public handlerOnDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p1, "game"    # Landroid/app/Activity;

    .prologue
    .line 764
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 765
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->onDestory(Landroid/app/Activity;)V

    .line 767
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/msdk/WeGame;->onDestory(Landroid/app/Activity;)V

    .line 768
    return-void
.end method

.method public handlerOnPause()V
    .locals 1

    .prologue
    .line 754
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->onPause()V

    .line 757
    :cond_0
    return-void
.end method

.method public handlerOnResume()V
    .locals 1

    .prologue
    .line 749
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->onResume()V

    .line 752
    :cond_0
    return-void
.end method

.method public handlerOnStart()V
    .locals 0

    .prologue
    .line 747
    return-void
.end method

.method public handlerOnStop()V
    .locals 1

    .prologue
    .line 759
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/msdk/api/refactor/Router;->getUnifyMSDK()Lcom/tencent/msdk/api/refactor/MSDKInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/msdk/api/refactor/MSDKInterface;->onStop()V

    .line 762
    :cond_0
    return-void
.end method

.method public isGrayTest()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/tencent/msdk/WeGame;->isGrayTest:I

    return v0
.end method

.method public joinWXGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "unionid"    # Ljava/lang/String;
    .param p2, "chatRoomNickName"    # Ljava/lang/String;

    .prologue
    .line 702
    return-void
.end method

.method public lauchWXPlatForm()V
    .locals 0

    .prologue
    .line 382
    return-void
.end method

.method public logPlatformSDKVersion()V
    .locals 3

    .prologue
    .line 632
    const-string v0, "OpenSDK: 3.3.0.lite"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 633
    const-string v0, "WeixinSDKVersionName: android 5.0.8"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 635
    const-string v0, "WeixinSDKVersionCode: 620757000"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 637
    const-string v0, "Mta: 2.2.2"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WeixinClient: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/WeGame;->mActivity:Landroid/app/Activity;

    const-string v2, "com.tencent.mm"

    .line 640
    invoke-static {v1, v2}, Lcom/tencent/msdk/tools/VersionHelper;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 639
    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QQClient: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/WeGame;->mActivity:Landroid/app/Activity;

    const-string v2, "com.tencent.mobileqq"

    .line 642
    invoke-static {v1, v2}, Lcom/tencent/msdk/tools/VersionHelper;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 641
    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QQGameClient: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/WeGame;->mActivity:Landroid/app/Activity;

    const-string v2, "com.tencent.qqgame"

    .line 645
    invoke-static {v1, v2}, Lcom/tencent/msdk/tools/VersionHelper;->getAppVersionName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 644
    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 648
    return-void
.end method

.method public login(I)V
    .locals 0
    .param p1, "platform"    # I

    .prologue
    .line 400
    return-void
.end method

.method public logout()Z
    .locals 1

    .prologue
    .line 404
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 617
    return-void
.end method

.method public onDestory(Landroid/app/Activity;)V
    .locals 1
    .param p1, "game"    # Landroid/app/Activity;

    .prologue
    .line 129
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/msdk/WeGame;->firstGameActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/WeGame;->firstGameActivity:Landroid/app/Activity;

    .line 132
    :cond_0
    return-void
.end method

.method public reportFunction(ZLjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "isOk"    # Z
    .param p2, "functionName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 727
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public reportMSDKEvent(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "eventFlag"    # I
    .param p3, "eventMsg"    # Ljava/lang/String;

    .prologue
    .line 724
    return-void
.end method

.method public reportMsdkData(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p2, "cmdName"    # Ljava/lang/String;
    .param p3, "openid"    # Ljava/lang/String;
    .param p4, "platid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 712
    .local p1, "content":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public reportUnityData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "cmdName"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 721
    return-void
.end method

.method public sendToQQ(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "scene"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "imgUrl"    # Ljava/lang/String;
    .param p6, "imgUrlLen"    # I
    .param p7, "useNotify"    # Z

    .prologue
    .line 573
    return-void
.end method

.method public sendToWeixinWithUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 0
    .param p1, "scene"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "desc"    # Ljava/lang/String;
    .param p4, "webpageUrl"    # Ljava/lang/String;
    .param p5, "mediaTagName"    # Ljava/lang/String;
    .param p6, "imgData"    # [B
    .param p7, "imgDataLen"    # I

    .prologue
    .line 459
    return-void
.end method

.method protected setExpiresTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "expiresTime"    # Ljava/lang/String;

    .prologue
    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setFirstGameActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 740
    iget-object v0, p0, Lcom/tencent/msdk/WeGame;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 741
    iput-object p1, p0, Lcom/tencent/msdk/WeGame;->firstGameActivity:Landroid/app/Activity;

    .line 743
    :cond_0
    return-void
.end method

.method public setFirstStartFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/tencent/msdk/WeGame;->mFirstStart:Z

    .line 95
    return-void
.end method

.method public setFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 362
    iput p1, p0, Lcom/tencent/msdk/WeGame;->flag:I

    .line 363
    return-void
.end method

.method public setOpenSdkLoginInfo(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "openId"    # Ljava/lang/String;
    .param p2, "atoken"    # Ljava/lang/String;
    .param p3, "actExpired"    # J

    .prologue
    .line 371
    return-void
.end method

.method public setPlatId(I)V
    .locals 0
    .param p1, "platId"    # I

    .prologue
    .line 366
    iput p1, p0, Lcom/tencent/msdk/WeGame;->mPlatId:I

    .line 367
    return-void
.end method

.method public setmActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 733
    iget-object v0, p0, Lcom/tencent/msdk/WeGame;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 734
    iput-object p1, p0, Lcom/tencent/msdk/WeGame;->mActivity:Landroid/app/Activity;

    .line 735
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/WeGame;->mContext:Landroid/content/Context;

    .line 737
    :cond_0
    return-void
.end method

.method public shareToWXGameline([BLjava/lang/String;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "gameExtra"    # Ljava/lang/String;

    .prologue
    .line 730
    return-void
.end method

.method public testSpeed(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 606
    .local p1, "addrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public wakeUpFromHall(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 339
    const/4 v0, 0x0

    return v0
.end method
