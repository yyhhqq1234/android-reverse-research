.class Lcom/netease/epay/sdk/pay/ui/n$1;
.super Landroid/webkit/WebChromeClient;
.source "PayResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/epay/sdk/pay/ui/n;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/epay/sdk/pay/ui/n;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/pay/ui/n;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/netease/epay/sdk/pay/ui/n$1;->a:Lcom/netease/epay/sdk/pay/ui/n;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/n$1;->a:Lcom/netease/epay/sdk/pay/ui/n;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/n;->a(Lcom/netease/epay/sdk/pay/ui/n;)Lcom/netease/epay/sdk/base/hybrid/Hybrid;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/n$1;->a:Lcom/netease/epay/sdk/pay/ui/n;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/n;->a(Lcom/netease/epay/sdk/pay/ui/n;)Lcom/netease/epay/sdk/base/hybrid/Hybrid;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->handlePrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    const/4 v0, 0x1

    .line 194
    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 199
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 200
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/n$1;->a:Lcom/netease/epay/sdk/pay/ui/n;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/n;->a(Lcom/netease/epay/sdk/pay/ui/n;)Lcom/netease/epay/sdk/base/hybrid/Hybrid;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/netease/epay/sdk/pay/ui/n$1;->a:Lcom/netease/epay/sdk/pay/ui/n;

    invoke-static {v0}, Lcom/netease/epay/sdk/pay/ui/n;->a(Lcom/netease/epay/sdk/pay/ui/n;)Lcom/netease/epay/sdk/base/hybrid/Hybrid;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->initJSBridge(Landroid/webkit/WebView;I)V

    .line 203
    :cond_0
    return-void
.end method
