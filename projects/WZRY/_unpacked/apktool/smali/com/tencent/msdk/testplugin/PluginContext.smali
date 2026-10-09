.class public Lcom/tencent/msdk/testplugin/PluginContext;
.super Landroid/content/ContextWrapper;
.source "PluginContext.java"


# static fields
.field private static final BUFF_SIZE:I = 0x100000


# instance fields
.field mAssetManager:Landroid/content/res/AssetManager;

.field mClassLoader:Ljava/lang/ClassLoader;

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mResources:Landroid/content/res/Resources;

.field mTheme:Landroid/content/res/Resources$Theme;

.field nativeLibFolderPath:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field pluginApkPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object v1, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mAssetManager:Landroid/content/res/AssetManager;

    .line 24
    iput-object v1, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mResources:Landroid/content/res/Resources;

    .line 25
    iput-object v1, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 26
    iput-object v1, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mTheme:Landroid/content/res/Resources$Theme;

    .line 27
    iput-object v1, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mClassLoader:Ljava/lang/ClassLoader;

    .line 29
    const-string v0, "com.example.test.wegame"

    iput-object v0, p0, Lcom/tencent/msdk/testplugin/PluginContext;->packageName:Ljava/lang/String;

    .line 30
    const-string v0, "/data/data/com.example.wegame/app_dex/MSDKTest.apk"

    iput-object v0, p0, Lcom/tencent/msdk/testplugin/PluginContext;->pluginApkPath:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/tencent/msdk/testplugin/PluginContext;->nativeLibFolderPath:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/tencent/msdk/testplugin/PluginContext;->loadResources()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pluginApkPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object v1, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mAssetManager:Landroid/content/res/AssetManager;

    .line 24
    iput-object v1, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mResources:Landroid/content/res/Resources;

    .line 25
    iput-object v1, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 26
    iput-object v1, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mTheme:Landroid/content/res/Resources$Theme;

    .line 27
    iput-object v1, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mClassLoader:Ljava/lang/ClassLoader;

    .line 29
    const-string v0, "com.example.test.wegame"

    iput-object v0, p0, Lcom/tencent/msdk/testplugin/PluginContext;->packageName:Ljava/lang/String;

    .line 30
    const-string v0, "/data/data/com.example.wegame/app_dex/MSDKTest.apk"

    iput-object v0, p0, Lcom/tencent/msdk/testplugin/PluginContext;->pluginApkPath:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/tencent/msdk/testplugin/PluginContext;->nativeLibFolderPath:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/tencent/msdk/testplugin/PluginContext;->packageName:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/tencent/msdk/testplugin/PluginContext;->pluginApkPath:Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/tencent/msdk/testplugin/PluginContext;->nativeLibFolderPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/msdk/testplugin/PluginContext;->nativeLibFolderPath:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/msdk/testplugin/PluginContext;->nativeLibFolderPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/testplugin/PluginContext;->nativeLibFolderPath:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/msdk/testplugin/PluginContext;->nativeLibFolderPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data/data/com.example.wegame/lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/testplugin/PluginContext;->nativeLibFolderPath:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lcom/tencent/msdk/testplugin/PluginContext;->loadResources()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "base"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "pluginApkPath"    # Ljava/lang/String;
    .param p4, "nativeLibFolderPath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object v1, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mAssetManager:Landroid/content/res/AssetManager;

    .line 24
    iput-object v1, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mResources:Landroid/content/res/Resources;

    .line 25
    iput-object v1, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 26
    iput-object v1, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mTheme:Landroid/content/res/Resources$Theme;

    .line 27
    iput-object v1, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mClassLoader:Ljava/lang/ClassLoader;

    .line 29
    const-string v0, "com.example.test.wegame"

    iput-object v0, p0, Lcom/tencent/msdk/testplugin/PluginContext;->packageName:Ljava/lang/String;

    .line 30
    const-string v0, "/data/data/com.example.wegame/app_dex/MSDKTest.apk"

    iput-object v0, p0, Lcom/tencent/msdk/testplugin/PluginContext;->pluginApkPath:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/tencent/msdk/testplugin/PluginContext;->nativeLibFolderPath:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lcom/tencent/msdk/testplugin/PluginContext;->packageName:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lcom/tencent/msdk/testplugin/PluginContext;->pluginApkPath:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/tencent/msdk/testplugin/PluginContext;->nativeLibFolderPath:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/msdk/testplugin/PluginContext;->nativeLibFolderPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/testplugin/PluginContext;->nativeLibFolderPath:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/msdk/testplugin/PluginContext;->nativeLibFolderPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data/data/com.example.wegame/lib"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/testplugin/PluginContext;->nativeLibFolderPath:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/tencent/msdk/testplugin/PluginContext;->loadResources()V

    .line 73
    return-void
