.class public Lcom/tencent/midas/jsbridge/APX5WebView;
.super Ljava/lang/Object;
.source "APX5WebView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "APWebView"


# instance fields
.field private callback:Lcom/tencent/midas/jsbridge/IAPX5WebViewCallback;

.field private mChromeClient:Lcom/tencent/smtt/sdk/WebChromeClient;

.field private mContext:Landroid/app/Activity;

.field private mWebViewClient:Lcom/tencent/smtt/sdk/WebViewClient;

.field private mWebview:Lcom/tencent/smtt/sdk/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/midas/jsbridge/IAPX5WebViewCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p3, "cb"    # Lcom/tencent/midas/jsbridge/IAPX5WebViewCallback;

    .prologue
    const/4 v0, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/tencent/midas/jsbridge/APX5WebView;->mWebview:Lcom/tencent/smtt/sdk/WebView;

    .line 34
    iput-object v0, p0, Lcom/tencent/midas/jsbridge/APX5WebView;->mContext:Landroid/app/Activity;

    .line 35
    iput-object v0, p0, Lcom/tencent/midas/jsbridge/APX5WebView;->callback:Lcom/tencent/midas/jsbridge/IAPX5WebViewCallback;

    .line 36
    new-instance v0, Lcom/tencent/midas/jsbridge/APX5WebView$1;

    invoke-direct {v0, p0}, Lcom/tencent/midas/jsbridge/APX5WebView$1;-><init>(Lcom/tencent/midas/jsbridge/APX5WebView;)V

    iput-object v0, p0, Lcom/tencent/midas/jsbridge/APX5WebView;->mChromeClient:Lcom/tencent/smtt/sdk/WebChromeClient;

    .line 73
    new-instance v0, Lcom/tencent/midas/jsbridge/APX5WebView$2;

    invoke-direct {v0, p0}, Lcom/tencent/midas/jsbridge/APX5WebView$2;-><init>(Lcom/tencent/midas/jsbridge/APX5WebView;)V

    iput-object v0, p0, Lcom/tencent/midas/jsbridge/APX5WebView;->mWebViewClient:Lcom/tencent/smtt/sdk/WebViewClient;

    .line 138
    iput-object p1, p0, Lcom/tencent/midas/jsbridge/APX5WebView;->mContext:Landroid/app/Activity;

    .line 139
    iput-object p2, p0, Lcom/tencent/midas/jsbridge/APX5WebView;->mWebview:Lcom/tencent/smtt/sdk/WebView;

    .line 140
    iput-object p3, p0, Lcom/tencent/midas/jsbridge/APX5WebView;->callback:Lcom/tencent/midas/jsbridge/IAPX5WebViewCallback;

    .line 142
    invoke-direct {p0}, Lcom/tencent/midas/jsbridge/APX5WebView;->InitWebView()V

    .line 143
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

    .line 148
    iget-object v2, p0, Lcom/tencent/midas/jsbridge/APX5WebView;->mWebview:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v1

    .line 150
    .local v1, "webSetting":Lcom/tencent/smtt/sdk/WebSettings;
    invoke-virtual {v1, v4}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptEnabled(Z)V

    .line 153
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 154
    sget-object v2, Lcom/tencent/midas/api/APMidasPayAPI;->env:Ljava/lang/String;

    const-string/jumbo v3, "test"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    :cond_0
    invoke-virtual {v1, v4}, Lcom/tencent/smtt/sdk/WebSettings;->setDomStorageEnabled(Z)V

    .line 160
    iget-object v2, p0, Lcom/tencent/midas/jsbridge/APX5WebView;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "cache"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "appCacheDir":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1, v4}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccess(Z)V

    .line 163
    invoke-virtual {v1, v4}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCacheEnabled(Z)V

    .line 164
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/WebSettings;->setCacheMode(I)V

    .line 166
    iget-object v2, p0, Lcom/tencent/midas/jsbridge/APX5WebView;->mWebview:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v2, v5}, Lcom/tencent/smtt/sdk/WebView;->setScrollBarStyle(I)V

    .line 168
    iget-object v2, p0, Lcom/tencent/midas/jsbridge/APX5WebView;->mWebview:Lcom/tencent/smtt/sdk/WebView;

    iget-object v3, p0, Lcom/tencent/midas/jsbridge/APX5WebView;->mChromeClient:Lcom/tencent/smtt/sdk/WebChromeClient;

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/WebView;->setWebChromeClient(Lcom/tencent/smtt/sdk/WebChromeClient;)V

    .line 169
    iget-object v2, p0, Lcom/tencent/midas/jsbridge/APX5WebView;->mWebview:Lcom/tencent/smtt/sdk/WebView;

    iget-object v3, p0, Lcom/tencent/midas/jsbridge/APX5WebView;->mWebViewClient:Lcom/tencent/smtt/sdk/WebViewClient;

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/WebView;->setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V

    .line 171
    invoke-direct {p0}, Lcom/tencent/midas/jsbridge/APX5WebView;->removeInterface()V

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/midas/jsbridge/APX5WebView;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/midas/jsbridge/APX5WebView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APX5WebView;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/midas/jsbridge/APX5WebView;)Lcom/tencent/smtt/sdk/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/midas/jsbridge/APX5WebView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APX5WebView;->mWebview:Lcom/tencent/smtt/sdk/WebView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/midas/jsbridge/APX5WebView;)Lcom/tencent/midas/jsbridge/IAPX5WebViewCallback;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/midas/jsbridge/APX5WebView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APX5WebView;->callback:Lcom/tencent/midas/jsbridge/IAPX5WebViewCallback;

    return-object v0
.end method

.method private removeInterface()V
    .locals 7

    .prologue
    .line 177
    :try_start_0
    iget-object v2, p0, Lcom/tencent/midas/jsbridge/APX5WebView;->mWebview:Lcom/tencent/smtt/sdk/WebView;

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

    .line 178
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 179
    iget-object v2, p0, Lcom/tencent/midas/jsbridge/APX5WebView;->mWebview:Lcom/tencent/smtt/sdk/WebView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "searchBoxJavaBridge_"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v2, p0, Lcom/tencent/midas/jsbridge/APX5WebView;->mWebview:Lcom/tencent/smtt/sdk/WebView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "accessibility"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v2, p0, Lcom/tencent/midas/jsbridge/APX5WebView;->mWebview:Lcom/tencent/smtt/sdk/WebView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "accessibilityTraversal"

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "removeJavascriptInterface"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getWebView()Lcom/tencent/smtt/sdk/WebView;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APX5WebView;->mWebview:Lcom/tencent/smtt/sdk/WebView;

    return-object v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APX5WebView;->mWebview:Lcom/tencent/smtt/sdk/WebView;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    .line 194
    return-void
.end method
