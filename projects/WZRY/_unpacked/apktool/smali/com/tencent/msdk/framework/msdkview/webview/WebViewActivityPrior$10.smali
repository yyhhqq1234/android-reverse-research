.class Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$10;
.super Lcom/tencent/smtt/sdk/WebViewClient;
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
    .line 817
    iput-object p1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$10;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 844
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$10;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$2800(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)V

    .line 845
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$10;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$2900(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)V

    .line 846
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$10;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$3000(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$10;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v1}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$300(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 847
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$10;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v0, p1}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$3100(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;Lcom/tencent/smtt/sdk/WebView;)V

    .line 848
    return-void
.end method

.method public onPageStarted(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 852
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$10;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$3200(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)V

    .line 853
    iget-object v0, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$10;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v0}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$3000(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$10;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v1}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$300(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 854
    return-void
.end method

.method public shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 821
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loading url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 822
    const-string/jumbo v3, "weixin:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "mqqapi:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 823
    :cond_0
    const/4 v1, 0x0

    .line 825
    .local v1, "intent":Landroid/content/Intent;
    const/4 v3, 0x1

    :try_start_0
    invoke-static {p2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 827
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 829
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-lt v3, v4, :cond_1

    .line 830
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 832
    :cond_1
    iget-object v3, p0, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior$10;->this$0:Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;

    invoke-static {v3}, Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;->access$2300(Lcom/tencent/msdk/framework/msdkview/webview/WebViewActivityPrior;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 833
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 834
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 838
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
