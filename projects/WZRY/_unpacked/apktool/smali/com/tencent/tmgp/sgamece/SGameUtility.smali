.class public Lcom/tencent/tmgp/sgamece/SGameUtility;
.super Ljava/lang/Object;
.source "SGameUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmgp/sgamece/SGameUtility$AnsQueryConstants;
    }
.end annotation


# static fields
.field static final MAX_LEN:I = 0x2800

.field public static g_EnableInput:Z

.field public static g_UseNoBundleAPk:Z

.field public static g_logBuffer:Ljava/lang/StringBuffer;

.field private static gppsIniitalized:Z

.field public static pssTotal:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    sput-object v0, Lcom/tencent/tmgp/sgamece/SGameUtility;->g_logBuffer:Ljava/lang/StringBuffer;

    .line 40
    sput-boolean v1, Lcom/tencent/tmgp/sgamece/SGameUtility;->g_EnableInput:Z

    .line 41
    sput-boolean v1, Lcom/tencent/tmgp/sgamece/SGameUtility;->g_UseNoBundleAPk:Z

    .line 260
    sput v1, Lcom/tencent/tmgp/sgamece/SGameUtility;->pssTotal:I

    .line 404
    sput-boolean v1, Lcom/tencent/tmgp/sgamece/SGameUtility;->gppsIniitalized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddYYBSaveUpdateListener()V
    .locals 2

    .prologue
    .line 365
    sget-object v0, Lcom/tencent/tmgp/sgamece/YYBSaveUpdateObserver;->m_initialized:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    const-string v0, "Java "

    const-string v1, "AddYYBSaveUpdateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    new-instance v0, Lcom/tencent/tmgp/sgamece/YYBSaveUpdateObserver;

    invoke-direct {v0}, Lcom/tencent/tmgp/sgamece/YYBSaveUpdateObserver;-><init>()V

    invoke-static {v0}, Lcom/tencent/msdk/api/WGPlatform;->WGSetSaveUpdateObserver(Lcom/tencent/msdk/myapp/autoupdate/WGSaveUpdateObserver;)V

    .line 370
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tencent/tmgp/sgamece/YYBSaveUpdateObserver;->m_initialized:Ljava/lang/Boolean;

    .line 372
    :cond_0
    return-void
.end method

.method public static CheckYYBInstalled()I
    .locals 2

    .prologue
    .line 400
    const-string v0, "Java "

    const-string v1, "CheckYYBInstalled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGCheckYYBInstalled()I

    move-result v0

    return v0
.end method

.method public static EnableInput(Z)V
    .locals 3
    .param p0, "bEnable"    # Z

    .prologue
    .line 50
    sput-boolean p0, Lcom/tencent/tmgp/sgamece/SGameUtility;->g_EnableInput:Z

    .line 52
    const-string v0, "EnableInput"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "java EnableInput "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/tencent/tmgp/sgamece/SGameUtility;->g_EnableInput:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method public static ExitApp()V
    .locals 1

    .prologue
    .line 351
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 354
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 357
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 358
    return-void
.end method

.method public static GetApkAbsPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 202
    const-string v0, ""

    .line 205
    .local v0, "apkAbsPath":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 207
    .local v2, "pm":Landroid/content/pm/PackageManager;
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 206
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 209
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v0

    .line 210
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static GetNetworkType()I
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 282
    :try_start_0
    sget-object v5, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 283
    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 282
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 285
    .local v1, "connectivity":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_1

    .line 344
    :cond_0
    :goto_0
    return v2

    .line 289
    :cond_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 291
    .local v0, "activeNetInfo":Landroid/net/NetworkInfo;
    if-nez v0, :cond_2

    move v2, v3

    .line 292
    goto :goto_0

    .line 295
    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    move v2, v3

    .line 296
    goto :goto_0

    .line 299
    :cond_4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v4, :cond_5

    move v2, v4

    .line 300
    goto :goto_0

    .line 301
    :cond_5
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_0

    .line 304
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 310
    :pswitch_1
    const/4 v2, 0x2

    goto :goto_0

    .line 320
    :pswitch_2
    const/4 v2, 0x3

    goto :goto_0

    .line 323
    :pswitch_3
    const/4 v2, 0x4

    goto :goto_0

    .line 340
    .end local v0    # "activeNetInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v2

    move v2, v3

    .line 344
    goto :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static IsFileExistInStreamingAssets(Ljava/lang/String;)Z
    .locals 8
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 221
    sget-object v6, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 222
    .local v1, "contentContext":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 224
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    :try_start_0
    const-string v6, ""

    invoke-virtual {v0, v6}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "names":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v3, v6, :cond_0

    .line 236
    const-string v6, "IsFileExistInStreamingAssets"

    const-string v7, "IsFileExistInStreamingAssets failed2"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .end local v3    # "i":I
    .end local v4    # "names":[Ljava/lang/String;
    :goto_1
    return v5

    .line 226
    .restart local v3    # "i":I
    .restart local v4    # "names":[Ljava/lang/String;
    :cond_0
    :try_start_1
    aget-object v6, v4, v3

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 227
    const-string v6, "IsFileExistInStreamingAssets"

    const-string v7, "IsFileExistInStreamingAssets suuc"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 228
    const/4 v5, 0x1

    goto :goto_1

    .line 225
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 231
    .end local v3    # "i":I
    .end local v4    # "names":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 232
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 233
    const-string v6, "IsFileExistInStreamingAssets"

    const-string v7, "IsFileExistInStreamingAssets failed1"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static IsUseNobundleApk()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/tencent/tmgp/sgamece/SGameUtility;->g_UseNoBundleAPk:Z

    return v0
