.class public Lcom/tencent/component/plugin/server/PluginParser;
.super Ljava/lang/Object;
.source "PluginParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/plugin/server/PluginParser$MetaDataHandler;
    }
.end annotation


# static fields
.field public static final GET_SIGNATURES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PluginParser"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # I

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/tencent/component/plugin/server/PluginParser;->toIntegerPrimitive(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static generatePackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginPath"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    const/4 v0, 0x0

    .line 201
    :cond_0
    :goto_0
    return-object v0

    .line 187
    :cond_1
    const/4 v1, 0x0

    .line 188
    .local v1, "parseFlags":I
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_2

    .line 194
    :cond_2
    invoke-static {p0, p1, v1}, Lcom/tencent/component/utils/ApkUtil;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 195
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_0

    .line 198
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/tencent/component/utils/ApkUtil$Certificates;->collectCertificates(Ljava/lang/String;Z)[Landroid/content/pm/Signature;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    goto :goto_0
.end method

.method private static getMetaDataOptions(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<TK;TV;>;TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, "config":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v0, p2

    .line 232
    :cond_1
    :goto_0
    return-object v0

    .line 231
    :cond_2
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 232
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_1

    move-object v0, p2

    goto :goto_0
.end method

.method private static getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 236
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    :cond_0
    const/4 v0, 0x0

    .line 239
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getName(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "pluginPath"    # Ljava/lang/String;

    .prologue
    .line 162
    :try_start_0
    invoke-static {p0, p2}, Lcom/tencent/component/utils/ApkUtil;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 163
    .local v4, "resources":Landroid/content/res/Resources;
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 164
    .local v2, "pluginName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 175
    .end local v2    # "pluginName":Ljava/lang/String;
    .end local v4    # "resources":Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 167
    .restart local v2    # "pluginName":Ljava/lang/String;
    .restart local v4    # "resources":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 168
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 169
    .local v1, "lable":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 170
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 172
    .end local v1    # "lable":Ljava/lang/CharSequence;
    .end local v2    # "pluginName":Ljava/lang/String;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "PluginParser"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/CharSequence;

    .prologue
    .line 275
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

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

.method private static isParsedPluginValid(Lcom/tencent/component/plugin/PluginInfo;)Z
    .locals 1
    .param p0, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;

    .prologue
    .line 179
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->installPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->pluginClass:Ljava/lang/String;

    .line 180
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static parse(Lcom/tencent/component/plugin/server/PlatformServerContext;Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/component/plugin/PluginInfo;
    .locals 1
    .param p0, "platformServerContext"    # Lcom/tencent/component/plugin/server/PlatformServerContext;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pluginPath"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tencent/component/plugin/server/PluginParser;->parse(Lcom/tencent/component/plugin/server/PlatformServerContext;Landroid/content/Context;Ljava/lang/String;I)Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v0

    return-object v0
.end method

.method static parse(Lcom/tencent/component/plugin/server/PlatformServerContext;Landroid/content/Context;Ljava/lang/String;I)Lcom/tencent/component/plugin/PluginInfo;
    .locals 12
    .param p0, "platformServerContext"    # Lcom/tencent/component/plugin/server/PlatformServerContext;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pluginPath"    # Ljava/lang/String;
    .param p3, "flags"    # I

    .prologue
    .line 49
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 50
    const-string v9, "PluginParser"

    const-string v10, "parse plugin failed,pluginPath is empty."

    invoke-static {v9, v10}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const/4 v7, 0x0

    .line 157
    :cond_0
    :goto_0
    return-object v7

    .line 53
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/tencent/component/plugin/server/PluginParser;->generatePackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 54
    .local v6, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v6, :cond_3

    const/4 v0, 0x0

    .line 55
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1
    if-eqz v6, :cond_2

    if-nez v0, :cond_4

    .line 56
    :cond_2
    const-string v9, "PluginParser"

    const-string v10, "parse plugin failed,packageInfo or applicationInfo is empty."

    invoke-static {v9, v10}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v7, 0x0

    goto :goto_0

    .line 54
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_3
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_1

    .line 59
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_4
    invoke-static {p1, p2}, Lcom/tencent/component/plugin/server/PluginParser;->parseMetaData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 60
    .local v3, "metaData":Landroid/os/Bundle;
    if-nez v3, :cond_5

    .line 61
    const-string v9, "PluginParser"

    const-string v10, "parse plugin failed,metaData is empty."

    invoke-static {v9, v10}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/4 v7, 0x0

    goto :goto_0

    .line 65
    :cond_5
    new-instance v7, Lcom/tencent/component/plugin/PluginInfo;

    invoke-direct {v7}, Lcom/tencent/component/plugin/PluginInfo;-><init>()V

    .line 67
    .local v7, "pluginInfo":Lcom/tencent/component/plugin/PluginInfo;
    const-string v9, "qqgame.plugin.class"

    invoke-static {v3, v9}, Lcom/tencent/component/plugin/server/PluginParser;->getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/tencent/component/plugin/PluginInfo;->pluginClass:Ljava/lang/String;

    .line 68
    const-string v9, "qqgame.plugin.launch.fragment"

    invoke-static {v3, v9}, Lcom/tencent/component/plugin/server/PluginParser;->getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/tencent/component/plugin/PluginInfo;->launchFragment:Ljava/lang/String;

    .line 69
    const-string v9, "qqgame.plugin.boot.receiver"

    invoke-static {v3, v9}, Lcom/tencent/component/plugin/server/PluginParser;->getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/tencent/component/plugin/PluginInfo;->bootCompleteReceiver:Ljava/lang/String;

    .line 70
    const-string v9, "qqgame.plugin.survive.detector"

    invoke-static {v3, v9}, Lcom/tencent/component/plugin/server/PluginParser;->getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/tencent/component/plugin/PluginInfo;->surviveDetector:Ljava/lang/String;

    .line 71
    const-string v9, "qqgame.plugin.exclusive"

    invoke-static {v3, v9}, Lcom/tencent/component/plugin/server/PluginParser;->getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/tencent/component/plugin/server/PluginParser;->toBooleanPrimitive(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, v7, Lcom/tencent/component/plugin/PluginInfo;->exclusive:Z

    .line 72
    const-string v9, "qqgame.plugin.corePlugin"

    invoke-static {v3, v9}, Lcom/tencent/component/plugin/server/PluginParser;->getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/tencent/component/plugin/server/PluginParser;->toBooleanPrimitive(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, v7, Lcom/tencent/component/plugin/PluginInfo;->corePlugin:Z

    .line 73
    new-instance v9, Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;

    invoke-direct {v9}, Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;-><init>()V

    iput-object v9, v7, Lcom/tencent/component/plugin/PluginInfo;->pluginRequirement:Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;

    .line 74
    iget-object v9, v7, Lcom/tencent/component/plugin/PluginInfo;->pluginRequirement:Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;

    const-string v10, "requires"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, v9, Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;->requirementInfos:Ljava/util/ArrayList;

    .line 76
    const-string v9, "qqgame.plugin.minBasePlatformVersion"

    .line 77
    invoke-static {v3, v9}, Lcom/tencent/component/plugin/server/PluginParser;->getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 76
    invoke-static {v9, v10}, Lcom/tencent/component/plugin/server/PluginParser;->toIntegerPrimitive(Ljava/lang/String;I)I

    move-result v4

    .line 78
    .local v4, "minBasePlatformVersion":I
    const-string v9, "qqgame.plugin.maxBasePlatformVersion"

    .line 79
    invoke-static {v3, v9}, Lcom/tencent/component/plugin/server/PluginParser;->getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 78
    invoke-static {v9, v10}, Lcom/tencent/component/plugin/server/PluginParser;->toIntegerPrimitive(Ljava/lang/String;I)I

    move-result v1

    .line 81
    .local v1, "maxBasePlatformVersion":I
    const-string v9, "qqgame.plugin.minPlatformVersion"

    .line 82
    invoke-static {v3, v9}, Lcom/tencent/component/plugin/server/PluginParser;->getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 81
    invoke-static {v9, v10}, Lcom/tencent/component/plugin/server/PluginParser;->toIntegerPrimitive(Ljava/lang/String;I)I

    move-result v5

    .line 83
    .local v5, "minPlatformVersion":I
    const-string v9, "qqgame.plugin.maxPlatformVersion"

    .line 84
    invoke-static {v3, v9}, Lcom/tencent/component/plugin/server/PluginParser;->getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 83
    invoke-static {v9, v10}, Lcom/tencent/component/plugin/server/PluginParser;->toIntegerPrimitive(Ljava/lang/String;I)I

    move-result v2

    .line 85
    .local v2, "maxPlatformVersion":I
    invoke-virtual {p0}, Lcom/tencent/component/plugin/server/PlatformServerContext;->getPlatformConfig()Lcom/tencent/component/plugin/PluginPlatformConfig;

    move-result-object v9

    iget-boolean v9, v9, Lcom/tencent/component/plugin/PluginPlatformConfig;->enbaleCorePlugin:Z

    if-eqz v9, :cond_e

    .line 86
    if-nez v4, :cond_b

    .line 87
    iget-boolean v9, v7, Lcom/tencent/component/plugin/PluginInfo;->corePlugin:Z

    if-eqz v9, :cond_a

    .line 88
    iput v5, v7, Lcom/tencent/component/plugin/PluginInfo;->minBasePlatformVersion:I

    .line 96
    :goto_2
    if-lez v5, :cond_7

    iget-boolean v9, v7, Lcom/tencent/component/plugin/PluginInfo;->corePlugin:Z

    if-nez v9, :cond_7

    .line 97
    iget-object v9, v7, Lcom/tencent/component/plugin/PluginInfo;->pluginRequirement:Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;

    iget-object v9, v9, Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;->requirementInfos:Ljava/util/ArrayList;

    if-eqz v9, :cond_6

    iget-object v9, v7, Lcom/tencent/component/plugin/PluginInfo;->pluginRequirement:Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;

    iget-object v9, v9, Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;->requirementInfos:Ljava/util/ArrayList;

    .line 98
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 99
    :cond_6
    iget-object v9, v7, Lcom/tencent/component/plugin/PluginInfo;->pluginRequirement:Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;

    iput v5, v9, Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;->minCorePluginVersion:I

    .line 103
    :cond_7
    if-nez v1, :cond_d

    .line 104
    iget-boolean v9, v7, Lcom/tencent/component/plugin/PluginInfo;->corePlugin:Z

    if-eqz v9, :cond_c

    .line 105
    iput v2, v7, Lcom/tencent/component/plugin/PluginInfo;->maxBasePlatformVersion:I

    .line 113
    :goto_3
    if-lez v2, :cond_9

    iget-boolean v9, v7, Lcom/tencent/component/plugin/PluginInfo;->corePlugin:Z

    if-nez v9, :cond_9

    .line 114
    iget-object v9, v7, Lcom/tencent/component/plugin/PluginInfo;->pluginRequirement:Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;

    iget-object v9, v9, Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;->requirementInfos:Ljava/util/ArrayList;

    if-eqz v9, :cond_8

    iget-object v9, v7, Lcom/tencent/component/plugin/PluginInfo;->pluginRequirement:Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;

    iget-object v9, v9, Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;->requirementInfos:Ljava/util/ArrayList;

    .line 115
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 116
    :cond_8
    iget-object v9, v7, Lcom/tencent/component/plugin/PluginInfo;->pluginRequirement:Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;

    iput v2, v9, Lcom/tencent/component/plugin/PluginInfo$PluginRequirement;->maxCorePluginVersion:I

    .line 133
    :cond_9
    :goto_4
    const-string v9, "qqgame.plugin.minAndroidVersion"

    .line 134
    invoke-static {v3, v9}, Lcom/tencent/component/plugin/server/PluginParser;->getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 133
    invoke-static {v9, v10}, Lcom/tencent/component/plugin/server/PluginParser;->toIntegerPrimitive(Ljava/lang/String;I)I

    move-result v9

    iput v9, v7, Lcom/tencent/component/plugin/PluginInfo;->minAndroidVersion:I

    .line 135
    const-string v9, "qqgame.plugin.maxAndroidVersion"

    .line 136
    invoke-static {v3, v9}, Lcom/tencent/component/plugin/server/PluginParser;->getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 135
    invoke-static {v9, v10}, Lcom/tencent/component/plugin/server/PluginParser;->toIntegerPrimitive(Ljava/lang/String;I)I

    move-result v9

    iput v9, v7, Lcom/tencent/component/plugin/PluginInfo;->maxAndroidVersion:I

    .line 138
    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v9, v7, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    .line 139
    iget v9, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v9, v7, Lcom/tencent/component/plugin/PluginInfo;->version:I

    .line 140
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v9, v7, Lcom/tencent/component/plugin/PluginInfo;->versionName:Ljava/lang/String;

    .line 141
    invoke-static {p1, v0, p2}, Lcom/tencent/component/plugin/server/PluginParser;->getName(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/tencent/component/plugin/PluginInfo;->pluginName:Ljava/lang/String;

    .line 142
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v9, v7, Lcom/tencent/component/plugin/PluginInfo;->pluginIcon:I

    .line 143
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->theme:I

    iput v9, v7, Lcom/tencent/component/plugin/PluginInfo;->theme:I

    .line 144
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    iput-object v9, v7, Lcom/tencent/component/plugin/PluginInfo;->signatures:[Landroid/content/pm/Signature;

    .line 147
    sget-object v9, Lcom/tencent/component/plugin/server/PluginConstant;->SINGLE_TOP_CONFIG:Ljava/util/HashMap;

    const-string v10, "qqgame.plugin.extra.singleTop"

    .line 148
    invoke-static {v3, v10}, Lcom/tencent/component/plugin/server/PluginParser;->getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 147
    invoke-static {v9, v10, v11}, Lcom/tencent/component/plugin/server/PluginParser;->getMetaDataOptions(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 149
    .local v8, "singleTop":Ljava/lang/Integer;
    iget-object v10, v7, Lcom/tencent/component/plugin/PluginInfo;->extraInfo:Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;

    if-eqz v8, :cond_11

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :goto_5
    iput v9, v10, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;->singleTop:I

    .line 150
    iget-object v9, v7, Lcom/tencent/component/plugin/PluginInfo;->extraInfo:Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;

    const-string v10, "qqgame.plugin.extra.singleProcess"

    invoke-static {v3, v10}, Lcom/tencent/component/plugin/server/PluginParser;->getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/tencent/component/plugin/server/PluginParser;->toBooleanPrimitive(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v9, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;->singleProcess:Z

    .line 151
    iget-object v9, v7, Lcom/tencent/component/plugin/PluginInfo;->extraInfo:Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;

    const-string v10, "qqgame.plugin.extra.autoLoad"

    invoke-static {v3, v10}, Lcom/tencent/component/plugin/server/PluginParser;->getMetaDataString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Lcom/tencent/component/plugin/server/PluginParser;->toBooleanPrimitive(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, v9, Lcom/tencent/component/plugin/PluginInfo$ExtraInfo;->autoLoad:Z

    .line 154
    iput-object p2, v7, Lcom/tencent/component/plugin/PluginInfo;->installPath:Ljava/lang/String;

    .line 155
    invoke-static {p1, v7}, Lcom/tencent/component/plugin/server/PluginConstant;->getPluginNativeLibDir(Landroid/content/Context;Lcom/tencent/component/plugin/PluginInfo;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/tencent/component/plugin/PluginInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 156
    invoke-static {p1}, Lcom/tencent/component/plugin/server/PluginConstant;->getPluginDexOptimizeDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lcom/tencent/component/plugin/PluginInfo;->dexOptimizeDir:Ljava/lang/String;

    .line 157
    invoke-static {v7}, Lcom/tencent/component/plugin/server/PluginParser;->isParsedPluginValid(Lcom/tencent/component/plugin/PluginInfo;)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v7, 0x0

    goto/16 :goto_0

    .line 90
    .end local v8    # "singleTop":Ljava/lang/Integer;
    :cond_a
    const/4 v9, 0x0

    iput v9, v7, Lcom/tencent/component/plugin/PluginInfo;->minBasePlatformVersion:I

    goto/16 :goto_2

    .line 93
    :cond_b
    iput v4, v7, Lcom/tencent/component/plugin/PluginInfo;->minBasePlatformVersion:I

    goto/16 :goto_2

    .line 107
    :cond_c
    const/4 v9, 0x0

    iput v9, v7, Lcom/tencent/component/plugin/PluginInfo;->maxBasePlatformVersion:I

    goto/16 :goto_3

    .line 110
    :cond_d
    iput v1, v7, Lcom/tencent/component/plugin/PluginInfo;->maxBasePlatformVersion:I

    goto/16 :goto_3

    .line 120
    :cond_e
    if-nez v4, :cond_f

    .line 121
    iput v5, v7, Lcom/tencent/component/plugin/PluginInfo;->minBasePlatformVersion:I

    .line 126
    :goto_6
    if-nez v1, :cond_10

    .line 127
    iput v2, v7, Lcom/tencent/component/plugin/PluginInfo;->maxBasePlatformVersion:I

    goto/16 :goto_4

    .line 123
    :cond_f
    iput v4, v7, Lcom/tencent/component/plugin/PluginInfo;->minBasePlatformVersion:I

    goto :goto_6

    .line 129
    :cond_10
    iput v1, v7, Lcom/tencent/component/plugin/PluginInfo;->maxBasePlatformVersion:I

    goto/16 :goto_4

    .line 149
    .restart local v8    # "singleTop":Ljava/lang/Integer;
    :cond_11
    const/4 v9, 0x0

    goto :goto_5
.end method

.method private static parseMetaData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pluginPath"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 205
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 224
    :goto_0
    return-object v2

    .line 208
    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/component/utils/ApkUtil;->getResources(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    .line 209
    .local v4, "resources":Landroid/content/res/Resources;
    if-nez v4, :cond_1

    .line 210
    const-string v6, "PluginParser"

    const-string v7, "parse meta data failed,resources is empty."

    invoke-static {v6, v7}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_1
    const/4 v2, 0x0

    .line 215
    .local v2, "metaData":Landroid/os/Bundle;
    :try_start_0
    new-instance v0, Lcom/tencent/component/plugin/server/PluginParser$MetaDataHandler;

    invoke-direct {v0}, Lcom/tencent/component/plugin/server/PluginParser$MetaDataHandler;-><init>()V

    .line 216
    .local v0, "contentHandler":Lcom/tencent/component/plugin/server/PluginParser$MetaDataHandler;
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 217
    .local v3, "parserFactory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 218
    .local v5, "xmlReader":Lorg/xml/sax/XMLReader;
    invoke-interface {v5, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 219
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    const-string v8, "plugin.xml"

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 220
    invoke-virtual {v0}, Lcom/tencent/component/plugin/server/PluginParser$MetaDataHandler;->getMetaData()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 221
    .end local v0    # "contentHandler":Lcom/tencent/component/plugin/server/PluginParser$MetaDataHandler;
    .end local v3    # "parserFactory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v5    # "xmlReader":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v1

    .line 222
    .local v1, "e":Ljava/lang/Throwable;
    const-string v6, "PluginParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fail to parse meta-data for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/tencent/component/utils/log/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "regularExpression"    # Ljava/lang/String;

    .prologue
    .line 243
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 244
    :cond_0
    const/4 v0, 0x0

    .line 246
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static toBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/Boolean;

    .prologue
    .line 268
    invoke-static {p0}, Lcom/tencent/component/plugin/server/PluginParser;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    .line 271
    .end local p1    # "defaultValue":Ljava/lang/Boolean;
    :cond_0
    return-object p1
.end method

.method private static toBooleanPrimitive(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 261
    invoke-static {p0}, Lcom/tencent/component/plugin/server/PluginParser;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 264
    .end local p1    # "defaultValue":Z
    :cond_0
    return p1
.end method

.method private static toIntegerPrimitive(Ljava/lang/String;I)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 250
    if-eqz p0, :cond_0

    .line 252
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 257
    .end local p1    # "defaultValue":I
    :cond_0
    :goto_0
    return p1

    .line 253
    .restart local p1    # "defaultValue":I
    :catch_0
    move-exception v0

    goto :goto_0
.end method
