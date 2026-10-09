.class public Lcom/tencent/tga/livesdk/TGAPluginManager;
.super Ljava/lang/Object;
.source "TGAPluginManager.java"


# static fields
.field private static final DEVICE_NAME:Ljava/lang/String;

.field private static final DEVICE_VERSION:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "TGAPluginManager"

.field public static final TYPE_NOTIFY_GAME_OPEN_TV:I = 0x4

.field public static final TYPE_NOTIFY_GAME_SEND_INVITE_REQ:I = 0x3

.field public static final TYPE_REFRESH_INVITE_LIST:I = 0x2

.field public static mFriendShipJson:Ljava/lang/String;

.field public static mHeroInfoJson:Ljava/lang/String;

.field private static pluginFolder:Ljava/lang/String;

.field private static sManagerInstance:Lcom/tencent/tga/livesdk/TGAPluginManager;


# instance fields
.field private accountType:I

.field private final activity:Landroid/app/Activity;

.field private volatile apkPath:Ljava/lang/String;

.field private appid:Ljava/lang/String;

.field private areaid:Ljava/lang/String;

.field private volatile available:Z

.field private avatarUrl:Ljava/lang/String;

.field private chatcd:I

.field private configInfo:[B

.field private dlPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

.field private executor:Ljava/util/concurrent/Executor;

.field private font:Landroid/graphics/Typeface;

.field private gameMethod:Ljava/lang/String;

.field private gameObjName:Ljava/lang/String;

.field private gameUid:Ljava/lang/String;

.field private gameVersion:Ljava/lang/String;

.field public gender:I

.field private installed:Z

.field private isFromInvite:Z

.field private isPopTvOpen:Z

.field private isWsqVodOpen:Z

.field private mBannerInfo:Ljava/lang/String;

.field private mHeroMatch:Ljava/lang/String;

.field private mPopBk:Ljava/lang/String;

.field private mTvName:Ljava/lang/String;

.field private matchGuessUrl:Ljava/lang/String;

.field private newApkValid:Z

.field private next_sync_time:I

.field private nikeName:Ljava/lang/String;

.field private openid:Ljava/lang/String;

.field private popup_cd:I

.field private popwindowParam:Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

.field private position:I

.field public rank_level:I

.field private serverIps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private token:Ljava/lang/String;

.field private unityVersion:Ljava/lang/String;

.field private userLevel:I

.field public user_Avatar_Frame:Ljava/lang/String;

.field public user_Avatar_Frame_Icon:Ljava/lang/String;

.field private waitingInstallFinish:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 102
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/tencent/tga/livesdk/TGAPluginManager;->DEVICE_NAME:Ljava/lang/String;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tga/livesdk/TGAPluginManager;->DEVICE_VERSION:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-boolean v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->available:Z

    .line 66
    iput-boolean v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->installed:Z

    .line 67
    iput-boolean v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->waitingInstallFinish:Z

    .line 68
    iput-boolean v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->newApkValid:Z

    .line 70
    iput-boolean v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->isPopTvOpen:Z

    .line 71
    iput-boolean v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->isWsqVodOpen:Z

    .line 76
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->executor:Ljava/util/concurrent/Executor;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->serverIps:Ljava/util/ArrayList;

    .line 87
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->chatcd:I

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->mTvName:Ljava/lang/String;

    .line 93
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->mHeroMatch:Ljava/lang/String;

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->mBannerInfo:Ljava/lang/String;

    .line 95
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->mPopBk:Ljava/lang/String;

    .line 108
    iput-boolean v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->isFromInvite:Z

    .line 111
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    .line 112
    iget-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    const-string/jumbo v1, "tga_live_plugin"

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/tga/livesdk/TGAPluginManager;->pluginFolder:Ljava/lang/String;

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Ex_GameFont.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->font:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->serverIps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/tga/livesdk/TGAPluginManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tencent/tga/livesdk/TGAPluginManager;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/tencent/tga/livesdk/TGAPluginManager;->callMsdkWeb(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->gameObjName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->gameMethod:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->gameUid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->areaid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/tencent/tga/livesdk/TGAPluginManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;

    .prologue
    .line 58
    iget v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->accountType:I

    return v0
.end method

.method static synthetic access$1600(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->matchGuessUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/tencent/tga/livesdk/TGAPluginManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->matchGuessUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/tencent/tga/livesdk/TGAPluginManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->chatcd:I

    return p1
.end method

.method static synthetic access$1802(Lcom/tencent/tga/livesdk/TGAPluginManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->mTvName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/tencent/tga/livesdk/TGAPluginManager;[B)[B
    .locals 0
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;
    .param p1, "x1"    # [B

    .prologue
    .line 58
    iput-object p1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->configInfo:[B

    return-object p1
.end method

.method static synthetic access$200(Lcom/tencent/tga/livesdk/TGAPluginManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/tencent/tga/livesdk/TGAPluginManager;->copyLocalApk(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2002(Lcom/tencent/tga/livesdk/TGAPluginManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->next_sync_time:I

    return p1
.end method

.method static synthetic access$2102(Lcom/tencent/tga/livesdk/TGAPluginManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->mPopBk:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/tencent/tga/livesdk/TGAPluginManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;
    .param p1, "x1"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->popup_cd:I

    return p1
.end method

.method static synthetic access$2300(Lcom/tencent/tga/livesdk/TGAPluginManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->isPopTvOpen:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/tencent/tga/livesdk/TGAPluginManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->isPopTvOpen:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/tencent/tga/livesdk/TGAPluginManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->isWsqVodOpen:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/tencent/tga/livesdk/TGAPluginManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/tencent/tga/livesdk/TGAPluginManager;->reqPopWindow()V

    return-void
.end method

.method static synthetic access$2600(Lcom/tencent/tga/livesdk/TGAPluginManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->available:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/tencent/tga/livesdk/TGAPluginManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;
    .param p1, "x1"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->available:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->apkPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/tencent/tga/livesdk/TGAPluginManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->apkPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/tencent/tga/livesdk/TGAPluginManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/tencent/tga/livesdk/TGAPluginManager;->installApk()V

    return-void
.end method

.method static synthetic access$2900(Lcom/tencent/tga/livesdk/TGAPluginManager;)Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->popwindowParam:Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/tga/livesdk/TGAPluginManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/tencent/tga/livesdk/TGAPluginManager;->copyApkAndFireRequest()V

    return-void
.end method

.method static synthetic access$3002(Lcom/tencent/tga/livesdk/TGAPluginManager;Lcom/ryg/dynamicload/internal/DLPluginPackage;)Lcom/ryg/dynamicload/internal/DLPluginPackage;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;
    .param p1, "x1"    # Lcom/ryg/dynamicload/internal/DLPluginPackage;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->dlPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/tencent/tga/livesdk/TGAPluginManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->waitingInstallFinish:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/tencent/tga/livesdk/TGAPluginManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;

    .prologue
    .line 58
    iget v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->position:I

    return v0
.end method

.method static synthetic access$3300(Lcom/tencent/tga/livesdk/TGAPluginManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/tencent/tga/livesdk/TGAPluginManager;->startActivity(I)V

    return-void
.end method

.method static synthetic access$400()Lcom/tencent/tga/livesdk/TGAPluginManager;
    .locals 1

    .prologue
    .line 58
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->getManager()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/tga/livesdk/TGAPluginManager;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/tencent/tga/livesdk/TGAPluginManager;->callHtml(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$600(Lcom/tencent/tga/livesdk/TGAPluginManager;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->font:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->mHeroMatch:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/tencent/tga/livesdk/TGAPluginManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->mHeroMatch:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/tencent/tga/livesdk/TGAPluginManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->mBannerInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/tencent/tga/livesdk/TGAPluginManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->mBannerInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/tencent/tga/livesdk/TGAPluginManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;
    .param p1, "x1"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/tencent/tga/livesdk/TGAPluginManager;->firePluginInner(I)V

    return-void
.end method

.method public static available()Z
    .locals 2

    .prologue
    .line 129
    const-string v0, "TGAPluginManager"

    const-string v1, "available called"

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/tga/livesdk/TGAPluginManager;->available(I)Z

    move-result v0

    return v0
.end method

.method public static available(I)Z
    .locals 4
    .param p0, "position"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    sparse-switch p0, :sswitch_data_0

    move v1, v2

    .line 153
    :cond_0
    :goto_0
    return v1

    .line 140
    :sswitch_0
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->getManager()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v1

    iput-boolean v2, v1, Lcom/tencent/tga/livesdk/TGAPluginManager;->isFromInvite:Z

    .line 141
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->getManager()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/tencent/tga/livesdk/TGAPluginManager;->available:Z

    goto :goto_0

    .line 143
    :sswitch_1
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->getManager()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v2

    iput-boolean v1, v2, Lcom/tencent/tga/livesdk/TGAPluginManager;->isFromInvite:Z

    .line 144
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->getManager()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v1

    iget-boolean v1, v1, Lcom/tencent/tga/livesdk/TGAPluginManager;->available:Z

    goto :goto_0

    .line 147
    :sswitch_2
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->getManager()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->popwindowParam:Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->getManager()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->popwindowParam:Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    iget-object v3, v3, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->resultstr:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->getManager()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->popwindowParam:Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    iget v3, v3, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->popup_window_entry:I

    if-ne v3, v1, :cond_2

    move v0, v1

    .line 148
    .local v0, "dataAvaible":Z
    :goto_1
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->getManager()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v3

    iget-boolean v3, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->available:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->getManager()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v3

    iget-boolean v3, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->isPopTvOpen:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_0

    :cond_1
    move v1, v2

    goto :goto_0

    .end local v0    # "dataAvaible":Z
    :cond_2
    move v0, v2

    .line 147
    goto :goto_1

    .line 150
    :sswitch_3
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->getManager()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v3

    iget-boolean v3, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->available:Z

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->getManager()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v3

    iget-boolean v3, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->isWsqVodOpen:Z

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 135
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_2
        0x5 -> :sswitch_1
        0x6 -> :sswitch_3
        0x2d -> :sswitch_0
        0x31 -> :sswitch_0
        0x4d -> :sswitch_0
    .end sparse-switch
.end method

.method public static battleInvitation(Ljava/lang/String;)V
    .locals 5
    .param p0, "jsonString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 696
    const-string v2, "TGAPluginManager"

    const-string v3, "battleInvitation"

    invoke-static {v2, v3}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-static {}, Lcom/ryg/DLCallBackManager;->getPluginCallback()Lcom/ryg/DLCallBackManager$Plugin2SDK;

    move-result-object v0

    .line 699
    .local v0, "callback":Lcom/ryg/DLCallBackManager$Plugin2SDK;
    if-eqz v0, :cond_0

    .line 700
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 701
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "Message"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    invoke-interface {v0, v4, v1}, Lcom/ryg/DLCallBackManager$Plugin2SDK;->callback(ILjava/util/Map;)Ljava/lang/Object;

    .line 704
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private callHtml(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 635
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/tga/livesdk/TGAPluginManager$5;

    invoke-direct {v1, p0, p1}, Lcom/tencent/tga/livesdk/TGAPluginManager$5;-><init>(Lcom/tencent/tga/livesdk/TGAPluginManager;Ljava/util/Map;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 671
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 672
    return-void
.end method

.method private callMsdkWeb(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 676
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    :try_start_0
    const-string v3, "MsdkWeb"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 680
    .local v2, "url":Ljava/lang/String;
    const/4 v0, 0x1

    .line 681
    .local v0, "area":I
    iget v3, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->accountType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 682
    const/4 v0, 0x1

    .line 686
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 688
    const-string v3, "TGAPluginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callMsdkWeb url : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    sget-object v3, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->eMSDK_SCREENDIR_LANDSCAPE:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    invoke-static {v2, v3}, Lcom/tencent/msdk/api/WGPlatform;->WGOpenUrl(Ljava/lang/String;Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 690
    .end local v0    # "area":I
    .end local v2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 691
    .local v1, "e":Ljava/lang/Throwable;
    const-string v3, "TGAPluginManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callMsdkWeb error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 684
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "area":I
    .restart local v2    # "url":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x3

    goto :goto_1
.end method

.method private copyApkAndFireRequest()V
    .locals 9

    .prologue
    .line 753
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/tencent/tga/livesdk/TGAPluginManager;->pluginFolder:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/baseApk.apk"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 755
    .local v0, "apkFile":Ljava/io/File;
    :try_start_0
    iget-object v7, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "livesdk/plugin.apk"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 756
    .local v1, "is":Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 757
    .local v3, "os":Ljava/io/OutputStream;
    invoke-static {v1, v3}, Lcom/tencent/tga/livesdk/uitl/FileUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    .line 758
    const-string v7, "TGAPluginManager"

    const-string v8, "copy baseApk finish, start reqUpdate"

    invoke-static {v7, v8}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 760
    .local v4, "path":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/tga/livesdk/uitl/MD5;->digest(Ljava/io/File;)[B

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/tga/livesdk/uitl/MD5;->bufferToString([B)Ljava/lang/String;

    move-result-object v2

    .line 761
    .local v2, "md5":Ljava/lang/String;
    const/4 v5, 0x0

    .line 762
    .local v5, "pi":Landroid/content/pm/PackageInfo;
    iget-object v7, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 763
    iget-object v7, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 766
    :cond_0
    const-string v6, "0"

    .line 767
    .local v6, "versionCode":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 768
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 769
    iget-object v7, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    const/4 v8, 0x1

    invoke-static {v7, v4, v6, v8, v2}, Lcom/tencent/tga/livesdk/pluginmanger/SpManager;->setNewApkInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 770
    iget v7, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v7, Lcom/loopj/android/tgahttp/Configs/Configs;->plugin_version:I

    .line 773
    :cond_1
    iput-object v4, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->apkPath:Ljava/lang/String;

    .line 774
    invoke-direct {p0, v2, v6}, Lcom/tencent/tga/livesdk/TGAPluginManager;->reqUpdate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    .end local v1    # "is":Ljava/io/InputStream;
    .end local v2    # "md5":Ljava/lang/String;
    .end local v3    # "os":Ljava/io/OutputStream;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    .end local v6    # "versionCode":Ljava/lang/String;
    :goto_0
    return-void

    .line 776
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private copyLocalApk(Ljava/lang/String;)V
    .locals 10
    .param p1, "localApkPath"    # Ljava/lang/String;

    .prologue
    .line 784
    new-instance v0, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/tencent/tga/livesdk/TGAPluginManager;->pluginFolder:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/baseApk.apk"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 786
    .local v0, "apkFile":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 787
    .local v2, "is":Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 788
    .local v4, "os":Ljava/io/OutputStream;
    invoke-static {v2, v4}, Lcom/tencent/tga/livesdk/uitl/FileUtils;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    .line 789
    const-string v8, "TGAPluginManager"

    const-string v9, "copy local baseApk finish, start reqUpdate"

    invoke-static {v8, v9}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 791
    .local v5, "path":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/tga/livesdk/uitl/MD5;->digest(Ljava/io/File;)[B

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/tga/livesdk/uitl/MD5;->bufferToString([B)Ljava/lang/String;

    move-result-object v3

    .line 792
    .local v3, "md5":Ljava/lang/String;
    const-string v7, "0"

    .line 793
    .local v7, "versionCode":Ljava/lang/String;
    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 794
    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v5, v9}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 796
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v6, :cond_0

    .line 797
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 798
    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    const/4 v9, 0x1

    invoke-static {v8, v5, v7, v9, v3}, Lcom/tencent/tga/livesdk/pluginmanger/SpManager;->setNewApkInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 801
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    iput-object v5, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->apkPath:Ljava/lang/String;

    .line 802
    invoke-direct {p0, v3, v7}, Lcom/tencent/tga/livesdk/TGAPluginManager;->reqUpdate(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "md5":Ljava/lang/String;
    .end local v4    # "os":Ljava/io/OutputStream;
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "versionCode":Ljava/lang/String;
    :goto_0
    return-void

    .line 804
    :catch_0
    move-exception v1

    .line 806
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "TGAPluginManager"

    const-string v9, "copyLocalApk exception"

    invoke-static {v8, v9}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private downloadApk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "md5"    # Ljava/lang/String;

    .prologue
    .line 1015
    return-void
.end method

.method public static firePlugin(Ljava/lang/String;I)Z
    .locals 6
    .param p0, "token"    # Ljava/lang/String;
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 351
    :try_start_0
    const-string v2, "TGAPluginManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "firePlugin time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-static {}, Lcom/tencent/tga/livesdk/uitl/NoDoubleClickUtils;->isDoubleClick()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 366
    :goto_0
    return v1

    .line 356
    :cond_0
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->getManager()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v2

    invoke-direct {v2, p0, p1}, Lcom/tencent/tga/livesdk/TGAPluginManager;->firePluginInner(Ljava/lang/String;I)V

    .line 358
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->setCallBack()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 362
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->getManager()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/tencent/tga/livesdk/TGAPluginManager;->callUnity(I)V

    .line 364
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private firePluginInner(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 472
    iget-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->token:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/tencent/tga/livesdk/TGAPluginManager;->firePluginInner(Ljava/lang/String;I)V

    .line 473
    return-void
.end method

.method private firePluginInner(Ljava/lang/String;I)V
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 478
    const-string v0, "TGAPluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "firePluginInner....."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->available:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const-string v0, "TGAPluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iput-object p1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->token:Ljava/lang/String;

    .line 481
    iput p2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->position:I

    .line 482
    iget-boolean v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->available:Z

    if-nez v0, :cond_0

    .line 494
    :goto_0
    return-void

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->dlPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    if-nez v0, :cond_1

    .line 487
    const-string v0, "TGAPluginManager"

    const-string/jumbo v1, "waiting install"

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->waitingInstallFinish:Z

    .line 489
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/tga/livesdk/TGAPluginManager;->installApk(Z)V

    goto :goto_0

    .line 491
    :cond_1
    invoke-direct {p0, p2}, Lcom/tencent/tga/livesdk/TGAPluginManager;->startActivity(I)V

    goto :goto_0
.end method

.method private static declared-synchronized getManager()Lcom/tencent/tga/livesdk/TGAPluginManager;
    .locals 2

    .prologue
    .line 121
    const-class v1, Lcom/tencent/tga/livesdk/TGAPluginManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tga/livesdk/TGAPluginManager;->sManagerInstance:Lcom/tencent/tga/livesdk/TGAPluginManager;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-direct {v0}, Lcom/tencent/tga/livesdk/TGAPluginManager;-><init>()V

    sput-object v0, Lcom/tencent/tga/livesdk/TGAPluginManager;->sManagerInstance:Lcom/tencent/tga/livesdk/TGAPluginManager;

    .line 124
    :cond_0
    sget-object v0, Lcom/tencent/tga/livesdk/TGAPluginManager;->sManagerInstance:Lcom/tencent/tga/livesdk/TGAPluginManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getNativeVideoView(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/WindowManager$LayoutParams;)Lcom/ryg/dynamicload/internal/DLNativeView;
    .locals 6
    .param p0, "parent"    # Landroid/view/ViewGroup;
    .param p1, "vid"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "isFullscreen"    # Z
    .param p4, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 370
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->getManager()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tga/livesdk/TGAPluginManager;->getVideoView(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/WindowManager$LayoutParams;)Lcom/ryg/dynamicload/internal/DLNativeView;

    move-result-object v0

    return-object v0
.end method

.method public static init(Ljava/lang/String;)V
    .locals 15
    .param p0, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 213
    :try_start_0
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x12

    if-lt v10, v11, :cond_0

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x64

    if-le v10, v11, :cond_1

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->initSwitch()V

    .line 218
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->getManager()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v3

    .line 221
    .local v3, "manager":Lcom/tencent/tga/livesdk/TGAPluginManager;
    const-string v10, "\\\\"

    const-string v11, "\\\\\\\\"

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 223
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 224
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v10, "appid"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->appid:Ljava/lang/String;

    .line 225
    const-string/jumbo v10, "token"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->token:Ljava/lang/String;

    .line 226
    const-string v10, "accountType"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->accountType:I

    .line 227
    const-string v10, "areaid"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "areaid_temp":Ljava/lang/String;
    const-string v10, "openid"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 229
    .local v7, "openid_temp":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 230
    :cond_2
    const-string v10, "TGAPluginManager"

    const-string v11, "areaid or openid is null"

    invoke-static {v10, v11}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 340
    .end local v0    # "areaid_temp":Ljava/lang/String;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "manager":Lcom/tencent/tga/livesdk/TGAPluginManager;
    .end local v7    # "openid_temp":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 341
    .local v1, "e":Ljava/lang/Throwable;
    const-string v10, "TGAPluginManager"

    const-string v11, "Configs.Debug error"

    invoke-static {v10, v11}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 233
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "areaid_temp":Ljava/lang/String;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "manager":Lcom/tencent/tga/livesdk/TGAPluginManager;
    .restart local v7    # "openid_temp":Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->areaid:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->openid:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 234
    const-string v10, "TGAPluginManager"

    const-string v11, "areaid and openid \u548c\u4e0a\u6b21\u521d\u59cb\u5316\u76f8\u540c\uff0c\u91cd\u590d\u7684\u521d\u59cb\u5316"

    invoke-static {v10, v11}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 237
    :cond_4
    const-string v10, "TGAPluginManager"

    const-string/jumbo v11, "\u65b0\u7684\u521d\u59cb\u5316"

    invoke-static {v10, v11}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v10, "areaid"

    const-string v11, "-1"

    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->areaid:Ljava/lang/String;

    .line 240
    const-string v10, "openid"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->openid:Ljava/lang/String;

    .line 241
    const-string v10, "nikeName"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->nikeName:Ljava/lang/String;

    .line 242
    const-string v10, "avatarUrl"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->avatarUrl:Ljava/lang/String;

    .line 243
    const-string v10, "gameVersion"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->gameVersion:Ljava/lang/String;

    .line 244
    const-string/jumbo v10, "unityVersion"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->unityVersion:Ljava/lang/String;

    .line 245
    const-string v10, "gameUid"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->gameUid:Ljava/lang/String;

    .line 246
    const-string v10, "gameCallObjName"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->gameObjName:Ljava/lang/String;

    .line 247
    const-string v10, "gameCallObjMethd"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->gameMethod:Ljava/lang/String;

    .line 248
    const-string/jumbo v10, "userLevel"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->userLevel:I

    .line 249
    const-string v10, "Rank_Level"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->rank_level:I

    .line 250
    const-string v10, "User_Avatar_Frame"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->user_Avatar_Frame:Ljava/lang/String;

    .line 251
    const-string v10, "Gender"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->gender:I

    .line 252
    const-string v10, "User_Avatar_Frame_Icon"

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->user_Avatar_Frame_Icon:Ljava/lang/String;

    .line 255
    invoke-static {}, Lcom/tencent/tga/livesdk/SgameConfig;->initConfig()V

    .line 257
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->initHttpConfig()V

    .line 259
    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lcom/tencent/tga/livesdk/TGAPluginManager$1;

    invoke-direct {v11, v3}, Lcom/tencent/tga/livesdk/TGAPluginManager$1;-><init>(Lcom/tencent/tga/livesdk/TGAPluginManager;)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 273
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 274
    const-string v10, "TGAPluginManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "manager.gameObjName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->gameObjName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " manager.gameMethod = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->gameMethod:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v10, "TGAPluginManager"

    const-string v11, "appid = %s ,token = %s ,accountType = %s ,areaid = %s ,openid = %s ,nikeName = %s ,faceUrl = %s ,gameVersion = %s  unityVersion = %s  uid = %s gameObjName = %s gameMethd = %s  manager.userLevel = %s"

    const/16 v12, 0xd

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->appid:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    iget-object v14, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->token:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    iget v14, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->accountType:I

    .line 276
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    iget-object v14, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->areaid:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x4

    iget-object v14, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->openid:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x5

    iget-object v14, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->nikeName:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x6

    iget-object v14, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->avatarUrl:Ljava/lang/String;

    aput-object v14, v12, v13

    const/4 v13, 0x7

    iget-object v14, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->gameVersion:Ljava/lang/String;

    aput-object v14, v12, v13

    const/16 v13, 0x8

    iget-object v14, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->unityVersion:Ljava/lang/String;

    aput-object v14, v12, v13

    const/16 v13, 0x9

    iget-object v14, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->gameUid:Ljava/lang/String;

    aput-object v14, v12, v13

    const/16 v13, 0xa

    iget-object v14, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->gameObjName:Ljava/lang/String;

    aput-object v14, v12, v13

    const/16 v13, 0xb

    iget-object v14, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->gameMethod:Ljava/lang/String;

    aput-object v14, v12, v13

    const/16 v13, 0xc

    iget v14, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->userLevel:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 275
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    sget-boolean v10, Lcom/loopj/android/tgahttp/Configs/Configs;->isLocalUpdate:Z

    if-eqz v10, :cond_5

    .line 279
    const-string v10, "TGAPluginManager"

    const-string v11, "local update"

    invoke-static {v10, v11}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v8, Lcom/tencent/tga/livesdk/TGAPluginManager$2;

    invoke-direct {v8, v3}, Lcom/tencent/tga/livesdk/TGAPluginManager$2;-><init>(Lcom/tencent/tga/livesdk/TGAPluginManager;)V

    .line 299
    .local v8, "r":Ljava/lang/Runnable;
    iget-object v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v10, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 303
    .end local v8    # "r":Ljava/lang/Runnable;
    :cond_5
    iget-object v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    invoke-static {v10}, Lcom/tencent/tga/livesdk/pluginmanger/SpManager;->getNewApkFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, "newApkFile":Ljava/lang/String;
    iget-object v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    invoke-static {v10}, Lcom/tencent/tga/livesdk/pluginmanger/SpManager;->newHostVersion(Landroid/content/Context;)Z

    move-result v6

    .line 305
    .local v6, "newHostVersion":Z
    if-nez v6, :cond_6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_7

    .line 307
    :cond_6
    const-string v10, "TGAPluginManager"

    const-string v11, "apk file not found, start copy"

    invoke-static {v10, v11}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    new-instance v8, Lcom/tencent/tga/livesdk/TGAPluginManager$3;

    invoke-direct {v8, v3}, Lcom/tencent/tga/livesdk/TGAPluginManager$3;-><init>(Lcom/tencent/tga/livesdk/TGAPluginManager;)V

    .line 314
    .restart local v8    # "r":Ljava/lang/Runnable;
    iget-object v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v10, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 322
    .end local v8    # "r":Ljava/lang/Runnable;
    :cond_7
    const-string v10, "TGAPluginManager"

    const-string v11, "apk file found, sending reqUpdate"

    invoke-static {v10, v11}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    invoke-static {v10}, Lcom/tencent/tga/livesdk/pluginmanger/SpManager;->isNewApkValid(Landroid/content/Context;)Z

    move-result v10

    iput-boolean v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->newApkValid:Z

    .line 327
    iget-boolean v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->newApkValid:Z

    if-eqz v10, :cond_8

    .line 328
    iget-object v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    invoke-static {v10}, Lcom/tencent/tga/livesdk/pluginmanger/SpManager;->getNewApkFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->apkPath:Ljava/lang/String;

    .line 330
    iget-object v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    invoke-static {v10}, Lcom/tencent/tga/livesdk/pluginmanger/SpManager;->getNewApkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 331
    .local v9, "version":Ljava/lang/String;
    iget-object v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    invoke-static {v10}, Lcom/tencent/tga/livesdk/pluginmanger/SpManager;->getNewApkMd5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 338
    .local v4, "md5":Ljava/lang/String;
    :goto_1
    invoke-direct {v3, v4, v9}, Lcom/tencent/tga/livesdk/TGAPluginManager;->reqUpdate(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 333
    .end local v4    # "md5":Ljava/lang/String;
    .end local v9    # "version":Ljava/lang/String;
    :cond_8
    const-string v9, "0"

    .line 334
    .restart local v9    # "version":Ljava/lang/String;
    const-string v4, ""

    .line 335
    .restart local v4    # "md5":Ljava/lang/String;
    const/4 v10, 0x0

    iput-boolean v10, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->available:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static initFriendShip(Ljava/lang/String;)V
    .locals 4
    .param p0, "friendShipJson"    # Ljava/lang/String;

    .prologue
    .line 709
    :try_start_0
    const-string v1, "TGAPluginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "friendShipJson : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    sput-object p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->mFriendShipJson:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    :goto_0
    return-void

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TGAPluginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "friendShipJson  error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static initHeroInfo(Ljava/lang/String;)V
    .locals 4
    .param p0, "heroInfoJson"    # Ljava/lang/String;

    .prologue
    .line 719
    :try_start_0
    const-string v1, "TGAPluginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "heroInfoJson : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    sput-object p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->mHeroInfoJson:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :goto_0
    return-void

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TGAPluginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "heroInfoJson  error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static initHttpConfig()V
    .locals 4

    .prologue
    .line 202
    :try_start_0
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->getManager()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/tga/livesdk/TGAPluginManager;->gameUid:Ljava/lang/String;

    sput-object v1, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy;->UID:Ljava/lang/String;

    .line 203
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->getManager()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/tga/livesdk/TGAPluginManager;->openid:Ljava/lang/String;

    sput-object v1, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy;->OPENID:Ljava/lang/String;

    .line 204
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->getManager()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/tga/livesdk/TGAPluginManager;->areaid:Ljava/lang/String;

    sput-object v1, Lcom/loopj/android/tgahttp/httputil/HttpBaseUrlWithParameterProxy;->AREAID:Ljava/lang/String;

    .line 205
    const/4 v1, 0x6

    sput v1, Lcom/loopj/android/tgahttp/Configs/Configs;->CLIENT_TYPE:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 207
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "TGAPluginManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initHttpConfig error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static initNet()V
    .locals 4

    .prologue
    .line 732
    const-string v2, "TGAPluginManager"

    const-string v3, "initNet"

    invoke-static {v2, v3}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    invoke-static {}, Lcom/ryg/DLCallBackManager;->getPluginCallback()Lcom/ryg/DLCallBackManager$Plugin2SDK;

    move-result-object v0

    .line 734
    .local v0, "callback":Lcom/ryg/DLCallBackManager$Plugin2SDK;
    if-eqz v0, :cond_0

    .line 735
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 736
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "Message"

    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->getManager()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v3

    iget-object v3, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    const/4 v2, 0x2

    invoke-interface {v0, v2, v1}, Lcom/ryg/DLCallBackManager$Plugin2SDK;->callback(ILjava/util/Map;)Ljava/lang/Object;

    .line 739
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public static initSwitch()V
    .locals 7

    .prologue
    .line 159
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "tencent"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "tga"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "liveplugin"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "config.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "CFG_PATH":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/tga/livesdk/uitl/FileUtils;->ReadTxtFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "config":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 164
    .local v2, "mJSONConfig":Lorg/json/JSONObject;
    const-string v4, "Debug"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 165
    const/4 v4, 0x1

    sput-boolean v4, Lcom/loopj/android/tgahttp/Configs/Configs;->Debug:Z

    .line 166
    const/4 v4, 0x1

    sput-boolean v4, Lcom/ryg/utils/LOG;->Debug:Z

    .line 169
    :cond_0
    const-string v4, "isUseTestIP"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 170
    const/4 v4, 0x1

    sput-boolean v4, Lcom/loopj/android/tgahttp/Configs/Configs;->isUseTestIP:Z

    .line 173
    :cond_1
    const-string v4, "isTencentVideoOpen"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 174
    const/4 v4, 0x1

    sput-boolean v4, Lcom/loopj/android/tgahttp/Configs/Configs;->isTXPlayerLog:Z

    .line 177
    :cond_2
    const-string v4, "isLocalUpdate"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 178
    const/4 v4, 0x1

    sput-boolean v4, Lcom/loopj/android/tgahttp/Configs/Configs;->isLocalUpdate:Z

    .line 181
    :cond_3
    const-string v4, "isOnline"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 182
    const/4 v4, 0x1

    sput-boolean v4, Lcom/loopj/android/tgahttp/Configs/Configs;->isOnline:Z

    .line 185
    :cond_4
    const-string v4, "isP2P"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 186
    const/4 v4, 0x1

    sput-boolean v4, Lcom/loopj/android/tgahttp/Configs/Configs;->isP2P:Z

    .line 189
    :cond_5
    const-string v4, "isUseNewNet"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 190
    const/4 v4, 0x1

    sput-boolean v4, Lcom/loopj/android/tgahttp/Configs/Configs;->isUseNewNet:Z

    .line 193
    :cond_6
    const-string v4, "TGAPluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u6d4b\u8bd5\u5f00\u5173\u914d\u7f6e \uff1a "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    .end local v1    # "config":Ljava/lang/String;
    .end local v2    # "mJSONConfig":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v3

    .line 195
    .local v3, "throwable":Ljava/lang/Throwable;
    const-string v4, "TGAPluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u6d4b\u8bd5\u5f00\u5173\u914d\u7f6e\u8bfb\u53d6\u5931\u8d25 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private installApk()V
    .locals 1

    .prologue
    .line 1018
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/tencent/tga/livesdk/TGAPluginManager;->installApk(Z)V

    .line 1019
    return-void
.end method

.method private installApk(Z)V
    .locals 3
    .param p1, "async"    # Z

    .prologue
    .line 1022
    iget-boolean v1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->available:Z

    if-nez v1, :cond_1

    .line 1063
    :cond_0
    :goto_0
    return-void

    .line 1025
    :cond_1
    iget-boolean v1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->installed:Z

    if-nez v1, :cond_0

    .line 1028
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->installed:Z

    .line 1029
    const-string v1, "TGAPluginManager"

    const-string v2, "install APk"

    invoke-static {v1, v2}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    iget-object v1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->apkPath:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 1031
    const-string v1, "TGAPluginManager"

    const-string v2, "apk Path is null"

    invoke-static {v1, v2}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->available:Z

    goto :goto_0

    .line 1035
    :cond_2
    new-instance v0, Lcom/tencent/tga/livesdk/TGAPluginManager$8;

    invoke-direct {v0, p0}, Lcom/tencent/tga/livesdk/TGAPluginManager$8;-><init>(Lcom/tencent/tga/livesdk/TGAPluginManager;)V

    .line 1058
    .local v0, "r":Ljava/lang/Runnable;
    if-eqz p1, :cond_3

    .line 1059
    iget-object v1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1061
    :cond_3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private reqPopWindow()V
    .locals 6

    .prologue
    .line 918
    iget-object v3, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->gameVersion:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->appid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->openid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 957
    :cond_0
    :goto_0
    return-void

    .line 920
    :cond_1
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->getManager()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v3

    iget-boolean v3, v3, Lcom/tencent/tga/livesdk/TGAPluginManager;->isPopTvOpen:Z

    if-eqz v3, :cond_0

    .line 922
    const-string v0, ""

    .line 923
    .local v0, "clientPluginMd5":Ljava/lang/String;
    const-string v1, ""

    .line 924
    .local v1, "clientPluginVer":Ljava/lang/String;
    new-instance v2, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy;

    invoke-direct {v2}, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy;-><init>()V

    .line 925
    .local v2, "popwindowProxy":Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy;
    new-instance v3, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    invoke-direct {v3}, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;-><init>()V

    iput-object v3, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->popwindowParam:Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    .line 926
    iget-object v3, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->popwindowParam:Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    iget v4, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->accountType:I

    iput v4, v3, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->accountType:I

    .line 927
    iget-object v3, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->popwindowParam:Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    const/4 v4, 0x6

    iput v4, v3, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->clientType:I

    .line 928
    iget-object v3, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->popwindowParam:Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    iget-object v4, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->areaid:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->areaId:Ljava/lang/String;

    .line 929
    iget-object v3, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->popwindowParam:Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    const-string/jumbo v4, "wzry"

    iput-object v4, v3, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->gameId:Ljava/lang/String;

    .line 930
    iget-object v3, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->popwindowParam:Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    iget-object v4, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->gameVersion:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->game_ver:Ljava/lang/String;

    .line 931
    iget-object v3, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->popwindowParam:Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    iput-object v0, v3, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->pluginMd5:Ljava/lang/String;

    .line 932
    iget-object v3, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->popwindowParam:Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    iput-object v1, v3, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->pluginVer:Ljava/lang/String;

    .line 933
    iget-object v3, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->popwindowParam:Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    sget-object v4, Lcom/tencent/tga/livesdk/TGAPluginManager;->DEVICE_NAME:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->model:Ljava/lang/String;

    .line 934
    iget-object v3, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->popwindowParam:Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    sget-object v4, Lcom/tencent/tga/livesdk/TGAPluginManager;->DEVICE_VERSION:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->os_ver:Ljava/lang/String;

    .line 935
    iget-object v3, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->popwindowParam:Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    iget-object v4, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->appid:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->appid:Ljava/lang/String;

    .line 936
    iget-object v3, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->popwindowParam:Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    iget-object v4, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->gameUid:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->uid:Ljava/lang/String;

    .line 937
    iget-object v3, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->popwindowParam:Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    iget-object v4, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->openid:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->openid:Ljava/lang/String;

    .line 938
    iget-object v3, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    new-instance v4, Lcom/tencent/tga/livesdk/TGAPluginManager$7;

    invoke-direct {v4, p0}, Lcom/tencent/tga/livesdk/TGAPluginManager$7;-><init>(Lcom/tencent/tga/livesdk/TGAPluginManager;)V

    iget-object v5, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->popwindowParam:Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    invoke-virtual {v2, v3, v4, v5}, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy;->postReq(Landroid/content/Context;Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy$Callback;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private reqUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "clientPluginMd5"    # Ljava/lang/String;
    .param p2, "clientPluginVer"    # Ljava/lang/String;

    .prologue
    .line 812
    :try_start_0
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->getManager()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/tencent/tga/livesdk/pluginmanger/SpManager;->getNewApkVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/loopj/android/tgahttp/Configs/Configs;->plugin_version:I

    .line 813
    sget-boolean v2, Lcom/loopj/android/tgahttp/Configs/Configs;->Debug:Z

    if-eqz v2, :cond_0

    .line 814
    const-string v2, "TGAPluginManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plugin_version"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/loopj/android/tgahttp/Configs/Configs;->plugin_version:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->gameVersion:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->appid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->openid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 915
    :cond_1
    :goto_1
    return-void

    .line 822
    :cond_2
    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->getManager()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v2

    iget-boolean v2, v2, Lcom/tencent/tga/livesdk/TGAPluginManager;->available:Z

    if-nez v2, :cond_1

    .line 825
    const-string v2, "TGAPluginManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/tencent/tga/livesdk/TGAPluginManager;->DEVICE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " start reqUpdate clientPluginVer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    new-instance v1, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy;

    invoke-direct {v1}, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy;-><init>()V

    .line 827
    .local v1, "updateProxy":Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy;
    new-instance v0, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;

    invoke-direct {v0}, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;-><init>()V

    .line 828
    .local v0, "updateParam":Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;
    iget v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->accountType:I

    iput v2, v0, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->accountType:I

    .line 829
    const/4 v2, 0x6

    iput v2, v0, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->clientType:I

    .line 830
    iget-object v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->areaid:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->areaId:Ljava/lang/String;

    .line 831
    const-string/jumbo v2, "wzry"

    iput-object v2, v0, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->gameId:Ljava/lang/String;

    .line 832
    iget-object v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->gameVersion:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->game_ver:Ljava/lang/String;

    .line 833
    iput-object p1, v0, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->pluginMd5:Ljava/lang/String;

    .line 834
    iput-object p2, v0, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->pluginVer:Ljava/lang/String;

    .line 835
    sget-object v2, Lcom/tencent/tga/livesdk/TGAPluginManager;->DEVICE_NAME:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->model:Ljava/lang/String;

    .line 836
    sget-object v2, Lcom/tencent/tga/livesdk/TGAPluginManager;->DEVICE_VERSION:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->os_ver:Ljava/lang/String;

    .line 837
    iget-object v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->appid:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->appid:Ljava/lang/String;

    .line 838
    iget-object v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->gameUid:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->uid:Ljava/lang/String;

    .line 839
    iget-object v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->openid:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->openid:Ljava/lang/String;

    .line 840
    iget-object v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->unityVersion:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->unity_ver:Ljava/lang/String;

    .line 841
    iget v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->userLevel:I

    iput v2, v0, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;->user_level:I

    .line 843
    iget-object v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/tencent/tga/livesdk/TGAPluginManager$6;

    invoke-direct {v3, p0, v0}, Lcom/tencent/tga/livesdk/TGAPluginManager$6;-><init>(Lcom/tencent/tga/livesdk/TGAPluginManager;Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;)V

    invoke-virtual {v1, v2, v3, v0}, Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy;->postReq(Landroid/content/Context;Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy$Callback;Ljava/lang/Object;)V

    .line 914
    const-string v2, "TGAPluginManager"

    const-string v3, "end reqUpdate"

    invoke-static {v2, v3}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 815
    .end local v0    # "updateParam":Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy$Param;
    .end local v1    # "updateProxy":Lcom/tencent/tga/livesdk/update/proxy/UpdateProxy;
    :catch_0
    move-exception v2

    goto/16 :goto_0
.end method

.method private static setCallBack()V
    .locals 1

    .prologue
    .line 386
    new-instance v0, Lcom/tencent/tga/livesdk/TGAPluginManager$4;

    invoke-direct {v0}, Lcom/tencent/tga/livesdk/TGAPluginManager$4;-><init>()V

    invoke-static {v0}, Lcom/ryg/DLCallBackManager;->setCallBack(Lcom/ryg/DLCallBackManager$SDK2Plugin;)V

    .line 469
    return-void
.end method

.method public static setFriendShip()V
    .locals 3

    .prologue
    .line 742
    const-string v1, "TGAPluginManager"

    const-string v2, "setFriendShip"

    invoke-static {v1, v2}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-static {}, Lcom/ryg/DLCallBackManager;->getPluginCallback()Lcom/ryg/DLCallBackManager$Plugin2SDK;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 744
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 745
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "CallPluginInitFriendShipList"

    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->getManager()Lcom/tencent/tga/livesdk/TGAPluginManager;

    sget-object v2, Lcom/tencent/tga/livesdk/TGAPluginManager;->mFriendShipJson:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    invoke-static {}, Lcom/ryg/DLCallBackManager;->getPluginCallback()Lcom/ryg/DLCallBackManager$Plugin2SDK;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {v1, v2, v0}, Lcom/ryg/DLCallBackManager$Plugin2SDK;->callback(ILjava/util/Map;)Ljava/lang/Object;

    .line 750
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    return-void

    .line 748
    :cond_0
    const-string v1, "TGAPluginManager"

    const-string/jumbo v2, "updateInvitationList DLCallBackManager.getPluginCallback() is null"

    invoke-static {v1, v2}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startActivity(I)V
    .locals 11
    .param p1, "position"    # I

    .prologue
    .line 497
    iget-object v7, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->dlPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    if-nez v7, :cond_0

    .line 498
    const-string v7, "TGAPluginManager"

    const-string v8, "load apk failed, cannot fire plugin"

    invoke-static {v7, v8}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    :goto_0
    return-void

    .line 501
    :cond_0
    iget-object v4, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->dlPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    .line 504
    .local v4, "pluginPackage":Lcom/ryg/dynamicload/internal/DLPluginPackage;
    const-string v7, "TGAPluginManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->accountType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " token "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/ryg/dynamicload/internal/DLPluginPackage;->defaultActivity:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    sget v7, Lcom/loopj/android/tgahttp/Configs/Configs;->UNITY_TO_POP:I

    if-ne p1, v7, :cond_2

    .line 508
    iget-boolean v7, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->isPopTvOpen:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->popwindowParam:Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->popwindowParam:Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    iget-object v7, v7, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->resultstr:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->popwindowParam:Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    iget v7, v7, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->popup_window_entry:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 509
    const-string v7, "TGAPluginManager"

    const-string/jumbo v8, "\u8bf7\u6c42\u5f39\u7a97\u7535\u89c6\u53f0\u4fe1\u606f\u4e2d\u5f00\u5173\u6253\u5f00"

    invoke-static {v7, v8}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const/4 v2, 0x0

    .line 512
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->popwindowParam:Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    iget-object v8, v8, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->resultstr:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    const-string v7, "TGAPluginManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "json: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v7, "openid"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->openid:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 515
    const-string v7, "areaid"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->areaid:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 516
    const-string/jumbo v7, "uid"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->gameUid:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 518
    const-string v7, "banner_switch"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->popwindowParam:Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    iget v8, v8, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->banner_switch:I

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 519
    const-string v7, "HeroInfoJson"

    sget-object v8, Lcom/tencent/tga/livesdk/TGAPluginManager;->mHeroInfoJson:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 520
    const-string v7, "FriendShipJson"

    sget-object v8, Lcom/tencent/tga/livesdk/TGAPluginManager;->mFriendShipJson:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 521
    const-string v7, "pop_bk"

    invoke-static {}, Lcom/tencent/tga/livesdk/TGAPluginManager;->getManager()Lcom/tencent/tga/livesdk/TGAPluginManager;

    move-result-object v8

    iget-object v8, v8, Lcom/tencent/tga/livesdk/TGAPluginManager;->mPopBk:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 522
    const-string v7, "popup_cd"

    iget v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->popup_cd:I

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 523
    iget-object v7, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/ryg/dynamicload/internal/DLPluginManager;->getInstance(Landroid/content/Context;)Lcom/ryg/dynamicload/internal/DLPluginManager;

    move-result-object v7

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/ryg/dynamicload/internal/DLPluginManager;->playWindowPlayer(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 528
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_1
    const-string v7, "TGAPluginManager"

    const-string/jumbo v8, "\u914d\u7f6e\u4e2d\u5f39\u7a97\u7535\u89c6\u53f0\u5f00\u542f"

    invoke-static {v7, v8}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, "e":Ljava/lang/Throwable;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 526
    const-string v7, "TGAPluginManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "json :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 530
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    const-string v7, "TGAPluginManager"

    const-string/jumbo v8, "\u914d\u7f6e\u4e2d\u5f39\u7a97\u7535\u89c6\u53f0\u5173\u95ed"

    invoke-static {v7, v8}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 535
    :cond_2
    sget-boolean v7, Lcom/loopj/android/tgahttp/Configs/Configs;->isOnline:Z

    if-eqz v7, :cond_4

    .line 536
    const/4 v2, 0x0

    .line 538
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :try_start_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 539
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :try_start_3
    const-string v7, "AccountType"

    iget v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->accountType:I

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 540
    const-string v7, "AccountToken"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->token:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 541
    const-string v7, "appid"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->appid:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 542
    const-string v7, "areaid"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->areaid:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 543
    const-string v7, "openid"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->openid:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 544
    const-string v7, "nikeName"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->nikeName:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 545
    const-string v7, "avatarUrl"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 546
    const-string v7, "gameVersion"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->gameVersion:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 547
    const-string/jumbo v7, "unityVersion"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->unityVersion:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 548
    const-string v7, "matchGuessUrl"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->matchGuessUrl:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 549
    const-string v7, "position"

    invoke-virtual {v3, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 550
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 551
    .local v6, "sb":Ljava/lang/StringBuffer;
    iget-object v7, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->serverIps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 552
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 574
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :catch_1
    move-exception v0

    move-object v2, v3

    .line 575
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 576
    const-string v7, "TGAPluginManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "json :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 554
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    :cond_3
    :try_start_4
    const-string v7, "serverIps"

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 555
    const-string v7, "chatcd"

    iget v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->chatcd:I

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 556
    const-string v7, "gameUid"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->gameUid:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 557
    const-string/jumbo v7, "userLevel"

    iget v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->userLevel:I

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 558
    const-string/jumbo v7, "tv_name"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->mTvName:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 559
    const-string v7, "next_sync_time"

    iget v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->next_sync_time:I

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 560
    const-string v7, "matchGuessUrl"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->matchGuessUrl:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 561
    const-string v7, "mHeroMatch"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->mHeroMatch:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 562
    const-string v7, "mBannerInfo"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->mBannerInfo:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 564
    const-string v7, "config_info"

    new-instance v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->configInfo:[B

    const-string/jumbo v10, "utf-8"

    invoke-direct {v8, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 566
    const-string v7, "rank_level"

    iget v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->rank_level:I

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 567
    const-string/jumbo v7, "user_Avatar_Frame"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->user_Avatar_Frame:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 568
    const-string v7, "gender"

    iget v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->gender:I

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 569
    const-string/jumbo v7, "user_Avatar_Frame_Icon"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->user_Avatar_Frame_Icon:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 570
    const-string v7, "isFromInvite"

    iget-boolean v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->isFromInvite:Z

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 572
    const-string v7, "TGAPluginManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "start tgaplugin json: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    iget-object v7, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/ryg/dynamicload/internal/DLPluginManager;->getInstance(Landroid/content/Context;)Lcom/ryg/dynamicload/internal/DLPluginManager;

    move-result-object v7

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/ryg/dynamicload/internal/DLPluginManager;->startLivePlayer(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-object v2, v3

    .line 577
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    goto/16 :goto_0

    .line 579
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :cond_4
    new-instance v1, Lcom/ryg/dynamicload/internal/DLIntent;

    iget-object v7, v4, Lcom/ryg/dynamicload/internal/DLPluginPackage;->packageName:Ljava/lang/String;

    iget-object v8, v4, Lcom/ryg/dynamicload/internal/DLPluginPackage;->defaultActivity:Ljava/lang/String;

    invoke-direct {v1, v7, v8}, Lcom/ryg/dynamicload/internal/DLIntent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    .local v1, "intent":Lcom/ryg/dynamicload/internal/DLIntent;
    const-string v7, "AccountType"

    iget v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->accountType:I

    invoke-virtual {v1, v7, v8}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 581
    const-string v7, "AccountToken"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->token:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    const-string v7, "appid"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->appid:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 583
    const-string v7, "areaid"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->areaid:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    const-string v7, "openid"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->openid:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    const-string v7, "nikeName"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->nikeName:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    const-string v7, "avatarUrl"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    const-string v7, "gameVersion"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->gameVersion:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    const-string/jumbo v7, "unityVersion"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->unityVersion:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    const-string v7, "position"

    invoke-virtual {v1, v7, p1}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 590
    const-string v7, "serverIps"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->serverIps:Ljava/util/ArrayList;

    invoke-virtual {v1, v7, v8}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 591
    const-string v7, "chatcd"

    iget v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->chatcd:I

    invoke-virtual {v1, v7, v8}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 592
    const-string v7, "gameUid"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->gameUid:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    const-string v7, "matchGuessUrl"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->matchGuessUrl:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    const-string/jumbo v7, "userLevel"

    iget v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->userLevel:I

    invoke-virtual {v1, v7, v8}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 595
    const-string/jumbo v7, "tv_name"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->mTvName:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 596
    const-string v7, "config_info"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->configInfo:[B

    invoke-virtual {v1, v7, v8}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 597
    const-string v7, "next_sync_time"

    iget v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->next_sync_time:I

    invoke-virtual {v1, v7, v8}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 598
    const-string v7, "mHeroMatch"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->mHeroMatch:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    const-string v7, "mBannerInfo"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->mBannerInfo:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 601
    const-string v7, "rank_level"

    iget v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->rank_level:I

    invoke-virtual {v1, v7, v8}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 602
    const-string/jumbo v7, "user_Avatar_Frame"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->user_Avatar_Frame:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    const-string v7, "gender"

    iget v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->gender:I

    invoke-virtual {v1, v7, v8}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 604
    const-string/jumbo v7, "user_Avatar_Frame_Icon"

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->user_Avatar_Frame_Icon:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    const-string v7, "isFromInvite"

    iget-boolean v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->isFromInvite:Z

    invoke-virtual {v1, v7, v8}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 607
    iget-object v7, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/ryg/dynamicload/internal/DLPluginManager;->getInstance(Landroid/content/Context;)Lcom/ryg/dynamicload/internal/DLPluginManager;

    move-result-object v7

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    invoke-virtual {v7, v8, v1}, Lcom/ryg/dynamicload/internal/DLPluginManager;->startPluginActivity(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;)I

    goto/16 :goto_0

    .line 574
    .end local v1    # "intent":Lcom/ryg/dynamicload/internal/DLIntent;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_2
    move-exception v0

    goto/16 :goto_4

    .line 524
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    goto/16 :goto_2
.end method

.method public static startInviteWindowFromPlugin(Ljava/lang/String;)V
    .locals 2
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 621
    const-string v0, "TGAPluginManager"

    const-string v1, "android startPluginInviteWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return-void
.end method

.method public static startInviteWindowFromUnity(Ljava/lang/String;)V
    .locals 2
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 616
    const-string v0, "TGAPluginManager"

    const-string v1, "android startPluginInviteWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    return-void
.end method

.method public static updateInvitationList(Ljava/lang/String;)V
    .locals 3
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 727
    const-string v0, "TGAPluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateInvitationList : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    return-void
.end method


# virtual methods
.method public callUnity(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 629
    iget-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->gameObjName:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->gameMethod:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{\"type\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    sget-boolean v0, Lcom/loopj/android/tgahttp/Configs/Configs;->Debug:Z

    if-eqz v0, :cond_0

    .line 631
    const-string v0, "TGAPluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnitySendMessage finish "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->gameObjName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->gameMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg {\"type\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :cond_0
    return-void
.end method

.method public getVideoView(Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/WindowManager$LayoutParams;)Lcom/ryg/dynamicload/internal/DLNativeView;
    .locals 10
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "vid"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "isFullscreen"    # Z
    .param p5, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->dlPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    if-nez v0, :cond_0

    .line 375
    const-string v0, "TGAPluginManager"

    const-string v1, "load apk failed, cannot fire plugin"

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const/4 v0, 0x0

    .line 378
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ryg/dynamicload/internal/DLPluginManager;->getInstance(Landroid/content/Context;)Lcom/ryg/dynamicload/internal/DLPluginManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->activity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->openid:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->gameUid:Ljava/lang/String;

    iget-object v9, p0, Lcom/tencent/tga/livesdk/TGAPluginManager;->areaid:Ljava/lang/String;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v9}, Lcom/ryg/dynamicload/internal/DLPluginManager;->startNativePlayer(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/WindowManager$LayoutParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ryg/dynamicload/internal/DLNativeView;

    move-result-object v0

    goto :goto_0
.end method
