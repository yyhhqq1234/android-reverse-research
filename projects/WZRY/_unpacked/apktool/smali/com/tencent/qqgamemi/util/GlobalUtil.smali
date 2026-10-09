.class public Lcom/tencent/qqgamemi/util/GlobalUtil;
.super Ljava/lang/Object;
.source "GlobalUtil.java"


# static fields
.field public static final AVC_MIME_TYPE:Ljava/lang/String; = "video/avc"

.field public static final AVC_TYPE:Ljava/lang/String; = "ENCODER"

.field public static final RECORDPLUGINID:J = 0x236a4b401L

.field private static TAG:Ljava/lang/String;

.field private static globalContext:Landroid/content/Context;

.field private static sGameEngineType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "GlobalUtil"

    sput-object v0, Lcom/tencent/qqgamemi/util/GlobalUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurGameNameVersionCode(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "gamePkgName":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/tencent/qqgamemi/util/GlobalUtil;->getVersionCode(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getEncType()Ljava/lang/String;
    .locals 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 28
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_2

    .line 29
    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v2

    .line 30
    .local v2, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 31
    invoke-static {v0}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v1

    .line 32
    .local v1, "info":Landroid/media/MediaCodecInfo;
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_1

    aget-object v3, v6, v5

    .line 33
    .local v3, "mimeType":Ljava/lang/String;
    sget-object v8, Lcom/tencent/qqgamemi/util/GlobalUtil;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mimeType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<<<"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string/jumbo v8, "video/avc"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 35
    invoke-virtual {v1}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 36
    .local v4, "name":Ljava/lang/String;
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "ENCODER"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_0

    .line 43
    .end local v1    # "info":Landroid/media/MediaCodecInfo;
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    :goto_2
    return-object v4

    .line 32
    .restart local v1    # "info":Landroid/media/MediaCodecInfo;
    .restart local v3    # "mimeType":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 30
    .end local v3    # "mimeType":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    .end local v1    # "info":Landroid/media/MediaCodecInfo;
    :cond_2
    const-string v4, ""

    goto :goto_2
.end method

.method public static getGameEngineType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/tencent/qqgamemi/util/GlobalUtil;->sGameEngineType:Ljava/lang/String;

    return-object v0
.end method

.method public static getGlobalContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/tencent/qqgamemi/util/GlobalUtil;->globalContext:Landroid/content/Context;

    return-object v0
.end method

.method public static final getPixFromDip(FLandroid/content/Context;)I
    .locals 4
    .param p0, "aDipValue"    # F
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 84
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string/jumbo v3, "window"

    .line 85
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 86
    .local v2, "wMgr":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 87
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, p0

    float-to-int v1, v3

    .line 88
    .local v1, "pix":I
    return v1
.end method

.method public static getVersionCode(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 50
    :try_start_0
    const-class v5, Lcom/tencent/qqgamemi/util/GlobalUtil;

    monitor-enter v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 51
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 54
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v4, 0x4000

    invoke-virtual {v2, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 55
    .local v1, "packInfo":Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 56
    .local v3, "versionCode":I
    monitor-exit v5

    .line 66
    .end local v1    # "packInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v3    # "versionCode":I
    :goto_0
    return v3

    .line 57
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v4
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 59
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 66
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    const/4 v3, -0x1

    goto :goto_0

    .line 62
    :catch_1
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    sput-object p0, Lcom/tencent/qqgamemi/util/GlobalUtil;->globalContext:Landroid/content/Context;

    .line 94
    return-void
.end method

.method public static setGameEngineType(Ljava/lang/String;)V
    .locals 0
    .param p0, "gameEngineType"    # Ljava/lang/String;

    .prologue
    .line 102
    sput-object p0, Lcom/tencent/qqgamemi/util/GlobalUtil;->sGameEngineType:Ljava/lang/String;

    .line 103
    return-void
.end method
