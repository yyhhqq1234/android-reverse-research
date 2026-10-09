.class Lcom/tencent/midas/jsbridge/APSystemWebPage$1;
.super Ljava/lang/Object;
.source "APSystemWebPage.java"

# interfaces
.implements Lcom/tencent/midas/jsbridge/IAPWebViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/midas/jsbridge/APSystemWebPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/midas/jsbridge/APSystemWebPage;


# direct methods
.method constructor <init>(Lcom/tencent/midas/jsbridge/APSystemWebPage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/midas/jsbridge/APSystemWebPage;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/tencent/midas/jsbridge/APSystemWebPage$1;->this$0:Lcom/tencent/midas/jsbridge/APSystemWebPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public WebChromeClientJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 39
    const/4 v0, 0x1

    return v0
.end method

.method public WebChromeClientJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public WebViewClientPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APSystemWebPage$1;->this$0:Lcom/tencent/midas/jsbridge/APSystemWebPage;

    invoke-static {v0}, Lcom/tencent/midas/jsbridge/APSystemWebPage;->access$000(Lcom/tencent/midas/jsbridge/APSystemWebPage;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APSystemWebPage$1;->this$0:Lcom/tencent/midas/jsbridge/APSystemWebPage;

    invoke-static {v0}, Lcom/tencent/midas/jsbridge/APSystemWebPage;->access$100(Lcom/tencent/midas/jsbridge/APSystemWebPage;)Lcom/tencent/midas/comm/APProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APSystemWebPage$1;->this$0:Lcom/tencent/midas/jsbridge/APSystemWebPage;

    invoke-static {v0}, Lcom/tencent/midas/jsbridge/APSystemWebPage;->access$100(Lcom/tencent/midas/jsbridge/APSystemWebPage;)Lcom/tencent/midas/comm/APProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/midas/comm/APProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APSystemWebPage$1;->this$0:Lcom/tencent/midas/jsbridge/APSystemWebPage;

    invoke-static {v0}, Lcom/tencent/midas/jsbridge/APSystemWebPage;->access$100(Lcom/tencent/midas/jsbridge/APSystemWebPage;)Lcom/tencent/midas/comm/APProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/midas/comm/APProgressDialog;->dismiss()V

    .line 59
    :cond_0
    return-void
.end method

.method public WebViewClientPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APSystemWebPage$1;->this$0:Lcom/tencent/midas/jsbridge/APSystemWebPage;

    invoke-static {v0}, Lcom/tencent/midas/jsbridge/APSystemWebPage;->access$100(Lcom/tencent/midas/jsbridge/APSystemWebPage;)Lcom/tencent/midas/comm/APProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/midas/comm/APProgressDialog;->show()V

    .line 64
    return-void
.end method

.method public WebViewClientReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APSystemWebPage$1;->this$0:Lcom/tencent/midas/jsbridge/APSystemWebPage;

    invoke-static {v0}, Lcom/tencent/midas/jsbridge/APSystemWebPage;->access$000(Lcom/tencent/midas/jsbridge/APSystemWebPage;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APSystemWebPage$1;->this$0:Lcom/tencent/midas/jsbridge/APSystemWebPage;

    invoke-static {v0}, Lcom/tencent/midas/jsbridge/APSystemWebPage;->access$100(Lcom/tencent/midas/jsbridge/APSystemWebPage;)Lcom/tencent/midas/comm/APProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APSystemWebPage$1;->this$0:Lcom/tencent/midas/jsbridge/APSystemWebPage;

    invoke-static {v0}, Lcom/tencent/midas/jsbridge/APSystemWebPage;->access$100(Lcom/tencent/midas/jsbridge/APSystemWebPage;)Lcom/tencent/midas/comm/APProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/midas/comm/APProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APSystemWebPage$1;->this$0:Lcom/tencent/midas/jsbridge/APSystemWebPage;

    invoke-static {v0}, Lcom/tencent/midas/jsbridge/APSystemWebPage;->access$100(Lcom/tencent/midas/jsbridge/APSystemWebPage;)Lcom/tencent/midas/comm/APProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/midas/comm/APProgressDialog;->dismiss()V

    .line 73
    :cond_0
    return-void
.end method