.end method

.method public static StartYYBCheckVersionInfo()V
    .locals 2

    .prologue
    .line 379
    const-string v0, "Java "

    const-string v1, "StartYYBCheckVersionInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-static {}, Lcom/tencent/msdk/api/WGPlatform;->WGCheckNeedUpdate()V

    .line 381
    return-void
.end method

.method public static StartYYBSaveUpdate()V
    .locals 2

    .prologue
    .line 388
    const-string v0, "Java "

    const-string v1, "StartYYBSaveUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/msdk/api/WGPlatform;->WGStartSaveUpdate(Z)V

    .line 390
    return-void
.end method

.method public static UploadException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "nameStr"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 187
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CatchedException_(no crash)_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 188
    const-string v0, "UploadException"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " C# CrashAttchLog\n-------\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/tmgp/sgamece/SGameUtility;->g_logBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n-----------\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v0, "UploadException"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " new java RuntimeException("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-void

    .line 192
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static deviceDirectControl(ILjava/lang/String;I)I
    .locals 8
    .param p0, "scn"    # I
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 418
    const/4 v1, 0x0

    .line 419
    .local v1, "ret":I
    sget-boolean v5, Lcom/tencent/tmgp/sgamece/SGameUtility;->gppsIniitalized:Z

    if-nez v5, :cond_0

    move v2, v1

    .end local v1    # "ret":I
    .local v2, "ret":I
    move v3, v1

    .line 432
    .end local v2    # "ret":I
    .local v3, "ret":I
    :goto_0
    return v3

    .line 424
    .end local v3    # "ret":I
    .restart local v1    # "ret":I
    :cond_0
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 425
    .local v4, "testMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    invoke-static {p0, v4}, Lcom/mediatek/gpps/GPPS;->gameSDKControl(ILjava/util/HashMap;)I

    move-result v1

    .line 427
    const-string v5, "gpps"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "controlMtkGpps scn="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", key="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "testMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    move v2, v1

    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    move v3, v1

    .line 432
    .end local v2    # "ret":I
    .restart local v3    # "ret":I
    goto :goto_0

    .line 429
    .end local v3    # "ret":I
    .restart local v1    # "ret":I
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "gpps"

    const-string v6, "controlMtkGpps Error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static deviceDirectControlInit()V
    .locals 3

    .prologue
    .line 407
    :try_start_0
    const-string v1, "gpps"

    const-string v2, "deviceDirectControlInit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const-string v1, "gpps-jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 409
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tencent/tmgp/sgamece/SGameUtility;->gppsIniitalized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 411
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 412
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "gpps"

    const-string v2, "gpps-jni Load Failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/4 v1, 0x0

    sput-boolean v1, Lcom/tencent/tmgp/sgamece/SGameUtility;->gppsIniitalized:Z

    goto :goto_0
.end method

.method public static dtLog(Ljava/lang/String;)V
    .locals 3
    .param p0, "log"    # Ljava/lang/String;

    .prologue
    .line 56
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const-string v0, "dtlog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "java dtlog "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    sget-object v0, Lcom/tencent/tmgp/sgamece/SGameUtility;->g_logBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    sget-object v0, Lcom/tencent/tmgp/sgamece/SGameUtility;->g_logBuffer:Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    sget-object v0, Lcom/tencent/tmgp/sgamece/SGameUtility;->g_logBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/16 v1, 0x2800

    if-le v0, v1, :cond_0

    .line 64
    sget-object v0, Lcom/tencent/tmgp/sgamece/SGameUtility;->g_logBuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    sget-object v2, Lcom/tencent/tmgp/sgamece/SGameUtility;->g_logBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit16 v2, v2, -0x2800

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static getAvailMemory()J
    .locals 6

    .prologue
    .line 243
    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 244
    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 243
    check-cast v0, Landroid/app/ActivityManager;

    .line 245
    .local v0, "am":Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    .line 246
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 247
    .local v1, "mi":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 248
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    .line 250
    .end local v1    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public static getExtraDatas(Landroid/content/Context;)Ljava/util/LinkedHashMap;
    .locals 26
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    if-nez p0, :cond_1

    .line 70
    const/4 v9, 0x0

    .line 168
    :cond_0
    :goto_0
    return-object v9

    .line 73
    :cond_1
    const-string v5, "reg_record.txt"

    .line 74
    .local v5, "REG_FILENAME":Ljava/lang/String;
    const-string v4, "map_record.txt"

    .line 75
    .local v4, "MAP_FILENAME":Ljava/lang/String;
    const-string v3, "backup_record.txt"

    .line 77
    .local v3, "BACKUP_FILENAME":Ljava/lang/String;
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 79
    .local v9, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 84
    .local v16, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    const-string v24, "bugly"

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v21

    .line 86
    .local v21, "storeDir":Ljava/lang/String;
    if-nez v21, :cond_3

    .line 172
    if-eqz v16, :cond_2

    .line 175
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    :cond_2
    :goto_1
    const/4 v9, 0x0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v7

    .line 179
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 91
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    new-instance v20, Ljava/io/File;

    const-string v23, "reg_record.txt"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .local v20, "regRecordFile":Ljava/io/File;
    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_11

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->canRead()Z

    move-result v23

    if-eqz v23, :cond_11

    .line 95
    new-instance v17, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    new-instance v24, Ljava/io/FileInputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string/jumbo v25, "utf-8"

    invoke-direct/range {v23 .. v25}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .local v17, "reader":Ljava/io/BufferedReader;
    :try_start_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v19, "regInfos":Ljava/lang/StringBuilder;
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 100
    .local v8, "line":Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 101
    const-string v15, "                "

    .line 102
    .local v15, "prettySpace":Ljava/lang/String;
    const/16 v13, 0x12

    .line 103
    .local v13, "oneRegSize":I
    const/4 v14, 0x0

    .line 104
    .local v14, "preSize":I
    const/4 v6, 0x0

    .line 105
    .local v6, "count":I
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_9

    .line 121
    const-string v23, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v23, "regInfos"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .end local v6    # "count":I
    .end local v8    # "line":Ljava/lang/String;
    .end local v13    # "oneRegSize":I
    .end local v14    # "preSize":I
    .end local v15    # "prettySpace":Ljava/lang/String;
    .end local v19    # "regInfos":Ljava/lang/StringBuilder;
    :cond_4
    :goto_3
    new-instance v12, Ljava/io/File;

    const-string v23, "map_record.txt"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-direct {v12, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .local v12, "mapRecordFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_10

    invoke-virtual {v12}, Ljava/io/File;->canRead()Z

    move-result v23

    if-eqz v23, :cond_10

    .line 132
    new-instance v16, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/InputStreamReader;

    new-instance v24, Ljava/io/FileInputStream;

    move-object/from16 v0, v24

    invoke-direct {v0, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string/jumbo v25, "utf-8"

    invoke-direct/range {v23 .. v25}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 133
    .end local v17    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    :try_start_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v10, "mapInfos":Ljava/lang/StringBuilder;
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    .line 136
    .local v11, "mapLine":Ljava/lang/String;
    if-eqz v11, :cond_5

    .line 137
    :goto_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_e

    .line 143
    const-string v23, "mapInfos"

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .end local v10    # "mapInfos":Ljava/lang/StringBuilder;
    .end local v11    # "mapLine":Ljava/lang/String;
    :cond_5
    :goto_5
    new-instance v18, Ljava/io/File;

    const-string v23, "reg_record.txt"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v18, "record":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->canWrite()Z

    move-result v23

    if-eqz v23, :cond_6

    .line 150
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 151
    const-string v23, "delete record file"

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_6
    new-instance v18, Ljava/io/File;

    .end local v18    # "record":Ljava/io/File;
    const-string v23, "map_record.txt"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .restart local v18    # "record":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->canWrite()Z

    move-result v23

    if-eqz v23, :cond_7

    .line 155
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 156
    const-string v23, "delete record file"

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_7
    new-instance v18, Ljava/io/File;

    .end local v18    # "record":Ljava/io/File;
    const-string v23, "backup_record.txt"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .restart local v18    # "record":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_8

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->canWrite()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 160
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    .line 161
    const-string v23, "delete record file"

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 172
    :cond_8
    if-eqz v16, :cond_0

    .line 175
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 177
    :catch_1
    move-exception v7

    .line 179
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 106
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v12    # "mapRecordFile":Ljava/io/File;
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .end local v18    # "record":Ljava/io/File;
    .restart local v6    # "count":I
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v13    # "oneRegSize":I
    .restart local v14    # "preSize":I
    .restart local v15    # "prettySpace":Ljava/lang/String;
    .restart local v17    # "reader":Ljava/io/BufferedReader;
    .restart local v19    # "regInfos":Ljava/lang/StringBuilder;
    :cond_9
    :try_start_6
    rem-int/lit8 v23, v6, 0x4

    if-nez v23, :cond_b

    .line 107
    if-lez v6, :cond_a

    .line 108
    const-string v23, "\n"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_a
    const-string v23, "  "

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :goto_6
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    .line 118
    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 112
    :cond_b
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x10

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_c

    .line 113
    const/16 v13, 0x1c

    .line 115
    :cond_c
    const/16 v23, 0x0

    sub-int v24, v13, v14

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_6

    .line 166
    .end local v6    # "count":I
    .end local v8    # "line":Ljava/lang/String;
    .end local v13    # "oneRegSize":I
    .end local v14    # "preSize":I
    .end local v15    # "prettySpace":Ljava/lang/String;
    .end local v19    # "regInfos":Ljava/lang/StringBuilder;
    :catch_2
    move-exception v22

    move-object/from16 v16, v17

    .line 167
    .end local v17    # "reader":Ljava/io/BufferedReader;
    .end local v20    # "regRecordFile":Ljava/io/File;
    .end local v21    # "storeDir":Ljava/lang/String;
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    .local v22, "thr":Ljava/lang/Throwable;
    :goto_7
    :try_start_7
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 172
    if-eqz v16, :cond_d

    .line 175
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 168
    :cond_d
    :goto_8
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 138
    .end local v22    # "thr":Ljava/lang/Throwable;
    .restart local v10    # "mapInfos":Ljava/lang/StringBuilder;
    .restart local v11    # "mapLine":Ljava/lang/String;
    .restart local v12    # "mapRecordFile":Ljava/io/File;
    .restart local v20    # "regRecordFile":Ljava/io/File;
    .restart local v21    # "storeDir":Ljava/lang/String;
    :cond_e
    :try_start_9
    const-string v23, "  "

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v23, "\n"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    .line 166
    .end local v10    # "mapInfos":Ljava/lang/StringBuilder;
    .end local v11    # "mapLine":Ljava/lang/String;
    .end local v12    # "mapRecordFile":Ljava/io/File;
    .end local v20    # "regRecordFile":Ljava/io/File;
    .end local v21    # "storeDir":Ljava/lang/String;
    :catch_3
    move-exception v22

    goto :goto_7

    .line 177
    .restart local v22    # "thr":Ljava/lang/Throwable;
    :catch_4
    move-exception v7

    .line 179
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 171
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v22    # "thr":Ljava/lang/Throwable;
    :catchall_0
    move-exception v23

    .line 172
    :goto_9
    if-eqz v16, :cond_f

    .line 175
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 182
    :cond_f
    :goto_a
    throw v23

    .line 177
    :catch_5
    move-exception v7

    .line 179
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 171
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v17    # "reader":Ljava/io/BufferedReader;
    .restart local v20    # "regRecordFile":Ljava/io/File;
    .restart local v21    # "storeDir":Ljava/lang/String;
    :catchall_1
    move-exception v23

    move-object/from16 v16, v17

    .end local v17    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    goto :goto_9

    .end local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "mapRecordFile":Ljava/io/File;
    .restart local v17    # "reader":Ljava/io/BufferedReader;
    :cond_10
    move-object/from16 v16, v17

    .end local v17    # "reader":Ljava/io/BufferedReader;
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_5

    .end local v12    # "mapRecordFile":Ljava/io/File;
    :cond_11
    move-object/from16 v17, v16

    .end local v16    # "reader":Ljava/io/BufferedReader;
    .restart local v17    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method

.method public static getPssTotal()I
    .locals 1

    .prologue
    .line 263
    sget v0, Lcom/tencent/tmgp/sgamece/SGameUtility;->pssTotal:I

    return v0
.end method

.method public static getPssTotalImmediately()I
    .locals 3

    .prologue
    .line 268
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 269
    .local v0, "mi":Landroid/os/Debug$MemoryInfo;
    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 270
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v1

    .line 271
    .local v1, "pssTotalBytes":I
    div-int/lit16 v2, v1, 0x400

    sput v2, Lcom/tencent/tmgp/sgamece/SGameUtility;->pssTotal:I

    .line 273
    sget v2, Lcom/tencent/tmgp/sgamece/SGameUtility;->pssTotal:I

    return v2
.end method

.method public static startGetPssTotalThread()V
    .locals 1

    .prologue
    .line 257
    new-instance v0, Lcom/tencent/tmgp/sgamece/GetPssTotalThread;

    invoke-direct {v0}, Lcom/tencent/tmgp/sgamece/GetPssTotalThread;-><init>()V

    .line 258
    return-void
.end method
