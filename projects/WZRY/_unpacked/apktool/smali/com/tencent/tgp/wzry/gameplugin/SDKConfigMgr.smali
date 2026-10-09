.class public Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;
.super Ljava/lang/Object;
.source "SDKConfigMgr.java"


# static fields
.field public static final CONFIG_URL:Ljava/lang/String; = "http://qt.qq.com/lua/tgp_app/get_sdk_config"

.field public static final GAMEHELPER_SMOBA_VER:Ljava/lang/String; = "gamehelper_smoba_ver"

.field public static final GAMEHELPER_VER:Ljava/lang/String; = "gamehelper_ver"

.field public static final GAME_VERSION:Ljava/lang/String; = "game_ver"

.field private static final KEY_CLIENT_PKG:Ljava/lang/String; = "client"

.field private static final KEY_CLIENT_VER:Ljava/lang/String; = "client_ver"

.field private static final KEY_ENABLE:Ljava/lang/String; = "enable"

.field public static final MAX_RETRY:I = 0x2

.field public static final MODEL:Ljava/lang/String; = "model"

.field public static final OS_TYPE:Ljava/lang/String; = "os_type"

.field public static final OS_VERSION:Ljava/lang/String; = "os_ver"

.field public static final PREF_TGP_GAME_PLUGIN:Ljava/lang/String; = "tgp_game_plugin"

.field public static final RAM:Ljava/lang/String; = "ram"

.field private static final TAG:Ljava/lang/String; = "SDKConfigMgr"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurGameVersion:Ljava/lang/Integer;

.field private mGameHelperSmobaVersion:Ljava/lang/Integer;

.field private mGameHelperVersion:Ljava/lang/Integer;

.field private mLoadSuccess:Z

.field private mLoadTimes:I

.field private mLoading:Z

.field private mPref:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mContext:Landroid/content/Context;

    .line 53
    const-string/jumbo v0, "tgp_game_plugin"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mPref:Landroid/content/SharedPreferences;

    .line 54
    invoke-direct {p0}, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->ensureConfigLoaded()V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->needLoadRemoteConfig()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->loadConfigSync(Landroid/content/Context;)V

    return-void
.end method

