.class public Lcom/tencent/pandora/webview/WebViewHelper;
.super Ljava/lang/Object;
.source "WebViewHelper.java"

# interfaces
.implements Lcom/tencent/pandora/webview/IWebView;


# instance fields
.field chromeClient:Lcom/tencent/pandora/webview/PandoraWebChromeClient;

.field commandQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/tencent/pandora/webview/WebViewCommand;",
            ">;"
        }
    .end annotation
.end field

.field currentContext:Landroid/content/Context;

.field private executingCommand:Lcom/tencent/pandora/webview/WebViewCommand;

.field layout:Landroid/widget/FrameLayout;

.field listener:Lcom/tencent/pandora/webview/WebViewEventListener;

.field screenHeight:I

.field screenWidth:I

.field shouldClearHistory:Z

.field useWindowManger:Z

.field webView:Lcom/tencent/smtt/sdk/WebView;

.field webViewClient:Lcom/tencent/smtt/sdk/WebViewClient;

.field windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isUseWindowManager"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper;->commandQueue:Ljava/util/LinkedList;

    .line 51
    iput-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->executingCommand:Lcom/tencent/pandora/webview/WebViewCommand;

    .line 57
    iput-boolean v1, p0, Lcom/tencent/pandora/webview/WebViewHelper;->shouldClearHistory:Z

    .line 62
    iput-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->layout:Landroid/widget/FrameLayout;

    .line 63
    iput-boolean v1, p0, Lcom/tencent/pandora/webview/WebViewHelper;->useWindowManger:Z

    .line 65
    new-instance v0, Lcom/tencent/pandora/webview/PandoraWebChromeClient;

    invoke-direct {v0}, Lcom/tencent/pandora/webview/PandoraWebChromeClient;-><init>()V

    iput-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper;->chromeClient:Lcom/tencent/pandora/webview/PandoraWebChromeClient;

    .line 66
    new-instance v0, Lcom/tencent/pandora/webview/WebViewHelper$1;

    invoke-direct {v0, p0}, Lcom/tencent/pandora/webview/WebViewHelper$1;-><init>(Lcom/tencent/pandora/webview/WebViewHelper;)V

    iput-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webViewClient:Lcom/tencent/smtt/sdk/WebViewClient;

    .line 129
    iput-object p1, p0, Lcom/tencent/pandora/webview/WebViewHelper;->currentContext:Landroid/content/Context;

    .line 131
    :try_start_0
    iput-boolean p2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->useWindowManger:Z

    .line 132
    iget-boolean v0, p0, Lcom/tencent/pandora/webview/WebViewHelper;->useWindowManger:Z

    if-eqz v0, :cond_0

    .line 133
    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper;->windowManager:Landroid/view/WindowManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/tencent/pandora/webview/WebViewHelper;)Lcom/tencent/pandora/webview/WebViewCommand;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper;->executingCommand:Lcom/tencent/pandora/webview/WebViewCommand;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tencent/pandora/webview/WebViewHelper;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 454
    invoke-direct {p0, p1}, Lcom/tencent/pandora/webview/WebViewHelper;->processCommands(Ljava/lang/String;)V

    return-void
.end method

