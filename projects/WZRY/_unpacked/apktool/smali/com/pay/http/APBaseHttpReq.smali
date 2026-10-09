.class public abstract Lcom/pay/http/APBaseHttpReq;
.super Ljava/lang/Thread;
.source "APBaseHttpReq.java"


# instance fields
.field protected httpAns:Lcom/pay/http/IAPHttpAns;

.field public httpParam:Lcom/pay/http/APBaseHttpParam;

.field protected httpURLConnection:Ljava/net/HttpURLConnection;

.field private isStop:Z

.field private resultContent:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pay/http/APBaseHttpReq;->isStop:Z

    .line 50
    new-instance v0, Lcom/pay/http/APBaseHttpParam;

    invoke-direct {v0}, Lcom/pay/http/APBaseHttpParam;-><init>()V

    iput-object v0, p0, Lcom/pay/http/APBaseHttpReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    .line 51
    iget-object v0, p0, Lcom/pay/http/APBaseHttpReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/pay/http/APBaseHttpParam;->reqParam:Ljava/util/HashMap;

    .line 52
    iget-object v0, p0, Lcom/pay/http/APBaseHttpReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    invoke-static {}, Lcom/pay/tool/APMidasTools;->getSysServerDomain()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pay/http/APBaseHttpParam;->domain:Ljava/lang/String;

    .line 53
    return-void
.end method

