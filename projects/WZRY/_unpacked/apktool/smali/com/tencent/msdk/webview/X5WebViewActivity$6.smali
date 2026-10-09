.class Lcom/tencent/msdk/webview/X5WebViewActivity$6;
.super Lcom/tencent/smtt/sdk/WebViewClient;
.source "X5WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/webview/X5WebViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/webview/X5WebViewActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/webview/X5WebViewActivity;

    .prologue
    .line 1274
    iput-object p1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebViewClient;-><init>()V

    return-void
.end method

.method private addResponseHeaders(Ljava/lang/String;Ljava/util/Map;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;
    .locals 17
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;"
        }
    .end annotation

    .prologue
    .line 1578
    .local p2, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v14

    check-cast v14, Ljava/net/HttpURLConnection;

    .line 1579
    .local v14, "httpURLConnection":Ljava/net/HttpURLConnection;
    const/16 v1, 0x2710

    invoke-virtual {v14, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1580
    const v1, 0x9c40

    invoke-virtual {v14, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1581
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v1}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1500(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v3

    .line 1582
    .local v3, "metaCharset":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v1}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$2000(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v4}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$2000(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v1}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$2100(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1583
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v1}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$2100(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v3

    .line 1584
    :cond_0
    new-instance v1, Ljava/util/Scanner;

    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4, v3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v4, "\u0001"

    invoke-virtual {v1, v4}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v13

    .line 1585
    .local v13, "html":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1586
    if-eqz v13, :cond_2

    .line 1588
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v16

    .line 1589
    .local v16, "path":Ljava/lang/String;
    const-string v1, "."

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v15

    .line 1590
    .local v15, "index":I
    const/4 v1, -0x1

    if-eq v1, v15, :cond_1

    .line 1592
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    .line 1593
    .local v12, "ext":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    iget-object v1, v1, Lcom/tencent/msdk/webview/X5WebViewActivity;->contentTypeMap:Ljava/util/Map;

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1594
    .local v2, "contentType":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1595
    new-instance v1, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    const/16 v4, 0xc8

    const-string v5, "OK"

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v13, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    .line 1604
    .end local v2    # "contentType":Ljava/lang/String;
    .end local v3    # "metaCharset":Ljava/lang/String;
    .end local v12    # "ext":Ljava/lang/String;
    .end local v13    # "html":Ljava/lang/String;
    .end local v14    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v15    # "index":I
    .end local v16    # "path":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1597
    .restart local v3    # "metaCharset":Ljava/lang/String;
    .restart local v13    # "html":Ljava/lang/String;
    .restart local v14    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .restart local v15    # "index":I
    .restart local v16    # "path":Ljava/lang/String;
    :cond_1
    new-instance v4, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    const-string/jumbo v5, "text/html"

    const/16 v7, 0xc8

    const-string v8, "OK"

    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v13, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v6, v3

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v10}, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    goto :goto_0

    .line 1600
    .end local v3    # "metaCharset":Ljava/lang/String;
    .end local v13    # "html":Ljava/lang/String;
    .end local v14    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v15    # "index":I
    .end local v16    # "path":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 1602
    .local v11, "ex":Ljava/lang/Exception;
    const-string v1, "--Exception--"

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    .end local v11    # "ex":Ljava/lang/Exception;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dealHtmlMetaCharset(Ljava/lang/String;)V
    .locals 5
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 1404
    :try_start_0
    const-string v3, "<\\s*meta\\s+charset\\s*=\\s*[\'\"]([A-Za-z0-9-_]+)[\'\"]\\s*>"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1405
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1406
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1407
    iget-object v3, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1502(Lcom/tencent/msdk/webview/X5WebViewActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1413
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    .end local v2    # "pattern":Ljava/util/regex/Pattern;
    :cond_0
    :goto_0
    return-void

    .line 1409
    :catch_0
    move-exception v0

    .line 1411
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "--Exception--"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getHtml(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 9
    .param p1, "zipFile"    # Ljava/util/zip/ZipFile;
    .param p2, "html"    # Ljava/lang/String;
    .param p3, "metaCharset"    # Ljava/lang/String;
    .param p4, "count"    # I

    .prologue
    .line 1417
    const/16 v6, 0xa

    if-le p4, v6, :cond_0

    move-object v2, p2

    .end local p2    # "html":Ljava/lang/String;
    .local v2, "html":Ljava/lang/String;
    move-object v6, p2

    .line 1440
    :goto_0
    return-object v6

    .line 1421
    .end local v2    # "html":Ljava/lang/String;
    .restart local p2    # "html":Ljava/lang/String;
    :cond_0
    :try_start_0
    const-string v6, "<!--\\s*#include\\s+virtual\\s*=\\s*[\'\"]([A-Za-z0-9-_\\.\\/]+)[\'\"]\\s*-->"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 1422
    .local v4, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1423
    .local v3, "matcher":Ljava/util/regex/Matcher;
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1424
    .local v1, "found":Ljava/lang/Boolean;
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1426
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 1427
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    .line 1429
    .local v5, "zipEntry":Ljava/util/zip/ZipEntry;
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/Scanner;

    invoke-virtual {p1, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8, p3}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v8, "\u0001"

    invoke-virtual {v7, v8}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1430
    goto :goto_1

    .line 1431
    .end local v5    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_2

    move-object v2, p2

    .end local p2    # "html":Ljava/lang/String;
    .restart local v2    # "html":Ljava/lang/String;
    move-object v6, p2

    .line 1432
    goto :goto_0

    .line 1434
    .end local v2    # "html":Ljava/lang/String;
    .restart local p2    # "html":Ljava/lang/String;
    :cond_2
    add-int/lit8 p4, p4, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->getHtml(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v2, p2

    .end local p2    # "html":Ljava/lang/String;
    .restart local v2    # "html":Ljava/lang/String;
    goto :goto_0

    .line 1436
    .end local v1    # "found":Ljava/lang/Boolean;
    .end local v2    # "html":Ljava/lang/String;
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v4    # "pattern":Ljava/util/regex/Pattern;
    .restart local p2    # "html":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1438
    .local v0, "ex":Ljava/lang/Exception;
    const-string v6, "--Exception--"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p2

    .end local p2    # "html":Ljava/lang/String;
    .restart local v2    # "html":Ljava/lang/String;
    move-object v6, p2

    .line 1440
    goto :goto_0
.end method

.method private getLocalResource(Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;
    .locals 22
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1447
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v2}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1600(Lcom/tencent/msdk/webview/X5WebViewActivity;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v2}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1600(Lcom/tencent/msdk/webview/X5WebViewActivity;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v13

    .line 1450
    .local v13, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1452
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 1453
    .local v14, "key":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v2}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1600(Lcom/tencent/msdk/webview/X5WebViewActivity;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1459
    .local v17, "value":Ljava/lang/String;
    new-instance v7, Lcom/tencent/msdk/webview/X5WebViewActivity$6$3;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/tencent/msdk/webview/X5WebViewActivity$6$3;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity$6;)V

    .line 1464
    .local v7, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    const-string/jumbo v3, "text/html"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v4}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1500(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc8

    const-string v6, "OK"

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct/range {v2 .. v8}, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1543
    .end local v7    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v14    # "key":Ljava/lang/String;
    .end local v17    # "value":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1470
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v2}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1700(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1472
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 1473
    .local v16, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v2}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1800(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1474
    const/4 v2, 0x0

    goto :goto_0

    .line 1475
    :cond_2
    new-instance v7, Lcom/tencent/msdk/webview/X5WebViewActivity$6$4;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/tencent/msdk/webview/X5WebViewActivity$6$4;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity$6;)V

    .line 1479
    .restart local v7    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/tencent/msdk/webview/X5WebViewActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "ingame.zip"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 1480
    .local v20, "zipFilePath":Ljava/lang/String;
    new-instance v19, Ljava/util/zip/ZipFile;

    invoke-direct/range {v19 .. v20}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 1481
    .local v19, "zipFile":Ljava/util/zip/ZipFile;
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 1482
    .local v15, "path":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v18

    .line 1483
    .local v18, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    .line 1484
    const-string v2, "."

    invoke-virtual {v15, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 1485
    .local v12, "index":I
    const/4 v2, -0x1

    if-ne v2, v12, :cond_4

    .line 1488
    new-instance v2, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    const-string/jumbo v3, "text/html"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v4}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1500(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc8

    const-string v6, "OK"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 1535
    .end local v7    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v12    # "index":I
    .end local v15    # "path":Ljava/lang/String;
    .end local v16    # "uri":Landroid/net/Uri;
    .end local v18    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v19    # "zipFile":Ljava/util/zip/ZipFile;
    .end local v20    # "zipFilePath":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1543
    :cond_3
    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1491
    .restart local v7    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v12    # "index":I
    .restart local v15    # "path":Ljava/lang/String;
    .restart local v16    # "uri":Landroid/net/Uri;
    .restart local v18    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v19    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v20    # "zipFilePath":Ljava/lang/String;
    :cond_4
    invoke-virtual {v15, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 1492
    .local v10, "ext":Ljava/lang/String;
    const-string v2, ".shtml"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ".shtm"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ".stm"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1494
    :cond_5
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v11

    .line 1495
    .local v11, "html":Ljava/lang/String;
    if-nez v11, :cond_6

    .line 1496
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1497
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->dealHtmlMetaCharset(Ljava/lang/String;)V

    .line 1498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v2}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1500(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v11, v2, v4}, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->getHtml(Ljava/util/zip/ZipFile;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 1501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v2}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1900(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    if-eqz v11, :cond_7

    .line 1503
    const-string v2, "</body>"

    invoke-virtual {v11, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 1504
    const/4 v2, -0x1

    if-eq v2, v12, :cond_7

    .line 1505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v11, v4, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v4}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1900(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1507
    :cond_7
    new-instance v2, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    const-string/jumbo v3, "text/html"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v4}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1500(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc8

    const-string v6, "OK"

    new-instance v8, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1500(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct/range {v2 .. v8}, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 1511
    .end local v11    # "html":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    iget-object v2, v2, Lcom/tencent/msdk/webview/X5WebViewActivity;->contentTypeMap:Ljava/util/Map;

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1512
    .local v3, "contentType":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 1516
    const-string v2, ".html"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, ".htm"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1518
    :cond_9
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v11

    .line 1519
    .restart local v11    # "html":Ljava/lang/String;
    if-nez v11, :cond_a

    .line 1520
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1521
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v2}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1900(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1523
    const-string v2, "</body>"

    invoke-virtual {v11, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    .line 1524
    const/4 v2, -0x1

    if-eq v2, v12, :cond_b

    .line 1525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v11, v4, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v4}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1900(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1527
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->dealHtmlMetaCharset(Ljava/lang/String;)V

    .line 1528
    new-instance v2, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    const-string/jumbo v3, "text/html"

    .end local v3    # "contentType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v4}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1500(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc8

    const-string v6, "OK"

    new-instance v8, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1500(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v8, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct/range {v2 .. v8}, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 1530
    .end local v11    # "html":Ljava/lang/String;
    .restart local v3    # "contentType":Ljava/lang/String;
    :cond_c
    new-instance v2, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v4}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1500(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc8

    const-string v6, "OK"

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 1539
    .end local v3    # "contentType":Ljava/lang/String;
    .end local v7    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "ext":Ljava/lang/String;
    .end local v12    # "index":I
    .end local v15    # "path":Ljava/lang/String;
    .end local v16    # "uri":Landroid/net/Uri;
    .end local v18    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v19    # "zipFile":Ljava/util/zip/ZipFile;
    .end local v20    # "zipFilePath":Ljava/lang/String;
    :catch_1
    move-exception v9

    .line 1541
    .local v9, "ex":Ljava/lang/Exception;
    const-string v2, "--Exception--"

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    .line 1550
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1551
    .local v4, "os":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0x400

    new-array v0, v5, [B

    .line 1552
    .local v0, "buffer":[B
    const/4 v3, -0x1

    .line 1553
    .local v3, "len":I
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 1554
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 1568
    .end local v0    # "buffer":[B
    .end local v3    # "len":I
    .end local v4    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v2

    .line 1570
    .local v2, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    .end local v2    # "ex":Ljava/lang/Exception;
    :goto_1
    return-object v1

    .line 1555
    .restart local v0    # "buffer":[B
    .restart local v3    # "len":I
    .restart local v4    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 1561
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1562
    .local v1, "data":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->dealHtmlMetaCharset(Ljava/lang/String;)V

    .line 1563
    iget-object v5, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v5}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1500(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1564
    iget-object v5, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v5}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1500(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1565
    :cond_1
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private injectJs(Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1611
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 1612
    .local v2, "httpURLConnection":Ljava/net/HttpURLConnection;
    const/16 v4, 0x2710

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1613
    const v4, 0x9c40

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1614
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->getStringFromInputStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 1615
    .local v1, "html":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1616
    if-eqz v1, :cond_0

    .line 1618
    const-string v4, "</body>"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 1619
    .local v3, "index":I
    const/4 v4, -0x1

    if-eq v4, v3, :cond_0

    .line 1621
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v5}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1900(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1622
    invoke-direct {p0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->dealHtmlMetaCharset(Ljava/lang/String;)V

    .line 1623
    new-instance v4, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    const-string/jumbo v5, "text/html"

    iget-object v6, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v6}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1500(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v8}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1500(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5, v6, v7}, Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1631
    .end local v1    # "html":Ljava/lang/String;
    .end local v2    # "httpURLConnection":Ljava/net/HttpURLConnection;
    .end local v3    # "index":I
    :goto_0
    return-object v4

    .line 1627
    :catch_0
    move-exception v0

    .line 1629
    .local v0, "ex":Ljava/lang/Exception;
    const-string v4, "--Exception--"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V
    .locals 7
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0xff

    .line 1311
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebViewClient;->onPageFinished(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    .line 1313
    iget-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v1}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$400(Lcom/tencent/msdk/webview/X5WebViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1315
    iget-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v1}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$400(Lcom/tencent/msdk/webview/X5WebViewActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1316
    iget-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$402(Lcom/tencent/msdk/webview/X5WebViewActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1322
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v1}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$300(Lcom/tencent/msdk/webview/X5WebViewActivity;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v1

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    const/16 v5, 0xff

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/WebView;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1382
    :goto_0
    return-void

    .line 1325
    :catch_0
    move-exception v1

    .line 1331
    :try_start_1
    const-string/jumbo v1, "window.getComputedStyle(document.body).getPropertyValue(\'background-color\')"

    new-instance v2, Lcom/tencent/msdk/webview/X5WebViewActivity$6$1;

    invoke-direct {v2, p0}, Lcom/tencent/msdk/webview/X5WebViewActivity$6$1;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity$6;)V

    invoke-virtual {p1, v1, v2}, Lcom/tencent/smtt/sdk/WebView;->evaluateJavascript(Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1377
    :catch_1
    move-exception v0

    .line 1379
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v1}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$300(Lcom/tencent/msdk/webview/X5WebViewActivity;)Lcom/tencent/smtt/sdk/WebView;

    move-result-object v1

    invoke-static {v6, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/WebView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public onPageStarted(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1387
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/WebViewClient;->onPageStarted(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1389
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v0}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1400(Lcom/tencent/msdk/webview/X5WebViewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1398
    :goto_0
    return-void

    .line 1391
    :cond_0
    iget-object v0, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1402(Lcom/tencent/msdk/webview/X5WebViewActivity;Z)Z

    .line 1392
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/tencent/msdk/webview/X5WebViewActivity$6$2;

    invoke-direct {v1, p0}, Lcom/tencent/msdk/webview/X5WebViewActivity$6$2;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity$6;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onReceivedError(Lcom/tencent/smtt/sdk/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 1278
    const-string v0, "--Exception--"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", errorCode:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") -- from url "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebViewClient;->onReceivedError(Lcom/tencent/smtt/sdk/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 1280
    return-void
.end method

.method public shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;
    .locals 9
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "request"    # Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1678
    invoke-interface {p2}, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1679
    .local v6, "url":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->getLocalResource(Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    move-result-object v4

    .line 1682
    .local v4, "response":Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;
    if-nez v4, :cond_2

    .line 1684
    :try_start_0
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1685
    .local v5, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 1686
    .local v1, "ip":Ljava/lang/String;
    iget-object v7, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v7}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$2200(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1688
    iget-object v7, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v7}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$2200(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "ip":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1689
    .restart local v1    # "ip":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1690
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity;->writeSystemDnsCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1692
    :cond_0
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1693
    .local v2, "lowerCaseUrl":Ljava/lang/String;
    iget-object v7, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v7}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1900(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string v7, ".html"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, ".htm"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, ".shtml"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, ".shtm"

    .line 1694
    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, ".stm"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1696
    :cond_1
    invoke-direct {p0, v6}, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->injectJs(Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    move-result-object v4

    .line 1712
    .end local v1    # "ip":Ljava/lang/String;
    .end local v2    # "lowerCaseUrl":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_0
    if-eqz v4, :cond_5

    .end local v4    # "response":Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;
    :goto_1
    return-object v4

    .line 1698
    .restart local v1    # "ip":Ljava/lang/String;
    .restart local v2    # "lowerCaseUrl":Ljava/lang/String;
    .restart local v4    # "response":Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_3
    iget-object v7, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v7}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$2300(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v8}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1800(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, ".js"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1699
    new-instance v7, Lcom/tencent/msdk/webview/X5WebViewActivity$6$7;

    invoke-direct {v7, p0}, Lcom/tencent/msdk/webview/X5WebViewActivity$6$7;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity$6;)V

    invoke-direct {p0, v6, v7}, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->addResponseHeaders(Ljava/lang/String;Ljava/util/Map;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    move-result-object v4

    goto :goto_0

    .line 1700
    :cond_4
    if-eqz v1, :cond_2

    const-string v7, "GET"

    invoke-interface {p2}, Lcom/tencent/smtt/export/external/interfaces/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1702
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1703
    .local v3, "path":Ljava/lang/String;
    const-string v7, "."

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1704
    .local v0, "index":I
    const/4 v7, -0x1

    if-eq v7, v0, :cond_2

    iget-object v7, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    iget-object v7, v7, Lcom/tencent/msdk/webview/X5WebViewActivity;->contentTypeMap:Ljava/util/Map;

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1705
    new-instance v7, Lcom/tencent/msdk/webview/X5WebViewActivity$6$8;

    invoke-direct {v7, p0}, Lcom/tencent/msdk/webview/X5WebViewActivity$6$8;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity$6;)V

    invoke-direct {p0, v6, v7}, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->addResponseHeaders(Ljava/lang/String;Ljava/util/Map;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 1712
    .end local v0    # "index":I
    .end local v1    # "ip":Ljava/lang/String;
    .end local v2    # "lowerCaseUrl":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 1709
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public shouldInterceptRequest(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;
    .locals 8
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 1638
    invoke-direct {p0, p2}, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->getLocalResource(Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    move-result-object v4

    .line 1641
    .local v4, "response":Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;
    if-nez v4, :cond_2

    .line 1643
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1644
    .local v5, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 1645
    .local v1, "ip":Ljava/lang/String;
    iget-object v6, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v6}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$2200(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1647
    iget-object v6, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v6}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$2200(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "ip":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1648
    .restart local v1    # "ip":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1649
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity;->writeSystemDnsCache(Ljava/lang/String;Ljava/lang/String;)V

    .line 1651
    :cond_0
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1652
    .local v2, "lowerCaseUrl":Ljava/lang/String;
    iget-object v6, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v6}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1900(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string v6, ".html"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, ".htm"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, ".shtml"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, ".shtm"

    .line 1653
    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, ".stm"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1655
    :cond_1
    invoke-direct {p0, p2}, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->injectJs(Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    move-result-object v4

    .line 1671
    .end local v1    # "ip":Ljava/lang/String;
    .end local v2    # "lowerCaseUrl":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_0
    if-eqz v4, :cond_5

    .end local v4    # "response":Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;
    :goto_1
    return-object v4

    .line 1657
    .restart local v1    # "ip":Ljava/lang/String;
    .restart local v2    # "lowerCaseUrl":Ljava/lang/String;
    .restart local v4    # "response":Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;
    .restart local v5    # "uri":Landroid/net/Uri;
    :cond_3
    iget-object v6, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v6}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$2300(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-static {v7}, Lcom/tencent/msdk/webview/X5WebViewActivity;->access$1800(Lcom/tencent/msdk/webview/X5WebViewActivity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, ".js"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1658
    new-instance v6, Lcom/tencent/msdk/webview/X5WebViewActivity$6$5;

    invoke-direct {v6, p0}, Lcom/tencent/msdk/webview/X5WebViewActivity$6$5;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity$6;)V

    invoke-direct {p0, p2, v6}, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->addResponseHeaders(Ljava/lang/String;Ljava/util/Map;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;

    move-result-object v4

    goto :goto_0

    .line 1659
    :cond_4
    if-eqz v1, :cond_2

    .line 1661
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1662
    .local v3, "path":Ljava/lang/String;
    const-string v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 1663
    .local v0, "index":I
    const/4 v6, -0x1

    if-eq v6, v0, :cond_2

    iget-object v6, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    iget-object v6, v6, Lcom/tencent/msdk/webview/X5WebViewActivity;->contentTypeMap:Ljava/util/Map;

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1664
    new-instance v6, Lcom/tencent/msdk/webview/X5WebViewActivity$6$6;

    invoke-direct {v6, p0}, Lcom/tencent/msdk/webview/X5WebViewActivity$6$6;-><init>(Lcom/tencent/msdk/webview/X5WebViewActivity$6;)V

    invoke-direct {p0, p2, v6}, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->addResponseHeaders(Ljava/lang/String;Ljava/util/Map;)Lcom/tencent/smtt/export/external/interfaces/WebResourceResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 1671
    .end local v0    # "index":I
    .end local v1    # "ip":Ljava/lang/String;
    .end local v2    # "lowerCaseUrl":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    .end local v5    # "uri":Landroid/net/Uri;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 1668
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Lcom/tencent/smtt/sdk/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 1285
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "file:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1305
    :goto_0
    return v2

    .line 1287
    :cond_0
    const-string/jumbo v3, "weixin:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "mqqapi:"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1291
    :cond_1
    const/4 v3, 0x1

    :try_start_0
    invoke-static {p2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 1292
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1293
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1294
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-lt v3, v4, :cond_2

    .line 1295
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 1296
    :cond_2
    iget-object v3, p0, Lcom/tencent/msdk/webview/X5WebViewActivity$6;->this$0:Lcom/tencent/msdk/webview/X5WebViewActivity;

    invoke-virtual {v3, v1}, Lcom/tencent/msdk/webview/X5WebViewActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1298
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1300
    .local v0, "ex":Ljava/lang/Exception;
    const-string v3, "--Exception--"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1305
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method
