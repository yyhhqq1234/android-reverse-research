.class public Lcom/netease/environment/http/HttpPost;
.super Ljava/lang/Object;
.source "HttpPost.java"


# static fields
.field private static final CONNECT_TIME_OUT_DEFAULT:I = 0x3a98

.field private static final READ_TIME_OUT_DEFAULT:I = 0x7530

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/netease/environment/http/HttpPost;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/environment/http/HttpPost;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "postData"    # Ljava/lang/String;

    .prologue
    .line 32
    const/16 v0, 0x3a98

    const/16 v1, 0x7530

    invoke-static {p0, p1, v0, v1}, Lcom/netease/environment/http/HttpPost;->post(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 13
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "postData"    # Ljava/lang/String;
    .param p2, "connectTimeout"    # I
    .param p3, "readTimeOut"    # I

    .prologue
    const/4 v11, 0x0

    .line 45
    invoke-static {p0}, Lcom/netease/environment/utils/HttpUtils;->verifyURL(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    move-object v10, v11

    .line 100
    :goto_0
    return-object v10

    .line 47
    :cond_0
    const/4 v2, 0x0

    .line 48
    .local v2, "connection":Ljava/net/HttpURLConnection;
    const/4 v7, 0x0

    .line 50
    .local v7, "result":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 51
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 52
    invoke-virtual {v2, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 53
    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 54
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 55
    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 56
    const-string v10, "POST"

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 57
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 58
    const-string v10, "Content-Type"

    const-string v12, "application/x-www-form-urlencoded"

    invoke-virtual {v2, v10, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v10, "Connection"

    const-string v12, "close"

    invoke-virtual {v2, v10, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_1

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 64
    .local v1, "bytes":[B
    array-length v10, v1

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 65
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 66
    .local v5, "os":Ljava/io/OutputStream;
    invoke-virtual {v5, v1}, Ljava/io/OutputStream;->write([B)V

    .line 67
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 68
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 71
    .end local v1    # "bytes":[B
    .end local v5    # "os":Ljava/io/OutputStream;
    :cond_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 72
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 74
    .local v6, "reader":Ljava/io/BufferedReader;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .end local v7    # "result":Ljava/lang/StringBuilder;
    .local v8, "result":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 76
    .local v4, "line":Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 77
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 80
    :catch_0
    move-exception v3

    move-object v7, v8

    .line 81
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "result":Ljava/lang/StringBuilder;
    .end local v9    # "url":Ljava/net/URL;
    .local v3, "e":Ljava/net/MalformedURLException;
    .restart local v7    # "result":Ljava/lang/StringBuilder;
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 82
    sget-object v10, Lcom/netease/environment/http/HttpPost;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-static {v3}, Lcom/netease/environment/config/LogConfig;->saveExceptionLog(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    if-eqz v2, :cond_2

    .line 94
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 97
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :cond_2
    :goto_3
    if-nez v7, :cond_5

    move-object v10, v11

    .line 98
    goto/16 :goto_0

    .line 79
    .end local v7    # "result":Ljava/lang/StringBuilder;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "result":Ljava/lang/StringBuilder;
    .restart local v9    # "url":Ljava/net/URL;
    :cond_3
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 93
    if-eqz v2, :cond_6

    .line 94
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v7, v8

    .end local v8    # "result":Ljava/lang/StringBuilder;
    .restart local v7    # "result":Ljava/lang/StringBuilder;
    goto :goto_3

    .line 84
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v9    # "url":Ljava/net/URL;
    :catch_1
    move-exception v3

    .line 85
    .local v3, "e":Ljava/io/IOException;
    :goto_4
    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 86
    sget-object v10, Lcom/netease/environment/http/HttpPost;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {v3}, Lcom/netease/environment/config/LogConfig;->saveExceptionLog(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 93
    if-eqz v2, :cond_2

    .line 94
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    .line 88
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 89
    .local v3, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 90
    sget-object v10, Lcom/netease/environment/http/HttpPost;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lcom/netease/environment/utils/LogUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-static {v3}, Lcom/netease/environment/config/LogConfig;->saveExceptionLog(Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 93
    if-eqz v2, :cond_2

    .line 94
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3

    .line 93
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_6
    if-eqz v2, :cond_4

    .line 94
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v10

    .line 100
    :cond_5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 93
    .end local v7    # "result":Ljava/lang/StringBuilder;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "result":Ljava/lang/StringBuilder;
    .restart local v9    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v10

    move-object v7, v8

    .end local v8    # "result":Ljava/lang/StringBuilder;
    .restart local v7    # "result":Ljava/lang/StringBuilder;
    goto :goto_6

    .line 88
    .end local v7    # "result":Ljava/lang/StringBuilder;
    .restart local v8    # "result":Ljava/lang/StringBuilder;
    :catch_3
    move-exception v3

    move-object v7, v8

    .end local v8    # "result":Ljava/lang/StringBuilder;
    .restart local v7    # "result":Ljava/lang/StringBuilder;
    goto :goto_5

    .line 84
    .end local v7    # "result":Ljava/lang/StringBuilder;
    .restart local v8    # "result":Ljava/lang/StringBuilder;
    :catch_4
    move-exception v3

    move-object v7, v8

    .end local v8    # "result":Ljava/lang/StringBuilder;
    .restart local v7    # "result":Ljava/lang/StringBuilder;
    goto :goto_4

    .line 80
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v9    # "url":Ljava/net/URL;
    :catch_5
    move-exception v3

    goto :goto_2

    .end local v7    # "result":Ljava/lang/StringBuilder;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "result":Ljava/lang/StringBuilder;
    .restart local v9    # "url":Ljava/net/URL;
    :cond_6
    move-object v7, v8

    .end local v8    # "result":Ljava/lang/StringBuilder;
    .restart local v7    # "result":Ljava/lang/StringBuilder;
    goto :goto_3
.end method
