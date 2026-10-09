.class Lcom/tencent/midas/jsbridge/APX5WebPage$1;
.super Ljava/lang/Object;
.source "APX5WebPage.java"

# interfaces
.implements Lcom/tencent/midas/jsbridge/IAPX5WebViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/midas/jsbridge/APX5WebPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/midas/jsbridge/APX5WebPage;


# direct methods
.method constructor <init>(Lcom/tencent/midas/jsbridge/APX5WebPage;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/midas/jsbridge/APX5WebPage;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/tencent/midas/jsbridge/APX5WebPage$1;->this$0:Lcom/tencent/midas/jsbridge/APX5WebPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public WebChromeClientJsAlert(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z
    .locals 1
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/tencent/smtt/export/external/interfaces/JsResult;

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public WebChromeClientJsPrompt(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;)Z
    .locals 1
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public WebViewClientPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APX5WebPage$1;->this$0:Lcom/tencent/midas/jsbridge/APX5WebPage;

    invoke-static {v0}, Lcom/tencent/midas/jsbridge/APX5WebPage;->access$000(Lcom/tencent/midas/jsbridge/APX5WebPage;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APX5WebPage$1;->this$0:Lcom/tencent/midas/jsbridge/APX5WebPage;

    iget-object v0, v0, Lcom/tencent/midas/jsbridge/APX5WebPage;->waitDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APX5WebPage$1;->this$0:Lcom/tencent/midas/jsbridge/APX5WebPage;

    iget-object v0, v0, Lcom/tencent/midas/jsbridge/APX5WebPage;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APX5WebPage$1;->this$0:Lcom/tencent/midas/jsbridge/APX5WebPage;

    iget-object v0, v0, Lcom/tencent/midas/jsbridge/APX5WebPage;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 55
    :cond_0
    return-void
.end method

.method public WebViewClientPageStarted(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APX5WebPage$1;->this$0:Lcom/tencent/midas/jsbridge/APX5WebPage;

    iget-object v0, v0, Lcom/tencent/midas/jsbridge/APX5WebPage;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 60
    return-void
.end method

.method public WebViewClientReceivedError(Lcom/tencent/smtt/sdk/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APX5WebPage$1;->this$0:Lcom/tencent/midas/jsbridge/APX5WebPage;

    invoke-static {v0}, Lcom/tencent/midas/jsbridge/APX5WebPage;->access$000(Lcom/tencent/midas/jsbridge/APX5WebPage;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APX5WebPage$1;->this$0:Lcom/tencent/midas/jsbridge/APX5WebPage;

    iget-object v0, v0, Lcom/tencent/midas/jsbridge/APX5WebPage;->waitDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APX5WebPage$1;->this$0:Lcom/tencent/midas/jsbridge/APX5WebPage;

    iget-object v0, v0, Lcom/tencent/midas/jsbridge/APX5WebPage;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APX5WebPage$1;->this$0:Lcom/tencent/midas/jsbridge/APX5WebPage;

    iget-object v0, v0, Lcom/tencent/midas/jsbridge/APX5WebPage;->waitDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 69
    :cond_0
    return-void
.end method
