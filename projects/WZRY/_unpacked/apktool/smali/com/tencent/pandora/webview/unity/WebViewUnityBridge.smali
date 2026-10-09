.class public Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;
.super Ljava/lang/Object;
.source "WebViewUnityBridge.java"


# static fields
.field public static final ON_BACK_PRESSED:Ljava/lang/String; = "OnBackPress"

.field public static final ON_LOW_MEMORY:Ljava/lang/String; = "OnLowMemory"

.field public static final ON_PAGE_LOADED:Ljava/lang/String; = "OnPageLoaded"

.field public static final ON_PAGE_MESSAGE:Ljava/lang/String; = "OnPageMessage"

.field private static activityWebViewClose:Z

.field public static cachedUserInfo:Ljava/lang/String;

.field public static currentActivity:Landroid/app/Activity;

.field public static gameObjectName:Ljava/lang/String;

.field static helper:Lcom/tencent/pandora/webview/IWebView;

.field public static listener:Lcom/tencent/pandora/webview/WebViewEventListener;

.field static screenHeight:I

.field static screenWidth:I

.field public static useActivityWebview:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 41
    sput v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->screenWidth:I

    .line 42
    sput v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->screenHeight:I

    .line 48
    sput-boolean v1, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->useActivityWebview:Z

    .line 49
    sput-boolean v1, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->activityWebViewClose:Z

    .line 51
    new-instance v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$1;

    invoke-direct {v0}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$1;-><init>()V

    sput-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->listener:Lcom/tencent/pandora/webview/WebViewEventListener;

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 456
    invoke-static {p0, p1}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1()Z
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->getUseActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2()Lcom/tencent/pandora/webview/IWebView;
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->getHelper()Lcom/tencent/pandora/webview/IWebView;

    move-result-object v0

    return-object v0
.end method

.method public static canGoBack()Z
    .locals 1

    .prologue
    .line 306
    invoke-static {}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->getHelper()Lcom/tencent/pandora/webview/IWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 307
    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->helper:Lcom/tencent/pandora/webview/IWebView;

    invoke-interface {v0}, Lcom/tencent/pandora/webview/IWebView;->canGoBack()Z

    move-result v0

    .line 309
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static canUseEmbeddedWebView()Z
    .locals 5

    .prologue
    .line 474
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 475
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 476
    .local v0, "canUse":Z
    if-eqz v2, :cond_0

    .line 479
    :try_start_0
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 480
    const/16 v4, 0x80

    .line 478
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 481
    .local v1, "packageItemInfo":Landroid/content/pm/PackageItemInfo;
    iget-object v3, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 482
    iget-object v3, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 483
    const-string/jumbo v4, "unityplayer.ForwardNativeEventsToDalvik"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 491
    .end local v1    # "packageItemInfo":Landroid/content/pm/PackageItemInfo;
    :cond_0
    :goto_0
    return v0

    .line 487
    :catch_0
    move-exception v3

    goto :goto_0

    .line 485
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static canUseWebView()Z
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method

