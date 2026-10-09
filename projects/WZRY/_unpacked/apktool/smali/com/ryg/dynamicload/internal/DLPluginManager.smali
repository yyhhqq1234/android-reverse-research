.class public Lcom/ryg/dynamicload/internal/DLPluginManager;
.super Ljava/lang/Object;
.source "DLPluginManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ryg/dynamicload/internal/DLPluginManager$OnFetchProxyServiceClass;
    }
.end annotation


# static fields
.field public static final START_RESULT_NO_CLASS:I = 0x2

.field public static final START_RESULT_NO_PKG:I = 0x1

.field public static final START_RESULT_SUCCESS:I = 0x0

.field public static final START_RESULT_TYPE_ERROR:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DLPluginManager"

.field private static sInstance:Lcom/ryg/dynamicload/internal/DLPluginManager;


# instance fields
.field private dexOutputPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFrom:I

.field private mNativeLibDir:Ljava/lang/String;

.field public final mPackagesHolder:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ryg/dynamicload/internal/DLPluginPackage;",
            ">;"
        }
    .end annotation
.end field

.field public mPluginContext:Landroid/content/Context;

.field private mResult:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mPackagesHolder:Ljava/util/HashMap;

    .line 79
    iput v2, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mFrom:I

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mNativeLibDir:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mContext:Landroid/content/Context;

    .line 89
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mContext:Landroid/content/Context;

    const-string v1, "pluginlib"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mNativeLibDir:Ljava/lang/String;

    .line 90
    return-void
.end method

