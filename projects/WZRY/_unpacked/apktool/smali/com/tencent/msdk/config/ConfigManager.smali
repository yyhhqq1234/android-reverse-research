.class public Lcom/tencent/msdk/config/ConfigManager;
.super Ljava/lang/Object;
.source "ConfigManager.java"


# static fields
.field private static final ACCEPT_SERVER_INTERVAL_KEY:Ljava/lang/String; = "ACCEPT_SERVER_INTERVAL"

.field private static final AD_LAYOUT_PAUSE_DEFAULT_NAME:Ljava/lang/String; = "AD_LAYOUT_PAUSE_DEFAULT"

.field private static final AD_LAYOUT_PAUSE_SHOW_NAME:Ljava/lang/String; = "AD_LAYOUT_PAUSE_SHOW"

.field private static final AD_LAYOUT_STOP_DEFAULT_NAME:Ljava/lang/String; = "AD_LAYOUT_STOP_DEFAULT"

.field private static final AD_LAYOUT_STOP_SHOW_NAME:Ljava/lang/String; = "AD_LAYOUT_STOP_SHOW"

.field private static final AD_NEED_CONFIG_LAYOUT:Ljava/lang/String; = "AD_NEED_CONFIG_LAYOUT"

.field private static final AD_PAUSE_BTN_NUM:Ljava/lang/String; = "AD_PAUSE"

.field private static final AD_STOP_BTN_NUM:Ljava/lang/String; = "AD_STOP"

.field private static final AD_TIME:Ljava/lang/String; = "MSDK_AD_TIME"

.field private static final CHECK_BACKGROUND_KEY:Ljava/lang/String; = "CHECK_BACKGROUND_TIME"

.field private static final CHECK_TOKEN_TIME_KEY:Ljava/lang/String; = "CHECK_TOKEN_TIME"

.field private static final CLOSE_BUGLY_KEY:Ljava/lang/String; = "CLOSE_BUGLY_REPORT"

.field private static final CPP_MSDK_VERSION:Ljava/lang/String; = "CPP_MSDK_VERSION"

.field private static final DEFAULT_BTN_VALUE:I = 0x2

.field private static final ENV_DEBUG_URL_KEY:Ljava/lang/String; = "MSDK_ENV_DEBUG_URL"

.field private static final ENV_DEV_URL_KEY:Ljava/lang/String; = "MSDK_ENV_DEV_URL"

.field private static final ENV_KEY:Ljava/lang/String; = "MSDK_ENV"

.field private static final ENV_RELEASE_URL_KEY:Ljava/lang/String; = "MSDK_ENV_RELEASE_URL"

.field private static final ENV_TEST_URL_KEY:Ljava/lang/String; = "MSDK_ENV_TEST_URL"

.field private static final ENV_TYPE_DEBUG:Ljava/lang/String; = "debug"

.field private static final ENV_TYPE_DEV:Ljava/lang/String; = "dev"

.field private static final ENV_TYPE_RELEASE:Ljava/lang/String; = "release"

.field private static final ENV_TYPE_TEST:Ljava/lang/String; = "test"

.field private static final IS_BETA_KEY:Ljava/lang/String; = "BETA"

.field private static final IS_REALTIME_REPORT:Ljava/lang/String; = "IS_REALTIME"

.field public static final KEY_GRAY_TEST:Ljava/lang/String; = "GRAY_TEST_SWITCH"

.field public static final KEY_REAL_NAME_AUTH:Ljava/lang/String; = "MSDK_REAL_NAME_AUTH_SWITCH"

.field public static final KEY_V2SIGNING_ENABLED:Ljava/lang/String; = "V2SIGNING_ENABLED"

.field public static final KEY_WX_SCOPE:Ljava/lang/String; = "SCOPE"

.field private static final KILL_WEBVIEW_PROCESS_KEY:Ljava/lang/String; = "KILL_WEBVIEW_PROCESS"

.field private static final MAT_ID_KEY:Ljava/lang/String; = "TEST_MAT_ID"

.field private static final NEED_AD_KEY:Ljava/lang/String; = "MSDK_AD"

