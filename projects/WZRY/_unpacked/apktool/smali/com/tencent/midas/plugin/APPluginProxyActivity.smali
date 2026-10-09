.class public Lcom/tencent/midas/plugin/APPluginProxyActivity;
.super Landroid/app/Activity;
.source "APPluginProxyActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "APPluginProxyActivity"

.field private static gPluginApkFilePath:Ljava/lang/String;

.field protected static gPluginName:Ljava/lang/String;

.field public static mAppForground:Z

.field private static sMMapField:Ljava/lang/reflect/Field;

.field private static sUnparcelMethod:Ljava/lang/reflect/Method;


# instance fields
.field protected mCreateErrorInfo:Ljava/lang/String;

.field private mLaunchActivity:Ljava/lang/String;

.field private mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

.field private mPluginApkFilePath:Ljava/lang/String;

.field private mPluginName:Ljava/lang/String;

.field protected mStopFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mAppForground:Z

    .line 50
    const-string v0, "MidasPay"

    sput-object v0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->gPluginName:Ljava/lang/String;

    .line 52
    sput-object v1, Lcom/tencent/midas/plugin/APPluginProxyActivity;->gPluginApkFilePath:Ljava/lang/String;

    .line 587
    sput-object v1, Lcom/tencent/midas/plugin/APPluginProxyActivity;->sUnparcelMethod:Ljava/lang/reflect/Method;

    .line 588
    sput-object v1, Lcom/tencent/midas/plugin/APPluginProxyActivity;->sMMapField:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    iput-object v1, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mLaunchActivity:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    .line 43
    iput-object v1, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginApkFilePath:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginName:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mStopFlag:I

    .line 47
    iput-object v1, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mCreateErrorInfo:Ljava/lang/String;

    return-void
.end method

