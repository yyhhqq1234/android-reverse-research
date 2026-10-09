.class Lcom/smoba/webview/WebViewEx$2;
.super Lcom/tencent/smtt/sdk/WebChromeClient;
.source "WebViewEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smoba/webview/WebViewEx;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smoba/webview/WebViewEx;


# direct methods
.method constructor <init>(Lcom/smoba/webview/WebViewEx;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/smoba/webview/WebViewEx$2;->this$0:Lcom/smoba/webview/WebViewEx;

    .line 220
    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsPrompt(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;)Z
    .locals 1
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;

    .prologue
    .line 235
    invoke-interface {p5}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm()V

    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Lcom/tencent/smtt/sdk/WebView;I)V
    .locals 0
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "progress"    # I

    .prologue
    .line 251
    return-void
.end method

.method public onReceivedTitle(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 224
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onReceivedTitle(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    .line 229
    return-void
.end method
