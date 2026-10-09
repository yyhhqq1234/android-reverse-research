.class Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;


# direct methods
.method constructor <init>(Lcom/tencent/tmassistantbase/network/PostHttpRequest;[B)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iput-object p2, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Integer;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 70
    .line 75
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v0, "http://masdk.3g.qq.com/"

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getNetStatus()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 80
    const-string v3, "cmwap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "3gwap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "uniwap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 83
    :cond_0
    new-instance v0, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v4, Ljava/net/InetSocketAddress;

    sget-object v5, Lcom/tencent/tmassistantbase/network/HttpClientUtil;->mProxyHost:Ljava/lang/String;

    sget v6, Lcom/tencent/tmassistantbase/network/HttpClientUtil;->mProxyPort:I

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 84
    iget-object v3, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, v3, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    .line 94
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_2

    .line 95
    iget-object v3, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, v3, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 99
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 100
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 102
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    const-string v1, "User-Agent"

    const-string v3, "AssistantDownloader"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    const-string v3, "application/octet-stream"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 107
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 110
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 111
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->a:[B

    invoke-virtual {v3, v0}, Ljava/io/OutputStream;->write([B)V

    .line 112
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 114
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1c
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_1a
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_16
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 116
    :try_start_2
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v4, 0xc8

    if-ne v0, v4, :cond_10

    .line 119
    if-eqz v1, :cond_d

    .line 121
    invoke-static {v1}, Lcom/tencent/tmassistantbase/util/BaseUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 122
    if-eqz v0, :cond_a

    array-length v4, v0

    const/4 v5, 0x4

    if-le v4, v5, :cond_a

    .line 124
    iget-object v4, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v5, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->a:[B

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v0, v6}, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->onFinished([B[BI)V

    .line 125
    sget-object v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->a:Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1d
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_1b
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_19
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_17
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 151
    if-eqz v1, :cond_3

    .line 153
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_e

    .line 161
    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 163
    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_f

    .line 171
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v1, v1, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_5

    .line 172
    iget-object v1, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v1, v1, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 173
    iget-object v1, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    :goto_3
    iput-object v2, v1, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    .line 176
    :cond_5
    :goto_4
    return-object v0

    .line 86
    :cond_6
    :try_start_5
    const-string v3, "ctwap"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    new-instance v0, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v4, Ljava/net/InetSocketAddress;

    sget-object v5, Lcom/tencent/tmassistantbase/network/HttpClientUtil;->mCTProxyHost:Ljava/lang/String;

    sget v6, Lcom/tencent/tmassistantbase/network/HttpClientUtil;->mProxyPort:I

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 90
    iget-object v3, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, v3, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/ConnectException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 138
    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 139
    :goto_5
    :try_start_6
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 140
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v4, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->a:[B

    const/4 v5, 0x0

    const/16 v6, 0x2bc

    invoke-virtual {v0, v4, v5, v6}, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->onFinished([B[BI)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 151
    if-eqz v1, :cond_7

    .line 153
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 161
    :cond_7
    :goto_6
    if-eqz v3, :cond_8

    .line 163
    :try_start_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 171
    :cond_8
    :goto_7
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_9

    .line 172
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 173
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    :goto_8
    iput-object v2, v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    .line 176
    :cond_9
    sget-object v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->a:Ljava/lang/Integer;

    goto :goto_4

    .line 127
    :cond_a
    :try_start_9
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v4, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->a:[B

    const/4 v5, 0x0

    const/16 v6, 0x2bd

    invoke-virtual {v0, v4, v5, v6}, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->onFinished([B[BI)V

    .line 128
    sget-object v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->a:Ljava/lang/Integer;
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_1d
    .catch Ljava/net/ConnectException; {:try_start_9 .. :try_end_9} :catch_1b
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_17
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 151
    if-eqz v1, :cond_b

    .line 153
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_10

    .line 161
    :cond_b
    :goto_9
    if-eqz v3, :cond_c

    .line 163
    :try_start_b
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_11

    .line 171
    :cond_c
    :goto_a
    iget-object v1, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v1, v1, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_5

    .line 172
    iget-object v1, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v1, v1, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 173
    iget-object v1, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    goto :goto_3

    .line 131
    :cond_d
    :try_start_c
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v4, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->a:[B

    const/4 v5, 0x0

    const/16 v6, 0x2bd

    invoke-virtual {v0, v4, v5, v6}, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->onFinished([B[BI)V

    .line 132
    sget-object v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->a:Ljava/lang/Integer;
    :try_end_c
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_1d
    .catch Ljava/net/ConnectException; {:try_start_c .. :try_end_c} :catch_1b
    .catch Ljava/net/SocketTimeoutException; {:try_start_c .. :try_end_c} :catch_19
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_17
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 151
    if-eqz v1, :cond_e

    .line 153
    :try_start_d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_12

    .line 161
    :cond_e
    :goto_b
    if-eqz v3, :cond_f

    .line 163
    :try_start_e
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_13

    .line 171
    :cond_f
    :goto_c
    iget-object v1, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v1, v1, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_5

    .line 172
    iget-object v1, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v1, v1, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 173
    iget-object v1, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    goto/16 :goto_3

    .line 135
    :cond_10
    :try_start_f
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v4, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->a:[B

    const/4 v5, 0x0

    const/16 v6, 0x2bd

    invoke-virtual {v0, v4, v5, v6}, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->onFinished([B[BI)V

    .line 136
    sget-object v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->a:Ljava/lang/Integer;
    :try_end_f
    .catch Ljava/net/MalformedURLException; {:try_start_f .. :try_end_f} :catch_1d
    .catch Ljava/net/ConnectException; {:try_start_f .. :try_end_f} :catch_1b
    .catch Ljava/net/SocketTimeoutException; {:try_start_f .. :try_end_f} :catch_19
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_17
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 151
    if-eqz v1, :cond_11

    .line 153
    :try_start_10
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_14

    .line 161
    :cond_11
    :goto_d
    if-eqz v3, :cond_12

    .line 163
    :try_start_11
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_15

    .line 171
    :cond_12
    :goto_e
    iget-object v1, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v1, v1, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_5

    .line 172
    iget-object v1, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v1, v1, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 173
    iget-object v1, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    goto/16 :goto_3

    .line 141
    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 142
    :goto_f
    :try_start_12
    invoke-virtual {v0}, Ljava/net/ConnectException;->printStackTrace()V

    .line 143
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v4, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->a:[B

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v5, v6}, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->onFinished([B[BI)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 151
    if-eqz v1, :cond_13

    .line 153
    :try_start_13
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8

    .line 161
    :cond_13
    :goto_10
    if-eqz v3, :cond_14

    .line 163
    :try_start_14
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_9

    .line 171
    :cond_14
    :goto_11
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_9

    .line 172
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 173
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    goto/16 :goto_8

    .line 144
    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 145
    :goto_12
    :try_start_15
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 146
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v4, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->a:[B

    const/4 v5, 0x0

    const/16 v6, 0x25a

    invoke-virtual {v0, v4, v5, v6}, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->onFinished([B[BI)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 151
    if-eqz v1, :cond_15

    .line 153
    :try_start_16
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_a

    .line 161
    :cond_15
    :goto_13
    if-eqz v3, :cond_16

    .line 163
    :try_start_17
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_b

    .line 171
    :cond_16
    :goto_14
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_9

    .line 172
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 173
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    goto/16 :goto_8

    .line 147
    :catch_3
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    .line 148
    :goto_15
    :try_start_18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v4, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->a:[B

    const/4 v5, 0x0

    const/16 v6, 0x25c

    invoke-virtual {v0, v4, v5, v6}, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->onFinished([B[BI)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 151
    if-eqz v1, :cond_17

    .line 153
    :try_start_19
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_c

    .line 161
    :cond_17
    :goto_16
    if-eqz v3, :cond_18

    .line 163
    :try_start_1a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_d

    .line 171
    :cond_18
    :goto_17
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_9

    .line 172
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 173
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    goto/16 :goto_8

    .line 151
    :catchall_0
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_18
    if-eqz v1, :cond_19

    .line 153
    :try_start_1b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_4

    .line 161
    :cond_19
    :goto_19
    if-eqz v3, :cond_1a

    .line 163
    :try_start_1c
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_5

    .line 171
    :cond_1a
    :goto_1a
    iget-object v1, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v1, v1, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1b

    .line 172
    iget-object v1, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iget-object v1, v1, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 173
    iget-object v1, p0, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/PostHttpRequest;

    iput-object v2, v1, Lcom/tencent/tmassistantbase/network/PostHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    .line 151
    :cond_1b
    throw v0

    .line 154
    :catch_4
    move-exception v1

    .line 155
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19

    .line 164
    :catch_5
    move-exception v1

    .line 165
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a

    .line 154
    :catch_6
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 164
    :catch_7
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 154
    :catch_8
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_10

    .line 164
    :catch_9
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_11

    .line 154
    :catch_a
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_13

    .line 164
    :catch_b
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_14

    .line 154
    :catch_c
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16

    .line 164
    :catch_d
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17

    .line 154
    :catch_e
    move-exception v1

    .line 155
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 164
    :catch_f
    move-exception v1

    .line 165
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 154
    :catch_10
    move-exception v1

    .line 155
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    .line 164
    :catch_11
    move-exception v1

    .line 165
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a

    .line 154
    :catch_12
    move-exception v1

    .line 155
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_b

    .line 164
    :catch_13
    move-exception v1

    .line 165
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    .line 154
    :catch_14
    move-exception v1

    .line 155
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_d

    .line 164
    :catch_15
    move-exception v1

    .line 165
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_e

    .line 151
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto/16 :goto_18

    :catchall_2
    move-exception v0

    goto/16 :goto_18

    .line 147
    :catch_16
    move-exception v0

    move-object v1, v2

    goto/16 :goto_15

    :catch_17
    move-exception v0

    goto/16 :goto_15

    .line 144
    :catch_18
    move-exception v0

    move-object v1, v2

    goto/16 :goto_12

    :catch_19
    move-exception v0

    goto/16 :goto_12

    .line 141
    :catch_1a
    move-exception v0

    move-object v1, v2

    goto/16 :goto_f

    :catch_1b
    move-exception v0

    goto/16 :goto_f

    .line 138
    :catch_1c
    move-exception v0

    move-object v1, v2

    goto/16 :goto_5

    :catch_1d
    move-exception v0

    goto/16 :goto_5
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/tencent/tmassistantbase/network/PostHttpRequest$1;->call()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
