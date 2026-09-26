.class public Lcom/netease/epay/sdk/base/ui/WebViewFragment;
.super Lcom/netease/epay/sdk/base/ui/FullSdkFragment;
.source "WebViewFragment.java"


# static fields
.field protected static final COOKIE_KEY:Ljava/lang/String; = "WebView_cookie"

.field protected static final NEED_TITLE_KEY:Ljava/lang/String; = "WebView_isNeedTitle"

.field protected static final SCHEME_EPAY_APP:Ljava/lang/String; = "epay163"

.field protected static final URL_KEY:Ljava/lang/String; = "WebView_postUrl"


# instance fields
.field private bar:Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

.field private cookie:Ljava/lang/String;

.field private hideActionMenu:Z

.field private hybrid:Lcom/netease/epay/sdk/base/hybrid/Hybrid;

.field isInited:Z

.field private needTitle:Z

.field onClickListener:Landroid/view/View$OnClickListener;

.field private postUrl:Ljava/lang/String;

.field private progressBar:Landroid/widget/ProgressBar;

.field private tvHostInfo:Landroid/widget/TextView;

.field private viewBack:Landroid/view/View;

.field private viewClose:Landroid/view/View;

.field webChromeClient:Landroid/webkit/WebChromeClient;

.field private webView:Lcom/netease/epay/sdk/base/view/BaseWebView;

