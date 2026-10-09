.class public Lcom/smoba/webview/WebViewEx;
.super Ljava/lang/Object;
.source "WebViewEx.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# static fields
.field private static INSTANCE_EX:Lcom/smoba/webview/WebViewEx;

.field static isHasScreenShotListener:Z

.field static m_bLog:Z

.field static screenShotListenHelper:Lcom/smoba/webview/ScreenShotListenManager;


# instance fields
.field private mIsSoftKeyboardShowing:Z

.field private mLayoutChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mParentLayout:Landroid/view/ViewGroup;

.field private mWebView:Lcom/tencent/smtt/sdk/WebView;

.field private m_DetailText:Landroid/widget/TextView;

.field private m_HomeCenterImage:Landroid/widget/ImageView;

.field m_InvitedInfo:Ljava/lang/String;

.field private m_JsBridge:Lcom/smoba/webview/SmobaJsBridge;

.field m_ProgressBar:Landroid/widget/ProgressBar;

.field private m_ReTryTipView:Landroid/widget/FrameLayout;

.field m_ShareErrorCode:I

.field public m_TimeoutTime:I

.field m_TokeString:Ljava/lang/String;

.field private m_WebViewClient:Lcom/smoba/webview/SmobaWebViewClient;

.field m_bInUnity:Z

.field m_bInWebView:Z

.field m_bPause:Z

.field private m_bRedPoint:Z

.field public m_bUseLocalClose:Z

.field m_backupBtn:Landroid/widget/ImageButton;

.field m_cachepath:Ljava/lang/String;

.field private m_curActivity:Landroid/app/Activity;

.field private m_curView:Landroid/view/View;

.field m_iPlay:I

.field private m_imageHeart:Landroid/widget/ImageView;

.field private m_imagePower:Landroid/widget/ImageView;

.field private m_imageRedpoint:Landroid/widget/ImageView;

.field private m_imageWifi:Landroid/widget/ImageView;

.field m_lastHeightDiff:I

.field private m_nBatteryLevel:I

.field private m_nWifi:I

.field m_nlastBatteryLevel:I

.field private m_progressDialog:Landroid/app/Dialog;

.field m_screenHeight:I

.field m_url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    sput-object v1, Lcom/smoba/webview/WebViewEx;->INSTANCE_EX:Lcom/smoba/webview/WebViewEx;

    .line 700
    const/4 v0, 0x1

    sput-boolean v0, Lcom/smoba/webview/WebViewEx;->m_bLog:Z

    .line 1000
    const/4 v0, 0x0

    sput-boolean v0, Lcom/smoba/webview/WebViewEx;->isHasScreenShotListener:Z

    .line 1001
    sput-object v1, Lcom/smoba/webview/WebViewEx;->screenShotListenHelper:Lcom/smoba/webview/ScreenShotListenManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    .line 60
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    .line 61
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_curView:Landroid/view/View;

    .line 62
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->mParentLayout:Landroid/view/ViewGroup;

    .line 63
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_JsBridge:Lcom/smoba/webview/SmobaJsBridge;

    .line 64
    iput-boolean v2, p0, Lcom/smoba/webview/WebViewEx;->m_bRedPoint:Z

    .line 71
    const-string v0, "https://apps.game.qq.com/uranus/v1/customize/yxzj/main.php?appid=1104466820&openid=17D93A8B4235BF7C46DF07D395B8DF92"

    iput-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_url:Ljava/lang/String;

    .line 76
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_DetailText:Landroid/widget/TextView;

    .line 77
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_imageHeart:Landroid/widget/ImageView;

    .line 78
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_imageRedpoint:Landroid/widget/ImageView;

    .line 79
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_imageWifi:Landroid/widget/ImageView;

    .line 80
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_imagePower:Landroid/widget/ImageView;

    .line 81
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_HomeCenterImage:Landroid/widget/ImageView;

    .line 83
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_ReTryTipView:Landroid/widget/FrameLayout;

    .line 85
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_progressDialog:Landroid/app/Dialog;

    .line 87
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_ProgressBar:Landroid/widget/ProgressBar;

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/smoba/webview/WebViewEx;->m_bUseLocalClose:Z

    .line 90
    const/16 v0, 0x2710

    iput v0, p0, Lcom/smoba/webview/WebViewEx;->m_TimeoutTime:I

    .line 92
    iput v2, p0, Lcom/smoba/webview/WebViewEx;->m_nWifi:I

    .line 93
    iput v4, p0, Lcom/smoba/webview/WebViewEx;->m_nBatteryLevel:I

    .line 94
    iput-boolean v2, p0, Lcom/smoba/webview/WebViewEx;->m_bInWebView:Z

    .line 95
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_WebViewClient:Lcom/smoba/webview/SmobaWebViewClient;

    .line 96
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_backupBtn:Landroid/widget/ImageButton;

    .line 97
    iput-boolean v2, p0, Lcom/smoba/webview/WebViewEx;->m_bInUnity:Z

    .line 99
    iput-boolean v2, p0, Lcom/smoba/webview/WebViewEx;->m_bPause:Z

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_TokeString:Ljava/lang/String;

    .line 101
    iput v3, p0, Lcom/smoba/webview/WebViewEx;->m_ShareErrorCode:I

    .line 102
    iput v3, p0, Lcom/smoba/webview/WebViewEx;->m_iPlay:I

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_InvitedInfo:Ljava/lang/String;

    .line 506
    iput v4, p0, Lcom/smoba/webview/WebViewEx;->m_nlastBatteryLevel:I

    .line 898
    iput v2, p0, Lcom/smoba/webview/WebViewEx;->m_lastHeightDiff:I

    .line 46
    sget-object v0, Lcom/smoba/webview/WebViewEx;->INSTANCE_EX:Lcom/smoba/webview/WebViewEx;

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already instanced"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    return-void
.end method

