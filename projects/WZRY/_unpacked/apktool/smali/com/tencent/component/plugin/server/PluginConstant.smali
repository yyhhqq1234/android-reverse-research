.class public Lcom/tencent/component/plugin/server/PluginConstant;
.super Ljava/lang/Object;
.source "PluginConstant.java"


# static fields
.field public static final ACTION_INITIALIZE_FINISH:Ljava/lang/String; = "plugin_platform_initialize_finish"

.field public static final ACTION_INITIALIZE_START:Ljava/lang/String; = "plugin_platform_initialize_start"

.field private static final BUILTIN_CONFIG_FILE_FOLDER:Ljava/lang/String; = "plugins"

.field private static final BUILTIN_CONFIG_FILE_NAME:Ljava/lang/String; = "config.xml"

.field static final BUILTIN_DEFAULT_URI:Landroid/net/Uri;

.field public static final FRAGMENT_CONTAINER_ID:I = 0x7fffffff

.field public static final INTENT_PLUGIN:Ljava/lang/String; = "__intent_plugin"

.field public static final INTENT_PLUGIN_ARGS:Ljava/lang/String; = "__plugin_data"
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x190
    .end annotation
.end field

.field public static final INTENT_PLUGIN_FRAGMENT:Ljava/lang/String; = "__plugin_fragment"

.field public static final INTENT_PLUGIN_INNER:Ljava/lang/String; = "__plugin_inner"

.field public static final INTENT_PLUGIN_LEAFSERVICE:Ljava/lang/String; = "__plugin_leafservice"

.field public static final INTENT_PLUGIN_PLATFORM_ID:Ljava/lang/String; = "__plugin_platform_id"

.field private static final KEY_PENDING_INFO_CORE_PLUGIN:Ljava/lang/String; = "p_info_core_plugin"

.field private static final KEY_PENDING_INFO_EXTRA_INFO:Ljava/lang/String; = "p_info_extra_info"

.field private static final PENDING_INSTALL_INFO:Ljava/lang/String; = "p_pending_install_info"

.field static final PLUGIN_DEX_OPT_DIR:Ljava/lang/String; = "dex_opt"

.field static final PLUGIN_EXTRA_DIR:Ljava/lang/String; = "plugins_extra"

.field private static final PLUGIN_INSTALL_DEX_OPT_SUFFIX:Ljava/lang/String; = ".dex"

.field static final PLUGIN_INSTALL_DIR:Ljava/lang/String; = "plugins_installed"

.field static final PLUGIN_INSTALL_PACKAGE_SUFFIX:Ljava/lang/String; = ".zip"

.field public static final PLUGIN_INSTALL_PENDING_DIR:Ljava/lang/String; = "plugins_pending"

.field static final PLUGIN_LIB_DIR:Ljava/lang/String; = "lib"

.field static final PLUGIN_META:Ljava/lang/String; = "plugin.xml"

.field static final PLUGIN_META_BOOT_LISTENER_CLASS:Ljava/lang/String; = "qqgame.plugin.boot.receiver"

.field static final PLUGIN_META_CORE_PLUGIN:Ljava/lang/String; = "qqgame.plugin.corePlugin"

.field static final PLUGIN_META_EXCLUSIVE:Ljava/lang/String; = "qqgame.plugin.exclusive"

.field static final PLUGIN_META_EXTRA_INFO_AUTO_LOAD:Ljava/lang/String; = "qqgame.plugin.extra.autoLoad"

.field static final PLUGIN_META_EXTRA_INFO_SINGLE_PROCESS:Ljava/lang/String; = "qqgame.plugin.extra.singleProcess"

.field static final PLUGIN_META_EXTRA_INFO_SINGLE_TOP:Ljava/lang/String; = "qqgame.plugin.extra.singleTop"

.field static final PLUGIN_META_LAUNCH_FRAGMENT:Ljava/lang/String; = "qqgame.plugin.launch.fragment"

.field static final PLUGIN_META_MAX_ANDROID_VERSION:Ljava/lang/String; = "qqgame.plugin.maxAndroidVersion"

.field static final PLUGIN_META_MAX_BASE_PLATFORM_VERSION:Ljava/lang/String; = "qqgame.plugin.maxBasePlatformVersion"

.field static final PLUGIN_META_MAX_PLATFORM_VERSION:Ljava/lang/String; = "qqgame.plugin.maxPlatformVersion"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final PLUGIN_META_MIN_ANDROID_VERSION:Ljava/lang/String; = "qqgame.plugin.minAndroidVersion"

.field static final PLUGIN_META_MIN_BASE_PLATFORM_VERSION:Ljava/lang/String; = "qqgame.plugin.minBasePlatformVersion"

