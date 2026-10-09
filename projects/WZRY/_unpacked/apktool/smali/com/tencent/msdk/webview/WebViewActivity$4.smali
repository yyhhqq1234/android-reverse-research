.class Lcom/tencent/msdk/webview/WebViewActivity$4;
.super Lcom/tencent/smtt/sdk/WebViewClient;
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
    .line 946
    iput-object p1, p0, Lcom/tencent/msdk/webview/WebViewActivity$4;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 973
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity$4;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v0}, Lcom/tencent/msdk/webview/WebViewActivity;->access$700(Lcom/tencent/msdk/webview/WebViewActivity;)V

    .line 974
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity$4;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v0}, Lcom/tencent/msdk/webview/WebViewActivity;->access$800(Lcom/tencent/msdk/webview/WebViewActivity;)V

    .line 975
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity$4;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v0}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1000(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity$4;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v1}, Lcom/tencent/msdk/webview/WebViewActivity;->access$900(Lcom/tencent/msdk/webview/WebViewActivity;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 976
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity$4;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v0, p1}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1100(Lcom/tencent/msdk/webview/WebViewActivity;Lcom/tencent/smtt/sdk/WebView;)V

    .line 977
    return-void
.end method

.method public onPageStarted(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 981
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity$4;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v0}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1200(Lcom/tencent/msdk/webview/WebViewActivity;)V

    .line 982
    iget-object v0, p0, Lcom/tencent/msdk/webview/WebViewActivity$4;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v0}, Lcom/tencent/msdk/webview/WebViewActivity;->access$1000(Lcom/tencent/msdk/webview/WebViewActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/webview/WebViewActivity$4;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-static {v1}, Lcom/tencent/msdk/webview/WebViewActivity;->access$900(Lcom/tencent/msdk/webview/WebViewActivity;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 983
    return-void
.end method

.method public shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Z
    .locals 6
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 950
    const-string v3, "[MSDK WebViewActivity]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loading url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const-string/jumbo v3, "weixin:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "mqqapi:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 952
    :cond_0
    const/4 v1, 0x0

    .line 954
    .local v1, "intent":Landroid/content/Intent;
    const/4 v3, 0x1

    :try_start_0
    invoke-static {p2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 956
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 957
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 958
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-lt v3, v4, :cond_1

    .line 959
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 961
    :cond_1
    iget-object v3, p0, Lcom/tencent/msdk/webview/WebViewActivity$4;->this$0:Lcom/tencent/msdk/webview/WebViewActivity;

    invoke-virtual {v3, v1}, Lcom/tencent/msdk/webview/WebViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 967
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 962
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 963
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 967
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
