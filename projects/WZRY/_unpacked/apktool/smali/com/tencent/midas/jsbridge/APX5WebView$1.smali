.class Lcom/tencent/midas/jsbridge/APX5WebView$1;
.super Lcom/tencent/smtt/sdk/WebChromeClient;
.source "APX5WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/midas/jsbridge/APX5WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/midas/jsbridge/APX5WebView;


# direct methods
.method constructor <init>(Lcom/tencent/midas/jsbridge/APX5WebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/midas/jsbridge/APX5WebView;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/tencent/midas/jsbridge/APX5WebView$1;->this$0:Lcom/tencent/midas/jsbridge/APX5WebView;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z
    .locals 4
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/tencent/smtt/export/external/interfaces/JsResult;

    .prologue
    const/4 v0, 0x1

    .line 40
    const-string v1, "inner onJsAlert message"

    invoke-static {v1, p3}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v1, "APWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "APWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/tencent/midas/jsbridge/APX5WebView$1;->this$0:Lcom/tencent/midas/jsbridge/APX5WebView;

    invoke-static {v1}, Lcom/tencent/midas/jsbridge/APX5WebView;->access$000(Lcom/tencent/midas/jsbridge/APX5WebView;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p3}, Lcom/tencent/midas/download/APMidasPluginDownloadUtils;->handlePureH5UpdateJsAlertLogic(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const-string v1, "APWebView"

    const-string v2, "onJsAlert is pure h5 update! Cancel alert!"

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-interface {p4}, Lcom/tencent/smtt/export/external/interfaces/JsResult;->cancel()V

    .line 63
    :goto_0
    return v0

    .line 53
    :cond_0
    const-string v1, "APWebView"

    const-string v2, "onJsAlert not pure h5 update!"

    invoke-static {v1, v2}, Lcom/tencent/midas/comm/APLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/tencent/midas/jsbridge/APX5WebView$1;->this$0:Lcom/tencent/midas/jsbridge/APX5WebView;

    invoke-static {v1}, Lcom/tencent/midas/jsbridge/APX5WebView;->access$000(Lcom/tencent/midas/jsbridge/APX5WebView;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/midas/jsbridge/APX5WebView$1;->this$0:Lcom/tencent/midas/jsbridge/APX5WebView;

    invoke-static {v2}, Lcom/tencent/midas/jsbridge/APX5WebView;->access$100(Lcom/tencent/midas/jsbridge/APX5WebView;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v2

    invoke-static {v1, v2, p2, p3, p4}, Lcom/tencent/midas/api/APMidasPayAPI;->h5PayHookX5(Landroid/app/Activity;Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)I

    move-result v1

    if-nez v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/tencent/midas/jsbridge/APX5WebView$1;->this$0:Lcom/tencent/midas/jsbridge/APX5WebView;

    invoke-static {v1}, Lcom/tencent/midas/jsbridge/APX5WebView;->access$200(Lcom/tencent/midas/jsbridge/APX5WebView;)Lcom/tencent/midas/jsbridge/IAPX5WebViewCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/tencent/midas/jsbridge/IAPX5WebViewCallback;->WebChromeClientJsAlert(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z

    .line 59
    invoke-interface {p4}, Lcom/tencent/smtt/export/external/interfaces/JsResult;->cancel()V

    goto :goto_0

    .line 63
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebChromeClient;->onJsAlert(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onJsPrompt(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;)Z
    .locals 6
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tencent/midas/jsbridge/APX5WebView$1;->this$0:Lcom/tencent/midas/jsbridge/APX5WebView;

    invoke-static {v0}, Lcom/tencent/midas/jsbridge/APX5WebView;->access$200(Lcom/tencent/midas/jsbridge/APX5WebView;)Lcom/tencent/midas/jsbridge/IAPX5WebViewCallback;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/tencent/midas/jsbridge/IAPX5WebViewCallback;->WebChromeClientJsPrompt(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;)Z

    move-result v0

    return v0
.end method
