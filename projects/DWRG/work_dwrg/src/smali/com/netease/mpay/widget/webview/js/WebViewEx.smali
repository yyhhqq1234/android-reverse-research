.class public Lcom/netease/mpay/widget/webview/js/WebViewEx;
.super Landroid/webkit/WebView;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Ljava/util/ArrayList;

.field private c:Lcom/netease/mpay/widget/webview/js/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->a()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-class v1, Lcom/dodola/rocoo/Hack;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    invoke-direct {p0}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->a()V

    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/widget/webview/js/WebViewEx;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/netease/mpay/widget/webview/js/WebViewEx;->b:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    const-string v0, "searchBoxJavaBridge_"

    invoke-virtual {p0, v0}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/netease/mpay/widget/webview/js/WebViewEx;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/WebViewEx;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/netease/mpay/widget/webview/js/WebViewEx;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/WebViewEx;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/WebViewEx;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public regist(Landroid/app/Activity;Lcom/netease/mpay/widget/webview/js/Config;Lcom/netease/mpay/widget/webview/js/WebViewExListener;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/mpay/widget/webview/js/WebViewEx;->a:Ljava/lang/ref/WeakReference;

    :cond_0
    invoke-virtual {p0}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {p0}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {p0}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    invoke-virtual {p0}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    if-nez p3, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/netease/mpay/widget/webview/js/j;

    new-instance v4, Lcom/netease/mpay/widget/webview/js/i;

    invoke-direct {v4, p0, p3}, Lcom/netease/mpay/widget/webview/js/i;-><init>(Lcom/netease/mpay/widget/webview/js/WebViewEx;Lcom/netease/mpay/widget/webview/js/WebViewExListener;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netease/mpay/widget/webview/js/j;-><init>(Lcom/netease/mpay/widget/webview/js/WebViewEx;Landroid/app/Activity;Lcom/netease/mpay/widget/webview/js/Config;Lcom/netease/mpay/widget/webview/js/e;Lcom/netease/mpay/widget/webview/js/WebViewExListener;)V

    iput-object v0, p0, Lcom/netease/mpay/widget/webview/js/WebViewEx;->c:Lcom/netease/mpay/widget/webview/js/c;

    iget-object v0, p2, Lcom/netease/mpay/widget/webview/js/Config;->uploadFile:Lcom/netease/mpay/widget/webview/js/b;

    iget-boolean v0, v0, Lcom/netease/mpay/widget/webview/js/b;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/WebViewEx;->c:Lcom/netease/mpay/widget/webview/js/c;

    iget-object v1, p2, Lcom/netease/mpay/widget/webview/js/Config;->uploadFile:Lcom/netease/mpay/widget/webview/js/b;

    iget-object v1, v1, Lcom/netease/mpay/widget/webview/js/b;->b:Ljava/lang/Integer;

    invoke-virtual {v0, p1, v1}, Lcom/netease/mpay/widget/webview/js/c;->enableUploadFiles(Landroid/app/Activity;Ljava/lang/Integer;)V

    :cond_3
    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/WebViewEx;->c:Lcom/netease/mpay/widget/webview/js/c;

    invoke-virtual {p0, v0}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    new-instance v0, Lcom/netease/mpay/widget/webview/js/k;

    invoke-direct {v0, p0, p3}, Lcom/netease/mpay/widget/webview/js/k;-><init>(Lcom/netease/mpay/widget/webview/js/WebViewEx;Lcom/netease/mpay/widget/webview/js/WebViewExListener;)V

    invoke-virtual {p0, v0}, Lcom/netease/mpay/widget/webview/js/WebViewEx;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0
.end method

.method public uploadFiles(ILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/WebViewEx;->c:Lcom/netease/mpay/widget/webview/js/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/WebViewEx;->c:Lcom/netease/mpay/widget/webview/js/c;

    invoke-virtual {v0, p1, p2}, Lcom/netease/mpay/widget/webview/js/c;->uploadFiles(ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method
