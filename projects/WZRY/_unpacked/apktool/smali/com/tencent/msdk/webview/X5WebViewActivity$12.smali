.class Lcom/tencent/msdk/webview/X5WebViewActivity$12;
.super Ljava/lang/Object;
.source "X5WebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/webview/X5WebViewActivity;->addShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

.field final synthetic val$imgUrl:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/webview/X5WebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 2304
    iput-object p1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$12;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    iput-object p2, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$12;->val$imgUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$12;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$12;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2310
    :try_start_0
    new-instance v6, Ljava/net/URL;

    iget-object v7, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$12;->val$imgUrl:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 2311
    .local v1, "httpURLConnection":Ljava/net/HttpURLConnection;
    const/16 v6, 0x2710

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 2312
    const v6, 0x9c40

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 2313
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 2314
    .local v3, "input":Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2315
    .local v2, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 2316
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 2318
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 2319
    .local v5, "intentLauncher":Landroid/content/Intent;
    iget-object v6, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$12;->val$url:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2320
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2321
    .local v4, "intentAddShortcut":Landroid/content/Intent;
    const-string v6, "duplicate"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2322
    const-string v6, "android.intent.extra.shortcut.NAME"

    iget-object v7, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$12;->val$name:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2323
    const-string v6, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2324
    const-string v6, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2325
    iget-object v6, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$12;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-virtual {v6, v4}, Lcom/tencent/msdk/webview/X5WebViewActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2331
    .end local v1    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v2    # "icon":Landroid/graphics/Bitmap;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "intentAddShortcut":Landroid/content/Intent;
    .end local v5    # "intentLauncher":Landroid/content/Intent;
    :goto_0
    return-void

    .line 2327
    :catch_0
    move-exception v0

    .line 2329
    .local v0, "ex":Ljava/lang/Exception;
    const-string v6, "--Exception--"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
