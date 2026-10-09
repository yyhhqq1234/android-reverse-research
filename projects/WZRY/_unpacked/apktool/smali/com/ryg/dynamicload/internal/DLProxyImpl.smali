.class public Lcom/ryg/dynamicload/internal/DLProxyImpl;
.super Ljava/lang/Object;
.source "DLProxyImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DLProxyImpl"


# instance fields
.field private mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mClass:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field protected mPluginActivity:Lcom/ryg/dynamicload/DLPlugin;

.field private mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

.field private mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

.field private mProxyActivity:Landroid/app/Activity;

.field private mResources:Landroid/content/res/Resources;

.field private mTheme:Landroid/content/res/Resources$Theme;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mProxyActivity:Landroid/app/Activity;

    .line 67
    return-void
.end method

.method private handleActivityInfo()V
    .locals 5

    .prologue
    .line 100
    const-string v2, "DLProxyImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleActivityInfo, theme="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v2, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->theme:I

    if-lez v2, :cond_0

    .line 102
    iget-object v2, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mProxyActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTheme(I)V

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mProxyActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 105
    .local v1, "superTheme":Landroid/content/res/Resources$Theme;
    iget-object v2, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    iput-object v2, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mTheme:Landroid/content/res/Resources$Theme;

    .line 106
    iget-object v2, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 109
    :try_start_0
    iget-object v2, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mTheme:Landroid/content/res/Resources$Theme;

    iget-object v3, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->theme:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initializeActivityInfo()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 70
    iget-object v4, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    iget-object v2, v4, Lcom/ryg/dynamicload/internal/DLPluginPackage;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 71
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_4

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v4, v4

    if-lez v4, :cond_4

    .line 72
    iget-object v4, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mClass:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 73
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    aget-object v4, v4, v3

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v4, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mClass:Ljava/lang/String;

    .line 77
    :cond_0
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v4, Landroid/content/pm/ApplicationInfo;->theme:I

    .line 78
    .local v1, "defaultTheme":I
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_4

    aget-object v0, v4, v3

    .line 79
    .local v0, "a":Landroid/content/pm/ActivityInfo;
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v7, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mClass:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 80
    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 82
    iget-object v6, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget v6, v6, Landroid/content/pm/ActivityInfo;->theme:I

    if-nez v6, :cond_1

    .line 83
    if-eqz v1, :cond_2

    .line 84
    iget-object v6, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iput v1, v6, Landroid/content/pm/ActivityInfo;->theme:I

    .line 78
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    :cond_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xe

    if-lt v6, v7, :cond_3

    .line 87
    iget-object v6, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    const v7, 0x1030128

    iput v7, v6, Landroid/content/pm/ActivityInfo;->theme:I

    goto :goto_1

    .line 89
    :cond_3
    iget-object v6, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    const v7, 0x1030005

    iput v7, v6, Landroid/content/pm/ActivityInfo;->theme:I

    goto :goto_1

    .line 97
    .end local v0    # "a":Landroid/content/pm/ActivityInfo;
    .end local v1    # "defaultTheme":I
    :cond_4
    return-void
.end method


# virtual methods
.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mAssetManager:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    iget-object v0, v0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->classLoader:Ldalvik/system/DexClassLoader;

    return-object v0
.end method

.method public getRemoteActivity()Lcom/ryg/dynamicload/DLPlugin;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginActivity:Lcom/ryg/dynamicload/DLPlugin;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mTheme:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method protected launchTargetActivity()V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 148
    :try_start_0
    invoke-virtual {p0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 149
    .local v2, "classLoader":Ljava/lang/ClassLoader;
    if-nez v2, :cond_1

    .line 167
    .end local v2    # "classLoader":Ljava/lang/ClassLoader;
    :cond_0
    :goto_0
    return-void

    .line 150
    .restart local v2    # "classLoader":Ljava/lang/ClassLoader;
    :cond_1
    iget-object v7, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mClass:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 151
    .local v5, "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 152
    .local v6, "localConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 153
    .local v4, "instance":Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, Lcom/ryg/dynamicload/DLPlugin;

    move-object v7, v0

    iput-object v7, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginActivity:Lcom/ryg/dynamicload/DLPlugin;

    .line 154
    iget-object v7, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginActivity:Lcom/ryg/dynamicload/DLPlugin;

    if-eqz v7, :cond_0

    .line 156
    iget-object v7, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mProxyActivity:Landroid/app/Activity;

    check-cast v7, Lcom/ryg/dynamicload/internal/DLAttachable;

    iget-object v8, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginActivity:Lcom/ryg/dynamicload/DLPlugin;

    iget-object v9, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

    invoke-interface {v7, v8, v9}, Lcom/ryg/dynamicload/internal/DLAttachable;->attach(Lcom/ryg/dynamicload/DLPlugin;Lcom/ryg/dynamicload/internal/DLPluginManager;)V

    .line 157
    const-string v7, "DLProxyImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "instance = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v7, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginActivity:Lcom/ryg/dynamicload/DLPlugin;

    iget-object v8, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mProxyActivity:Landroid/app/Activity;

    iget-object v9, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    invoke-interface {v7, v8, v9}, Lcom/ryg/dynamicload/DLPlugin;->attach(Landroid/app/Activity;Lcom/ryg/dynamicload/internal/DLPluginPackage;)V

    .line 161
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 162
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v7, "extra.from"

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 163
    iget-object v7, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginActivity:Lcom/ryg/dynamicload/DLPlugin;

    invoke-interface {v7, v1}, Lcom/ryg/dynamicload/DLPlugin;->onCreate(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "classLoader":Ljava/lang/ClassLoader;
    .end local v4    # "instance":Ljava/lang/Object;
    .end local v5    # "localClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "localConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v3

    .line 165
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 120
    sget-object v0, Lcom/ryg/utils/DLConfigs;->sPluginClassloader:Ljava/lang/ClassLoader;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 122
    const-string v0, "extra.package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPackageName:Ljava/lang/String;

    .line 123
    const-string v0, "extra.class"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mClass:Ljava/lang/String;

    .line 124
    const-string v0, "DLProxyImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mClass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mProxyActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/ryg/dynamicload/internal/DLPluginManager;->getInstance(Landroid/content/Context;)Lcom/ryg/dynamicload/internal/DLPluginManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

    .line 127
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

    if-nez v0, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginManager:Lcom/ryg/dynamicload/internal/DLPluginManager;

    iget-object v1, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ryg/dynamicload/internal/DLPluginManager;->getPackage(Ljava/lang/String;)Lcom/ryg/dynamicload/internal/DLPluginPackage;

    move-result-object v0

    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    .line 132
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    iget-object v0, v0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->assetManager:Landroid/content/res/AssetManager;

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    iget-object v0, v0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->assetManager:Landroid/content/res/AssetManager;

    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mAssetManager:Landroid/content/res/AssetManager;

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    iget-object v0, v0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->resources:Landroid/content/res/Resources;

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mPluginPackage:Lcom/ryg/dynamicload/internal/DLPluginPackage;

    iget-object v0, v0, Lcom/ryg/dynamicload/internal/DLPluginPackage;->resources:Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLProxyImpl;->mResources:Landroid/content/res/Resources;

    .line 139
    :cond_3
    invoke-direct {p0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->initializeActivityInfo()V

    .line 140
    invoke-direct {p0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->handleActivityInfo()V

    .line 141
    invoke-virtual {p0}, Lcom/ryg/dynamicload/internal/DLProxyImpl;->launchTargetActivity()V

    goto :goto_0
.end method
