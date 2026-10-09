.class public Lcom/tencent/qqgamemi/mgc/core/DebugConfig;
.super Ljava/lang/Object;
.source "DebugConfig.java"


# static fields
.field private static final DEBUG_CONFIG_FILE_NAME:Ljava/lang/String; = "debug.cfg"

.field public static final KEY_IS_DEBUG_ENV:Ljava/lang/String; = "is_debug_env"

.field public static final MGC_CONFIG_9527_FILE:Ljava/lang/String; = "mgc_config9527"

.field private static final TAG:Ljava/lang/String; = "DebugConfig"


# instance fields
.field private volatile isInit:Z

.field private mAssetProperties:Ljava/util/Properties;

.field private mContext:Landroid/content/Context;

.field private mIsAssetPropertieEnabled:Z

.field private mSDProperties:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/tencent/qqgamemi/mgc/core/DebugConfig;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method private ensureInit()V
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/tencent/qqgamemi/mgc/core/DebugConfig;->isInit:Z

    if-eqz v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 93
    :cond_0
    monitor-enter p0

    .line 94
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/qqgamemi/mgc/core/DebugConfig;->isInit:Z

    if-nez v0, :cond_1

    .line 95
    invoke-direct {p0}, Lcom/tencent/qqgamemi/mgc/core/DebugConfig;->init()V

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqgamemi/mgc/core/DebugConfig;->isInit:Z

    .line 98
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private init()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/tencent/qqgamemi/mgc/core/DebugConfig;->loadAssetProperties()V

    .line 39
    invoke-direct {p0}, Lcom/tencent/qqgamemi/mgc/core/DebugConfig;->loadSDProperties()V

    .line 40
    return-void
.end method

.method private loadAssetProperties()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 45
    iget-object v3, p0, Lcom/tencent/qqgamemi/mgc/core/DebugConfig;->mContext:Landroid/content/Context;

    const-string v4, "mgc_config9527"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 46
    .local v2, "preferences":Landroid/content/SharedPreferences;
    sget-boolean v3, Lcom/tencent/qqgamemi/BuildConfig;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "is_debug_env"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 47
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "is_debug_env"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 50
    :cond_0
    const-string v3, "is_debug_env"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/tencent/qqgamemi/mgc/core/DebugConfig;->mIsAssetPropertieEnabled:Z

    .line 51
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    iput-object v3, p0, Lcom/tencent/qqgamemi/mgc/core/DebugConfig;->mAssetProperties:Ljava/util/Properties;

    .line 53
    sget-boolean v3, Lcom/tencent/qqgamemi/BuildConfig;->DEBUG:Z

    if-nez v3, :cond_1

    .line 54
    const-string v3, "DebugConfig"

    const-string v4, "release version disabled debug config"

    invoke-static {v3, v4}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_0
    return-void

    .line 60
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/tencent/qqgamemi/mgc/core/DebugConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "debug.cfg"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 61
    .local v1, "is":Ljava/io/InputStream;
    iget-object v3, p0, Lcom/tencent/qqgamemi/mgc/core/DebugConfig;->mAssetProperties:Ljava/util/Properties;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v4, v1, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    .end local v1    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "DebugConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load asset properties failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadSDProperties()V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 73
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    iput-object v4, p0, Lcom/tencent/qqgamemi/mgc/core/DebugConfig;->mSDProperties:Ljava/util/Properties;

    .line 74
    iget-object v4, p0, Lcom/tencent/qqgamemi/mgc/core/DebugConfig;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/qqgamemi/mgc/core/MGCEnvironment;->getConfigExternalStorageDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 75
    .local v0, "dir":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 76
    new-instance v2, Ljava/io/File;

    const-string v4, "debug.cfg"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 77
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 85
    .end local v2    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 79
    .restart local v2    # "file":Ljava/io/File;
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 80
    .local v3, "is":Ljava/io/InputStream;
    iget-object v4, p0, Lcom/tencent/qqgamemi/mgc/core/DebugConfig;->mSDProperties:Ljava/util/Properties;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/tencent/qqgamemi/mgc/core/DebugConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/tencent/qqgamemi/mgc/core/DebugConfig;->ensureInit()V

    .line 108
    iget-object v1, p0, Lcom/tencent/qqgamemi/mgc/core/DebugConfig;->mSDProperties:Ljava/util/Properties;

    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "property":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/tencent/qqgamemi/mgc/core/DebugConfig;->mIsAssetPropertieEnabled:Z

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/tencent/qqgamemi/mgc/core/DebugConfig;->mAssetProperties:Ljava/util/Properties;

    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    const-string v1, "DebugConfig"

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

    .line 113
    :cond_0
    if-nez v0, :cond_1

    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_1
    move-object p2, v0

    goto :goto_0
.end method
