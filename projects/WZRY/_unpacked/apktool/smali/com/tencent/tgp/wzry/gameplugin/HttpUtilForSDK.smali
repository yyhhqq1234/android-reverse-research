.class public Lcom/tencent/tgp/wzry/gameplugin/HttpUtilForSDK;
.super Ljava/lang/Object;
.source "HttpUtilForSDK.java"


# static fields
.field private static final BUFSIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "HttpUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static download(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "patchUrl"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 23
    const/4 v7, 0x0

    .line 24
    .local v7, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v0, 0x0

    .line 26
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/tgp/wzry/gameplugin/HttpUtilForSDK;->getUrlConnection(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v7

    .line 27
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 29
    .local v6, "statusCode":I
    const-string v9, "HttpUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "status code :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    const/16 v9, 0xc8

    if-eq v6, v9, :cond_2

    const/16 v9, 0x130

    if-eq v6, v9, :cond_2

    .line 31
    const-string v9, "HttpUtil"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "download error, status:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", url:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    if-eqz v7, :cond_0

    .line 49
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 51
    :cond_0
    if-eqz v0, :cond_1

    .line 53
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 58
    .end local v6    # "statusCode":I
    :cond_1
    :goto_0
    return-object v8

    .line 34
    .restart local v6    # "statusCode":I
    :cond_2
    :try_start_2
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 37
    .local v4, "inputStream":Ljava/io/InputStream;
    const/16 v9, 0x1000

    new-array v2, v9, [B

    .line 39
    .local v2, "buffer":[B
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v9, 0x1000

    invoke-direct {v1, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    :goto_1
    const/4 v9, 0x0

    :try_start_3
    array-length v10, v2

    invoke-virtual {v4, v2, v9, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .local v5, "nRead":I
    const/4 v9, -0x1

    if-eq v5, v9, :cond_4

    .line 41
    const/4 v9, 0x0

    invoke-virtual {v1, v2, v9, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 45
    .end local v5    # "nRead":I
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 46
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "statusCode":I
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v3, "e":Ljava/lang/Throwable;
    :goto_2
    :try_start_4
    const-string v9, "HttpUtil"

    const-string v10, ""

    invoke-static {v9, v10, v3}, Lcom/tencent/tgp/wzry/gameplugin/XLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 48
    if-eqz v7, :cond_3

    .line 49
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 51
    :cond_3
    if-eqz v0, :cond_1

    .line 53
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 54
    :catch_1
    move-exception v9

    goto :goto_0

    .line 43
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "e":Ljava/lang/Throwable;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "nRead":I
    .restart local v6    # "statusCode":I
    :cond_4
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 44
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v8

    .line 48
    if-eqz v7, :cond_5

    .line 49
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 51
    :cond_5
    if-eqz v1, :cond_6

    .line 53
    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_6
    :goto_3
    move-object v0, v1

    .line 55
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_0

    .line 48
    .end local v2    # "buffer":[B
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "nRead":I
    .end local v6    # "statusCode":I
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v7, :cond_7

    .line 49
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 51
    :cond_7
    if-eqz v0, :cond_8

    .line 53
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 55
    :cond_8
    :goto_5
    throw v8

    .line 54
    .restart local v6    # "statusCode":I
    :catch_2
    move-exception v9

    goto :goto_0

    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "nRead":I
    :catch_3
    move-exception v9

    goto :goto_3

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "buffer":[B
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "nRead":I
    .end local v6    # "statusCode":I
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v9

    goto :goto_5

    .line 48
    .end local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "statusCode":I
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_4

    .line 45
    .end local v2    # "buffer":[B
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "statusCode":I
    :catch_5
    move-exception v3

    goto :goto_2
.end method

.method private static getUrlConnection(Landroid/content/Context;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "patchUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 64
    .local v0, "url":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 65
    .local v1, "urlConnection":Ljava/net/HttpURLConnection;
    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 66
    return-object v1
.end method