.method private initPlugin()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 432
    sget-object v0, Lcom/tencent/midas/plugin/APPluginStatic;->sPackageInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginApkFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 433
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v5, :cond_1

    .line 434
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginApkFilePath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/tencent/midas/plugin/APApkFileParser;->getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 435
    if-nez v5, :cond_0

    .line 436
    const-string v0, "Get Package Info Failed!"

    .line 455
    :goto_0
    return-object v0

    .line 438
    :cond_0
    sget-object v0, Lcom/tencent/midas/plugin/APPluginStatic;->sPackageInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginApkFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mLaunchActivity:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mLaunchActivity:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 442
    :cond_2
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_3

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v0, v0

    if-nez v0, :cond_4

    .line 443
    :cond_3
    const-string v0, "Activity Not Found!"

    goto :goto_0

    .line 445
    :cond_4
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mLaunchActivity:Ljava/lang/String;

    .line 448
    :cond_5
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginName:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginApkFilePath:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/tencent/midas/plugin/APPluginLoader;->getOrCreateClassLoaderByPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/DexClassLoader;

    move-result-object v4

    .line 449
    .local v4, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p0}, Lcom/tencent/midas/plugin/APPluginProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 450
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mLaunchActivity:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    .line 451
    .local v6, "mClassLaunchActivity":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v6}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/midas/plugin/IAPPluginActivity;

    iput-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    .line 452
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    iget-object v1, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginName:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginApkFilePath:Ljava/lang/String;

    move-object v3, p0

    invoke-interface/range {v0 .. v5}, Lcom/tencent/midas/plugin/IAPPluginActivity;->IInit(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/ClassLoader;Landroid/content/pm/PackageInfo;)V

    .line 454
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    invoke-virtual {p0}, Lcom/tencent/midas/plugin/APPluginProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/midas/plugin/IAPPluginActivity;->ISetIntent(Landroid/content/Intent;)V

    .line 455
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMoveTaskToBack(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x1

    .line 584
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStart3rdApp(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 559
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 580
    :cond_0
    :goto_0
    return v4

    .line 564
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 568
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 569
    .local v2, "compName":Landroid/content/ComponentName;
    if-eqz v2, :cond_4

    .line 570
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 571
    .local v3, "packageName":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "com.tencent.midas.pay"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 574
    :cond_3
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 575
    .local v1, "clsName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "com.qzone"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 580
    .end local v1    # "clsName":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private logStartPluginErrInfo(Ljava/lang/String;)V
    .locals 9
    .param p1, "errInfo"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 634
    move-object v3, p1

    .line 635
    .local v3, "lowerErrInfo":Ljava/lang/String;
    const-string v6, "permission"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "filenotfoundexception"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 636
    :cond_0
    const-string v6, "logStartPluginErrInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mPluginApkFilePath"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginApkFilePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-virtual {p0}, Lcom/tencent/midas/plugin/APPluginProxyActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 638
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    .line 639
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-lez v6, :cond_2

    move v1, v4

    .line 640
    .local v1, "isSystemApp":Z
    :goto_0
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v6, v6, 0x80

    if-lez v6, :cond_3

    move v2, v4

    .line 641
    .local v2, "isUpdateSystemApp":Z
    :goto_1
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", IsSystemApp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", IsUpdateSystemApp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "isSystemApp":Z
    .end local v2    # "isUpdateSystemApp":Z
    :cond_1
    :goto_2
    return-void

    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    move v1, v5

    .line 639
    goto :goto_0

    .restart local v1    # "isSystemApp":Z
    :cond_3
    move v2, v5

    .line 640
    goto :goto_1

    .line 643
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "isSystemApp":Z
    :cond_4
    const-string v4, "resources$notfoundexception"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "resourcesnotfoundexception"

    .line 644
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "classnotfoundexception"

    .line 645
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2
.end method

.method public static openActivityForResult(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 5
    .param p0, "contextActivity"    # Landroid/app/Activity;
    .param p1, "pluginName"    # Ljava/lang/String;
    .param p2, "apkFilePath"    # Ljava/lang/String;
    .param p3, "launchActivity"    # Ljava/lang/String;
    .param p4, "startIntent"    # Landroid/content/Intent;
    .param p5, "requestCode"    # I

    .prologue
    .line 376
    const-string v2, "APPLuginProxyActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APPluginProxyActivity openActivityForResult pluginName\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v2, "APPLuginProxyActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APPluginProxyActivity openActivityForResult contextActivity\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v2, "APPLuginProxyActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APPluginProxyActivity openActivityForResult apkFilePath\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v2, "APPLuginProxyActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APPluginProxyActivity openActivityForResult startIntent\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v2, "APPLuginProxyActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APPluginProxyActivity openActivityForResult startIntent\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v2, "APPLuginProxyActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APPluginProxyActivity openActivityForResult startIntent\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    sput-object p1, Lcom/tencent/midas/plugin/APPluginProxyActivity;->gPluginName:Ljava/lang/String;

    .line 388
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->getInstallPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/tencent/midas/plugin/APPluginProxyActivity;->gPluginApkFilePath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_0
    const-string v2, "pluginsdk_pluginName"

    invoke-virtual {p4, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const-string v2, "pluginsdk_launchActivity"

    invoke-virtual {p4, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    const-string v2, "pluginsdk_pluginpath"

    invoke-virtual {p4, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const-string v2, "APPLuginProxyActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "put is new process: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/tencent/midas/control/APMidasPayHelper;->isNewProcess:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string v2, "APPLuginProxyActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "put is log enable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/tencent/midas/control/APMidasPayHelper;->isLogEnable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v2, "pluginsdk_isNewProcess"

    sget-boolean v3, Lcom/tencent/midas/control/APMidasPayHelper;->isNewProcess:Z

    invoke-virtual {p4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 402
    const-string v2, "pluginsdk_logEnable"

    invoke-static {}, Lcom/tencent/midas/control/APMidasPayHelper;->isLogEnable()Z

    move-result v3

    invoke-virtual {p4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 405
    :try_start_1
    invoke-virtual {p0, p4, p5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 410
    :goto_1
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 406
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 407
    .local v1, "the":Ljava/lang/Throwable;
    const-string v2, "APPLuginProxyActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APPluginProxyActivity openActivityForResult Throwable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static setClassLoaderToEveryBundle(Landroid/os/Bundle;Ljava/lang/ClassLoader;)V
    .locals 8
    .param p0, "b"    # Landroid/os/Bundle;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 591
    if-nez p0, :cond_1

    .line 614
    :cond_0
    return-void

    .line 594
    :cond_1
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 595
    sget-object v4, Lcom/tencent/midas/plugin/APPluginProxyActivity;->sUnparcelMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/tencent/midas/plugin/APPluginProxyActivity;->sMMapField:Ljava/lang/reflect/Field;

    if-nez v4, :cond_3

    .line 596
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 597
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "unparcel"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/tencent/midas/plugin/APPluginProxyActivity;->sUnparcelMethod:Ljava/lang/reflect/Method;

    .line 598
    sget-object v4, Lcom/tencent/midas/plugin/APPluginProxyActivity;->sUnparcelMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 600
    const-string v4, "mMap"

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    sput-object v4, Lcom/tencent/midas/plugin/APPluginProxyActivity;->sMMapField:Ljava/lang/reflect/Field;

    .line 601
    sget-object v4, Lcom/tencent/midas/plugin/APPluginProxyActivity;->sMMapField:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 603
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    sget-object v4, Lcom/tencent/midas/plugin/APPluginProxyActivity;->sUnparcelMethod:Ljava/lang/reflect/Method;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    sget-object v4, Lcom/tencent/midas/plugin/APPluginProxyActivity;->sMMapField:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 606
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    .line 607
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 608
    .local v2, "obj":Ljava/lang/Object;
    instance-of v5, v2, Landroid/os/Bundle;

    if-eqz v5, :cond_4

    move-object v3, v2

    .line 609
    check-cast v3, Landroid/os/Bundle;

    .line 610
    .local v3, "subBundle":Landroid/os/Bundle;
    invoke-static {v3, p1}, Lcom/tencent/midas/plugin/APPluginProxyActivity;->setClassLoaderToEveryBundle(Landroid/os/Bundle;Ljava/lang/ClassLoader;)V

    goto :goto_0
.end method

.method private startPluginActivityForResult(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 3
    .param p1, "contextActivity"    # Landroid/app/Activity;
    .param p2, "launchActivity"    # Ljava/lang/String;
    .param p3, "startIntent"    # Landroid/content/Intent;
    .param p4, "requestCode"    # I

    .prologue
    .line 332
    const-string v1, "APPLuginProxyActivity"

    const-string v2, "APPluginProxyActivity startPluginActivityForResult.private"

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0, p2}, Lcom/tencent/midas/plugin/APPluginProxyActivity;->getProxyActivity(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pluginsdk_pluginName"

    iget-object v2, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    const-string v1, "pluginsdk_pluginpath"

    iget-object v2, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginApkFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v1, "pluginsdk_launchActivity"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    if-eqz p3, :cond_0

    .line 340
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 341
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 343
    :cond_0
    invoke-virtual {p1, v0, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 344
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 538
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    invoke-interface {v0, p1}, Lcom/tencent/midas/plugin/IAPPluginActivity;->IDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 541
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected getProxyActivity(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "pluginActivityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/tencent/midas/plugin/APPluginProxyActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 555
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected isWrapContent()Z
    .locals 2

    .prologue
    .line 194
    const/4 v0, 0x1

    .line 195
    .local v0, "isWrap":Z
    iget-object v1, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    invoke-interface {v1}, Lcom/tencent/midas/plugin/IAPPluginActivity;->IIsWrapContent()Z

    move-result v0

    .line 198
    :cond_0
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 348
    const-string v4, "APPLuginProxyActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onActivityResult requestCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " resultCode:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mPluginActivity:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 351
    iget-object v4, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    if-eqz v4, :cond_1

    .line 353
    :try_start_0
    iget-object v4, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginName:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->getInstallPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, "installPath":Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/midas/plugin/APPluginUtils;->getMD5FromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "MD5":Ljava/lang/String;
    iget-object v4, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginName:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/tencent/midas/plugin/APPluginLoader;->getClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 356
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 357
    invoke-virtual {p3, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 359
    :cond_0
    iget-object v4, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    invoke-interface {v4, p1, p2, p3}, Lcom/tencent/midas/plugin/IAPPluginActivity;->IOnActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .end local v0    # "MD5":Ljava/lang/String;
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v3    # "installPath":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 360
    :catch_0
    move-exception v2

    .line 361
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "APPLuginProxyActivity onActivityResult"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/midas/comm/APLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 417
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :goto_0
    return-void

    .line 418
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Lcom/tencent/midas/plugin/APPluginProxyActivity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 289
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 290
    iget-object v1, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    if-eqz v1, :cond_0

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    invoke-interface {v1, p1}, Lcom/tencent/midas/plugin/IAPPluginActivity;->IOnConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 16
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    const-string v12, "APPLuginProxyActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "APPluginProxyActivity onCreate gPluginName:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/tencent/midas/plugin/APPluginProxyActivity;->gPluginName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " gPluginApkFilePath1:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Lcom/tencent/midas/plugin/APPluginProxyActivity;->gPluginApkFilePath:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object v12, Lcom/tencent/midas/plugin/APPluginProxyActivity;->gPluginName:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 64
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const-string v12, "APPLuginProxyActivity"

    const-string v13, "gPluginName is null"

    invoke-static {v12, v13}, Lcom/tencent/midas/comm/APLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/midas/plugin/APPluginProxyActivity;->finish()V

    .line 67
    invoke-static {}, Lcom/tencent/midas/plugin/APPluginStatic;->removeAll()V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    sget-object v12, Lcom/tencent/midas/plugin/APPluginProxyActivity;->gPluginName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->getInstallPathString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 72
    .local v8, "installPath":Ljava/lang/String;
    invoke-static {v8}, Lcom/tencent/midas/plugin/APPluginUtils;->getMD5FromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "MD5":Ljava/lang/String;
    sget-object v12, Lcom/tencent/midas/plugin/APPluginProxyActivity;->gPluginName:Ljava/lang/String;

    invoke-static {v12, v1}, Lcom/tencent/midas/plugin/APPluginLoader;->getClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v4

    .line 75
    .local v4, "classLoader":Ljava/lang/ClassLoader;
    if-eqz p1, :cond_2

    if-eqz v4, :cond_2

    .line 76
    const-string v12, "APPLuginProxyActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "APPluginProxyActivity onCreate savedInstanceState="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", classLoader="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 80
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/midas/plugin/APPluginProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 81
    .local v9, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 82
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_4

    .line 83
    move-object/from16 v2, p1

    .line 94
    :goto_1
    const/4 v11, 0x0

    .line 95
    .local v11, "isNewProcess":Z
    const/4 v10, 0x1

    .line 99
    .local v10, "isLogEnable":Z
    :try_start_0
    const-string v12, "pluginsdk_pluginName"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginName:Ljava/lang/String;

    .line 100
    const-string v12, "pluginsdk_launchActivity"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mLaunchActivity:Ljava/lang/String;

    .line 101
    const-string v12, "pluginsdk_pluginpath"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginApkFilePath:Ljava/lang/String;

    .line 103
    const-string v12, "pluginsdk_isNewProcess"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 104
    const-string v12, "APPLuginProxyActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "is new process: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v12, "pluginsdk_logEnable"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 107
    const-string v12, "APPLuginProxyActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "is log enable: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_2
    move-object/from16 v0, p0

    invoke-static {v0, v11, v10}, Lcom/tencent/midas/comm/APLogUtil;->initAPLogIfNewProcess(Landroid/content/Context;ZZ)V

    .line 119
    const-string v12, "APPLuginProxyActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "APPluginProxyActivity onCreate mPluginName\uff1a"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", mLaunchActivity\uff1a"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mLaunchActivity:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", mPluginApkFilePath\uff1a"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginApkFilePath:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginApkFilePath:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 124
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->getInstallPath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 125
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginApkFilePath:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    .end local v7    # "file":Ljava/io/File;
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mLaunchActivity:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 133
    const-string v12, "Midas"

    const-string v13, "APPluginProxyActivity onCreate mLaunchActivity is null"

    invoke-static {v12, v13}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/midas/plugin/APPluginProxyActivity;->finish()V

    .line 136
    invoke-static {}, Lcom/tencent/midas/plugin/APPluginStatic;->removeAll()V

    goto/16 :goto_0

    .line 88
    .end local v10    # "isLogEnable":Z
    .end local v11    # "isNewProcess":Z
    :cond_4
    if-eqz v4, :cond_5

    .line 89
    invoke-virtual {v9, v4}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 91
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/midas/plugin/APPluginProxyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    goto/16 :goto_1

    .line 110
    .restart local v10    # "isLogEnable":Z
    .restart local v11    # "isNewProcess":Z
    :catch_0
    move-exception v5

    .line 111
    .local v5, "e":Ljava/lang/Exception;
    const-string v12, "APPLuginProxyActivity"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bundle exception:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tencent/midas/comm/APLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/midas/plugin/APPluginProxyActivity;->finish()V

    .line 114
    invoke-static {}, Lcom/tencent/midas/plugin/APPluginStatic;->removeAll()V

    goto/16 :goto_2

    .line 126
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 127
    .restart local v5    # "e":Ljava/lang/Exception;
    goto :goto_3

    .line 141
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_6
    const/4 v6, 0x0

    .line 142
    .local v6, "errInfo":Ljava/lang/String;
    const/4 v3, 0x0

    .line 143
    .local v3, "callSuper":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginName:Ljava/lang/String;

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginName:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_a

    .line 144
    :cond_7
    const-string v6, "Param mPluingLocation missing!"

    .line 167
    :cond_8
    :goto_4
    if-nez v3, :cond_9

    .line 168
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 172
    :cond_9
    if-eqz v6, :cond_0

    .line 173
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mCreateErrorInfo:Ljava/lang/String;

    .line 174
    const-string v12, "Midas"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "APPluginProxyActivity onCreate activity failed:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mCreateErrorInfo:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/tencent/midas/plugin/APPluginProxyActivity;->logStartPluginErrInfo(Ljava/lang/String;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mCreateErrorInfo:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/tencent/midas/plugin/APPluginProxyActivity;->shouldHandleStartPluginFailed(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 178
    invoke-static {}, Lcom/tencent/midas/data/APPluginReportManager;->getInstance()Lcom/tencent/midas/data/APPluginReportManager;

    move-result-object v12

    const-string/jumbo v13, "timename.launchpay"

    const-string v14, "sdk.loadapk_fail"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginName:Ljava/lang/String;

    invoke-virtual {v12, v13, v14, v15, v6}, Lcom/tencent/midas/data/APPluginReportManager;->insertData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v6, v12}, Lcom/tencent/midas/plugin/APPluginUtils;->showLaunchPluginFail(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/midas/plugin/APPluginProxyActivity;->finish()V

    .line 188
    invoke-static {}, Lcom/tencent/midas/plugin/APPluginStatic;->removeAll()V

    goto/16 :goto_0

    .line 148
    :cond_a
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/tencent/midas/plugin/APPluginProxyActivity;->initPlugin()Ljava/lang/String;

    move-result-object v6

    .line 150
    if-nez v6, :cond_8

    .line 152
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0xb

    if-lt v12, v13, :cond_b

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/tencent/midas/plugin/APPluginProxyActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    new-instance v13, Lcom/tencent/midas/plugin/APLayoutInflaterFactory;

    invoke-direct {v13}, Lcom/tencent/midas/plugin/APLayoutInflaterFactory;-><init>()V

    invoke-virtual {v12, v13}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 155
    :cond_b
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    const/4 v3, 0x1

    .line 157
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Lcom/tencent/midas/plugin/IAPPluginActivity;->IOnCreate(Landroid/os/Bundle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 159
    :catch_2
    move-exception v5

    .line 160
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v12, "Midas"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "APPluginProxyActivity onCreate:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    invoke-static {v5}, Lcom/tencent/midas/plugin/APPluginUtils;->getExceptionInfo(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_4
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 460
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    invoke-interface {v0, p1}, Lcom/tencent/midas/plugin/IAPPluginActivity;->IOnCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 463
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 268
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 269
    const-string v1, "APPluginProxyActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDestroy mPluginActivity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-static {}, Lcom/tencent/midas/comm/APLogUtil;->flushIfNewProcess()V

    .line 271
    iget-object v1, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    if-eqz v1, :cond_0

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    invoke-interface {v1}, Lcom/tencent/midas/plugin/IAPPluginActivity;->IOnDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    if-eqz v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    invoke-interface {v1, p1, p2}, Lcom/tencent/midas/plugin/IAPPluginActivity;->IOnKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 228
    :cond_0
    if-nez v0, :cond_1

    .line 229
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 231
    :cond_1
    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    invoke-interface {v0, p1, p2}, Lcom/tencent/midas/plugin/IAPPluginActivity;->IOnMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 490
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 205
    iget-object v3, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginName:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->getInstallPathString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, "installPath":Ljava/lang/String;
    invoke-static {v2}, Lcom/tencent/midas/plugin/APPluginUtils;->getMD5FromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "MD5":Ljava/lang/String;
    iget-object v3, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginName:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/tencent/midas/plugin/APPluginLoader;->getClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 208
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    const-string v3, "APPLuginProxyActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APPluginProxyActivity onNewIntent mPluginName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " classLoader: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 212
    :cond_0
    iget-object v3, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    if-eqz v3, :cond_1

    const-string v3, "cleartop"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    iget-object v3, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    invoke-interface {v3, p1}, Lcom/tencent/midas/plugin/IAPPluginActivity;->IOnNewIntent(Landroid/content/Intent;)V

    .line 215
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 478
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    invoke-interface {v0, p1}, Lcom/tencent/midas/plugin/IAPPluginActivity;->IOnOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 481
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 260
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 261
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    invoke-interface {v0}, Lcom/tencent/midas/plugin/IAPPluginActivity;->IOnPause()V

    .line 264
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 469
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    invoke-interface {v0, p1}, Lcom/tencent/midas/plugin/IAPPluginActivity;->IOnPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 472
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 495
    iget-object v4, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginName:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/tencent/midas/plugin/APPluginInstallerAndUpdater;->getInstallPathString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 496
    .local v3, "installPath":Ljava/lang/String;
    invoke-static {v3}, Lcom/tencent/midas/plugin/APPluginUtils;->getMD5FromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "MD5":Ljava/lang/String;
    iget-object v4, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginName:Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/tencent/midas/plugin/APPluginLoader;->getClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 498
    .local v1, "dexClassLoader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_0

    .line 500
    :try_start_0
    invoke-static {p1, v1}, Lcom/tencent/midas/plugin/APPluginProxyActivity;->setClassLoaderToEveryBundle(Landroid/os/Bundle;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 507
    iget-object v4, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    if-eqz v4, :cond_1

    .line 508
    iget-object v4, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    invoke-interface {v4, p1}, Lcom/tencent/midas/plugin/IAPPluginActivity;->IOnRestoreInstanceState(Landroid/os/Bundle;)V

    .line 510
    :cond_1
    return-void

    .line 501
    :catch_0
    move-exception v2

    .line 502
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 244
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 245
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    invoke-interface {v0}, Lcom/tencent/midas/plugin/IAPPluginActivity;->IOnResume()V

    .line 248
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    invoke-interface {v0, p1}, Lcom/tencent/midas/plugin/IAPPluginActivity;->IOnSaveInstanceState(Landroid/os/Bundle;)V

    .line 519
    :cond_0
    const-string v0, "pluginsdk_pluginName"

    iget-object v1, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v0, "pluginsdk_pluginLocation"

    iget-object v1, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v0, "pluginsdk_pluginpath"

    iget-object v1, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginApkFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const-string v0, "pluginsdk_launchActivity"

    iget-object v1, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mLaunchActivity:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 525
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 237
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    invoke-interface {v0}, Lcom/tencent/midas/plugin/IAPPluginActivity;->IOnStart()V

    .line 240
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 252
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 253
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    invoke-interface {v0}, Lcom/tencent/midas/plugin/IAPPluginActivity;->IOnStop()V

    .line 256
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 529
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    invoke-interface {v0, p1}, Lcom/tencent/midas/plugin/IAPPluginActivity;->IOnTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 532
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    invoke-interface {v0}, Lcom/tencent/midas/plugin/IAPPluginActivity;->IOnUserInteraction()V

    .line 552
    :goto_0
    return-void

    .line 550
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onUserInteraction()V

    goto :goto_0
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .prologue
    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 220
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 425
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 426
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginActivity:Lcom/tencent/midas/plugin/IAPPluginActivity;

    invoke-interface {v0, p1}, Lcom/tencent/midas/plugin/IAPPluginActivity;->IOnWindowFocusChanged(Z)V

    .line 429
    :cond_0
    return-void
.end method

.method public setRequestedOrientation(I)V
    .locals 3
    .param p1, "requestedOrientation"    # I

    .prologue
    .line 282
    const-string v0, "APPluginProxyActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRequestedOrientation requestedOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-super {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 284
    return-void
.end method

.method protected shouldHandleStartPluginFailed(Ljava/lang/String;)Z
    .locals 3
    .param p1, "errInfo"    # Ljava/lang/String;

    .prologue
    .line 618
    const/4 v0, 0x0

    .line 619
    .local v0, "handled":Z
    move-object v1, p1

    .line 620
    .local v1, "lowerErrInfo":Ljava/lang/String;
    const-string v2, "permission"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "filenotfoundexception"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 622
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/midas/plugin/APPluginProxyActivity;->showNeedUninstanllAndInstallDialog()V

    .line 623
    const/4 v0, 0x1

    .line 630
    :cond_1
    :goto_0
    return v0

    .line 624
    :cond_2
    const-string v2, "resources$notfoundexception"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "resourcesnotfoundexception"

    .line 625
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 627
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/midas/plugin/APPluginProxyActivity;->showNeedUninstanllAndInstallDialog()V

    .line 628
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected showNeedUninstanllAndInstallDialog()V
    .locals 5

    .prologue
    .line 651
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 652
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v3, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 653
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u7cfb\u7edf\u7e41\u5fd9"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mPluginName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u5931\u8d25\uff0c\u8bf7\u5378\u8f7d\u91cd\u88c5~"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 654
    const-string/jumbo v3, "\u6211\u77e5\u9053\u4e86"

    new-instance v4, Lcom/tencent/midas/plugin/APPluginProxyActivity$1;

    invoke-direct {v4, p0}, Lcom/tencent/midas/plugin/APPluginProxyActivity$1;-><init>(Lcom/tencent/midas/plugin/APPluginProxyActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 660
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 662
    .local v1, "dialog":Landroid/app/Dialog;
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    :goto_0
    return-void

    .line 663
    :catch_0
    move-exception v2

    .line 664
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    const/4 v4, 0x0

    .line 301
    const-string v3, "pluginsdk_IsPluginActivity"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 302
    .local v2, "pluginActivity":Z
    if-eqz v2, :cond_2

    .line 303
    const/4 v0, 0x0

    .line 304
    .local v0, "activityName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 305
    .local v1, "componentName":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 306
    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 308
    :cond_0
    const-string v3, "pluginsdk_IsPluginActivity"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 309
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 310
    invoke-direct {p0, p0, v0, p1, p2}, Lcom/tencent/midas/plugin/APPluginProxyActivity;->startPluginActivityForResult(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 315
    .end local v0    # "activityName":Ljava/lang/String;
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :cond_1
    :goto_0
    const/4 v3, 0x2

    iput v3, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mStopFlag:I

    .line 316
    return-void

    .line 313
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;II)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "flingAction"    # I

    .prologue
    .line 319
    const-string v0, "APPLuginProxyActivity"

    const-string v1, "startActivityForResult.public"

    invoke-static {v0, v1}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/midas/plugin/APPluginProxyActivity;->mStopFlag:I

    .line 321
    invoke-direct {p0, p1}, Lcom/tencent/midas/plugin/APPluginProxyActivity;->isStart3rdApp(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/midas/plugin/APPluginProxyActivity;->isMoveTaskToBack(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    const/high16 v0, 0x40000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 328
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 329
    return-void
.end method
