.class public Lcom/tencent/msdk/framework/MSDKEnv;
.super Ljava/lang/Object;
.source "MSDKEnv.java"


# static fields
.field private static final MSDK_VERSION:Ljava/lang/String; = "3.2.14a"

.field private static volatile instance:Lcom/tencent/msdk/framework/MSDKEnv;

.field private static loadedSo:Z


# instance fields
.field public application:Landroid/content/Context;

.field public cocosAdapter:Lcom/tencent/msdk/framework/CocosAdapter;

.field public currentActivity:Landroid/app/Activity;

.field private volatile deviceInfo:Lcom/tencent/msdk/stat/DeviceInfo;

.field public gameInfo:Lcom/tencent/msdk/api/MsdkBaseInfo;

.field public mQimei:Ljava/lang/String;

.field public qqApi:Lcom/tencent/tauth/Tencent;

.field public wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/msdk/framework/MSDKEnv;->instance:Lcom/tencent/msdk/framework/MSDKEnv;

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/msdk/framework/MSDKEnv;->loadedSo:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/tencent/msdk/api/MsdkBaseInfo;

    invoke-direct {v0}, Lcom/tencent/msdk/api/MsdkBaseInfo;-><init>()V

    iput-object v0, p0, Lcom/tencent/msdk/framework/MSDKEnv;->gameInfo:Lcom/tencent/msdk/api/MsdkBaseInfo;

    .line 35
    iput-object v1, p0, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    .line 36
    iput-object v1, p0, Lcom/tencent/msdk/framework/MSDKEnv;->application:Landroid/content/Context;

    .line 37
    iput-object v1, p0, Lcom/tencent/msdk/framework/MSDKEnv;->qqApi:Lcom/tencent/tauth/Tencent;

    .line 38
    iput-object v1, p0, Lcom/tencent/msdk/framework/MSDKEnv;->wxApi:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 39
    iput-object v1, p0, Lcom/tencent/msdk/framework/MSDKEnv;->cocosAdapter:Lcom/tencent/msdk/framework/CocosAdapter;

    .line 40
    iput-object v1, p0, Lcom/tencent/msdk/framework/MSDKEnv;->deviceInfo:Lcom/tencent/msdk/stat/DeviceInfo;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/framework/MSDKEnv;->mQimei:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public static getInstance()Lcom/tencent/msdk/framework/MSDKEnv;
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/tencent/msdk/framework/MSDKEnv;->instance:Lcom/tencent/msdk/framework/MSDKEnv;

    if-nez v0, :cond_1

    .line 48
    const-class v1, Lcom/tencent/msdk/framework/MSDKEnv;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/tencent/msdk/framework/MSDKEnv;->instance:Lcom/tencent/msdk/framework/MSDKEnv;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/tencent/msdk/framework/MSDKEnv;

    invoke-direct {v0}, Lcom/tencent/msdk/framework/MSDKEnv;-><init>()V

    sput-object v0, Lcom/tencent/msdk/framework/MSDKEnv;->instance:Lcom/tencent/msdk/framework/MSDKEnv;

    .line 52
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_1
    sget-object v0, Lcom/tencent/msdk/framework/MSDKEnv;->instance:Lcom/tencent/msdk/framework/MSDKEnv;

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static tryLoadSo()V
    .locals 2

    .prologue
    .line 58
    sget-boolean v0, Lcom/tencent/msdk/framework/MSDKEnv;->loadedSo:Z

    if-nez v0, :cond_0

    .line 59
    const-string v0, "MSDK"

    const-string v1, "MSDK try to load libMSDKSystem.so"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v0, "MSDKSystem"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    const-string v0, "MSDK"

    const-string v1, "libMSDKSystem.so have been loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 90
    iget-object v3, p0, Lcom/tencent/msdk/framework/MSDKEnv;->gameInfo:Lcom/tencent/msdk/api/MsdkBaseInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/msdk/framework/MSDKEnv;->gameInfo:Lcom/tencent/msdk/api/MsdkBaseInfo;

    iget-object v3, v3, Lcom/tencent/msdk/api/MsdkBaseInfo;->appVersionName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 91
    iget-object v3, p0, Lcom/tencent/msdk/framework/MSDKEnv;->gameInfo:Lcom/tencent/msdk/api/MsdkBaseInfo;

    iget-object v0, v3, Lcom/tencent/msdk/api/MsdkBaseInfo;->appVersionName:Ljava/lang/String;

    .line 101
    :goto_0
    return-object v0

    .line 94
    :cond_0
    const-string v0, ""

    .line 96
    .local v0, "appName":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 97
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/tencent/msdk/framework/MSDKEnv;->getAppVersonCode()I

    move-result v0

    .line 67
    .local v0, "versionCode":I
    invoke-virtual {p0}, Lcom/tencent/msdk/framework/MSDKEnv;->getAppName()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "versionName":Ljava/lang/String;
    if-ltz v0, :cond_0

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    .end local v1    # "versionName":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getAppVersonCode()I
    .locals 5

    .prologue
    .line 76
    iget-object v2, p0, Lcom/tencent/msdk/framework/MSDKEnv;->gameInfo:Lcom/tencent/msdk/api/MsdkBaseInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/msdk/framework/MSDKEnv;->gameInfo:Lcom/tencent/msdk/api/MsdkBaseInfo;

    iget v2, v2, Lcom/tencent/msdk/api/MsdkBaseInfo;->appVersionCode:I

    if-ltz v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/tencent/msdk/framework/MSDKEnv;->gameInfo:Lcom/tencent/msdk/api/MsdkBaseInfo;

    iget v2, v2, Lcom/tencent/msdk/api/MsdkBaseInfo;->appVersionCode:I

    .line 85
    :goto_0
    return v2

    .line 81
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 82
    .local v0, "appInfo":Landroid/content/pm/PackageInfo;
    iget v2, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    .end local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    .line 85
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getDeviceInfo()Lcom/tencent/msdk/stat/DeviceInfo;
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/tencent/msdk/framework/MSDKEnv;->deviceInfo:Lcom/tencent/msdk/stat/DeviceInfo;

    .line 117
    :goto_0
    return-object v0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/tencent/msdk/framework/MSDKEnv;->deviceInfo:Lcom/tencent/msdk/stat/DeviceInfo;

    if-nez v0, :cond_2

    .line 111
    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/tencent/msdk/framework/MSDKEnv;->deviceInfo:Lcom/tencent/msdk/stat/DeviceInfo;

    if-nez v0, :cond_1

    .line 113
    new-instance v0, Lcom/tencent/msdk/stat/DeviceInfo;

    iget-object v1, p0, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/tencent/msdk/stat/DeviceInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/msdk/framework/MSDKEnv;->deviceInfo:Lcom/tencent/msdk/stat/DeviceInfo;

    .line 115
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/tencent/msdk/framework/MSDKEnv;->deviceInfo:Lcom/tencent/msdk/stat/DeviceInfo;

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getMSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-string v0, "3.2.14a"

    return-object v0
