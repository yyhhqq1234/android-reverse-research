.class public Lcom/tencent/msdk/pf/WGPfManager;
.super Ljava/lang/Object;
.source "WGPfManager.java"


# static fields
.field private static final DEFAULT_CHANNEL:Ljava/lang/String; = "00000000"

.field public static final WG_3366_PLATFORM_ID:Ljava/lang/String; = "3366_m"

.field public static final WG_DEFAULT_PLATFORM_ID:Ljava/lang/String; = "desktop_m"

.field public static final WG_MOBILE_PLATFORM_ID:Ljava/lang/String; = "mobile"

.field public static final WG_MYAPP_PLATFORM_ID:Ljava/lang/String; = "myapp_m"

.field public static final WG_QB_PLATFORM_ID:Ljava/lang/String; = "qqbrowser_m"

.field public static final WG_QQ_PLATFORM_ID:Ljava/lang/String; = "qq_m"

.field public static final WG_QZONE_PLATFORM_ID:Ljava/lang/String; = "qzone_m"

.field public static final WG_WX_PLATFORM_ID:Ljava/lang/String; = "wechat"

.field private static volatile instance:Lcom/tencent/msdk/pf/WGPfManager;


# instance fields
.field private channel:Ljava/lang/String;

.field private pf:Ljava/lang/String;

.field private pfKey:Ljava/lang/String;

.field private platformId:Ljava/lang/String;

