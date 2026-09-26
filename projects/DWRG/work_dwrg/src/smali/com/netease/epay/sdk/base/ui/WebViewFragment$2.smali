.class Lcom/netease/epay/sdk/base/ui/WebViewFragment$2;
.super Landroid/webkit/WebChromeClient;
.source "WebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/epay/sdk/base/ui/WebViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;


# direct methods
.method constructor <init>(Lcom/netease/epay/sdk/base/ui/WebViewFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$2;->this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;

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
    .line 215
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$2;->this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->access$500(Lcom/netease/epay/sdk/base/ui/WebViewFragment;)Lcom/netease/epay/sdk/base/hybrid/Hybrid;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$2;->this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->access$500(Lcom/netease/epay/sdk/base/ui/WebViewFragment;)Lcom/netease/epay/sdk/base/hybrid/Hybrid;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->handlePrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const/4 v0, 0x1

    .line 218
    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$2;->this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->access$000(Lcom/netease/epay/sdk/base/ui/WebViewFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    const/16 v0, 0x64

    if-ge p2, v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$2;->this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->access$000(Lcom/netease/epay/sdk/base/ui/WebViewFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 201
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$2;->this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->access$500(Lcom/netease/epay/sdk/base/ui/WebViewFragment;)Lcom/netease/epay/sdk/base/hybrid/Hybrid;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$2;->this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->access$500(Lcom/netease/epay/sdk/base/ui/WebViewFragment;)Lcom/netease/epay/sdk/base/hybrid/Hybrid;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/netease/epay/sdk/base/hybrid/Hybrid;->initJSBridge(Landroid/webkit/WebView;I)V

    .line 204
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 205
    return-void

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$2;->this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    invoke-static {v0}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->access$000(Lcom/netease/epay/sdk/base/ui/WebViewFragment;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 209
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/netease/epay/sdk/base/ui/WebViewFragment$2;->this$0:Lcom/netease/epay/sdk/base/ui/WebViewFragment;

    invoke-static {v0, p2}, Lcom/netease/epay/sdk/base/ui/WebViewFragment;->access$300(Lcom/netease/epay/sdk/base/ui/WebViewFragment;Ljava/lang/String;)V

    .line 211
    return-void
.end method