.field static final PLUGIN_META_MIN_PLATFORM_VERSION:Ljava/lang/String; = "qqgame.plugin.minPlatformVersion"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final PLUGIN_META_PLUGIN_CLASS:Ljava/lang/String; = "qqgame.plugin.class"

.field private static final PLUGIN_META_PREFIX:Ljava/lang/String; = "qqgame.plugin."

.field static final PLUGIN_META_REQUIRES:Ljava/lang/String; = "requires"

.field static final PLUGIN_META_SURVIVE_DETECTOR:Ljava/lang/String; = "qqgame.plugin.survive.detector"

.field public static final PLUGIN_PLATFORM_BUILD_NUMBER:I = 0x0

.field public static final PLUGIN_PLATFORM_VERSION:I = 0x258

.field public static final PLUGIN_PLATFROM_VERSION_NAME:Ljava/lang/String; = "1.7.0.0"

.field static final PLUGIN_SIGNATURE_IMPORTANT_ONLY:Z = true

.field static final PLUGIN_SUB_META_REQUIRES_ITEM_NAME:Ljava/lang/String; = "requireInfo"

.field static final PLUGIN_SUB_META_REQUIRES_ITEM_PROPERTY_ID:Ljava/lang/String; = "id"

.field static final PLUGIN_SUB_META_REQUIRES_ITEM_PROPERTY_MAX_VERSION:Ljava/lang/String; = "maxVersion"

.field static final PLUGIN_SUB_META_REQUIRES_ITEM_PROPERTY_MIN_VERSION:Ljava/lang/String; = "minVersion"

.field private static final PLUGIN_TMP_DIR_NAME:Ljava/lang/String; = "pluginTmp"

.field private static final PLUGIN_VERIFY_PLATFORM_SIGNATURE:Z = true

.field static final SINGLE_TOP_CONFIG:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStringBuilder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/tencent/component/plugin/server/PluginConstant$1;

    invoke-direct {v0}, Lcom/tencent/component/plugin/server/PluginConstant$1;-><init>()V

    sput-object v0, Lcom/tencent/component/plugin/server/PluginConstant;->SINGLE_TOP_CONFIG:Ljava/util/HashMap;

    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/component/plugin/server/PluginConstant;->BUILTIN_DEFAULT_URI:Landroid/net/Uri;

    .line 297
    new-instance v0, Lcom/tencent/component/plugin/server/PluginConstant$3;

    invoke-direct {v0}, Lcom/tencent/component/plugin/server/PluginConstant$3;-><init>()V

    sput-object v0, Lcom/tencent/component/plugin/server/PluginConstant;->sStringBuilder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBuiltinConfigFilePath(Lcom/tencent/component/plugin/server/PlatformServerContext;)Ljava/lang/String;
    .locals 2
    .param p0, "platformServerContext"    # Lcom/tencent/component/plugin/server/PlatformServerContext;

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "plugins/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getPlatformId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "config.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCorePluginPendingInstallInfo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "installLocation"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 225
    const-string v3, "p_info_core_plugin"

    invoke-static {v3, p1}, Lcom/tencent/component/plugin/server/PluginConstant;->getPendingInfoKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "corePluginKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 227
    const-string v3, "p_pending_install_info"

    const/4 v4, 0x4

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 228
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 232
    .end local v0    # "corePluginKey":Ljava/lang/String;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    return v2
.end method