.method private ensureConfigLoaded()V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->needLoadRemoteConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr$1;

    invoke-direct {v1, p0}, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr$1;-><init>(Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 94
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 96
    :cond_0
    return-void
.end method

.method private getConfigUrl()Ljava/lang/String;
    .locals 8

    .prologue
    .line 99
    const-string v2, "http://qt.qq.com/lua/tgp_app/get_sdk_config"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 100
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "model"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "game_ver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    invoke-direct {p0}, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->getGameVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "gamehelper_ver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    invoke-virtual {p0}, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->getGameHelperAppVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "gamehelper_smoba_ver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    invoke-virtual {p0}, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->getGameHelperSmobaAppVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "os_ver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 104
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "os_type"

    const-string v4, "Android"

    .line 105
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "ram"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    invoke-direct {p0}, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->getRam()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 107
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getGameVersion()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mCurGameVersion:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mCurGameVersion:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 201
    :goto_0
    return v0

    .line 200
    :cond_0
    const-string v0, "com.tencent.tmgp.sgame"

    invoke-virtual {p0, v0}, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->getAppVersion(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mCurGameVersion:Ljava/lang/Integer;

    .line 201
    iget-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mCurGameVersion:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private getRam()J
    .locals 8

    .prologue
    .line 115
    const-wide/16 v4, 0x0

    .line 117
    .local v4, "totalMemory":J
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v3, v6, :cond_0

    .line 118
    iget-object v3, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 119
    .local v0, "actManager":Landroid/app/ActivityManager;
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 120
    .local v2, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 121
    iget-wide v6, v2, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x14

    shr-long v4, v6, v3

    .line 128
    .end local v0    # "actManager":Landroid/app/ActivityManager;
    .end local v2    # "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    :goto_0
    return-wide v4

    .line 123
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Throwable;
    const-string v3, "SDKConfigMgr"

    const-string v6, "getRam"

    invoke-static {v3, v6, v1}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private loadConfigSync(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    const-string v4, "SDKConfigMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start async task to load config, retry time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mLoadTimes:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", loaded:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mLoadSuccess:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", loading:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mLoading:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 137
    :try_start_1
    iget-boolean v4, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mLoading:Z

    if-eqz v4, :cond_0

    .line 138
    const-string v4, "SDKConfigMgr"

    const-string v5, "mLoading config, return"

    invoke-static {v4, v5}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 160
    monitor-enter p0

    .line 161
    const/4 v4, 0x0

    :try_start_2
    iput-boolean v4, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mLoading:Z

    .line 162
    monitor-exit p0

    .line 164
    :goto_0
    return-void

    .line 162
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 141
    :cond_0
    const/4 v4, 0x1

    :try_start_3
    iput-boolean v4, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mLoading:Z

    .line 142
    iget v4, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mLoadTimes:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mLoadTimes:I

    .line 143
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 145
    :try_start_4
    invoke-direct {p0}, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->getConfigUrl()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "configUrl":Ljava/lang/String;
    const-string v4, "SDKConfigMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "configUrl:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-static {p1, v0}, Lcom/tencent/tgp/wzry/gameplugin/HttpUtilForSDK;->download(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    .line 149
    .local v3, "remoteConfig":[B
    if-eqz v3, :cond_1

    .line 150
    new-instance v2, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 151
    .local v2, "json":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->parseConfig(Ljava/lang/String;)V

    .line 152
    monitor-enter p0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 153
    const/4 v4, 0x1

    :try_start_5
    iput-boolean v4, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mLoadSuccess:Z

    .line 154
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 155
    :try_start_6
    const-string v4, "SDKConfigMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "config phonelist:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 160
    .end local v2    # "json":Ljava/lang/String;
    :cond_1
    monitor-enter p0

    .line 161
    const/4 v4, 0x0

    :try_start_7
    iput-boolean v4, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mLoading:Z

    .line 162
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v4

    .line 143
    .end local v0    # "configUrl":Ljava/lang/String;
    .end local v3    # "remoteConfig":[B
    :catchall_2
    move-exception v4

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v4
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 157
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_a
    const-string v4, "SDKConfigMgr"

    const-string v5, "downloadError"

    invoke-static {v4, v5}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 160
    monitor-enter p0

    .line 161
    const/4 v4, 0x0

    :try_start_b
    iput-boolean v4, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mLoading:Z

    .line 162
    monitor-exit p0

    goto :goto_0

    :catchall_3
    move-exception v4

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v4

    .line 154
    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "configUrl":Ljava/lang/String;
    .restart local v2    # "json":Ljava/lang/String;
    .restart local v3    # "remoteConfig":[B
    :catchall_4
    move-exception v4

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    throw v4
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 160
    .end local v0    # "configUrl":Ljava/lang/String;
    .end local v2    # "json":Ljava/lang/String;
    .end local v3    # "remoteConfig":[B
    :catchall_5
    move-exception v4

    monitor-enter p0

    .line 161
    const/4 v5, 0x0

    :try_start_e
    iput-boolean v5, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mLoading:Z

    .line 162
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v4

    :catchall_6
    move-exception v4

    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v4
.end method

.method private declared-synchronized needLoadRemoteConfig()Z
    .locals 2

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mLoadSuccess:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mLoading:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mLoadTimes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private parseConfig(Ljava/lang/String;)V
    .locals 8
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 175
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 176
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v6, "enable"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 177
    .local v3, "enable":Z
    const-string v6, "client"

    const-string v7, "com.tencent.gamehelper.smoba"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "clientPkg":Ljava/lang/String;
    const-string v6, "client_ver"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 179
    .local v5, "version":I
    iget-object v6, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 180
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :try_start_1
    const-string v6, "enable"

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 182
    const-string v6, "client"

    invoke-interface {v2, v6, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 183
    const-string v6, "client_ver"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 185
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 186
    monitor-exit p0

    .line 190
    .end local v0    # "clientPkg":Ljava/lang/String;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "enable":Z
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "version":I
    :goto_0
    return-void

    .line 186
    .restart local v0    # "clientPkg":Ljava/lang/String;
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "enable":Z
    .restart local v4    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "version":I
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 187
    .end local v0    # "clientPkg":Ljava/lang/String;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "enable":Z
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "version":I
    :catch_0
    move-exception v1

    .line 188
    .local v1, "e":Ljava/lang/Throwable;
    const-string v6, "SDKConfigMgr"

    const-string v7, ""

    invoke-static {v6, v7, v1}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .locals 1
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "defVal"    # I

    .prologue
    .line 234
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 236
    .end local p1    # "defVal":I
    :goto_0
    return p1

    .line 235
    .restart local p1    # "defVal":I
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method getAppVersion(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 219
    const/4 v2, 0x0

    .line 221
    .local v2, "version":I
    :try_start_0
    iget-object v3, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 223
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v3, "SDKConfigMgr"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 226
    const/4 v2, 0x0

    goto :goto_0

    .line 227
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    throw v3
.end method

.method public declared-synchronized getClientPkg()Ljava/lang/String;
    .locals 4

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->ensureConfigLoaded()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mPref:Landroid/content/SharedPreferences;

    const-string v2, "client"

    const-string v3, "com.tencent.gamehelper.smoba"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "SDKConfigMgr"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 69
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getClientVersion()I
    .locals 4

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->ensureConfigLoaded()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mPref:Landroid/content/SharedPreferences;

    const-string v2, "client_ver"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    monitor-exit p0

    return v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "SDKConfigMgr"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 78
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getGameHelperAppVersion()I
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mGameHelperVersion:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mGameHelperVersion:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 208
    :goto_0
    return v0

    :cond_0
    const-string v0, "com.tencent.gamehelper"

    invoke-virtual {p0, v0}, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->getAppVersion(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mGameHelperVersion:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method getGameHelperSmobaAppVersion()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mGameHelperSmobaVersion:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mGameHelperSmobaVersion:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 215
    :goto_0
    return v0

    :cond_0
    const-string v0, "com.tencent.gamehelper.smoba"

    invoke-virtual {p0, v0}, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->getAppVersion(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mGameHelperSmobaVersion:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized isPluginEnable()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 59
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->ensureConfigLoaded()V

    .line 60
    iget-object v2, p0, Lcom/tencent/tgp/wzry/gameplugin/SDKConfigMgr;->mPref:Landroid/content/SharedPreferences;

    const-string v3, "enable"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 64
    :goto_0
    monitor-exit p0

    return v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "SDKConfigMgr"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