.field private static final NEED_EVENT_REPORT:Ljava/lang/String; = "EVENT_REPORT"

.field private static final NEED_GET_IP:Ljava/lang/String; = "GET_IP"

.field private static final NEED_HTTPDNS:Ljava/lang/String; = "HTTP_DNS"

.field public static final NEED_LOCAL_LOG:Ljava/lang/String; = "localLog"

.field private static final NEED_MTA_KEY:Ljava/lang/String; = "MTA_SWITCH"

.field private static final NEED_NOTICE_KEY:Ljava/lang/String; = "needNotice"

.field private static final NEED_PUSH_KEY:Ljava/lang/String; = "PUSH"

.field public static final NEED_SAVE_UPDATE:Ljava/lang/String; = "SAVE_UPDATE"

.field private static final NEED_STAT_KEY:Ljava/lang/String; = "STAT_SWITCH"

.field private static final NEED_STAT_LOG_KEY:Ljava/lang/String; = "STAT_LOG"

.field private static final NEED_WXTOKEN_REFRESH:Ljava/lang/String; = "WXTOKEN_REFRESH"

.field private static final NOTICE_TIME:Ljava/lang/String; = "noticeTime"

.field private static final POLLING_INTERVAL_KEY:Ljava/lang/String; = "TEST_POLLING_INTERVAL"

.field private static final POLLING_URL_KEY:Ljava/lang/String; = "POLLING_URL"

.field private static final PUSH_URL_KEY:Ljava/lang/String; = "PUSH_URL"

.field private static adConfigFile:Ljava/lang/String; = null

.field public static configFileName:Ljava/lang/String; = null

.field private static final domainKey:Ljava/lang/String; = "MSDK_URL"

.field private static mUrlMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static properties:Ljava/util/Properties;