.field private regChannelId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/msdk/pf/WGPfManager;->instance:Lcom/tencent/msdk/pf/WGPfManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/msdk/pf/WGPfManager;->pf:Ljava/lang/String;

    .line 34
    const-string v1, "desktop_m"

    iput-object v1, p0, Lcom/tencent/msdk/pf/WGPfManager;->platformId:Ljava/lang/String;

    .line 35
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/msdk/pf/WGPfManager;->channel:Ljava/lang/String;

    .line 36
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/msdk/pf/WGPfManager;->regChannelId:Ljava/lang/String;

    .line 37
    const-string v1, ""

    iput-object v1, p0, Lcom/tencent/msdk/pf/WGPfManager;->pfKey:Ljava/lang/String;

    .line 62
    invoke-direct {p0}, Lcom/tencent/msdk/pf/WGPfManager;->getConfigChannelId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/msdk/pf/WGPfManager;->channel:Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v0}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 66
    .local v0, "ret":Lcom/tencent/msdk/api/LoginRet;
    iget-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    const-string v2, "openmobile_android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    iget-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/msdk/pf/WGPfManager;->pf:Ljava/lang/String;

    .line 68
    iget-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->pf_key:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/msdk/pf/WGPfManager;->pfKey:Ljava/lang/String;

    .line 70
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: pf = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/pf/WGPfManager;->pf:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pfKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/msdk/pf/WGPfManager;->pfKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method private getConfigChannelId()Ljava/lang/String;
    .locals 10

    .prologue
    .line 74
    const-string v2, ""

    .line 76
    .local v2, "channel":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 77
    .local v0, "act":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 78
    const-string v6, "00000000"

    move-object v3, v2

    .line 110
    .end local v2    # "channel":Ljava/lang/String;
    .local v3, "channel":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 80
    .end local v3    # "channel":Ljava/lang/String;
    .restart local v2    # "channel":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageCodePath()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "apkSelfFilePath":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lcom/tencent/msdk/config/ConfigManager;->V2SigningEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 85
    const-string v6, "V2SigningEnabled:true"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v6

    const/4 v7, 0x1

    const-string v8, "V2SigningEnabled"

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/tencent/msdk/WeGame;->reportFunction(ZLjava/lang/String;Ljava/util/Map;)V

    .line 87
    invoke-static {v1}, Lcom/tencent/msdk/apkchannel/ApkChannelTool;->readChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "comment":Ljava/lang/String;
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Comment: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 93
    move-object v2, v4

    .line 94
    invoke-static {v2}, Lcom/tencent/msdk/tools/CommonUtil;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    move-object v3, v2

    .end local v2    # "channel":Ljava/lang/String;
    .restart local v3    # "channel":Ljava/lang/String;
    move-object v6, v2

    .line 95
    goto :goto_0

    .line 89
    .end local v3    # "channel":Ljava/lang/String;
    .end local v4    # "comment":Ljava/lang/String;
    .restart local v2    # "channel":Ljava/lang/String;
    :cond_1
    const-string v6, "V2SigningEnabled:false"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 90
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/tencent/msdk/pf/ApkExternalInfoTool;->readChannelId(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .restart local v4    # "comment":Ljava/lang/String;
    goto :goto_1

    .line 97
    .end local v4    # "comment":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 98
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 99
    const-string v6, "Read apk file for channelId Error"

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 103
    .end local v5    # "e":Ljava/io/IOException;
    :cond_2
    invoke-direct {p0}, Lcom/tencent/msdk/pf/WGPfManager;->readChannelFromIni()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-static {v2}, Lcom/tencent/msdk/tools/CommonUtil;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    move-object v3, v2

    .end local v2    # "channel":Ljava/lang/String;
    .restart local v3    # "channel":Ljava/lang/String;
    move-object v6, v2

    .line 105
    goto :goto_0

    .line 109
    .end local v3    # "channel":Ljava/lang/String;
    .restart local v2    # "channel":Ljava/lang/String;
    :cond_3
    const-string v2, "00000000"

    move-object v3, v2

    .end local v2    # "channel":Ljava/lang/String;
    .restart local v3    # "channel":Ljava/lang/String;
    move-object v6, v2

    .line 110
    goto :goto_0
.end method

.method public static getInstance()Lcom/tencent/msdk/pf/WGPfManager;
    .locals 2

    .prologue
    .line 51
    sget-object v0, Lcom/tencent/msdk/pf/WGPfManager;->instance:Lcom/tencent/msdk/pf/WGPfManager;

    if-nez v0, :cond_1

    .line 52
    const-class v1, Lcom/tencent/msdk/pf/WGPfManager;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/tencent/msdk/pf/WGPfManager;->instance:Lcom/tencent/msdk/pf/WGPfManager;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/tencent/msdk/pf/WGPfManager;

    invoke-direct {v0}, Lcom/tencent/msdk/pf/WGPfManager;-><init>()V

    sput-object v0, Lcom/tencent/msdk/pf/WGPfManager;->instance:Lcom/tencent/msdk/pf/WGPfManager;

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    sget-object v0, Lcom/tencent/msdk/pf/WGPfManager;->instance:Lcom/tencent/msdk/pf/WGPfManager;

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private readChannelFromIni()Ljava/lang/String;
    .locals 9

    .prologue
    .line 114
    const-string v1, "CHANNEL"

    .line 115
    .local v1, "CHANNLE_ID_KEY":Ljava/lang/String;
    const-string v0, "channel.ini"

    .line 116
    .local v0, "CHANNEL_ID_FILE":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/msdk/WeGame;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 119
    .local v3, "ctx":Landroid/app/Activity;
    :try_start_0
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 120
    .local v5, "inputStream":Ljava/io/InputStream;
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 121
    .local v6, "properties":Ljava/util/Properties;
    invoke-virtual {v6, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 122
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 123
    const-string v7, ""

    invoke-virtual {v6, v1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 128
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "properties":Ljava/util/Properties;
    :goto_0
    return-object v2

    .line 125
    :catch_0
    move-exception v4

    .line 126
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 127
    const-string v7, "WeGame"

    const-string v8, "CHANNEL ID ERROR"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v2, ""

    goto :goto_0
.end method


# virtual methods
.method public clearPfAndPfKey()V
    .locals 1

    .prologue
    .line 214
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/pf/WGPfManager;->pf:Ljava/lang/String;

    .line 215
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/pf/WGPfManager;->pfKey:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getChannelId:  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/pf/WGPfManager;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/tencent/msdk/pf/WGPfManager;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getPf(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "gameCustomInfo"    # Ljava/lang/String;

    .prologue
    .line 166
    new-instance v0, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v0}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 167
    .local v0, "lr":Lcom/tencent/msdk/api/LoginRet;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPf: = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 168
    invoke-static {p1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    .line 174
    :goto_0
    return-object v1

    .line 171
    :cond_0
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    const-string v1, "gameCustomInfo should not start with \'-\'"

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 174
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPfKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 205
    new-instance v0, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v0}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 206
    .local v0, "lr":Lcom/tencent/msdk/api/LoginRet;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPfKey:  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/tencent/msdk/api/LoginRet;->pf_key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 207
    iget-object v1, v0, Lcom/tencent/msdk/api/LoginRet;->pf_key:Ljava/lang/String;

    return-object v1
.end method

.method public getPlatformId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPlatformId:  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/pf/WGPfManager;->platformId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/tencent/msdk/pf/WGPfManager;->platformId:Ljava/lang/String;

    return-object v0
.end method

.method public getRegChannelId()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 179
    invoke-static {}, Lcom/tencent/msdk/pf/WGPfManager;->getInstance()Lcom/tencent/msdk/pf/WGPfManager;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/tencent/msdk/pf/WGPfManager;->getPf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "pf":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 181
    const-string v2, "00000000"

    .line 193
    :goto_0
    return-object v2

    .line 184
    :cond_0
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "segments":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 186
    const-string v2, "00000000"

    goto :goto_0

    .line 189
    :cond_1
    aget-object v2, v1, v4

    invoke-static {v2}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 190
    const-string v2, "00000000"

    goto :goto_0

    .line 192
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RegChannel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 193
    aget-object v2, v1, v4

    goto :goto_0
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 2
    .param p1, "channelId"    # Ljava/lang/String;

    .prologue
    .line 150
    if-nez p1, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-ge v0, v1, :cond_0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChannelId:  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 154
    iput-object p1, p0, Lcom/tencent/msdk/pf/WGPfManager;->channel:Ljava/lang/String;

    goto :goto_0
.end method

.method public setPlatformId(Ljava/lang/String;)V
    .locals 2
    .param p1, "pfId"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-static {p1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlatformId: = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, Lcom/tencent/msdk/pf/WGPfManager;->platformId:Ljava/lang/String;

    const-string v1, "desktop_m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iput-object p1, p0, Lcom/tencent/msdk/pf/WGPfManager;->platformId:Ljava/lang/String;

    goto :goto_0
.end method

.method public setRegChannelId(Ljava/lang/String;)V
    .locals 2
    .param p1, "regChannelId"    # Ljava/lang/String;

    .prologue
    .line 197
    if-nez p1, :cond_0

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRegChannelId:  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 200
    iput-object p1, p0, Lcom/tencent/msdk/pf/WGPfManager;->regChannelId:Ljava/lang/String;

    goto :goto_0
.end method