.field webViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;-><init>()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->needTitle:Z

    .line 144
    new-instance v0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$1;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment$1;-><init>(Lcom/netease/epay/sdk/base/ui/WebViewFragment;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->webViewClient:Landroid/webkit/WebViewClient;

    .line 191
    new-instance v0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$2;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment$2;-><init>(Lcom/netease/epay/sdk/base/ui/WebViewFragment;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->webChromeClient:Landroid/webkit/WebChromeClient;

    .line 241
    new-instance v0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$3;

    invoke-direct {v0, p0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment$3;-><init>(Lcom/netease/epay/sdk/base/ui/WebViewFragment;)V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->onClickListener:Landroid/view/View$OnClickListener;

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->isInited:Z

    return-void
.end method

.method static synthetic access$000(Lcom/netease/epay/sdk/base/ui/WebViewFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->progressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netease/epay/sdk/base/ui/WebViewFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->restoreActionMenu()V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/epay/sdk/base/ui/WebViewFragment;)Lcom/netease/epay/sdk/base/view/BaseWebView;
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->webView:Lcom/netease/epay/sdk/base/view/BaseWebView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netease/epay/sdk/base/ui/WebViewFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/ui/WebViewFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->setTitleText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/netease/epay/sdk/base/ui/WebViewFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->tvHostInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netease/epay/sdk/base/ui/WebViewFragment;)Lcom/netease/epay/sdk/base/hybrid/Hybrid;
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->hybrid:Lcom/netease/epay/sdk/base/hybrid/Hybrid;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netease/epay/sdk/base/ui/WebViewFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->viewBack:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netease/epay/sdk/base/ui/WebViewFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/ui/WebViewFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->back(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/netease/epay/sdk/base/ui/WebViewFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->viewClose:Landroid/view/View;

    return-object v0
.end method

.method private back(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->hideActionMenu:Z

    if-eqz v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->webView:Lcom/netease/epay/sdk/base/view/BaseWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->webView:Lcom/netease/epay/sdk/base/view/BaseWebView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->webView:Lcom/netease/epay/sdk/base/view/BaseWebView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->goBack()V

    goto :goto_0

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->onClickListener:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->viewClose:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method private initProgressBar()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 111
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->progressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 115
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v1, v0, v5

    .line 116
    new-instance v1, Landroid/graphics/drawable/ClipDrawable;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {}, Lcom/netease/epay/sdk/base/core/SdkConfig;->getMainColor()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v4}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    aput-object v1, v0, v4

    .line 117
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 118
    const/high16 v0, 0x1020000

    invoke-virtual {v1, v5, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 119
    const v0, 0x102000d

    invoke-virtual {v1, v4, v0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    .line 120
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static newInstance(ZLjava/lang/String;)Lcom/netease/epay/sdk/base/ui/WebViewFragment;
    .locals 1
    .param p0, "isNeedTitle"    # Z
    .param p1, "postUrl"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->newInstance(ZLjava/lang/String;Ljava/lang/String;)Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(ZLjava/lang/String;Ljava/lang/String;)Lcom/netease/epay/sdk/base/ui/WebViewFragment;
    .locals 3
    .param p0, "isNeedTitle"    # Z
    .param p1, "postUrl"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;

    .prologue
    .line 63
    new-instance v0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;-><init>()V

    .line 64
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 65
    const-string v2, "WebView_postUrl"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v2, "WebView_isNeedTitle"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 67
    const-string v2, "WebView_cookie"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 69
    return-object v0
.end method

.method private restoreActionMenu()V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->hideActionMenu:Z

    .line 238
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->bar:Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->restoreActionMenuStatus()V

    .line 239
    return-void
.end method

.method private setTitleText(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x9

    .line 124
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 127
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->bar:Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    invoke-virtual {v0, p1}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setTitle(Ljava/lang/String;)V

    .line 130
    :cond_1
    return-void
.end method


# virtual methods
.method public backKeyAction()Z
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->back(Landroid/view/View;)V

    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->webView:Lcom/netease/epay/sdk/base/view/BaseWebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->webView:Lcom/netease/epay/sdk/base/view/BaseWebView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->getPageClosePromptInfo()Ljava/lang/String;

    move-result-object v0

    .line 287
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 288
    new-instance v1, Lcom/netease/epay/sdk/base/ui/WebViewFragment$4;

    invoke-direct {v1, p0, v0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment$4;-><init>(Lcom/netease/epay/sdk/base/ui/WebViewFragment;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;->getInstance(Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment$ITwoBtnFragCallback;)Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;

    move-result-object v0

    .line 315
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "exitConfirm"

    invoke-virtual {v0, v1, v2}, Lcom/netease/epay/sdk/base/ui/TwoButtonMessageFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 321
    :cond_0
    :goto_1
    return-void

    .line 286
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 318
    :cond_2
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_1
.end method

.method public hideActionMenuAndLostBackKey()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->hideActionMenu:Z

    .line 231
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->bar:Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->saveActionMenuStates()V

    .line 232
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->bar:Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setBackShow(Z)V

    .line 233
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->bar:Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setCloseShow(Z)V

    .line 234
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 75
    sget v0, Lcom/netease/epay/sdk/base/R$layout;->epaysdk_frag_webview:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-super {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onDestroy()V

    .line 135
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->webView:Lcom/netease/epay/sdk/base/view/BaseWebView;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->webView:Lcom/netease/epay/sdk/base/view/BaseWebView;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/BaseWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 137
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->webView:Lcom/netease/epay/sdk/base/view/BaseWebView;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/BaseWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 138
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->webView:Lcom/netease/epay/sdk/base/view/BaseWebView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->webView:Lcom/netease/epay/sdk/base/view/BaseWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 139
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->webView:Lcom/netease/epay/sdk/base/view/BaseWebView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->removeAllViews()V

    .line 140
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->webView:Lcom/netease/epay/sdk/base/view/BaseWebView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->destroy()V

    .line 142
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 272
    invoke-super {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onStart()V

    .line 273
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->isInited:Z

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->webView:Lcom/netease/epay/sdk/base/view/BaseWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/hybrid/common/JSEventHelper;->onWebViewDidAppear(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 276
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->isInited:Z

    .line 277
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 281
    invoke-super {p0}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onStop()V

    .line 282
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->webView:Lcom/netease/epay/sdk/base/view/BaseWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/epay/sdk/base/hybrid/common/JSEventHelper;->onWebViewDidDisappear(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Lcom/netease/epay/sdk/base/ui/FullSdkFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    .line 83
    const-string v1, "WebView_isNeedTitle"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->needTitle:Z

    .line 84
    const-string v1, "WebView_postUrl"

    const-string v2, "https://epay.163.com"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->postUrl:Ljava/lang/String;

    .line 85
    const-string v1, "WebView_cookie"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->cookie:Ljava/lang/String;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/netease/epay/sdk/base/R$id;->atb:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->bar:Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    .line 88
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->bar:Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    sget v1, Lcom/netease/epay/sdk/base/R$id;->ivBack:I

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->viewBack:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->bar:Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    sget v1, Lcom/netease/epay/sdk/base/R$id;->ivClose:I

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->viewClose:Landroid/view/View;

    .line 90
    sget v0, Lcom/netease/epay/sdk/base/R$id;->webView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netease/epay/sdk/base/view/BaseWebView;

    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->webView:Lcom/netease/epay/sdk/base/view/BaseWebView;

    .line 91
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->webView:Lcom/netease/epay/sdk/base/view/BaseWebView;

    invoke-virtual {v0}, Lcom/netease/epay/sdk/base/view/BaseWebView;->setHyBridConfigs()V

    .line 92
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->webView:Lcom/netease/epay/sdk/base/view/BaseWebView;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->webViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/BaseWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 93
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->webView:Lcom/netease/epay/sdk/base/view/BaseWebView;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->webChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/BaseWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 94
    sget v0, Lcom/netease/epay/sdk/base/R$id;->tv_web_host:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->tvHostInfo:Landroid/widget/TextView;

    .line 95
    iget-boolean v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->needTitle:Z

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/netease/epay/sdk/base/R$id;->progressbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->progressBar:Landroid/widget/ProgressBar;

    .line 97
    invoke-direct {p0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->initProgressBar()V

    .line 98
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->viewClose:Landroid/view/View;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->viewBack:Landroid/view/View;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    :goto_0
    new-instance v0, Lcom/netease/epay/sdk/base/hybrid/Hybrid;

    invoke-direct {v0}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;-><init>()V

    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->hybrid:Lcom/netease/epay/sdk/base/hybrid/Hybrid;

    .line 104
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->cookie:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    sget-object v0, Lcom/netease/epay/sdk/base/core/BaseData;->cookie:Ljava/lang/String;

    iput-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->cookie:Ljava/lang/String;

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->webView:Lcom/netease/epay/sdk/base/view/BaseWebView;

    iget-object v1, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->postUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->cookie:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/netease/epay/sdk/base/view/BaseWebView;->loadUrlWithCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->bar:Lcom/netease/epay/sdk/base/view/ActivityTitleBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netease/epay/sdk/base/view/ActivityTitleBar;->setVisibility(I)V

    goto :goto_0
.end method