.method private closeOutput()V
    .locals 5

    .prologue
    .line 251
    :try_start_0
    iget-object v3, p0, Lcom/pay/http/APBaseHttpReq;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getDoOutput()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 253
    .local v1, "isoutPut":Z
    if-eqz v1, :cond_0

    .line 255
    :try_start_1
    iget-object v3, p0, Lcom/pay/http/APBaseHttpReq;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    .line 256
    iget-object v3, p0, Lcom/pay/http/APBaseHttpReq;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 265
    .end local v1    # "isoutPut":Z
    :cond_0
    :goto_0
    return-void

    .line 257
    .restart local v1    # "isoutPut":Z
    :catch_0
    move-exception v2

    .local v2, "t":Ljava/lang/Throwable;
    goto :goto_0

    .line 262
    .end local v1    # "isoutPut":Z
    .end local v2    # "t":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 263
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "closeOutput"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private closeStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 270
    if-eqz p1, :cond_0

    .line 271
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 274
    :cond_0
    if-eqz p2, :cond_1

    .line 275
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 276
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/pay/http/APBaseHttpReq;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private createConnection()V
    .locals 7

    .prologue
    .line 219
    const/4 v1, 0x0

    .line 222
    .local v1, "reqUrl":Ljava/net/URL;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v4, p0, Lcom/pay/http/APBaseHttpReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    iget-object v4, v4, Lcom/pay/http/APBaseHttpParam;->url:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "reqUrl":Ljava/net/URL;
    .local v2, "reqUrl":Ljava/net/URL;
    move-object v1, v2

    .line 227
    .end local v2    # "reqUrl":Ljava/net/URL;
    .restart local v1    # "reqUrl":Ljava/net/URL;
    :goto_0
    sget-object v3, Lcom/tencent/midas/api/APMidasPayAPI;->env:Ljava/lang/String;

    .line 228
    .local v3, "strEnv":Ljava/lang/String;
    const-string/jumbo v4, "testing"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 229
    const-string v4, "APHttp Request"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URL = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/pay/http/APBaseHttpReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    iget-object v6, v6, Lcom/pay/http/APBaseHttpParam;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :goto_1
    iget-object v4, p0, Lcom/pay/http/APBaseHttpReq;->httpAns:Lcom/pay/http/IAPHttpAns;

    invoke-interface {v4, p0}, Lcom/pay/http/IAPHttpAns;->onStart(Lcom/pay/http/APBaseHttpReq;)V

    .line 237
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    iput-object v4, p0, Lcom/pay/http/APBaseHttpReq;->httpURLConnection:Ljava/net/HttpURLConnection;

    .line 238
    iget-object v4, p0, Lcom/pay/http/APBaseHttpReq;->httpURLConnection:Ljava/net/HttpURLConnection;

    iget-object v5, p0, Lcom/pay/http/APBaseHttpReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    iget v5, v5, Lcom/pay/http/APBaseHttpParam;->connectTimeout:I

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 239
    iget-object v4, p0, Lcom/pay/http/APBaseHttpReq;->httpURLConnection:Ljava/net/HttpURLConnection;

    iget-object v5, p0, Lcom/pay/http/APBaseHttpReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    iget v5, v5, Lcom/pay/http/APBaseHttpParam;->readTimeout:I

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 240
    iget-object v4, p0, Lcom/pay/http/APBaseHttpReq;->httpURLConnection:Ljava/net/HttpURLConnection;

    const-string v5, "Host"

    iget-object v6, p0, Lcom/pay/http/APBaseHttpReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    iget-object v6, v6, Lcom/pay/http/APBaseHttpParam;->defaultDomain:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v4, p0, Lcom/pay/http/APBaseHttpReq;->httpURLConnection:Ljava/net/HttpURLConnection;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    :goto_2
    return-void

    .line 223
    .end local v3    # "strEnv":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0

    .line 231
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .restart local v3    # "strEnv":Ljava/lang/String;
    :cond_0
    const-string v4, "APHttp Request"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "URL = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/pay/http/APBaseHttpReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    iget-object v6, v6, Lcom/pay/http/APBaseHttpParam;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " HOST = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/pay/http/APBaseHttpReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    iget-object v6, v6, Lcom/pay/http/APBaseHttpParam;->defaultDomain:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 242
    :catch_1
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "createConnection"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private initRequest()V
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/pay/http/APBaseHttpReq;->constructParam()V

    .line 112
    iget-object v0, p0, Lcom/pay/http/APBaseHttpReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    invoke-virtual {v0}, Lcom/pay/http/APBaseHttpParam;->constructUrl()V

    .line 115
    invoke-virtual {p0}, Lcom/pay/http/APBaseHttpReq;->preCreateConnection()V

    .line 118
    invoke-direct {p0}, Lcom/pay/http/APBaseHttpReq;->createConnection()V

    .line 121
    invoke-direct {p0}, Lcom/pay/http/APBaseHttpReq;->closeOutput()V

    .line 124
    invoke-virtual {p0}, Lcom/pay/http/APBaseHttpReq;->setHeader()V

    .line 127
    invoke-virtual {p0}, Lcom/pay/http/APBaseHttpReq;->setBody()V

    .line 131
    return-void
.end method

