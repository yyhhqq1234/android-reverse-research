.class public Lcom/netease/cloud/nos/android/http/HttpGetTask;
.super Ljava/lang/Object;
.source "HttpGetTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field protected final callback:Lcom/netease/cloud/nos/android/core/RequestCallback;

.field protected final ctx:Landroid/content/Context;

.field protected volatile getRequest:Lorg/apache/http/client/methods/HttpGet;

.field protected final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/netease/cloud/nos/android/http/HttpGetTask;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/netease/cloud/nos/android/core/RequestCallback;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p4, "callback"    # Lcom/netease/cloud/nos/android/core/RequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netease/cloud/nos/android/core/RequestCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->url:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->ctx:Landroid/content/Context;

    .line 31
    iput-object p3, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->map:Ljava/util/Map;

    .line 32
    iput-object p4, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->callback:Lcom/netease/cloud/nos/android/core/RequestCallback;

    .line 33
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 37
    const/4 v1, 0x0

    .line 40
    .local v1, "httpEntity":Lorg/apache/http/HttpEntity;
    :try_start_0
    iget-object v6, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->url:Ljava/lang/String;

    invoke-static {v6}, Lcom/netease/cloud/nos/android/utils/Util;->newGet(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v6

    iput-object v6, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->getRequest:Lorg/apache/http/client/methods/HttpGet;

    .line 41
    iget-object v6, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->map:Ljava/util/Map;

    if-eqz v6, :cond_0

    .line 42
    iget-object v6, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->getRequest:Lorg/apache/http/client/methods/HttpGet;

    iget-object v7, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->map:Ljava/util/Map;

    invoke-static {v6, v7}, Lcom/netease/cloud/nos/android/utils/Util;->setHeader(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/util/Map;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v6

    check-cast v6, Lorg/apache/http/client/methods/HttpGet;

    iput-object v6, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->getRequest:Lorg/apache/http/client/methods/HttpGet;

    .line 44
    :cond_0
    iget-object v6, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->ctx:Landroid/content/Context;

    invoke-static {v6}, Lcom/netease/cloud/nos/android/utils/Util;->getLbsHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v6

    iget-object v7, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->getRequest:Lorg/apache/http/client/methods/HttpGet;

    invoke-interface {v6, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 46
    .local v3, "response":Lorg/apache/http/HttpResponse;
    if-eqz v3, :cond_4

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 47
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 48
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 49
    .local v5, "statusCode":I
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    .line 50
    .local v4, "result":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    .local v2, "msg":Lorg/json/JSONObject;
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_2

    .line 52
    sget-object v6, Lcom/netease/cloud/nos/android/http/HttpGetTask;->LOGTAG:Ljava/lang/String;

    .line 53
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "http get response is correct, response: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 52
    invoke-static {v6, v7}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_0
    iget-object v6, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->callback:Lcom/netease/cloud/nos/android/core/RequestCallback;

    new-instance v7, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v2, v8}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    invoke-interface {v6, v7}, Lcom/netease/cloud/nos/android/core/RequestCallback;->onResult(Lcom/netease/cloud/nos/android/http/HttpResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .end local v2    # "msg":Lorg/json/JSONObject;
    .end local v4    # "result":Ljava/lang/String;
    .end local v5    # "statusCode":I
    :goto_1
    if-eqz v1, :cond_1

    .line 69
    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 75
    :cond_1
    :goto_2
    iput-object v11, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->getRequest:Lorg/apache/http/client/methods/HttpGet;

    .line 77
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :goto_3
    return-void

    .line 55
    .restart local v2    # "msg":Lorg/json/JSONObject;
    .restart local v3    # "response":Lorg/apache/http/HttpResponse;
    .restart local v4    # "result":Ljava/lang/String;
    .restart local v5    # "statusCode":I
    :cond_2
    :try_start_2
    sget-object v6, Lcom/netease/cloud/nos/android/http/HttpGetTask;->LOGTAG:Ljava/lang/String;

    const-string v7, "http get response is failed."

    invoke-static {v6, v7}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 62
    .end local v2    # "msg":Lorg/json/JSONObject;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    .end local v4    # "result":Ljava/lang/String;
    .end local v5    # "statusCode":I
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v6, Lcom/netease/cloud/nos/android/http/HttpGetTask;->LOGTAG:Ljava/lang/String;

    const-string v7, "http get task exception"

    invoke-static {v6, v7, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    iget-object v6, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->callback:Lcom/netease/cloud/nos/android/core/RequestCallback;

    new-instance v7, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v8, 0x31f

    .line 65
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v7, v8, v9, v0}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    .line 64
    invoke-interface {v6, v7}, Lcom/netease/cloud/nos/android/core/RequestCallback;->onResult(Lcom/netease/cloud/nos/android/http/HttpResult;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 67
    if-eqz v1, :cond_3

    .line 69
    :try_start_4
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_4
    iput-object v11, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->getRequest:Lorg/apache/http/client/methods/HttpGet;

    goto :goto_3

    .line 59
    .restart local v3    # "response":Lorg/apache/http/HttpResponse;
    :cond_4
    :try_start_5
    iget-object v6, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->callback:Lcom/netease/cloud/nos/android/core/RequestCallback;

    new-instance v7, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v8, 0x383

    .line 60
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V

    .line 59
    invoke-interface {v6, v7}, Lcom/netease/cloud/nos/android/core/RequestCallback;->onResult(Lcom/netease/cloud/nos/android/http/HttpResult;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 66
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v6

    .line 67
    if-eqz v1, :cond_5

    .line 69
    :try_start_6
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 75
    :cond_5
    :goto_5
    iput-object v11, p0, Lcom/netease/cloud/nos/android/http/HttpGetTask;->getRequest:Lorg/apache/http/client/methods/HttpGet;

    .line 76
    throw v6

    .line 70
    .restart local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 71
    .local v0, "e":Ljava/io/IOException;
    sget-object v6, Lcom/netease/cloud/nos/android/http/HttpGetTask;->LOGTAG:Ljava/lang/String;

    const-string v7, "Consume Content exception"

    invoke-static {v6, v7, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 70
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 71
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v7, Lcom/netease/cloud/nos/android/http/HttpGetTask;->LOGTAG:Ljava/lang/String;

    const-string v8, "Consume Content exception"

    invoke-static {v7, v8, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 70
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "response":Lorg/apache/http/HttpResponse;
    :catch_3
    move-exception v0

    .line 71
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/netease/cloud/nos/android/http/HttpGetTask;->LOGTAG:Ljava/lang/String;

    const-string v7, "Consume Content exception"

    invoke-static {v6, v7, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
