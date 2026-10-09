.class public Lcom/tencent/midas/jsbridge/APWebView;
.super Ljava/lang/Object;
.source "APWebView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "APWebView"


# instance fields
.field private callback:Lcom/tencent/midas/jsbridge/IAPWebViewCallback;

.field private mChromeClient:Landroid/webkit/WebChromeClient;

.field private mContext:Landroid/app/Activity;

.field private mWebViewClient:Landroid/webkit/WebViewClient;

.field private mWebview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;Lcom/tencent/midas/jsbridge/IAPWebViewCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/webkit/WebView;
    .param p3, "cb"    # Lcom/tencent/midas/jsbridge/IAPWebViewCallback;

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/tencent/midas/jsbridge/APWebView;->mWebview:Landroid/webkit/WebView;

    .line 30
    iput-object v0, p0, Lcom/tencent/midas/jsbridge/APWebView;->mContext:Landroid/app/Activity;

    .line 31
    iput-object v0, p0, Lcom/tencent/midas/jsbridge/APWebView;->callback:Lcom/tencent/midas/jsbridge/IAPWebViewCallback;

    .line 32
    new-instance v0, Lcom/tencent/midas/jsbridge/APWebView$1;

    invoke-direct {v0, p0}, Lcom/tencent/midas/jsbridge/APWebView$1;-><init>(Lcom/tencent/midas/jsbridge/APWebView;)V

    iput-object v0, p0, Lcom/tencent/midas/jsbridge/APWebView;->mChromeClient:Landroid/webkit/WebChromeClient;

    .line 69
    new-instance v0, Lcom/tencent/midas/jsbridge/APWebView$2;

    invoke-direct {v0, p0}, Lcom/tencent/midas/jsbridge/APWebView$2;-><init>(Lcom/tencent/midas/jsbridge/APWebView;)V

    iput-object v0, p0, Lcom/tencent/midas/jsbridge/APWebView;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 134
    iput-object p1, p0, Lcom/tencent/midas/jsbridge/APWebView;->mContext:Landroid/app/Activity;

    .line 135
    iput-object p2, p0, Lcom/tencent/midas/jsbridge/APWebView;->mWebview:Landroid/webkit/WebView;

    .line 136
    iput-object p3, p0, Lcom/tencent/midas/jsbridge/APWebView;->callback:Lcom/tencent/midas/jsbridge/IAPWebViewCallback;

    .line 138
    invoke-direct {p0}, Lcom/tencent/midas/jsbridge/APWebView;->InitWebView()V

    .line 139
    return-void
.end method

.method private InitWebView()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 144
    iget-object v2, p0, Lcom/tencent/midas/jsbridge/APWebView;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 146
    .local v1, "webSetting":Landroid/webkit/WebSettings;
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 149
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 150
    sget-object v2, Lcom/tencent/midas/api/APMidasPayAPI;->env:Ljava/lang/String;

    const-string/jumbo v3, "test"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    :cond_0
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 156
    iget-object v2, p0, Lcom/tencent/midas/jsbridge/APWebView;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "cache"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "appCacheDir":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 159
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 160
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 162
    iget-object v2, p0, Lcom/tencent/midas/jsbridge/APWebView;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2, v5}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 164
    iget-object v2, p0, Lcom/tencent/midas/jsbridge/APWebView;->mWebview:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/tencent/midas/jsbridge/APWebView;->mChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 165
    iget-object v2, p0, Lcom/tencent/midas/jsbridge/APWebView;->mWebview:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/tencent/midas/jsbridge/APWebView;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 167
    invoke-direct {p0}, Lcom/tencent/midas/jsbridge/APWebView;->removeInterface()V

    .line 168
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/midas/jsbridge/APWebView;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/midas/jsbridge/APWebView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APWebView;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/midas/jsbridge/APWebView;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/midas/jsbridge/APWebView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APWebView;->mWebview:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/midas/jsbridge/APWebView;)Lcom/tencent/midas/jsbridge/IAPWebViewCallback;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/midas/jsbridge/APWebView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APWebView;->callback:Lcom/tencent/midas/jsbridge/IAPWebViewCallback;

    return-object v0
.end method

.method private removeInterface()V
    .locals 7

    .prologue
    .line 173
    :try_start_0
    iget-object v2, p0, Lcom/tencent/midas/jsbridge/APWebView;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "removeJavascriptInterface"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 174
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 175
    iget-object v2, p0, Lcom/tencent/midas/jsbridge/APWebView;->mWebview:Landroid/webkit/WebView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "searchBoxJavaBridge_"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v2, p0, Lcom/tencent/midas/jsbridge/APWebView;->mWebview:Landroid/webkit/WebView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "accessibility"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v2, p0, Lcom/tencent/midas/jsbridge/APWebView;->mWebview:Landroid/webkit/WebView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "accessibilityTraversal"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "removeJavascriptInterface"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APWebView;->mWebview:Landroid/webkit/WebView;

    return-object v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APWebView;->mWebview:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 190
    return-void
.end method