.method static getExternalInstallPendingDir(Lcom/tencent/component/plugin/server/PlatformServerContext;)Ljava/io/File;
    .locals 4
    .param p0, "platformServerContext"    # Lcom/tencent/component/plugin/server/PlatformServerContext;

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 147
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "plugins_pending_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getPlatformId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/component/utils/FileUtil;->getExternalCacheDirExt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "dir":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 149
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static getExtraDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    const-string v0, "plugins_extra"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static getInstallDir(Lcom/tencent/component/plugin/server/PlatformServerContext;)Ljava/io/File;
    .locals 3
    .param p0, "platformServerContext"    # Lcom/tencent/component/plugin/server/PlatformServerContext;

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 135
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "plugins_installed_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getPlatformId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method static getInstallPendingDir(Lcom/tencent/component/plugin/server/PlatformServerContext;)Ljava/io/File;
    .locals 3
    .param p0, "platformServerContext"    # Lcom/tencent/component/plugin/server/PlatformServerContext;

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 141
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "plugins_pending_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getPlatformId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method private static getPendingInfoKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/tencent/component/utils/SecurityUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPendingInstallExtraInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "installLocation"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 237
    const-string v2, "p_info_extra_info"

    invoke-static {v2, p1}, Lcom/tencent/component/plugin/server/PluginConstant;->getPendingInfoKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "extraInfoKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 239
    const-string v2, "p_pending_install_info"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 240
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v2, ""

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 243
    .end local v0    # "extraInfoKey":Ljava/lang/String;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :goto_0
    return-object v2

    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method static getPluginDexOptimizeDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/tencent/component/plugin/server/PluginConstant;->getExtraDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "dex_opt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getPluginDexOptimizeName(Lcom/tencent/component/plugin/PluginInfo;)Ljava/lang/String;
    .locals 3
    .param p0, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    .line 267
    invoke-static {p0}, Lcom/tencent/component/plugin/server/PluginConstant;->getPluginEncryptedName(Lcom/tencent/component/plugin/PluginInfo;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getPluginEncryptedName(Lcom/tencent/component/plugin/PluginInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    .line 276
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 277
    .local v0, "name":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/tencent/component/plugin/server/PluginConstant;->getPluginEncryptedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 276
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getPluginEncryptedName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 281
    invoke-static {p0}, Lcom/tencent/component/plugin/server/PluginConstant;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    const/4 v0, 0x0

    .line 284
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/tencent/component/utils/SecurityUtil;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getPluginInstallName(Lcom/tencent/component/plugin/PluginInfo;)Ljava/lang/String;
    .locals 3
    .param p0, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    .line 159
    invoke-static {p0}, Lcom/tencent/component/plugin/server/PluginConstant;->getPluginEncryptedName(Lcom/tencent/component/plugin/PluginInfo;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/component/plugin/server/PluginConstant;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getPluginInstallNameFilter(Ljava/lang/String;)Ljava/io/FilenameFilter;
    .locals 2
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-static {p0}, Lcom/tencent/component/plugin/server/PluginConstant;->getPluginEncryptedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "regex":Ljava/lang/String;
    new-instance v1, Lcom/tencent/component/plugin/server/PluginConstant$2;

    invoke-direct {v1, v0}, Lcom/tencent/component/plugin/server/PluginConstant$2;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method static getPluginNativeLibDir(Landroid/content/Context;Lcom/tencent/component/plugin/PluginInfo;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    .line 174
    invoke-static {p1}, Lcom/tencent/component/plugin/server/PluginConstant;->getPluginEncryptedName(Lcom/tencent/component/plugin/PluginInfo;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/component/plugin/server/PluginConstant;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/tencent/component/plugin/server/PluginConstant;->getExtraDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getPluginTmpDir(Landroid/content/Context;Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "external"    # Z
    .param p3, "persist"    # Z

    .prologue
    const/4 v2, 0x0

    .line 247
    invoke-static {p1}, Lcom/tencent/component/plugin/server/PluginConstant;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-object v2

    .line 250
    :cond_1
    if-eqz p2, :cond_2

    const-string v3, "pluginTmp"

    invoke-static {p0, v3, p3}, Lcom/tencent/component/utils/FileUtil;->getExternalCacheDir(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "dir":Ljava/lang/String;
    :goto_1
    if-eqz v0, :cond_0

    .line 255
    sget-object v2, Lcom/tencent/component/plugin/server/PluginConstant;->sStringBuilder:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    .line 256
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 250
    .end local v0    # "dir":Ljava/lang/String;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    const-string v3, "pluginTmp"

    .line 251
    invoke-static {p0, v3, p3}, Lcom/tencent/component/utils/FileUtil;->getInternalCacheDir(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private static isDebuggable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 288
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 289
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 293
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static removePendingInstallInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "installLocation"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 221
    :goto_0
    return-void

    .line 209
    :cond_0
    const-string v4, "p_info_core_plugin"

    invoke-static {v4, p1}, Lcom/tencent/component/plugin/server/PluginConstant;->getPendingInfoKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "corePluginKey":Ljava/lang/String;
    const-string v4, "p_info_extra_info"

    invoke-static {v4, p1}, Lcom/tencent/component/plugin/server/PluginConstant;->getPendingInfoKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, "extraInfoKey":Ljava/lang/String;
    const-string v4, "p_pending_install_info"

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 212
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 213
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 214
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 216
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 217
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 220
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static setPendingInstallInfo(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "installLocation"    # Ljava/lang/String;
    .param p2, "corePlugin"    # Z
    .param p3, "extraInfo"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 191
    const-string p3, ""

    .line 193
    :cond_2
    const-string v4, "p_info_core_plugin"

    invoke-static {v4, p1}, Lcom/tencent/component/plugin/server/PluginConstant;->getPendingInfoKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "corePluginKey":Ljava/lang/String;
    const-string v4, "p_info_extra_info"

    invoke-static {v4, p1}, Lcom/tencent/component/plugin/server/PluginConstant;->getPendingInfoKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "extraInfoKey":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 197
    const-string v4, "p_pending_install_info"

    const/4 v5, 0x4

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 198
    .local v3, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 199
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 200
    invoke-interface {v1, v2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 201
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method static shouldCheckPlatformSignature(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    const/4 v0, 0x1

    return v0
.end method
