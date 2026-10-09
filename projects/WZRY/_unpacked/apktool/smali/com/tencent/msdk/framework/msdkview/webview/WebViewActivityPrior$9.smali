.class Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$9;
.super Lcom/tencent/smtt/sdk/WebChromeClient;
.source "WebViewActivityPrior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .prologue
    .line 742
    iput-object p1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$9;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z
    .locals 1
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "jsResult"    # Lcom/tencent/smtt/export/external/interfaces/JsResult;

    .prologue
    .line 769
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$9;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$2500(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)I

    move-result v0

    if-nez v0, :cond_0

    .line 770
    invoke-interface {p4}, Lcom/tencent/smtt/export/external/interfaces/JsResult;->cancel()V

    .line 771
    const/4 v0, 0x1

    .line 773
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebChromeClient;->onJsAlert(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)Z

    move-result v0

    goto :goto_0
.end method

.method public onJsPrompt(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;)Z
    .locals 2
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;

    .prologue
    .line 754
    invoke-static {p3}, Lcom/tencent/msdk/webview/JsBridge;->canResolved(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 755
    invoke-static {p3}, Lcom/tencent/msdk/webview/JsBridge;->parseMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 756
    .local v0, "returnjs":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 757
    invoke-interface {p5}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm()V

    .line 761
    :goto_0
    const/4 v1, 0x1

    .line 763
    .end local v0    # "returnjs":Ljava/lang/String;
    :goto_1
    return v1

    .line 759
    .restart local v0    # "returnjs":Ljava/lang/String;
    :cond_0
    invoke-interface {p5, v0}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto :goto_0

    .line 763
    .end local v0    # "returnjs":Ljava/lang/String;
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/tencent/smtt/sdk/WebChromeClient;->onJsPrompt(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;)Z

    move-result v1

    goto :goto_1
.end method

.method public onReceivedTitle(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 746
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onReceivedTitle(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$9;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v0, p2}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$2402(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;Ljava/lang/String;)Ljava/lang/String;

    .line 748
    return-void
.end method

.method public onShowFileChooser(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/ValueCallback;Lcom/tencent/smtt/sdk/WebChromeClient$FileChooserParams;)Z
    .locals 6
    .param p1, "webView"    # Lcom/tencent/smtt/sdk/WebView;
    .param p3, "fileChooserParams"    # Lcom/tencent/smtt/sdk/WebChromeClient$FileChooserParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/smtt/sdk/WebView;",
            "Lcom/tencent/smtt/sdk/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/tencent/smtt/sdk/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "filePathCallback":Lcom/tencent/smtt/sdk/ValueCallback;, "Lcom/tencent/smtt/sdk/ValueCallback<[Landroid/net/Uri;>;"
    const/4 v5, 0x1

    .line 798
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$9;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v2}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$2700(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Lcom/tencent/smtt/sdk/ValueCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 799
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$9;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v2}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$2700(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Lcom/tencent/smtt/sdk/ValueCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 801
    :cond_0
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$9;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v2, p2}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$2702(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;Lcom/tencent/smtt/sdk/ValueCallback;)Lcom/tencent/smtt/sdk/ValueCallback;

    .line 802
    const-string v2, "onShowFileChooser"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 803
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 804
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 805
    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 807
    :try_start_0
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$9;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v2}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$2300(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$9;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .line 808
    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$2300(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/tencent/msdk/webview/WebViewResID;->str_upload_file_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 807
    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    :goto_0
    return v5

    .line 809
    :catch_0
    move-exception v0

    .line 810
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public openFileChooser(Lcom/tencent/smtt/sdk/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p2, "acceptType"    # Ljava/lang/String;
    .param p3, "captureType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/smtt/sdk/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 779
    .local p1, "uploadFile":Lcom/tencent/smtt/sdk/ValueCallback;, "Lcom/tencent/smtt/sdk/ValueCallback<Landroid/net/Uri;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openFileChooser "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 780
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$9;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v2}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$2600(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Lcom/tencent/smtt/sdk/ValueCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 781
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$9;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v2}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$2600(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Lcom/tencent/smtt/sdk/ValueCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 783
    :cond_0
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$9;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v2, p1}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$2602(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;Lcom/tencent/smtt/sdk/ValueCallback;)Lcom/tencent/smtt/sdk/ValueCallback;

    .line 784
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 785
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 786
    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 788
    :try_start_0
    iget-object v2, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$9;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v2}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$2300(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$9;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    .line 789
    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$2300(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/tencent/msdk/webview/WebViewResID;->str_upload_file_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 788
    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 793
    :goto_0
    return-void

    .line 790
    :catch_0
    move-exception v0

    .line 791
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
