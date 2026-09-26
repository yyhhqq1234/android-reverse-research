.class public Lcom/netease/environment/http/HttpGet;
.super Ljava/lang/Object;
.source "HttpGet.java"


# static fields
.field private static final CONNECT_TIME_OUT_DEFAULT:I = 0x3a98

.field private static final READ_TIME_OUT_DEFAULT:I = 0x7530

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/netease/environment/http/HttpGet;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/environment/http/HttpGet;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "urlString"    # Ljava/lang/String;

    .prologue
    .line 29
    const/16 v0, 0x3a98

    const/16 v1, 0x7530

    invoke-static {p0, v0, v1}, Lcom/netease/environment/http/HttpGet;->get(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;II)Ljava/lang/String;
    .locals 14
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeOut"    # I

    .prologue
    .line 41
    invoke-static {p0}, Lcom/netease/environment/utils/HttpUtils;->verifyURL(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    const/4 v11, 0x0

    .line 103
    :cond_0
    :goto_0
    return-object v11

    .line 43
    :cond_1
    sget-object v11, Lcom/netease/environment/http/HttpGet;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "http get:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/environment/utils/LogUtils;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const/4 v10, 0x0

    .line 47
    .local v10, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 50
    .local v4, "input":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 52
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v10, v0

    .line 53
    invoke-virtual {v10, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 54
    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 55
    const-string v11, "Accept-Encoding"

    const-string v12, "gzip"

    invoke-virtual {v10, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 59
    .local v7, "responseCode":I
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "contentEncoding":Ljava/lang/String;
    const/16 v11, 0xc8

    if-ne v7, v11, :cond_9

    .line 62
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .local v8, "sb":Ljava/lang/StringBuilder;
    if-eqz v1, :cond_7

    const-string v11, "gzip"

    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 65
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 66
    .local v3, "gzipIn":Ljava/util/zip/GZIPInputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .end local v4    # "input":Ljava/io/BufferedReader;
    .local v5, "input":Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 69
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 79
    .end local v3    # "gzipIn":Ljava/util/zip/GZIPInputStream;
    .end local v6    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 80
    .end local v1    # "contentEncoding":Ljava/lang/String;
    .end local v5    # "input":Ljava/io/BufferedReader;
    .end local v7    # "responseCode":I
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "url":Ljava/net/URL;
    .local v2, "e":Ljava/net/MalformedURLException;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 81
    sget-object v11, Lcom/netease/environment/http/HttpGet;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {v2}, Lcom/netease/environment/config/LogConfig;->saveExceptionLog(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    if-eqz v4, :cond_2

    .line 94
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 99
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_2
    :goto_3
    if-eqz v10, :cond_3

    .line 100
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 103
    :cond_3
    :goto_4
    const/4 v11, 0x0

    goto/16 :goto_0

    .end local v4    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "contentEncoding":Ljava/lang/String;
    .restart local v3    # "gzipIn":Ljava/util/zip/GZIPInputStream;
    .restart local v5    # "input":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "responseCode":I
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    .restart local v9    # "url":Ljava/net/URL;
    :cond_4
    move-object v4, v5

    .line 76
    .end local v3    # "gzipIn":Ljava/util/zip/GZIPInputStream;
    .end local v5    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    :goto_5
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_5

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 77
    :cond_5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v11

    .line 92
    if-eqz v4, :cond_6

    .line 94
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 99
    :cond_6
    :goto_6
    if-eqz v10, :cond_0

    .line 100
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 71
    .end local v6    # "line":Ljava/lang/String;
    :cond_7
    :try_start_6
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 73
    .end local v4    # "input":Ljava/io/BufferedReader;
    .restart local v5    # "input":Ljava/io/BufferedReader;
    :goto_7
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "line":Ljava/lang/String;
    if-eqz v6, :cond_e

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_7

    .line 83
    .end local v6    # "line":Ljava/lang/String;
    :catch_1
    move-exception v2

    move-object v4, v5

    .line 84
    .end local v1    # "contentEncoding":Ljava/lang/String;
    .end local v5    # "input":Ljava/io/BufferedReader;
    .end local v7    # "responseCode":I
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "url":Ljava/net/URL;
    .local v2, "e":Ljava/io/IOException;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    :goto_8
    :try_start_8
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 85
    sget-object v11, Lcom/netease/environment/http/HttpGet;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {v2}, Lcom/netease/environment/config/LogConfig;->saveExceptionLog(Ljava/lang/Exception;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 92
    if-eqz v4, :cond_8

    .line 94
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 99
    :cond_8
    :goto_9
    if-eqz v10, :cond_3

    .line 100
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    .line 95
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "contentEncoding":Ljava/lang/String;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "responseCode":I
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    .restart local v9    # "url":Ljava/net/URL;
    :catch_2
    move-exception v2

    .line 96
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v12, Lcom/netease/environment/http/HttpGet;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 92
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "line":Ljava/lang/String;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_9
    if-eqz v4, :cond_a

    .line 94
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 99
    :cond_a
    :goto_a
    if-eqz v10, :cond_3

    .line 100
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    .line 95
    :catch_3
    move-exception v2

    .line 96
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v11, Lcom/netease/environment/http/HttpGet;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 95
    .end local v1    # "contentEncoding":Ljava/lang/String;
    .end local v7    # "responseCode":I
    .end local v9    # "url":Ljava/net/URL;
    .local v2, "e":Ljava/net/MalformedURLException;
    :catch_4
    move-exception v2

    .line 96
    .local v2, "e":Ljava/io/IOException;
    sget-object v11, Lcom/netease/environment/http/HttpGet;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 95
    :catch_5
    move-exception v2

    .line 96
    sget-object v11, Lcom/netease/environment/http/HttpGet;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 87
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 88
    .local v2, "e":Ljava/lang/Exception;
    :goto_b
    :try_start_b
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    sget-object v11, Lcom/netease/environment/http/HttpGet;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-static {v2}, Lcom/netease/environment/config/LogConfig;->saveExceptionLog(Ljava/lang/Exception;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 92
    if-eqz v4, :cond_b

    .line 94
    :try_start_c
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 99
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_b
    :goto_c
    if-eqz v10, :cond_3

    .line 100
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_4

    .line 95
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v2

    .line 96
    .local v2, "e":Ljava/io/IOException;
    sget-object v11, Lcom/netease/environment/http/HttpGet;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 92
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_d
    if-eqz v4, :cond_c

    .line 94
    :try_start_d
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 99
    :cond_c
    :goto_e
    if-eqz v10, :cond_d

    .line 100
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    throw v11

    .line 95
    :catch_8
    move-exception v2

    .line 96
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v12, Lcom/netease/environment/http/HttpGet;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    .line 92
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "contentEncoding":Ljava/lang/String;
    .restart local v5    # "input":Ljava/io/BufferedReader;
    .restart local v7    # "responseCode":I
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    .restart local v9    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v11

    move-object v4, v5

    .end local v5    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    goto :goto_d

    .line 87
    .end local v4    # "input":Ljava/io/BufferedReader;
    .restart local v5    # "input":Ljava/io/BufferedReader;
    :catch_9
    move-exception v2

    move-object v4, v5

    .end local v5    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    goto :goto_b

    .line 83
    .end local v1    # "contentEncoding":Ljava/lang/String;
    .end local v7    # "responseCode":I
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "url":Ljava/net/URL;
    :catch_a
    move-exception v2

    goto/16 :goto_8

    .line 79
    :catch_b
    move-exception v2

    goto/16 :goto_2

    .end local v4    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "contentEncoding":Ljava/lang/String;
    .restart local v5    # "input":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    .restart local v7    # "responseCode":I
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    .restart local v9    # "url":Ljava/net/URL;
    :cond_e
    move-object v4, v5

    .end local v5    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "input":Ljava/io/BufferedReader;
    goto/16 :goto_5
.end method
