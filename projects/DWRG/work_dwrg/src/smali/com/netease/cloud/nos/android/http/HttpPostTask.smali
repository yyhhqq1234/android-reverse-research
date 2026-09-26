.class public Lcom/netease/cloud/nos/android/http/HttpPostTask;
.super Ljava/lang/Object;
.source "HttpPostTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/netease/cloud/nos/android/http/HttpResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field protected final chunkData:[B

.field protected final ctx:Landroid/content/Context;

.field protected volatile postRequest:Lorg/apache/http/client/methods/HttpPost;

.field protected final token:Ljava/lang/String;

.field protected final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/netease/cloud/nos/android/http/HttpPostTask;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netease/cloud/nos/android/http/HttpPostTask;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;[B)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;
    .param p3, "ctx"    # Landroid/content/Context;
    .param p4, "chunkData"    # [B

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/netease/cloud/nos/android/http/HttpPostTask;->url:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/netease/cloud/nos/android/http/HttpPostTask;->token:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/netease/cloud/nos/android/http/HttpPostTask;->ctx:Landroid/content/Context;

    .line 34
    iput-object p4, p0, Lcom/netease/cloud/nos/android/http/HttpPostTask;->chunkData:[B

    .line 35
    return-void
.end method

.method private buildHttpEntity([B)Lorg/apache/http/HttpEntity;
    .locals 1
    .param p1, "isa"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v0, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 82
    .local v0, "en":Lorg/apache/http/entity/ByteArrayEntity;
    return-object v0
.end method


# virtual methods
.method public call()Lcom/netease/cloud/nos/android/http/HttpResult;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 39
    sget-object v6, Lcom/netease/cloud/nos/android/http/HttpPostTask;->LOGTAG:Ljava/lang/String;

    const-string v7, "http post task is executing"

    invoke-static {v6, v7}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v3, 0x0

    .line 42
    .local v3, "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    :try_start_0
    iget-object v6, p0, Lcom/netease/cloud/nos/android/http/HttpPostTask;->url:Ljava/lang/String;

    invoke-static {v6}, Lcom/netease/cloud/nos/android/utils/Util;->newPost(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v6

    iput-object v6, p0, Lcom/netease/cloud/nos/android/http/HttpPostTask;->postRequest:Lorg/apache/http/client/methods/HttpPost;

    .line 43
    iget-object v6, p0, Lcom/netease/cloud/nos/android/http/HttpPostTask;->postRequest:Lorg/apache/http/client/methods/HttpPost;

    const-string v7, "x-nos-token"

    iget-object v8, p0, Lcom/netease/cloud/nos/android/http/HttpPostTask;->token:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v6, p0, Lcom/netease/cloud/nos/android/http/HttpPostTask;->postRequest:Lorg/apache/http/client/methods/HttpPost;

    iget-object v7, p0, Lcom/netease/cloud/nos/android/http/HttpPostTask;->chunkData:[B

    invoke-direct {p0, v7}, Lcom/netease/cloud/nos/android/http/HttpPostTask;->buildHttpEntity([B)Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 45
    iget-object v6, p0, Lcom/netease/cloud/nos/android/http/HttpPostTask;->ctx:Landroid/content/Context;

    invoke-static {v6}, Lcom/netease/cloud/nos/android/utils/Util;->getHttpClient(Landroid/content/Context;)Lorg/apache/http/client/HttpClient;

    move-result-object v6

    .line 46
    iget-object v7, p0, Lcom/netease/cloud/nos/android/http/HttpPostTask;->postRequest:Lorg/apache/http/client/methods/HttpPost;

    invoke-interface {v6, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 48
    .local v1, "response":Lorg/apache/http/HttpResponse;
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 49
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 50
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    .line 51
    .local v5, "statusCode":I
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "result":Ljava/lang/String;
    const/16 v6, 0xc8

    if-ne v5, v6, :cond_1

    .line 53
    sget-object v6, Lcom/netease/cloud/nos/android/http/HttpPostTask;->LOGTAG:Ljava/lang/String;

    .line 54
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "http post response is correct, response: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 54
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 53
    invoke-static {v6, v7}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    .line 67
    .end local v3    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    .local v4, "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    :cond_0
    :goto_0
    :try_start_1
    new-instance v3, Lcom/netease/cloud/nos/android/http/HttpResult;

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-direct {v3, v5, v6, v7}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 75
    .end local v2    # "result":Ljava/lang/String;
    .end local v4    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    .end local v5    # "statusCode":I
    .restart local v3    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    :goto_1
    iput-object v9, p0, Lcom/netease/cloud/nos/android/http/HttpPostTask;->postRequest:Lorg/apache/http/client/methods/HttpPost;

    .line 77
    .end local v1    # "response":Lorg/apache/http/HttpResponse;
    :goto_2
    return-object v3

    .line 57
    .restart local v1    # "response":Lorg/apache/http/HttpResponse;
    .restart local v2    # "result":Ljava/lang/String;
    .restart local v5    # "statusCode":I
    :cond_1
    :try_start_2
    new-instance v4, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    .end local v3    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v4    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    :try_start_3
    sget-object v6, Lcom/netease/cloud/nos/android/http/HttpPostTask;->LOGTAG:Ljava/lang/String;

    .line 59
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "http post response is failed, status code: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 59
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 58
    invoke-static {v6, v7}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 62
    sget-object v6, Lcom/netease/cloud/nos/android/http/HttpPostTask;->LOGTAG:Ljava/lang/String;

    .line 63
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "http post response is failed, result: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 63
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 62
    invoke-static {v6, v7}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .end local v1    # "response":Lorg/apache/http/HttpResponse;
    .end local v2    # "result":Ljava/lang/String;
    .end local v5    # "statusCode":I
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    sget-object v6, Lcom/netease/cloud/nos/android/http/HttpPostTask;->LOGTAG:Ljava/lang/String;

    const-string v7, "http post exception"

    invoke-static {v6, v7, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    new-instance v3, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v6, 0x31f

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7, v0}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 75
    .end local v4    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v3    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    iput-object v9, p0, Lcom/netease/cloud/nos/android/http/HttpPostTask;->postRequest:Lorg/apache/http/client/methods/HttpPost;

    goto :goto_2

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "response":Lorg/apache/http/HttpResponse;
    :cond_2
    :try_start_5
    new-instance v4, Lcom/netease/cloud/nos/android/http/HttpResult;

    const/16 v6, 0x383

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v6, v7, v8}, Lcom/netease/cloud/nos/android/http/HttpResult;-><init>(ILorg/json/JSONObject;Ljava/lang/Exception;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v3    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v4    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    move-object v3, v4

    .line 71
    .end local v4    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v3    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    goto :goto_1

    .line 74
    .end local v1    # "response":Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v6

    .line 75
    :goto_4
    iput-object v9, p0, Lcom/netease/cloud/nos/android/http/HttpPostTask;->postRequest:Lorg/apache/http/client/methods/HttpPost;

    .line 76
    throw v6

    .line 74
    .end local v3    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v4    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v3    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    goto :goto_4

    .line 71
    :catch_1
    move-exception v0

    move-object v4, v3

    .end local v3    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    .restart local v4    # "rs":Lcom/netease/cloud/nos/android/http/HttpResult;
    goto :goto_3
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/netease/cloud/nos/android/http/HttpPostTask;->call()Lcom/netease/cloud/nos/android/http/HttpResult;

    move-result-object v0

    return-object v0
.end method
