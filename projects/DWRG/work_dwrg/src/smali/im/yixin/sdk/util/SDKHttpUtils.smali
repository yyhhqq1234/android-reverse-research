.class public final Lim/yixin/sdk/util/SDKHttpUtils;
.super Ljava/lang/Object;
.source "SDKHttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/yixin/sdk/util/SDKHttpUtils$HttpCodeException;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE_URLENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final DEFAULT_AGENT:Ljava/lang/String; = "yixin_sdk_httputils/1.0"

.field private static final ERROR_LOG_URL:Ljava/lang/String; = "http://open.yixin.im/sdk/log?log="

.field private static final TAG:Ljava/lang/String; = "SDKHttpUtils"

.field private static instance:Lim/yixin/sdk/util/SDKHttpUtils;


# instance fields
.field private client:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method private constructor <init>()V
    .locals 7

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 63
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    const/16 v3, 0x4e20

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 64
    const v3, 0x30d40

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 65
    const/16 v3, 0x2000

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 66
    const/4 v3, 0x1

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 67
    const-wide/16 v3, 0x4e20

    invoke-static {v1, v3, v4}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 68
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 69
    .local v2, "schReg":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 70
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v5

    const/16 v6, 0x1bb

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 71
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 72
    .local v0, "conMgr":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v3, p0, Lim/yixin/sdk/util/SDKHttpUtils;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 73
    return-void
.end method