.method static GetIMEI()Ljava/lang/String;
    .locals 4

    .prologue
    .line 985
    const-string v0, ""

    .line 986
    .local v0, "imei":Ljava/lang/String;
    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 987
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 989
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 996
    :goto_0
    return-object v0

    .line 993
    :cond_0
    sget-object v2, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static GetUserInfo(Ljava/lang/String;)V
    .locals 2
    .param p0, "token"    # Ljava/lang/String;

    .prologue
    .line 823
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    iget-boolean v0, v0, Lcom/smoba/webview/WebViewEx;->m_bInWebView:Z

    if-nez v0, :cond_1

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GetUserInfo "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 827
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    iput-object p0, v0, Lcom/smoba/webview/WebViewEx;->m_TokeString:Ljava/lang/String;

    .line 828
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    iget-object v0, v0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 830
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    iget-object v0, v0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    new-instance v1, Lcom/smoba/webview/WebViewEx$10;

    invoke-direct {v1}, Lcom/smoba/webview/WebViewEx$10;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private InitToolBar()V
    .locals 6

    .prologue
    .line 398
    iget-object v4, p0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    if-nez v4, :cond_0

    .line 490
    :goto_0
    return-void

    .line 401
    :cond_0
    iget-object v4, p0, Lcom/smoba/webview/WebViewEx;->m_curView:Landroid/view/View;

    .line 402
    sget v5, Lcom/smoba/webview/WebViewResID;->smobawebviewData:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 403
    .local v3, "textData":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 405
    .local v2, "strTextData":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/smoba/webview/WebViewEx;->m_TimeoutTime:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_1
    iget-object v4, p0, Lcom/smoba/webview/WebViewEx;->m_curView:Landroid/view/View;

    .line 411
    sget v5, Lcom/smoba/webview/WebViewResID;->smobawebview_poawerprogress:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    .line 410
    iput-object v4, p0, Lcom/smoba/webview/WebViewEx;->m_ProgressBar:Landroid/widget/ProgressBar;

    .line 413
    iget-object v4, p0, Lcom/smoba/webview/WebViewEx;->m_curView:Landroid/view/View;

    .line 414
    sget v5, Lcom/smoba/webview/WebViewResID;->smobawebview_RetryTipsView:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 413
    iput-object v4, p0, Lcom/smoba/webview/WebViewEx;->m_ReTryTipView:Landroid/widget/FrameLayout;

    .line 416
    iget-object v4, p0, Lcom/smoba/webview/WebViewEx;->m_curView:Landroid/view/View;

    .line 417
    sget v5, Lcom/smoba/webview/WebViewResID;->smobawebview_backup:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    .line 416
    iput-object v4, p0, Lcom/smoba/webview/WebViewEx;->m_backupBtn:Landroid/widget/ImageButton;

    .line 418
    iget-object v4, p0, Lcom/smoba/webview/WebViewEx;->m_backupBtn:Landroid/widget/ImageButton;

    new-instance v5, Lcom/smoba/webview/WebViewEx$3;

    invoke-direct {v5, p0}, Lcom/smoba/webview/WebViewEx$3;-><init>(Lcom/smoba/webview/WebViewEx;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    iget-object v4, p0, Lcom/smoba/webview/WebViewEx;->m_curView:Landroid/view/View;

    .line 433
    sget v5, Lcom/smoba/webview/WebViewResID;->smobawebview_retryBtn:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 434
    .local v0, "backupBtn":Landroid/widget/Button;
    new-instance v4, Lcom/smoba/webview/WebViewEx$4;

    invoke-direct {v4, p0}, Lcom/smoba/webview/WebViewEx$4;-><init>(Lcom/smoba/webview/WebViewEx;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    iget-object v4, p0, Lcom/smoba/webview/WebViewEx;->m_curView:Landroid/view/View;

    .line 448
    sget v5, Lcom/smoba/webview/WebViewResID;->smobawebview_heart:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 447
    iput-object v4, p0, Lcom/smoba/webview/WebViewEx;->m_imageHeart:Landroid/widget/ImageView;

    .line 449
    iget-object v4, p0, Lcom/smoba/webview/WebViewEx;->m_imageHeart:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 450
    iget-object v4, p0, Lcom/smoba/webview/WebViewEx;->m_imageHeart:Landroid/widget/ImageView;

    new-instance v5, Lcom/smoba/webview/WebViewEx$5;

    invoke-direct {v5, p0}, Lcom/smoba/webview/WebViewEx$5;-><init>(Lcom/smoba/webview/WebViewEx;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    :cond_1
    iget-object v4, p0, Lcom/smoba/webview/WebViewEx;->m_curView:Landroid/view/View;

    .line 466
    sget v5, Lcom/smoba/webview/WebViewResID;->smobawebview_hometitle:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 465
    iput-object v4, p0, Lcom/smoba/webview/WebViewEx;->m_HomeCenterImage:Landroid/widget/ImageView;

    .line 467
    iget-object v4, p0, Lcom/smoba/webview/WebViewEx;->m_curView:Landroid/view/View;

    .line 468
    sget v5, Lcom/smoba/webview/WebViewResID;->smobawebview_redpoint:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 467
    iput-object v4, p0, Lcom/smoba/webview/WebViewEx;->m_imageRedpoint:Landroid/widget/ImageView;

    .line 469
    iget-object v4, p0, Lcom/smoba/webview/WebViewEx;->m_imageRedpoint:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 470
    iget-object v4, p0, Lcom/smoba/webview/WebViewEx;->m_imageRedpoint:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 472
    :cond_2
    iget-object v4, p0, Lcom/smoba/webview/WebViewEx;->m_curView:Landroid/view/View;

    .line 473
    sget v5, Lcom/smoba/webview/WebViewResID;->smobawebview_wifi:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 472
    iput-object v4, p0, Lcom/smoba/webview/WebViewEx;->m_imageWifi:Landroid/widget/ImageView;

    .line 475
    iget-object v4, p0, Lcom/smoba/webview/WebViewEx;->m_curView:Landroid/view/View;

    .line 476
    sget v5, Lcom/smoba/webview/WebViewResID;->smobawebview_power:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 475
    iput-object v4, p0, Lcom/smoba/webview/WebViewEx;->m_imagePower:Landroid/widget/ImageView;

    .line 477
    iget-object v4, p0, Lcom/smoba/webview/WebViewEx;->m_curView:Landroid/view/View;

    .line 478
    sget v5, Lcom/smoba/webview/WebViewResID;->smobawebview_detailText:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 477
    iput-object v4, p0, Lcom/smoba/webview/WebViewEx;->m_DetailText:Landroid/widget/TextView;

    .line 479
    iget-object v4, p0, Lcom/smoba/webview/WebViewEx;->m_DetailText:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 480
    iget-object v4, p0, Lcom/smoba/webview/WebViewEx;->m_DetailText:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    :cond_3
    invoke-virtual {p0}, Lcom/smoba/webview/WebViewEx;->SetRedPointUI()V

    .line 484
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/smoba/webview/WebViewEx;->ShowRetryTips(Z)V

    .line 486
    invoke-virtual {p0}, Lcom/smoba/webview/WebViewEx;->ChangeWifi()V

    .line 488
    invoke-virtual {p0}, Lcom/smoba/webview/WebViewEx;->UpdateBatteryLevel()V

    goto/16 :goto_0

    .line 406
    .end local v0    # "backupBtn":Landroid/widget/Button;
    :catch_0
    move-exception v1

    .line 407
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    const-string v4, "find timeout number error"

    invoke-static {v4}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method static IsBgSoundPlay(I)V
    .locals 2
    .param p0, "iPlay"    # I

    .prologue
    .line 747
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    iget-boolean v0, v0, Lcom/smoba/webview/WebViewEx;->m_bInWebView:Z

    if-nez v0, :cond_1

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 751
    :cond_1
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    iput p0, v0, Lcom/smoba/webview/WebViewEx;->m_iPlay:I

    .line 752
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    iget-object v0, v0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 754
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    iget-object v0, v0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    new-instance v1, Lcom/smoba/webview/WebViewEx$7;

    invoke-direct {v1}, Lcom/smoba/webview/WebViewEx$7;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static MyLog(Ljava/lang/String;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 703
    sget-boolean v0, Lcom/smoba/webview/WebViewEx;->m_bLog:Z

    if-eqz v0, :cond_0

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[smobaWeb java]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 707
    :cond_0
    return-void
.end method

.method static OnInvitedFriend(Ljava/lang/String;)V
    .locals 2
    .param p0, "invitedInfo"    # Ljava/lang/String;

    .prologue
    .line 873
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    iget-boolean v0, v0, Lcom/smoba/webview/WebViewEx;->m_bInWebView:Z

    if-nez v0, :cond_1

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 876
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnInvitedFriend "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 877
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    iput-object p0, v0, Lcom/smoba/webview/WebViewEx;->m_InvitedInfo:Ljava/lang/String;

    .line 878
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    iget-object v0, v0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 880
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    iget-object v0, v0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    new-instance v1, Lcom/smoba/webview/WebViewEx$12;

    invoke-direct {v1}, Lcom/smoba/webview/WebViewEx$12;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static OnPause(Z)V
    .locals 2
    .param p0, "bPause"    # Z

    .prologue
    .line 771
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    iget-boolean v0, v0, Lcom/smoba/webview/WebViewEx;->m_bInWebView:Z

    if-nez v0, :cond_1

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " onpause "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 776
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    iput-boolean p0, v0, Lcom/smoba/webview/WebViewEx;->m_bPause:Z

    .line 777
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    iget-object v0, v0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 779
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    iget-object v0, v0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    new-instance v1, Lcom/smoba/webview/WebViewEx$8;

    invoke-direct {v1}, Lcom/smoba/webview/WebViewEx$8;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static OpenWebEx(Ljava/lang/String;II)V
    .locals 3
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "nWifi"    # I
    .param p2, "batteryLevel"    # I

    .prologue
    .line 118
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 119
    .local v0, "curActivity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 122
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "url "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " wifi "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " battery "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/smoba/webview/WebViewEx;->m_bInUnity:Z

    .line 124
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v1

    iput-object p0, v1, Lcom/smoba/webview/WebViewEx;->m_url:Ljava/lang/String;

    .line 125
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v1

    iput p1, v1, Lcom/smoba/webview/WebViewEx;->m_nWifi:I

    .line 126
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v1

    iput p2, v1, Lcom/smoba/webview/WebViewEx;->m_nBatteryLevel:I

    .line 127
    new-instance v1, Lcom/smoba/webview/WebViewEx$1;

    invoke-direct {v1}, Lcom/smoba/webview/WebViewEx$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static OpenX5WebEx(Ljava/lang/String;)V
    .locals 2
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 1064
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1065
    .local v0, "curActivity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 1085
    :goto_0
    return-void

    .line 1069
    :cond_0
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v1

    iput-object p0, v1, Lcom/smoba/webview/WebViewEx;->m_url:Ljava/lang/String;

    .line 1071
    new-instance v1, Lcom/smoba/webview/WebViewEx$16;

    invoke-direct {v1}, Lcom/smoba/webview/WebViewEx$16;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static SetBatteryLevel(I)V
    .locals 2
    .param p0, "nLevel"    # I

    .prologue
    .line 801
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    iget-boolean v0, v0, Lcom/smoba/webview/WebViewEx;->m_bInWebView:Z

    if-nez v0, :cond_1

    .line 820
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " SetBatteryLevel "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 805
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    iput p0, v0, Lcom/smoba/webview/WebViewEx;->m_nBatteryLevel:I

    .line 807
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    iget-object v0, v0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 809
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    iget-object v0, v0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    new-instance v1, Lcom/smoba/webview/WebViewEx$9;

    invoke-direct {v1}, Lcom/smoba/webview/WebViewEx$9;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static SetWifi(I)V
    .locals 2
    .param p0, "nWifi"    # I

    .prologue
    .line 720
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    iget-boolean v0, v0, Lcom/smoba/webview/WebViewEx;->m_bInWebView:Z

    if-nez v0, :cond_1

    .line 744
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SetWifi "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 724
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    iput p0, v0, Lcom/smoba/webview/WebViewEx;->m_nWifi:I

    .line 726
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    iget-object v0, v0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 728
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    iget-object v0, v0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    new-instance v1, Lcom/smoba/webview/WebViewEx$6;

    invoke-direct {v1}, Lcom/smoba/webview/WebViewEx$6;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static WebViewShareCallBack(I)V
    .locals 2
    .param p0, "errorCode"    # I

    .prologue
    .line 850
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    iget-boolean v0, v0, Lcom/smoba/webview/WebViewEx;->m_bInWebView:Z

    if-nez v0, :cond_1

    .line 869
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WebViewShareCallBack "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 854
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    iput p0, v0, Lcom/smoba/webview/WebViewEx;->m_ShareErrorCode:I

    .line 855
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    iget-object v0, v0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 857
    invoke-static {}, Lcom/smoba/webview/WebViewEx;->getInstance()Lcom/smoba/webview/WebViewEx;

    move-result-object v0

    iget-object v0, v0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    new-instance v1, Lcom/smoba/webview/WebViewEx$11;

    invoke-direct {v1}, Lcom/smoba/webview/WebViewEx$11;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/smoba/webview/WebViewEx;)Lcom/smoba/webview/SmobaJsBridge;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_JsBridge:Lcom/smoba/webview/SmobaJsBridge;

    return-object v0
.end method

.method static synthetic access$1(Lcom/smoba/webview/WebViewEx;)V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/smoba/webview/WebViewEx;->loadUrl()V

    return-void
.end method

.method static synthetic access$2(Lcom/smoba/webview/WebViewEx;)I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/smoba/webview/WebViewEx;->m_nWifi:I

    return v0
.end method

.method static synthetic access$3(Lcom/smoba/webview/WebViewEx;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$4(Lcom/smoba/webview/WebViewEx;)Z
    .locals 1

    .prologue
    .line 896
    iget-boolean v0, p0, Lcom/smoba/webview/WebViewEx;->mIsSoftKeyboardShowing:Z

    return v0
.end method

.method static synthetic access$5(Lcom/smoba/webview/WebViewEx;Z)V
    .locals 0

    .prologue
    .line 896
    iput-boolean p1, p0, Lcom/smoba/webview/WebViewEx;->mIsSoftKeyboardShowing:Z

    return-void
.end method

.method static synthetic access$6(Lcom/smoba/webview/WebViewEx;)Lcom/tencent/smtt/sdk/WebView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    return-object v0
.end method

.method public static getInstance()Lcom/smoba/webview/WebViewEx;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/smoba/webview/WebViewEx;->INSTANCE_EX:Lcom/smoba/webview/WebViewEx;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/smoba/webview/WebViewEx;

    invoke-direct {v0}, Lcom/smoba/webview/WebViewEx;-><init>()V

    sput-object v0, Lcom/smoba/webview/WebViewEx;->INSTANCE_EX:Lcom/smoba/webview/WebViewEx;

    .line 56
    :cond_0
    sget-object v0, Lcom/smoba/webview/WebViewEx;->INSTANCE_EX:Lcom/smoba/webview/WebViewEx;

    return-object v0
.end method

.method private initWebView()V
    .locals 6

    .prologue
    const/16 v5, 0xb

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 220
    iget-object v1, p0, Lcom/smoba/webview/WebViewEx;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v2, Lcom/smoba/webview/WebViewEx$2;

    invoke-direct {v2, p0}, Lcom/smoba/webview/WebViewEx$2;-><init>(Lcom/smoba/webview/WebViewEx;)V

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/WebView;->setWebChromeClient(Lcom/tencent/smtt/sdk/WebChromeClient;)V

    .line 254
    iget-object v1, p0, Lcom/smoba/webview/WebViewEx;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    iget-object v2, p0, Lcom/smoba/webview/WebViewEx;->m_WebViewClient:Lcom/smoba/webview/SmobaWebViewClient;

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/WebView;->setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V

    .line 256
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_0

    .line 257
    iget-object v1, p0, Lcom/smoba/webview/WebViewEx;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const-string v2, "searchBoxJavaBridge_"

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/smoba/webview/WebViewEx;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/smoba/webview/WebViewEx;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const-string v2, "accessibilityTraversal"

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/smoba/webview/WebViewEx;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v0

    .line 263
    .local v0, "webSetting":Lcom/tencent/smtt/sdk/WebSettings;
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptEnabled(Z)V

    .line 264
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccess(Z)V

    .line 265
    sget-object v1, Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setLayoutAlgorithm(Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;)V

    .line 266
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setSupportZoom(Z)V

    .line 267
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setBuiltInZoomControls(Z)V

    .line 268
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setUseWideViewPort(Z)V

    .line 269
    invoke-virtual {v0, v4}, Lcom/tencent/smtt/sdk/WebSettings;->setSupportMultipleWindows(Z)V

    .line 270
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 272
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_1

    .line 273
    invoke-virtual {v0, v4}, Lcom/tencent/smtt/sdk/WebSettings;->setDisplayZoomControls(Z)V

    .line 276
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-le v1, v2, :cond_2

    .line 278
    invoke-virtual {v0, v4}, Lcom/tencent/smtt/sdk/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 281
    :cond_2
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 282
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCacheEnabled(Z)V

    .line 283
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setDatabaseEnabled(Z)V

    .line 284
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setDomStorageEnabled(Z)V

    .line 285
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setGeolocationEnabled(Z)V

    .line 286
    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v2, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCacheMaxSize(J)V

    .line 287
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setCacheMode(I)V

    .line 289
    iget-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    const-string v2, "smobawebviewcache"

    invoke-virtual {v1, v2, v4}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 290
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    .line 292
    const-string v2, "smobawebviewcachedatabases"

    .line 291
    invoke-virtual {v1, v2, v4}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 292
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 293
    sget-object v1, Lcom/tencent/smtt/sdk/WebSettings$PluginState;->ON_DEMAND:Lcom/tencent/smtt/sdk/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setPluginState(Lcom/tencent/smtt/sdk/WebSettings$PluginState;)V

    .line 294
    sget-object v1, Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;->HIGH:Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setRenderPriority(Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;)V

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "SMOBA"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/CookieSyncManager;->createInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/CookieSyncManager;

    .line 299
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieSyncManager;->getInstance()Lcom/tencent/smtt/sdk/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/CookieSyncManager;->sync()V

    .line 313
    return-void
.end method

.method private loadUrl()V
    .locals 2

    .prologue
    .line 385
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/smoba/webview/WebViewEx;->SetLoadingUI(Z)V

    .line 386
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/smoba/webview/WebViewEx;->ShowRetryTips(Z)V

    .line 387
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_WebViewClient:Lcom/smoba/webview/SmobaWebViewClient;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_WebViewClient:Lcom/smoba/webview/SmobaWebViewClient;

    invoke-virtual {v0}, Lcom/smoba/webview/SmobaWebViewClient;->StartLaodingUrlTimer()V

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    iget-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    .line 395
    :cond_1
    return-void
.end method

.method public static startScreenShotListen()V
    .locals 2

    .prologue
    .line 1004
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1005
    .local v0, "curActivity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 1035
    :goto_0
    return-void

    .line 1008
    :cond_0
    new-instance v1, Lcom/smoba/webview/WebViewEx$14;

    invoke-direct {v1}, Lcom/smoba/webview/WebViewEx$14;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static stopScreenShotListen()V
    .locals 2

    .prologue
    .line 1039
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1040
    .local v0, "curActivity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 1059
    :goto_0
    return-void

    .line 1043
    :cond_0
    new-instance v1, Lcom/smoba/webview/WebViewEx$15;

    invoke-direct {v1}, Lcom/smoba/webview/WebViewEx$15;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method AddKeyboardWebViewScroll()V
    .locals 5

    .prologue
    .line 918
    iget-object v2, p0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    if-nez v2, :cond_0

    .line 980
    :goto_0
    return-void

    .line 921
    :cond_0
    invoke-virtual {p0}, Lcom/smoba/webview/WebViewEx;->RemoveKeyboardWebViewScroll()V

    .line 922
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 923
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 924
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 925
    .local v1, "screenWidth":I
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/smoba/webview/WebViewEx;->m_screenHeight:I

    .line 927
    const-string v2, "smobawebview"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " w"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " h  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/smoba/webview/WebViewEx;->m_screenHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    new-instance v2, Lcom/smoba/webview/WebViewEx$13;

    invoke-direct {v2, p0}, Lcom/smoba/webview/WebViewEx$13;-><init>(Lcom/smoba/webview/WebViewEx;)V

    iput-object v2, p0, Lcom/smoba/webview/WebViewEx;->mLayoutChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 978
    iget-object v2, p0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 979
    iget-object v3, p0, Lcom/smoba/webview/WebViewEx;->mLayoutChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method ChangeWifi()V
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_imageWifi:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 556
    iget v0, p0, Lcom/smoba/webview/WebViewEx;->m_nWifi:I

    if-nez v0, :cond_1

    .line 557
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_imageWifi:Landroid/widget/ImageView;

    .line 558
    sget v1, Lcom/smoba/webview/WebViewResID;->drawable_smobawebview_no_wifi_0:I

    .line 557
    invoke-virtual {p0, v0, v1}, Lcom/smoba/webview/WebViewEx;->SetImage(Landroid/widget/ImageView;I)V

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    iget v0, p0, Lcom/smoba/webview/WebViewEx;->m_nWifi:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 561
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_imageWifi:Landroid/widget/ImageView;

    .line 562
    sget v1, Lcom/smoba/webview/WebViewResID;->drawable_smobawebview_no_wifi_3:I

    .line 561
    invoke-virtual {p0, v0, v1}, Lcom/smoba/webview/WebViewEx;->SetImage(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 563
    :cond_2
    iget v0, p0, Lcom/smoba/webview/WebViewEx;->m_nWifi:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 565
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_imageWifi:Landroid/widget/ImageView;

    sget v1, Lcom/smoba/webview/WebViewResID;->drawable_smobawebview_wifi_2:I

    invoke-virtual {p0, v0, v1}, Lcom/smoba/webview/WebViewEx;->SetImage(Landroid/widget/ImageView;I)V

    goto :goto_0
.end method

.method public GetCurWebView()Lcom/tencent/smtt/sdk/WebView;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    return-object v0
.end method

.method public OpenWebCSharp()V
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 141
    .local v0, "curActivity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0, v0}, Lcom/smoba/webview/WebViewEx;->OpenWebJava(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public OpenWebJava(Landroid/app/Activity;)V
    .locals 6
    .param p1, "curActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x1

    .line 150
    iput-boolean v3, p0, Lcom/smoba/webview/WebViewEx;->m_bUseLocalClose:Z

    .line 151
    iput-boolean v3, p0, Lcom/smoba/webview/WebViewEx;->m_bInWebView:Z

    .line 152
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/smoba/webview/WebViewEx;->m_bRedPoint:Z

    .line 154
    invoke-static {p1}, Lcom/smoba/webview/WebViewResID;->init(Landroid/content/Context;)V

    .line 155
    iput-object p1, p0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    .line 157
    iget-object v3, p0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/smoba/webview/WebViewEx;->mParentLayout:Landroid/view/ViewGroup;

    .line 159
    iget-object v3, p0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 162
    .local v1, "mInflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/smoba/webview/WebViewResID;->smobawebviewlayout:I

    .line 163
    const/4 v4, 0x0

    .line 162
    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 165
    .local v0, "contentView":Landroid/view/View;
    iput-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_curView:Landroid/view/View;

    .line 167
    iget-object v3, p0, Lcom/smoba/webview/WebViewEx;->m_curView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 168
    iget-object v3, p0, Lcom/smoba/webview/WebViewEx;->m_curView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 169
    .local v2, "p":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/smoba/webview/WebViewEx;->m_curView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 172
    .end local v2    # "p":Landroid/view/ViewGroup;
    :cond_0
    iget-object v3, p0, Lcom/smoba/webview/WebViewEx;->mParentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 174
    iget-object v3, p0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    .line 175
    sget v4, Lcom/smoba/webview/WebViewResID;->smobawebview_webview:I

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/tencent/smtt/sdk/WebView;

    .line 174
    iput-object v3, p0, Lcom/smoba/webview/WebViewEx;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    .line 176
    iget-object v3, p0, Lcom/smoba/webview/WebViewEx;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    if-nez v3, :cond_1

    .line 205
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-virtual {p0}, Lcom/smoba/webview/WebViewEx;->AddKeyboardWebViewScroll()V

    .line 182
    new-instance v3, Lcom/smoba/webview/SmobaWebViewClient;

    invoke-direct {v3}, Lcom/smoba/webview/SmobaWebViewClient;-><init>()V

    iput-object v3, p0, Lcom/smoba/webview/WebViewEx;->m_WebViewClient:Lcom/smoba/webview/SmobaWebViewClient;

    .line 183
    iget-object v3, p0, Lcom/smoba/webview/WebViewEx;->m_WebViewClient:Lcom/smoba/webview/SmobaWebViewClient;

    invoke-virtual {v3, p0}, Lcom/smoba/webview/SmobaWebViewClient;->InitClient(Lcom/smoba/webview/WebViewEx;)V

    .line 184
    invoke-direct {p0}, Lcom/smoba/webview/WebViewEx;->initWebView()V

    .line 186
    new-instance v3, Lcom/smoba/webview/SmobaJsBridge;

    invoke-direct {v3}, Lcom/smoba/webview/SmobaJsBridge;-><init>()V

    iput-object v3, p0, Lcom/smoba/webview/WebViewEx;->m_JsBridge:Lcom/smoba/webview/SmobaJsBridge;

    .line 188
    iget-object v3, p0, Lcom/smoba/webview/WebViewEx;->m_JsBridge:Lcom/smoba/webview/SmobaJsBridge;

    iget-object v4, p0, Lcom/smoba/webview/WebViewEx;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    iget-object v5, p0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4, v5, p0}, Lcom/smoba/webview/SmobaJsBridge;->Init(Lcom/tencent/smtt/sdk/WebView;Landroid/app/Activity;Lcom/smoba/webview/WebViewEx;)V

    .line 190
    invoke-direct {p0}, Lcom/smoba/webview/WebViewEx;->InitToolBar()V

    .line 192
    invoke-direct {p0}, Lcom/smoba/webview/WebViewEx;->loadUrl()V

    goto :goto_0
.end method

.method RemoveKeyboardWebViewScroll()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 903
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 915
    :goto_0
    return-void

    .line 906
    :cond_0
    const-string v0, "smobawebview"

    const-string v1, "RemoveKeyboardWebViewScroll"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 909
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 910
    iget-object v1, p0, Lcom/smoba/webview/WebViewEx;->mLayoutChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 912
    :cond_1
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 913
    iget-object v1, p0, Lcom/smoba/webview/WebViewEx;->mLayoutChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method SetBackBtnImage(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "bHome"    # Ljava/lang/Boolean;

    .prologue
    .line 574
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_backupBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 576
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_backupBtn:Landroid/widget/ImageButton;

    sget v1, Lcom/smoba/webview/WebViewResID;->drawable_smobawebview_back:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_backupBtn:Landroid/widget/ImageButton;

    sget v1, Lcom/smoba/webview/WebViewResID;->drawable_smobawebview_back1:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public SetDetail(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 615
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smoba/webview/WebViewEx;->SetBackBtnImage(Ljava/lang/Boolean;)V

    .line 616
    invoke-virtual {p0}, Lcom/smoba/webview/WebViewEx;->SetRedPointUI()V

    .line 617
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_DetailText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_DetailText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 620
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_DetailText:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_HomeCenterImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 624
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_HomeCenterImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 627
    :cond_1
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_imageHeart:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 628
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_imageHeart:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 631
    :cond_2
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_imageWifi:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 632
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_imageWifi:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 634
    :cond_3
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_imagePower:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 635
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_imagePower:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 638
    :cond_4
    return-void
.end method

.method public SetHome()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 589
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smoba/webview/WebViewEx;->SetBackBtnImage(Ljava/lang/Boolean;)V

    .line 590
    invoke-virtual {p0}, Lcom/smoba/webview/WebViewEx;->SetRedPointUI()V

    .line 591
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_DetailText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_DetailText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_HomeCenterImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_HomeCenterImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 597
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_HomeCenterImage:Landroid/widget/ImageView;

    .line 598
    sget v1, Lcom/smoba/webview/WebViewResID;->drawable_smobawebview_home_titleimg:I

    .line 597
    invoke-virtual {p0, v0, v1}, Lcom/smoba/webview/WebViewEx;->SetImage(Landroid/widget/ImageView;I)V

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_imageHeart:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 602
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_imageHeart:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 605
    :cond_2
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_imageWifi:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 606
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_imageWifi:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 608
    :cond_3
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_imagePower:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 609
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_imagePower:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 612
    :cond_4
    return-void
.end method

.method SetImage(Landroid/widget/ImageView;I)V
    .locals 0
    .param p1, "curImage"    # Landroid/widget/ImageView;
    .param p2, "resID"    # I

    .prologue
    .line 711
    if-eqz p1, :cond_0

    .line 712
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 714
    :cond_0
    return-void
.end method

.method SetLoadingUI(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 682
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_progressDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/smoba/webview/CustomProgressDialog;->createLoadingDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_progressDialog:Landroid/app/Dialog;

    .line 684
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_progressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 686
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_progressDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 688
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_progressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 691
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_progressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 698
    :goto_0
    return-void

    .line 694
    :cond_1
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_progressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 695
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_progressDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method public SetRedPoint(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "bShow"    # Ljava/lang/Boolean;

    .prologue
    .line 541
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/smoba/webview/WebViewEx;->m_bRedPoint:Z

    .line 542
    invoke-virtual {p0}, Lcom/smoba/webview/WebViewEx;->SetRedPointUI()V

    .line 543
    return-void
.end method

.method public SetRedPointUI()V
    .locals 2

    .prologue
    .line 546
    iget-boolean v0, p0, Lcom/smoba/webview/WebViewEx;->m_bRedPoint:Z

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_imageRedpoint:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 552
    :goto_0
    return-void

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_imageRedpoint:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public SetSubscibe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 641
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smoba/webview/WebViewEx;->SetBackBtnImage(Ljava/lang/Boolean;)V

    .line 642
    invoke-virtual {p0}, Lcom/smoba/webview/WebViewEx;->SetRedPointUI()V

    .line 643
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_DetailText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_DetailText:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_HomeCenterImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 648
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_HomeCenterImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 649
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_HomeCenterImage:Landroid/widget/ImageView;

    .line 650
    sget v1, Lcom/smoba/webview/WebViewResID;->drawable_smobawebview_subscribe_titileimg:I

    .line 649
    invoke-virtual {p0, v0, v1}, Lcom/smoba/webview/WebViewEx;->SetImage(Landroid/widget/ImageView;I)V

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_imageHeart:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 654
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_imageHeart:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 657
    :cond_2
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_imageWifi:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 658
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_imageWifi:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 660
    :cond_3
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_imagePower:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 661
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_imagePower:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 664
    :cond_4
    return-void
.end method

.method ShowHeadr(Z)V
    .locals 3
    .param p1, "isShow"    # Z

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/smoba/webview/WebViewEx;->SetRedPointUI()V

    .line 668
    iget-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_curView:Landroid/view/View;

    .line 669
    sget v2, Lcom/smoba/webview/WebViewResID;->smobawebview_frameheader:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 670
    .local v0, "layout":Landroid/widget/FrameLayout;
    if-eqz v0, :cond_0

    .line 671
    if-eqz p1, :cond_1

    .line 672
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public ShowRetryTips(Z)V
    .locals 2
    .param p1, "bshow"    # Z

    .prologue
    .line 494
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_ReTryTipView:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 495
    if-eqz p1, :cond_1

    .line 496
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_ReTryTipView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_ReTryTipView:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method UpdateBatteryLevel()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    const/16 v7, 0x14

    const/16 v6, 0xff

    .line 515
    iget-object v3, p0, Lcom/smoba/webview/WebViewEx;->m_ProgressBar:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/smoba/webview/WebViewEx;->m_nlastBatteryLevel:I

    iget v4, p0, Lcom/smoba/webview/WebViewEx;->m_nBatteryLevel:I

    if-eq v3, v4, :cond_2

    .line 516
    iget v3, p0, Lcom/smoba/webview/WebViewEx;->m_nBatteryLevel:I

    iput v3, p0, Lcom/smoba/webview/WebViewEx;->m_nlastBatteryLevel:I

    .line 518
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_1

    .line 519
    const/16 v3, 0x19

    const/16 v4, 0xab

    const/16 v5, 0x67

    invoke-static {v6, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 520
    .local v1, "color":I
    iget v3, p0, Lcom/smoba/webview/WebViewEx;->m_nBatteryLevel:I

    const/16 v4, 0x1e

    if-gt v3, v4, :cond_3

    iget v3, p0, Lcom/smoba/webview/WebViewEx;->m_nBatteryLevel:I

    if-lt v3, v7, :cond_3

    .line 521
    const/16 v3, 0xbc

    const/16 v4, 0x17

    invoke-static {v6, v6, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 525
    :cond_0
    :goto_0
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 526
    .local v2, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 527
    new-instance v0, Landroid/graphics/drawable/ClipDrawable;

    .line 528
    const v3, 0x800003

    const/4 v4, 0x1

    .line 527
    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 530
    .local v0, "clipDrawable":Landroid/graphics/drawable/ClipDrawable;
    iget-object v3, p0, Lcom/smoba/webview/WebViewEx;->m_ProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 533
    .end local v0    # "clipDrawable":Landroid/graphics/drawable/ClipDrawable;
    .end local v1    # "color":I
    .end local v2    # "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    :cond_1
    iget-object v3, p0, Lcom/smoba/webview/WebViewEx;->m_ProgressBar:Landroid/widget/ProgressBar;

    iget v4, p0, Lcom/smoba/webview/WebViewEx;->m_nBatteryLevel:I

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 534
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "battery level "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/smoba/webview/WebViewEx;->m_nBatteryLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 538
    :cond_2
    return-void

    .line 522
    .restart local v1    # "color":I
    :cond_3
    iget v3, p0, Lcom/smoba/webview/WebViewEx;->m_nBatteryLevel:I

    if-ge v3, v7, :cond_0

    .line 523
    const/16 v3, 0xda

    const/16 v4, 0x42

    const/16 v5, 0x37

    invoke-static {v6, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    goto :goto_0
.end method

.method public closeWebUI()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 316
    invoke-virtual {p0}, Lcom/smoba/webview/WebViewEx;->RemoveKeyboardWebViewScroll()V

    .line 317
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_JsBridge:Lcom/smoba/webview/SmobaJsBridge;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_JsBridge:Lcom/smoba/webview/SmobaJsBridge;

    const-string v2, "CloseWebUIUnity"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Lcom/smoba/webview/SmobaJsBridge;->JaveToCSharp(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_0
    iput-boolean v7, p0, Lcom/smoba/webview/WebViewEx;->m_bInWebView:Z

    .line 321
    iput-boolean v7, p0, Lcom/smoba/webview/WebViewEx;->m_bInUnity:Z

    .line 323
    iput v7, p0, Lcom/smoba/webview/WebViewEx;->m_nWifi:I

    .line 324
    invoke-virtual {p0, v7}, Lcom/smoba/webview/WebViewEx;->SetLoadingUI(Z)V

    .line 325
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_progressDialog:Landroid/app/Dialog;

    .line 326
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_curView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_curView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_curView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 328
    .local v6, "p":Landroid/view/ViewGroup;
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_curView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 330
    .end local v6    # "p":Landroid/view/ViewGroup;
    :cond_1
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_WebViewClient:Lcom/smoba/webview/SmobaWebViewClient;

    if-eqz v0, :cond_2

    .line 331
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_WebViewClient:Lcom/smoba/webview/SmobaWebViewClient;

    invoke-virtual {v0}, Lcom/smoba/webview/SmobaWebViewClient;->StopLaodingUrlTimer()V

    .line 333
    :cond_2
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_WebViewClient:Lcom/smoba/webview/SmobaWebViewClient;

    .line 334
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v0, :cond_3

    .line 335
    const-string v0, "closewebui"

    invoke-static {v0}, Lcom/smoba/webview/WebViewEx;->MyLog(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->stopLoading()V

    .line 338
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/smoba/webview/WebViewEx;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 339
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->removeAllViews()V

    .line 341
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const-string v2, ""

    const-string/jumbo v3, "text/html"

    const-string/jumbo v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/smtt/sdk/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->clearHistory()V

    .line 343
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setWebChromeClient(Lcom/tencent/smtt/sdk/WebChromeClient;)V

    .line 344
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V

    .line 345
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptEnabled(Z)V

    .line 347
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->destroy()V

    .line 348
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    .line 352
    :cond_3
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_curActivity:Landroid/app/Activity;

    .line 353
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_curView:Landroid/view/View;

    .line 354
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->mParentLayout:Landroid/view/ViewGroup;

    .line 355
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_JsBridge:Lcom/smoba/webview/SmobaJsBridge;

    .line 358
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_DetailText:Landroid/widget/TextView;

    .line 359
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_imageHeart:Landroid/widget/ImageView;

    .line 360
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_imageRedpoint:Landroid/widget/ImageView;

    .line 361
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_imageWifi:Landroid/widget/ImageView;

    .line 362
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_imagePower:Landroid/widget/ImageView;

    .line 363
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_HomeCenterImage:Landroid/widget/ImageView;

    .line 365
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_JsBridge:Lcom/smoba/webview/SmobaJsBridge;

    .line 367
    sput-object v1, Lcom/smoba/webview/WebViewEx;->INSTANCE_EX:Lcom/smoba/webview/WebViewEx;

    .line 368
    iput-boolean v7, p0, Lcom/smoba/webview/WebViewEx;->m_bRedPoint:Z

    .line 369
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_ReTryTipView:Landroid/widget/FrameLayout;

    .line 370
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_ProgressBar:Landroid/widget/ProgressBar;

    .line 372
    iput-object v1, p0, Lcom/smoba/webview/WebViewEx;->m_backupBtn:Landroid/widget/ImageButton;

    .line 376
    iput-boolean v7, p0, Lcom/smoba/webview/WebViewEx;->m_bPause:Z

    .line 377
    const-string v0, ""

    iput-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_TokeString:Ljava/lang/String;

    .line 378
    iput v8, p0, Lcom/smoba/webview/WebViewEx;->m_ShareErrorCode:I

    .line 379
    iput v8, p0, Lcom/smoba/webview/WebViewEx;->m_iPlay:I

    .line 380
    const-string v0, ""

    iput-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_InvitedInfo:Ljava/lang/String;

    .line 381
    return-void
.end method

.method public getJsBridge()Lcom/smoba/webview/SmobaJsBridge;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/smoba/webview/WebViewEx;->m_JsBridge:Lcom/smoba/webview/SmobaJsBridge;

    return-object v0
.end method
