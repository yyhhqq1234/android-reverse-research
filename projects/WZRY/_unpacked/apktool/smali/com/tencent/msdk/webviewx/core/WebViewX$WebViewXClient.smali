.class Lcom/tencent/msdk/webviewx/core/WebViewX$WebViewXClient;
.super Lcom/tencent/smtt/sdk/WebViewClient;
.source "WebViewX.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/webviewx/core/WebViewX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebViewXClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/webviewx/core/WebViewX;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/webviewx/core/WebViewX;

    .prologue
    .line 728
    iput-object p1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$WebViewXClient;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "webView"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 732
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    .line 733
    const-string v0, "WebViewX"

    const-string v1, "onPageFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$WebViewXClient;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-static {v0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->access$1000(Lcom/tencent/msdk/webviewx/core/WebViewX;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$WebViewXClient;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-static {v0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->access$500(Lcom/tencent/msdk/webviewx/core/WebViewX;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$WebViewXClient;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-static {v0}, Lcom/tencent/msdk/webviewx/core/WebViewX;->access$1000(Lcom/tencent/msdk/webviewx/core/WebViewX;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$WebViewXClient;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    invoke-static {v1}, Lcom/tencent/msdk/webviewx/core/WebViewX;->access$500(Lcom/tencent/msdk/webviewx/core/WebViewX;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    :cond_0
    return-void
.end method

.method public onPageStarted(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "arg0"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 741
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onPageStarted(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 742
    const-string v0, "WebViewX"

    const-string v1, "onPageStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    return-void
.end method

.method public shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Z
    .locals 7
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 750
    const-string v4, "WebViewX"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shouldOverrideUrlLoading:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const-string v4, "http:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "https:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ftp:"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "file:"

    .line 752
    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 753
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Z

    move-result v3

    .line 771
    :goto_0
    return v3

    .line 758
    :cond_1
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 759
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 760
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 761
    const-string v4, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 762
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 763
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xf

    if-lt v4, v5, :cond_2

    .line 764
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 766
    :cond_2
    iget-object v4, p0, Lcom/tencent/msdk/webviewx/core/WebViewX$WebViewXClient;->this$0:Lcom/tencent/msdk/webviewx/core/WebViewX;

    iget-object v4, v4, Lcom/tencent/msdk/webviewx/core/WebViewX;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 767
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 768
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "WebViewX"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "open pseudo protocol failed : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
