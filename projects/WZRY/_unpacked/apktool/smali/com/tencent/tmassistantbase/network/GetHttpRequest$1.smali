.class Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;


# direct methods
.method constructor <init>(Lcom/tencent/tmassistantbase/network/GetHttpRequest;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iput-object p2, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 72
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->a:Ljava/lang/String;

    .line 77
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://appicsh.qq.com/cgi-bin/appstage/yyb_get_userapp_info"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/tencent/tmassistantbase/util/GlobalUtil;->getNetStatus()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 84
    const-string v2, "cmwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "3gwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "uniwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 87
    :cond_0
    new-instance v0, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v3, Ljava/net/InetSocketAddress;

    sget-object v4, Lcom/tencent/tmassistantbase/network/HttpClientUtil;->mProxyHost:Ljava/lang/String;

    sget v5, Lcom/tencent/tmassistantbase/network/HttpClientUtil;->mProxyPort:I

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 88
    iget-object v2, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, v2, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    .line 98
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_2

    .line 99
    iget-object v2, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, v2, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 105
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 106
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 108
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_b

    .line 110
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_b

    .line 112
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v1, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v1, v1, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mInputStream:Ljava/io/InputStream;

    .line 113
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_b

    .line 116
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mInputStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/tencent/tmassistantbase/util/BaseUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 117
    if-eqz v0, :cond_9

    array-length v1, v0

    if-lez v1, :cond_9

    .line 119
    new-instance v1, Ljava/lang/String;

    const-string/jumbo v2, "utf-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 120
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 121
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 123
    const-string v1, "NetworkTask"

    const-string/jumbo v2, "success to received data"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->onFinished(Lorg/json/JSONObject;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_3

    .line 156
    :try_start_1
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 161
    :goto_1
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iput-object v6, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mInputStream:Ljava/io/InputStream;

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_4

    .line 165
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 166
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    :goto_2
    iput-object v6, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    .line 169
    :cond_4
    return-void

    .line 90
    :cond_5
    :try_start_2
    const-string v2, "ctwap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    new-instance v0, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v3, Ljava/net/InetSocketAddress;

    sget-object v4, Lcom/tencent/tmassistantbase/network/HttpClientUtil;->mCTProxyHost:Ljava/lang/String;

    sget v5, Lcom/tencent/tmassistantbase/network/HttpClientUtil;->mProxyPort:I

    invoke-direct {v3, v4, v5}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 94
    iget-object v2, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    invoke-virtual {v1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, v2, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    :try_start_3
    invoke-virtual {v0}, Ljava/net/ConnectException;->printStackTrace()V

    .line 143
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->onFinished(Lorg/json/JSONObject;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_6

    .line 156
    :try_start_4
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 161
    :goto_3
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iput-object v6, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mInputStream:Ljava/io/InputStream;

    .line 164
    :cond_6
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_4

    .line 165
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 166
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    goto :goto_2

    .line 128
    :cond_7
    :try_start_5
    const-string v0, "NetworkTask"

    const-string v1, "failed to convert byte[] to string"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    const/4 v1, 0x0

    const/16 v2, 0x25e

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->onFinished(Lorg/json/JSONObject;I)V
    :try_end_5
    .catch Ljava/net/ConnectException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 154
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_8

    .line 156
    :try_start_6
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 161
    :goto_4
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iput-object v6, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mInputStream:Ljava/io/InputStream;

    .line 164
    :cond_8
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_4

    .line 165
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 166
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    goto/16 :goto_2

    .line 133
    :cond_9
    :try_start_7
    const-string v0, "NetworkTask"

    const-string v1, "data invalidate"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    const/4 v1, 0x0

    const/16 v2, 0x2c0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->onFinished(Lorg/json/JSONObject;I)V
    :try_end_7
    .catch Ljava/net/ConnectException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 154
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_a

    .line 156
    :try_start_8
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    .line 161
    :goto_5
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iput-object v6, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mInputStream:Ljava/io/InputStream;

    .line 164
    :cond_a
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_4

    .line 165
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 166
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    goto/16 :goto_2

    .line 140
    :cond_b
    :try_start_9
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    const/4 v1, 0x0

    const/16 v2, 0x2c0

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->onFinished(Lorg/json/JSONObject;I)V
    :try_end_9
    .catch Ljava/net/ConnectException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 154
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_c

    .line 156
    :try_start_a
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    .line 161
    :goto_6
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iput-object v6, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mInputStream:Ljava/io/InputStream;

    .line 164
    :cond_c
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_4

    .line 165
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 166
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    goto/16 :goto_2

    .line 145
    :catch_1
    move-exception v0

    .line 146
    :try_start_b
    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 147
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    const/4 v1, 0x0

    const/16 v2, 0x25a

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->onFinished(Lorg/json/JSONObject;I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 154
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_d

    .line 156
    :try_start_c
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 161
    :goto_7
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iput-object v6, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mInputStream:Ljava/io/InputStream;

    .line 164
    :cond_d
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_4

    .line 165
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 166
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    goto/16 :goto_2

    .line 149
    :catch_2
    move-exception v0

    .line 151
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 152
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    const/4 v1, 0x0

    const/16 v2, 0x25c

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->onFinished(Lorg/json/JSONObject;I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 154
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_e

    .line 156
    :try_start_e
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 161
    :goto_8
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iput-object v6, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mInputStream:Ljava/io/InputStream;

    .line 164
    :cond_e
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_4

    .line 165
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v0, v0, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 166
    iget-object v0, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    goto/16 :goto_2

    .line 157
    :catch_3
    move-exception v1

    .line 158
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    :goto_9
    iget-object v1, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iput-object v6, v1, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mInputStream:Ljava/io/InputStream;

    .line 164
    :cond_f
    iget-object v1, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v1, v1, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_10

    .line 165
    iget-object v1, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v1, v1, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 166
    iget-object v1, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iput-object v6, v1, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mHttpConnection:Ljava/net/HttpURLConnection;

    .line 154
    :cond_10
    throw v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v1, v1, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_f

    .line 156
    :try_start_f
    iget-object v1, p0, Lcom/tencent/tmassistantbase/network/GetHttpRequest$1;->b:Lcom/tencent/tmassistantbase/network/GetHttpRequest;

    iget-object v1, v1, Lcom/tencent/tmassistantbase/network/GetHttpRequest;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    goto :goto_9

    .line 157
    :catch_4
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 157
    :catch_5
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 157
    :catch_6
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 157
    :catch_7
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 157
    :catch_8
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 157
    :catch_9
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 157
    :catch_a
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6
.end method
