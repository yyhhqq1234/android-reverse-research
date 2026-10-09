.class Lcom/tencent/msdk/webview/X5WebViewActivity$SaveImage;
.super Landroid/os/AsyncTask;
.source "X5WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/webview/X5WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveImage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;


# direct methods
.method private constructor <init>(Lcom/tencent/msdk/webview/X5WebViewActivity;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$SaveImage;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/msdk/webview/X5WebViewActivity;Lcom/tencent/msdk/webview/X5WebViewActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;
    .param p2, "x1"    # Lcom/tencent/msdk/webview/X5WebViewActivity$1;

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lcom/tencent/msdk/webview/X5WebViewActivity$SaveImage;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 414
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tencent/msdk/webview/X5WebViewActivity$SaveImage;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 422
    :try_start_0
    new-instance v9, Ljava/net/URL;

    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    check-cast v7, Ljava/net/HttpURLConnection;

    .line 423
    .local v7, "httpURLConnection":Ljava/net/HttpURLConnection;
    const/16 v9, 0x2710

    invoke-virtual {v7, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 424
    const v9, 0x9c40

    invoke-virtual {v7, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 425
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 426
    .local v8, "is":Ljava/io/InputStream;
    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 427
    .local v1, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 428
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 431
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "IngameBrowser"

    invoke-direct {v0, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 432
    .local v0, "appDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v9

    if-nez v9, :cond_0

    .line 433
    const-string/jumbo v9, "\u521b\u5efa\u5b58\u50a8\u8def\u5f84\u5931\u8d25"

    .line 450
    .end local v0    # "appDir":Ljava/io/File;
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v7    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v8    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v9

    .line 434
    .restart local v0    # "appDir":Ljava/io/File;
    .restart local v1    # "bmp":Landroid/graphics/Bitmap;
    .restart local v7    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .restart local v8    # "is":Ljava/io/InputStream;
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 435
    .local v4, "fileName":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 436
    .local v3, "file":Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 437
    .local v6, "fos":Ljava/io/FileOutputStream;
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {v1, v9, v10, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 438
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 439
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 442
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 443
    .local v5, "filePath":Ljava/lang/String;
    iget-object v9, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$SaveImage;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-virtual {v9}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v5, v4, v10}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 444
    iget-object v9, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$SaveImage;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "file://"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v9, v10}, Lcom/tencent/msdk/webview/X5WebViewActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 445
    const-string/jumbo v9, "\u5b58\u50a8\u56fe\u50cf\u6210\u529f"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 447
    .end local v0    # "appDir":Ljava/io/File;
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "filePath":Ljava/lang/String;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v8    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 449
    .local v2, "ex":Ljava/lang/Exception;
    const-string v9, "--Exception--"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string/jumbo v9, "\u5b58\u50a8\u56fe\u50cf\u5931\u8d25"

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 414
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tencent/msdk/webview/X5WebViewActivity$SaveImage;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 457
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$SaveImage;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-virtual {v0}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 458
    return-void
.end method
