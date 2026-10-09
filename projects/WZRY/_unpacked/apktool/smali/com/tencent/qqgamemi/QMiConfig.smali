.class public Lcom/tencent/qqgamemi/QMiConfig;
.super Ljava/lang/Object;
.source "QMiConfig.java"


# static fields
.field private static final DEFAULTCLIENTTYPE:I = 0x2b

.field private static final instance:Lcom/tencent/qqgamemi/QMiConfig;


# instance fields
.field private COCOS_TYPE:I

.field private final RECORD_CONFIG_FILE_NAME:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private UNITY_TYPE:I

.field private UNREAL_ENGINE_TYPE:I

.field private final clientType:Ljava/lang/String;

.field private final engineType:Ljava/lang/String;

.field private volatile isInit:Z

.field private final jugement:Ljava/lang/String;

.field private jugementTile:Ljava/lang/String;

.field private mAssetProperties:Ljava/util/Properties;

.field private mContext:Landroid/content/Context;

.field private final manual:Ljava/lang/String;

.field private manualTitle:Ljava/lang/String;

.field private momentTitle:Ljava/lang/String;

.field private final moments:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/tencent/qqgamemi/QMiConfig;

    invoke-direct {v0}, Lcom/tencent/qqgamemi/QMiConfig;-><init>()V

    sput-object v0, Lcom/tencent/qqgamemi/QMiConfig;->instance:Lcom/tencent/qqgamemi/QMiConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, "QMiConfig"

    iput-object v0, p0, Lcom/tencent/qqgamemi/QMiConfig;->TAG:Ljava/lang/String;

    .line 18
    const-string v0, "record_config.cfg"

    iput-object v0, p0, Lcom/tencent/qqgamemi/QMiConfig;->RECORD_CONFIG_FILE_NAME:Ljava/lang/String;

    .line 70
    const-string v0, "Manual"

    iput-object v0, p0, Lcom/tencent/qqgamemi/QMiConfig;->manual:Ljava/lang/String;

    .line 71
    const-string v0, "Moments"

    iput-object v0, p0, Lcom/tencent/qqgamemi/QMiConfig;->moments:Ljava/lang/String;

    .line 72
    const-string v0, "Jugement"

    iput-object v0, p0, Lcom/tencent/qqgamemi/QMiConfig;->jugement:Ljava/lang/String;

    .line 73
    const-string v0, "ClientType"

    iput-object v0, p0, Lcom/tencent/qqgamemi/QMiConfig;->clientType:Ljava/lang/String;

    .line 114
    const-string v0, "EngineType"

    iput-object v0, p0, Lcom/tencent/qqgamemi/QMiConfig;->engineType:Ljava/lang/String;

    .line 115
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/qqgamemi/QMiConfig;->UNITY_TYPE:I

    .line 116
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/qqgamemi/QMiConfig;->COCOS_TYPE:I

    .line 117
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/qqgamemi/QMiConfig;->UNREAL_ENGINE_TYPE:I

    .line 22
    return-void
.end method

.method public static getInstance()Lcom/tencent/qqgamemi/QMiConfig;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/tencent/qqgamemi/QMiConfig;->instance:Lcom/tencent/qqgamemi/QMiConfig;

    return-object v0
.end method

