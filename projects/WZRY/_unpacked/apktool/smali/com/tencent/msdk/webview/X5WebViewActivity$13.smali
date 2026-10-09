.class Lcom/tencent/msdk/webview/X5WebViewActivity$13;
.super Ljava/lang/Object;
.source "X5WebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/webview/X5WebViewActivity;->sendRequestToHost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

.field final synthetic val$body:Ljava/lang/String;

.field final synthetic val$cookies:Ljava/lang/String;

.field final synthetic val$encoding:Ljava/lang/String;

.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$flag:Ljava/lang/String;

.field final synthetic val$ip:Ljava/lang/String;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$referer:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/webview/X5WebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 2377
    iput-object p1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$13;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    iput-object p2, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$13;->val$ip:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$13;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$13;->val$referer:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$13;->val$cookies:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$13;->val$method:Ljava/lang/String;

    iput-object p7, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$13;->val$encoding:Ljava/lang/String;

    iput-object p8, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$13;->val$body:Ljava/lang/String;

    iput-object p9, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$13;->val$eventName:Ljava/lang/String;

    iput-object p10, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$13;->val$flag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 2382
    const/4 v3, 0x0

    .line 2383
    .local v3, "httpURLConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    iget-object v5, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$13;->val$ip:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2385
    iget-object v5, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$13;->val$url:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2386
    .local v4, "uri":Landroid/net/Uri;
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$13;->val$url:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$13;->val$ip:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 2387
    const-string v5, "Host"

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2391
    .end local v4    # "uri":Landroid/net/Uri;
    :goto_0
    const-string v5, "Referer"

    iget-object v6, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$13;->val$referer:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2392
    const-string v5, "Cookie"

    iget-object v6, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$13;->val$cookies:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2393
    iget-object v5, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$13;->val$method:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 2394
    const-string v5, "Content-Type"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "application/x-www-form-urlencoded; charset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$13;->val$encoding:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2395
    const/16 v5, 0x2710

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 2396
    const v5, 0x9c40

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 2397
    iget-object v5, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$13;->val$method:Ljava/lang/String;

    const-string v6, "POST"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2399
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 2400
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$13;->val$body:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$13;->val$encoding:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/OutputStream;->write([B)V

    .line 2402
    :cond_0
    new-instance v5, Ljava/util/Scanner;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$13;->val$encoding:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v6, "\u0001"

    invoke-virtual {v5, v6}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v2

    .line 2403
    .local v2, "html":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 2404
    iget-object v5, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$13;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    iget-object v6, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$13;->val$eventName:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$13;->val$flag:Ljava/lang/String;

    invoke-static {v5, v6, v7, v2}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$2400(Lcom/tencent/msdk/webview/X5WebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    .end local v2    # "html":Ljava/lang/String;
    :goto_1
    return-void

    .line 2390
    :cond_1
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$13;->val$url:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2406
    :catch_0
    move-exception v1

    .line 2408
    .local v1, "ex":Ljava/lang/Exception;
    const-string v5, "--Exception--"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