.field private static sPushConfigFile:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "msdkconfig.ini"

    sput-object v0, Lcom/tencent/msdk/config/ConfigManager;->configFileName:Ljava/lang/String;

    .line 40
    const-string v0, "pushconfig.ini"

    sput-object v0, Lcom/tencent/msdk/config/ConfigManager;->sPushConfigFile:Ljava/lang/String;

    .line 41
    const-string v0, "adconfig.ini"

    sput-object v0, Lcom/tencent/msdk/config/ConfigManager;->adConfigFile:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/msdk/config/ConfigManager;->mUrlMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static V2SigningEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 218
    const-string v0, "V2SIGNING_ENABLED"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/msdk/config/ConfigManager;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getADButtonNum(Landroid/content/Context;)[I
    .locals 12
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    .line 286
    new-array v2, v8, [I

    .line 287
    .local v2, "numArray":[I
    aput v8, v2, v9

    .line 288
    aput v8, v2, v10

    .line 290
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    sget-object v7, Lcom/tencent/msdk/config/ConfigManager;->adConfigFile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 291
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 292
    .local v4, "properties":Ljava/util/Properties;
    invoke-virtual {v4, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 293
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 294
    const-string v6, "AD_PAUSE"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 295
    .local v3, "pauseNumStr":Ljava/lang/String;
    const-string v6, "AD_STOP"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 296
    .local v5, "stopNumStr":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 297
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 299
    :cond_0
    if-eqz v5, :cond_1

    .line 300
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 303
    :cond_1
    const/4 v6, 0x0

    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v2, v6

    .line 304
    const/4 v6, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v2, v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 312
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "pauseNumStr":Ljava/lang/String;
    .end local v4    # "properties":Ljava/util/Properties;
    .end local v5    # "stopNumStr":Ljava/lang/String;
    :goto_0
    aget v6, v2, v9

    if-eq v6, v8, :cond_2

    aget v6, v2, v9

    if-eq v6, v11, :cond_2

    .line 313
    aput v8, v2, v9

    .line 315
    :cond_2
    aget v6, v2, v10

    if-eq v6, v8, :cond_3

    aget v6, v2, v10

    if-eq v6, v11, :cond_3

    .line 316
    aput v8, v2, v10

    .line 318
    :cond_3
    return-object v2

    .line 305
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "pauseNumStr":Ljava/lang/String;
    .restart local v4    # "properties":Ljava/util/Properties;
    .restart local v5    # "stopNumStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 308
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "pauseNumStr":Ljava/lang/String;
    .end local v4    # "properties":Ljava/util/Properties;
    .end local v5    # "stopNumStr":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 309
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 310
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Please check your "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/tencent/msdk/config/ConfigManager;->adConfigFile:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " file under /assets/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getApiDomain(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 184
    invoke-static {p0}, Lcom/tencent/msdk/config/ConfigManager;->getMSDKEnv(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "envType":Ljava/lang/String;
    sget-object v3, Lcom/tencent/msdk/config/ConfigManager;->mUrlMap:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 187
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/tencent/msdk/config/ConfigManager;->mUrlMap:Ljava/util/Map;

    .line 189
    :cond_0
    const-string v1, ""

    .line 190
    .local v1, "url":Ljava/lang/String;
    sget-object v3, Lcom/tencent/msdk/config/ConfigManager;->mUrlMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    sget-object v3, Lcom/tencent/msdk/config/ConfigManager;->mUrlMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "url":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 193
    .restart local v1    # "url":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v2, v1

    .end local v1    # "url":Ljava/lang/String;
    .local v2, "url":Ljava/lang/String;
    move-object v3, v1

    .line 211
    :goto_0
    return-object v3

    .line 196
    .end local v2    # "url":Ljava/lang/String;
    .restart local v1    # "url":Ljava/lang/String;
    :cond_2
    const-string v3, "release"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 197
    const-string v3, "MSDK_ENV_RELEASE_URL"

    invoke-static {p0, v3}, Lcom/tencent/msdk/config/ConfigManager;->getMsdkUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 208
    const-string v3, ""

    move-object v2, v1

    .end local v1    # "url":Ljava/lang/String;
    .restart local v2    # "url":Ljava/lang/String;
    goto :goto_0

    .line 198
    .end local v2    # "url":Ljava/lang/String;
    .restart local v1    # "url":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "test"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 199
    const-string v3, "MSDK_ENV_TEST_URL"

    invoke-static {p0, v3}, Lcom/tencent/msdk/config/ConfigManager;->getMsdkUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 200
    :cond_4
    const-string v3, "debug"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 201
    const-string v3, "MSDK_ENV_DEBUG_URL"

    invoke-static {p0, v3}, Lcom/tencent/msdk/config/ConfigManager;->getMsdkUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 202
    :cond_5
    const-string v3, "dev"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 203
    const-string v3, "MSDK_ENV_DEV_URL"

    invoke-static {p0, v3}, Lcom/tencent/msdk/config/ConfigManager;->getMsdkUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 205
    :cond_6
    const-string/jumbo v3, "url is empty please check msdkconfig.ini file and add ENV_KEY=test or ENV_KEY=release"

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 210
    :cond_7
    sget-object v3, Lcom/tencent/msdk/config/ConfigManager;->mUrlMap:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .end local v1    # "url":Ljava/lang/String;
    .restart local v2    # "url":Ljava/lang/String;
    move-object v3, v1

    .line 211
    goto :goto_0
.end method

.method public static getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dufault"    # Z

    .prologue
    .line 157
    invoke-static {p0}, Lcom/tencent/msdk/config/ConfigManager;->loadConfig(Landroid/content/Context;)V

    .line 158
    sget-object v1, Lcom/tencent/msdk/config/ConfigManager;->properties:Ljava/util/Properties;

    if-eqz v1, :cond_1

    .line 159
    sget-object v1, Lcom/tencent/msdk/config/ConfigManager;->properties:Ljava/util/Properties;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 161
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value is Closed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 172
    .end local v0    # "value":Ljava/lang/String;
    .end local p2    # "dufault":Z
    :cond_1
    :goto_0
    return p2

    .line 164
    .restart local v0    # "value":Ljava/lang/String;
    .restart local p2    # "dufault":Z
    :cond_2
    const-string/jumbo v1, "true"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 165
    const/4 p2, 0x1

    goto :goto_0

    .line 166
    :cond_3
    const-string v1, "false"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public static getCheckBackgroundTime(Landroid/content/Context;)I
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 339
    const-string v0, "CHECK_BACKGROUND_TIME"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/msdk/config/ConfigManager;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCheckTokenTime(Landroid/content/Context;)I
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 334
    const-string v0, "CHECK_TOKEN_TIME"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/msdk/config/ConfigManager;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dufault"    # I

    .prologue
    .line 137
    invoke-static {p0}, Lcom/tencent/msdk/config/ConfigManager;->loadConfig(Landroid/content/Context;)V

    .line 138
    sget-object v3, Lcom/tencent/msdk/config/ConfigManager;->properties:Ljava/util/Properties;

    if-eqz v3, :cond_1

    .line 139
    sget-object v3, Lcom/tencent/msdk/config/ConfigManager;->properties:Ljava/util/Properties;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 141
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value is default!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 151
    .end local v2    # "value":Ljava/lang/String;
    .end local p2    # "dufault":I
    :cond_1
    :goto_0
    return p2

    .line 145
    .restart local v2    # "value":Ljava/lang/String;
    .restart local p2    # "dufault":I
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, "real":I
    move p2, v1

    .line 146
    goto :goto_0

    .line 147
    .end local v1    # "real":I
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static getMSDKEnv(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 179
    const-string v1, "MSDK_ENV"

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/tencent/msdk/config/ConfigManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "envType":Ljava/lang/String;
    return-object v0
.end method

.method private static getMsdkUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 222
    const-string v2, ""

    .line 224
    .local v2, "url":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 225
    .local v1, "r":Landroid/content/res/Resources;
    const-string/jumbo v4, "string"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 226
    .local v3, "urlid":I
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 231
    .end local v1    # "r":Landroid/content/res/Resources;
    .end local v3    # "urlid":I
    :goto_0
    return-object v2

    .line 227
    :catch_0
    move-exception v0

    .line 228
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v4, "not found msdk url file please update MSDKLibrary project"

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getNoticeTime(Landroid/content/Context;)I
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0xa

    .line 323
    const-string v2, "noticeTime"

    invoke-static {p0, v2, v1}, Lcom/tencent/msdk/config/ConfigManager;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 325
    .local v0, "time":I
    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    .line 328
    .end local v0    # "time":I
    :goto_0
    return v0

    .restart local v0    # "time":I
    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "dufault"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-static {p0}, Lcom/tencent/msdk/config/ConfigManager;->loadConfig(Landroid/content/Context;)V

    .line 125
    sget-object v1, Lcom/tencent/msdk/config/ConfigManager;->properties:Ljava/util/Properties;

    if-eqz v1, :cond_2

    .line 126
    sget-object v1, Lcom/tencent/msdk/config/ConfigManager;->properties:Ljava/util/Properties;

    invoke-virtual {v1, p1, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 128
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No value Configed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 132
    .end local v0    # "value":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v0

    :cond_2
    move-object v0, p2

    goto :goto_0
.end method

.method public static getWXScope(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 258
    const-string v0, "SCOPE"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/tencent/msdk/config/ConfigManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isBeta(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 250
    const-string v0, "BETA"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/msdk/config/ConfigManager;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isGrayTest(Landroid/content/Context;)I
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 236
    const-string v2, "GRAY_TEST_SWITCH"

    invoke-static {p0, v2, v1}, Lcom/tencent/msdk/config/ConfigManager;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 237
    .local v0, "isgray":Z
    if-eqz v0, :cond_0

    .line 238
    const/4 v1, 0x1

    .line 240
    :cond_0
    return v1
.end method

.method public static isRealNameAuth(Landroid/content/Context;)I
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 246
    const-string v0, "MSDK_REAL_NAME_AUTH_SWITCH"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/msdk/config/ConfigManager;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isRealTimeReport(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 377
    const-string v0, "IS_REALTIME"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/tencent/msdk/config/ConfigManager;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static killWebViewProcess(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 397
    const-string v0, "KILL_WEBVIEW_PROCESS"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/tencent/msdk/config/ConfigManager;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static loadConfig(Landroid/content/Context;)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 98
    sget-object v2, Lcom/tencent/msdk/config/ConfigManager;->properties:Ljava/util/Properties;

    if-nez v2, :cond_0

    if-nez p0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    const/4 v1, 0x0

    .line 103
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    sget-object v3, Lcom/tencent/msdk/config/ConfigManager;->configFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 104
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    sput-object v2, Lcom/tencent/msdk/config/ConfigManager;->properties:Ljava/util/Properties;

    .line 105
    sget-object v2, Lcom/tencent/msdk/config/ConfigManager;->properties:Ljava/util/Properties;

    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    if-eqz v1, :cond_0

    .line 113
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/IOException;
    sput-object v4, Lcom/tencent/msdk/config/ConfigManager;->properties:Ljava/util/Properties;

    .line 116
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 106
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 107
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v2, 0x0

    :try_start_2
    sput-object v2, Lcom/tencent/msdk/config/ConfigManager;->properties:Ljava/util/Properties;

    .line 108
    const-string v2, "Please check your msdkconfig.ini file under /assets/"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    if-eqz v1, :cond_0

    .line 113
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 114
    :catch_2
    move-exception v0

    .line 115
    sput-object v4, Lcom/tencent/msdk/config/ConfigManager;->properties:Ljava/util/Properties;

    .line 116
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 111
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    .line 113
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 117
    :cond_2
    :goto_1
    throw v2

    .line 114
    :catch_3
    move-exception v0

    .line 115
    .restart local v0    # "e":Ljava/io/IOException;
    sput-object v4, Lcom/tencent/msdk/config/ConfigManager;->properties:Ljava/util/Properties;

    .line 116
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static needAD(Landroid/content/Context;)Z
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 264
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    sget-object v6, Lcom/tencent/msdk/config/ConfigManager;->adConfigFile:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 265
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 266
    .local v3, "properties":Ljava/util/Properties;
    invoke-virtual {v3, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 267
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 268
    const-string v5, "MSDK_AD"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, "needAD":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 270
    :cond_0
    const-string v5, "AD closed"

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 281
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "needAD":Ljava/lang/String;
    .end local v3    # "properties":Ljava/util/Properties;
    :cond_1
    :goto_0
    return v4

    .line 273
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "needAD":Ljava/lang/String;
    .restart local v3    # "properties":Ljava/util/Properties;
    :cond_2
    const-string/jumbo v5, "true"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    .line 274
    const/4 v4, 0x1

    goto :goto_0

    .line 278
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "needAD":Ljava/lang/String;
    .end local v3    # "properties":Ljava/util/Properties;
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 280
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Please check your "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/tencent/msdk/config/ConfigManager;->adConfigFile:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " file under /assets/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static needAutoUpdate(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 401
    const-string v0, "SAVE_UPDATE"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/msdk/config/ConfigManager;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static needNotice(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 254
    const-string v0, "needNotice"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/msdk/config/ConfigManager;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static needPushRefactor(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 386
    const-string v0, "PUSH"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/msdk/config/ConfigManager;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static needStatLog(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 372
    const-string v0, "STAT_LOG"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/tencent/msdk/config/ConfigManager;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static needWXTokenRefresh(Landroid/content/Context;)Z
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 392
    const-string v0, "WXTOKEN_REFRESH"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/tencent/msdk/config/ConfigManager;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static readValueByKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 344
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/tencent/msdk/config/ConfigManager;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static readValueByKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 348
    if-nez p0, :cond_0

    .line 349
    const-string v4, ""

    .line 366
    :goto_0
    return-object v4

    .line 353
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 354
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 355
    .local v2, "properties":Ljava/util/Properties;
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 356
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 357
    const-string v4, ""

    invoke-virtual {v2, p2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 358
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 359
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 360
    const-string v4, ""

    goto :goto_0

    .line 362
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 363
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "properties":Ljava/util/Properties;
    .end local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 364
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 365
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Please check your "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " file under /assets/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 366
    const-string v4, ""

    goto :goto_0
.end method
