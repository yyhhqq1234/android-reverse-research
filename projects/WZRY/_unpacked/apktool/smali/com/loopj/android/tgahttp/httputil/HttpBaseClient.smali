.class public Lcom/loopj/android/tgahttp/httputil/HttpBaseClient;
.super Ljava/lang/Object;
.source "HttpBaseClient.java"


# static fields
.field private static final CONTENT_TYPE:Ljava/lang/String; = "application/octet-stream;charset=utf-8"

.field private static final REQUEST_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "HttpBaseClient"


# instance fields
.field private client:Lcom/loopj/android/tgahttp/SyncHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/loopj/android/tgahttp/SyncHttpClient;

    const/4 v1, 0x1

    const/16 v2, 0x50

    const/16 v3, 0x1bb

    invoke-direct {v0, v1, v2, v3}, Lcom/loopj/android/tgahttp/SyncHttpClient;-><init>(ZII)V

    iput-object v0, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseClient;->client:Lcom/loopj/android/tgahttp/SyncHttpClient;

    .line 24
    iget-object v0, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseClient;->client:Lcom/loopj/android/tgahttp/SyncHttpClient;

    const/4 v1, 0x2

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/loopj/android/tgahttp/SyncHttpClient;->setMaxRetriesAndTimeout(II)V

    .line 30
    return-void
.end method


# virtual methods
.method public post(Landroid/content/Context;Ljava/lang/String;[BLcom/loopj/android/tgahttp/ResponseHandlerInterface;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "req"    # [B
    .param p4, "responseHandler"    # Lcom/loopj/android/tgahttp/ResponseHandlerInterface;

    .prologue
    .line 92
    new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v3, p3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 93
    .local v3, "entity":Lorg/apache/http/entity/ByteArrayEntity;
    const-string v0, "application/octet-stream;charset=utf-8"

    invoke-virtual {v3, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 95
    sget-boolean v0, Lcom/loopj/android/tgahttp/Configs/Configs;->Debug:Z

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "HttpBaseClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "url ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PluginVersion ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/loopj/android/tgahttp/Configs/Configs;->plugin_version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseClient;->client:Lcom/loopj/android/tgahttp/SyncHttpClient;

    const-string v4, "application/octet-stream;charset=utf-8"

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/tgahttp/SyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/loopj/android/tgahttp/ResponseHandlerInterface;)Lcom/loopj/android/tgahttp/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v6

    .line 101
    .local v6, "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/loopj/android/tgahttp/Configs/Configs;->Debug:Z

    if-eqz v0, :cond_1

    .line 102
    const-string v0, "HttpBaseClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HttpBaseClient post Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public post(Landroid/content/Context;[BLcom/loopj/android/tgahttp/ResponseHandlerInterface;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "req"    # [B
    .param p3, "responseHandler"    # Lcom/loopj/android/tgahttp/ResponseHandlerInterface;

    .prologue
    .line 70
    new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v3, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 71
    .local v3, "entity":Lorg/apache/http/entity/ByteArrayEntity;
    const-string v0, "application/octet-stream;charset=utf-8"

    invoke-virtual {v3, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 73
    const-string v2, ""

    .line 74
    .local v2, "url":Ljava/lang/String;
    sget-boolean v0, Lcom/loopj/android/tgahttp/Configs/Configs;->isUseTestIP:Z

    if-eqz v0, :cond_2

    .line 75
    sget-object v2, Lcom/loopj/android/tgahttp/Configs/Configs;->URL_STR_TEST:Ljava/lang/String;

    .line 78
    :goto_0
    sget-boolean v0, Lcom/loopj/android/tgahttp/Configs/Configs;->Debug:Z

    if-eqz v0, :cond_0

    .line 79
    const-string v0, "HttpBaseClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "url ="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " PluginVersion ="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Lcom/loopj/android/tgahttp/Configs/Configs;->plugin_version:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseClient;->client:Lcom/loopj/android/tgahttp/SyncHttpClient;

    const-string v4, "application/octet-stream;charset=utf-8"

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/tgahttp/SyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/loopj/android/tgahttp/ResponseHandlerInterface;)Lcom/loopj/android/tgahttp/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_1
    :goto_1
    return-void

    .line 77
    :cond_2
    sget-object v2, Lcom/loopj/android/tgahttp/Configs/Configs;->URL_STR:Ljava/lang/String;

    goto :goto_0

    .line 83
    :catch_0
    move-exception v6

    .line 85
    .local v6, "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/loopj/android/tgahttp/Configs/Configs;->Debug:Z

    if-eqz v0, :cond_1

    .line 86
    const-string v0, "HttpBaseClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HttpBaseClient post Exception : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public post(Landroid/content/Context;[BLcom/loopj/android/tgahttp/ResponseHandlerInterface;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "req"    # [B
    .param p3, "responseHandler"    # Lcom/loopj/android/tgahttp/ResponseHandlerInterface;
    .param p4, "commond"    # I
    .param p5, "sub_com"    # I

    .prologue
    .line 45
    new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v3, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 46
    .local v3, "entity":Lorg/apache/http/entity/ByteArrayEntity;
    const-string v0, "application/octet-stream;charset=utf-8"

    invoke-virtual {v3, v0}, Lorg/apache/http/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V

    .line 48
    const-string v2, ""

    .line 49
    .local v2, "url":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/loopj/android/tgahttp/Configs/Configs;->HTTP_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 50
    .local v8, "sig_str":Ljava/lang/String;
    invoke-static {v8}, Lcom/loopj/android/tgahttp/Configs/MD5Util;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 51
    .local v7, "sig":Ljava/lang/String;
    sget-boolean v0, Lcom/loopj/android/tgahttp/Configs/Configs;->isUseTestIP:Z

    if-eqz v0, :cond_2

    .line 52
    sget-object v0, Lcom/loopj/android/tgahttp/Configs/Configs;->URL_STR_TEST:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x2

    sget v5, Lcom/loopj/android/tgahttp/Configs/Configs;->plugin_version:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x3

    aput-object v7, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 56
    :goto_0
    sget-boolean v0, Lcom/loopj/android/tgahttp/Configs/Configs;->Debug:Z

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "HttpBaseClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "url = == "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " PluginVersion ="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v4, Lcom/loopj/android/tgahttp/Configs/Configs;->plugin_version:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/loopj/android/tgahttp/httputil/HttpBaseClient;->client:Lcom/loopj/android/tgahttp/SyncHttpClient;

    const-string v4, "application/octet-stream;charset=utf-8"

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/loopj/android/tgahttp/SyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/loopj/android/tgahttp/ResponseHandlerInterface;)Lcom/loopj/android/tgahttp/RequestHandle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_1
    :goto_1
    return-void

    .line 54
    :cond_2
    sget-object v0, Lcom/loopj/android/tgahttp/Configs/Configs;->URL_STR:Ljava/lang/String;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x2

    sget v5, Lcom/loopj/android/tgahttp/Configs/Configs;->plugin_version:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x3

    aput-object v7, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 61
    :catch_0
    move-exception v6

    .line 63
    .local v6, "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/loopj/android/tgahttp/Configs/Configs;->Debug:Z

    if-eqz v0, :cond_1

    .line 64
    const-string v0, "HttpBaseClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HttpBaseClient post Exception : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
