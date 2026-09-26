.class public Lcom/netease/cloud/nos/android/monitor/MonitorHttp;
.super Ljava/lang/Object;
.source "MonitorHttp.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/netease/cloud/nos/android/monitor/MonitorHttp;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/android/monitor/MonitorHttp;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static post(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-static {p1}, Lcom/netease/cloud/nos/android/utils/Util;->getMonitorUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/netease/cloud/nos/android/utils/Util;->newPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v3

    .line 26
    .local v3, "postMethod":Lorg/apache/http/client/methods/HttpPost;
    const-string v7, "Content-Encoding"

    const-string v8, "gzip"

    invoke-virtual {v3, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-static {}, Lcom/netease/cloud/nos/android/monitor/Monitor;->get()Ljava/util/List;

    move-result-object v2

    .line 28
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/netease/cloud/nos/android/monitor/StatisticItem;>;"
    invoke-static {v2}, Lcom/netease/cloud/nos/android/monitor/Monitor;->getPostData(Ljava/util/List;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 29
    .local v0, "bos":Ljava/io/ByteArrayOutputStream;
    if-nez v0, :cond_1

    .line 30
    sget-object v7, Lcom/netease/cloud/nos/android/monitor/MonitorHttp;->LOGTAG:Ljava/lang/String;

    const-string v8, "post data is null"

    invoke-static {v7, v8}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 33
    :cond_1
    new-instance v7, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v3, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 35
    :try_start_0
    invoke-static {p0}, Lcom/netease/cloud/nos/android/utils/Util;->getHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v7

    invoke-interface {v7, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 36
    .local v4, "response":Lorg/apache/http/HttpResponse;
    if-eqz v4, :cond_2

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 37
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 38
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 39
    .local v6, "statusCode":I
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    .line 40
    .local v5, "result":Ljava/lang/String;
    const/16 v7, 0xc8

    if-ne v6, v7, :cond_4

    .line 41
    sget-object v7, Lcom/netease/cloud/nos/android/monitor/MonitorHttp;->LOGTAG:Ljava/lang/String;

    .line 42
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "http post response is correct, response: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 42
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 41
    invoke-static {v7, v8}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .end local v5    # "result":Ljava/lang/String;
    .end local v6    # "statusCode":I
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 64
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 66
    :cond_3
    if-eqz v0, :cond_0

    .line 68
    :try_start_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/io/IOException;
    sget-object v7, Lcom/netease/cloud/nos/android/monitor/MonitorHttp;->LOGTAG:Ljava/lang/String;

    const-string v8, "bos close exception"

    invoke-static {v7, v8, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 45
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "result":Ljava/lang/String;
    .restart local v6    # "statusCode":I
    :cond_4
    :try_start_2
    sget-object v7, Lcom/netease/cloud/nos/android/monitor/MonitorHttp;->LOGTAG:Ljava/lang/String;

    .line 46
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "http post response is failed, status code: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 46
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 45
    invoke-static {v7, v8}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 49
    sget-object v7, Lcom/netease/cloud/nos/android/monitor/MonitorHttp;->LOGTAG:Ljava/lang/String;

    .line 50
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "http post response is failed, result: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 50
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 49
    invoke-static {v7, v8}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 55
    .end local v4    # "response":Lorg/apache/http/HttpResponse;
    .end local v5    # "result":Ljava/lang/String;
    .end local v6    # "statusCode":I
    :catch_1
    move-exception v1

    .line 56
    .local v1, "e":Lorg/apache/http/client/ClientProtocolException;
    :try_start_3
    sget-object v7, Lcom/netease/cloud/nos/android/monitor/MonitorHttp;->LOGTAG:Ljava/lang/String;

    .line 57
    const-string v8, "post monitor data failed with client protocol exception"

    .line 56
    invoke-static {v7, v8, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 63
    if-eqz v2, :cond_5

    .line 64
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 66
    :cond_5
    if-eqz v0, :cond_0

    .line 68
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 69
    :catch_2
    move-exception v1

    .line 70
    .local v1, "e":Ljava/io/IOException;
    sget-object v7, Lcom/netease/cloud/nos/android/monitor/MonitorHttp;->LOGTAG:Ljava/lang/String;

    const-string v8, "bos close exception"

    invoke-static {v7, v8, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 59
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 60
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_5
    sget-object v7, Lcom/netease/cloud/nos/android/monitor/MonitorHttp;->LOGTAG:Ljava/lang/String;

    const-string v8, "post monitor data failed with io exception"

    invoke-static {v7, v8, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 63
    if-eqz v2, :cond_6

    .line 64
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 66
    :cond_6
    if-eqz v0, :cond_0

    .line 68
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 69
    :catch_4
    move-exception v1

    .line 70
    sget-object v7, Lcom/netease/cloud/nos/android/monitor/MonitorHttp;->LOGTAG:Ljava/lang/String;

    const-string v8, "bos close exception"

    invoke-static {v7, v8, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 61
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 63
    if-eqz v2, :cond_7

    .line 64
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 66
    :cond_7
    if-eqz v0, :cond_8

    .line 68
    :try_start_7
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 73
    :cond_8
    :goto_2
    throw v7

    .line 69
    :catch_5
    move-exception v1

    .line 70
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/netease/cloud/nos/android/monitor/MonitorHttp;->LOGTAG:Ljava/lang/String;

    const-string v9, "bos close exception"

    invoke-static {v8, v9, v1}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