.method private fetchHttpEntity(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpEntity;
    .locals 6
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 204
    :try_start_0
    iget-object v4, p0, Lim/yixin/sdk/util/SDKHttpUtils;->client:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v4, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 205
    .local v1, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 206
    .local v3, "statusLine":Lorg/apache/http/StatusLine;
    if-nez v3, :cond_0

    .line 207
    const-string v4, "SDKHttpUtils"

    const-string v5, "StatusLine is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v4, Lim/yixin/sdk/util/SDKHttpUtils$HttpCodeException;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lim/yixin/sdk/util/SDKHttpUtils$HttpCodeException;-><init>(Lorg/apache/http/StatusLine;Lorg/apache/http/HttpEntity;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v1    # "response":Lorg/apache/http/HttpResponse;
    .end local v3    # "statusLine":Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    throw v0

    .line 210
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "response":Lorg/apache/http/HttpResponse;
    .restart local v3    # "statusLine":Lorg/apache/http/StatusLine;
    :cond_0
    :try_start_1
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 211
    .local v2, "statusCode":I
    const/16 v4, 0xc8

    if-lt v2, v4, :cond_1

    const/16 v4, 0x12c

    if-le v2, v4, :cond_2

    .line 212
    :cond_1
    new-instance v4, Lim/yixin/sdk/util/SDKHttpUtils$HttpCodeException;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lim/yixin/sdk/util/SDKHttpUtils$HttpCodeException;-><init>(Lorg/apache/http/StatusLine;Lorg/apache/http/HttpEntity;)V

    throw v4

    .line 214
    :cond_2
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    return-object v4
.end method

.method private getEntity(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/HttpEntity;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/http/HttpEntity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 192
    .local p2, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, "get":Lorg/apache/http/client/methods/HttpGet;
    const-string v2, "User-Agent"

    const-string v3, "yixin_sdk_httputils/1.0"

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    if-eqz p2, :cond_0

    .line 195
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    :cond_0
    invoke-direct {p0, v0}, Lim/yixin/sdk/util/SDKHttpUtils;->fetchHttpEntity(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpEntity;

    move-result-object v2

    return-object v2

    .line 195
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 196
    .local v1, "stringStringEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lim/yixin/sdk/util/SDKHttpUtils;
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lim/yixin/sdk/util/SDKHttpUtils;->instance:Lim/yixin/sdk/util/SDKHttpUtils;

    if-eqz v0, :cond_0

    .line 77
    sget-object v0, Lim/yixin/sdk/util/SDKHttpUtils;->instance:Lim/yixin/sdk/util/SDKHttpUtils;

    .line 83
    :goto_0
    return-object v0

    .line 79
    :cond_0
    const-class v1, Lim/yixin/sdk/util/SDKHttpUtils;

    monitor-enter v1

    .line 80
    :try_start_0
    sget-object v0, Lim/yixin/sdk/util/SDKHttpUtils;->instance:Lim/yixin/sdk/util/SDKHttpUtils;

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Lim/yixin/sdk/util/SDKHttpUtils;

    invoke-direct {v0}, Lim/yixin/sdk/util/SDKHttpUtils;-><init>()V

    sput-object v0, Lim/yixin/sdk/util/SDKHttpUtils;->instance:Lim/yixin/sdk/util/SDKHttpUtils;

    .line 83
    :cond_1
    sget-object v0, Lim/yixin/sdk/util/SDKHttpUtils;->instance:Lim/yixin/sdk/util/SDKHttpUtils;

    monitor-exit v1

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 158
    .local p2, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0, p1, p2}, Lim/yixin/sdk/util/SDKHttpUtils;->getEntity(Ljava/lang/String;Ljava/util/Map;)Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lim/yixin/sdk/util/SDKFeedBackUtils;->getInstance()Lim/yixin/sdk/util/SDKFeedBackUtils;

    move-result-object v1

    const-class v2, Lim/yixin/sdk/util/SDKHttpUtils;

    const-string v3, "SDKHttpUtils get data error"

    invoke-virtual {v1, v2, v3, v0}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postErrorLog(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    throw v0
.end method

.method public get4ErrorLog(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "sourceClass"    # Ljava/lang/Class;
    .param p2, "typeClass"    # Ljava/lang/Class;
    .param p3, "errorLog"    # Ljava/lang/String;

    .prologue
    .line 129
    const-string v0, ""

    return-object v0
.end method

.method public get4ErrorLog(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "cls"    # Ljava/lang/Class;
    .param p2, "errorLog"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-virtual {p0, p1, p1, p2}, Lim/yixin/sdk/util/SDKHttpUtils;->get4ErrorLog(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getByParams(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 167
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v11

    .line 168
    .local v11, "uri":Ljava/net/URI;
    invoke-virtual {v11}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 169
    .local v6, "query":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 174
    :cond_0
    new-instance v10, Lorg/apache/http/client/methods/HttpGet;

    new-instance v0, Ljava/net/URI;

    invoke-virtual {v11}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Ljava/net/URI;->getUserInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11}, Ljava/net/URI;->getPort()I

    move-result v4

    .line 175
    invoke-virtual {v11}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-direct {v10, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 176
    .local v10, "get":Lorg/apache/http/client/methods/HttpGet;
    invoke-direct {p0, v10}, Lim/yixin/sdk/util/SDKHttpUtils;->fetchHttpEntity(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 168
    .end local v6    # "query":Ljava/lang/String;
    .end local v10    # "get":Lorg/apache/http/client/methods/HttpGet;
    :cond_1
    const-string v6, ""

    goto :goto_0

    .line 170
    .restart local v6    # "query":Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 171
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_1

    .line 177
    .end local v6    # "query":Ljava/lang/String;
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "uri":Ljava/net/URI;
    :catch_0
    move-exception v8

    .line 178
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {}, Lim/yixin/sdk/util/SDKFeedBackUtils;->getInstance()Lim/yixin/sdk/util/SDKFeedBackUtils;

    move-result-object v0

    const-class v1, Lim/yixin/sdk/util/SDKHttpUtils;

    const-string v2, "SDKHttpUtils get data error"

    invoke-virtual {v0, v1, v2, v8}, Lim/yixin/sdk/util/SDKFeedBackUtils;->postErrorLog(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    throw v8
.end method

.method public getOperationTypeByClass(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .param p1, "typeClass"    # Ljava/lang/Class;

    .prologue
    .line 92
    const-class v0, Lim/yixin/sdk/api/YXFileMessageData;

    if-ne p1, v0, :cond_0

    .line 93
    const-string v0, "file"

    .line 107
    :goto_0
    return-object v0

    .line 94
    :cond_0
    const-class v0, Lim/yixin/sdk/api/YXTextMessageData;

    if-ne p1, v0, :cond_1

    .line 95
    const-string v0, "text"

    goto :goto_0

    .line 96
    :cond_1
    const-class v0, Lim/yixin/sdk/api/YXImageMessageData;

    if-ne p1, v0, :cond_2

    .line 97
    const-string v0, "image"

    goto :goto_0

    .line 98
    :cond_2
    const-class v0, Lim/yixin/sdk/api/YXMusicMessageData;

    if-ne p1, v0, :cond_3

    .line 99
    const-string v0, "music"

    goto :goto_0

    .line 100
    :cond_3
    const-class v0, Lim/yixin/sdk/api/YXVideoMessageData;

    if-ne p1, v0, :cond_4

    .line 101
    const-string v0, "video"

    goto :goto_0

    .line 102
    :cond_4
    const-class v0, Lim/yixin/sdk/api/YXWebPageMessageData;

    if-ne p1, v0, :cond_5

    .line 103
    const-string v0, "webpage"

    goto :goto_0

    .line 104
    :cond_5
    const-class v0, Lim/yixin/sdk/api/YXMessage;

    if-ne p1, v0, :cond_6

    .line 105
    const-string v0, "message"

    goto :goto_0

    .line 107
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "other className="

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    const-string v0, "NULL"

    goto :goto_1
.end method

.method public post(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 231
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "post":Lorg/apache/http/client/methods/HttpPost;
    const-string v1, "User-Agent"

    const-string v2, "yixin_sdk_httputils/1.0"

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {p2}, Lim/yixin/sdk/util/StringUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 234
    const-string v1, "Content-Type"

    invoke-virtual {v0, v1, p2}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_0
    invoke-virtual {v0, p3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 237
    invoke-direct {p0, v0}, Lim/yixin/sdk/util/SDKHttpUtils;->fetchHttpEntity(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