.end method

.method public getQimei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/tencent/msdk/framework/MSDKEnv;->mQimei:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/tencent/msdk/framework/MSDKEnv;->mQimei:Ljava/lang/String;

    .line 145
    :goto_0
    return-object v0

    .line 130
    :cond_0
    const-string v0, "matId"

    invoke-static {v0}, Lcom/tencent/msdk/framework/tools/SettingDBHelper;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/msdk/framework/MSDKEnv;->mQimei:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/tencent/msdk/framework/MSDKEnv;->mQimei:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/tencent/msdk/framework/MSDKEnv;->mQimei:Ljava/lang/String;

    goto :goto_0

    .line 136
    :cond_1
    new-instance v0, Lcom/tencent/msdk/framework/MSDKEnv$1;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/framework/MSDKEnv$1;-><init>(Lcom/tencent/msdk/framework/MSDKEnv;)V

    invoke-static {v0}, Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil;->reqMatid(Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil$MatIdCallback;)V

    .line 145
    iget-object v0, p0, Lcom/tencent/msdk/framework/MSDKEnv;->mQimei:Ljava/lang/String;

    goto :goto_0
.end method

.method public getScreenDirection()I
    .locals 6

    .prologue
    .line 154
    const/4 v2, 0x0

    .line 156
    .local v2, "screenDirection":I
    const/4 v0, 0x0

    .line 158
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    :try_start_0
    iget-object v3, p0, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 163
    :goto_0
    if-eqz v0, :cond_1

    .line 164
    iget v3, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    iget v4, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eq v3, v4, :cond_0

    const/16 v3, 0x8

    iget v4, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eq v3, v4, :cond_0

    const/16 v3, 0xb

    iget v4, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-ne v3, v4, :cond_2

    .line 172
    :cond_0
    const/4 v2, 0x2

    .line 187
    :cond_1
    :goto_1
    return v2

    .line 159
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 173
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x1

    iget v4, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eq v3, v4, :cond_3

    const/4 v3, 0x7

    iget v4, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eq v3, v4, :cond_3

    const/16 v3, 0x9

    iget v4, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eq v3, v4, :cond_3

    const/16 v3, 0xc

    iget v4, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-ne v3, v4, :cond_4

    .line 181
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 183
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getScreenDpi()F
    .locals 2

    .prologue
    .line 149
    iget-object v1, p0, Lcom/tencent/msdk/framework/MSDKEnv;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 150
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    return v1
.end method
