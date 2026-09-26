.class public Lcom/netease/mpay/widget/webview/js/c;
.super Lcom/netease/mpay/widget/webview/js/AdvancedWebChromeClient;


# instance fields
.field private c:Landroid/app/Activity;

.field private d:Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;

.field private e:Lcom/netease/mpay/widget/webview/js/d;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Lcom/netease/mpay/widget/webview/js/Config;Lcom/netease/mpay/widget/webview/js/e;)V
    .locals 2

    invoke-direct {p0}, Lcom/netease/mpay/widget/webview/js/AdvancedWebChromeClient;-><init>()V

    new-instance v0, Lcom/netease/mpay/widget/webview/js/d;

    invoke-direct {v0, p0}, Lcom/netease/mpay/widget/webview/js/d;-><init>(Lcom/netease/mpay/widget/webview/js/c;)V

    iput-object v0, p0, Lcom/netease/mpay/widget/webview/js/c;->e:Lcom/netease/mpay/widget/webview/js/d;

    iput-object p1, p0, Lcom/netease/mpay/widget/webview/js/c;->c:Landroid/app/Activity;

    new-instance v0, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;

    invoke-direct {v0, p1, p2, p3}, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;-><init>(Landroid/app/Activity;Lcom/netease/mpay/widget/webview/js/Config;Lcom/netease/mpay/widget/webview/js/e;)V

    iput-object v0, p0, Lcom/netease/mpay/widget/webview/js/c;->d:Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;

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

.method protected static a(Landroid/app/Activity;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "netease_mpay_webview_js/netease_mpay__bridge.js"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v4, "version_code"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "version_code"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "1.3.0"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1

    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/c;->d:Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;

    invoke-virtual {v0, p3}, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->dispatch(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 6

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/c;->e:Lcom/netease/mpay/widget/webview/js/d;

    invoke-virtual {v0, p1, p2}, Lcom/netease/mpay/widget/webview/js/d;->a(Landroid/webkit/WebView;I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/netease/mpay/widget/webview/js/c;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "netease_mpay_webview_js/netease_mpay__bridge.js"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v4, "sdk_config_template"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "sdk_config_template"

    iget-object v5, p0, Lcom/netease/mpay/widget/webview/js/c;->d:Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;

    invoke-virtual {v5}, Lcom/netease/mpay/widget/webview/js/InjectedBridgeApi;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/netease/mpay/widget/webview/js/g;->a(Ljava/lang/Throwable;)V

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/netease/mpay/widget/webview/js/AdvancedWebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