.method private requestProgress()V
    .locals 15

    .prologue
    const/16 v6, 0xc8

    .line 136
    const/4 v11, 0x0

    .line 137
    .local v11, "inputStream":Ljava/io/InputStream;
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 140
    .local v13, "outputStream":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/pay/http/APBaseHttpReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/pay/http/APBaseHttpParam;->begTime:J

    .line 142
    invoke-direct {p0}, Lcom/pay/http/APBaseHttpReq;->initRequest()V

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/pay/http/APBaseHttpReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    iget-object v1, v1, Lcom/pay/http/APBaseHttpParam;->sendType:Ljava/lang/String;

    const-string v4, "POST"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    new-instance v12, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/pay/http/APBaseHttpReq;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v12, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 149
    .local v12, "outStream":Ljava/io/DataOutputStream;
    iget-object v1, p0, Lcom/pay/http/APBaseHttpReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    iget-object v1, v1, Lcom/pay/http/APBaseHttpParam;->urlParams:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 150
    invoke-virtual {v12}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    .end local v12    # "outStream":Ljava/io/DataOutputStream;
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/pay/http/APBaseHttpReq;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    .line 157
    iget-object v1, p0, Lcom/pay/http/APBaseHttpReq;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    if-ne v1, v6, :cond_4

    .line 158
    const/4 v3, 0x0

    .line 159
    .local v3, "len":I
    const/4 v14, 0x0

    .line 160
    .local v14, "receivedLen":I
    const/16 v1, 0x400

    new-array v2, v1, [B

    .line 161
    .local v2, "buf":[B
    :goto_1
    invoke-virtual {v11, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_3

    .line 162
    iget-boolean v1, p0, Lcom/pay/http/APBaseHttpReq;->isStop:Z

    if-eqz v1, :cond_2

    .line 163
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    invoke-direct {p0, v11, v13}, Lcom/pay/http/APBaseHttpReq;->closeStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 204
    iget-object v1, p0, Lcom/pay/http/APBaseHttpReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    iget-object v1, v1, Lcom/pay/http/APBaseHttpParam;->reqType:Ljava/lang/String;

    const-string v4, "https://"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    const-string v1, "APBaseHttpReq"

    const-string v4, "finally https"

    invoke-static {v1, v4}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :try_start_2
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 209
    .local v0, "ctx":Ljavax/net/ssl/SSLContext;
    const/4 v1, 0x0

    const/4 v4, 0x0

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 210
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 216
    .end local v0    # "ctx":Ljavax/net/ssl/SSLContext;
    .end local v2    # "buf":[B
    .end local v3    # "len":I
    .end local v14    # "receivedLen":I
    :cond_1
    :goto_2
    return-void

    .line 152
    :catch_0
    move-exception v7

    .line 153
    .local v7, "e":Ljava/lang/Throwable;
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 182
    .end local v7    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v7

    .line 184
    .local v7, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    :try_start_4
    const-string/jumbo v10, "\u7f51\u7edc\u8fde\u63a5\u8d85\u65f6,\u8bf7\u68c0\u67e5\u7f51\u7edc"

    .line 185
    .local v10, "errorMsg":Ljava/lang/String;
    invoke-direct {p0, v11, v13}, Lcom/pay/http/APBaseHttpReq;->closeStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 186
    const/4 v1, -0x7

    const/4 v4, -0x1

    invoke-direct {p0, v1, v4, v7, v10}, Lcom/pay/http/APBaseHttpReq;->tryAgain(IILjava/lang/Exception;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 202
    invoke-direct {p0, v11, v13}, Lcom/pay/http/APBaseHttpReq;->closeStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 204
    iget-object v1, p0, Lcom/pay/http/APBaseHttpReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    iget-object v1, v1, Lcom/pay/http/APBaseHttpParam;->reqType:Ljava/lang/String;

    const-string v4, "https://"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    const-string v1, "APBaseHttpReq"

    const-string v4, "finally https"

    invoke-static {v1, v4}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :try_start_5
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 209
    .restart local v0    # "ctx":Ljavax/net/ssl/SSLContext;
    const/4 v1, 0x0

    const/4 v4, 0x0

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 210
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 211
    .end local v0    # "ctx":Ljavax/net/ssl/SSLContext;
    :catch_2
    move-exception v8

    .line 212
    .local v8, "e1":Ljava/lang/Exception;
    const-string v1, "APBaseHttpReq"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finally Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 211
    .end local v7    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    .end local v8    # "e1":Ljava/lang/Exception;
    .end local v10    # "errorMsg":Ljava/lang/String;
    .restart local v2    # "buf":[B
    .restart local v3    # "len":I
    .restart local v14    # "receivedLen":I
    :catch_3
    move-exception v8

    .line 212
    .restart local v8    # "e1":Ljava/lang/Exception;
    const-string v1, "APBaseHttpReq"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finally Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 166
    .end local v8    # "e1":Ljava/lang/Exception;
    :cond_2
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v13, v2, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 168
    add-int/2addr v14, v3

    .line 170
    iget-object v1, p0, Lcom/pay/http/APBaseHttpReq;->httpAns:Lcom/pay/http/IAPHttpAns;

    int-to-long v4, v14

    move-object v6, p0

    invoke-interface/range {v1 .. v6}, Lcom/pay/http/IAPHttpAns;->onReceive([BIJLcom/pay/http/APBaseHttpReq;)V
    :try_end_6
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 187
    .end local v2    # "buf":[B
    .end local v3    # "len":I
    .end local v14    # "receivedLen":I
    :catch_4
    move-exception v7

    .line 189
    .local v7, "e":Ljava/net/SocketTimeoutException;
    :try_start_7
    const-string/jumbo v10, "\u7f51\u7edc\u54cd\u5e94\u8d85\u65f6,\u8bf7\u68c0\u67e5\u7f51\u7edc"

    .line 190
    .restart local v10    # "errorMsg":Ljava/lang/String;
    invoke-direct {p0, v11, v13}, Lcom/pay/http/APBaseHttpReq;->closeStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 191
    const/4 v1, -0x8

    const/4 v4, -0x1

    invoke-direct {p0, v1, v4, v7, v10}, Lcom/pay/http/APBaseHttpReq;->tryAgain(IILjava/lang/Exception;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 202
    invoke-direct {p0, v11, v13}, Lcom/pay/http/APBaseHttpReq;->closeStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 204
    iget-object v1, p0, Lcom/pay/http/APBaseHttpReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    iget-object v1, v1, Lcom/pay/http/APBaseHttpParam;->reqType:Ljava/lang/String;

    const-string v4, "https://"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    const-string v1, "APBaseHttpReq"

    const-string v4, "finally https"

    invoke-static {v1, v4}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :try_start_8
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 209
    .restart local v0    # "ctx":Ljavax/net/ssl/SSLContext;
    const/4 v1, 0x0

    const/4 v4, 0x0

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 210
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_2

    .line 211
    .end local v0    # "ctx":Ljavax/net/ssl/SSLContext;
    :catch_5
    move-exception v8

    .line 212
    .restart local v8    # "e1":Ljava/lang/Exception;
    const-string v1, "APBaseHttpReq"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finally Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 173
    .end local v7    # "e":Ljava/net/SocketTimeoutException;
    .end local v8    # "e1":Ljava/lang/Exception;
    .end local v10    # "errorMsg":Ljava/lang/String;
    .restart local v2    # "buf":[B
    .restart local v3    # "len":I
    .restart local v14    # "receivedLen":I
    :cond_3
    :try_start_9
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/pay/http/APBaseHttpReq;->resultContent:[B

    .line 175
    iget-object v1, p0, Lcom/pay/http/APBaseHttpReq;->httpAns:Lcom/pay/http/IAPHttpAns;

    invoke-interface {v1, p0}, Lcom/pay/http/IAPHttpAns;->onFinish(Lcom/pay/http/APBaseHttpReq;)V

    .line 177
    const/4 v1, 0x0

    const/16 v4, 0xc8

    invoke-direct {p0, v1, v4}, Lcom/pay/http/APBaseHttpReq;->sendReportData(II)V
    :try_end_9
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 202
    .end local v2    # "buf":[B
    .end local v3    # "len":I
    .end local v14    # "receivedLen":I
    :goto_3
    invoke-direct {p0, v11, v13}, Lcom/pay/http/APBaseHttpReq;->closeStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 204
    iget-object v1, p0, Lcom/pay/http/APBaseHttpReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    iget-object v1, v1, Lcom/pay/http/APBaseHttpParam;->reqType:Ljava/lang/String;

    const-string v4, "https://"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    const-string v1, "APBaseHttpReq"

    const-string v4, "finally https"

    invoke-static {v1, v4}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :try_start_a
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 209
    .restart local v0    # "ctx":Ljavax/net/ssl/SSLContext;
    const/4 v1, 0x0

    const/4 v4, 0x0

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 210
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_2

    .line 211
    .end local v0    # "ctx":Ljavax/net/ssl/SSLContext;
    :catch_6
    move-exception v8

    .line 212
    .restart local v8    # "e1":Ljava/lang/Exception;
    const-string v1, "APBaseHttpReq"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finally Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 179
    .end local v8    # "e1":Ljava/lang/Exception;
    :cond_4
    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u7f51\u7edc\u9519\u8bef(\u9519\u8bef\u7801"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/pay/http/APBaseHttpReq;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 180
    .restart local v10    # "errorMsg":Ljava/lang/String;
    const/16 v1, -0xa

    iget-object v4, p0, Lcom/pay/http/APBaseHttpReq;->httpURLConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p0, v1, v4, v5, v10}, Lcom/pay/http/APBaseHttpReq;->tryAgain(IILjava/lang/Exception;Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    .line 192
    .end local v10    # "errorMsg":Ljava/lang/String;
    :catch_7
    move-exception v7

    .line 193
    .local v7, "e":Ljava/io/IOException;
    :try_start_c
    const-string/jumbo v10, "\u7f51\u7edc\u8fde\u63a5\u5f02\u5e38,\u8bf7\u68c0\u67e5\u7f51\u7edc"

    .line 194
    .restart local v10    # "errorMsg":Ljava/lang/String;
    invoke-static {v7}, Lcom/pay/tool/APMidasTools;->getErrorCodeFromException(Ljava/io/IOException;)I

    move-result v9

    .line 195
    .local v9, "error":I
    const/4 v1, -0x1

    invoke-direct {p0, v9, v1, v7, v10}, Lcom/pay/http/APBaseHttpReq;->tryAgain(IILjava/lang/Exception;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 202
    invoke-direct {p0, v11, v13}, Lcom/pay/http/APBaseHttpReq;->closeStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 204
    iget-object v1, p0, Lcom/pay/http/APBaseHttpReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    iget-object v1, v1, Lcom/pay/http/APBaseHttpParam;->reqType:Ljava/lang/String;

    const-string v4, "https://"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    const-string v1, "APBaseHttpReq"

    const-string v4, "finally https"

    invoke-static {v1, v4}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :try_start_d
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 209
    .restart local v0    # "ctx":Ljavax/net/ssl/SSLContext;
    const/4 v1, 0x0

    const/4 v4, 0x0

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 210
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    goto/16 :goto_2

    .line 211
    .end local v0    # "ctx":Ljavax/net/ssl/SSLContext;
    :catch_8
    move-exception v8

    .line 212
    .restart local v8    # "e1":Ljava/lang/Exception;
    const-string v1, "APBaseHttpReq"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finally Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 196
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "e1":Ljava/lang/Exception;
    .end local v9    # "error":I
    .end local v10    # "errorMsg":Ljava/lang/String;
    :catch_9
    move-exception v7

    .line 198
    .local v7, "e":Ljava/lang/Exception;
    :try_start_e
    const-string/jumbo v10, "\u7f51\u7edc\u9519\u8bef\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    .line 199
    .restart local v10    # "errorMsg":Ljava/lang/String;
    invoke-direct {p0, v11, v13}, Lcom/pay/http/APBaseHttpReq;->closeStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 200
    const/4 v1, -0x6

    const/4 v4, -0x1

    invoke-direct {p0, v1, v4, v7, v10}, Lcom/pay/http/APBaseHttpReq;->tryAgain(IILjava/lang/Exception;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 202
    invoke-direct {p0, v11, v13}, Lcom/pay/http/APBaseHttpReq;->closeStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 204
    iget-object v1, p0, Lcom/pay/http/APBaseHttpReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    iget-object v1, v1, Lcom/pay/http/APBaseHttpParam;->reqType:Ljava/lang/String;

    const-string v4, "https://"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    const-string v1, "APBaseHttpReq"

    const-string v4, "finally https"

    invoke-static {v1, v4}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :try_start_f
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 209
    .restart local v0    # "ctx":Ljavax/net/ssl/SSLContext;
    const/4 v1, 0x0

    const/4 v4, 0x0

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v4, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 210
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-static {v1}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    goto/16 :goto_2

    .line 211
    .end local v0    # "ctx":Ljavax/net/ssl/SSLContext;
    :catch_a
    move-exception v8

    .line 212
    .restart local v8    # "e1":Ljava/lang/Exception;
    const-string v1, "APBaseHttpReq"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finally Exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 202
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v8    # "e1":Ljava/lang/Exception;
    .end local v10    # "errorMsg":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-direct {p0, v11, v13}, Lcom/pay/http/APBaseHttpReq;->closeStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 204
    iget-object v4, p0, Lcom/pay/http/APBaseHttpReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    iget-object v4, v4, Lcom/pay/http/APBaseHttpParam;->reqType:Ljava/lang/String;

    const-string v5, "https://"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 205
    const-string v4, "APBaseHttpReq"

    const-string v5, "finally https"

    invoke-static {v4, v5}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :try_start_10
    const-string v4, "TLS"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 209
    .restart local v0    # "ctx":Ljavax/net/ssl/SSLContext;
    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v4, v5, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 210
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v4

    invoke-static {v4}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    .line 213
    .end local v0    # "ctx":Ljavax/net/ssl/SSLContext;
    :cond_5
    :goto_4
    throw v1

    .line 211
    :catch_b
    move-exception v8

    .line 212
    .restart local v8    # "e1":Ljava/lang/Exception;
    const-string v4, "APBaseHttpReq"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finally Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method

.method private sendReportData(II)V
    .locals 2
    .param p1, "errorType"    # I
    .param p2, "responseCode"    # I

    .prologue
    .line 352
    iget-object v0, p0, Lcom/pay/http/APBaseHttpReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    iget-object v0, v0, Lcom/pay/http/APBaseHttpParam;->urlName:Ljava/lang/String;

    const-string v1, "log_data"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    :cond_0
    return-void
.end method

.method private tryAgain(IILjava/lang/Exception;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorType"    # I
    .param p2, "responseCode"    # I
    .param p3, "excep"    # Ljava/lang/Exception;
    .param p4, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-direct {p0, p1, p2}, Lcom/pay/http/APBaseHttpReq;->sendReportData(II)V

    .line 315
    const-string v2, "APBaseHttpReq"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tryAgain reqTimes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pay/http/APBaseHttpReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    iget v4, v4, Lcom/pay/http/APBaseHttpParam;->requestTimes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tryTimes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pay/http/APBaseHttpReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    iget v4, v4, Lcom/pay/http/APBaseHttpParam;->reTryTimes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    :try_start_0
    iget-object v2, p0, Lcom/pay/http/APBaseHttpReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    iget v2, v2, Lcom/pay/http/APBaseHttpParam;->requestTimes:I

    iget-object v3, p0, Lcom/pay/http/APBaseHttpReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    iget v3, v3, Lcom/pay/http/APBaseHttpParam;->reTryTimes:I

    if-ge v2, v3, :cond_0

    .line 321
    iget-object v2, p0, Lcom/pay/http/APBaseHttpReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    invoke-virtual {v2}, Lcom/pay/http/APBaseHttpParam;->constructReTryUrl()V

    .line 322
    invoke-direct {p0}, Lcom/pay/http/APBaseHttpReq;->requestProgress()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 346
    :goto_0
    return-void

    .line 326
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/pay/http/APBaseHttpReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    iget-object v2, v2, Lcom/pay/http/APBaseHttpParam;->reqType:Ljava/lang/String;

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 327
    move-object v1, p3

    .line 328
    .local v1, "t":Ljava/lang/Throwable;
    :goto_1
    if-eqz v1, :cond_3

    .line 329
    instance-of v2, v1, Ljava/security/cert/CertificateExpiredException;

    if-nez v2, :cond_1

    instance-of v2, v1, Ljava/security/cert/CertificateNotYetValidException;

    if-eqz v2, :cond_2

    .line 330
    :cond_1
    const-string v2, "APBaseHttpReq"

    const-string/jumbo v3, "\u60a8\u7684\u8bbe\u5907\u7cfb\u7edf\u65f6\u95f4\u4e0d\u6b63\u786e\uff0c\u8bf7\u66f4\u6539"

    invoke-static {v2, v3}, Lcom/tencent/midas/comm/APLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v2, p0, Lcom/pay/http/APBaseHttpReq;->httpAns:Lcom/pay/http/IAPHttpAns;

    const/16 v3, 0x44c

    invoke-interface {v2, p0, v3, p4}, Lcom/pay/http/IAPHttpAns;->onError(Lcom/pay/http/APBaseHttpReq;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 340
    .end local v1    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 344
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_0

    .line 334
    .restart local v1    # "t":Ljava/lang/Throwable;
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_1

    .line 337
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_3
    iget-object v2, p0, Lcom/pay/http/APBaseHttpReq;->httpAns:Lcom/pay/http/IAPHttpAns;

    const/16 v3, 0x3e8

    invoke-interface {v2, p0, v3, p4}, Lcom/pay/http/IAPHttpAns;->onError(Lcom/pay/http/APBaseHttpReq;ILjava/lang/String;)V

    .line 338
    const-string v2, "APBaseHttpReq"

    invoke-static {v2, p4}, Lcom/tencent/midas/comm/APLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public constructParam()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public getContent()[B
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/pay/http/APBaseHttpReq;->resultContent:[B

    return-object v0
.end method

.method public getHttpAns()Lcom/pay/http/IAPHttpAns;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/pay/http/APBaseHttpReq;->httpAns:Lcom/pay/http/IAPHttpAns;

    return-object v0
.end method

.method protected preCreateConnection()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public requestAgain()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/pay/http/APBaseHttpReq;->requestProgress()V

    .line 91
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/pay/http/APBaseHttpReq;->requestProgress()V

    .line 86
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 87
    return-void
.end method

.method protected setBody()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public setContent([B)V
    .locals 0
    .param p1, "content"    # [B

    .prologue
    .line 292
    iput-object p1, p0, Lcom/pay/http/APBaseHttpReq;->resultContent:[B

    .line 293
    return-void
.end method

.method protected setHeader()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public setHttpAns(Lcom/pay/http/IAPHttpAns;)V
    .locals 0
    .param p1, "httpAns"    # Lcom/pay/http/IAPHttpAns;

    .prologue
    .line 302
    iput-object p1, p0, Lcom/pay/http/APBaseHttpReq;->httpAns:Lcom/pay/http/IAPHttpAns;

    .line 303
    return-void
.end method

.method protected setReportUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "devCgi"    # Ljava/lang/String;
    .param p2, "testCgi"    # Ljava/lang/String;
    .param p3, "releaseCgi"    # Ljava/lang/String;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/pay/http/APBaseHttpReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pay/http/APBaseHttpParam;->setReportUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method protected setUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "customCgi"    # Ljava/lang/String;
    .param p2, "devCgi"    # Ljava/lang/String;
    .param p3, "testCgi"    # Ljava/lang/String;
    .param p4, "releaseCgi"    # Ljava/lang/String;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/pay/http/APBaseHttpReq;->httpParam:Lcom/pay/http/APBaseHttpParam;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/pay/http/APBaseHttpParam;->setUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public startRequest()V
    .locals 0

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/pay/http/APBaseHttpReq;->start()V

    .line 73
    return-void
.end method

.method public stopRequest()V
    .locals 2

    .prologue
    .line 77
    const-string v0, "APBaseHttpReq"

    const-string v1, "stopRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pay/http/APBaseHttpReq;->isStop:Z

    .line 80
    iget-object v0, p0, Lcom/pay/http/APBaseHttpReq;->httpAns:Lcom/pay/http/IAPHttpAns;

    invoke-interface {v0, p0}, Lcom/pay/http/IAPHttpAns;->onStop(Lcom/pay/http/APBaseHttpReq;)V

    .line 81
    return-void
.end method