.method static synthetic access$002(Lcom/ryg/dynamicload/internal/DLPluginManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/ryg/dynamicload/internal/DLPluginManager;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mResult:I

    return p1
.end method

.method private copySoLib(Ljava/lang/String;I)V
    .locals 3
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "pluginVersion"    # I

    .prologue
    .line 205
    invoke-static {}, Lcom/ryg/utils/SoLibManager;->getSoLoader()Lcom/ryg/utils/SoLibManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mNativeLibDir:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2, p2}, Lcom/ryg/utils/SoLibManager;->copyPluginSoLib(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 206
    return-void
.end method

.method private createAssetManager(Ljava/lang/String;)Landroid/content/res/AssetManager;
    .locals 8
    .param p1, "dexPath"    # Ljava/lang/String;

    .prologue
    .line 170
    :try_start_0
    const-class v3, Landroid/content/res/AssetManager;

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/AssetManager;

    .line 171
    .local v1, "assetManager":Landroid/content/res/AssetManager;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "addAssetPath"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 172
    .local v0, "addAssetPath":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v0    # "addAssetPath":Ljava/lang/reflect/Method;
    .end local v1    # "assetManager":Landroid/content/res/AssetManager;
    :goto_0
    return-object v1

    .line 174
    :catch_0
    move-exception v2

    .line 175
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createDexClassLoader(Ljava/lang/String;)Ldalvik/system/DexClassLoader;
    .locals 5
    .param p1, "dexPath"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v2, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mContext:Landroid/content/Context;

    const-string v3, "dex"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 163
    .local v0, "dexOutputDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->dexOutputPath:Ljava/lang/String;

    .line 164
    new-instance v1, Ldalvik/system/DexClassLoader;

    iget-object v2, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->dexOutputPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mNativeLibDir:Ljava/lang/String;

    iget-object v4, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v1, p1, v2, v3, v4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 165
    .local v1, "loader":Ldalvik/system/DexClassLoader;
    return-object v1
.end method

.method private createResources(Landroid/content/res/AssetManager;)Landroid/content/res/Resources;
    .locals 4
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;

    .prologue
    .line 186
    iget-object v2, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 187
    .local v1, "superRes":Landroid/content/res/Resources;
    new-instance v0, Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v0, p1, v2, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .line 188
    .local v0, "resources":Landroid/content/res/Resources;
    return-object v0
.end method

.method private fetchProxyServiceClass(Lcom/ryg/dynamicload/internal/DLIntent;Lcom/ryg/dynamicload/internal/DLPluginManager$OnFetchProxyServiceClass;)V
    .locals 12
    .param p1, "dlIntent"    # Lcom/ryg/dynamicload/internal/DLIntent;
    .param p2, "fetchProxyServiceClass"    # Lcom/ryg/dynamicload/internal/DLPluginManager$OnFetchProxyServiceClass;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 477
    invoke-virtual {p1}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v2

    .line 478
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 479
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "disallow null packageName."

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 481
    :cond_0
    const-string v5, "DLPluginManager"

    const-string v6, "startPluginService fetchProxyServiceClass packageName %s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v5, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mPackagesHolder:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ryg/dynamicload/internal/DLPluginPackage;

    .line 484
    .local v3, "pluginPackage":Lcom/ryg/dynamicload/internal/DLPluginPackage;
    if-nez v3, :cond_1

    .line 485
    invoke-interface {p2, v10, v11}, Lcom/ryg/dynamicload/internal/DLPluginManager$OnFetchProxyServiceClass;->onFetch(ILjava/lang/Class;)V

    .line 510
    :goto_0
    return-void

    .line 488
    :cond_1
    const-string v5, "DLPluginManager"

    const-string v6, "startPluginService fetchProxyServiceClass pluginPackage %s"

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, v3, Lcom/ryg/dynamicload/internal/DLPluginPackage;->packageName:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    invoke-virtual {p1}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginClass()Ljava/lang/String;

    move-result-object v0

    .line 492
    .local v0, "className":Ljava/lang/String;
    const-string v5, "DLPluginManager"

    const-string v6, "startPluginService fetchProxyServiceClass className %s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v0, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v5, v3, Lcom/ryg/dynamicload/internal/DLPluginPackage;->classLoader:Ldalvik/system/DexClassLoader;

    invoke-direct {p0, v5, v0}, Lcom/ryg/dynamicload/internal/DLPluginManager;->loadPluginClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 494
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_2

    .line 495
    const/4 v5, 0x2

    invoke-interface {p2, v5, v11}, Lcom/ryg/dynamicload/internal/DLPluginManager$OnFetchProxyServiceClass;->onFetch(ILjava/lang/Class;)V

    goto :goto_0

    .line 499
    :cond_2
    invoke-direct {p0, v1}, Lcom/ryg/dynamicload/internal/DLPluginManager;->getProxyServiceClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    .line 500
    .local v4, "proxyServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    if-nez v4, :cond_3

    .line 501
    const/4 v5, 0x3

    invoke-interface {p2, v5, v11}, Lcom/ryg/dynamicload/internal/DLPluginManager$OnFetchProxyServiceClass;->onFetch(ILjava/lang/Class;)V

    goto :goto_0

    .line 504
    :cond_3
    const-string v5, "DLPluginManager"

    const-string v6, "startPluginService fetchProxyServiceClass proxyServiceClass %s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v4, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    const-string v5, "extra.class"

    invoke-virtual {p1, v5, v0}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    const-string v5, "extra.package"

    invoke-virtual {p1, v5, v2}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    invoke-interface {p2, v9, v4}, Lcom/ryg/dynamicload/internal/DLPluginManager$OnFetchProxyServiceClass;->onFetch(ILjava/lang/Class;)V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/ryg/dynamicload/internal/DLPluginManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    const-class v1, Lcom/ryg/dynamicload/internal/DLPluginManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ryg/dynamicload/internal/DLPluginManager;->sInstance:Lcom/ryg/dynamicload/internal/DLPluginManager;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/ryg/dynamicload/internal/DLPluginManager;

    invoke-direct {v0, p0}, Lcom/ryg/dynamicload/internal/DLPluginManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ryg/dynamicload/internal/DLPluginManager;->sInstance:Lcom/ryg/dynamicload/internal/DLPluginManager;

    .line 96
    :cond_0
    sget-object v0, Lcom/ryg/dynamicload/internal/DLPluginManager;->sInstance:Lcom/ryg/dynamicload/internal/DLPluginManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPluginActivityFullPath(Lcom/ryg/dynamicload/internal/DLIntent;Lcom/ryg/dynamicload/internal/DLPluginPackage;)Ljava/lang/String;
    .locals 3
    .param p1, "dlIntent"    # Lcom/ryg/dynamicload/internal/DLIntent;
    .param p2, "pluginPackage"    # Lcom/ryg/dynamicload/internal/DLPluginPackage;

    .prologue
    .line 525
    invoke-virtual {p1}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginClass()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "className":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/ryg/dynamicload/internal/DLPluginPackage;->defaultActivity:Ljava/lang/String;

    .line 527
    :cond_0
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 530
    :cond_1
    return-object v0
.end method

.method private getProxyActivityClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 542
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 543
    .local v0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    const-class v1, Lcom/ryg/dynamicload/DLBasePluginActivity;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 544
    const-class v0, Lcom/ryg/dynamicload/DLProxyActivity;

    .line 547
    :cond_0
    return-object v0
.end method

.method private getProxyServiceClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Class",
            "<+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation

    .prologue
    .line 551
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 552
    .local v0, "proxyServiceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Service;>;"
    const-class v1, Lcom/ryg/dynamicload/DLBasePluginService;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 553
    const-class v0, Lcom/ryg/dynamicload/DLProxyService;

    .line 557
    :cond_0
    return-object v0
.end method

.method private loadPluginClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 514
    const/4 v0, 0x0

    .line 516
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p2, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 521
    :goto_0
    return-object v0

    .line 517
    :catch_0
    move-exception v1

    .line 518
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private performStartActivityForResult(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dlIntent"    # Lcom/ryg/dynamicload/internal/DLIntent;
    .param p3, "requestCode"    # I

    .prologue
    .line 561
    const-string v0, "DLPluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginClass()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 563
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 567
    :goto_0
    return-void

    .line 565
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private preparePluginEnv(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Lcom/ryg/dynamicload/internal/DLPluginPackage;
    .locals 8
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "dexPath"    # Ljava/lang/String;

    .prologue
    .line 144
    iget-object v6, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mPackagesHolder:Ljava/util/HashMap;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ryg/dynamicload/internal/DLPluginPackage;

    .line 145
    .local v2, "pluginPackage":Lcom/ryg/dynamicload/internal/DLPluginPackage;
    if-eqz v2, :cond_0

    move-object v3, v2

    .end local v2    # "pluginPackage":Lcom/ryg/dynamicload/internal/DLPluginPackage;
    .local v3, "pluginPackage":Lcom/ryg/dynamicload/internal/DLPluginPackage;
    move-object v4, v2

    .line 156
    .end local v3    # "pluginPackage":Lcom/ryg/dynamicload/internal/DLPluginPackage;
    .local v4, "pluginPackage":Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 148
    .end local v4    # "pluginPackage":Ljava/lang/Object;
    .restart local v2    # "pluginPackage":Lcom/ryg/dynamicload/internal/DLPluginPackage;
    :cond_0
    invoke-direct {p0, p2}, Lcom/ryg/dynamicload/internal/DLPluginManager;->createDexClassLoader(Ljava/lang/String;)Ldalvik/system/DexClassLoader;

    move-result-object v1

    .line 149
    .local v1, "dexClassLoader":Ldalvik/system/DexClassLoader;
    invoke-direct {p0, p2}, Lcom/ryg/dynamicload/internal/DLPluginManager;->createAssetManager(Ljava/lang/String;)Landroid/content/res/AssetManager;

    move-result-object v0

    .line 150
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    invoke-direct {p0, v0}, Lcom/ryg/dynamicload/internal/DLPluginManager;->createResources(Landroid/content/res/AssetManager;)Landroid/content/res/Resources;

    move-result-object v5

    .line 152
    .local v5, "resources":Landroid/content/res/Resources;
    new-instance v2, Lcom/ryg/dynamicload/internal/DLPluginPackage;

    .end local v2    # "pluginPackage":Lcom/ryg/dynamicload/internal/DLPluginPackage;
    iget-object v6, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6, v1, v5, p1}, Lcom/ryg/dynamicload/internal/DLPluginPackage;-><init>(Landroid/content/Context;Ldalvik/system/DexClassLoader;Landroid/content/res/Resources;Landroid/content/pm/PackageInfo;)V

    .line 153
    .restart local v2    # "pluginPackage":Lcom/ryg/dynamicload/internal/DLPluginPackage;
    invoke-virtual {v2}, Lcom/ryg/dynamicload/internal/DLPluginPackage;->getPluginContext()Lcom/ryg/dynamicload/internal/DLPluginContext;

    move-result-object v6

    iput-object v6, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mPluginContext:Landroid/content/Context;

    .line 154
    iget-object v6, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mPackagesHolder:Ljava/util/HashMap;

    iget-object v7, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v2

    .end local v2    # "pluginPackage":Lcom/ryg/dynamicload/internal/DLPluginPackage;
    .restart local v3    # "pluginPackage":Lcom/ryg/dynamicload/internal/DLPluginPackage;
    move-object v4, v2

    .line 156
    .restart local v4    # "pluginPackage":Ljava/lang/Object;
    goto :goto_0
.end method


# virtual methods
.method public bindPluginService(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;Landroid/content/ServiceConnection;I)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dlIntent"    # Lcom/ryg/dynamicload/internal/DLIntent;
    .param p3, "conn"    # Landroid/content/ServiceConnection;
    .param p4, "flags"    # I

    .prologue
    .line 427
    iget v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mFrom:I

    if-nez v0, :cond_0

    .line 428
    invoke-virtual {p2}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/ryg/dynamicload/internal/DLIntent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    invoke-virtual {p1, p2, p3, p4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 430
    const/4 v0, 0x0

    .line 447
    :goto_0
    return v0

    .line 433
    :cond_0
    new-instance v0, Lcom/ryg/dynamicload/internal/DLPluginManager$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ryg/dynamicload/internal/DLPluginManager$3;-><init>(Lcom/ryg/dynamicload/internal/DLPluginManager;Lcom/ryg/dynamicload/internal/DLIntent;Landroid/content/Context;Landroid/content/ServiceConnection;I)V

    invoke-direct {p0, p2, v0}, Lcom/ryg/dynamicload/internal/DLPluginManager;->fetchProxyServiceClass(Lcom/ryg/dynamicload/internal/DLIntent;Lcom/ryg/dynamicload/internal/DLPluginManager$OnFetchProxyServiceClass;)V

    .line 447
    iget v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mResult:I

    goto :goto_0
.end method

.method public getPackage(Ljava/lang/String;)Lcom/ryg/dynamicload/internal/DLPluginPackage;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mPackagesHolder:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ryg/dynamicload/internal/DLPluginPackage;

    return-object v0
.end method

.method public inviteWindow(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "src"    # I

    .prologue
    .line 269
    const-string v0, "com.tencent.tga.plugin"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/ryg/dynamicload/internal/DLPluginManager;->pluginCenterNotifiInvite(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 270
    return-void
.end method

.method public loadApk(Ljava/lang/String;I)Lcom/ryg/dynamicload/internal/DLPluginPackage;
    .locals 1
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "pluginVersion"    # I

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/ryg/dynamicload/internal/DLPluginManager;->loadApk(Ljava/lang/String;ZI)Lcom/ryg/dynamicload/internal/DLPluginPackage;

    move-result-object v0

    return-object v0
.end method

.method public loadApk(Ljava/lang/String;ZI)Lcom/ryg/dynamicload/internal/DLPluginPackage;
    .locals 4
    .param p1, "dexPath"    # Ljava/lang/String;
    .param p2, "hasSoLib"    # Z
    .param p3, "pluginVersion"    # I

    .prologue
    .line 119
    const/4 v2, 0x1

    iput v2, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mFrom:I

    .line 121
    iget-object v2, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 123
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_1

    .line 124
    const/4 v1, 0x0

    .line 132
    :cond_0
    :goto_0
    return-object v1

    .line 127
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/ryg/dynamicload/internal/DLPluginManager;->preparePluginEnv(Landroid/content/pm/PackageInfo;Ljava/lang/String;)Lcom/ryg/dynamicload/internal/DLPluginPackage;

    move-result-object v1

    .line 128
    .local v1, "pluginPackage":Lcom/ryg/dynamicload/internal/DLPluginPackage;
    if-eqz p2, :cond_0

    .line 129
    invoke-direct {p0, p1, p3}, Lcom/ryg/dynamicload/internal/DLPluginManager;->copySoLib(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public playWindowPlayer(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 265
    const-string v0, "com.tencent.tga.plugin"

    invoke-virtual {p0, p1, v0, p2}, Lcom/ryg/dynamicload/internal/DLPluginManager;->pluginCenterNotifi(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public pluginCenterNotifi(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 276
    :try_start_0
    const-string v5, "DLPluginManager"

    const-string v6, "pluginCenterNotifim PackagesHolder %s  --- %s "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mPackagesHolder:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v5, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mPackagesHolder:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 279
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ryg/dynamicload/internal/DLPluginPackage;>;"
    const-string v7, "DLPluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pluginCenterNotifim Key = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", Value = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ryg/dynamicload/internal/DLPluginPackage;

    iget-object v5, v5, Lcom/ryg/dynamicload/internal/DLPluginPackage;->defaultActivity:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 292
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ryg/dynamicload/internal/DLPluginPackage;>;"
    :catch_0
    move-exception v4

    .line 293
    .local v4, "throwable":Ljava/lang/Throwable;
    const-string v5, "DLPluginManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pluginCenterNotifi throwable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .end local v4    # "throwable":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    return-void

    .line 282
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mPackagesHolder:Ljava/util/HashMap;

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ryg/dynamicload/internal/DLPluginPackage;

    .line 284
    .local v3, "pluginPackage":Lcom/ryg/dynamicload/internal/DLPluginPackage;
    if-eqz v3, :cond_0

    .line 288
    iget-object v5, v3, Lcom/ryg/dynamicload/internal/DLPluginPackage;->classLoader:Ldalvik/system/DexClassLoader;

    const-string v6, "com.tencent.tga.liveplugin.notificenter.PluginNotifi"

    invoke-direct {p0, v5, v6}, Lcom/ryg/dynamicload/internal/DLPluginManager;->loadPluginClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 289
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "windowPlaer"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/app/Activity;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/content/res/Resources;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 290
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    iget-object v8, v3, Lcom/ryg/dynamicload/internal/DLPluginPackage;->resources:Landroid/content/res/Resources;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v5, "DLPluginManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pluginCenterNotifim method end "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public pluginCenterNotifiInvite(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "src"    # I

    .prologue
    .line 299
    :try_start_0
    const-string v5, "DLPluginManager"

    const-string v6, "pluginCenterNotifim PackagesHolder %s  --- %s "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mPackagesHolder:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v5, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mPackagesHolder:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 302
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ryg/dynamicload/internal/DLPluginPackage;>;"
    const-string v7, "DLPluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pluginCenterNotifim Key = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", Value = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ryg/dynamicload/internal/DLPluginPackage;

    iget-object v5, v5, Lcom/ryg/dynamicload/internal/DLPluginPackage;->defaultActivity:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 315
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ryg/dynamicload/internal/DLPluginPackage;>;"
    :catch_0
    move-exception v4

    .line 316
    .local v4, "throwable":Ljava/lang/Throwable;
    const-string v5, "DLPluginManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pluginCenterNotifi throwable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .end local v4    # "throwable":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    return-void

    .line 305
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mPackagesHolder:Ljava/util/HashMap;

    invoke-virtual {v5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ryg/dynamicload/internal/DLPluginPackage;

    .line 307
    .local v3, "pluginPackage":Lcom/ryg/dynamicload/internal/DLPluginPackage;
    if-eqz v3, :cond_0

    .line 311
    iget-object v5, v3, Lcom/ryg/dynamicload/internal/DLPluginPackage;->classLoader:Ldalvik/system/DexClassLoader;

    const-string v6, "com.tencent.tga.liveplugin.notificenter.PluginNotifi"

    invoke-direct {p0, v5, v6}, Lcom/ryg/dynamicload/internal/DLPluginManager;->loadPluginClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 312
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "windowInvite"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/app/Activity;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/content/res/Resources;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    const-class v8, Ljava/lang/Integer;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 313
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    iget-object v8, v3, Lcom/ryg/dynamicload/internal/DLPluginPackage;->resources:Landroid/content/res/Resources;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    const/4 v7, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    const-string v5, "DLPluginManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pluginCenterNotifim method end "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public startLivePlayer(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 323
    :try_start_0
    const-string v5, "DLPluginManager"

    const-string v6, "startLivePlayer PackagesHolder %s  --- %s "

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mPackagesHolder:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v5, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mPackagesHolder:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 326
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ryg/dynamicload/internal/DLPluginPackage;>;"
    const-string v7, "DLPluginManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startLivePlayer Key = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", Value = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ryg/dynamicload/internal/DLPluginPackage;

    iget-object v5, v5, Lcom/ryg/dynamicload/internal/DLPluginPackage;->defaultActivity:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 342
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ryg/dynamicload/internal/DLPluginPackage;>;"
    :catch_0
    move-exception v4

    .line 343
    .local v4, "throwable":Ljava/lang/Throwable;
    const-string v5, "DLPluginManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startLivePlayer throwable "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    .end local v4    # "throwable":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    return-void

    .line 329
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mPackagesHolder:Ljava/util/HashMap;

    const-string v6, "com.tencent.tga.plugin"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ryg/dynamicload/internal/DLPluginPackage;

    .line 331
    .local v3, "pluginPackage":Lcom/ryg/dynamicload/internal/DLPluginPackage;
    if-eqz v3, :cond_0

    .line 335
    const-string v5, "DLPluginManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startLivePlayer "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/ryg/dynamicload/internal/DLPluginPackage;->defaultActivity:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v5, v3, Lcom/ryg/dynamicload/internal/DLPluginPackage;->classLoader:Ldalvik/system/DexClassLoader;

    const-string v6, "com.tencent.tga.liveplugin.notificenter.PluginNotifi"

    invoke-direct {p0, v5, v6}, Lcom/ryg/dynamicload/internal/DLPluginManager;->loadPluginClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 337
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "DLPluginManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startLivePlayer clazz  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v5, "launchLivePlayer"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/app/Activity;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 339
    .local v2, "method":Ljava/lang/reflect/Method;
    const-string v5, "DLPluginManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startLivePlayer method  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v5, "DLPluginManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startLivePlayer method end "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public startNativePlayer(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/WindowManager$LayoutParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/ryg/dynamicload/internal/DLNativeView;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "vid"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "isFullScreen"    # Z
    .param p6, "params"    # Landroid/view/WindowManager$LayoutParams;
    .param p7, "openid"    # Ljava/lang/String;
    .param p8, "gameUid"    # Ljava/lang/String;
    .param p9, "areaid"    # Ljava/lang/String;

    .prologue
    .line 349
    :try_start_0
    iget-object v6, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mPackagesHolder:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 351
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ryg/dynamicload/internal/DLPluginPackage;>;"
    const-string v8, "DLPluginManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "startNativePlayer Key = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ", Value = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ryg/dynamicload/internal/DLPluginPackage;

    iget-object v6, v6, Lcom/ryg/dynamicload/internal/DLPluginPackage;->defaultActivity:Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 369
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ryg/dynamicload/internal/DLPluginPackage;>;"
    :catch_0
    move-exception v4

    .line 370
    .local v4, "throwable":Ljava/lang/Throwable;
    const-string v6, "DLPluginManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startNativePlayer throwable "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const/4 v5, 0x0

    .end local v4    # "throwable":Ljava/lang/Throwable;
    :goto_1
    return-object v5

    .line 354
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mPackagesHolder:Ljava/util/HashMap;

    const-string v7, "com.tencent.tga.plugin"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ryg/dynamicload/internal/DLPluginPackage;

    .line 356
    .local v3, "pluginPackage":Lcom/ryg/dynamicload/internal/DLPluginPackage;
    if-nez v3, :cond_1

    .line 357
    const/4 v5, 0x0

    goto :goto_1

    .line 360
    :cond_1
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 361
    .local v5, "view":Ljava/lang/Object;
    const-string v6, "DLPluginManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startNativePlayer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v6, v3, Lcom/ryg/dynamicload/internal/DLPluginPackage;->classLoader:Ldalvik/system/DexClassLoader;

    const-string v7, "com.tencent.tga.liveplugin.notificenter.PluginNotifi"

    invoke-direct {p0, v6, v7}, Lcom/ryg/dynamicload/internal/DLPluginManager;->loadPluginClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 363
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "DLPluginManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startNativePlayer clazz  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v6, "startNativePlayer"

    const/16 v7, 0x9

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Context;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/view/ViewGroup;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x4

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x5

    const-class v9, Landroid/view/WindowManager$LayoutParams;

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x7

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/16 v8, 0x8

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 365
    .local v2, "method":Ljava/lang/reflect/Method;
    const-string v6, "DLPluginManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startNativePlayer method  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const/16 v6, 0x9

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    const/4 v7, 0x3

    aput-object p4, v6, v7

    const/4 v7, 0x4

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x5

    aput-object p6, v6, v7

    const/4 v7, 0x6

    aput-object p7, v6, v7

    const/4 v7, 0x7

    aput-object p8, v6, v7

    const/16 v7, 0x8

    aput-object p9, v6, v7

    invoke-virtual {v2, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 367
    const-string v6, "DLPluginManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startNativePlayer method end view "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    check-cast v5, Lcom/ryg/dynamicload/internal/DLNativeView;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public startPluginActivity(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dlIntent"    # Lcom/ryg/dynamicload/internal/DLIntent;

    .prologue
    .line 211
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/ryg/dynamicload/internal/DLPluginManager;->startPluginActivityForResult(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;I)I

    move-result v0

    return v0
.end method

.method public startPluginActivityForResult(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;I)I
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dlIntent"    # Lcom/ryg/dynamicload/internal/DLIntent;
    .param p3, "requestCode"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 225
    iget v8, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mFrom:I

    if-nez v8, :cond_0

    .line 226
    invoke-virtual {p2}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginClass()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, p1, v6}, Lcom/ryg/dynamicload/internal/DLIntent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    invoke-direct {p0, p1, p2, p3}, Lcom/ryg/dynamicload/internal/DLPluginManager;->performStartActivityForResult(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;I)V

    .line 262
    :goto_0
    return v5

    .line 231
    :cond_0
    invoke-virtual {p2}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginPackage()Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 233
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "disallow null packageName."

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 236
    :cond_1
    iget-object v8, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mPackagesHolder:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ryg/dynamicload/internal/DLPluginPackage;

    .line 237
    .local v4, "pluginPackage":Lcom/ryg/dynamicload/internal/DLPluginPackage;
    if-nez v4, :cond_2

    move v5, v6

    .line 238
    goto :goto_0

    .line 241
    :cond_2
    invoke-direct {p0, p2, v4}, Lcom/ryg/dynamicload/internal/DLPluginManager;->getPluginActivityFullPath(Lcom/ryg/dynamicload/internal/DLIntent;Lcom/ryg/dynamicload/internal/DLPluginPackage;)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "className":Ljava/lang/String;
    iget-object v8, v4, Lcom/ryg/dynamicload/internal/DLPluginPackage;->classLoader:Ldalvik/system/DexClassLoader;

    invoke-direct {p0, v8, v1}, Lcom/ryg/dynamicload/internal/DLPluginManager;->loadPluginClass(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 245
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v2, :cond_3

    move v5, v7

    .line 246
    goto :goto_0

    .line 248
    :cond_3
    const-string v8, "DLPluginManager"

    const-string v9, "className = %s clazz = %s"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v5

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v6

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-direct {p0, v2}, Lcom/ryg/dynamicload/internal/DLPluginManager;->getProxyActivityClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 252
    .local v0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Activity;>;"
    const-string v7, "DLPluginManager"

    const-string v8, "className  activityClass= %s "

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v5

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    if-nez v0, :cond_4

    .line 254
    const/4 v5, 0x3

    goto :goto_0

    .line 258
    :cond_4
    const-string v6, "extra.class"

    invoke-virtual {p2, v6, v1}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v6, "extra.package"

    invoke-virtual {p2, v6, v3}, Lcom/ryg/dynamicload/internal/DLIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    iget-object v6, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v6, v0}, Lcom/ryg/dynamicload/internal/DLIntent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 261
    invoke-direct {p0, p1, p2, p3}, Lcom/ryg/dynamicload/internal/DLPluginManager;->performStartActivityForResult(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;I)V

    goto :goto_0
.end method

.method public startPluginService(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dlIntent"    # Lcom/ryg/dynamicload/internal/DLIntent;

    .prologue
    const/4 v0, 0x0

    .line 377
    const-string v1, "DLPluginManager"

    const-string v2, "startPluginService mFrom %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mFrom:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    iget v1, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mFrom:I

    if-nez v1, :cond_0

    .line 379
    invoke-virtual {p2}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginClass()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Lcom/ryg/dynamicload/internal/DLIntent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 398
    :goto_0
    return v0

    .line 384
    :cond_0
    new-instance v0, Lcom/ryg/dynamicload/internal/DLPluginManager$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/ryg/dynamicload/internal/DLPluginManager$1;-><init>(Lcom/ryg/dynamicload/internal/DLPluginManager;Lcom/ryg/dynamicload/internal/DLIntent;Landroid/content/Context;)V

    invoke-direct {p0, p2, v0}, Lcom/ryg/dynamicload/internal/DLPluginManager;->fetchProxyServiceClass(Lcom/ryg/dynamicload/internal/DLIntent;Lcom/ryg/dynamicload/internal/DLPluginManager$OnFetchProxyServiceClass;)V

    .line 398
    iget v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mResult:I

    goto :goto_0
.end method

.method public stopPluginService(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dlIntent"    # Lcom/ryg/dynamicload/internal/DLIntent;

    .prologue
    .line 403
    iget v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mFrom:I

    if-nez v0, :cond_0

    .line 404
    invoke-virtual {p2}, Lcom/ryg/dynamicload/internal/DLIntent;->getPluginClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/ryg/dynamicload/internal/DLIntent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    invoke-virtual {p1, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 406
    const/4 v0, 0x0

    .line 422
    :goto_0
    return v0

    .line 409
    :cond_0
    new-instance v0, Lcom/ryg/dynamicload/internal/DLPluginManager$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/ryg/dynamicload/internal/DLPluginManager$2;-><init>(Lcom/ryg/dynamicload/internal/DLPluginManager;Lcom/ryg/dynamicload/internal/DLIntent;Landroid/content/Context;)V

    invoke-direct {p0, p2, v0}, Lcom/ryg/dynamicload/internal/DLPluginManager;->fetchProxyServiceClass(Lcom/ryg/dynamicload/internal/DLIntent;Lcom/ryg/dynamicload/internal/DLPluginManager$OnFetchProxyServiceClass;)V

    .line 422
    iget v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mResult:I

    goto :goto_0
.end method

.method public unBindPluginService(Landroid/content/Context;Lcom/ryg/dynamicload/internal/DLIntent;Landroid/content/ServiceConnection;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dlIntent"    # Lcom/ryg/dynamicload/internal/DLIntent;
    .param p3, "conn"    # Landroid/content/ServiceConnection;

    .prologue
    .line 451
    iget v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mFrom:I

    if-nez v0, :cond_0

    .line 452
    invoke-virtual {p1, p3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 453
    const/4 v0, 0x0

    .line 467
    :goto_0
    return v0

    .line 456
    :cond_0
    new-instance v0, Lcom/ryg/dynamicload/internal/DLPluginManager$4;

    invoke-direct {v0, p0, p1, p3}, Lcom/ryg/dynamicload/internal/DLPluginManager$4;-><init>(Lcom/ryg/dynamicload/internal/DLPluginManager;Landroid/content/Context;Landroid/content/ServiceConnection;)V

    invoke-direct {p0, p2, v0}, Lcom/ryg/dynamicload/internal/DLPluginManager;->fetchProxyServiceClass(Lcom/ryg/dynamicload/internal/DLIntent;Lcom/ryg/dynamicload/internal/DLPluginManager$OnFetchProxyServiceClass;)V

    .line 467
    iget v0, p0, Lcom/ryg/dynamicload/internal/DLPluginManager;->mResult:I

    goto :goto_0
.end method
