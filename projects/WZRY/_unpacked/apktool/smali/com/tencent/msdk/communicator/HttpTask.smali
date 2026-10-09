.class public Lcom/tencent/msdk/communicator/HttpTask;
.super Landroid/os/AsyncTask;
.source "HttpTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/tencent/msdk/communicator/MHttpRequest;",
        "Ljava/lang/Integer;",
        "Lcom/tencent/msdk/communicator/MHttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private SOCKET_OUT:I

.field private TIME_OUT:I

.field private handler:Landroid/os/Handler;

.field private initTime:J

.field private test:Lcom/tencent/msdk/a/e;

.field private what:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;I)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I

    .prologue
    const/16 v2, 0x3a98

    .line 52
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 47
    new-instance v0, Lcom/tencent/msdk/a/e;

    const-string v1, ""

    invoke-static {v1}, Lcom/tencent/msdk/a/a;->c(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/msdk/a/e;-><init>([B)V

    iput-object v0, p0, Lcom/tencent/msdk/communicator/HttpTask;->test:Lcom/tencent/msdk/a/e;

    .line 48
    iput v2, p0, Lcom/tencent/msdk/communicator/HttpTask;->TIME_OUT:I

    .line 49
    iput v2, p0, Lcom/tencent/msdk/communicator/HttpTask;->SOCKET_OUT:I

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/msdk/communicator/HttpTask;->initTime:J

    .line 53
    if-nez p1, :cond_0

    .line 54
    const-string v0, "hanlder is null"

    invoke-static {v0}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/tencent/msdk/communicator/HttpTask;->handler:Landroid/os/Handler;

    .line 57
    iput p2, p0, Lcom/tencent/msdk/communicator/HttpTask;->what:I

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/msdk/communicator/HttpTask;->initTime:J

    .line 59
    return-void
.end method

.method private clientParamError(Ljava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 62
    new-instance v0, Lcom/tencent/msdk/communicator/MHttpResponse;

    const/16 v1, 0x3ee

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/tencent/msdk/communicator/MHttpResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getIpByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "domainName"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 338
    invoke-static {p1}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 339
    const-string v5, "Error:domainName is empty!"

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 340
    const-string v5, ""

    .line 363
    :goto_0
    return-object v5

    .line 342
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 343
    .local v6, "time":J
    invoke-static {}, Lcom/tencent/special/httpdns/Resolver;->getInstance()Lcom/tencent/special/httpdns/Resolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/tencent/special/httpdns/Resolver;->getAddrByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "ipSet":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v6

    .line 345
    .local v2, "lastTime":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "time:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " Ip set is : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 346
    const-wide/16 v8, 0x3e8

    cmp-long v5, v2, v8

    if-lez v5, :cond_1

    .line 347
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 348
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "ip"

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string/jumbo v5, "time"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v5

    const-string v8, "WGhttpdns_time"

    invoke-virtual {v5, v11, v8, v4}, Lcom/tencent/msdk/WeGame;->reportFunction(ZLjava/lang/String;Ljava/util/Map;)V

    .line 352
    .end local v4    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-static {v0}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 353
    const-string v5, "Warning:ip set is empty."

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 354
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v5

    const-string v8, "WGhttpdns_ip"

    const/4 v9, 0x0

    invoke-virtual {v5, v11, v8, v9}, Lcom/tencent/msdk/WeGame;->reportFunction(ZLjava/lang/String;Ljava/util/Map;)V

    .line 355
    const-string v5, ""

    goto :goto_0

    .line 358
    :cond_2
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "ips":[Ljava/lang/String;
    if-eqz v1, :cond_3

    array-length v5, v1

    if-eqz v5, :cond_3

    aget-object v5, v1, v10

    invoke-static {v5}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 360
    :cond_3
    const-string v5, "Warning:the first ip is empty!"

    invoke-static {v5}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 361
    const-string v5, ""

    goto/16 :goto_0

    .line 363
    :cond_4
    aget-object v5, v1, v10

    goto/16 :goto_0
.end method

.method private isInIPWhiteList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 373
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 375
    const-string v0, "comm/cloud_center_ctl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 377
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processHttpResponse(Lorg/apache/http/HttpResponse;)Lcom/tencent/msdk/communicator/MHttpResponse;
    .locals 11
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 252
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 253
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    long-to-int v5, v8

    .line 254
    .local v5, "length":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getContentLength is\uff1a"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 255
    if-gez v5, :cond_0

    .line 257
    const-string v8, "response is null"

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 258
    const/4 v8, 0x0

    .line 303
    :goto_0
    return-object v8

    .line 261
    :cond_0
    :try_start_0
    const-string v7, ""

    .line 262
    .local v7, "strResult":Ljava/lang/String;
    const/16 v8, 0x7e4

    iget v9, p0, Lcom/tencent/msdk/communicator/HttpTask;->what:I

    if-eq v8, v9, :cond_1

    const/16 v8, 0x7e3

    iget v9, p0, Lcom/tencent/msdk/communicator/HttpTask;->what:I

    if-ne v8, v9, :cond_2

    .line 264
    :cond_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 296
    :goto_1
    new-instance v8, Lcom/tencent/msdk/communicator/MHttpResponse;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const-string v10, ""

    invoke-direct {v8, v9, v10, v7}, Lcom/tencent/msdk/communicator/MHttpResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 298
    .end local v7    # "strResult":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 300
    const/16 v8, 0xbba

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IllegalStateException "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/tencent/msdk/communicator/HttpTask;->serverErrorRsp(ILjava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v8

    goto :goto_0

    .line 266
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v7    # "strResult":Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-object v8, Lcom/tencent/msdk/communicator/HttpRequestManager;->isEncode:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 267
    new-array v3, v5, [B

    .line 268
    .local v3, "entityBeforeDecode":[B
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 269
    .local v4, "inputStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 270
    .local v6, "readContent":I
    :goto_2
    if-ge v6, v5, :cond_3

    .line 271
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getContentLength: readContent["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-byte v9, v3, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 273
    sub-int v8, v5, v6

    invoke-virtual {v4, v3, v6, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    add-int/2addr v6, v8

    .line 275
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getContentLength: get content length:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ";get byte length:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 277
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getContentLength: readContent["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v6, -0x2

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v6, -0x2

    aget-byte v9, v3, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 279
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getContentLength: readContent["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v6, -0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v6, -0x1

    aget-byte v9, v3, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 301
    .end local v3    # "entityBeforeDecode":[B
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "readContent":I
    .end local v7    # "strResult":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 302
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 303
    const/16 v8, 0xbbb

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/tencent/msdk/communicator/HttpTask;->serverErrorRsp(ILjava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v8

    goto/16 :goto_0

    .line 282
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "entityBeforeDecode":[B
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "readContent":I
    .restart local v7    # "strResult":Ljava/lang/String;
    :cond_3
    :try_start_2
    iget-object v8, p0, Lcom/tencent/msdk/communicator/HttpTask;->test:Lcom/tencent/msdk/a/e;

    invoke-virtual {v8, v3}, Lcom/tencent/msdk/a/e;->f4([B)[B

    move-result-object v2

    .line 283
    .local v2, "entityAfterDecode":[B
    if-nez v2, :cond_4

    .line 284
    const-string v7, ""

    .line 285
    const-string v8, "entityAfterDecode is null"

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 287
    :cond_4
    new-instance v7, Ljava/lang/String;

    .end local v7    # "strResult":Ljava/lang/String;
    const-string v8, "UTF-8"

    invoke-direct {v7, v2, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 288
    .restart local v7    # "strResult":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "strResult:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 292
    .end local v2    # "entityAfterDecode":[B
    .end local v3    # "entityBeforeDecode":[B
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "readContent":I
    :cond_5
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    goto/16 :goto_1
.end method

.method private serverErrorRsp(ILjava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 70
    new-instance v0, Lcom/tencent/msdk/communicator/MHttpResponse;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/tencent/msdk/communicator/MHttpResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private serverErrorRsp(Ljava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 66
    const/16 v0, 0xbb8

    invoke-direct {p0, v0, p1}, Lcom/tencent/msdk/communicator/HttpTask;->serverErrorRsp(ILjava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/tencent/msdk/communicator/MHttpRequest;)Lcom/tencent/msdk/communicator/MHttpResponse;
    .locals 30
    .param p1, "params"    # [Lcom/tencent/msdk/communicator/MHttpRequest;

    .prologue
    .line 76
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "before doInBackground use time:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tencent/msdk/communicator/HttpTask;->initTime:J

    move-wide/from16 v28, v0

    sub-long v26, v26, v28

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 77
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v25, v0

    if-nez v25, :cond_1

    .line 79
    const-string v25, "no params"

    invoke-static/range {v25 .. v25}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 80
    const-string v25, "no params"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/tencent/msdk/communicator/HttpTask;->clientParamError(Ljava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v15

    .line 248
    :cond_0
    :goto_0
    return-object v15

    .line 83
    :cond_1
    const/16 v25, 0x0

    aget-object v21, p1, v25

    .line 84
    .local v21, "req":Lcom/tencent/msdk/communicator/MHttpRequest;
    if-nez v21, :cond_2

    .line 85
    const-string v25, "HttpRequest is null"

    invoke-static/range {v25 .. v25}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 86
    const-string v25, "HttpRequest is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/tencent/msdk/communicator/HttpTask;->clientParamError(Ljava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v15

    goto :goto_0

    .line 89
    :cond_2
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v23, "rparams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v25, "url"

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/msdk/communicator/MHttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string/jumbo v25, "taskid"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/msdk/communicator/MHttpRequest;->getTaskId()J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v25

    const/16 v26, 0x1

    const-string v27, "WGTaskExecute"

    move-object/from16 v0, v25

    move/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/msdk/WeGame;->reportFunction(ZLjava/lang/String;Ljava/util/Map;)V

    .line 95
    const-wide/16 v6, 0x0

    .line 96
    .local v6, "begin":J
    const-wide/16 v10, 0x0

    .line 98
    .local v10, "end":J
    const-string v9, ""

    .line 100
    .local v9, "hostName":Ljava/lang/String;
    const/16 v17, 0x1

    .line 101
    .local v17, "needHttpdns":Z
    if-eqz v17, :cond_8

    .line 103
    invoke-virtual/range {v21 .. v21}, Lcom/tencent/msdk/communicator/MHttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/tencent/msdk/communicator/HttpTask;->isInIPWhiteList(Ljava/lang/String;)Z

    move-result v13

    .line 104
    .local v13, "isInList":Z
    if-nez v13, :cond_7

    .line 105
    invoke-static {}, Lcom/tencent/msdk/WeGame;->getInstance()Lcom/tencent/msdk/WeGame;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/tencent/msdk/WeGame;->getApiDomain()Ljava/lang/String;

    move-result-object v18

    .line 106
    .local v18, "originDomain":Ljava/lang/String;
    const-string v20, ""

    .line 108
    .local v20, "protocol":Ljava/lang/String;
    :try_start_0
    invoke-static/range {v18 .. v18}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 109
    new-instance v16, Ljava/net/URL;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 110
    .local v16, "msdkUrl":Ljava/net/URL;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v20

    .line 112
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v9

    .line 114
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/tencent/msdk/communicator/HttpTask;->getIpByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 115
    .local v14, "msdkIp":Ljava/lang/String;
    invoke-static {v14}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 116
    invoke-virtual/range {v21 .. v21}, Lcom/tencent/msdk/communicator/MHttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v24

    .line 118
    .local v24, "srcUrl":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "://"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "://"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v24

    .line 119
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/tencent/msdk/communicator/MHttpRequest;->setUrl(Ljava/lang/String;)V

    .line 120
    invoke-static/range {v24 .. v24}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v13    # "isInList":Z
    .end local v14    # "msdkIp":Ljava/lang/String;
    .end local v16    # "msdkUrl":Ljava/net/URL;
    .end local v18    # "originDomain":Ljava/lang/String;
    .end local v20    # "protocol":Ljava/lang/String;
    .end local v24    # "srcUrl":Ljava/lang/String;
    :cond_3
    :goto_1
    :try_start_1
    new-instance v12, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v12}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 136
    .local v12, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    invoke-virtual {v12}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/msdk/communicator/HttpTask;->TIME_OUT:I

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 138
    invoke-virtual {v12}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/msdk/communicator/HttpTask;->SOCKET_OUT:I

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 140
    const/4 v4, 0x0

    .line 141
    .local v4, "baseReq":Lorg/apache/http/client/methods/HttpRequestBase;
    sget-object v25, Lcom/tencent/msdk/communicator/HttpTask$1;->$SwitchMap$com$tencent$msdk$communicator$MHttpRequest$HttpMethod:[I

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/msdk/communicator/MHttpRequest;->getMethod()Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/tencent/msdk/communicator/MHttpRequest$HttpMethod;->ordinal()I

    move-result v26

    aget v25, v25, v26

    packed-switch v25, :pswitch_data_0

    .line 177
    :cond_4
    :goto_2
    sget v25, Lcom/tencent/msdk/communicator/HttpRequestManager;->mCaseId:I

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_6

    .line 178
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "caseid:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sget v26, Lcom/tencent/msdk/communicator/HttpRequestManager;->mCaseId:I

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 179
    if-eqz v4, :cond_5

    .line 180
    const-string v25, "Msdk-CaseId"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    sget v27, Lcom/tencent/msdk/communicator/HttpRequestManager;->mCaseId:I

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ""

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_5
    const/16 v25, -0x2

    sput v25, Lcom/tencent/msdk/communicator/HttpRequestManager;->mCaseId:I

    .line 185
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 187
    invoke-virtual {v12, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v22

    .line 189
    .local v22, "response":Lorg/apache/http/HttpResponse;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 190
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "execute use time:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sub-long v26, v10, v6

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 191
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/tencent/msdk/communicator/HttpTask;->processHttpResponse(Lorg/apache/http/HttpResponse;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v15

    .line 192
    .local v15, "msdkResponse":Lcom/tencent/msdk/communicator/MHttpResponse;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "process use time:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v10

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 233
    .end local v4    # "baseReq":Lorg/apache/http/client/methods/HttpRequestBase;
    .end local v12    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v22    # "response":Lorg/apache/http/HttpResponse;
    :goto_3
    sget-boolean v25, Lcom/tencent/msdk/WeGame;->bNeedMSDKEventReport:Z

    if-eqz v25, :cond_0

    .line 234
    const-string v19, ""

    .line 236
    .local v19, "path":Ljava/lang/String;
    :try_start_2
    new-instance v16, Ljava/net/URL;

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/msdk/communicator/MHttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 237
    .restart local v16    # "msdkUrl":Ljava/net/URL;
    invoke-virtual/range {v16 .. v16}, Ljava/net/URL;->getPath()Ljava/lang/String;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_9

    move-result-object v19

    .line 241
    .end local v16    # "msdkUrl":Ljava/net/URL;
    :goto_4
    invoke-virtual {v15}, Lcom/tencent/msdk/communicator/MHttpResponse;->getStatus()I

    move-result v5

    .line 242
    .local v5, "code":I
    invoke-virtual {v15}, Lcom/tencent/msdk/communicator/MHttpResponse;->getBody()Ljava/lang/String;

    goto/16 :goto_0

    .line 123
    .end local v5    # "code":I
    .end local v15    # "msdkResponse":Lcom/tencent/msdk/communicator/MHttpResponse;
    .end local v19    # "path":Ljava/lang/String;
    .restart local v13    # "isInList":Z
    .restart local v18    # "originDomain":Ljava/lang/String;
    .restart local v20    # "protocol":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 124
    .local v8, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v8}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto/16 :goto_1

    .line 127
    .end local v8    # "e":Ljava/net/MalformedURLException;
    .end local v18    # "originDomain":Ljava/lang/String;
    .end local v20    # "protocol":Ljava/lang/String;
    :cond_7
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "HttpDns isInList="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " url="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/msdk/communicator/MHttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 131
    .end local v13    # "isInList":Z
    :cond_8
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "HttpDns needHttpdns="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 143
    .restart local v4    # "baseReq":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v12    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :pswitch_0
    :try_start_3
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    .end local v4    # "baseReq":Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-virtual/range {v21 .. v21}, Lcom/tencent/msdk/communicator/MHttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 144
    .restart local v4    # "baseReq":Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-static {v9}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_4

    .line 145
    const-string v25, "Host"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0, v9}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    goto/16 :goto_2

    .line 193
    .end local v4    # "baseReq":Lorg/apache/http/client/methods/HttpRequestBase;
    .end local v12    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :catch_1
    move-exception v8

    .line 194
    .local v8, "e":Ljava/lang/IllegalStateException;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "IllegalStateException, msg: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 195
    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 196
    const/16 v25, 0xbba

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "IllegalStateException"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/communicator/HttpTask;->serverErrorRsp(ILjava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v15

    .line 231
    .restart local v15    # "msdkResponse":Lcom/tencent/msdk/communicator/MHttpResponse;
    goto/16 :goto_3

    .line 149
    .end local v8    # "e":Ljava/lang/IllegalStateException;
    .end local v15    # "msdkResponse":Lcom/tencent/msdk/communicator/MHttpResponse;
    .restart local v4    # "baseReq":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v12    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :pswitch_1
    :try_start_4
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    .end local v4    # "baseReq":Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-virtual/range {v21 .. v21}, Lcom/tencent/msdk/communicator/MHttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v4, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 150
    .restart local v4    # "baseReq":Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-static {v9}, Lcom/tencent/msdk/tools/T;->ckIsEmpty(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_9

    .line 151
    const-string v25, "Host"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0, v9}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_9
    const-string v25, "Content-Type"

    const-string v26, "application/x-www-form-urlencoded"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const/16 v25, 0x7e4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/msdk/communicator/HttpTask;->what:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    .line 157
    invoke-virtual/range {v21 .. v21}, Lcom/tencent/msdk/communicator/MHttpRequest;->getStrBody()Ljava/lang/String;

    move-result-object v25

    if-eqz v25, :cond_4

    .line 158
    move-object v0, v4

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v25, v0

    new-instance v26, Lorg/apache/http/entity/StringEntity;

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/msdk/communicator/MHttpRequest;->getStrBody()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v26}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    goto/16 :goto_2

    .line 197
    .end local v4    # "baseReq":Lorg/apache/http/client/methods/HttpRequestBase;
    .end local v12    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :catch_2
    move-exception v8

    .line 198
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "IllegalArgumentException, msg: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 200
    const/16 v25, 0xbbc

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "IllegalArgumentException"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/communicator/HttpTask;->serverErrorRsp(ILjava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v15

    .line 231
    .restart local v15    # "msdkResponse":Lcom/tencent/msdk/communicator/MHttpResponse;
    goto/16 :goto_3

    .line 161
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    .end local v15    # "msdkResponse":Lcom/tencent/msdk/communicator/MHttpResponse;
    .restart local v4    # "baseReq":Lorg/apache/http/client/methods/HttpRequestBase;
    .restart local v12    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :cond_a
    :try_start_5
    sget-object v25, Lcom/tencent/msdk/communicator/HttpRequestManager;->isEncode:Ljava/lang/Boolean;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    if-eqz v25, :cond_b

    .line 162
    const-string v25, "Content-Encrypt"

    const-string v26, "msdktea"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v25, "Accept-Encrypt"

    const-string v26, "msdktea"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v4, v0, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_b
    move-object v0, v4

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v25, v0

    new-instance v26, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual/range {v21 .. v21}, Lcom/tencent/msdk/communicator/MHttpRequest;->getBody()[B

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual/range {v25 .. v26}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 166
    move-object v0, v4

    check-cast v0, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/apache/http/client/methods/HttpPost;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v25

    const-string v26, "http.protocol.expect-continue"

    const/16 v27, 0x0

    invoke-interface/range {v25 .. v27}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 168
    invoke-virtual {v12}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v25

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    goto/16 :goto_2

    .line 201
    .end local v4    # "baseReq":Lorg/apache/http/client/methods/HttpRequestBase;
    .end local v12    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :catch_3
    move-exception v8

    .line 202
    .local v8, "e":Ljava/net/SocketException;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "SocketException, msg: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v8}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v8}, Ljava/net/SocketException;->printStackTrace()V

    .line 204
    const/16 v25, 0xbbd

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "SocketException"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v8}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/communicator/HttpTask;->serverErrorRsp(ILjava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v15

    .line 231
    .restart local v15    # "msdkResponse":Lcom/tencent/msdk/communicator/MHttpResponse;
    goto/16 :goto_3

    .line 205
    .end local v8    # "e":Ljava/net/SocketException;
    .end local v15    # "msdkResponse":Lcom/tencent/msdk/communicator/MHttpResponse;
    :catch_4
    move-exception v8

    .line 206
    .local v8, "e":Lorg/apache/http/client/ClientProtocolException;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ClientProtocolException, msg: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v8}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v8}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 208
    const/16 v25, 0xbbe

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "ClientProtocolException"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual {v8}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/communicator/HttpTask;->serverErrorRsp(ILjava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v15

    .line 231
    .restart local v15    # "msdkResponse":Lcom/tencent/msdk/communicator/MHttpResponse;
    goto/16 :goto_3

    .line 209
    .end local v8    # "e":Lorg/apache/http/client/ClientProtocolException;
    .end local v15    # "msdkResponse":Lcom/tencent/msdk/communicator/MHttpResponse;
    :catch_5
    move-exception v8

    .line 211
    .local v8, "e":Lorg/apache/http/conn/ConnectTimeoutException;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ConnectTimeoutException, msg: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v8}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v8}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    .line 213
    const/16 v25, 0xbb9

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "ConnectTimeoutException"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 214
    invoke-virtual {v8}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 213
    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/communicator/HttpTask;->serverErrorRsp(ILjava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v15

    .line 231
    .restart local v15    # "msdkResponse":Lcom/tencent/msdk/communicator/MHttpResponse;
    goto/16 :goto_3

    .line 215
    .end local v8    # "e":Lorg/apache/http/conn/ConnectTimeoutException;
    .end local v15    # "msdkResponse":Lcom/tencent/msdk/communicator/MHttpResponse;
    :catch_6
    move-exception v8

    .line 217
    .local v8, "e":Ljava/net/SocketTimeoutException;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "SocketTimeoutException, msg: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v8}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v8}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    .line 219
    const/16 v25, 0xbc0

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "SocketTimeoutException"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 220
    invoke-virtual {v8}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 219
    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/communicator/HttpTask;->serverErrorRsp(ILjava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v15

    .line 231
    .restart local v15    # "msdkResponse":Lcom/tencent/msdk/communicator/MHttpResponse;
    goto/16 :goto_3

    .line 221
    .end local v8    # "e":Ljava/net/SocketTimeoutException;
    .end local v15    # "msdkResponse":Lcom/tencent/msdk/communicator/MHttpResponse;
    :catch_7
    move-exception v8

    .line 223
    .local v8, "e":Ljava/net/UnknownHostException;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "UnknownHostException, msg: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v8}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v8}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 225
    const/16 v25, 0xbbf

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "UnknownHostException:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 226
    invoke-virtual {v8}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 225
    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/tencent/msdk/communicator/HttpTask;->serverErrorRsp(ILjava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v15

    .line 231
    .restart local v15    # "msdkResponse":Lcom/tencent/msdk/communicator/MHttpResponse;
    goto/16 :goto_3

    .line 227
    .end local v8    # "e":Ljava/net/UnknownHostException;
    .end local v15    # "msdkResponse":Lcom/tencent/msdk/communicator/MHttpResponse;
    :catch_8
    move-exception v8

    .line 228
    .local v8, "e":Ljava/lang/Exception;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "UnknownException, msg: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 230
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "UnknownException"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/tencent/msdk/communicator/HttpTask;->serverErrorRsp(Ljava/lang/String;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v15

    .restart local v15    # "msdkResponse":Lcom/tencent/msdk/communicator/MHttpResponse;
    goto/16 :goto_3

    .line 238
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v19    # "path":Ljava/lang/String;
    :catch_9
    move-exception v8

    .line 239
    .local v8, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v8}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto/16 :goto_4

    .line 141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    check-cast p1, [Lcom/tencent/msdk/communicator/MHttpRequest;

    invoke-virtual {p0, p1}, Lcom/tencent/msdk/communicator/HttpTask;->doInBackground([Lcom/tencent/msdk/communicator/MHttpRequest;)Lcom/tencent/msdk/communicator/MHttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/tencent/msdk/communicator/MHttpResponse;)V
    .locals 6
    .param p1, "result"    # Lcom/tencent/msdk/communicator/MHttpResponse;

    .prologue
    .line 309
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 311
    if-nez p1, :cond_0

    .line 312
    const-string v2, "network return null!!!"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 313
    new-instance p1, Lcom/tencent/msdk/communicator/MHttpResponse;

    .end local p1    # "result":Lcom/tencent/msdk/communicator/MHttpResponse;
    const/16 v2, 0x3ea

    const-string v3, "response no params"

    const/4 v4, 0x0

    invoke-direct {p1, v2, v3, v4}, Lcom/tencent/msdk/communicator/MHttpResponse;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 316
    .restart local p1    # "result":Lcom/tencent/msdk/communicator/MHttpResponse;
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/msdk/communicator/MHttpResponse;->getBody()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "result body is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/msdk/communicator/MHttpResponse;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    .line 322
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 323
    .local v0, "data":Landroid/os/Bundle;
    const-string v2, "http_rsp"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 325
    iget-object v2, p0, Lcom/tencent/msdk/communicator/HttpTask;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 326
    iget-object v2, p0, Lcom/tencent/msdk/communicator/HttpTask;->handler:Landroid/os/Handler;

    iget v3, p0, Lcom/tencent/msdk/communicator/HttpTask;->what:I

    invoke-virtual {p1}, Lcom/tencent/msdk/communicator/MHttpResponse;->getStatus()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 327
    .local v1, "message":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 328
    iget-object v2, p0, Lcom/tencent/msdk/communicator/HttpTask;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 330
    .end local v1    # "message":Landroid/os/Message;
    :cond_1
    return-void

    .line 319
    .end local v0    # "data":Landroid/os/Bundle;
    :cond_2
    const-string v2, "result body is null"

    invoke-static {v2}, Lcom/tencent/msdk/tools/Logger;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    check-cast p1, Lcom/tencent/msdk/communicator/MHttpResponse;

    invoke-virtual {p0, p1}, Lcom/tencent/msdk/communicator/HttpTask;->onPostExecute(Lcom/tencent/msdk/communicator/MHttpResponse;)V

    return-void
.end method
