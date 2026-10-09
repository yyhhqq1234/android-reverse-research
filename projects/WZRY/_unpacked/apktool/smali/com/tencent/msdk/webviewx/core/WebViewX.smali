.class public Lcom/tencent/msdk/webviewx/core/WebViewX;
.super Ljava/lang/Object;
.source "WebViewX.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/msdk/webviewx/core/WebViewX$WebViewXClient;,
        Lcom/tencent/msdk/webviewx/core/WebViewX$WebMessage;
    }
.end annotation


# static fields
.field private static final FUN_CLOSE:I = 0x65

.field private static final FUN_INIT_WEBVIEWX:I = 0x69

.field private static final FUN_OPENUEL:I = 0x64

.field private static final FUN_OPEN_DATA:I = 0x67

.field public static final FUN_SENDTOGAME:I = 0x68

.field private static final FUN_SENDTOJS:I = 0x66

.field public static final TAG:Ljava/lang/String; = "WebViewX"

.field private static volatile instance:Lcom/tencent/msdk/webviewx/core/WebViewX;


# instance fields
.field private closeMsg:Ljava/lang/String;

.field public mActivity:Landroid/app/Activity;

.field private mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mCurrentView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mInited:Z

.field private mJsBridge:Lcom/tencent/msdk/webviewx/core/JsBridge;

.field private mLeftButton:Landroid/widget/TextView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mParentLayout:Landroid/view/ViewGroup;

.field private mRightButton:Landroid/widget/TextView;

.field private mTitleBarLayout:Landroid/view/View;

.field private mTitleView:Landroid/widget/TextView;

.field private mWebChromeClient:Lcom/tencent/smtt/sdk/WebChromeClient;

.field private mWebEventLisenter:Lcom/tencent/msdk/webviewx/api/MSDKWeb$WebEventLisenter;

.field private mWebView:Lcom/tencent/smtt/sdk/WebView;

.field private mWebviewDialog:Landroid/app/Dialog;

.field private webWebEventLisenter:Lcom/tencent/msdk/webviewx/api/MSDKWeb$WebEventLisenter;

