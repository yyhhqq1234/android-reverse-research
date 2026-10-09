.class Lcom/tencent/msdk/webview/WebViewActivity$3;
.super Lcom/tencent/smtt/sdk/WebChromeClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/webview/WebViewActivity;->initWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/webview/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/webview/WebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/webview/WebViewActivity;

    .prologue
    .line 870
    iput-object p1, p0, Lcom/tencent/msdk/webview/WebViewActivity$3;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

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
    .line 898
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity$3;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/tencent/msdk/webview/WebViewActivity;->access$400(Lcom/tencent/msdk/webview/WebViewActivity;Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/smtt/export/external/interfaces/JsResult;)I

    move-result v0

    if-nez v0, :cond_0

    .line 899
    invoke-interface {p4}, Lcom/tencent/smtt/export/external/interfaces/JsResult;->cancel()V

    .line 900
    const/4 v0, 0x1

    .line 902
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
    .line 883
    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity$3;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v1, p3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$200(Lcom/tencent/msdk/webview/WebViewActivity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 884
    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity$3;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v1, p3}, Lcom/tencent/msdk/webview/WebViewActivity;->access$300(Lcom/tencent/msdk/webview/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 885
    .local v0, "jsResult":Ljava/lang/String;
    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 886
    invoke-interface {p5}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm()V

    .line 890
    :goto_0
    const/4 v1, 0x1

    .line 892
    .end local v0    # "jsResult":Ljava/lang/String;
    :goto_1
    return v1

    .line 888
    .restart local v0    # "jsResult":Ljava/lang/String;
    :cond_0
    invoke-interface {p5, v0}, Lcom/tencent/smtt/export/external/interfaces/JsPromptResult;->confirm(Ljava/lang/String;)V

    goto :goto_0

    .line 892
    .end local v0    # "jsResult":Ljava/lang/String;
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
    .line 874
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebChromeClient;->onReceivedTitle(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    .line 875
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity$3;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v0, p2}, Lcom/tencent/msdk/webview/WebViewActivity;->access$102(Lcom/tencent/msdk/webview/WebViewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 876
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

    .line 927
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity$3;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v2}, Lcom/tencent/msdk/webview/WebViewActivity;->access$600(Lcom/tencent/msdk/webview/WebViewActivity;)Lcom/tencent/smtt/sdk/ValueCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 928
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity$3;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v2}, Lcom/tencent/msdk/webview/WebViewActivity;->access$600(Lcom/tencent/msdk/webview/WebViewActivity;)Lcom/tencent/smtt/sdk/ValueCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 930
    :cond_0
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity$3;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v2, p2}, Lcom/tencent/msdk/webview/WebViewActivity;->access$602(Lcom/tencent/msdk/webview/WebViewActivity;Lcom/tencent/smtt/sdk/ValueCallback;)Lcom/tencent/smtt/sdk/ValueCallback;

    .line 931
    const-string v2, "[MSDK WebViewActivity]"

    const-string v3, "onShowFileChooser"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 933
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 934
    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 936
    :try_start_0
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity$3;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$3;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    .line 937
    invoke-virtual {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/tencent/msdk/webview/WebViewResID;->str_upload_file_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 936
    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/tencent/msdk/webview/WebViewActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 941
    :goto_0
    return v5

    .line 938
    :catch_0
    move-exception v0

    .line 939
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
    .line 908
    .local p1, "uploadFile":Lcom/tencent/smtt/sdk/ValueCallback;, "Lcom/tencent/smtt/sdk/ValueCallback<Landroid/net/Uri;>;"
    const-string v2, "[MSDK WebViewActivity]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openFileChooser "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity$3;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v2}, Lcom/tencent/msdk/webview/WebViewActivity;->access$500(Lcom/tencent/msdk/webview/WebViewActivity;)Lcom/tencent/smtt/sdk/ValueCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 910
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity$3;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v2}, Lcom/tencent/msdk/webview/WebViewActivity;->access$500(Lcom/tencent/msdk/webview/WebViewActivity;)Lcom/tencent/smtt/sdk/ValueCallback;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/tencent/smtt/sdk/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 912
    :cond_0
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity$3;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v2, p1}, Lcom/tencent/msdk/webview/WebViewActivity;->access$502(Lcom/tencent/msdk/webview/WebViewActivity;Lcom/tencent/smtt/sdk/ValueCallback;)Lcom/tencent/smtt/sdk/ValueCallback;

    .line 913
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 914
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 915
    const-string v2, "*/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 917
    :try_start_0
    iget-object v2, p0, Lcom/tencent/msdk/webview/WebViewActivity$3;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$3;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    .line 918
    invoke-virtual {v3}, Lcom/tencent/msdk/webview/WebViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/tencent/msdk/webview/WebViewResID;->str_upload_file_title:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 917
    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/tencent/msdk/webview/WebViewActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    :goto_0
    return-void

    .line 919
    :catch_0
    move-exception v0

    .line 920
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
