.class Lcom/tencent/msdk/webview/X5WebViewActivity$11;
.super Ljava/lang/Object;
.source "X5WebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/webview/X5WebViewActivity;->sendToWeixinWithUrl(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

.field final synthetic val$imageUrl:Ljava/lang/String;

.field final synthetic val$scene:I

.field final synthetic val$summary:Ljava/lang/String;

.field final synthetic val$targetUrl:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$wxAppid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/webview/X5WebViewActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 2046
    iput-object p1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$11;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    iput-object p2, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$11;->val$targetUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$11;->val$title:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$11;->val$summary:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$11;->val$imageUrl:Ljava/lang/String;

    iput p6, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$11;->val$scene:I

    iput-object p7, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$11;->val$wxAppid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2051
    :try_start_0
    new-instance v7, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;

    invoke-direct {v7}, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;-><init>()V

    .line 2052
    .local v7, "wxWebpageObject":Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;
    iget-object v10, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$11;->val$targetUrl:Ljava/lang/String;

    iput-object v10, v7, Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 2053
    new-instance v6, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v6, v7}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>(Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;)V

    .line 2054
    .local v6, "wxMediaMessage":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    iput-object v7, v6, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 2055
    iget-object v10, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$11;->val$title:Ljava/lang/String;

    iput-object v10, v6, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    .line 2056
    iget-object v10, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$11;->val$summary:Ljava/lang/String;

    iput-object v10, v6, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    .line 2057
    const/4 v10, 0x0

    iput-object v10, v6, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 2058
    iget-object v10, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$11;->val$imageUrl:Ljava/lang/String;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$11;->val$imageUrl:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "http"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_0

    .line 2062
    :try_start_1
    new-instance v10, Ljava/net/URL;

    iget-object v11, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$11;->val$imageUrl:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 2063
    .local v2, "httpURLConnection":Ljava/net/HttpURLConnection;
    const/16 v10, 0x7d0

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 2064
    const/16 v10, 0x7d0

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 2065
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 2066
    .local v3, "input":Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2067
    .local v5, "thumb":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 2068
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 2069
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2070
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v5, v10, v11, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2071
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    iput-object v10, v6, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 2072
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 2073
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2079
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v5    # "thumb":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    :try_start_2
    new-instance v4, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v4}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    .line 2080
    .local v4, "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    const-string v10, "msdkwebpage"

    iput-object v10, v4, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 2081
    iput-object v6, v4, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 2082
    iget v10, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$11;->val$scene:I

    if-ne v8, v10, :cond_1

    :goto_1
    iput v8, v4, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 2083
    iget-object v8, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$11;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    iget-object v9, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$11;->val$wxAppid:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    .line 2084
    .local v0, "api":Lcom/tencent/mm/opensdk/openapi/IWXAPI;
    iget-object v8, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$11;->val$wxAppid:Ljava/lang/String;

    invoke-interface {v0, v8}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 2085
    invoke-interface {v0, v4}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2090
    .end local v0    # "api":Lcom/tencent/mm/opensdk/openapi/IWXAPI;
    .end local v4    # "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    .end local v6    # "wxMediaMessage":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    .end local v7    # "wxWebpageObject":Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;
    :goto_2
    return-void

    .restart local v4    # "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    .restart local v6    # "wxMediaMessage":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    .restart local v7    # "wxWebpageObject":Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;
    :cond_1
    move v8, v9

    .line 2082
    goto :goto_1

    .line 2087
    .end local v4    # "req":Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;
    .end local v6    # "wxMediaMessage":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    .end local v7    # "wxWebpageObject":Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;
    :catch_0
    move-exception v8

    goto :goto_2

    .line 2075
    .restart local v6    # "wxMediaMessage":Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;
    .restart local v7    # "wxWebpageObject":Lcom/tencent/mm/opensdk/modelmsg/WXWebpageObject;
    :catch_1
    move-exception v10

    goto :goto_0
.end method