.method private loadAssetProperties(Landroid/content/Context;)V
    .locals 5
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 45
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    iput-object v2, p0, Lcom/tencent/qqgamemi/QMiConfig;->mAssetProperties:Ljava/util/Properties;

    .line 48
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "record_config.cfg"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 49
    .local v1, "is":Ljava/io/InputStream;
    iget-object v2, p0, Lcom/tencent/qqgamemi/QMiConfig;->mAssetProperties:Ljava/util/Properties;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, v1, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v1    # "is":Ljava/io/InputStream;
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/tencent/qqgamemi/QMiConfig;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load asset properties failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getClientType(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    const-string v1, "ClientType"

    invoke-virtual {p0, p1, v1}, Lcom/tencent/qqgamemi/QMiConfig;->getProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "clientTypeStr":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 110
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 112
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x2b

    goto :goto_0
.end method

.method public getEnginType(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    const-string v2, "EngineType"

    invoke-virtual {p0, p1, v2}, Lcom/tencent/qqgamemi/QMiConfig;->getProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "engineStr":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/qqgamemi/util/StringUtils;->transStringToSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 121
    .local v1, "engineType":I
    return v1
.end method

.method public getJugementTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/tencent/qqgamemi/QMiConfig;->jugementTile:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 98
    const-string v0, "Jugement"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qqgamemi/QMiConfig;->getProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqgamemi/QMiConfig;->jugementTile:Ljava/lang/String;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqgamemi/QMiConfig;->jugementTile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqgamemi/QMiConfig;->jugementTile:Ljava/lang/String;

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/tencent/qqgamemi/QMiConfig;->jugementTile:Ljava/lang/String;

    return-object v0
.end method

.method public getManualTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/tencent/qqgamemi/QMiConfig;->manualTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 79
    const-string v0, "Manual"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qqgamemi/QMiConfig;->getProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqgamemi/QMiConfig;->manualTitle:Ljava/lang/String;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqgamemi/QMiConfig;->manualTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqgamemi/QMiConfig;->manualTitle:Ljava/lang/String;

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/tencent/qqgamemi/QMiConfig;->manualTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getMomentsTile(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/qqgamemi/QMiConfig;->momentTitle:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 88
    const-string v0, "Moments"

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qqgamemi/QMiConfig;->getProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqgamemi/QMiConfig;->momentTitle:Ljava/lang/String;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/tencent/qqgamemi/QMiConfig;->momentTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/qqgamemi/QMiConfig;->momentTitle:Ljava/lang/String;

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/tencent/qqgamemi/QMiConfig;->momentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 56
    if-nez p1, :cond_0

    .line 58
    :goto_0
    return-object v0

    .line 57
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/qqgamemi/QMiConfig;->init(Landroid/content/Context;)V

    .line 58
    invoke-virtual {p0, p2, v0}, Lcom/tencent/qqgamemi/QMiConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 62
    iget-object v1, p0, Lcom/tencent/qqgamemi/QMiConfig;->mAssetProperties:Ljava/util/Properties;

    if-nez v1, :cond_1

    const/4 p2, 0x0

    .line 68
    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 63
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/tencent/qqgamemi/QMiConfig;->mAssetProperties:Ljava/util/Properties;

    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "property":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 65
    iget-object v1, p0, Lcom/tencent/qqgamemi/QMiConfig;->mAssetProperties:Ljava/util/Properties;

    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/tencent/qqgamemi/QMiConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "try read from assets debug config: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_2
    if-eqz v0, :cond_0

    move-object p2, v0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    if-nez p1, :cond_1

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/tencent/qqgamemi/QMiConfig;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 32
    iput-object p1, p0, Lcom/tencent/qqgamemi/QMiConfig;->mContext:Landroid/content/Context;

    .line 34
    :cond_2
    iget-boolean v0, p0, Lcom/tencent/qqgamemi/QMiConfig;->isInit:Z

    if-nez v0, :cond_0

    .line 35
    monitor-enter p0

    .line 36
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/qqgamemi/QMiConfig;->isInit:Z

    if-nez v0, :cond_3

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qqgamemi/QMiConfig;->loadAssetProperties(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqgamemi/QMiConfig;->isInit:Z

    .line 40
    :cond_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCocos2d(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    invoke-virtual {p0, p1}, Lcom/tencent/qqgamemi/QMiConfig;->getEnginType(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/tencent/qqgamemi/QMiConfig;->COCOS_TYPE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnity(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/tencent/qqgamemi/QMiConfig;->getEnginType(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/tencent/qqgamemi/QMiConfig;->UNITY_TYPE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnrealEngine(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/tencent/qqgamemi/QMiConfig;->getEnginType(Landroid/content/Context;)I

    move-result v0

    iget v1, p0, Lcom/tencent/qqgamemi/QMiConfig;->UNREAL_ENGINE_TYPE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