.end method


# virtual methods
.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mAssetManager:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 6

    .prologue
    .line 90
    iget-object v1, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mClassLoader:Ljava/lang/ClassLoader;

    if-nez v1, :cond_0

    .line 91
    const-string v1, "dex"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/tencent/msdk/testplugin/PluginContext;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 92
    .local v0, "tmpDir":Ljava/io/File;
    new-instance v1, Ldalvik/system/DexClassLoader;

    iget-object v2, p0, Lcom/tencent/msdk/testplugin/PluginContext;->pluginApkPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/msdk/testplugin/PluginContext;->nativeLibFolderPath:Ljava/lang/String;

    .line 93
    invoke-super {p0}, Landroid/content/ContextWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v1, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mClassLoader:Ljava/lang/ClassLoader;

    .line 94
    const-string v1, "Wegame_plugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "so add from nativeLibFolderPath:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/testplugin/PluginContext;->nativeLibFolderPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .end local v0    # "tmpDir":Ljava/io/File;
    :cond_0
    iget-object v1, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/tencent/msdk/testplugin/PluginContext;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 102
    const-string v5, "layout_inflater"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 103
    sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 104
    .local v4, "sysVersion":I
    const/4 v0, 0x0

    .line 105
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v5, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-nez v5, :cond_0

    .line 107
    const/16 v5, 0x17

    if-lt v4, v5, :cond_1

    .line 108
    :try_start_0
    const-string v5, "com.android.internal.policy.PhoneLayoutInflater"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 109
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 110
    .local v2, "localConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    iput-object v5, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 112
    const-string v5, "Wegame_plugin"

    const-string/jumbo v6, "sysVersion>=23"

    invoke-static {v5, v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    .line 138
    .end local v2    # "localConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    if-eqz v5, :cond_2

    .line 139
    iget-object v5, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 142
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "sysVersion":I
    :goto_1
    return-object v5

    .line 114
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "sysVersion":I
    :cond_1
    :try_start_1
    const-string v5, "com.android.internal.policy.PolicyManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 115
    const-string v5, "makeNewLayoutInflater"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 117
    .local v3, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    iput-object v5, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 120
    const-string v5, "Wegame_plugin"

    const-string/jumbo v6, "sysVersion<23"

    invoke-static {v5, v6}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_0

    .line 122
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e1":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 125
    .end local v1    # "e1":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 126
    .local v1, "e1":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 127
    .end local v1    # "e1":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 128
    .local v1, "e1":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 129
    .end local v1    # "e1":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v1

    .line 130
    .local v1, "e1":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 131
    .end local v1    # "e1":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v1

    .line 132
    .local v1, "e1":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 133
    .end local v1    # "e1":Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v1

    .line 134
    .local v1, "e1":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 142
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "e1":Ljava/lang/reflect/InvocationTargetException;
    .end local v4    # "sysVersion":I
    :cond_2
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mTheme:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mTheme:Landroid/content/res/Resources$Theme;

    .line 151
    :goto_0
    return-object v0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mTheme:Landroid/content/res/Resources$Theme;

    .line 151
    iget-object v0, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mTheme:Landroid/content/res/Resources$Theme;

    goto :goto_0
.end method

.method protected loadResources()V
    .locals 9

    .prologue
    .line 38
    :try_start_0
    const-class v4, Landroid/content/res/AssetManager;

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetManager;

    .line 39
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "addAssetPath"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 41
    .local v0, "addAssetPath":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tencent/msdk/testplugin/PluginContext;->pluginApkPath:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iput-object v1, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mAssetManager:Landroid/content/res/AssetManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v0    # "addAssetPath":Ljava/lang/reflect/Method;
    .end local v1    # "assetManager":Landroid/content/res/AssetManager;
    :goto_0
    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 47
    .local v3, "superRes":Landroid/content/res/Resources;
    new-instance v4, Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    .line 48
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v4, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mResources:Landroid/content/res/Resources;

    .line 49
    return-void

    .line 43
    .end local v3    # "superRes":Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 44
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setContext(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/tencent/msdk/testplugin/PluginContext;->mClassLoader:Ljava/lang/ClassLoader;

    .line 76
    return-void
.end method
