.class Lcom/tencent/msdk/webview/X5WebViewActivity$9;
.super Ljava/lang/Object;
.source "X5WebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/webview/X5WebViewActivity;->sendToWeixinWithUrl(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

.field final synthetic val$desc:Ljava/lang/String;

.field final synthetic val$imgUrl:Ljava/lang/String;

.field final synthetic val$scene:I

.field final synthetic val$targetUrl:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/webview/X5WebViewActivity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 1974
    iput-object p1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$9;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    iput-object p2, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$9;->val$imgUrl:Ljava/lang/String;

    iput p3, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$9;->val$scene:I

    iput-object p4, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$9;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$9;->val$desc:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$9;->val$targetUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 1979
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$9;->val$imgUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$9;->val$imgUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_2

    .line 1984
    :try_start_1
    new-instance v1, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$9;->val$imgUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v16

    check-cast v16, Ljava/net/HttpURLConnection;

    .line 1985
    .local v16, "httpURLConnection":Ljava/net/HttpURLConnection;
    const/16 v1, 0x2710

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1986
    const v1, 0x9c40

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1987
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v17

    .line 1988
    .local v17, "input":Ljava/io/InputStream;
    invoke-static/range {v17 .. v17}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 1989
    .local v18, "thumb":Landroid/graphics/Bitmap;
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V

    .line 1990
    invoke-virtual/range {v16 .. v16}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1991
    invoke-static/range {v18 .. v18}, Lcom/tencent/msdk/tools/CommonUtil;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    .line 1992
    .local v6, "imgData":[B
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    .line 1993
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$9;->val$scene:I

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/tencent/msdk/api/eWechatScene;->WechatScene_Timeline:Lcom/tencent/msdk/api/eWechatScene;

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$9;->val$title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$9;->val$desc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$9;->val$targetUrl:Ljava/lang/String;

    const-string v5, "MSG_friend_exceed"

    array-length v7, v6

    const-string v8, "MSG_friend_exceed"

    invoke-static/range {v1 .. v8}, Lcom/tencent/msdk/api/WGPlatform;->WGSendToWeixinWithUrl(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)V

    .line 2007
    .end local v6    # "imgData":[B
    .end local v16    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v17    # "input":Ljava/io/InputStream;
    .end local v18    # "thumb":Landroid/graphics/Bitmap;
    :goto_1
    return-void

    .line 1993
    .restart local v6    # "imgData":[B
    .restart local v16    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .restart local v17    # "input":Ljava/io/InputStream;
    .restart local v18    # "thumb":Landroid/graphics/Bitmap;
    :cond_0
    sget-object v1, Lcom/tencent/msdk/api/eWechatScene;->WechatScene_Session:Lcom/tencent/msdk/api/eWechatScene;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1995
    .end local v6    # "imgData":[B
    .end local v16    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v17    # "input":Ljava/io/InputStream;
    .end local v18    # "thumb":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v15

    .line 1997
    .local v15, "ex":Ljava/lang/Exception;
    const/4 v1, 0x1

    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$9;->val$scene:I

    if-ne v1, v2, :cond_1

    sget-object v7, Lcom/tencent/msdk/api/eWechatScene;->WechatScene_Timeline:Lcom/tencent/msdk/api/eWechatScene;

    :goto_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$9;->val$title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$9;->val$desc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$9;->val$targetUrl:Ljava/lang/String;

    const-string v11, "MSG_friend_exceed"

    const/4 v1, 0x0

    new-array v12, v1, [B

    const/4 v13, 0x0

    const-string v14, "MSG_friend_exceed"

    invoke-static/range {v7 .. v14}, Lcom/tencent/msdk/api/WGPlatform;->WGSendToWeixinWithUrl(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 2003
    .end local v15    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v15

    .line 2005
    .restart local v15    # "ex":Ljava/lang/Exception;
    const-string v1, "--Exception--"

    invoke-virtual {v15}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1997
    :cond_1
    :try_start_3
    sget-object v7, Lcom/tencent/msdk/api/eWechatScene;->WechatScene_Session:Lcom/tencent/msdk/api/eWechatScene;

    goto :goto_2

    .line 2001
    .end local v15    # "ex":Ljava/lang/Exception;
    :cond_2
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$9;->val$scene:I

    if-ne v1, v2, :cond_3

    sget-object v7, Lcom/tencent/msdk/api/eWechatScene;->WechatScene_Timeline:Lcom/tencent/msdk/api/eWechatScene;

    :goto_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$9;->val$title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$9;->val$desc:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$9;->val$targetUrl:Ljava/lang/String;

    const-string v11, "MSG_friend_exceed"

    const/4 v1, 0x0

    new-array v12, v1, [B

    const/4 v13, 0x0

    const-string v14, "MSG_friend_exceed"

    invoke-static/range {v7 .. v14}, Lcom/tencent/msdk/api/WGPlatform;->WGSendToWeixinWithUrl(Lcom/tencent/msdk/api/eWechatScene;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BILjava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v7, Lcom/tencent/msdk/api/eWechatScene;->WechatScene_Session:Lcom/tencent/msdk/api/eWechatScene;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method
