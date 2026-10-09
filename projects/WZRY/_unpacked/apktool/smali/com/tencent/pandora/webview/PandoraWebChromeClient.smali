.class public Lcom/tencent/pandora/webview/PandoraWebChromeClient;
.super Lcom/tencent/smtt/sdk/WebChromeClient;
.source "PandoraWebChromeClient.java"


# static fields
.field public static final INITIAL_INJECT_STRING:Ljava/lang/String; = "javascript:(function(w) {w.pandora = {\'info\':%s,\'sendMessage\':function(m) {prompt(JSON.stringify(m));},\'onMessage\':null};})(window);"

.field public static final ON_FINISH_INJECT_STRING:Ljava/lang/String; = "javascript:(function(w){if(typeof(PandoraInitialized)===\'function\'){PandoraInitialized();}})(window)"

.field public static final ON_MESSAGE_INJECT_STRING:Ljava/lang/String; = "javascript:(function(w){if(w.pandora.onMessage){w.pandora.onMessage(JSON.parse(\'%s\'));}})(window);"


# instance fields
.field initialInfo:Ljava/lang/String;

.field jsLoaded:Z

.field listener:Lcom/tencent/pandora/webview/WebViewEventListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebChromeClient;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/pandora/webview/PandoraWebChromeClient;->jsLoaded:Z

    .line 67
    const-string v0, "\"\""

    iput-object v0, p0, Lcom/tencent/pandora/webview/PandoraWebChromeClient;->initialInfo:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/tencent/pandora/webview/WebViewEventListener;)V
    .locals 3
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/tencent/pandora/webview/WebViewEventListener;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebChromeClient;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/pandora/webview/PandoraWebChromeClient;->jsLoaded:Z

    .line 67
    const-string v0, "\"\""

    iput-object v0, p0, Lcom/tencent/pandora/webview/PandoraWebChromeClient;->initialInfo:Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/tencent/pandora/webview/PandoraWebChromeClient;->initialInfo:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/tencent/pandora/webview/PandoraWebChromeClient;->listener:Lcom/tencent/pandora/webview/WebViewEventListener;

    .line 73
    const-string v0, "Pandora WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Initialize info(1)  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/pandora/webview/PandoraWebChromeClient;->initialInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v0, "Pandora WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Initialize info(2) "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method private getInitialInjectString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 109
    const-string v0, "javascript:(function(w) {w.pandora = {\'info\':%s,\'sendMessage\':function(m) {prompt(JSON.stringify(m));},\'onMessage\':null};})(window);"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getOnMessageString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 113
    const-string v0, "javascript:(function(w){if(w.pandora.onMessage){w.pandora.onMessage(JSON.parse(\'%s\'));}})(window);"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static writeMessage(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .locals 3
    .param p0, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 117
    const-string v0, "Pandora WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "message: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    if-eqz p0, :cond_0

    .line 119
    invoke-static {p1}, Lcom/tencent/pandora/webview/PandoraWebChromeClient;->getOnMessageString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void
.end method


# virtual methods
.method public onJsPrompt(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;)Z
    .locals 3
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/tencent/pandora/webview/PandoraWebChromeClient;->listener:Lcom/tencent/pandora/webview/WebViewEventListener;

    if-eqz v0, :cond_0

    .line 95
    const-string v0, "Pandora WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "On JS Prompt "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/tencent/pandora/webview/PandoraWebChromeClient;->listener:Lcom/tencent/pandora/webview/WebViewEventListener;

    invoke-interface {v0, p3}, Lcom/tencent/pandora/webview/WebViewEventListener;->onWebViewMessage(Ljava/lang/String;)V

    .line 100
    :goto_0
    const-string/jumbo v0, "{}"

    invoke-interface {p5, v0}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 101
    const/4 v0, 0x1

    return v0

    .line 98
    :cond_0
    const-string v0, "Pandora WebView"

    const-string v1, "Listener is null, can\'t send message"

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onProgressChanged(Lcom/tencent/smtt/sdk/WebView;I)V
    .locals 3
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 81
    const/16 v0, 0x19

    if-gt p2, v0, :cond_1

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/pandora/webview/PandoraWebChromeClient;->jsLoaded:Z

    .line 88
    :cond_0
    :goto_0
    const-string v0, "Pandora WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "On Progress Changed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onProgressChanged(Lcom/tencent/smtt/sdk/WebView;I)V

    .line 90
    return-void

    .line 83
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/pandora/webview/PandoraWebChromeClient;->jsLoaded:Z

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/tencent/pandora/webview/PandoraWebChromeClient;->initialInfo:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/tencent/pandora/webview/PandoraWebChromeClient;->getInitialInjectString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    .line 85
    const-string v0, "Pandora WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pandora Injected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/pandora/webview/PandoraWebChromeClient;->initialInfo:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/tencent/pandora/webview/PandoraWebChromeClient;->getInitialInjectString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/pandora/webview/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/pandora/webview/PandoraWebChromeClient;->jsLoaded:Z

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/pandora/webview/PandoraWebChromeClient;->jsLoaded:Z

    .line 106
    return-void
.end method

.method public setInitialInfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "initialInfo"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/tencent/pandora/webview/PandoraWebChromeClient;->initialInfo:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setListener(Lcom/tencent/pandora/webview/WebViewEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tencent/pandora/webview/WebViewEventListener;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/tencent/pandora/webview/PandoraWebChromeClient;->listener:Lcom/tencent/pandora/webview/WebViewEventListener;

    .line 65
    return-void
.end method
