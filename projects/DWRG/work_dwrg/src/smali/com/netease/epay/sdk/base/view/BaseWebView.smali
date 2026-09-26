.class public Lcom/netease/epay/sdk/base/view/BaseWebView;
.super Landroid/webkit/WebView;
.source "BaseWebView.java"


# instance fields
.field downloadListener:Landroid/webkit/DownloadListener;

.field private isDestroy:Z

.field private isPageClosePrompt:Z

.field private pageClosePromptInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 33
    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    .line 35
    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isPageClosePrompt:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->pageClosePromptInfo:Ljava/lang/String;

    .line 172
    new-instance v0, Lcom/netease/epay/sdk/base/view/BaseWebView$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base/view/BaseWebView$1;-><init>(Lcom/netease/epay/sdk/base/view/BaseWebView;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->downloadListener:Landroid/webkit/DownloadListener;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    .line 35
    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isPageClosePrompt:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->pageClosePromptInfo:Ljava/lang/String;

    .line 172
    new-instance v0, Lcom/netease/epay/sdk/base/view/BaseWebView$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base/view/BaseWebView$1;-><init>(Lcom/netease/epay/sdk/base/view/BaseWebView;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->downloadListener:Landroid/webkit/DownloadListener;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    .line 35
    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isPageClosePrompt:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->pageClosePromptInfo:Ljava/lang/String;

    .line 172
    new-instance v0, Lcom/netease/epay/sdk/base/view/BaseWebView$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base/view/BaseWebView$1;-><init>(Lcom/netease/epay/sdk/base/view/BaseWebView;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->downloadListener:Landroid/webkit/DownloadListener;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    .line 35
    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isPageClosePrompt:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->pageClosePromptInfo:Ljava/lang/String;

    .line 172
    new-instance v0, Lcom/netease/epay/sdk/base/view/BaseWebView$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base/view/BaseWebView$1;-><init>(Lcom/netease/epay/sdk/base/view/BaseWebView;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->downloadListener:Landroid/webkit/DownloadListener;

    .line 54
    return-void
.end method

.method private shouldDisableHardwareRenderInLayer()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 417
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "GT-I95"

    .line 419
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "samsung"

    .line 421
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 422
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-ne v3, v4, :cond_1

    move v3, v1

    .line 423
    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    .line 426
    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 421
    goto :goto_0

    :cond_1
    move v3, v2

    .line 422
    goto :goto_1

    :cond_2
    move v1, v2

    .line 426
    goto :goto_2
.end method


# virtual methods
.method public canGoBack()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x0

    .line 200
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    goto :goto_0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1
    .param p1, "steps"    # I

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 230
    const/4 v0, 0x0

    .line 232
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result v0

    goto :goto_0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 214
    const/4 v0, 0x0

    .line 216
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    goto :goto_0
.end method

.method public clearFormData()V
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 345
    :goto_0
    return-void

    .line 344
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->clearFormData()V

    goto :goto_0
.end method

.method public clearHistory()V
    .locals 1

    .prologue
    .line 349
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 353
    :goto_0
    return-void

    .line 352
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->clearHistory()V

    goto :goto_0
.end method

.method public clearSslPreferences()V
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 361
    :goto_0
    return-void

    .line 360
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->clearSslPreferences()V

    goto :goto_0
.end method

.method public copyBackForwardList()Landroid/webkit/WebBackForwardList;
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 61
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 398
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 399
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    .line 400
    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p2, "resultCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 1
    .param p1, "find"    # Ljava/lang/String;

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 377
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->findAllAsync(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public findNext(Z)V
    .locals 1
    .param p1, "forward"    # Z

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->findNext(Z)V

    goto :goto_0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 301
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x0

    .line 304
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 286
    const/4 v0, 0x0

    .line 288
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 270
    const/4 v0, 0x0

    .line 272
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPageClosePromptInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isPageClosePrompt:Z

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->pageClosePromptInfo:Ljava/lang/String;

    .line 411
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 294
    const/4 v0, 0x0

    .line 296
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 278
    const/4 v0, 0x0

    .line 280
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 262
    const/4 v0, 0x0

    .line 264
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0
.end method

.method public goBackOrForward(I)V
    .locals 1
    .param p1, "steps"    # I

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->goBackOrForward(I)V

    goto :goto_0
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 78
    :goto_0
    return-void

    .line 77
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public loadUrlWithCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "theUrl"    # Ljava/lang/String;
    .param p2, "ntesCookie"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1, p2}, Lcom/netease/epay/sdk/base/util/CookieUtil;->setCookie(Landroid/content/Context;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/epay/sdk/base/view/BaseWebView;->loadUrl(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 329
    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 337
    :goto_0
    return-void

    .line 336
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V

    goto :goto_0
.end method

.method public pageDown(Z)Z
    .locals 1
    .param p1, "bottom"    # Z

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 254
    const/4 v0, 0x0

    .line 256
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->pageDown(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public pageUp(Z)Z
    .locals 1
    .param p1, "top"    # Z

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x0

    .line 248
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->pageUp(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public pauseTimers()V
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 312
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->pauseTimers()V

    goto :goto_0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postData"    # [B

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->reload()V

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 1
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 390
    const/4 v0, 0x0

    .line 392
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    goto :goto_0
.end method

.method public resumeTimers()V
    .locals 1

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 320
    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->resumeTimers()V

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 382
    const/4 v0, 0x0

    .line 384
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    goto :goto_0
.end method

.method public saveWebArchive(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 109
    :cond_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->saveWebArchive(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
    .locals 1
    .param p1, "basename"    # Ljava/lang/String;
    .param p2, "autoname"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p3, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isDestroy:Z

    if-eqz v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 117
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    goto :goto_0
.end method

.method public setHyBridConfigs()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    invoke-virtual {p0, v2}, Lcom/netease/epay/sdk/base/view/BaseWebView;->setVerticalScrollBarEnabled(Z)V

    .line 122
    iget-object v0, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->downloadListener:Landroid/webkit/DownloadListener;

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 124
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    :goto_0
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 129
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 130
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 131
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 133
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 134
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 135
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 141
    :cond_0
    const-string v0, "android4.4.1"

    const-string v1, "android"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "epay163SDK"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    .line 149
    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 150
    const-string v0, "accessibilityTraversal"

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 151
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_1

    .line 152
    const-string v0, "searchBoxJavaBridge_"

    invoke-virtual {p0, v0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 156
    :cond_1
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->shouldDisableHardwareRenderInLayer()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, v0, v1}, Lcom/netease/epay/sdk/base/view/BaseWebView;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    :cond_2
    :goto_1
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 125
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public setPageClosePrompt(ZLjava/lang/String;)V
    .locals 0
    .param p1, "isPageClosePrompt"    # Z
    .param p2, "pageClosePromptInfo"    # Ljava/lang/String;

    .prologue
    .line 403
    iput-boolean p1, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->isPageClosePrompt:Z

    .line 404
    iput-object p2, p0, Lcom/netease/epay/sdk/base/view/BaseWebView;->pageClosePromptInfo:Ljava/lang/String;

    .line 405
    return-void
.end method