.method private static checkOp(Landroid/content/Context;I)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "op"    # I

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 544
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 545
    .local v7, "version":I
    const/16 v8, 0x13

    if-lt v7, v8, :cond_2

    .line 547
    const-string v8, "appops"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 546
    check-cast v5, Landroid/app/AppOpsManager;

    .line 548
    .local v5, "manager":Landroid/app/AppOpsManager;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 549
    .local v3, "localClass":Ljava/lang/Class;
    new-array v0, v12, [Ljava/lang/Class;

    .line 550
    .local v0, "arrayOfClass":[Ljava/lang/Class;
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v0, v9

    .line 551
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v0, v10

    .line 552
    const-class v8, Ljava/lang/String;

    aput-object v8, v0, v11

    .line 554
    :try_start_0
    const-string v8, "checkOp"

    invoke-virtual {v3, v8, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 555
    .local v6, "method":Ljava/lang/reflect/Method;
    if-nez v6, :cond_0

    move v8, v9

    .line 569
    .end local v0    # "arrayOfClass":[Ljava/lang/Class;
    .end local v3    # "localClass":Ljava/lang/Class;
    .end local v5    # "manager":Landroid/app/AppOpsManager;
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v8

    .line 558
    .restart local v0    # "arrayOfClass":[Ljava/lang/Class;
    .restart local v3    # "localClass":Ljava/lang/Class;
    .restart local v5    # "manager":Landroid/app/AppOpsManager;
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    :cond_0
    const/4 v8, 0x3

    new-array v1, v8, [Ljava/lang/Object;

    .line 559
    .local v1, "arrayOfObjects":[Ljava/lang/Object;
    const/4 v8, 0x0

    const/16 v11, 0x18

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v1, v8

    .line 560
    const/4 v8, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v1, v8

    .line 561
    const/4 v8, 0x2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v8

    .line 562
    invoke-virtual {v6, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 563
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 564
    .local v4, "m":I
    if-nez v4, :cond_1

    move v8, v10

    goto :goto_0

    :cond_1
    move v8, v9

    goto :goto_0

    .line 565
    .end local v1    # "arrayOfObjects":[Ljava/lang/Object;
    .end local v4    # "m":I
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    move v8, v9

    .line 566
    goto :goto_0

    .end local v0    # "arrayOfClass":[Ljava/lang/Class;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "localClass":Ljava/lang/Class;
    .end local v5    # "manager":Landroid/app/AppOpsManager;
    :cond_2
    move v8, v9

    .line 569
    goto :goto_0
.end method

.method public static close()V
    .locals 2

    .prologue
    .line 254
    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 255
    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$4;

    invoke-direct {v1}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 277
    :cond_0
    return-void
.end method

.method private static getHelper()Lcom/tencent/pandora/webview/IWebView;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->helper:Lcom/tencent/pandora/webview/IWebView;

    return-object v0
.end method

.method public static getScreenHeight()I
    .locals 1

    .prologue
    .line 102
    sget v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->screenHeight:I

    if-gez v0, :cond_0

    .line 104
    invoke-static {}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->getScreenSize()V

    .line 106
    :cond_0
    sget v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->screenHeight:I

    return v0
.end method

.method static getScreenSize()V
    .locals 2

    .prologue
    .line 110
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 118
    .local v0, "dm":Landroid/util/DisplayMetrics;
    :goto_0
    return-void

    .line 113
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 114
    .restart local v0    # "dm":Landroid/util/DisplayMetrics;
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 115
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 116
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->screenWidth:I

    .line 117
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->screenHeight:I

    goto :goto_0
.end method

.method public static getScreenWidth()I
    .locals 1

    .prologue
    .line 89
    sget v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->screenWidth:I

    if-gez v0, :cond_0

    .line 91
    invoke-static {}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->getScreenSize()V

    .line 93
    :cond_0
    sget v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->screenWidth:I

    return v0
.end method

.method private static getUseActivity()Z
    .locals 1

    .prologue
    .line 132
    sget-boolean v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->useActivityWebview:Z

    return v0
.end method

.method public static goBack()V
    .locals 2

    .prologue
    .line 280
    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 281
    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$5;

    invoke-direct {v1}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$5;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 303
    :cond_0
    return-void
.end method

.method private static hasPermission()Z
    .locals 3

    .prologue
    .line 523
    const/4 v0, 0x0

    .line 524
    .local v0, "hasPermission":Z
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Xiaomi"

    if-ne v1, v2, :cond_0

    .line 525
    sget-object v1, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->currentActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->isMiuiFloatWindowOpAllowed(Landroid/content/Context;)Z

    move-result v0

    .line 529
    :goto_0
    const-string v2, "Pandora WebView"

    if-eqz v0, :cond_1

    const-string v1, "Has Permission"

    :goto_1
    invoke-static {v2, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    return v0

    .line 527
    :cond_0
    sget-object v1, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->currentActivity:Landroid/app/Activity;

    const/16 v2, 0x18

    invoke-static {v1, v2}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->checkOp(Landroid/content/Context;I)Z

    move-result v0

    goto :goto_0

    .line 530
    :cond_1
    const-string v1, "Don\'t Have Permission"

    goto :goto_1
.end method

.method public static hide()V
    .locals 2

    .prologue
    .line 433
    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 434
    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$9;

    invoke-direct {v1}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$9;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 446
    :cond_0
    return-void
.end method

.method public static initialize()V
    .locals 1

    .prologue
    .line 145
    sget-boolean v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->useActivityWebview:Z

    invoke-static {v0}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->initialize(Z)V

    .line 146
    return-void
.end method

.method public static initialize(Z)V
    .locals 2
    .param p0, "useActivity"    # Z

    .prologue
    .line 155
    const-string v0, "Pandora WebView"

    const-string v1, "Initialize"

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    sput-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->currentActivity:Landroid/app/Activity;

    .line 157
    sput-boolean p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->useActivityWebview:Z

    .line 158
    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 159
    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$2;

    invoke-direct {v1}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 191
    :cond_0
    return-void
.end method

.method private static isForceJellyBean()Z
    .locals 5

    .prologue
    .line 502
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 503
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 504
    .local v0, "canUse":Z
    if-eqz v2, :cond_0

    .line 507
    :try_start_0
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 508
    const/16 v4, 0x80

    .line 506
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 509
    .local v1, "packageItemInfo":Landroid/content/pm/PackageItemInfo;
    iget-object v3, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    .line 510
    iget-object v3, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 511
    const-string v4, "force_jelly_bean"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 519
    .end local v1    # "packageItemInfo":Landroid/content/pm/PackageItemInfo;
    :cond_0
    :goto_0
    return v0

    .line 515
    :catch_0
    move-exception v3

    goto :goto_0

    .line 513
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private static isMiuiFloatWindowOpAllowed(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 535
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 536
    .local v0, "version":I
    const/16 v2, 0x13

    if-lt v0, v2, :cond_1

    .line 537
    const/16 v1, 0x18

    invoke-static {p0, v1}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->checkOp(Landroid/content/Context;I)Z

    move-result v1

    .line 539
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x8000000

    and-int/2addr v2, v3

    if-eq v2, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isShow()Z
    .locals 1

    .prologue
    .line 313
    invoke-static {}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->getHelper()Lcom/tencent/pandora/webview/IWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 314
    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->helper:Lcom/tencent/pandora/webview/IWebView;

    invoke-interface {v0}, Lcom/tencent/pandora/webview/IWebView;->isShow()Z

    move-result v0

    .line 316
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sendMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "function"    # Ljava/lang/String;
    .param p1, "payload"    # Ljava/lang/String;

    .prologue
    .line 457
    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->gameObjectName:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/pandora/webview/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/tencent/pandora/webview/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$10;

    invoke-direct {v1, p0, p1}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$10;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 466
    :cond_0
    return-void
.end method

.method public static setGameObjectName(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    sput-object p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->gameObjectName:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public static setInfo(Ljava/lang/String;)V
    .locals 5
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 325
    const-string v2, "Pandora WebView"

    const-string v3, "Set User Info"

    invoke-static {v2, v3}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    sput-object p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->cachedUserInfo:Ljava/lang/String;

    .line 327
    invoke-static {}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->getUseActivity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 328
    sget-boolean v2, Lcom/tencent/pandora/webview/WebViewActivity;->isShow:Z

    if-eqz v2, :cond_0

    .line 329
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.tencent.pandora.webview"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 330
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 331
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "funkey"

    const-string v3, "setInfo"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v2, "info"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string/jumbo v2, "unityGameObject"

    sget-object v3, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->gameObjectName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 335
    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 336
    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 337
    sget-object v2, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 345
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    invoke-static {}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->getHelper()Lcom/tencent/pandora/webview/IWebView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 341
    const-string v2, "Pandora WebView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Info Value "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    sget-object v2, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->helper:Lcom/tencent/pandora/webview/IWebView;

    sget-object v3, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->cachedUserInfo:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/tencent/pandora/webview/IWebView;->setInfo(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setUseActivity(Z)V
    .locals 0
    .param p0, "bUseActivity"    # Z

    .prologue
    .line 137
    sput-boolean p0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->useActivityWebview:Z

    .line 138
    return-void
.end method

.method public static setVerbose(Z)V
    .locals 2
    .param p0, "verbose"    # Z

    .prologue
    .line 79
    const-string v1, "Pandora WebView"

    if-eqz p0, :cond_0

    const-string v0, "Set Verbose"

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sput-boolean p0, Lcom/tencent/pandora/webview/Logger;->verbose:Z

    .line 81
    return-void

    .line 79
    :cond_0
    const-string v0, "Set Quiet"

    goto :goto_0
.end method

.method public static show()V
    .locals 2

    .prologue
    .line 413
    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 414
    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$8;

    invoke-direct {v1}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$8;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 427
    :cond_0
    return-void
.end method

.method public static showUrl(IIIILjava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "color"    # Ljava/lang/String;
    .param p6, "waitFullyLoaded"    # Z

    .prologue
    .line 214
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    sput-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->currentActivity:Landroid/app/Activity;

    .line 215
    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 216
    const-string v0, "Pandora WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-object v8, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->currentActivity:Landroid/app/Activity;

    new-instance v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$3;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$3;-><init>(IIIILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v8, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 248
    :cond_0
    return-void
.end method

.method public static uninitiated()V
    .locals 2

    .prologue
    .line 384
    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 385
    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$7;

    invoke-direct {v1}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$7;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 407
    :cond_0
    return-void
.end method

.method public static writeMessage(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 354
    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 355
    sget-object v0, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge;->currentActivity:Landroid/app/Activity;

    new-instance v1, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$6;

    invoke-direct {v1, p0}, Lcom/tencent/pandora/webview/unity/WebViewUnityBridge$6;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 378
    :cond_0
    return-void
.end method
