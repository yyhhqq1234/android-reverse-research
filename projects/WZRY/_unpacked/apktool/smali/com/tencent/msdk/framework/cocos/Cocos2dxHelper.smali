.class public Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;
.super Ljava/lang/Object;
.source "Cocos2dxHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper$Cocos2dxHelperListener;
    }
.end annotation


# static fields
.field private static final PREFS_NAME:Ljava/lang/String; = "Cocos2dxPrefsFile"

.field private static sAccelerometerEnabled:Z

.field private static sAssetManager:Landroid/content/res/AssetManager;

.field private static sCocos2dMusic:Lcom/tencent/msdk/framework/cocos/Cocos2dxMusic;

.field private static sCocos2dSound:Lcom/tencent/msdk/framework/cocos/Cocos2dxSound;

.field private static sCocos2dxAccelerometer:Lcom/tencent/msdk/framework/cocos/Cocos2dxAccelerometer;

.field private static sCocos2dxHelperListener:Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper$Cocos2dxHelperListener;

.field public static sContext:Landroid/content/Context;

.field private static sExternalFileDir:Ljava/lang/String;

.field private static sFileDirectory:Ljava/lang/String;

.field private static sPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-string v0, ""

    sput-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sFileDirectory:Ljava/lang/String;

    .line 61
    const-string v0, ""

    sput-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sExternalFileDir:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([B)V
    .locals 0
    .param p0, "x0"    # [B

    .prologue
    .line 44
    invoke-static {p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->nativeSetEditTextDialogResult([B)V

    return-void
.end method

.method public static disableAccelerometer()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sAccelerometerEnabled:Z

    .line 170
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dxAccelerometer:Lcom/tencent/msdk/framework/cocos/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxAccelerometer;->disable()V

    .line 171
    return-void
.end method

.method public static enableAccelerometer()V
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sAccelerometerEnabled:Z

    .line 160
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dxAccelerometer:Lcom/tencent/msdk/framework/cocos/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxAccelerometer;->enable()V

    .line 161
    return-void
.end method

.method public static end()V
    .locals 1

    .prologue
    .line 254
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dMusic:Lcom/tencent/msdk/framework/cocos/Cocos2dxMusic;

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxMusic;->end()V

    .line 255
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dSound:Lcom/tencent/msdk/framework/cocos/Cocos2dxSound;

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxSound;->end()V

    .line 256
    return-void
.end method

.method public static getAssetManager()Landroid/content/res/AssetManager;
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sAssetManager:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public static getBackgroundMusicVolume()F
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dMusic:Lcom/tencent/msdk/framework/cocos/Cocos2dxMusic;

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxMusic;->getBackgroundVolume()F

    move-result v0

    return v0
.end method

.method public static getBoolForKey(Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 317
    sget-object v1, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string v2, "Cocos2dxPrefsFile"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 318
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getCocos2dxExternalFilesPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sExternalFileDir:Ljava/lang/String;

    return-object v0
.end method

.method public static getCocos2dxPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getCocos2dxWritablePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sFileDirectory:Ljava/lang/String;

    return-object v0
.end method

.method public static getCurrentLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDPI()I
    .locals 5

    .prologue
    .line 298
    sget-object v3, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    .line 299
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 300
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    sget-object v3, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    .line 301
    .local v2, "wm":Landroid/view/WindowManager;
    if-eqz v2, :cond_0

    .line 302
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 303
    .local v0, "d":Landroid/view/Display;
    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 305
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x43200000    # 160.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 309
    .end local v0    # "d":Landroid/view/Display;
    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getDoubleForKey(Ljava/lang/String;D)D
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # D

    .prologue
    .line 333
    sget-object v1, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string v2, "Cocos2dxPrefsFile"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 334
    .local v0, "settings":Landroid/content/SharedPreferences;
    double-to-float v1, p1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    float-to-double v2, v1

    return-wide v2
.end method

.method public static getEffectsVolume()F
    .locals 1

    .prologue
    .line 230
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dSound:Lcom/tencent/msdk/framework/cocos/Cocos2dxSound;

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxSound;->getEffectsVolume()F

    move-result v0

    return v0
.end method

.method public static getFloatForKey(Ljava/lang/String;F)F
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # F

    .prologue
    .line 327
    sget-object v1, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string v2, "Cocos2dxPrefsFile"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 328
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    return v1
.end method

.method public static getIntegerForKey(Ljava/lang/String;I)I
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 322
    sget-object v1, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string v2, "Cocos2dxPrefsFile"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 323
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getStringForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 338
    sget-object v1, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const-string v2, "Cocos2dxPrefsFile"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 339
    .local v0, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static init(Landroid/content/Context;Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper$Cocos2dxHelperListener;)V
    .locals 6
    .param p0, "pContext"    # Landroid/content/Context;
    .param p1, "pCocos2dxHelperListener"    # Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper$Cocos2dxHelperListener;

    .prologue
    .line 71
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 72
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    sput-object p0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sContext:Landroid/content/Context;

    .line 73
    sput-object p1, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dxHelperListener:Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper$Cocos2dxHelperListener;

    .line 75
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v4, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sPackageName:Ljava/lang/String;

    .line 76
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v4}, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->nativeSetApkPath(Ljava/lang/String;)V

    .line 78
    new-instance v4, Lcom/tencent/msdk/framework/cocos/Cocos2dxAccelerometer;

    invoke-direct {v4, p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxAccelerometer;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dxAccelerometer:Lcom/tencent/msdk/framework/cocos/Cocos2dxAccelerometer;

    .line 79
    new-instance v4, Lcom/tencent/msdk/framework/cocos/Cocos2dxMusic;

    invoke-direct {v4, p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxMusic;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dMusic:Lcom/tencent/msdk/framework/cocos/Cocos2dxMusic;

    .line 80
    const/4 v3, 0x5

    .line 81
    .local v3, "simultaneousStreams":I
    invoke-static {}, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->getDeviceModel()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GT-I9100"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 82
    const/4 v3, 0x3

    .line 84
    :cond_0
    new-instance v4, Lcom/tencent/msdk/framework/cocos/Cocos2dxSound;

    invoke-direct {v4, p0, v3}, Lcom/tencent/msdk/framework/cocos/Cocos2dxSound;-><init>(Landroid/content/Context;I)V

    sput-object v4, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dSound:Lcom/tencent/msdk/framework/cocos/Cocos2dxSound;

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    sput-object v4, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sAssetManager:Landroid/content/res/AssetManager;

    .line 86
    invoke-static {p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxBitmap;->setContext(Landroid/content/Context;)V

    .line 87
    invoke-static {p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxETCLoader;->setContext(Landroid/content/Context;)V

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 90
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 91
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sFileDirectory:Ljava/lang/String;

    .line 96
    :goto_0
    const-string v4, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 98
    sget-object v4, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_3

    .line 100
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 101
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sExternalFileDir:Ljava/lang/String;

    .line 116
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "simultaneousStreams":I
    :goto_1
    return-void

    .line 93
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v3    # "simultaneousStreams":I
    :cond_1
    const-string v4, "Cocos2dxHelper get private dir error!"

    invoke-static {v4}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "dir":Ljava/io/File;
    .end local v3    # "simultaneousStreams":I
    :catch_0
    move-exception v2

    .line 113
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/tencent/msdk/framework/mlog/MLog;->e(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 103
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v3    # "simultaneousStreams":I
    :cond_2
    :try_start_1
    const-string v4, "Cocos2dxHelper get public dir error!"

    invoke-static {v4}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 106
    :cond_3
    const-string v4, "getExternalFilesDir is null"

    invoke-static {v4}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    goto :goto_1

    .line 110
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sdcard is unavailable, state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static isBackgroundMusicPlaying()Z
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dMusic:Lcom/tencent/msdk/framework/cocos/Cocos2dxMusic;

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxMusic;->isBackgroundMusicPlaying()Z

    move-result v0

    return v0
.end method

.method private static native nativeSetApkPath(Ljava/lang/String;)V
.end method

.method private static native nativeSetEditTextDialogResult([B)V
.end method

.method public static onPause()V
    .locals 1

    .prologue
    .line 265
    sget-boolean v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sAccelerometerEnabled:Z

    if-eqz v0, :cond_0

    .line 266
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dxAccelerometer:Lcom/tencent/msdk/framework/cocos/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxAccelerometer;->disable()V

    .line 268
    :cond_0
    return-void
.end method

.method public static onResume()V
    .locals 1

    .prologue
    .line 259
    sget-boolean v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sAccelerometerEnabled:Z

    if-eqz v0, :cond_0

    .line 260
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dxAccelerometer:Lcom/tencent/msdk/framework/cocos/Cocos2dxAccelerometer;

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxAccelerometer;->enable()V

    .line 262
    :cond_0
    return-void
.end method

.method public static pauseAllEffects()V
    .locals 1

    .prologue
    .line 242
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dSound:Lcom/tencent/msdk/framework/cocos/Cocos2dxSound;

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxSound;->pauseAllEffects()V

    .line 243
    return-void
.end method

.method public static pauseBackgroundMusic()V
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dMusic:Lcom/tencent/msdk/framework/cocos/Cocos2dxMusic;

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxMusic;->pauseBackgroundMusic()V

    .line 187
    return-void
.end method

.method public static pauseEffect(I)V
    .locals 1
    .param p0, "soundId"    # I

    .prologue
    .line 222
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dSound:Lcom/tencent/msdk/framework/cocos/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxSound;->pauseEffect(I)V

    .line 223
    return-void
.end method

.method public static playBackgroundMusic(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "pPath"    # Ljava/lang/String;
    .param p1, "isLoop"    # Z

    .prologue
    .line 178
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dMusic:Lcom/tencent/msdk/framework/cocos/Cocos2dxMusic;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/msdk/framework/cocos/Cocos2dxMusic;->playBackgroundMusic(Ljava/lang/String;Z)V

    .line 179
    return-void
.end method

.method public static playEffect(Ljava/lang/String;Z)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "isLoop"    # Z

    .prologue
    .line 214
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dSound:Lcom/tencent/msdk/framework/cocos/Cocos2dxSound;

    invoke-virtual {v0, p0, p1}, Lcom/tencent/msdk/framework/cocos/Cocos2dxSound;->playEffect(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static preloadBackgroundMusic(Ljava/lang/String;)V
    .locals 1
    .param p0, "pPath"    # Ljava/lang/String;

    .prologue
    .line 174
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dMusic:Lcom/tencent/msdk/framework/cocos/Cocos2dxMusic;

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxMusic;->preloadBackgroundMusic(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public static preloadEffect(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 210
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dSound:Lcom/tencent/msdk/framework/cocos/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxSound;->preloadEffect(Ljava/lang/String;)I

    .line 211
    return-void
.end method

.method public static resumeAllEffects()V
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dSound:Lcom/tencent/msdk/framework/cocos/Cocos2dxSound;

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxSound;->resumeAllEffects()V

    .line 247
    return-void
.end method

.method public static resumeBackgroundMusic()V
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dMusic:Lcom/tencent/msdk/framework/cocos/Cocos2dxMusic;

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxMusic;->resumeBackgroundMusic()V

    .line 183
    return-void
.end method

.method public static resumeEffect(I)V
    .locals 1
    .param p0, "soundId"    # I

    .prologue
    .line 218
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dSound:Lcom/tencent/msdk/framework/cocos/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxSound;->resumeEffect(I)V

    .line 219
    return-void
.end method

.method public static rewindBackgroundMusic()V
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dMusic:Lcom/tencent/msdk/framework/cocos/Cocos2dxMusic;

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxMusic;->rewindBackgroundMusic()V

    .line 195
    return-void
.end method

.method public static setAccelerometerInterval(F)V
    .locals 1
    .param p0, "interval"    # F

    .prologue
    .line 165
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dxAccelerometer:Lcom/tencent/msdk/framework/cocos/Cocos2dxAccelerometer;

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxAccelerometer;->setInterval(F)V

    .line 166
    return-void
.end method

.method public static setBackgroundMusicVolume(F)V
    .locals 1
    .param p0, "volume"    # F

    .prologue
    .line 206
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dMusic:Lcom/tencent/msdk/framework/cocos/Cocos2dxMusic;

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxMusic;->setBackgroundVolume(F)V

    .line 207
    return-void
.end method

.method public static setBoolForKey(Ljava/lang/String;Z)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .prologue
    .line 343
    sget-object v2, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const-string v3, "Cocos2dxPrefsFile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 344
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 345
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 346
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 347
    return-void
.end method

.method public static setDoubleForKey(Ljava/lang/String;D)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # D

    .prologue
    .line 365
    sget-object v2, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const-string v3, "Cocos2dxPrefsFile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 366
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 367
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    double-to-float v2, p1

    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 368
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 369
    return-void
.end method

.method public static setEditTextDialogResult(Ljava/lang/String;)V
    .locals 3
    .param p0, "pResult"    # Ljava/lang/String;

    .prologue
    .line 284
    :try_start_0
    const-string v1, "UTF8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 286
    .local v0, "bytesUTF8":[B
    sget-object v1, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dxHelperListener:Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper$Cocos2dxHelperListener;

    new-instance v2, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper$1;

    invoke-direct {v2, v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper$1;-><init>([B)V

    invoke-interface {v1, v2}, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper$Cocos2dxHelperListener;->runOnGLThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    .end local v0    # "bytesUTF8":[B
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static setEffectsVolume(F)V
    .locals 1
    .param p0, "volume"    # F

    .prologue
    .line 234
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dSound:Lcom/tencent/msdk/framework/cocos/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxSound;->setEffectsVolume(F)V

    .line 235
    return-void
.end method

.method public static setFloatForKey(Ljava/lang/String;F)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # F

    .prologue
    .line 357
    sget-object v2, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const-string v3, "Cocos2dxPrefsFile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 358
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 359
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 360
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 361
    return-void
.end method

.method public static setIntegerForKey(Ljava/lang/String;I)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 350
    sget-object v2, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const-string v3, "Cocos2dxPrefsFile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 351
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 352
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 353
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 354
    return-void
.end method

.method public static setStringForKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 372
    sget-object v2, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const-string v3, "Cocos2dxPrefsFile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 373
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 374
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 375
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 376
    return-void
.end method

.method private static showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "pTitle"    # Ljava/lang/String;
    .param p1, "pMessage"    # Ljava/lang/String;

    .prologue
    .line 275
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dxHelperListener:Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper$Cocos2dxHelperListener;

    invoke-interface {v0, p0, p1}, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper$Cocos2dxHelperListener;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method private static showEditTextDialog(Ljava/lang/String;Ljava/lang/String;IIII)V
    .locals 7
    .param p0, "pTitle"    # Ljava/lang/String;
    .param p1, "pMessage"    # Ljava/lang/String;
    .param p2, "pInputMode"    # I
    .param p3, "pInputFlag"    # I
    .param p4, "pReturnType"    # I
    .param p5, "pMaxLength"    # I

    .prologue
    .line 279
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dxHelperListener:Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper$Cocos2dxHelperListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper$Cocos2dxHelperListener;->showEditTextDialog(Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 280
    return-void
.end method

.method public static stopAllEffects()V
    .locals 1

    .prologue
    .line 250
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dSound:Lcom/tencent/msdk/framework/cocos/Cocos2dxSound;

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxSound;->stopAllEffects()V

    .line 251
    return-void
.end method

.method public static stopBackgroundMusic()V
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dMusic:Lcom/tencent/msdk/framework/cocos/Cocos2dxMusic;

    invoke-virtual {v0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxMusic;->stopBackgroundMusic()V

    .line 191
    return-void
.end method

.method public static stopEffect(I)V
    .locals 1
    .param p0, "soundId"    # I

    .prologue
    .line 226
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dSound:Lcom/tencent/msdk/framework/cocos/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxSound;->stopEffect(I)V

    .line 227
    return-void
.end method

.method public static terminateProcess()V
    .locals 1

    .prologue
    .line 271
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 272
    return-void
.end method

.method public static unloadEffect(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 238
    sget-object v0, Lcom/tencent/msdk/framework/cocos/Cocos2dxHelper;->sCocos2dSound:Lcom/tencent/msdk/framework/cocos/Cocos2dxSound;

    invoke-virtual {v0, p0}, Lcom/tencent/msdk/framework/cocos/Cocos2dxSound;->unloadEffect(Ljava/lang/String;)V

    .line 239
    return-void
.end method