.method private addOrUpdateViewFromActivity(IIII)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "left"    # I
    .param p4, "top"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/tencent/pandora/webview/WebViewHelper;->getWebViewActivity()Landroid/app/Activity;

    move-result-object v0

    .line 351
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 368
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->layout:Landroid/widget/FrameLayout;

    if-nez v2, :cond_1

    .line 354
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->layout:Landroid/widget/FrameLayout;

    .line 355
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->layout:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    iget v4, p0, Lcom/tencent/pandora/webview/WebViewHelper;->screenWidth:I

    iget v5, p0, Lcom/tencent/pandora/webview/WebViewHelper;->screenHeight:I

    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 362
    :cond_1
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->layout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, 0x0

    invoke-direct {v4, p1, p2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 364
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput p3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 365
    iput p4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 366
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->layout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private addOrUpdateViewFromWindowManager(IIII)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "left"    # I
    .param p4, "top"    # I

    .prologue
    .line 328
    iget-object v1, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v1, :cond_0

    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/tencent/pandora/webview/WebViewHelper;->windowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/tencent/pandora/webview/WebViewHelper;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/pandora/webview/WebViewHelper;->createLayoutParams(IIII)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 334
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/tencent/pandora/webview/WebViewHelper;->windowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/tencent/pandora/webview/WebViewHelper;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/tencent/pandora/webview/WebViewHelper;->createLayoutParams(IIII)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 341
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    goto :goto_0

    .line 339
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private cleanUp()V
    .locals 2

    .prologue
    .line 572
    invoke-direct {p0}, Lcom/tencent/pandora/webview/WebViewHelper;->getWebView()Lcom/tencent/smtt/sdk/WebView;

    move-result-object v0

    .line 573
    .local v0, "theWebView":Lcom/tencent/smtt/sdk/WebView;
    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->clearHistory()V

    .line 575
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->clearCache(Z)V

    .line 577
    :cond_0
    return-void
.end method

.method private closeUrl(Lcom/tencent/pandora/webview/CloseCommand;)V
    .locals 3
    .param p1, "param"    # Lcom/tencent/pandora/webview/CloseCommand;

    .prologue
    .line 476
    invoke-direct {p0}, Lcom/tencent/pandora/webview/WebViewHelper;->getWebView()Lcom/tencent/smtt/sdk/WebView;

    move-result-object v0

    .line 477
    .local v0, "theWebView":Lcom/tencent/smtt/sdk/WebView;
    if-eqz v0, :cond_2

    .line 478
    const-string v1, "Pandora WebView"

    const-string v2, "Close, Should Remove View"

    invoke-static {v1, v2}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->stopLoading()V

    .line 480
    invoke-virtual {p0}, Lcom/tencent/pandora/webview/WebViewHelper;->showBlank()V

    .line 482
    :try_start_0
    iget-boolean v1, p0, Lcom/tencent/pandora/webview/WebViewHelper;->useWindowManger:Z

    if-eqz v1, :cond_1

    .line 483
    iget-object v1, p0, Lcom/tencent/pandora/webview/WebViewHelper;->windowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    iget-object v1, p0, Lcom/tencent/pandora/webview/WebViewHelper;->layout:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 486
    iget-object v1, p0, Lcom/tencent/pandora/webview/WebViewHelper;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 489
    :catch_0
    move-exception v1

    goto :goto_0

    .line 495
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/pandora/webview/WebViewHelper;->executingCommand:Lcom/tencent/pandora/webview/WebViewCommand;

    goto :goto_0

    .line 491
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private createWebView()V
    .locals 7

    .prologue
    .line 194
    iget-object v4, p0, Lcom/tencent/pandora/webview/WebViewHelper;->currentContext:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 291
    :goto_0
    return-void

    .line 195
    :cond_0
    new-instance v4, Lcom/tencent/pandora/webview/WebViewHelper$2;

    iget-object v5, p0, Lcom/tencent/pandora/webview/WebViewHelper;->currentContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5}, Lcom/tencent/pandora/webview/WebViewHelper$2;-><init>(Lcom/tencent/pandora/webview/WebViewHelper;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    .line 241
    iget-object v4, p0, Lcom/tencent/pandora/webview/WebViewHelper;->chromeClient:Lcom/tencent/pandora/webview/PandoraWebChromeClient;

    iget-object v5, p0, Lcom/tencent/pandora/webview/WebViewHelper;->listener:Lcom/tencent/pandora/webview/WebViewEventListener;

    invoke-virtual {v4, v5}, Lcom/tencent/pandora/webview/PandoraWebChromeClient;->setListener(Lcom/tencent/pandora/webview/WebViewEventListener;)V

    .line 244
    :try_start_0
    iget-object v4, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "ua":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " PandoraWebview_1.0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 246
    const-string v4, "Pandora WebView"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "UserAgent:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v4, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 250
    iget-object v4, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :try_start_1
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/tencent/smtt/sdk/CookieManager;->setAcceptThirdPartyCookies(Lcom/tencent/smtt/sdk/WebView;Z)V

    .line 254
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/CookieManager;->setAcceptCookie(Z)V

    .line 256
    iget-object v4, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/WebSettings;->setDomStorageEnabled(Z)V

    .line 257
    iget-object v4, p0, Lcom/tencent/pandora/webview/WebViewHelper;->currentContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "appCachePath":Ljava/lang/String;
    iget-object v4, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 259
    iget-object v4, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccess(Z)V

    .line 260
    iget-object v4, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCacheEnabled(Z)V

    .line 261
    iget-object v4, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/WebSettings;->setCacheMode(I)V

    .line 263
    iget-object v4, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/WebSettings;->setDatabaseEnabled(Z)V

    .line 264
    iget-object v4, p0, Lcom/tencent/pandora/webview/WebViewHelper;->currentContext:Landroid/content/Context;

    const-string v5, "database"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "dbPath":Ljava/lang/String;
    iget-object v4, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 267
    iget-object v4, p0, Lcom/tencent/pandora/webview/WebViewHelper;->currentContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/tencent/smtt/sdk/CookieSyncManager;->createInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/CookieSyncManager;

    .line 268
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieSyncManager;->getInstance()Lcom/tencent/smtt/sdk/CookieSyncManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/CookieSyncManager;->startSync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 273
    .end local v0    # "appCachePath":Ljava/lang/String;
    .end local v1    # "dbPath":Ljava/lang/String;
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 274
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_1

    .line 275
    iget-object v4, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v4}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 277
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_3

    .line 278
    iget-object v4, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/tencent/smtt/sdk/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 283
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/WebView;->setFocusable(Z)V

    .line 284
    iget-object v4, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/WebView;->setFocusableInTouchMode(Z)V

    .line 285
    iget-object v4, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    const/16 v5, 0x82

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/WebView;->requestFocus(I)Z

    .line 286
    iget-object v4, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    iget-object v5, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webViewClient:Lcom/tencent/smtt/sdk/WebViewClient;

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/WebView;->setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V

    .line 287
    iget-object v4, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    iget-object v5, p0, Lcom/tencent/pandora/webview/WebViewHelper;->chromeClient:Lcom/tencent/pandora/webview/PandoraWebChromeClient;

    invoke-virtual {v4, v5}, Lcom/tencent/smtt/sdk/WebView;->setWebChromeClient(Lcom/tencent/smtt/sdk/WebChromeClient;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 288
    .end local v3    # "ua":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 289
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 270
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v3    # "ua":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 271
    .restart local v2    # "ex":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 279
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_2

    .line 280
    iget-object v4, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/tencent/smtt/sdk/WebView;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method private enqueueCommand(Lcom/tencent/pandora/webview/WebViewCommand;)V
    .locals 4
    .param p1, "cmd"    # Lcom/tencent/pandora/webview/WebViewCommand;

    .prologue
    .line 416
    if-eqz p1, :cond_0

    .line 417
    instance-of v2, p1, Lcom/tencent/pandora/webview/CloseCommand;

    if-eqz v2, :cond_3

    .line 418
    invoke-direct {p0}, Lcom/tencent/pandora/webview/WebViewHelper;->getLastOpenCommand()Lcom/tencent/pandora/webview/OpenUrlCommand;

    move-result-object v0

    .line 419
    .local v0, "lastCommand":Lcom/tencent/pandora/webview/OpenUrlCommand;
    if-eqz v0, :cond_2

    .line 420
    const-string v2, "Pandora WebView"

    const-string v3, "Discard the commands(Open & Close)"

    invoke-static {v2, v3}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->commandQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 437
    .end local v0    # "lastCommand":Lcom/tencent/pandora/webview/OpenUrlCommand;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->executingCommand:Lcom/tencent/pandora/webview/WebViewCommand;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->commandQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 438
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->commandQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/pandora/webview/WebViewCommand;

    iput-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->executingCommand:Lcom/tencent/pandora/webview/WebViewCommand;

    .line 439
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->executingCommand:Lcom/tencent/pandora/webview/WebViewCommand;

    instance-of v2, v2, Lcom/tencent/pandora/webview/CloseCommand;

    if-eqz v2, :cond_5

    .line 440
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->executingCommand:Lcom/tencent/pandora/webview/WebViewCommand;

    check-cast v2, Lcom/tencent/pandora/webview/CloseCommand;

    invoke-direct {p0, v2}, Lcom/tencent/pandora/webview/WebViewHelper;->closeUrl(Lcom/tencent/pandora/webview/CloseCommand;)V

    .line 441
    const-string v2, "Pandora WebView"

    const-string v3, "Execute Close Command"

    invoke-static {v2, v3}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_1
    :goto_1
    return-void

    .line 424
    .restart local v0    # "lastCommand":Lcom/tencent/pandora/webview/OpenUrlCommand;
    :cond_2
    const-string v2, "Pandora WebView"

    const-string v3, "Add Close Command"

    invoke-static {v2, v3}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->commandQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 428
    .end local v0    # "lastCommand":Lcom/tencent/pandora/webview/OpenUrlCommand;
    :cond_3
    invoke-direct {p0}, Lcom/tencent/pandora/webview/WebViewHelper;->getLastOpenCommand()Lcom/tencent/pandora/webview/OpenUrlCommand;

    move-result-object v1

    .line 429
    .local v1, "lastCommnad":Lcom/tencent/pandora/webview/OpenUrlCommand;
    if-eqz v1, :cond_4

    .line 430
    const-string v2, "Pandora WebView"

    const-string v3, "Discard Last Open Command"

    invoke-static {v2, v3}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->commandQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 433
    :cond_4
    const-string v2, "Pandora WebView"

    const-string v3, "Add Open Command"

    invoke-static {v2, v3}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->commandQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_0

    .line 442
    .end local v1    # "lastCommnad":Lcom/tencent/pandora/webview/OpenUrlCommand;
    :cond_5
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->executingCommand:Lcom/tencent/pandora/webview/WebViewCommand;

    instance-of v2, v2, Lcom/tencent/pandora/webview/OpenUrlCommand;

    if-eqz v2, :cond_1

    .line 443
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->executingCommand:Lcom/tencent/pandora/webview/WebViewCommand;

    check-cast v2, Lcom/tencent/pandora/webview/OpenUrlCommand;

    invoke-direct {p0, v2}, Lcom/tencent/pandora/webview/WebViewHelper;->openUrl(Lcom/tencent/pandora/webview/OpenUrlCommand;)V

    .line 444
    const-string v2, "Pandora WebView"

    const-string v3, "Execute Open Command"

    invoke-static {v2, v3}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getLastCloseCommand()Lcom/tencent/pandora/webview/CloseCommand;
    .locals 2

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/tencent/pandora/webview/WebViewHelper;->getLastElement()Lcom/tencent/pandora/webview/WebViewCommand;

    move-result-object v0

    .line 403
    .local v0, "command":Lcom/tencent/pandora/webview/WebViewCommand;
    instance-of v1, v0, Lcom/tencent/pandora/webview/CloseCommand;

    if-eqz v1, :cond_0

    .line 404
    check-cast v0, Lcom/tencent/pandora/webview/CloseCommand;

    .line 406
    .end local v0    # "command":Lcom/tencent/pandora/webview/WebViewCommand;
    :goto_0
    return-object v0

    .restart local v0    # "command":Lcom/tencent/pandora/webview/WebViewCommand;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLastElement()Lcom/tencent/pandora/webview/WebViewCommand;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper;->commandQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper;->commandQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/pandora/webview/WebViewCommand;

    .line 388
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLastOpenCommand()Lcom/tencent/pandora/webview/OpenUrlCommand;
    .locals 2

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/tencent/pandora/webview/WebViewHelper;->getLastElement()Lcom/tencent/pandora/webview/WebViewCommand;

    move-result-object v0

    .line 394
    .local v0, "command":Lcom/tencent/pandora/webview/WebViewCommand;
    instance-of v1, v0, Lcom/tencent/pandora/webview/OpenUrlCommand;

    if-eqz v1, :cond_0

    .line 395
    check-cast v0, Lcom/tencent/pandora/webview/OpenUrlCommand;

    .line 397
    .end local v0    # "command":Lcom/tencent/pandora/webview/WebViewCommand;
    :goto_0
    return-object v0

    .restart local v0    # "command":Lcom/tencent/pandora/webview/WebViewCommand;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getWebView()Lcom/tencent/smtt/sdk/WebView;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    return-object v0
.end method

.method private getWebViewActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/tencent/pandora/webview/WebViewHelper;->currentContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/pandora/webview/WebViewHelper;->currentContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 301
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper;->currentContext:Landroid/content/Context;

    .end local v0    # "activity":Landroid/app/Activity;
    check-cast v0, Landroid/app/Activity;

    .line 303
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-object v0
.end method

.method private openUrl(Lcom/tencent/pandora/webview/OpenUrlCommand;)V
    .locals 4
    .param p1, "param"    # Lcom/tencent/pandora/webview/OpenUrlCommand;

    .prologue
    .line 504
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper;->currentContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    if-nez v0, :cond_2

    .line 508
    invoke-direct {p0}, Lcom/tencent/pandora/webview/WebViewHelper;->createWebView()V

    .line 509
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v0, :cond_0

    .line 511
    :cond_2
    invoke-direct {p0}, Lcom/tencent/pandora/webview/WebViewHelper;->getWebView()Lcom/tencent/smtt/sdk/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    .line 512
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper;->chromeClient:Lcom/tencent/pandora/webview/PandoraWebChromeClient;

    invoke-virtual {v0}, Lcom/tencent/pandora/webview/PandoraWebChromeClient;->reset()V

    .line 513
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper;->chromeClient:Lcom/tencent/pandora/webview/PandoraWebChromeClient;

    iget-object v1, p0, Lcom/tencent/pandora/webview/WebViewHelper;->listener:Lcom/tencent/pandora/webview/WebViewEventListener;

    invoke-virtual {v0, v1}, Lcom/tencent/pandora/webview/PandoraWebChromeClient;->setListener(Lcom/tencent/pandora/webview/WebViewEventListener;)V

    .line 514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/pandora/webview/WebViewHelper;->shouldClearHistory:Z

    .line 516
    invoke-direct {p0}, Lcom/tencent/pandora/webview/WebViewHelper;->syncCookies()V

    .line 518
    const-string v0, "Pandora WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Track Load: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/tencent/pandora/webview/OpenUrlCommand;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    const-string v0, "Pandora WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Color code "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/tencent/pandora/webview/OpenUrlCommand;->color:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    const-string v1, "Pandora WebView"

    iget-boolean v0, p1, Lcom/tencent/pandora/webview/OpenUrlCommand;->showUntilFullyLoaded:Z

    if-eqz v0, :cond_3

    const-string v0, "Delay Show"

    :goto_1
    invoke-static {v1, v0}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    iget v1, p1, Lcom/tencent/pandora/webview/OpenUrlCommand;->color:I

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setBackgroundColor(I)V

    .line 522
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    iget-object v1, p1, Lcom/tencent/pandora/webview/OpenUrlCommand;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    .line 523
    iget-boolean v0, p1, Lcom/tencent/pandora/webview/OpenUrlCommand;->showUntilFullyLoaded:Z

    if-nez v0, :cond_0

    .line 524
    iget v0, p1, Lcom/tencent/pandora/webview/OpenUrlCommand;->width:I

    iget v1, p1, Lcom/tencent/pandora/webview/OpenUrlCommand;->height:I

    iget v2, p1, Lcom/tencent/pandora/webview/OpenUrlCommand;->offsetX:I

    iget v3, p1, Lcom/tencent/pandora/webview/OpenUrlCommand;->offsetY:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/tencent/pandora/webview/WebViewHelper;->addOrUpdateWebView(IIII)V

    goto :goto_0

    .line 520
    :cond_3
    const-string v0, "No Delay Show"

    goto :goto_1
.end method

.method private processCommands(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 455
    const-string v2, "about:blank"

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 456
    .local v0, "isCloseDone":Z
    :goto_0
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->executingCommand:Lcom/tencent/pandora/webview/WebViewCommand;

    instance-of v1, v2, Lcom/tencent/pandora/webview/CloseCommand;

    .line 457
    .local v1, "isCurrentClose":Z
    xor-int v2, v0, v1

    if-nez v2, :cond_2

    .line 458
    if-eqz v1, :cond_1

    .line 459
    const-string v2, "Pandora WebView"

    const-string v3, "Execute Close Done"

    invoke-static {v2, v3}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    :goto_1
    iput-object v4, p0, Lcom/tencent/pandora/webview/WebViewHelper;->executingCommand:Lcom/tencent/pandora/webview/WebViewCommand;

    .line 465
    invoke-direct {p0, v4}, Lcom/tencent/pandora/webview/WebViewHelper;->enqueueCommand(Lcom/tencent/pandora/webview/WebViewCommand;)V

    .line 469
    :goto_2
    return-void

    .line 455
    .end local v0    # "isCloseDone":Z
    .end local v1    # "isCurrentClose":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 461
    .restart local v0    # "isCloseDone":Z
    .restart local v1    # "isCurrentClose":Z
    :cond_1
    const-string v2, "Pandora WebView"

    const-string v3, "Execute Open Done"

    invoke-static {v2, v3}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 467
    :cond_2
    const-string v2, "Pandora WebView"

    const-string v3, "Warning! command and event can not match"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private syncCookies()V
    .locals 12

    .prologue
    .line 530
    :try_start_0
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object v0

    .line 531
    .local v0, "cookieManager":Lcom/tencent/smtt/sdk/CookieManager;
    const-string v7, "qq.com"

    invoke-virtual {v0, v7}, Lcom/tencent/smtt/sdk/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 532
    .local v2, "cookiestring":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ";GTS_PANDORA=1"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, "cookies":Ljava/lang/String;
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v3, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 534
    .local v3, "curDate":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 535
    .local v4, "cur":J
    const-wide v10, 0x9a7ec800L

    add-long v8, v4, v10

    .line 536
    .local v8, "expriteTime":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ";expires="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v10}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 537
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ";domain=.qq.com"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 538
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ";path=/"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 539
    const-string v7, ".qq.com"

    invoke-virtual {v0, v7, v1}, Lcom/tencent/smtt/sdk/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieSyncManager;->getInstance()Lcom/tencent/smtt/sdk/CookieSyncManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/tencent/smtt/sdk/CookieSyncManager;->sync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    .end local v0    # "cookieManager":Lcom/tencent/smtt/sdk/CookieManager;
    .end local v1    # "cookies":Ljava/lang/String;
    .end local v2    # "cookiestring":Ljava/lang/String;
    .end local v3    # "curDate":Ljava/util/Date;
    .end local v4    # "cur":J
    .end local v8    # "expriteTime":J
    :goto_0
    return-void

    .line 541
    :catch_0
    move-exception v6

    .line 542
    .local v6, "ex":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addOrUpdateWebView(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "left"    # I
    .param p4, "top"    # I

    .prologue
    .line 308
    :try_start_0
    iget-object v1, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v1, :cond_0

    .line 309
    iget-boolean v1, p0, Lcom/tencent/pandora/webview/WebViewHelper;->useWindowManger:Z

    if-eqz v1, :cond_1

    .line 310
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/pandora/webview/WebViewHelper;->addOrUpdateViewFromWindowManager(IIII)V

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/pandora/webview/WebViewHelper;->addOrUpdateViewFromActivity(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public canGoBack()Z
    .locals 2

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/tencent/pandora/webview/WebViewHelper;->getWebView()Lcom/tencent/smtt/sdk/WebView;

    move-result-object v0

    .line 565
    .local v0, "theWebView":Lcom/tencent/smtt/sdk/WebView;
    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->canGoBack()Z

    move-result v1

    .line 568
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 592
    new-instance v0, Lcom/tencent/pandora/webview/CloseCommand;

    invoke-direct {v0}, Lcom/tencent/pandora/webview/CloseCommand;-><init>()V

    invoke-direct {p0, v0}, Lcom/tencent/pandora/webview/WebViewHelper;->enqueueCommand(Lcom/tencent/pandora/webview/WebViewCommand;)V

    .line 593
    return-void
.end method

.method public createLayoutParams(IIII)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "left"    # I
    .param p4, "top"    # I

    .prologue
    .line 149
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 150
    .local v0, "windowParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 151
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 152
    const v2, 0x8000

    or-int/2addr v1, v2

    .line 153
    or-int/lit8 v1, v1, 0x20

    .line 154
    or-int/lit16 v1, v1, 0x100

    .line 156
    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    .line 158
    or-int/lit16 v1, v1, 0x400

    .line 151
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 159
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 160
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 161
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 162
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 163
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 164
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 165
    iget-object v1, p0, Lcom/tencent/pandora/webview/WebViewHelper;->currentContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 166
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 170
    :goto_0
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 171
    return-object v0

    .line 168
    :cond_0
    const/16 v1, 0x7d3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 549
    invoke-virtual {p0}, Lcom/tencent/pandora/webview/WebViewHelper;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/pandora/webview/WebViewHelper;->getWebView()Lcom/tencent/smtt/sdk/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 550
    invoke-direct {p0}, Lcom/tencent/pandora/webview/WebViewHelper;->getWebView()Lcom/tencent/smtt/sdk/WebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->goBack()V

    .line 552
    :cond_0
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 656
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/tencent/pandora/webview/WebViewHelper;->setWebViewVisibility(I)V

    .line 657
    return-void
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public isShow()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 556
    iget-object v1, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v1, :cond_0

    .line 557
    iget-object v1, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 559
    :cond_0
    return v0
.end method

.method public setInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 666
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper;->chromeClient:Lcom/tencent/pandora/webview/PandoraWebChromeClient;

    invoke-virtual {v0, p1}, Lcom/tencent/pandora/webview/PandoraWebChromeClient;->setInitialInfo(Ljava/lang/String;)V

    .line 667
    return-void
.end method

.method public setListener(Lcom/tencent/pandora/webview/WebViewEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tencent/pandora/webview/WebViewEventListener;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/tencent/pandora/webview/WebViewHelper;->listener:Lcom/tencent/pandora/webview/WebViewEventListener;

    .line 177
    return-void
.end method

.method public setScreenDimension(II)V
    .locals 0
    .param p1, "weight"    # I
    .param p2, "height"    # I

    .prologue
    .line 670
    iput p1, p0, Lcom/tencent/pandora/webview/WebViewHelper;->screenWidth:I

    .line 671
    iput p2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->screenHeight:I

    .line 672
    return-void
.end method

.method public setWebViewVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 371
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    if-nez v0, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 373
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->setVisibility(I)V

    goto :goto_0
.end method

.method public show()V
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/pandora/webview/WebViewHelper;->setWebViewVisibility(I)V

    .line 662
    return-void
.end method

.method showBlank()V
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    if-eqz v0, :cond_0

    .line 584
    const-string v0, "Pandora WebView"

    const-string v1, "Track Load about:blank"

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebView;->setBackgroundColor(I)V

    .line 588
    :cond_0
    return-void
.end method

.method public showUrl(IIIILjava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "color"    # Ljava/lang/String;
    .param p7, "delayShow"    # Z

    .prologue
    .line 381
    new-instance v0, Lcom/tencent/pandora/webview/OpenUrlCommand;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/tencent/pandora/webview/OpenUrlCommand;-><init>(IIIILjava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/tencent/pandora/webview/WebViewHelper;->enqueueCommand(Lcom/tencent/pandora/webview/WebViewCommand;)V

    .line 382
    return-void
.end method

.method public uninitiated()V
    .locals 4

    .prologue
    .line 598
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/pandora/webview/WebViewHelper;->cleanUp()V

    .line 599
    invoke-direct {p0}, Lcom/tencent/pandora/webview/WebViewHelper;->getWebView()Lcom/tencent/smtt/sdk/WebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 600
    .local v1, "theWebView":Lcom/tencent/smtt/sdk/WebView;
    if-eqz v1, :cond_2

    .line 602
    :try_start_1
    const-string v2, "Pandora WebView"

    .line 603
    const-string v3, "Uninitialize, Should Remove View"

    .line 602
    invoke-static {v2, v3}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/tencent/pandora/webview/WebViewHelper;->setWebViewVisibility(I)V

    .line 605
    iget-boolean v2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->useWindowManger:Z

    if-eqz v2, :cond_3

    .line 606
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->windowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 618
    :cond_0
    :goto_0
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/WebView;->setWebChromeClient(Lcom/tencent/smtt/sdk/WebChromeClient;)V

    .line 619
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/WebView;->setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V

    .line 620
    invoke-virtual {p0}, Lcom/tencent/pandora/webview/WebViewHelper;->showBlank()V

    .line 621
    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->pauseTimers()V

    .line 622
    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->freeMemory()V

    .line 623
    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->removeAllViews()V

    .line 624
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/WebView;->setTag(Ljava/lang/Object;)V

    .line 625
    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->clearHistory()V

    .line 626
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/WebView;->clearCache(Z)V

    .line 627
    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 628
    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v2

    const/16 v3, 0x50

    invoke-interface {v2, v3}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->trimMemory(I)V

    .line 630
    :cond_1
    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->destroy()V

    .line 631
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 633
    iget-boolean v2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->useWindowManger:Z

    if-nez v2, :cond_5

    .line 634
    invoke-direct {p0}, Lcom/tencent/pandora/webview/WebViewHelper;->getWebViewActivity()Landroid/app/Activity;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 635
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_4

    .line 645
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "theWebView":Lcom/tencent/smtt/sdk/WebView;
    :cond_2
    :goto_1
    return-void

    .line 608
    .restart local v1    # "theWebView":Lcom/tencent/smtt/sdk/WebView;
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->layout:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 609
    iget-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->layout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 612
    :catch_0
    move-exception v2

    goto :goto_0

    .line 637
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_4
    :try_start_4
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 639
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_5
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 640
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/pandora/webview/WebViewHelper;->webView:Lcom/tencent/smtt/sdk/WebView;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 642
    .end local v1    # "theWebView":Lcom/tencent/smtt/sdk/WebView;
    :catch_1
    move-exception v2

    goto :goto_1

    .line 614
    .restart local v1    # "theWebView":Lcom/tencent/smtt/sdk/WebView;
    :catch_2
    move-exception v2

    goto :goto_0
.end method

.method public writeMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 649
    invoke-direct {p0}, Lcom/tencent/pandora/webview/WebViewHelper;->getWebView()Lcom/tencent/smtt/sdk/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 650
    invoke-direct {p0}, Lcom/tencent/pandora/webview/WebViewHelper;->getWebView()Lcom/tencent/smtt/sdk/WebView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/tencent/pandora/webview/PandoraWebChromeClient;->writeMessage(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    .line 652
    :cond_0
    return-void
.end method
