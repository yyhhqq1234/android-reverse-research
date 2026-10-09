.class public Lcom/tencent/msdk/framework/tools/ChannelUtil;
.super Ljava/lang/Object;
.source "ChannelUtil.java"


# static fields
.field private static final DEFAULT_CHANNEL:Ljava/lang/String; = "00000000"

.field public static final PLATFORMID_3366:Ljava/lang/String; = "3366_m"

.field public static final PLATFORMID_DEFAULT:Ljava/lang/String; = "desktop_m"

.field public static final PLATFORMID_MOBILE:Ljava/lang/String; = "mobile"

.field public static final PLATFORMID_MYAPP:Ljava/lang/String; = "myapp_m"

.field public static final PLATFORMID_QB:Ljava/lang/String; = "qqbrowser_m"

.field public static final PLATFORMID_QQ:Ljava/lang/String; = "qq_m"

.field public static final PLATFORMID_QZONE:Ljava/lang/String; = "qzone_m"

.field public static final PLATFORMID_WX:Ljava/lang/String; = "wechat"

.field private static platformId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "desktop_m"

    sput-object v0, Lcom/tencent/msdk/framework/tools/ChannelUtil;->platformId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChannelId()Ljava/lang/String;
    .locals 9

    .prologue
    .line 39
    const-string v2, ""

    .line 40
    .local v2, "channel":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v5

    iget-object v0, v5, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    .line 41
    .local v0, "act":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageCodePath()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "apkSelfFilePath":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lcom/tencent/msdk/config/ConfigManager;->V2SigningEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 46
    const-string v5, "V2SigningEnabled:true"

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v5

    const/4 v6, 0x1

    const-string v7, "V2SigningEnabled"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lcom/tencent/msdk/WeGame;->reportFunction(ZLjava/lang/String;Ljava/util/Map;)V

    .line 48
    invoke-static {v1}, Lcom/tencent/msdk/apkchannel/ApkChannelTool;->readChannel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "comment":Ljava/lang/String;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Comment: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 54
    move-object v2, v3

    .line 55
    invoke-static {v2}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 69
    .end local v3    # "comment":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v2

    .line 50
    :cond_1
    const-string v5, "V2SigningEnabled:false"

    invoke-static {v5}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 51
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/tencent/msdk/pf/ApkExternalInfoTool;->readChannelId(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .restart local v3    # "comment":Ljava/lang/String;
    goto :goto_0

    .line 58
    .end local v3    # "comment":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 59
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v4}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/Throwable;)V

    .line 63
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    invoke-static {}, Lcom/tencent/msdk/framework/tools/ChannelUtil;->readChannelFromIni()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-static {v2}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    const-string v2, "00000000"

    .line 69
    goto :goto_1
.end method

.method public static getPlatformId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "platformId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tencent/msdk/framework/tools/ChannelUtil;->platformId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/tencent/msdk/framework/tools/ChannelUtil;->platformId:Ljava/lang/String;

    return-object v0
.end method

.method private static readChannelFromIni()Ljava/lang/String;
    .locals 8

    .prologue
    .line 73
    const-string v1, "CHANNEL"

    .line 74
    .local v1, "CHANNLE_ID_KEY":Ljava/lang/String;
    const-string v0, "channel.ini"

    .line 75
    .local v0, "CHANNEL_ID_FILE":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/framework/MSDKEnv;->getInstance()Lcom/tencent/msdk/framework/MSDKEnv;

    move-result-object v7

    iget-object v3, v7, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    .line 78
    .local v3, "ctx":Landroid/app/Activity;
    :try_start_0
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 79
    .local v5, "inputStream":Ljava/io/InputStream;
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    .line 80
    .local v6, "properties":Ljava/util/Properties;
    invoke-virtual {v6, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 81
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 82
    const-string v7, ""

    invoke-virtual {v6, v1, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 86
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "properties":Ljava/util/Properties;
    :goto_0
    return-object v2

    .line 84
    :catch_0
    move-exception v4

    .line 85
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v4}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/Throwable;)V

    .line 86
    const-string v2, ""

    goto :goto_0
.end method

.method public static setPlatformId(Ljava/lang/String;)V
    .locals 2
    .param p0, "pfId"    # Ljava/lang/String;

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlatformId to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 97
    invoke-static {p0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 101
    :cond_0
    sget-object v0, Lcom/tencent/msdk/framework/tools/ChannelUtil;->platformId:Ljava/lang/String;

    const-string v1, "desktop_m"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    sput-object p0, Lcom/tencent/msdk/framework/tools/ChannelUtil;->platformId:Ljava/lang/String;

    .line 105
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "platformId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/tencent/msdk/framework/tools/ChannelUtil;->platformId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setPlatformIdFromIntent(Landroid/os/Bundle;)V
    .locals 2
    .param p0, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 109
    if-nez p0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 113
    :cond_0
    const-string v0, ""

    .line 114
    .local v0, "pfId":Ljava/lang/String;
    const-string v1, "platformId"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 115
    const-string v1, "platformId"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    :cond_1
    :goto_1
    invoke-static {v0}, Lcom/tencent/msdk/framework/tools/ChannelUtil;->setPlatformId(Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_2
    const-string v1, "platform"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 119
    const-string v1, "platform"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 122
    :cond_3
    const-string v1, "current_uin"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 124
    const-string v0, "qq_m"

    goto :goto_1

    .line 125
    :cond_4
    const-string/jumbo v1, "wx_callback"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 127
    const-string/jumbo v0, "wechat"

    goto :goto_1

    .line 128
    :cond_5
    const-string v1, "KEY_REPORT_CHID"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    const-string v0, "mobile"

    goto :goto_1
.end method