.field private webveiwFrameRet:Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->closeMsg:Ljava/lang/String;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mInited:Z

    .line 230
    new-instance v0, Lcom/tencent/msdk/webviewx/core/WebViewX$1;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/webviewx/core/WebViewX$1;-><init>(Lcom/tencent/msdk/webviewx/core/WebViewX;)V

    iput-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->webWebEventLisenter:Lcom/tencent/msdk/webviewx/api/MSDKWeb$WebEventLisenter;

    .line 405
    new-instance v0, Lcom/tencent/msdk/webviewx/core/WebViewX$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/msdk/webviewx/core/WebViewX$2;-><init>(Lcom/tencent/msdk/webviewx/core/WebViewX;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mHandler:Landroid/os/Handler;

    .line 573
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebEventLisenter:Lcom/tencent/msdk/webviewx/api/MSDKWeb$WebEventLisenter;

    .line 575
    new-instance v0, Lcom/tencent/msdk/webviewx/core/WebViewX$3;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/webviewx/core/WebViewX$3;-><init>(Lcom/tencent/msdk/webviewx/core/WebViewX;)V

    iput-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 776
    new-instance v0, Lcom/tencent/msdk/webviewx/core/WebViewX$4;

    invoke-direct {v0, p0}, Lcom/tencent/msdk/webviewx/core/WebViewX$4;-><init>(Lcom/tencent/msdk/webviewx/core/WebViewX;)V

    iput-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebChromeClient:Lcom/tencent/smtt/sdk/WebChromeClient;

    .line 78
    const-string v0, "WebViewX"

    const-string v1, "WebViewX create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/msdk/webviewx/core/WebViewX;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/webviewx/core/WebViewX;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->initView()V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/msdk/webviewx/core/WebViewX;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webviewx/core/WebViewX;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->closeMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tencent/msdk/webviewx/core/WebViewX;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webviewx/core/WebViewX;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/tencent/msdk/webviewx/core/WebViewX;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/webviewx/core/WebViewX;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->closeMsg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tencent/msdk/webviewx/core/WebViewX;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/webviewx/core/WebViewX;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->refreshTitleBar()V

    return-void
.end method

.method static synthetic access$300(Lcom/tencent/msdk/webviewx/core/WebViewX;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webviewx/core/WebViewX;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->isShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/tencent/msdk/webviewx/core/WebViewX;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/webviewx/core/WebViewX;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->showView()V

    return-void
.end method

.method static synthetic access$500(Lcom/tencent/msdk/webviewx/core/WebViewX;)Lcom/tencent/smtt/sdk/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webviewx/core/WebViewX;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tencent/msdk/webviewx/core/WebViewX;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/webviewx/core/WebViewX;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->removeView()V

    return-void
.end method

.method static synthetic access$700(Lcom/tencent/msdk/webviewx/core/WebViewX;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/msdk/webviewx/core/WebViewX;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->destoryWebview()V

    return-void
.end method

.method static synthetic access$800(Lcom/tencent/msdk/webviewx/core/WebViewX;)Lcom/tencent/msdk/webviewx/api/MSDKWeb$WebEventLisenter;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webviewx/core/WebViewX;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebEventLisenter:Lcom/tencent/msdk/webviewx/api/MSDKWeb$WebEventLisenter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tencent/msdk/webviewx/core/WebViewX;)Lcom/tencent/msdk/webviewx/core/JsBridge;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/msdk/webviewx/core/WebViewX;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mJsBridge:Lcom/tencent/msdk/webviewx/core/JsBridge;

    return-object v0
.end method

.method private destoryWebview()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 655
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    if-nez v0, :cond_0

    .line 656
    const-string v0, "WebViewX"

    const-string v1, "Webview is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :goto_0
    return-void

    .line 659
    :cond_0
    const-string v0, "WebViewX"

    const-string v1, "destoryWebview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-virtual {p0, v2}, Lcom/tencent/msdk/webviewx/core/WebViewX;->setConfigCallback(Landroid/view/WindowManager;)V

    .line 661
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setBackgroundColor(I)V

    .line 665
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 666
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 670
    :goto_1
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setVisibility(I)V

    .line 671
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->clearHistory()V

    .line 672
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebView;->setWebChromeClient(Lcom/tencent/smtt/sdk/WebChromeClient;)V

    .line 673
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebView;->setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V

    .line 674
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptEnabled(Z)V

    .line 675
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->removeAllViews()V

    .line 676
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->destroy()V

    .line 677
    iput-object v2, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    .line 678
    sget-object v0, Lcom/tencent/msdk/webviewx/core/WebViewX;->instance:Lcom/tencent/msdk/webviewx/core/WebViewX;

    iput-boolean v3, v0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mInited:Z

    goto :goto_0

    .line 668
    :cond_2
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public static getInstance()Lcom/tencent/msdk/webviewx/core/WebViewX;
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lcom/tencent/msdk/webviewx/core/WebViewX;->instance:Lcom/tencent/msdk/webviewx/core/WebViewX;

    if-nez v0, :cond_1

    .line 85
    const-class v1, Lcom/tencent/msdk/webviewx/core/WebViewX;

    monitor-enter v1

    .line 86
    :try_start_0
    sget-object v0, Lcom/tencent/msdk/webviewx/core/WebViewX;->instance:Lcom/tencent/msdk/webviewx/core/WebViewX;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-direct {v0}, Lcom/tencent/msdk/webviewx/core/WebViewX;-><init>()V

    sput-object v0, Lcom/tencent/msdk/webviewx/core/WebViewX;->instance:Lcom/tencent/msdk/webviewx/core/WebViewX;

    .line 89
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_1
    sget-object v0, Lcom/tencent/msdk/webviewx/core/WebViewX;->instance:Lcom/tencent/msdk/webviewx/core/WebViewX;

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private initView()V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 501
    :try_start_0
    const-string v11, "WebViewX"

    const-string v12, "initView"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v11, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 503
    .local v4, "packageName":Ljava/lang/String;
    iget-object v11, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 504
    .local v5, "res":Landroid/content/res/Resources;
    const-string v11, "msdk_webviewx_titlebar"

    const-string v12, "layout"

    invoke-virtual {v5, v11, v12, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 505
    .local v8, "titleBarId":I
    const-string/jumbo v11, "webTitle"

    const-string v12, "id"

    invoke-virtual {v5, v11, v12, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 506
    .local v9, "titleTextId":I
    const-string v11, "leftBtn"

    const-string v12, "id"

    invoke-virtual {v5, v11, v12, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 507
    .local v2, "leftButtonId":I
    const-string v11, "rightBtn"

    const-string v12, "id"

    invoke-virtual {v5, v11, v12, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 508
    .local v6, "rightButtonId":I
    invoke-virtual {p0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mTitleBarLayout:Landroid/view/View;

    .line 509
    iget-object v11, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mTitleBarLayout:Landroid/view/View;

    invoke-virtual {v11, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mTitleView:Landroid/widget/TextView;

    .line 510
    iget-object v11, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mTitleBarLayout:Landroid/view/View;

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mLeftButton:Landroid/widget/TextView;

    .line 511
    iget-object v11, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mTitleBarLayout:Landroid/view/View;

    invoke-virtual {v11, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mRightButton:Landroid/widget/TextView;

    .line 513
    const-string v11, "WebviewXDialog"

    const-string/jumbo v12, "style"

    invoke-virtual {v5, v11, v12, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 514
    .local v7, "style_dialog":I
    new-instance v11, Landroid/app/Dialog;

    iget-object v12, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mActivity:Landroid/app/Activity;

    invoke-direct {v11, v12, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v11, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebviewDialog:Landroid/app/Dialog;

    .line 515
    iget-object v11, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebviewDialog:Landroid/app/Dialog;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 516
    iget-object v11, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebviewDialog:Landroid/app/Dialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 517
    .local v0, "dialogWindow":Landroid/view/Window;
    iget-object v11, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v12, 0x400

    invoke-virtual {v0, v11, v12}, Landroid/view/Window;->setFlags(II)V

    .line 518
    iget-object v11, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebviewDialog:Landroid/app/Dialog;

    invoke-virtual {v11}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v11

    const v12, 0x1020002

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    iput-object v11, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mParentLayout:Landroid/view/ViewGroup;

    .line 520
    new-instance v11, Lcom/tencent/smtt/sdk/WebView;

    iget-object v12, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mActivity:Landroid/app/Activity;

    invoke-direct {v11, v12}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    .line 521
    invoke-direct {p0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->setWebViewBackgroudWithBitmap()V

    .line 522
    new-instance v11, Lcom/tencent/msdk/webviewx/core/JsBridge;

    iget-object v12, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-direct {v11, v12}, Lcom/tencent/msdk/webviewx/core/JsBridge;-><init>(Lcom/tencent/smtt/sdk/WebView;)V

    iput-object v11, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mJsBridge:Lcom/tencent/msdk/webviewx/core/JsBridge;

    .line 523
    invoke-direct {p0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->initWebView()V

    .line 524
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 527
    .local v10, "webviewParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v3, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 528
    .local v3, "mainLayout":Landroid/widget/LinearLayout;
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 529
    iget-object v11, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mTitleBarLayout:Landroid/view/View;

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 530
    iget-object v11, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v3, v11, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    iput-object v3, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mCurrentView:Landroid/view/View;

    .line 533
    iget-object v11, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/tencent/msdk/webviewx/core/WebViewX;->setConfigCallback(Landroid/view/WindowManager;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    .end local v0    # "dialogWindow":Landroid/view/Window;
    .end local v2    # "leftButtonId":I
    .end local v3    # "mainLayout":Landroid/widget/LinearLayout;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "rightButtonId":I
    .end local v7    # "style_dialog":I
    .end local v8    # "titleBarId":I
    .end local v9    # "titleTextId":I
    .end local v10    # "webviewParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_0
    return-void

    .line 534
    :catch_0
    move-exception v1

    .line 535
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initWebView()V
    .locals 6

    .prologue
    const/16 v5, 0xb

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 592
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    iget-object v2, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebChromeClient:Lcom/tencent/smtt/sdk/WebChromeClient;

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/WebView;->setWebChromeClient(Lcom/tencent/smtt/sdk/WebChromeClient;)V

    .line 593
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v2, Lcom/tencent/msdk/webviewx/core/WebViewX$WebViewXClient;

    invoke-direct {v2, p0}, Lcom/tencent/msdk/webviewx/core/WebViewX$WebViewXClient;-><init>(Lcom/tencent/msdk/webviewx/core/WebViewX;)V

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/WebView;->setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V

    .line 594
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_0

    .line 595
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const-string v2, "searchBoxJavaBridge_"

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 596
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 597
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const-string v2, "accessibilityTraversal"

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 600
    :cond_0
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v0

    .line 601
    .local v0, "webSetting":Lcom/tencent/smtt/sdk/WebSettings;
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptEnabled(Z)V

    .line 602
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccess(Z)V

    .line 603
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 604
    sget-object v1, Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setLayoutAlgorithm(Lcom/tencent/smtt/sdk/WebSettings$LayoutAlgorithm;)V

    .line 605
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setSupportZoom(Z)V

    .line 606
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setBuiltInZoomControls(Z)V

    .line 607
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setUseWideViewPort(Z)V

    .line 608
    invoke-virtual {v0, v4}, Lcom/tencent/smtt/sdk/WebSettings;->setSupportMultipleWindows(Z)V

    .line 609
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 611
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_1

    .line 612
    invoke-virtual {v0, v4}, Lcom/tencent/smtt/sdk/WebSettings;->setDisplayZoomControls(Z)V

    .line 614
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-le v1, v2, :cond_2

    .line 616
    invoke-virtual {v0, v4}, Lcom/tencent/smtt/sdk/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 620
    :cond_2
    invoke-virtual {v0, v4}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 621
    invoke-virtual {v0, v4}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 623
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 624
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCacheEnabled(Z)V

    .line 625
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setDatabaseEnabled(Z)V

    .line 626
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setDomStorageEnabled(Z)V

    .line 627
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setGeolocationEnabled(Z)V

    .line 628
    const-wide v2, 0x7fffffffffffffffL

    invoke-virtual {v0, v2, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCacheMaxSize(J)V

    .line 629
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setCacheMode(I)V

    .line 631
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mActivity:Landroid/app/Activity;

    const-string/jumbo v2, "webviewxcache"

    invoke-virtual {v1, v2, v4}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 632
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 631
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 633
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mActivity:Landroid/app/Activity;

    const-string/jumbo v2, "webviewxcachedatabases"

    invoke-virtual {v1, v2, v4}, Landroid/app/Activity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 634
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 633
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 635
    sget-object v1, Lcom/tencent/smtt/sdk/WebSettings$PluginState;->ON_DEMAND:Lcom/tencent/smtt/sdk/WebSettings$PluginState;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setPluginState(Lcom/tencent/smtt/sdk/WebSettings$PluginState;)V

    .line 636
    sget-object v1, Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;->HIGH:Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setRenderPriority(Lcom/tencent/smtt/sdk/WebSettings$RenderPriority;)V

    .line 637
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 638
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WEBVIEWX"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 640
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/CookieSyncManager;->createInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/CookieSyncManager;

    .line 641
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieSyncManager;->getInstance()Lcom/tencent/smtt/sdk/CookieSyncManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/CookieSyncManager;->sync()V

    .line 642
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 643
    const-string v1, "WebViewX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using Tbs webview core. TbsCoreVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/tencent/smtt/sdk/WebView;->getTbsCoreVersion(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TbsSDKVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mActivity:Landroid/app/Activity;

    .line 644
    invoke-static {v3}, Lcom/tencent/smtt/sdk/WebView;->getTbsSDKVersion(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 643
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :goto_0
    return-void

    .line 646
    :cond_3
    const-string v1, "WebViewX"

    const-string v2, "Using System webview core."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isShowing()Z
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebviewDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 395
    const/4 v0, 0x0

    .line 397
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebviewDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method private refreshTitleBar()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v4, 0x0

    .line 540
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mTitleBarLayout:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->webveiwFrameRet:Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    if-nez v1, :cond_2

    .line 541
    :cond_0
    const-string v1, "WebViewX"

    const-string/jumbo v2, "titlebar layout or config is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_1
    :goto_0
    return-void

    .line 544
    :cond_2
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->webveiwFrameRet:Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    iget-boolean v1, v1, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;->showTitleBar:Z

    if-eqz v1, :cond_6

    .line 545
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mTitleBarLayout:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 546
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->webveiwFrameRet:Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    iget-boolean v1, v1, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;->showTitle:Z

    if-eqz v1, :cond_5

    .line 547
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 551
    :goto_1
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mLeftButton:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 552
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mRightButton:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 553
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->webveiwFrameRet:Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    iget-object v1, v1, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/realnameauth/model/ButtonInfo;

    .line 554
    .local v0, "info":Lcom/tencent/msdk/realnameauth/model/ButtonInfo;
    iget v2, v0, Lcom/tencent/msdk/realnameauth/model/ButtonInfo;->buttonId:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 555
    iget-object v2, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mLeftButton:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/tencent/msdk/realnameauth/model/ButtonInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 556
    iget-object v2, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mLeftButton:Landroid/widget/TextView;

    iget v3, v0, Lcom/tencent/msdk/realnameauth/model/ButtonInfo;->action:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 557
    iget-object v2, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mLeftButton:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 558
    iget-object v2, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mLeftButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 560
    :cond_4
    iget v2, v0, Lcom/tencent/msdk/realnameauth/model/ButtonInfo;->buttonId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 561
    iget-object v2, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mRightButton:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/tencent/msdk/realnameauth/model/ButtonInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    iget-object v2, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mRightButton:Landroid/widget/TextView;

    iget v3, v0, Lcom/tencent/msdk/realnameauth/model/ButtonInfo;->action:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 563
    iget-object v2, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mRightButton:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    iget-object v2, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mRightButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 549
    .end local v0    # "info":Lcom/tencent/msdk/realnameauth/model/ButtonInfo;
    :cond_5
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 568
    :cond_6
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mTitleBarLayout:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private removeView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 355
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mParentLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 364
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 366
    :cond_2
    iput-object v2, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 367
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebviewDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    .line 368
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebviewDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 376
    :cond_3
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 377
    return-void
.end method

.method private setWebViewBackgroudTransparent()V
    .locals 3

    .prologue
    .line 723
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setBackgroundColor(I)V

    .line 726
    :cond_0
    return-void
.end method

.method private setWebViewBackgroudWithBitmap()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 707
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    if-nez v0, :cond_1

    .line 720
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setBackgroundColor(I)V

    .line 712
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 713
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 714
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 716
    :cond_2
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, v2}, Lcom/tencent/smtt/sdk/WebView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 717
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebView:Lcom/tencent/smtt/sdk/WebView;

    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private showView()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mParentLayout:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 384
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebviewDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebviewDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 387
    :cond_0
    const-string v0, "WebViewX"

    const-string v1, "ready to show webviewx"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    return-void
.end method


# virtual methods
.method public closeWeb()I
    .locals 3

    .prologue
    .line 174
    const-string v1, "WebViewX"

    const-string v2, "closeWebView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 177
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x65

    iput v1, v0, Landroid/os/Message;->what:I

    .line 178
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 179
    const/4 v1, 0x1

    .line 181
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCloseMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->closeMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public init(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 98
    const-class v2, Lcom/tencent/msdk/webviewx/core/WebViewX;

    monitor-enter v2

    .line 99
    :try_start_0
    sget-object v1, Lcom/tencent/msdk/webviewx/core/WebViewX;->instance:Lcom/tencent/msdk/webviewx/core/WebViewX;

    iget-boolean v1, v1, Lcom/tencent/msdk/webviewx/core/WebViewX;->mInited:Z

    if-eqz v1, :cond_0

    .line 100
    const-string v1, "WebViewX"

    const-string/jumbo v3, "webviewx has been init"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    monitor-exit v2

    .line 117
    :goto_0
    return-void

    .line 103
    :cond_0
    sget-object v1, Lcom/tencent/msdk/webviewx/core/WebViewX;->instance:Lcom/tencent/msdk/webviewx/core/WebViewX;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/tencent/msdk/webviewx/core/WebViewX;->mInited:Z

    .line 104
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mParentLayout:Landroid/view/ViewGroup;

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mCurrentView:Landroid/view/View;

    .line 106
    const-string v1, "WebViewX"

    const-string v3, "init start"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iput-object p1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mActivity:Landroid/app/Activity;

    .line 110
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 112
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x69

    iput v1, v0, Landroid/os/Message;->what:I

    .line 113
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 116
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 338
    invoke-direct {p0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->removeView()V

    .line 339
    invoke-direct {p0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->destoryWebview()V

    .line 340
    iput-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebviewDialog:Landroid/app/Dialog;

    .line 341
    iput-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mLeftButton:Landroid/widget/TextView;

    .line 342
    iput-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mTitleBarLayout:Landroid/view/View;

    .line 343
    iput-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->webveiwFrameRet:Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    .line 344
    iput-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mTitleView:Landroid/widget/TextView;

    .line 345
    iput-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mCurrentView:Landroid/view/View;

    .line 346
    iput-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mRightButton:Landroid/widget/TextView;

    .line 347
    iput-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mJsBridge:Lcom/tencent/msdk/webviewx/core/JsBridge;

    .line 348
    iput-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mParentLayout:Landroid/view/ViewGroup;

    .line 349
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mJsBridge:Lcom/tencent/msdk/webviewx/core/JsBridge;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mJsBridge:Lcom/tencent/msdk/webviewx/core/JsBridge;

    invoke-virtual {v0}, Lcom/tencent/msdk/webviewx/core/JsBridge;->onResume()V

    .line 329
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mJsBridge:Lcom/tencent/msdk/webviewx/core/JsBridge;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mJsBridge:Lcom/tencent/msdk/webviewx/core/JsBridge;

    invoke-virtual {v0}, Lcom/tencent/msdk/webviewx/core/JsBridge;->onStop()V

    .line 334
    :cond_0
    const-string v0, "WebViewX"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return-void
.end method

.method public openWeb(Ljava/lang/String;)I
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 189
    const-string v1, "WebViewX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openUrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->webveiwFrameRet:Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    .line 191
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 193
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 194
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 195
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 196
    const/4 v1, 0x1

    .line 198
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public openWebWithConfig(Ljava/lang/String;Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;Lcom/tencent/msdk/webviewx/api/MSDKWeb$WebEventLisenter;)I
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;
    .param p3, "lisenter"    # Lcom/tencent/msdk/webviewx/api/MSDKWeb$WebEventLisenter;

    .prologue
    .line 208
    const-string v1, "WebViewX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openUrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with titleBar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iput-object p2, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->webveiwFrameRet:Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    .line 210
    iput-object p3, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mWebEventLisenter:Lcom/tencent/msdk/webviewx/api/MSDKWeb$WebEventLisenter;

    .line 211
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 213
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 214
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 215
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 216
    const/4 v1, 0x1

    .line 218
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public openWebWithData(Ljava/lang/String;[B)I
    .locals 7
    .param p1, "charset"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 269
    const-string v4, "WebViewX"

    const-string v5, "open with data"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->webveiwFrameRet:Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    .line 271
    if-eqz p2, :cond_2

    array-length v4, p2

    if-lez v4, :cond_2

    .line 272
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 273
    const-string p1, "UTF-8"

    .line 275
    :cond_0
    const-string v4, "WebViewX"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "charset is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 278
    .local v0, "data_str":Ljava/lang/String;
    new-instance v3, Lcom/tencent/msdk/webviewx/core/WebViewX$WebMessage;

    invoke-direct {v3}, Lcom/tencent/msdk/webviewx/core/WebViewX$WebMessage;-><init>()V

    .line 279
    .local v3, "webmsg":Lcom/tencent/msdk/webviewx/core/WebViewX$WebMessage;
    iput-object p1, v3, Lcom/tencent/msdk/webviewx/core/WebViewX$WebMessage;->msg1:Ljava/lang/String;

    .line 280
    iput-object v0, v3, Lcom/tencent/msdk/webviewx/core/WebViewX$WebMessage;->msg2:Ljava/lang/String;

    .line 281
    iget-object v4, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_1

    .line 282
    iget-object v4, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 283
    .local v2, "msg":Landroid/os/Message;
    const/16 v4, 0x67

    iput v4, v2, Landroid/os/Message;->what:I

    .line 284
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 285
    iget-object v4, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    const/4 v4, 0x1

    .line 296
    .end local v0    # "data_str":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "webmsg":Lcom/tencent/msdk/webviewx/core/WebViewX$WebMessage;
    :goto_0
    return v4

    .line 288
    :catch_0
    move-exception v1

    .line 289
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "WebViewX"

    const-string v5, "UnsupportedEncodingException"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 296
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 293
    :cond_2
    const-string v4, "WebViewX"

    const-string v5, "data is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public openWebWithJson(Ljava/lang/String;)I
    .locals 3
    .param p1, "webJson"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-static {p1}, Lcom/tencent/msdk/webviewx/tools/WebviewFrameRetHelper;->json2WebveiwFrameRet(Ljava/lang/String;)Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;

    move-result-object v1

    .line 223
    .local v1, "ret":Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;
    if-eqz v1, :cond_0

    .line 224
    iget-object v2, v1, Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;->openurl:Ljava/lang/String;

    invoke-static {v2}, Lcom/tencent/msdk/api/WGPlatform;->WGGetEncodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "encodeUrl":Ljava/lang/String;
    iget-object v2, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->webWebEventLisenter:Lcom/tencent/msdk/webviewx/api/MSDKWeb$WebEventLisenter;

    invoke-virtual {p0, v0, v1, v2}, Lcom/tencent/msdk/webviewx/core/WebViewX;->openWebWithConfig(Ljava/lang/String;Lcom/tencent/msdk/realnameauth/model/WebveiwFrameRet;Lcom/tencent/msdk/webviewx/api/MSDKWeb$WebEventLisenter;)I

    move-result v2

    .line 227
    .end local v0    # "encodeUrl":Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public sendToWebJs(Ljava/lang/String;)V
    .locals 4
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 303
    const-string v1, "WebViewX"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendToJs:params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 306
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x66

    iput v1, v0, Landroid/os/Message;->what:I

    .line 307
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 308
    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 310
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public sendToWebJs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callback"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    .line 318
    const-string v0, "WebViewX"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendToJs:result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mJsBridge:Lcom/tencent/msdk/webviewx/core/JsBridge;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mJsBridge:Lcom/tencent/msdk/webviewx/core/JsBridge;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/msdk/webviewx/core/JsBridge;->sendToJs(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_0
    return-void
.end method

.method public setCloseMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->closeMsg:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setConfigCallback(Landroid/view/WindowManager;)V
    .locals 4
    .param p1, "windowManager"    # Landroid/view/WindowManager;

    .prologue
    .line 683
    :try_start_0
    const-class v2, Lcom/tencent/smtt/sdk/WebView;

    const-string v3, "mWebViewCore"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 684
    .local v1, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mBrowserFrame"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 685
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "sConfigCallback"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 686
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 687
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 689
    .local v0, "configCallback":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 698
    .end local v0    # "configCallback":Ljava/lang/Object;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 693
    .restart local v0    # "configCallback":Ljava/lang/Object;
    .restart local v1    # "field":Ljava/lang/reflect/Field;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "mWindowManager"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 694
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 695
    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 696
    .end local v0    # "configCallback":Ljava/lang/Object;
    .end local v1    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setWebViewBackground([B)Z
    .locals 7
    .param p1, "data"    # [B

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 136
    const-string v4, "WebViewX"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "is opened\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->isShowing()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 159
    :cond_0
    :goto_0
    return v2

    .line 140
    :cond_1
    const/4 v0, 0x0

    .line 142
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    :try_start_0
    array-length v5, p1

    invoke-static {p1, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 148
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mActivity:Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 149
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 151
    iget-object v2, p0, Lcom/tencent/msdk/webviewx/core/WebViewX;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 153
    invoke-direct {p0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->setWebViewBackgroudWithBitmap()V

    .line 154
    const-string v2, "WebViewX"

    const-string v4, "setWebViewBackground ok!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 159
    goto :goto_0

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    const-string v3, "WebViewX"

    const-string v4, "decode Bitmap error!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
