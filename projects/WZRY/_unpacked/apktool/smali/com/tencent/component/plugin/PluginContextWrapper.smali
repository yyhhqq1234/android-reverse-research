.class public final Lcom/tencent/component/plugin/PluginContextWrapper;
.super Landroid/content/ContextWrapper;
.source "PluginContextWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginContextWrapper"


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mOverrideConfiguration:Landroid/content/res/Configuration;

.field private mPlatformContext:Landroid/content/Context;

.field private final mPlugin:Lcom/tencent/component/plugin/Plugin;

.field private mPluginAsset:Landroid/content/res/AssetManager;

.field private final mPluginClassLoader:Ljava/lang/ClassLoader;

.field private final mPluginInfo:Lcom/tencent/component/plugin/PluginInfo;

.field private mPluginResources:Landroid/content/res/Resources;

.field private mPluginTheme:Landroid/content/res/Resources$Theme;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/component/plugin/PluginInfo;Lcom/tencent/component/plugin/Plugin;)V
    .locals 3
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "pluginInfo"    # Lcom/tencent/component/plugin/PluginInfo;
    .param p3, "plugin"    # Lcom/tencent/component/plugin/Plugin;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p1, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPlatformContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    .line 44
    iput-object p3, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPlugin:Lcom/tencent/component/plugin/Plugin;

    .line 45
    new-instance v0, Lcom/tencent/component/plugin/PluginLayoutInflater;

    invoke-direct {v0, p0, p3}, Lcom/tencent/component/plugin/PluginLayoutInflater;-><init>(Landroid/content/Context;Lcom/tencent/component/plugin/Plugin;)V

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 46
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPluginClassLoader:Ljava/lang/ClassLoader;

    .line 48
    invoke-virtual {p3}, Lcom/tencent/component/plugin/Plugin;->getPluginManager()Lcom/tencent/component/plugin/PluginManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/tencent/component/plugin/PluginManager;->getPluginResources(Lcom/tencent/component/plugin/PluginInfo;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPluginResources:Landroid/content/res/Resources;

    .line 49
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPluginResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPluginResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPluginAsset:Landroid/content/res/AssetManager;

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPluginResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_1

    .line 53
    invoke-direct {p0}, Lcom/tencent/component/plugin/PluginContextWrapper;->resolveTheme()V

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string v0, "PluginContextWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to init plugin resources for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/component/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fixedIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 174
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 175
    .local v1, "componentName":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 176
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/tencent/component/plugin/PluginContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 177
    .local v0, "componentCopy":Landroid/content/ComponentName;
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 179
    .end local v0    # "componentCopy":Landroid/content/ComponentName;
    :cond_0
    return-object p1
.end method

.method private static getLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;
    .locals 3
    .param p0, "configuration"    # Landroid/content/res/Configuration;

    .prologue
    .line 131
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 132
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 137
    .local v0, "locale":Ljava/util/Locale;
    :goto_0
    return-object v0

    .line 134
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_0
    iget-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .restart local v0    # "locale":Ljava/util/Locale;
    goto :goto_0
.end method

.method public static getPlatfromContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    instance-of v0, p0, Lcom/tencent/component/plugin/PluginContextWrapper;

    if-eqz v0, :cond_1

    .line 206
    check-cast p0, Lcom/tencent/component/plugin/PluginContextWrapper;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/tencent/component/plugin/PluginContextWrapper;->getPlatformContext()Landroid/content/Context;

    move-result-object p0

    .line 210
    :cond_0
    :goto_0
    return-object p0

    .line 207
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    instance-of v0, p0, Lcom/tencent/component/plugin/PluginShellActivity;

    if-eqz v0, :cond_0

    .line 208
    check-cast p0, Lcom/tencent/component/plugin/PluginShellActivity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/tencent/component/plugin/PluginShellActivity;->getPlatformContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0
.end method

.method private resolveTheme()V
    .locals 4

    .prologue
    .line 83
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPluginResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPluginTheme:Landroid/content/res/Resources$Theme;

    .line 85
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    iget v1, v2, Lcom/tencent/component/plugin/PluginInfo;->theme:I

    .line 86
    .local v1, "theme":I
    invoke-virtual {p0}, Lcom/tencent/component/plugin/PluginContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 87
    .local v0, "baseTheme":Landroid/content/res/Resources$Theme;
    if-eqz v0, :cond_0

    .line 88
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPluginTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 90
    :cond_0
    if-eqz v1, :cond_1

    .line 91
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPluginTheme:Landroid/content/res/Resources$Theme;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 93
    :cond_1
    return-void
.end method


# virtual methods
.method public applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "overrideConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 73
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 74
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 76
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPluginResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPluginResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPluginResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 80
    :cond_0
    return-void
.end method

.method public getAssets()Landroid/content/res/AssetManager;
    .locals 3

    .prologue
    .line 143
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPluginAsset:Landroid/content/res/AssetManager;

    if-eqz v2, :cond_1

    .line 144
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPluginAsset:Landroid/content/res/AssetManager;

    .line 148
    :cond_0
    :goto_0
    return-object v0

    .line 146
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/component/plugin/PluginContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 147
    .local v1, "resources":Landroid/content/res/Resources;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 148
    .local v0, "assets":Landroid/content/res/AssetManager;
    :goto_1
    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/content/ContextWrapper;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_0

    .line 147
    .end local v0    # "assets":Landroid/content/res/AssetManager;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPluginClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPlugin:Lcom/tencent/component/plugin/Plugin;

    invoke-virtual {v0}, Lcom/tencent/component/plugin/Plugin;->getPluginInfo()Lcom/tencent/component/plugin/PluginInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/component/plugin/PluginInfo;->pluginId:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatformContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPlatformContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPlugin()Lcom/tencent/component/plugin/Plugin;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPlugin:Lcom/tencent/component/plugin/Plugin;

    return-object v0
.end method

.method public getPluginInfo()Lcom/tencent/component/plugin/PluginInfo;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 6

    .prologue
    .line 113
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPluginResources:Landroid/content/res/Resources;

    if-eqz v3, :cond_2

    .line 114
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    if-eqz v3, :cond_0

    .line 115
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-static {v3}, Lcom/tencent/component/plugin/PluginContextWrapper;->getLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v1

    .line 116
    .local v1, "overrideLocale":Ljava/util/Locale;
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPluginResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/component/plugin/PluginContextWrapper;->getLocale(Landroid/content/res/Configuration;)Ljava/util/Locale;

    move-result-object v0

    .line 118
    .local v0, "currentLocale":Ljava/util/Locale;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 119
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPluginResources:Landroid/content/res/Resources;

    iget-object v4, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v5, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPluginResources:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 122
    .end local v0    # "currentLocale":Ljava/util/Locale;
    .end local v1    # "overrideLocale":Ljava/util/Locale;
    :cond_0
    iget-object v2, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPluginResources:Landroid/content/res/Resources;

    .line 125
    :cond_1
    :goto_0
    return-object v2

    .line 124
    :cond_2
    iget-object v3, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPlugin:Lcom/tencent/component/plugin/Plugin;

    invoke-virtual {v3}, Lcom/tencent/component/plugin/Plugin;->getPluginManager()Lcom/tencent/component/plugin/PluginManager;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPluginInfo:Lcom/tencent/component/plugin/PluginInfo;

    invoke-virtual {v3, v4}, Lcom/tencent/component/plugin/PluginManager;->getPluginResources(Lcom/tencent/component/plugin/PluginInfo;)Landroid/content/res/Resources;

    move-result-object v2

    .line 125
    .local v2, "resources":Landroid/content/res/Resources;
    if-nez v2, :cond_1

    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    goto :goto_0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 105
    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/tencent/component/plugin/PluginContextWrapper;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPluginTheme:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPluginTheme:Landroid/content/res/Resources$Theme;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/content/ContextWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0
.end method

.method public setTheme(I)V
    .locals 2
    .param p1, "resid"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPluginTheme:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/tencent/component/plugin/PluginContextWrapper;->mPluginTheme:Landroid/content/res/Resources$Theme;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->setTheme(I)V

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/PluginContextWrapper;->fixedIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 185
    return-void
.end method

.method public startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 1
    .param p1, "service"    # Landroid/content/Intent;

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/tencent/component/plugin/PluginContextWrapper;->fixedIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method
